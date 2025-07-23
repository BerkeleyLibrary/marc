require 'spec_helper'
require 'berkeley_library/marc/field_info/var_fields'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      describe VarFields do

        describe '#standard' do
          let(:standard) { described_class.standard }

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

          it 'by default, includes no obsolete anything' do
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

          it 'returns obsolete fields with a flag' do
            lines_actual = described_class.standard(obsolete: true).to_s.lines(chomp: true).map(&:strip)

            var_fields_standard_txt = File.read('lib/berkeley_library/marc/field_info/var_fields/data/var_fields_standard.txt')
            lines_expected = var_fields_standard_txt
              .lines(chomp: true)
              .map(&:strip)
              .reject { |line| line.empty? || line.start_with?('//') }

            expect(lines_actual.size).to eq(lines_expected.size)
            lines_expected.each_with_index do |l_ex, i|
              # typo in standard.txt definition of 880 subfields
              l_ex = l_ex.sub('Same', '- Same') if i.between?(5052, 5056)
              expect(lines_actual[i]).to eq(l_ex), "Wrong value at line #{i}:\n\texpected: #{l_ex}, actual: #{lines_actual[i]}"
            end
          end
        end
      end

      describe 'custom fields' do
        describe '#berkeley_9xx' do
          let(:berkeley_9xx) { VarFields.berkeley_9xx }

          it 'loads all berkeley_9xx fields' do
            expect(berkeley_9xx).to be_a(VarFields::VarFieldList)
            expect(berkeley_9xx.size).to eq(25) # TODO: more assertions
          end
        end

        # TODO: get these working
        # rubocop:disable RSpec/PendingWithoutReason
        xdescribe '#tind_reserved' do
          let(:tind_reserved) { VarFields.tind_reserved }

          it 'loads all tind_reserved fields' do
            expect(tind_reserved).to be_a(VarFields::VarFieldList)
            expect(tind_reserved.size).to eq(4) # TODO: more assertions
          end
        end

        xdescribe '#berkeley_tind' do
          let(:berkeley_tind) { VarFields.berkeley_tind }

          it 'loads all berkeley_tind fields' do
            expect(berkeley_tind).to be_a(VarFields::VarFieldList)
            expect(berkeley_tind.size).to eq(9) # TODO: more assertions
          end
        end
        # rubocop:enable RSpec/PendingWithoutReason

      end
    end
  end
end
