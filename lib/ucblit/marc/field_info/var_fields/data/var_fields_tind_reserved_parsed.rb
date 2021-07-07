module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        TIND_RESERVED_PARSED =
          [{ doc_comments: [{ comment: 'Adapted from https://docs.tind.io/article/vwihxqwp67-marc-fields-used-by-tind' },
                            { comment: 'Retrieved 2021-01-15' }] },
           { comment: 'Note: this only includes fields relevant to our TIND/DA implementation.' },
           { sections: [{ var_fields: [{ tag: '035',
                                         desc: 'EXTERNAL IDENTIFIER (NR)',
                                         indicators: [{ desc: 'Undefined',
                                                        ind1: [{ val: '#', desc: 'Undefined' }] },
                                                      { desc: 'Undefined',
                                                        ind2: [{ val: '#', desc: 'Undefined' }] }],
                                         subfield_codes: [{ code: 'a',
                                                            desc: 'External identifier (NR)',
                                                            values: [] }] },
                                       { tag: '991',
                                         desc: 'RESTRICTION STATUS (NR)',
                                         indicators: [{ desc: 'Undefined',
                                                        ind1: [{ val: '#',
                                                                 desc: 'Undefined' }] },
                                                      { desc: 'Undefined',
                                                        ind2: [{ val: '#', desc: 'Undefined' }] }],
                                         subfield_codes: [{ code: 'a', desc: 'Restriction tag',
                                                            values: [] }] }] }] }].freeze
      end
    end
  end
end
