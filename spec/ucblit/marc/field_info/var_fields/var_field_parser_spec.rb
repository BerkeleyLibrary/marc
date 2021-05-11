require 'spec_helper'
require 'parslet/rig/rspec'

require 'ucblit/marc/field_info/var_fields/var_field_parser'

module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        describe VarFieldParser do
          let(:parser) { VarFieldParser.new }
          let(:printable_chars) { [0x21..0x3f, 0x5b..0x7b, 0x7d..0x7e].map(&:to_a).flatten.map { |cp| cp.chr(Encoding::UTF_8) } }

          describe(:blank) do
            it 'matches space' do
              expect(parser.blank).to parse(' ', trace: true)
            end

            it 'matches tab' do
              expect(parser.blank).to parse("\t", trace: true)
            end
          end

          describe(:printable) do
            it 'matches space' do
              expect(parser.printable).to parse(' ', trace: true)
            end

            it 'matches tab' do
              expect(parser.printable).to parse("\t", trace: true)
            end

            it 'matches ASCII printable, except hyphens' do
              aggregate_failures do
                nonhyphens = printable_chars.reject { |x| x == '-' }
                nonhyphens.each { |c| expect(parser.printable).to parse(c, trace: true) }
              end
            end

            it 'does not match terminal hyphens' do
              expect(parser.printable).not_to parse('-', trace: true)
            end
          end

          describe(:text) do
            it 'matches text' do
              expect(parser.text).to parse('Undefined', trace: true)
            end

            it 'matches internal hyphens' do
              txts = ['SERIES ADDED ENTRY--PERSONAL NAME (R)', 'Variable control fields (002-009)']
              txts.each { |txt| expect(parser.text).to parse(txt, trace: true) }
            end

            it 'matches leading hyphens' do
              expect(parser.text).to parse('--Series Added Entry Fields (80X-830)', trace: true)
            end

            it 'does not match terminal hyphens' do
              expect(parser.text).not_to parse('Series Added Entry Fields (80X-830)--', trace: true)
            end
          end

          describe(:ln_br) do
            it 'matches a Windows line break' do
              expect(parser.ln_br).to parse("\r\n", trace: true)
            end

            it 'matches Unicode newline characters' do
              chars = [0xa, 0xb, 0xc, 0xd, 0x85, 0x2028, 0x2029].map { |cp| cp.chr(Encoding::UTF_8) }
              aggregate_failures do
                chars.each { |c| expect(parser.ln_br).to parse(c, trace: true) }
              end
            end
          end

          describe(:eol) do
            it 'matches a newline' do
              expect(parser.eol).to parse("\n", trace: true)
            end

            it 'matches a newline with leading whitespace' do
              expect(parser.eol).to parse("  \t\n", trace: true)
            end
          end

          describe(:text) do
            it 'matches an ASCII printable sequence' do
              expect(parser.text).to parse(printable_chars.join, trace: true)
            end
          end

          describe(:comment) do
            it 'matches a comment' do
              expect(parser.comment).to parse('// this is a comment', trace: true)
            end

            it 'captures leading whitespace' do
              expect(parser.comment).to parse(" \t// this is a comment", trace: true)
            end
          end

          describe(:nc) do
            it 'matches a comment' do
              expect(parser.nc).to parse('// this is a comment', trace: true)
            end

            it 'matches a newline' do
              expect(parser.nc).to parse("\n", trace: true)
            end

            it 'matches a block of comments and whitespace' do
              block = <<~TXT

                // this is a comment

                // here is another comment
                // and another

              TXT

              expect(parser.nc).to parse(block, trace: true)
            end

            it 'matches the empty string' do
              expect(parser.nc).to parse('', trace: true)
            end

            it 'matches indented comments' do
              block = <<~TXT
                // this is a comment

                      // this is another comment
                  // so is this
              TXT

              expect(parser.nc).to parse(block, trace: true)
            end
          end

          describe(:ind_def) do
            it 'parses an indicator definition' do
              ind_def = '0 - No added entry'
              expect(parser.ind_def).to parse(ind_def, trace: true)
            end

            it 'parses an undefined indicator definition' do
              ind_def = '# - Undefined'
              expect(parser.ind_def).to parse(ind_def, trace: true)
            end

            it 'parses an indicator value range' do
              ind_def = '0-9 - Number of nonfiling characters present'
              expect(parser.ind_def).to parse(ind_def, trace: true)
            end
          end

          describe(:indicators) do
            it 'matches an empty indicator definition' do
              ind_def = <<~TXT.strip
                Indicators
                   First - Undefined
                      # - Undefined
                   Second - Undefined
                      # - Undefined
              TXT

              expect(parser.indicators).to parse(ind_def, trace: true)
            end

            it 'parses typical indicators' do
              ind_def = <<~TXT.strip
                Indicators
                   First - Access method
                      # - No information provided
                      0 - Email
                      1 - FTP
                      2 - Remote login (Telnet)
                      3 - Dial-up
                      4 - HTTP
                      7 - Method specified in subfield $2
                   Second - Relationship
                      # - No information provided
                      0 - Resource
                      1 - Version of resource
                      2 - Related resource
                      8 - No display constant generated
              TXT

              expect(parser.indicators).to parse(ind_def, trace: true)
            end

            it 'parses obsolete indicators' do
              ind_def = <<~TXT.strip
                Indicators
                   First - Government jurisdiction (BK MP MU VM)[OBSOLETE]
                      0 - United States [OBSOLETE]
                      1 - Canada [OBSOLETE] [CAN/MARC only]
                      2 - France [OBSOLETE] [CAN/MARC only]
                   First - Undefined
                      # - Undefined
                   Second - Undefined [OBSOLETE]
                      # - Undefined [OBSOLETE]
                   Second - Display constant controller
                      # - Copyright or legal deposit number
                      8 - No display constant controller generated
              TXT

              expect(parser.indicators).to parse(ind_def, trace: true)
            end

            it 'parses obsolete indicators with no values' do
              ind_def = <<~TXT.strip
                Indicators
                   First - Number source
                      # - Source specified in subfield $2
                      # - Undefined (BK MP MU VM SE) [OBSOLETE]
                      0 - Superintendent of Documents Classification System
                      1 - Government of Canada Publications: Outline of Classification
                   First - Government jurisdiction (BK MP MU VM SE) [OBSOLETE]
                   Second - Undefined
                      # - Undefined
              TXT

              expect(parser.indicators).to parse(ind_def, trace: true)
            end

            it 'parses value ranges' do
              ind_def = <<~TXT.strip
                Indicators
                   First - Nonfiling characters
                      0-9 - Number of nonfiling characters present
                      # - Nonfiling characters not specified [OBSOLETE]
                   Second - Undefined
                      # - Undefined
                   Second - Main entry/subject relationship (BK MU SE) [OBSOLETE]
              TXT

              expect(parser.indicators).to parse(ind_def, trace: true)
            end
          end

          describe(:subfield_value) do
            it 'parses a single-character value' do
              expect(parser.subfield_value).to parse('1 - Form of name', trace: true)
            end

            it 'parses a multi-character value' do
              expect(parser.subfield_value).to parse('isds/c - ISSN Canada', trace: true)
            end
          end

          describe(:subfield_def) do
            it 'parses a subfield code definition without values' do
              subfield_def = '$4 - Relationship (R)'
              expect(parser.subfield_def).to parse(subfield_def, trace: true)
            end

            it 'parses a subfield code definition with values' do
              subfield_def = <<~TXT.strip
                $7 - Control subfield (NR)
                   0 - Type of main entry heading
                   1 - Form of name
              TXT

              expect(parser.subfield_def).to parse(subfield_def, trace: true)
            end

            it "doesn't consume next vf definition" do
              non_def = <<~TXT.strip
                      $8 - Field link and sequence number (R)

                011 - LINKING LIBRARY OF CONGRESS CONTROL NUMBER (NR) [OBSOLETE]
              TXT
              expect(parser.subfield_def).not_to parse(non_def, trace: true)
            end
          end

          describe(:subfield_codes) do
            it 'parses a typical set of subfield codes' do
              subfield_codes = <<~TXT.strip
                Subfield Codes
                   $a - Replacement title (R)
                   $i - Explanatory text (R)
                   $w - Replacement bibliographic record control number (R)
                   $6 - Linkage (NR)
                   $8 - Field link and sequence number (R)
              TXT

              expect(parser.subfield_codes).to parse(subfield_codes, trace: true)
            end

            it 'parses a range of subfield codes' do
              subfield_codes = <<~TXT.strip
                Subfield Codes
                   $a - Tag of the foreign MARC field (NR)
                   $b - Content of the foreign MARC field (NR)
                   $2 - Source of data (NR)
                   $a-z - Foreign MARC subfield (R)
                   $0-9 - Foreign MARC subfield (R)
              TXT

              expect(parser.subfield_codes).to parse(subfield_codes, trace: true)
            end

            it 'parses a range of subfield codes with missing hyphen before desc' do
              subfield_codes = <<~TXT.strip
                Subfield Codes
                   $6 - Linkage (NR)
                   $a-z Same as associated field
                   $0-5 Same as associated field
              TXT

              expect(parser.subfield_codes).to parse(subfield_codes, trace: true)
            end
          end

          describe(:ivc_def) do
            it 'parses instrument or voices codes' do
              ivc_def = <<~TXT.strip
                Instrument or Voices Codes
                   ba - Brass - Horn
                   bb - Brass--Trumpet
                   bc - Brass--Cornet
              TXT

              expect(parser.ivc_def).to parse(ivc_def, trace: true)
            end
          end

          describe(:vf) do
            it 'parses a typical field' do
              vf = <<~TXT.strip
                886 - FOREIGN MARC INFORMATION FIELD (R)
                   Indicators
                      First - Type of field
                         0 - Leader
                         1 - Variable control fields (002-009)
                         2 - Variable data fields (010-999)
                      Second - Undefined
                         # - Undefined
                   Subfield Codes
                      $a - Tag of the foreign MARC field (NR)
                      $b - Content of the foreign MARC field (NR)
                      $2 - Source of data (NR)
                      $a-z - Foreign MARC subfield (R)
                      $0-9 - Foreign MARC subfield (R)
              TXT

              expect(parser.vf).to parse(vf, trace: true)
            end

            it 'parses a field with no indicators or subfields' do
              vf = '863 - ENUMERATION AND CHRONOLOGY--BASIC BIBLIOGRAPHIC UNIT (R)'

              expect(parser.vf).to parse(vf, trace: true)
            end

            it 'parsers a fields with Instrument or Voices Codes' do
              vf = <<~TXT.strip
                048 - NUMBER OF MUSICAL INSTRUMENTS OR VOICES CODE (R)
                   Indicators
                      First - Undefined
                         # - Undefined
                      Second - Source of code
                         # - MARC code
                         7 - Source specified in subfield $2
                   Subfield Codes
                      $a - Performer or ensemble (R)
                      $b - Soloist (R)
                      $2 - Source of code (NR)
                      $8 - Field link and sequence number (R)
                   Instrument or Voices Codes
                      ba - Brass - Horn
                      bb - Brass--Trumpet
              TXT

              expect(parser.vf).to parse(vf, trace: true)
            end

            it 'parses a TIND field with bogus indicators' do
              vf = <<~TXT.strip
                909 - OAI REPOSITORY METADATA (NR)
                  Indicators
                     First - ???
                        C - ??? // Yes, this should be invalid; yes, TIND does it anyway
                     Second - ???
                        0 - ???
                  Subfield Codes
                     $o - OAI URI for the record (oai:<hostname>:<record ID>) (NR)
                     $p - setSpec for current valid sets (NR)
                     $q - setSpec for previously valid sets (NR)
              TXT

              expect(parser.vf).to parse(vf, trace: true)
            end
          end

          describe(:section_header) do
            it 'matches a section header' do
              expect(parser.section_header).to parse('--Number and Code Fields (01X-04X)--', trace: true)
            end
          end

          describe(:section) do
            it 'matches a section with header' do
              section = <<~TXT.strip
                --Number and Code Fields (01X-04X)--
                010 - LIBRARY OF CONGRESS CONTROL NUMBER (NR)
                   Indicators
                      First - Undefined
                         # - Undefined
                      Second - Undefined
                         # - Undefined
                   Subfield Codes
                      $a - LC control number (NR)
                      $b - NUCMC control number (R)
                      $z - Canceled/invalid LC control number (R)
                      $8 - Field link and sequence number (R)

                011 - LINKING LIBRARY OF CONGRESS CONTROL NUMBER (NR) [OBSOLETE]
                   Indicators
                      First - Undefined
                         # - Undefined
                      Second - Undefined
                         # - Undefined
                   Subfield Codes
                      $a - LINKING LC control number (R)
              TXT

              expect(parser.section).to parse(section, trace: true)
            end

            it 'matches a section without header' do
              section = <<~TXT.strip
                852 - LOCATION (R)
                   Indicators
                      First - Undefined
                         # - Undefined
                      Second - Undefined
                         # - Undefined
                   Subfield Codes
                      $c - Location/Archive/Repository

                901 - IDENTIFIERS [INTERNAL] (NR) [REQUIRED WHEN APPLICABLE]
                   Indicators
                      First - Undefined
                         # - Undefined
                      Second - Undefined
                         # - Undefined
                   Subfield Codes
                      $a - Ark identifier for METS file [REQUIRED WHEN APPLICABLE]
                      $f - Ark identifier for finding aid
                      $g - PJID:DBID from GenDB [REQUIRED WHEN APPLICABLE]
                      $m - Millennium record number
                      $o - OCLC Number
              TXT

              expect(parser.section).to parse(section, trace: true)
            end
          end

          describe(:list) do
            it 'parses multiple sections' do
              sections = <<~TXT.strip
                --Number and Code Fields (01X-04X)--
                010 - LIBRARY OF CONGRESS CONTROL NUMBER (NR)
                   Indicators
                      First - Undefined
                         # - Undefined
                      Second - Undefined
                         # - Undefined
                   Subfield Codes
                      $a - LC control number (NR)
                      $8 - Field link and sequence number (R)

                048 - NUMBER OF MUSICAL INSTRUMENTS OR VOICES CODE (R)
                   Indicators
                      First - Undefined
                         # - Undefined
                      Second - Source of code
                         7 - Source specified in subfield $2
                   Subfield Codes
                      $a - Performer or ensemble (R)
                      $8 - Field link and sequence number (R)
                   Instrument or Voices Codes
                      bc - Brass--Cornet
                      bd - Brass--Trombone


                --Classification and Call Number Fields (05X-08X)--
                050 - LIBRARY OF CONGRESS CALL NUMBER (R)
                   Indicators
                      First - Existence in LC collection
                         0 - Item is in LC
                         1 - Item is not in LC
                      Second - Source of call number
                         0 - Assigned by LC
                         4 - Assigned by agency other than LC
                      Second - Series call number (SE) [OBSOLETE]
                         0 - No series involved
                         1 - Main series
                   Subfield Codes
                      $a - Classification number (R)
                      $b - Item number (NR)
              TXT

              expect(parser.list).to parse(sections, trace: true)
            end

          end

          describe(:parse) do
            it 'parses the standard list' do
              list = File.read(VarFields::PATH_STANDARD)
              expect(parser).to parse(list, trace: true)

              parse_tree = parser.parse(list)
              expect(parse_tree.keys).to contain_exactly(:doc_comments, :sections)

              doc_comments = parse_tree[:doc_comments]
              expected_comments = [
                'MARC 21 Format for Bibliographic Data Field List',
                'Adapted from https://www.loc.gov/marc/bibliographic/ecbdlist.html',
                'Retrieved 2021-01-13'
              ]

              expect(doc_comments.size).to eq(3)
              expect(doc_comments.map { |c| c[:comment] }).to eq(expected_comments)

              sections = parse_tree[:sections]
              expected_sections = [
                'Number and Code Fields (01X-04X)',
                'Classification and Call Number Fields (05X-08X)',
                'Main Entry Fields (1XX)',
                'Title and Title-Related Fields (20X-24X)',
                'Edition, Imprint, etc. Fields 250-270',
                'Physical Description, etc. Fields (3XX)',
                'Series Statement Fields (4XX)',
                'Note Fields (Part 1: 50X-53X)',
                'Note Fields (Part 2: 53X-58X)',
                '59X - LOCAL NOTES',
                'Subject Access Fields (6XX)',
                'Added Entry Fields (70X-75X)',
                'Linking Entry Fields (76X-78X)',
                'Series Added Entry Fields (80X-830)',
                'Holdings, Location, Alternate Graphics, etc. Fields (841-88X)'
              ]
              expect(sections.map { |s| s[:desc] }).to eq(expected_sections)
            end

            describe 'non-standard lists' do
              data_dir = File.dirname(VarFields::PATH_STANDARD)
              Dir.glob(File.expand_path('var_fields_*.txt', data_dir)).each do |p|
                next if p == VarFields::PATH_STANDARD

                basename = File.basename(p)
                it "parses #{basename}" do
                  list = File.read(p)
                  expect(parser).to parse(list, trace: true)
                end
              end
            end

          end

        end
      end
    end
  end
end
