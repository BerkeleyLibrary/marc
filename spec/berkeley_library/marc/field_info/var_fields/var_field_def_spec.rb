require 'spec_helper'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields
        describe VarFieldDef do
          describe 'to_s' do
            let(:fields) { %w[046 048].to_h { |t| [t, VarFields.standard.find { |vf| vf.tag == t }] } }

            it 'returns something like an EBCDList' do
              aggregate_failures('to_s') do
                fields.each do |tag, vf|
                  expected = File.read("spec/data/field_info/vf_#{tag}.txt").strip
                  actual = vf.to_s.strip
                  File.write("tmp/actual_#{tag}.txt", actual) unless actual == expected
                  expect(actual).to eq(expected)
                end
              end
            end
          end
        end
      end
    end
  end
end
