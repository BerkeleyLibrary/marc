require 'spec_helper'

module MARC
  # rubocop:disable RSpec/RepeatedExample,RSpec/MultipleExpectations
  describe XMLReader do
    let(:infile_path) { 'spec/data/record-187888.xml' }

    describe '#new' do
      # not our first choice, but it's the ruby-marc default behavior
      it 'returns a REXMLParser by default' do
        reader = described_class.new(infile_path)
        expect(reader).to be_a(REXMLReader)
      end

      it 'works with Nokogiri' do
        reader = described_class.new(infile_path, { parser: 'nokogiri' })
        expect(reader).to be_a(NokogiriReader)
      end

      it 'accepts a hash of options' do
        reader = described_class.new(infile_path, { parser: 'nokogiri', freeze: true })
        expect(reader).to be_a(NokogiriReader)
        expect(reader.instance_variable_get(:@freeze)).to be(true)
      end

      it 'accepts keyword arguments' do
        reader = described_class.new(infile_path, parser: 'nokogiri', freeze: true)
        expect(reader).to be_a(NokogiriReader)
        expect(reader.instance_variable_get(:@freeze)).to be(true)
      end
    end

    describe '#read' do
      it 'reads a file' do
        reader = described_class.read(infile_path)
        expect(reader).to be_a(described_class)
        record = reader.first
        expect(record).to be_a(MARC::Record)
      end

      describe 'freeze: true' do
        it 'works with REXML' do
          reader = described_class.read(infile_path, { parser: 'rexml', freeze: true })
          expect(reader).to be_a(MARC::REXMLReader)
          record = reader.first
          expect(record).to be_a(MARC::Record)
          expect(record).to be_frozen
        end

        it 'works with Nokogiri' do
          reader = described_class.read(infile_path, { parser: 'nokogiri', freeze: true })
          expect(reader).to be_a(MARC::NokogiriReader)
          record = reader.first
          expect(record).to be_a(MARC::Record)
          expect(record).to be_frozen
        end
      end

    end
  end
  # rubocop:enable RSpec/RepeatedExample,RSpec/MultipleExpectations
end
