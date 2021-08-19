require 'spec_helper'

module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields
        describe VarFieldTransform do
          let(:parse_tree) do
            {
              doc_comments: [
                { comment: 'A doc comment' },
                { comment: 'TODO: a TODO' }
              ],
              sections: [
                {
                  desc: 'Number and Code Fields (01X-04X)',
                  var_fields: [
                    {
                      tag: '010',
                      desc: 'LIBRARY OF CONGRESS CONTROL NUMBER (NR)',
                      indicators: [
                        {
                          desc: 'Undefined',
                          ind1: [{ val: '#', desc: 'Undefined' }]
                        },
                        {
                          desc: 'Undefined',
                          ind2: [{ val: '#', desc: 'Undefined' }]
                        }
                      ],
                      subfield_codes: [
                        { code: 'a', desc: 'LC control number (NR)', values: [] },
                        { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                      ]
                    },
                    {
                      tag: '034',
                      desc: 'CODED CARTOGRAPHIC MATHEMATICAL DATA (R)',
                      indicators: [
                        { desc: 'Type of scale',
                          ind1: [
                            { val: '0', desc: 'Scale indeterminable/No scale recorded' },
                            { val: '1', desc: 'Single scale' }
                          ] },
                        {
                          desc: 'Type of ring',
                          ind2: [
                            { val: '0', desc: 'Outer ring' },
                            { val: '1', desc: 'Exclusion ring' }
                          ]
                        }
                      ],
                      subfield_codes: [
                        {
                          code: 'a',
                          desc: 'Category of scale (NR)',
                          values: [
                            { val: 'a', desc: 'Linear scale' },
                            { val: 'b', desc: 'Angular scale' }
                          ]
                        },
                        { code: 'b', desc: 'Constant ratio linear horizontal scale (R)', values: [] },
                        { code: 'c', desc: 'Constant ratio linear vertical scale (R)', values: [] },
                        { code: 'd', desc: 'Coordinates--westernmost longitude (NR)', values: [] }
                      ]
                    },
                    {
                      tag: '048',
                      desc: 'NUMBER OF MUSICAL INSTRUMENTS OR VOICES CODE (R)',
                      indicators: [
                        {
                          desc: 'Undefined',
                          ind1: [{ val: '#', desc: 'Undefined' }]
                        },
                        {
                          desc: 'Source of code',
                          ind2: [{ val: '7', desc: 'Source specified in subfield $2' }]
                        }
                      ],
                      subfield_codes: [
                        { code: 'a', desc: 'Performer or ensemble (R)', values: [] },
                        { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                      ],
                      inst_or_voices_codes: [
                        { val: 'bc', desc: 'Brass--Cornet' },
                        { val: 'bd', desc: 'Brass--Trombone' }
                      ]
                    }
                  ]
                },
                {
                  desc: 'Classification and Call Number Fields (05X-08X)',
                  var_fields: [
                    {
                      tag: '050',
                      desc: 'LIBRARY OF CONGRESS CALL NUMBER (R)',
                      indicators: [
                        {
                          desc: 'Existence in LC collection',
                          ind1: [
                            { val: '0', desc: 'Item is in LC' },
                            { val: '1', desc: 'Item is not in LC' }
                          ]
                        },
                        {
                          desc: 'Source of call number',
                          ind2: [
                            { val: '0', desc: 'Assigned by LC' },
                            { val: '4', desc: 'Assigned by agency other than LC' }
                          ]
                        },
                        {
                          desc: 'Series call number (SE) [OBSOLETE]',
                          ind2: [
                            { val: '0', desc: 'No series involved' },
                            { val: '1', desc: 'Main series' }
                          ]
                        }
                      ],
                      subfield_codes: [
                        { code: 'a', desc: 'Classification number (R)', values: [] },
                        { code: 'b', desc: 'Item number (NR)', values: [] }
                      ]
                    }
                  ]
                }
              ]
            }
          end
          let(:xform) { VarFieldTransform.new }

          it 'transforms a comment' do
            comment = { comment: 'A doc comment' }
            expect(xform.apply(comment)).to eq(comment[:comment])
          end

          it 'transforms a value' do
            ind_val = { val: '1', desc: 'Main series' }
            expect(xform.apply(ind_val)).to be_a(VarFieldTransform::AnyValue)
          end

          it 'transforms an indicator definition' do
            ind_def = {
              desc: 'Source of call number',
              ind2: [
                { val: '0', desc: 'Assigned by LC' },
                { val: '4', desc: 'Assigned by agency other than LC' }
              ]
            }
            expect(xform.apply(ind_def)).to be_a(IndDef)
          end

          # TODO: test range
          it 'transforms a subfield definition' do
            sf_code_def = { code: 'a', desc: 'Performer or ensemble (R)', values: [] }
            expect(xform.apply(sf_code_def)).to be_a(SubfieldDef)
          end

          it 'transforms a section' do
            section = parse_tree[:sections][0]
            result = xform.apply(section)
            expect(result).to be_a(Section)
          end

          it 'transforms a complete parse tree' do
            result = xform.apply(parse_tree)
            expect(result).to be_a(VarFieldList)
          end
        end
      end
    end
  end
end
