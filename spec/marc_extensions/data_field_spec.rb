require 'spec_helper'

describe MARC::DataField do
  let(:marc_record) { MARC::XMLReader.read('spec/data/record-187888.xml').first }

  describe :subfield_codes do
    it 'returns the subfield codes in order' do
      expected_codes = %w[y 9 s u]

      expect(marc_record['856'].subfield_codes).to eq(expected_codes)
    end
  end
end
