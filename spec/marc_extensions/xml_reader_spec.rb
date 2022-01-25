require 'spec_helper'

module MARC
  describe XMLReader do
    let(:infile_path) { 'spec/data/record-187888.xml' }
    describe :new do
      # not our first choice, but it's the ruby-marc default behavior
      it 'returns a REXMLParser by default' do
        reader = XMLReader.new(infile_path)
        expect(reader).to be_a(REXMLReader)
      end

      it 'works with Nokogiri' do
        reader = XMLReader.new(infile_path, { parser: 'nokogiri' })
        expect(reader).to be_a(NokogiriReader)
      end
    end

    describe :read do
      it 'reads a file' do
        reader = XMLReader.read(infile_path)
        expect(reader).to be_a(MARC::XMLReader)
        record = reader.first
        expect(record).to be_a(MARC::Record)
      end

      describe 'freeze: true' do
        it 'works with REXML' do
          reader = XMLReader.read(infile_path, { parser: 'rexml', freeze: true })
          expect(reader).to be_a(MARC::REXMLReader)
          record = reader.first
          expect(record).to be_a(MARC::Record)
          expect(record).to be_frozen
        end

        it 'works with Nokogiri' do
          reader = XMLReader.read(infile_path, { parser: 'nokogiri', freeze: true })
          expect(reader).to be_a(MARC::NokogiriReader)
          record = reader.first
          expect(record).to be_a(MARC::Record)
          expect(record).to be_frozen
        end
      end

    end
  end
end
