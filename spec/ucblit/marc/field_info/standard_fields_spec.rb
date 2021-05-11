require 'spec_helper'
require 'ucblit/marc/field_info/var_fields'

module UCBLIT
  module Marc
    module FieldInfo
      describe VarFields do

        describe :standard do
          let(:standard) { VarFields.standard }

          it 'loads all standard fields' do
            expect(standard).to be_a(VarFields::VarFieldList)
            expect(standard.size).to eq(239) # TODO: more assertions
          end

          it 'defines each tag only once' do
            by_tag = {}
            standard.each { |vf| (by_tag[vf.tag] ||= []) << vf }
            aggregate_failures 'duplicate tags' do
              by_tag.each do |tag, ff|
                expect(ff.size).to eq(1), "Expected 1 definition for tag #{tag}, got #{ff.map { |vf| vf.to_s.inspect }.join(', ')}"
              end
            end
          end

          it 'includes no obsolete anything' do
            aggregate_failures 'obsolete stuff' do
              standard.each do |vf|
                expect(vf).not_to be_obsolete
                expect(vf.desc).not_to include('OBSOLETE')

                vf.indicators.each do |ind|
                  expect(ind).not_to be_obsolete
                  expect(ind.desc).not_to include('OBSOLETE')

                  ind.val_defs.each do |v|
                    expect(v).not_to be_obsolete
                    expect(v.desc).not_to include('OBSOLETE')
                  end
                end

                vf.subfield_codes.each do |sf|
                  expect(sf).not_to be_obsolete
                  expect(sf.desc).not_to include('OBSOLETE')

                  sf.each_value do |v|
                    expect(v).not_to be_obsolete
                    expect(v.desc).not_to include('OBSOLETE')
                  end
                end

                vf.inst_or_voices_codes.each do |c|
                  expect(c).not_to be_obsolete
                  expect(c.desc).not_to include('OBSOLETE')
                end
              end
            end
          end
        end
      end
    end
  end
end
