# TODO: write a Rake task to regenerate these
# rubocop:disable Metrics/ModuleLength
module UCBLIT
  module Marc
    module FieldInfo
      module VarFields
        STANDARD_PARSED = 
          {
            doc_comments: [
              { comment: 'MARC 21 Format for Bibliographic Data Field List' },
              { comment: 'Adapted from https://www.loc.gov/marc/bibliographic/ecbdlist.html' },
              { comment: 'Retrieved 2021-01-13' }
            ],
            sections: [
              { desc: 'Number and Code Fields (01X-04X)',
                var_fields: [
                  { tag: '010',
                    desc: 'LIBRARY OF CONGRESS CONTROL NUMBER (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'LC control number (NR)', values: [] },
                      { code: 'b', desc: 'NUCMC control number (R)', values: [] },
                      { code: 'z', desc: 'Canceled/invalid LC control number (R)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '011',
                    desc: 'LINKING LIBRARY OF CONGRESS CONTROL NUMBER (NR) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [{ code: 'a', desc: 'LINKING LC control number (R)', values: [] }]
                  },
                  {
                    tag: '013',
                    desc: 'PATENT CONTROL INFORMATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Number (NR)', values: [] },
                      { code: 'b', desc: 'Country (NR)', values: [] },
                      { code: 'c', desc: 'Type of number (NR)', values: [] },
                      { code: 'd', desc: 'Date (R)', values: [] },
                      { code: 'e', desc: 'Status (R)', values: [] },
                      { code: 'f', desc: 'Party to document (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '015',
                    desc: 'NATIONAL BIBLIOGRAPHY NUMBER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'National bibliography number (R)', values: [] },
                      { code: 'q', desc: 'Qualifying information (R)', values: [] },
                      { code: 'z', desc: 'Canceled/Invalid national bibliography number (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '016',
                    desc: 'NATIONAL BIBLIOGRAPHIC AGENCY CONTROL NUMBER (R)',
                    indicators: [
                      { desc: 'National bibliographic agency',
                        ind1: [{ val: '#', desc: 'Library and Archives Canada' }, { val: '7', desc: 'Agency identified in subfield $2' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Record control number (NR)', values: [] },
                      { code: 'z', desc: 'Canceled or invalid record control number (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '017',
                    desc: 'COPYRIGHT OR LEGAL DEPOSIT NUMBER (R)',
                    indicators: [
                      { desc: 'Government jurisdiction (BK MP MU VM)[OBSOLETE]',
                        ind1: [
                          { val: '0', desc: 'United States [OBSOLETE]' },
                          { val: '1', desc: 'Canada [OBSOLETE] [CAN/MARC only]' },
                          { val: '2', desc: 'France [OBSOLETE] [CAN/MARC only]' }
                        ] },
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined [OBSOLETE]', ind2: [{ val: '#', desc: 'Undefined [OBSOLETE]' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [
                          { val: '#', desc: 'Copyright or legal deposit number' },
                          { val: '8', desc: 'No display constant controller generated' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Copyright or legal deposit number (R)', values: [] },
                      { code: 'b', desc: 'Assigning agency (NR)', values: [] },
                      { code: 'd', desc: 'Date (NR)', values: [] },
                      { code: 'i', desc: 'Display text (NR)', values: [] },
                      { code: 'z', desc: 'Canceled/invalid copyright or legal deposit number (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '018',
                    desc: 'COPYRIGHT ARTICLE-FEE CODE (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Copyright article-fee code (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '020',
                    desc: 'INTERNATIONAL STANDARD BOOK NUMBER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'International Standard Book Number (NR)', values: [] },
                      { code: 'c', desc: 'Terms of availability (NR)', values: [] },
                      { code: 'q', desc: 'Qualifying information (R)', values: [] },
                      { code: 'z', desc: 'Canceled/invalid ISBN (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '022',
                    desc: 'INTERNATIONAL STANDARD SERIAL NUMBER (R)',
                    indicators: [
                      { desc: 'Level of international interest',
                        ind1: [
                          { val: '#', desc: 'No level specified' },
                          { val: '0', desc: 'Serial of international interest' },
                          { val: '1', desc: 'Serial not of international interest' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'l', desc: 'ISSN-L (NR)', values: [] },
                      { code: 'm', desc: 'Canceled ISSN-L (R)', values: [] },
                      { code: 'y', desc: 'Incorrect ISSN (R)', values: [] },
                      { code: 'z', desc: 'Canceled ISSN (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '024',
                    desc: 'OTHER STANDARD IDENTIFIER (R)',
                    indicators: [
                      { desc: 'Type of standard number or code',
                        ind1: [
                          { val: '0', desc: 'International Standard Recording Code (ISRC)' },
                          { val: '1', desc: 'Universal Product Code (UPC)' },
                          { val: '2', desc: 'International Standard Music Number (ISMN)' },
                          { val: '3', desc: 'International Article Number (EAN)' },
                          { val: '4', desc: 'Serial Item and Contribution Identifier (SICI)' },
                          { val: '7', desc: 'Source specified in subfield $2' },
                          { val: '8', desc: 'Unspecified type of standard number or code' }
                        ] },
                      {
                        desc: 'Difference indicator',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'No difference' },
                          { val: '1', desc: 'Difference' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Standard number or code (NR)', values: [] },
                      { code: 'c', desc: 'Terms of availability (NR)', values: [] },
                      { code: 'd', desc: 'Additional codes following the standard number or code (NR)', values: [] },
                      { code: 'q', desc: 'Qualifying information (R)', values: [] },
                      { code: 'z', desc: 'Canceled/invalid standard number or code (R)', values: [] },
                      { code: '2', desc: 'Source of number or code (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '025',
                    desc: 'OVERSEAS ACQUISITION NUMBER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Overseas acquisition number (R)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '026',
                    desc: 'FINGERPRINT IDENTIFIER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'First and second groups of characters (NR)', values: [] },
                      { code: 'b', desc: 'Third and fourth groups of characters (NR)', values: [] },
                      { code: 'c', desc: 'Date (NR)', values: [] },
                      { code: 'd', desc: 'Number of volume or part (R)', values: [] },
                      { code: 'e', desc: 'Unparsed fingerprint (NR)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '027',
                    desc: 'STANDARD TECHNICAL REPORT NUMBER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Standard technical report number (NR)', values: [] },
                      { code: 'q', desc: 'Qualifying information (R)', values: [] },
                      { code: 'z', desc: 'Canceled/invalid number (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '028',
                    desc: 'PUBLISHER NUMBER OR DISTRIBUTOR NUMBER (R)',
                    indicators: [
                      { desc: 'Type of number',
                        ind1: [
                          { val: '0', desc: 'Issue number' },
                          { val: '1', desc: 'Matrix number' },
                          { val: '2', desc: 'Plate number' },
                          { val: '3', desc: 'Other music publisher number' },
                          { val: '4', desc: 'Video recording publisher number' },
                          { val: '5', desc: 'Other publisher number' },
                          { val: '6', desc: 'Distributor number' }
                        ] },
                      {
                        desc: 'Note/added entry controller',
                        ind2: [
                          { val: '0', desc: 'No note, no added entry' },
                          { val: '1', desc: 'Note, added entry' },
                          { val: '2', desc: 'Note, no added entry' },
                          { val: '3', desc: 'No note, added entry' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Publisher or distributor number (NR)', values: [] },
                      { code: 'b', desc: 'Source (NR)', values: [] },
                      { code: 'q', desc: 'Qualifying information (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '030',
                    desc: 'CODEN DESIGNATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'CODEN (NR)', values: [] },
                      { code: 'z', desc: 'Canceled/invalid CODEN (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '031',
                    desc: 'MUSICAL INCIPITS INFORMATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Number of work (NR)', values: [] },
                      { code: 'b', desc: 'Number of movement (NR)', values: [] },
                      { code: 'c', desc: 'Number of excerpt (NR)', values: [] },
                      { code: 'd', desc: 'Caption or heading (R)', values: [] },
                      { code: 'e', desc: 'Role  (NR)', values: [] },
                      { code: 'g', desc: 'Clef  (NR)', values: [] },
                      { code: 'm', desc: 'Voice/instrument (NR)', values: [] },
                      { code: 'n', desc: 'Key signature (NR)', values: [] },
                      { code: 'o', desc: 'Time signature (NR)', values: [] },
                      { code: 'p', desc: 'Musical notation (NR)', values: [] },
                      { code: 'q', desc: 'General note (R)', values: [] },
                      { code: 'r', desc: 'Key or mode (NR)', values: [] },
                      { code: 's', desc: 'Coded validity note (R)', values: [] },
                      { code: 't', desc: 'Text incipit (R)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: 'y', desc: 'Link text (R)', values: [] },
                      { code: 'z', desc: 'Public note (R)', values: [] },
                      { code: '2', desc: 'System code (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '032',
                    desc: 'POSTAL REGISTRATION NUMBER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Postal registration number (NR)', values: [] },
                      { code: 'b', desc: 'Source (agency assigning number) (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '033',
                    desc: 'DATE/TIME AND PLACE OF AN EVENT (R)',
                    indicators: [
                      { desc: 'Type of date in subfield $a',
                        ind1: [
                          { val: '#', desc: 'No date information' },
                          { val: '0', desc: 'Single date' },
                          { val: '1', desc: 'Multiple single dates' },
                          { val: '2', desc: 'Range of dates' }
                        ] },
                      {
                        desc: 'Type of event',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Capture' },
                          { val: '1', desc: 'Broadcast' },
                          { val: '2', desc: 'Finding' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Formatted date/time (R)', values: [] },
                      { code: 'b', desc: 'Geographic classification area code (R)', values: [] },
                      { code: 'c', desc: 'Geographic classification subarea code (R)', values: [] },
                      { code: 'p', desc: 'Place of event (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
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
                          { val: '1', desc: 'Single scale' },
                          { val: '3', desc: 'Range of scales' }
                        ] },
                      {
                        desc: 'Type of ring',
                        ind2: [
                          { val: '#', desc: 'Not applicable' },
                          { val: '0', desc: 'Outer ring' },
                          { val: '1', desc: 'Exclusion ring' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a',
                        desc: 'Category of scale (NR)',
                        values: [
                          { val: 'a', desc: 'Linear scale' },
                          { val: 'b', desc: 'Angular scale' },
                          { val: 'z', desc: 'Other type of scale' }
                        ] },
                      { code: 'b', desc: 'Constant ratio linear horizontal scale (R)', values: [] },
                      { code: 'c', desc: 'Constant ratio linear vertical scale (R)', values: [] },
                      { code: 'd', desc: 'Coordinates--westernmost longitude (NR)', values: [] },
                      { code: 'e', desc: 'Coordinates--easternmost longitude (NR)', values: [] },
                      { code: 'f', desc: 'Coordinates--northernmost latitude (NR)', values: [] },
                      { code: 'g', desc: 'Coordinates--southernmost latitude (NR)', values: [] },
                      { code: 'h', desc: 'Angular scale (R)', values: [] },
                      { code: 'j', desc: 'Declination--northern limit (NR)', values: [] },
                      { code: 'k', desc: 'Declination--southern limit (NR)', values: [] },
                      { code: 'm', desc: 'Right ascension--eastern limit (NR)', values: [] },
                      { code: 'n', desc: 'Right ascension--western limit (NR)', values: [] },
                      { code: 'p', desc: 'Equinox (NR)', values: [] },
                      { code: 'r', desc: 'Distance from earth  (NR)', values: [] },
                      { code: 's', desc: 'G-ring latitude (R)', values: [] },
                      { code: 't', desc: 'G-ring longitude (R)', values: [] },
                      { code: 'x', desc: 'Beginning date (NR)', values: [] },
                      { code: 'y', desc: 'Ending date (NR)', values: [] },
                      { code: 'z', desc: 'Name of extraterrestrial body  (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source  (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '035',
                    desc: 'SYSTEM CONTROL NUMBER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'System control number (NR)', values: [] },
                      { code: 'z', desc: 'Canceled/invalid control number (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '036',
                    desc: 'ORIGINAL STUDY NUMBER FOR COMPUTER DATA FILES (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Original study number (NR)', values: [] },
                      { code: 'b', desc: 'Source (agency assigning number) (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '037',
                    desc: 'SOURCE OF ACQUISITION (R)',
                    indicators: [
                      { desc: 'Source of acquisition sequence',
                        ind1: [
                          { val: '#', desc: 'Not applicable/No information provided/Earliest' },
                          { val: '2', desc: 'Intervening' },
                          { val: '3', desc: 'Current/Latest' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Stock number (NR)', values: [] },
                      { code: 'b', desc: 'Source of stock number/acquisition (NR)', values: [] },
                      { code: 'c', desc: 'Terms of availability (R)', values: [] },
                      { code: 'f', desc: 'Form of issue (R)', values: [] },
                      { code: 'g', desc: 'Additional format characteristics (R)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '038',
                    desc: 'RECORD CONTENT LICENSOR (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Record content licensor (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '040',
                    desc: 'CATALOGING SOURCE (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Original cataloging agency (NR)', values: [] },
                      { code: 'b', desc: 'Language of cataloging (NR)', values: [] },
                      { code: 'c', desc: 'Transcribing agency (NR)', values: [] },
                      { code: 'd', desc: 'Modifying agency (R)', values: [] },
                      { code: 'e', desc: 'Description conventions (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '041',
                    desc: 'LANGUAGE CODE (R)',
                    indicators: [
                      { desc: 'Translation indication',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Item not a translation/does not include a translation' },
                          { val: '1', desc: 'Item is or includes a translation' }
                        ] },
                      {
                        desc: 'Source of code',
                        ind2: [{ val: '#', desc: 'MARC language code' }, { val: '7', desc: 'Source specified in subfield $2' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Language code of text/sound track or separate title (R)', values: [] },
                      { code: 'b', desc: 'Language code of summary or abstract (R)', values: [] },
                      { code: 'c', desc: 'Languages of separate titles (VM) [OBSOLETE]', values: [] },
                      { code: 'c', desc: 'languages of available translation (SE) [OBSOLETE]', values: [] },
                      { code: 'd', desc: 'Language code of sung or spoken text (R)', values: [] },
                      { code: 'e', desc: 'Language code of librettos (R)', values: [] },
                      { code: 'f', desc: 'Language code of table of contents (R)', values: [] },
                      { code: 'g', desc: 'Language code of accompanying material other than librettos and transcripts (R)', values: [] },
                      { code: 'h', desc: 'Language code of original and/or intermediate translations of text (R) [REDEFINED]', values: [] },
                      { code: 'h', desc: 'Language code of original (R)', values: [] },
                      { code: 'i', desc: 'Language code of intertitles (R)', values: [] },
                      { code: 'j', desc: 'Language code of subtitles (R)', values: [] },
                      { code: 'k', desc: 'Language code of intermediate translations (R)', values: [] },
                      { code: 'm', desc: 'Language code of original accompanying materials other than librettos (R)', values: [] },
                      { code: 'n', desc: 'Language code of original libretto (R)', values: [] },
                      { code: 'p', desc: 'Language code of captions (R)', values: [] },
                      { code: 'q', desc: 'Language code of accessible audio (R)', values: [] },
                      { code: 'r', desc: 'Language code of accessible visual language (non-textual) (R)', values: [] },
                      { code: 't', desc: 'Language code of accompanying transcripts for audiovisual materials (R)', values: [] },
                      { code: '2', desc: 'Source of code (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '042',
                    desc: 'AUTHENTICATION CODE (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a',
                        desc: 'Authentication code (R)',
                        values: [
                          { val: 'dc', desc: 'Dublin Core' },
                          { val: 'dhca', desc: 'Dance Heritage Coalition Access Project' },
                          { val: 'gamma', desc: 'Georgia Archives &amp; Manuscripts Automated Access Project' },
                          { val: 'gils', desc: 'Government Information Location Service' },
                          { val: 'isds/c', desc: 'ISSN Canada' },
                          { val: 'lc', desc: 'Library of Congress' },
                          { val: 'lcac', desc: 'LC Annotated Children\'s Cataloging Program' },
                          { val: 'lccopycat', desc: 'LC copy cataloging' },
                          { val: 'lccopycat-nm', desc: 'LC copy cataloging-Near Match' },
                          { val: 'lcd', desc: 'CONSER full authority application' },
                          { val: 'lcderive', desc: 'LC derived cataloging' },
                          { val: 'lchlas', desc: 'Handbook of Latin American Studies' },
                          { val: 'lcllh', desc: 'LC Law Library Hispanic' },
                          { val: 'lcnccp', desc: 'LC National Coordinated Cataloging Program' },
                          { val: 'lcnitrate', desc: 'LC nitrate film' },
                          { val: 'lcnuc', desc: 'National Union Catalog' },
                          { val: 'lcode', desc: 'LC overseas data entry' },
                          { val: 'msc', desc: 'CONSER minimal authority application' },
                          { val: 'nlc', desc: 'National Library of Canada' },
                          { val: 'nlmcopyc', desc: 'National Library of Medicine copy cataloging' },
                          { val: 'nsdp', desc: 'National Serial Data Program' },
                          { val: 'ntccf', desc: 'LC National Translations Center citation file' },
                          { val: 'pcc', desc: 'Program for Cooperative Cataloging' },
                          { val: 'premarc', desc: 'LC PreMARC Retrospective Conversion Project' },
                          { val: 'sanb', desc: 'South African National Bibliography Project' },
                          { val: 'xisds/c', desc: 'ISSN Canada does not consider item a serial' },
                          { val: 'xlc', desc: 'LC does not consider item a serial' },
                          { val: 'xnlc', desc: 'NLC does not consider item a serial' },
                          { val: 'xnsdp', desc: 'NSDP does not consider item a serial' }
                        ] }
                    ]
                  },
                  {
                    tag: '043',
                    desc: 'GEOGRAPHIC AREA CODE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Geographic area code (R)', values: [] },
                      { code: 'b', desc: 'Local GAC code (R)', values: [] },
                      { code: 'c', desc: 'ISO code (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of local code (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '044',
                    desc: 'COUNTRY OF PUBLISHING/PRODUCING ENTITY CODE (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'MARC country code (R)', values: [] },
                      { code: 'b', desc: 'Local subentity code (R)', values: [] },
                      { code: 'c', desc: 'ISO country code (R)', values: [] },
                      { code: '2', desc: 'Source of local subentity code (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '045',
                    desc: 'TIME PERIOD OF CONTENT (NR)',
                    indicators: [
                      { desc: 'Type of time period in subfield $b or $c',
                        ind1: [
                          { val: '#', desc: 'Subfield $b or $c not present' },
                          { val: '0', desc: 'Single date/time' },
                          { val: '1', desc: 'Multiple single dates/times' },
                          { val: '2', desc: 'Range of dates/times' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Time period code (R)', values: [] },
                      { code: 'b', desc: 'Formatted 9999 B.C. through C.E. time period (R)', values: [] },
                      { code: 'c', desc: 'Formatted pre-9999 B.C. time period (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '046',
                    desc: 'SPECIAL CODED DATES (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a',
                        desc: 'Type of date code (NR)',
                        values: [
                          { val: 'i', desc: 'Inclusive dates of collection' },
                          { val: 'k', desc: 'Bulk of collection' },
                          { val: 'm', desc: 'Multiple dates' },
                          { val: 'n', desc: 'Unknown dates' },
                          { val: 'p', desc: 'Distribution/release/issue and production/recording session dates' },
                          { val: 'q', desc: 'Questionable date' },
                          { val: 'r', desc: 'Reissue and originaldates' },
                          { val: 's', desc: 'Single known/probable date' },
                          { val: 't', desc: 'Publication date and copyright dates' },
                          { val: 'x', desc: 'Incorrect dates' }
                        ] },
                      { code: 'b', desc: 'Date 1 (B.C.E. date) (NR)', values: [] },
                      { code: 'c', desc: 'Date 1 (C.E. date) (NR)', values: [] },
                      { code: 'd', desc: 'Date 2 (B.C.E. date) (NR)', values: [] },
                      { code: 'e', desc: 'Date 2 (C.E. date) (NR)', values: [] },
                      { code: 'j', desc: 'Date resource modified (NR)', values: [] },
                      { code: 'k', desc: 'Beginning or single date created (NR)', values: [] },
                      { code: 'l', desc: 'Ending date created (NR)', values: [] },
                      { code: 'm', desc: 'Beginning of date valid (NR)', values: [] },
                      { code: 'o', desc: 'Single or starting date for aggregated content (NR)', values: [] },
                      { code: 'p', desc: 'Ending date for aggregated content (NR)', values: [] },
                      { code: 'n', desc: 'End of date valid (NR)', values: [] },
                      { code: '2', desc: 'Source of date (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '047',
                    desc: 'FORM OF MUSICAL COMPOSITION CODE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Source of code',
                        ind2: [
                          { val: '#', desc: 'MARC musical composition code' }, { val: '7', desc: 'Source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Form of musical composition code (R)', values: [] },
                      { code: '2', desc: 'Source of code (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '048',
                    desc: 'NUMBER OF MUSICAL INSTRUMENTS OR VOICES CODE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Source of code',
                        ind2: [{ val: '#', desc: 'MARC code' }, { val: '7', desc: 'Source specified in subfield $2' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Performer or ensemble (R)', values: [] },
                      { code: 'b', desc: 'Soloist (R)', values: [] },
                      { code: '2', desc: 'Source of code (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ],
                    inst_or_voices_codes: [
                      { val: 'ba', desc: 'Brass - Horn' },
                      { val: 'bb', desc: 'Brass--Trumpet' },
                      { val: 'bc', desc: 'Brass--Cornet' },
                      { val: 'bd', desc: 'Brass--Trombone' },
                      { val: 'be', desc: 'Brass--Tuba' },
                      { val: 'bf', desc: 'Brass--Baritone' },
                      { val: 'bn', desc: 'Brass--Unspecified' },
                      { val: 'bu', desc: 'Brass--Unknown' },
                      { val: 'by', desc: 'Brass--Ethnic' },
                      { val: 'bz', desc: 'Brass--Other' },
                      { val: 'ca', desc: 'Choruses--Mixed' },
                      { val: 'cb', desc: 'Choruses--Women\'s' },
                      { val: 'cc', desc: 'Choruses--Men\'s' },
                      { val: 'cd', desc: 'Choruses--Children\'s' },
                      { val: 'cn', desc: 'Choruses--Unspecified' },
                      { val: 'cu', desc: 'Choruses--Unknown' },
                      { val: 'cy', desc: 'Choruses--Ethnic' },
                      { val: 'ea', desc: 'Electronic--Synthesizer' },
                      { val: 'eb', desc: 'Electronic--Tape' },
                      { val: 'ec', desc: 'Electronic--Computer' },
                      { val: 'ed', desc: 'Electronic--Ondes Martinot' },
                      { val: 'en', desc: 'Electronic--Unspecified' },
                      { val: 'eu', desc: 'Electronic--Unknown' },
                      { val: 'ez', desc: 'Electronic--Other' },
                      { val: 'ka', desc: 'Keyboard--Piano' },
                      { val: 'kb', desc: 'Keyboard--Organ' },
                      { val: 'kc', desc: 'Keyboard--Harpsichord' },
                      { val: 'kd', desc: 'Keyboard--Clavichord' },
                      { val: 'ke', desc: 'Keyboard--Continuo' },
                      { val: 'kf', desc: 'Keyboard--Celeste' },
                      { val: 'kn', desc: 'Keyboard--Unspecified' },
                      { val: 'ku', desc: 'Keyboard--Unknown' },
                      { val: 'ky', desc: 'Keyboard--Ethnic' },
                      { val: 'kz', desc: 'Keyboard--Other' },
                      { val: 'oa', desc: 'Larger ensemble--Full orchestra' },
                      { val: 'ob', desc: 'Larger ensemble--Chamber orch.' },
                      { val: 'oc', desc: 'Larger ensemble--String orchestra' },
                      { val: 'od', desc: 'Larger ensemble--Band' },
                      { val: 'oe', desc: 'Larger ensemble--Dance orchestra' },
                      { val: 'of', desc: 'Larger ensemble--Brass band' },
                      { val: 'on', desc: 'Larger ensemble--Unspecified' },
                      { val: 'ou', desc: 'Larger ensemble--Unknown' },
                      { val: 'oy', desc: 'Larger ensemble--Ethnic' },
                      { val: 'oz', desc: 'Larger ensemble--Other' },
                      { val: 'pa', desc: 'Percussion--Timpani' },
                      { val: 'pb', desc: 'Percussion--Xylophone' },
                      { val: 'pc', desc: 'Percussion--Marimba' },
                      { val: 'pd', desc: 'Percussion--Drum' },
                      { val: 'pn', desc: 'Percussion--Unspecified' },
                      { val: 'pu', desc: 'Percussion--Unknown' },
                      { val: 'py', desc: 'Percussion--Ethnic' },
                      { val: 'pz', desc: 'Percussion--Other' },
                      { val: 'sa', desc: 'Strings, bowed--Violin' },
                      { val: 'sb', desc: 'Strings, bowed--Viola' },
                      { val: 'sc', desc: 'Strings, bowed--Violoncello' },
                      { val: 'sd', desc: 'Strings, bowed--Double bass' },
                      { val: 'se', desc: 'Strings, bowed--Viol' },
                      { val: 'sf', desc: 'Strings, bowed--Viola d\'amore' },
                      { val: 'sg', desc: 'Strings, bowed--Viola da gamba' },
                      { val: 'sn', desc: 'Strings, bowed--Unspecified' },
                      { val: 'su', desc: 'Strings, bowed--Unknown' },
                      { val: 'sy', desc: 'Strings, bowed--Ethnic' },
                      { val: 'sz', desc: 'Strings, bowed--Other' },
                      { val: 'ta', desc: 'Strings, plucked--Harp' },
                      { val: 'tb', desc: 'Strings, plucked--Guitar' },
                      { val: 'tc', desc: 'Strings, plucked--Lute' },
                      { val: 'td', desc: 'Strings, plucked--Mandolin' },
                      { val: 'tn', desc: 'Strings, plucked--Unspecified' },
                      { val: 'tu', desc: 'Strings, plucked--Unknown' },
                      { val: 'ty', desc: 'Strings, plucked--Ethnic' },
                      { val: 'tz', desc: 'Strings, plucked--Other' },
                      { val: 'va', desc: 'Voices--Soprano' },
                      { val: 'vb', desc: 'Voices--Mezzo Soprano' },
                      { val: 'vc', desc: 'Voices--Alto' },
                      { val: 'vd', desc: 'Voices--Tenor' },
                      { val: 've', desc: 'Voices--Baritone' },
                      { val: 'vf', desc: 'Voices--Bass' },
                      { val: 'vg', desc: 'Voices--Counter tenor' },
                      { val: 'vh', desc: 'Voices--High voice' },
                      { val: 'vi', desc: 'Voices--Medium voice' },
                      { val: 'vj', desc: 'Voices--Low voice' },
                      { val: 'vn', desc: 'Voices--Unspecified' },
                      { val: 'vu', desc: 'Voices--Unknown' },
                      { val: 'vy', desc: 'Voices--Ethnic' },
                      { val: 'wa', desc: 'Woodwinds--Flute' },
                      { val: 'wb', desc: 'Woodwinds--Oboe' },
                      { val: 'wc', desc: 'Woodwinds--Clarinet' },
                      { val: 'wd', desc: 'Woodwinds--Bassoon' },
                      { val: 'we', desc: 'Woodwinds--Piccolo' },
                      { val: 'wf', desc: 'Woodwinds--English horn' },
                      { val: 'wg', desc: 'Woodwinds--Bass clarinet' },
                      { val: 'wh', desc: 'Woodwinds--Recorder' },
                      { val: 'wi', desc: 'Woodwinds--Saxophone' },
                      { val: 'wn', desc: 'Woodwinds--Unspecified' },
                      { val: 'wu', desc: 'Woodwinds--Unknown' },
                      { val: 'wy', desc: 'Woodwinds--Ethnic' },
                      { val: 'wz', desc: 'Woodwinds--Other' },
                      { val: 'zn', desc: 'Unspecified instruments' },
                      { val: 'zu', desc: 'Unknown' }
                    ]
                  }
                ] },
              {
                desc: 'Classification and Call Number Fields (05X-08X)',
                var_fields: [
                  { tag: '050',
                    desc: 'LIBRARY OF CONGRESS CALL NUMBER (R)',
                    indicators: [
                      { desc: 'Existence in LC collection',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Item is in LC' },
                          { val: '1', desc: 'Item is not in LC' }
                        ] },
                      {
                        desc: 'Source of call number',
                        ind2: [
                          { val: '#', desc: 'No information provided [OBSOLETE]' },
                          { val: '0', desc: 'Assigned by LC' },
                          { val: '4', desc: 'Assigned by agency other than LC' }
                        ]
                      },
                      {
                        desc: 'Series call number (SE) [OBSOLETE]',
                        ind2: [
                          { val: '0', desc: 'No series involved' },
                          { val: '1', desc: 'Main series' },
                          { val: '2', desc: 'Subseries' },
                          { val: '3', desc: 'Sub-subseries' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (R)', values: [] },
                      { code: 'b', desc: 'Item number (NR)', values: [] },
                      { code: 'd', desc: 'Supplementary class number (MU) [OBSOLETE]', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '051',
                    desc: 'LIBRARY OF CONGRESS COPY, ISSUE, OFFPRINT STATEMENT (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Series call number (SE) [OBSOLETE]',
                        ind2: [
                          { val: '0', desc: 'No series involved' },
                          { val: '1', desc: 'Main series' },
                          { val: '2', desc: 'Subseries' },
                          { val: '3', desc: 'Sub-subseries' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (NR)', values: [] },
                      { code: 'b', desc: 'Item number (NR)', values: [] },
                      { code: 'c', desc: 'Copy information (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '052',
                    desc: 'GEOGRAPHIC CLASSIFICATION (R)',
                    indicators: [
                      { desc: 'Code source',
                        ind1: [
                          { val: '#', desc: 'Library of Congress Classification' },
                          { val: '0', desc: 'U.S. Dept. of Defense Classification [OBSOLETE]' },
                          { val: '1', desc: 'U.S. Dept. of Defense Classification' },
                          { val: '7', desc: 'Source specified in subfield $2' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Geographic classification area code (NR)', values: [] },
                      { code: 'b', desc: 'Geographic classification subarea code (R)', values: [] },
                      { code: 'c', desc: 'Subject (MP) [OBSOLETE]', values: [] },
                      { code: 'd', desc: 'Populated place name (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Code source (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '055',
                    desc: 'CLASSIFICATION NUMBERS ASSIGNED IN CANADA (R)',
                    indicators: [
                      { desc: 'Existence in LAC collection',
                        ind1: [
                          { val: '#', desc: 'Information not provided' },
                          { val: '0', desc: 'Work held by LAC' },
                          { val: '1', desc: 'Work not held by LAC' }
                        ] },
                      {
                        desc: 'Type, completeness, source of class/call number',
                        ind2: [
                          { val: '0', desc: 'LC-based call number assigned by LAC' },
                          { val: '1', desc: 'Complete LC class number assigned by LAC' },
                          { val: '2', desc: 'Incomplete LC class number assigned by LAC' },
                          { val: '3', desc: 'LC-based call number assigned by the contributing library' },
                          { val: '4', desc: 'Complete LC class number assigned by the contributing library' },
                          { val: '5', desc: 'Incomplete LC class number assigned by the contributing library' },
                          { val: '6', desc: 'Other call number assigned by LAC' },
                          { val: '7', desc: 'Other class number assigned by LAC' },
                          { val: '8', desc: 'Other call number assigned by the contributing library' },
                          { val: '9', desc: 'Other class number assigned by the contributing library' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (NR)', values: [] },
                      { code: 'b', desc: 'Item number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of call/class number (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '060',
                    desc: 'NATIONAL LIBRARY OF MEDICINE CALL NUMBER (R)',
                    indicators: [
                      { desc: 'Existence in NLM collection',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Item is in NLM' },
                          { val: '1', desc: 'Item is not in NLM' }
                        ] },
                      {
                        desc: 'Source of call number',
                        ind2: [
                          { val: '#', desc: 'No information provided [OBSOLETE]' },
                          { val: '0', desc: 'Assigned by NLM' },
                          { val: '4', desc: 'Assigned by agency other than NLM' }
                        ]
                      },
                      {
                        desc: 'Series call number (SE) [OBSOLETE]',
                        ind2: [
                          { val: '0', desc: 'No series involved' },
                          { val: '1', desc: 'Main series' },
                          { val: '2', desc: 'Subseries' },
                          { val: '3', desc: 'Sub-subseries' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (R)', values: [] },
                      { code: 'b', desc: 'Item number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '061',
                    desc: 'NATIONAL LIBRARY OF MEDICINE COPY STATEMENT (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Series call number (SE) [OBSOLETE]',
                        ind2: [
                          { val: '0', desc: 'No series involved' },
                          { val: '1', desc: 'Main series' },
                          { val: '2', desc: 'Subseries' },
                          { val: '3', desc: 'Sub-subseries' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (R)', values: [] },
                      { code: 'b', desc: 'Item number (NR)', values: [] },
                      { code: 'c', desc: 'Copy information (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '066',
                    desc: 'CHARACTER SETS PRESENT (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Primary G0 character set (NR)', values: [] },
                      { code: 'b', desc: 'Primary G1 character set (NR)', values: [] },
                      { code: 'c', desc: 'Alternate G0 or G1 character set (R)', values: [] }
                    ]
                  },
                  {
                    tag: '070',
                    desc: 'NATIONAL AGRICULTURAL LIBRARY CALL NUMBER (R)',
                    indicators: [
                      { desc: 'Existence in NAL collection',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Item is in NAL' },
                          { val: '1', desc: 'Item is not in NAL' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Series call number (SE) [OBSOLETE]',
                        ind2: [
                          { val: '0', desc: 'No series involved' },
                          { val: '1', desc: 'Main series' },
                          { val: '2', desc: 'Subseries' },
                          { val: '3', desc: 'Sub-subseries' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (R)', values: [] },
                      { code: 'b', desc: 'Item number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '071',
                    desc: 'NATIONAL AGRICULTURAL LIBRARY COPY STATEMENT (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Series call number (SE) [OBSOLETE]',
                        ind2: [
                          { val: '0', desc: 'No series involved' },
                          { val: '1', desc: 'Main series' },
                          { val: '2', desc: 'Subseries' },
                          { val: '3', desc: 'Sub-subseries' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (R)', values: [] },
                      { code: 'b', desc: 'Item number (NR)', values: [] },
                      { code: 'c', desc: 'Copy information (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '072',
                    desc: 'SUBJECT CATEGORY CODE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Code source',
                        ind2: [
                          { val: '0', desc: 'NAL subject category code list' },
                          { val: '7', desc: 'Code source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Subject category code (NR)', values: [] },
                      { code: 'x', desc: 'Subject category code subdivision (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '074',
                    desc: 'GPO ITEM NUMBER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'GPO item number (NR)', values: [] },
                      { code: 'z', desc: 'Canceled/invalid GPO item number (R)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '080',
                    desc: 'UNIVERSAL DECIMAL CLASSIFICATION NUMBER (R)',
                    indicators: [
                      { desc: 'Type of edition',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Full' },
                          { val: '1', desc: 'Abridged' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Universal Decimal Classification number (NR)', values: [] },
                      { code: 'b', desc: 'Item number (NR)', values: [] },
                      { code: 'x', desc: 'Common auxiliary subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Edition identifier (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '082',
                    desc: 'DEWEY DECIMAL CLASSIFICATION NUMBER (R)',
                    indicators: [
                      { desc: 'Type of edition',
                        ind1: [
                          { val: '#', desc: 'No edition information recorded (BK CF MU VM SE) [OBSOLETE]' },
                          { val: '0', desc: 'Full edition' },
                          { val: '1', desc: 'Abridged edition' },
                          { val: '2', desc: 'Abridged NST version (BK MU VM SE) [OBSOLETE]' },
                          { val: '7', desc: 'Other edition specified in subfield $2' }
                        ] },
                      {
                        desc: 'Source of classification number',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Assigned by LC' },
                          { val: '4', desc: 'Assigned by agency other than LC' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (R)', values: [] },
                      { code: 'b', desc: 'Item number (NR)', values: [] },
                      { code: 'b', desc: 'DDC number--abridged NST version (SE) [OBSOLETE]', values: [] },
                      { code: 'm', desc: 'Standard or optional designation (NR)', values: [] },
                      { code: 'q', desc: 'Assigning agency (NR)', values: [] },
                      { code: '2', desc: 'Edition number (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '083',
                    desc: 'ADDITIONAL DEWEY DECIMAL CLASSIFICATION NUMBER (R)',
                    indicators: [
                      { desc: 'Type of edition',
                        ind1: [
                          { val: '0', desc: 'Full edition' },
                          { val: '1', desc: 'Abridged edition' },
                          { val: '7', desc: 'Other edition specified in subfield $2' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (R)', values: [] },
                      { code: 'c', desc: 'Classification number--Ending number of span (R)', values: [] },
                      { code: 'm', desc: 'Standard or optional designation (NR)', values: [] },
                      { code: 'q', desc: 'Assigning agency (NR)', values: [] },
                      { code: 'y', desc: 'Table sequence number for internal subarrangement or add table (R)', values: [] },
                      { code: 'z', desc: 'Table identification (R)', values: [] },
                      { code: '2', desc: 'Edition number (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '084',
                    desc: 'OTHER CLASSIFICATION NUMBER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (R)', values: [] },
                      { code: 'b', desc: 'Item number (NR)', values: [] },
                      { code: 'q', desc: 'Assigning agency (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of number (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '085',
                    desc: 'SYNTHESIZED CLASSIFICATION NUMBER COMPONENTS (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Number where instructions are found-single number or beginning number of span (R)', values: [] },
                      { code: 'b', desc: 'Base number (R)', values: [] },
                      { code: 'c', desc: 'Classification number-ending number of span (R)', values: [] },
                      { code: 'f', desc: 'Facet designator (R)', values: [] },
                      { code: 'r', desc: 'Root number (R)', values: [] },
                      { code: 's', desc: 'Digits added from classification number in schedule or external table (R)', values: [] },
                      { code: 't', desc: 'Digits added from internal subarrangement or add table (R)', values: [] },
                      { code: 'u', desc: 'Number being analyzed (R)', values: [] },
                      { code: 'v', desc: 'Number in internal subarrangement or add table where instructions are found (R)', values: [] },
                      { code: 'w', desc: 'Table identification-Internal subarrangement or add table (R)', values: [] },
                      { code: 'y', desc: 'Table sequence number for internal subarrangement or add table (R)', values: [] },
                      { code: 'z', desc: 'Table identification (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '086',
                    desc: 'GOVERNMENT DOCUMENT CLASSIFICATION NUMBER (R)',
                    indicators: [
                      { desc: 'Number source',
                        ind1: [
                          { val: '#', desc: 'Source specified in subfield $2' },
                          { val: '#', desc: 'Undefined (BK MP MU VM SE) [OBSOLETE]' },
                          { val: '0', desc: 'Superintendent of Documents Classification System' },
                          { val: '1', desc: 'Government of Canada Publications: Outline of Classification' }
                        ] },
                      { desc: 'Government jurisdiction (BK MP MU VM SE) [OBSOLETE]', ind1: [] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Classification number (NR)', values: [] },
                      { code: 'z', desc: 'Canceled/invalid classification number (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Number source (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '088',
                    desc: 'REPORT NUMBER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Report number (NR)', values: [] },
                      { code: 'z', desc: 'Canceled/invalid report number (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '090',
                    desc: 'LOCAL CALL NUMBER (BK AM CF MP MU VM SE) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Local class number (NR)', values: [] },
                      { code: 'b', desc: 'Local Cutter number (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '090',
                    desc: 'SHELF LOCATION (AM)[OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [{ code: 'a', desc: 'Shelf location (NR)', values: [] }]
                  },
                  {
                    tag: '091',
                    desc: 'MICROFILM SHELF LOCATION (AM) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [{ code: 'a', desc: 'Microfilm shelf location (NR)', values: [] }]
                  }
                ]
              },
              {
                desc: 'Main Entry Fields (1XX)',
                var_fields: [
                  { tag: '100',
                    desc: 'MAIN ENTRY--PERSONAL NAME (NR)',
                    indicators: [
                      { desc: 'Type of personal name entry element',
                        ind1: [
                          { val: '0', desc: 'Forename' },
                          { val: '1', desc: 'Surname' },
                          { val: '2', desc: 'Multiple surname [OBSOLETE]' },
                          { val: '3', desc: 'Family name' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Main entry/subject relationship (BK MU SE) [OBSOLETE]', ind2: [] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Personal name (NR)', values: [] },
                      { code: 'b', desc: 'Numeration (NR)', values: [] },
                      { code: 'c', desc: 'Titles and other words associated with a name (R)', values: [] },
                      { code: 'd', desc: 'Dates associated with a name (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'j', desc: 'Attribution qualifier (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'q', desc: 'Fuller form of name (NR)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '110',
                    desc: 'MAIN ENTRY--CORPORATE NAME (NR)',
                    indicators: [
                      { desc: 'Type of corporate name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Main entry/subject relationship (BK MU SE) [OBSOLETE]', ind2: [] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Corporate name or jurisdiction name as entry element (NR)', values: [] },
                      { code: 'b', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'c', desc: 'Location of meeting (R)', values: [] },
                      { code: 'd', desc: 'Date of meeting or treaty signing (R)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '111',
                    desc: 'MAIN ENTRY--MEETING NAME (NR)',
                    indicators: [
                      { desc: 'Type of meeting name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Main entry/subject relationship (BK MU SE) [OBSOLETE]', ind2: [] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Meeting name or jurisdiction name as entry element (NR)', values: [] },
                      { code: 'b', desc: 'Number (BK CF MP MU SE VM MX) [OBSOLETE]', values: [] },
                      { code: 'c', desc: 'Location of meeting (R)', values: [] },
                      { code: 'd', desc: 'Date of meeting or treaty signing (R)', values: [] },
                      { code: 'e', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'j', desc: 'Relator term (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'q', desc: 'Name of meeting following jurisdiction name entry element (NR)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '130',
                    desc: 'MAIN ENTRY--UNIFORM TITLE (NR)',
                    indicators: [
                      { desc: 'Nonfiling characters',
                        ind1: [
                          { val: '0-9', desc: 'Number of nonfiling characters present' },
                          { val: '#', desc: 'Nonfiling characters not specified [OBSOLETE]' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Main entry/subject relationship (BK MU SE) [OBSOLETE]', ind2: [] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Uniform title (NR)', values: [] },
                      { code: 'd', desc: 'Date of treaty signing (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Title and Title-Related Fields (20X-24X)',
                var_fields: [
                  { tag: '210',
                    desc: 'ABBREVIATED TITLE (R)',
                    indicators: [
                      { desc: 'Title added entry', ind1: [{ val: '0', desc: 'No added entry' }, { val: '1', desc: 'Added entry' }] },
                      {
                        desc: 'Type',
                        ind2: [{ val: '#', desc: 'Abbreviated key title' }, { val: '0', desc: 'Other abbreviated title' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Abbreviated title (NR)', values: [] },
                      { code: 'b', desc: 'Qualifying information (NR)', values: [] },
                      { code: '2', desc: 'Source (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '211',
                    desc: 'ACRONYM OR SHORTENED TITLE (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Title added entry',
                        ind1: [{ val: '0', desc: 'No title added entry' }, { val: '1', desc: 'Title added entry' }] },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters present' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Acronym or shortened title (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '212',
                    desc: 'VARIANT ACCESS TITLE (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Title added entry',
                        ind1: [{ val: '0', desc: 'No title added entry' }, { val: '1', desc: 'Title added entry' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Variant access title (NR)', values: [] }, { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '214',
                    desc: 'AUGMENTED TITLE (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Title added entry',
                        ind1: [{ val: '0', desc: 'No title added entry' }, { val: '1', desc: 'Title added entry' }] },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters present' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Augmented title (NR)', values: [] }, { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '222',
                    desc: 'KEY TITLE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Specifies whether variant title and/or added entry is required (CF SE) [OBSOLETE]',
                        ind1: [
                          { val: '0', desc: 'No key title added entry; title proper same' },
                          { val: '1', desc: 'Key title added entry; title proper different' },
                          { val: '2', desc: 'Key title added entry; title proper same' },
                          { val: '3', desc: 'No key title added entry; title proper different' }
                        ]
                      },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Key title (NR)', values: [] },
                      { code: 'b', desc: 'Qualifying information (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '240',
                    desc: 'UNIFORM TITLE (NR)',
                    indicators: [
                      { desc: 'Uniform title printed or displayed',
                        ind1: [
                          { val: '0', desc: 'Not printed or displayed' },
                          { val: '1', desc: 'Printed or displayed' },
                          { val: '2', desc: 'Not printed on card, title added entry (MU) [OBSOLETE]' },
                          { val: '3', desc: 'Printed on card, title added entry (MU) [OBSOLETE]' }
                        ] },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Uniform title (NR)', values: [] },
                      { code: 'd', desc: 'Date of treaty signing (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '241',
                    desc: 'ROMANIZED TITLE (BK AM CF MP MU VM) (NR) [OBSOLETE]',
                    indicators: [
                      { desc: 'Title added entry',
                        ind1: [{ val: '0', desc: 'No title added entry' }, { val: '1', desc: 'Title added entry' }] },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Romanized title (NR)', values: [] }, { code: 'h', desc: 'Medium (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '242',
                    desc: 'TRANSLATION OF TITLE BY CATALOGING AGENCY (R)',
                    indicators: [
                      { desc: 'Title added entry', ind1: [{ val: '0', desc: 'No added entry' }, { val: '1', desc: 'Added entry' }] },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Title (NR)', values: [] },
                      { code: 'b', desc: 'Remainder of title (NR)', values: [] },
                      { code: 'c', desc: 'Statement of responsibility, etc. (NR)', values: [] },
                      { code: 'd', desc: 'Designation of section (BK AM MP MU VM SE) [OBSOLETE]', values: [] },
                      { code: 'e', desc: 'Name of part/section (BK AM MP MU VM SE) [OBSOLETE]', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'y', desc: 'Language code of translated title (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '243',
                    desc: 'COLLECTIVE UNIFORM TITLE (NR)',
                    indicators: [
                      { desc: 'Uniform title printed or displayed',
                        ind1: [
                          { val: '0', desc: 'Not printed or displayed' },
                          { val: '1', desc: 'Printed or displayed' },
                          { val: '2', desc: 'Not printed on card, title added entry (MU) [OBSOLETE]' },
                          { val: '3', desc: 'Printed on card, title added entry (MU) [OBSOLETE]' }
                        ] },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Uniform title (NR)', values: [] },
                      { code: 'd', desc: 'Date of treaty signing (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '245',
                    desc: 'TITLE STATEMENT (NR)',
                    indicators: [
                      { desc: 'Title added entry', ind1: [{ val: '0', desc: 'No added entry' }, { val: '1', desc: 'Added entry' }] },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Title (NR)', values: [] },
                      { code: 'b', desc: 'Remainder of title (NR)', values: [] },
                      { code: 'c', desc: 'Statement of responsibility, etc. (NR)', values: [] },
                      { code: 'd', desc: 'Designation of section (SE) [OBSOLETE]', values: [] },
                      { code: 'e', desc: 'Name of part/section (SE) [OBSOLETE]', values: [] },
                      { code: 'f', desc: 'Inclusive dates (NR)', values: [] },
                      { code: 'g', desc: 'Bulk dates (NR)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'k', desc: 'Form (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 's', desc: 'Version (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '246',
                    desc: 'VARYING FORM OF TITLE (R)',
                    indicators: [
                      { desc: 'Note/added entry controller',
                        ind1: [
                          { val: '0', desc: 'Note, no added entry' },
                          { val: '1', desc: 'Note, added entry' },
                          { val: '2', desc: 'No note, no title added entry' },
                          { val: '3', desc: 'No note, added entry' }
                        ] },
                      {
                        desc: 'Type of title',
                        ind2: [
                          { val: '#', desc: 'No type specified' },
                          { val: '0', desc: 'Portion of title' },
                          { val: '1', desc: 'Parallel title' },
                          { val: '2', desc: 'Distinctive title' },
                          { val: '3', desc: 'Other title' },
                          { val: '4', desc: 'Cover title' },
                          { val: '5', desc: 'Added title page title' },
                          { val: '6', desc: 'Caption title' },
                          { val: '7', desc: 'Running title' },
                          { val: '8', desc: 'Spine title' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Title proper/short title (NR)', values: [] },
                      { code: 'b', desc: 'Remainder of title (NR)', values: [] },
                      { code: 'd', desc: 'Designation of section (SE) [OBSOLETE]', values: [] },
                      { code: 'e', desc: 'Name of part/section (SE) [OBSOLETE]', values: [] },
                      { code: 'f', desc: 'Date or sequential designation (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'i', desc: 'Display text (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '247',
                    desc: 'FORMER TITLE (R)',
                    indicators: [
                      { desc: 'Title added entry', ind1: [{ val: '0', desc: 'No added entry' }, { val: '1', desc: 'Added entry' }] },
                      {
                        desc: 'Note controller',
                        ind2: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Title (NR)', values: [] },
                      { code: 'b', desc: 'Remainder of title (NR)', values: [] },
                      { code: 'd', desc: 'Designation of section (SE) [OBSOLETE]', values: [] },
                      { code: 'e', desc: 'Name of part/section (SE) [OBSOLETE]', values: [] },
                      { code: 'f', desc: 'Date or sequential designation (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Edition, Imprint, etc. Fields 250-270',
                var_fields: [
                  { tag: '250',
                    desc: 'EDITION STATEMENT (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Edition statement (NR)', values: [] },
                      { code: 'b', desc: 'Remainder of edition statement (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '251',
                    desc: 'VERSION INFORMATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Version (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '254',
                    desc: 'MUSICAL PRESENTATION STATEMENT (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Musical presentation statement (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '255',
                    desc: 'CARTOGRAPHIC MATHEMATICAL DATA (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Statement of scale (NR)', values: [] },
                      { code: 'b', desc: 'Statement of projection (NR)', values: [] },
                      { code: 'c', desc: 'Statement of coordinates (NR)', values: [] },
                      { code: 'd', desc: 'Statement of zone (NR)', values: [] },
                      { code: 'e', desc: 'Statement of equinox (NR)', values: [] },
                      { code: 'f', desc: 'Outer G-ring coordinate pairs (NR)', values: [] },
                      { code: 'g', desc: 'Exclusion G-ring coordinate pairs (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '256',
                    desc: 'COMPUTER FILE CHARACTERISTICS (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Computer file characteristics (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '257',
                    desc: 'COUNTRY OF PRODUCING ENTITY (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Country of producing entity (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '258',
                    desc: 'PHILATELIC ISSUE DATE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Issuing jurisdiction (NR)', values: [] },
                      { code: 'b', desc: 'Denomination (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '260',
                    desc: 'PUBLICATION, DISTRIBUTION, ETC. (IMPRINT) (R)',
                    indicators: [
                      { desc: 'Sequence of publishing statements',
                        ind1: [
                          { val: '#', desc: 'Not applicable/No information provided/Earliest available publisher' },
                          { val: '2', desc: 'Intervening publisher' },
                          { val: '3', desc: 'Current/latest publisher' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Presence of publisher in imprint (BK MP MU SE) [OBSOLETE]',
                        ind1: [
                          { val: '0', desc: 'Publisher, distributor, etc. is present' },
                          { val: '1', desc: 'Publisher, distributor, etc. is not present' }
                        ]
                      },
                      {
                        desc: 'Added entry/publisher relationship (SE) [OBSOLETE]',
                        ind2: [
                          { val: '0', desc: 'Publisher, distributor, etc. not same as issuing body in added entry' },
                          { val: '1', desc: 'Publisher, distributor, etc. same as issuing body in added entry' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Place of publication, distribution, etc. (R)', values: [] },
                      { code: 'b', desc: 'Name of publisher, distributor, etc. (R)', values: [] },
                      { code: 'c', desc: 'Date of publication, distribution, etc. (R)', values: [] },
                      { code: 'd', desc: 'Plate or publisher\'s number for music (Pre-AACR 2) (NR) [LOCAL]', values: [] },
                      { code: 'e', desc: 'Place of manufacture (R)', values: [] },
                      { code: 'f', desc: 'Manufacturer (R)', values: [] },
                      { code: 'g', desc: 'Date of manufacture (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '261',
                    desc: 'IMPRINT STATEMENT FOR FILMS (Pre-AACR 1 Revised) (NR) [LOCAL]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Producing company (R)', values: [] },
                      { code: 'b', desc: 'Releasing company (primary distributor) (R)', values: [] },
                      { code: 'd', desc: 'Date of production, release, etc. (R)', values: [] },
                      { code: 'e', desc: 'Contractual producer (R)', values: [] },
                      { code: 'f', desc: 'Place of production, release, etc. (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '262',
                    desc: 'IMPRINT STATEMENT FOR SOUND RECORDINGS (Pre-AACR 2) (NR) [LOCAL]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Place of production, release, etc. (NR)', values: [] },
                      { code: 'b', desc: 'Publisher or trade name (NR)', values: [] },
                      { code: 'c', desc: 'Date of production, release, etc. (NR)', values: [] },
                      { code: 'k', desc: 'Serial identification (NR)', values: [] },
                      { code: 'l', desc: 'Matrix and/or take number (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '263',
                    desc: 'PROJECTED PUBLICATION DATE (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Projected publication date (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '264',
                    desc: 'PRODUCTION, PUBLICATION, DISTRIBUTION, MANUFACTURE, AND COPYRIGHT NOTICE (R)',
                    indicators: [
                      { desc: 'Sequence of statements',
                        ind1: [
                          { val: '#', desc: 'Not applicable/No information provided/Earliest' },
                          { val: '2', desc: 'Intervening' },
                          { val: '3', desc: 'Current/latest' }
                        ] },
                      {
                        desc: 'Function of entity',
                        ind2: [
                          { val: '0', desc: 'Production' },
                          { val: '1', desc: 'Publication' },
                          { val: '2', desc: 'Distribution' },
                          { val: '3', desc: 'Manufacture' },
                          { val: '4', desc: 'Copyright notice date' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Place of production, publication, distribution, manufacture (R)', values: [] },
                      { code: 'b', desc: 'Name of producer, publisher, distributor, manufacturer (R)', values: [] },
                      { code: 'c', desc: 'Date of production, publication, distribution, manufacture, or copyright notice (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '265',
                    desc: 'SOURCE FOR ACQUISITION/SUBSCRIPTION ADDRESS (NR) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Source for acquisition/subscription address (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '270',
                    desc: 'ADDRESS (R)',
                    indicators: [
                      { desc: 'Level',
                        ind1: [
                          { val: '#', desc: 'No level specified' },
                          { val: '1', desc: 'Primary' },
                          { val: '2', desc: 'Secondary' }
                        ] },
                      {
                        desc: 'Type of address',
                        ind2: [
                          { val: '#', desc: 'No type specified' },
                          { val: '0', desc: 'Mailing' },
                          { val: '7', desc: 'Type specified in subfield $i' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Address (R)', values: [] },
                      { code: 'b', desc: 'City (NR)', values: [] },
                      { code: 'c', desc: 'State or province (NR)', values: [] },
                      { code: 'd', desc: 'Country (NR)', values: [] },
                      { code: 'e', desc: 'Postal code (NR)', values: [] },
                      { code: 'f', desc: 'Terms preceding attention name (NR)', values: [] },
                      { code: 'g', desc: 'Attention name (NR)', values: [] },
                      { code: 'h', desc: 'Attention position (NR)', values: [] },
                      { code: 'i', desc: 'Type of address (NR)', values: [] },
                      { code: 'j', desc: 'Specialized telephone number (R)', values: [] },
                      { code: 'k', desc: 'Telephone number (R)', values: [] },
                      { code: 'l', desc: 'Fax number (R)', values: [] },
                      { code: 'm', desc: 'Electronic mail address (R)', values: [] },
                      { code: 'n', desc: 'TDD or TTY number (R)', values: [] },
                      { code: 'p', desc: 'Contact person (R)', values: [] },
                      { code: 'q', desc: 'Title of contact person (R)', values: [] },
                      { code: 'r', desc: 'Hours (R)', values: [] },
                      { code: 'z', desc: 'Public note (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Physical Description, etc. Fields (3XX)',
                var_fields: [
                  { tag: '300',
                    desc: 'PHYSICAL DESCRIPTION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Extent (R)', values: [] },
                      { code: 'b', desc: 'Other physical details (NR)', values: [] },
                      { code: 'c', desc: 'Dimensions (R)', values: [] },
                      { code: 'e', desc: 'Accompanying material (NR)', values: [] },
                      { code: 'f', desc: 'Type of unit (R)', values: [] },
                      { code: 'g', desc: 'Size of unit (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '301',
                    desc: 'PHYSICAL DESCRIPTION FOR FILMS (PRE-AACR 2) (VM) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Extent of item (NR)', values: [] },
                      { code: 'b', desc: 'Sound characteristics (NR)', values: [] },
                      { code: 'c', desc: 'Color characteristics (NR)', values: [] },
                      { code: 'd', desc: 'Dimensions (NR)', values: [] },
                      { code: 'e', desc: 'Accompanying material (NR)', values: [] },
                      { code: 'f', desc: 'Speed (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '302',
                    desc: 'PAGE OR ITEM COUNT (BK AM) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [{ code: 'a', desc: 'Page count (NR)', values: [] }]
                  },
                  {
                    tag: '303',
                    desc: 'UNIT COUNT (AM) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [{ code: 'a', desc: 'Unit count (NR)', values: [] }]
                  },
                  {
                    tag: '304',
                    desc: 'LINEAR FOOTAGE (AM) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [{ code: 'a', desc: 'Linear footage (NR)', values: [] }]
                  },
                  {
                    tag: '305',
                    desc: 'PHYSICAL DESCRIPTION FOR SOUND RECORDINGS (Pre-AACR 2) (MU) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Extent (NR)', values: [] },
                      { code: 'b', desc: 'Other physical details (NR)', values: [] },
                      { code: 'c', desc: 'Dimensions (NR)', values: [] },
                      { code: 'd', desc: 'Microgroove or standard (NR)', values: [] },
                      { code: 'e', desc: 'Stereophonic, monaural (NR)', values: [] },
                      { code: 'f', desc: 'Number of tracks (NR)', values: [] },
                      { code: 'm', desc: 'Serial identification (NR)', values: [] },
                      { code: 'n', desc: 'Matrix and/or take number (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '306',
                    desc: 'PLAYING TIME (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Playing time (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '307',
                    desc: 'HOURS, ETC. (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '#', desc: 'Hours' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Hours (NR)', values: [] },
                      { code: 'b', desc: 'Additional information (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '308',
                    desc: 'PHYSICAL DESCRIPTION FOR FILMS (ARCHIVAL) (VM) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Number of reels (NR)', values: [] },
                      { code: 'b', desc: 'Footage (NR)', values: [] },
                      { code: 'c', desc: 'Sound characteristics (NR)', values: [] },
                      { code: 'd', desc: 'Color characteristics (NR)', values: [] },
                      { code: 'e', desc: 'Width (NR)', values: [] },
                      { code: 'f', desc: 'Presentation format (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '310',
                    desc: 'CURRENT PUBLICATION FREQUENCY (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Current publication frequency (NR)', values: [] },
                      { code: 'b', desc: 'Date of current publication frequency (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (NR)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '315',
                    desc: 'FREQUENCY (NR) (CF MP) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Frequency (R)', values: [] },
                      { code: 'b', desc: 'Dates of frequency (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '321',
                    desc: 'FORMER PUBLICATION FREQUENCY (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Former publication frequency (NR)', values: [] },
                      { code: 'b', desc: 'Dates of former publication frequency (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (NR)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '335',
                    desc: 'EXTENSION PLAN (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Extension plan term (NR)', values: [] },
                      { code: 'b', desc: 'Extension plan code (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '336',
                    desc: 'CONTENT TYPE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Content type term (R)', values: [] },
                      { code: 'b', desc: 'Content type code (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '337',
                    desc: 'MEDIA TYPE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Media type term (R)', values: [] },
                      { code: 'b', desc: 'Media type code (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '338',
                    desc: 'CARRIER TYPE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Carrier type term (R)', values: [] },
                      { code: 'b', desc: 'Carrier type code (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '340',
                    desc: 'PHYSICAL MEDIUM (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Material base and configuration (R)', values: [] },
                      { code: 'b', desc: 'Dimensions (R)', values: [] },
                      { code: 'c', desc: 'Materials applied to surface (R)', values: [] },
                      { code: 'd', desc: 'Information recording technique (R)', values: [] },
                      { code: 'e', desc: 'Support (R)', values: [] },
                      { code: 'f', desc: 'Production rate/ratio (R)', values: [] },
                      { code: 'g', desc: 'Color content (R)', values: [] },
                      { code: 'h', desc: 'Location within medium (R)', values: [] },
                      { code: 'i', desc: 'Technical specifications of medium (R)', values: [] },
                      { code: 'j', desc: 'Generation (R)', values: [] },
                      { code: 'k', desc: 'Layout (R)', values: [] },
                      { code: 'm', desc: 'Book format (R)', values: [] },
                      { code: 'n', desc: 'Font size (R)', values: [] },
                      { code: 'o', desc: 'Polarity (R)', values: [] },
                      { code: 'p', desc: 'Illustrative content (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '341',
                    desc: 'ACCESSIBILITY CONTENT (R)',
                    indicators: [
                      { desc: 'Application',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Adaptive features to access primary content' },
                          { val: '1', desc: 'Adaptive features to access secondary content' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Content access mode (NR)', values: [] },
                      { code: 'b', desc: 'Textual assistive features (R)', values: [] },
                      { code: 'c', desc: 'Visual assistive features (R)', values: [] },
                      { code: 'd', desc: 'Auditory assistive features (R)', values: [] },
                      { code: 'e', desc: 'Tactile assistive features (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '342',
                    desc: 'GEOSPATIAL REFERENCE DATA (R)',
                    indicators: [
                      { desc: 'Geospatial reference dimension',
                        ind1: [{ val: '0', desc: 'Horizontal coordinate system' }, { val: '1', desc: 'Vertical coordinate system' }] },
                      {
                        desc: 'Geospatial reference method',
                        ind2: [
                          { val: '0', desc: 'Geographic' },
                          { val: '1', desc: 'Map projection' },
                          { val: '2', desc: 'Grid coordinate system' },
                          { val: '3', desc: 'Local planar' },
                          { val: '4', desc: 'Local' },
                          { val: '5', desc: 'Geodetic model' },
                          { val: '6', desc: 'Altitude' },
                          { val: '7', desc: 'Method specified in $2' },
                          { val: '8', desc: 'Depth' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Name (NR)', values: [] },
                      { code: 'b', desc: 'Coordinate or distance units (NR)', values: [] },
                      { code: 'c', desc: 'Latitude resolution (NR)', values: [] },
                      { code: 'd', desc: 'Longitude resolution (NR)', values: [] },
                      { code: 'e', desc: 'Standard parallel or oblique line latitude (R)', values: [] },
                      { code: 'f', desc: 'Oblique line longitude (R)', values: [] },
                      { code: 'g', desc: 'Longitude of central meridian or projection center (NR)', values: [] },
                      { code: 'h', desc: 'Latitude of projection origin or projection center (NR)', values: [] },
                      { code: 'i', desc: 'False easting (NR)', values: [] },
                      { code: 'j', desc: 'False northing (NR)', values: [] },
                      { code: 'k', desc: 'Scale factor (NR)', values: [] },
                      { code: 'l', desc: 'Height of perspective point above surface (NR)', values: [] },
                      { code: 'm', desc: 'Azimuthal angle (NR)', values: [] },
                      { code: 'n', desc: 'Azimuth measure point longitude or straight vertical longitude from pole (NR)', values: [] },
                      { code: 'o', desc: 'Landsat number and path number (NR)', values: [] },
                      { code: 'p', desc: 'Zone identifier (NR)', values: [] },
                      { code: 'q', desc: 'Ellipsoid name (NR)', values: [] },
                      { code: 'r', desc: 'Semi-major axis (NR)', values: [] },
                      { code: 's', desc: 'Denominator of flattening ratio (NR)', values: [] },
                      { code: 't', desc: 'Vertical resolution (NR)', values: [] },
                      { code: 'u', desc: 'Vertical encoding method (NR)', values: [] },
                      { code: 'v', desc: 'Local planar, local, or other projection or grid description (NR)', values: [] },
                      { code: 'w', desc: 'Local planar or local georeference information (NR)', values: [] },
                      { code: '2', desc: 'Reference method used (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '343',
                    desc: 'PLANAR COORDINATE DATA (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Planar coordinate encoding method (NR)', values: [] },
                      { code: 'b', desc: 'Planar distance units (NR)', values: [] },
                      { code: 'c', desc: 'Abscissa resolution (NR)', values: [] },
                      { code: 'd', desc: 'Ordinate resolution (NR)', values: [] },
                      { code: 'e', desc: 'Distance resolution (NR)', values: [] },
                      { code: 'f', desc: 'Bearing resolution (NR)', values: [] },
                      { code: 'g', desc: 'Bearing units (NR)', values: [] },
                      { code: 'h', desc: 'Bearing reference direction (NR)', values: [] },
                      { code: 'i', desc: 'Bearing reference meridian (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '344',
                    desc: 'SOUND CHARACTERISTICS (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Type of recording (R)', values: [] },
                      { code: 'b', desc: 'Recording medium (R)', values: [] },
                      { code: 'c', desc: 'Playing speed (R)', values: [] },
                      { code: 'd', desc: 'Groove characteristic (R)', values: [] },
                      { code: 'e', desc: 'Track configuration (R)', values: [] },
                      { code: 'f', desc: 'Tape configuration (R)', values: [] },
                      { code: 'g', desc: 'Configuration of playback channels (R)', values: [] },
                      { code: 'h', desc: 'Special playback characteristics (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '345',
                    desc: 'MOVING IMAGE CHARACTERISTICS (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Presentation format (R)', values: [] },
                      { code: 'b', desc: 'Projection speed (R)', values: [] },
                      { code: 'c', desc: 'Aspect ratio value (R)', values: [] },
                      { code: 'd', desc: 'Aspect ratio designator (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '346',
                    desc: 'VIDEO CHARACTERISTICS (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Video format (R)', values: [] },
                      { code: 'b', desc: 'Broadcast standard (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '347',
                    desc: 'DIGITAL FILE CHARACTERISTICS (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'File type (R)', values: [] },
                      { code: 'b', desc: 'Encoding format (R)', values: [] },
                      { code: 'c', desc: 'File size (R)', values: [] },
                      { code: 'd', desc: 'Resolution (R)', values: [] },
                      { code: 'e', desc: 'Regional encoding (R)', values: [] },
                      { code: 'f', desc: 'Encoded bitrate (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '348',
                    desc: 'FORMAT OF NOTATED MUSIC (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Format of notated music term (R)', values: [] },
                      { code: 'b', desc: 'Format of notated music code (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '350',
                    desc: 'PRICE (NR) (BK AM CF MU VM SE) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Price (R)', values: [] },
                      { code: 'b', desc: 'Form of issue (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '351',
                    desc: 'ORGANIZATION AND ARRANGEMENT OF MATERIALS (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Organization (R)', values: [] },
                      { code: 'b', desc: 'Arrangement (R)', values: [] },
                      { code: 'c', desc: 'Hierarchical level (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '352',
                    desc: 'DIGITAL GRAPHIC REPRESENTATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Direct reference method (NR)', values: [] },
                      { code: 'b', desc: 'Object type (R)', values: [] },
                      { code: 'c', desc: 'Object count (R)', values: [] },
                      { code: 'd', desc: 'Row count (NR)', values: [] },
                      { code: 'e', desc: 'Column count (NR)', values: [] },
                      { code: 'f', desc: 'Vertical count (NR)', values: [] },
                      { code: 'g', desc: 'VPF topology level (NR)', values: [] },
                      { code: 'i', desc: 'Indirect reference description (NR)', values: [] },
                      { code: 'q', desc: 'Format of the digital image (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '355',
                    desc: 'SECURITY CLASSIFICATION CONTROL (R)',
                    indicators: [
                      { desc: 'Controlled element',
                        ind1: [
                          { val: '0', desc: 'Document' },
                          { val: '1', desc: 'Title' },
                          { val: '2', desc: 'Abstract' },
                          { val: '3', desc: 'Contents note' },
                          { val: '4', desc: 'Author' },
                          { val: '5', desc: 'Record' },
                          { val: '8', desc: 'Other element' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Security classification (NR)', values: [] },
                      { code: 'b', desc: 'Handling instructions (R)', values: [] },
                      { code: 'c', desc: 'External dissemination information (R)', values: [] },
                      { code: 'd', desc: 'Downgrading or declassification event (NR)', values: [] },
                      { code: 'e', desc: 'Classification system (NR)', values: [] },
                      { code: 'f', desc: 'Country of origin code (NR)', values: [] },
                      { code: 'g', desc: 'Downgrading date (NR)', values: [] },
                      { code: 'h', desc: 'Declassification date (NR)', values: [] },
                      { code: 'j', desc: 'Authorization (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '357',
                    desc: 'ORIGINATOR DISSEMINATION CONTROL (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Originator control term (NR)', values: [] },
                      { code: 'b', desc: 'Originating agency (R)', values: [] },
                      { code: 'c', desc: 'Authorized recipients of material (R)', values: [] },
                      { code: 'g', desc: 'Other restrictions (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '359',
                    desc: 'RENTAL PRICE (VM) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [{ code: 'a', desc: 'Rental price (NR)', values: [] }]
                  },
                  {
                    tag: '362',
                    desc: 'DATES OF PUBLICATION AND/OR SEQUENTIAL DESIGNATION (R)',
                    indicators: [
                      { desc: 'Format of date',
                        ind1: [{ val: '0', desc: 'Formatted style' }, { val: '1', desc: 'Unformatted note' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Dates of publication and/or sequential designation (NR)', values: [] },
                      { code: 'z', desc: 'Source of information (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '363',
                    desc: 'NORMALIZED DATE AND SEQUENTIAL DESIGNATION (R)',
                    indicators: [
                      { desc: 'Start/End designator',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Starting information' },
                          { val: '1', desc: 'Ending information' }
                        ] },
                      {
                        desc: 'State of issuance',
                        ind2: [
                          { val: '#', desc: 'Not specified' }, { val: '0', desc: 'Closed' }, { val: '1', desc: 'Open' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'First level of enumeration (NR)', values: [] },
                      { code: 'b', desc: 'Second level of enumeration (NR)', values: [] },
                      { code: 'c', desc: 'Third level of enumeration (NR)', values: [] },
                      { code: 'd', desc: 'Fourth level of enumeration (NR)', values: [] },
                      { code: 'e', desc: 'Fifth level of enumeration (NR)', values: [] },
                      { code: 'f', desc: 'Sixth level of enumeration (NR)', values: [] },
                      { code: 'g', desc: 'Alternative numbering scheme, first level of enumeration (NR)', values: [] },
                      { code: 'h', desc: 'Alternative numbering scheme, second level of enumeration (NR)', values: [] },
                      { code: 'i', desc: 'First level of chronology (NR)', values: [] },
                      { code: 'j', desc: 'Second level of chronology (NR)', values: [] },
                      { code: 'k', desc: 'Third level of chronology (NR)', values: [] },
                      { code: 'l', desc: 'Fourth level of chronology (NR)', values: [] },
                      { code: 'm', desc: 'Alternative numbering scheme, chronology (NR)', values: [] },
                      { code: 'u', desc: 'First level textual designation (NR)', values: [] },
                      { code: 'v', desc: 'First level of chronology, issuance (NR)', values: [] },
                      { code: 'x', desc: 'Nonpublic note (R)', values: [] },
                      { code: 'z', desc: 'Public note (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '365',
                    desc: 'TRADE PRICE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Price type code (NR)', values: [] },
                      { code: 'b', desc: 'Price amount (NR)', values: [] },
                      { code: 'c', desc: 'Currency code (NR)', values: [] },
                      { code: 'd', desc: 'Unit of pricing (NR)', values: [] },
                      { code: 'e', desc: 'Price note (NR)', values: [] },
                      { code: 'f', desc: 'Price effective from (NR)', values: [] },
                      { code: 'g', desc: 'Price effective until (NR)', values: [] },
                      { code: 'h', desc: 'Tax rate 1 (NR)', values: [] },
                      { code: 'i', desc: 'Tax rate 2 (NR)', values: [] },
                      { code: 'j', desc: 'ISO country code (NR)', values: [] },
                      { code: 'k', desc: 'MARC country code (NR)', values: [] },
                      { code: 'm', desc: 'Identification of pricing entity (NR)', values: [] },
                      { code: '2', desc: 'Source of price type code (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '366',
                    desc: 'TRADE AVAILABILITY INFORMATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Publishers\' compressed title identification (NR)', values: [] },
                      { code: 'b', desc: 'Detailed date of publication (NR)', values: [] },
                      { code: 'c', desc: 'Availability status code (NR)', values: [] },
                      { code: 'd', desc: 'Expected next availability date (NR)', values: [] },
                      { code: 'e', desc: 'Note (NR)', values: [] },
                      { code: 'f', desc: 'Publishers\' discount category (NR)', values: [] },
                      { code: 'g', desc: 'Date made out of print (NR)', values: [] },
                      { code: 'j', desc: 'ISO country code (NR)', values: [] },
                      { code: 'k', desc: 'MARC country code (NR)', values: [] },
                      { code: 'm', desc: 'Identification of agency (NR)', values: [] },
                      { code: '2', desc: 'Source of availability status code (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '370',
                    desc: 'ASSOCIATED PLACE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'c', desc: 'Associated country (R)', values: [] },
                      { code: 'f', desc: 'Other associated place (R)', values: [] },
                      { code: 'g', desc: 'Place of origin of work or expression (R)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 's', desc: 'Start period (NR)', values: [] },
                      { code: 't', desc: 'End period (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: 'v', desc: 'Source of information (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '377',
                    desc: 'ASSOCIATED LANGUAGE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Source of code',
                        ind2: [{ val: '#', desc: 'MARC language code' }, { val: '7', desc: 'Source specified in subfield $2' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Language code (R)', values: [] },
                      { code: 'l', desc: 'Language term (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '380',
                    desc: 'FORM OF WORK (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Form of work (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '381',
                    desc: 'OTHER DISTINGUISHING CHARACTERISTICS OF WORK OR EXPRESSION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Other distinguishing characteristic (R)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: 'v', desc: 'Source of information (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '382',
                    desc: 'MEDIUM OF PERFORMANCE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Medium of performance' },
                          { val: '1', desc: 'Partial medium of performance' }
                        ] },
                      {
                        desc: 'Access control',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Not intended for access' },
                          { val: '1', desc: 'Intended for access' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Medium of performance (R)', values: [] },
                      { code: 'b', desc: 'Soloist (R)', values: [] },
                      { code: 'd', desc: 'Doubling instrument (R)', values: [] },
                      { code: 'e', desc: 'Number of ensembles of the same type (R)', values: [] },
                      { code: 'n', desc: 'Number of performers of the same medium (R)', values: [] },
                      { code: 'p', desc: 'Alternative medium of performance (R)', values: [] },
                      { code: 'r', desc: 'Total number of individuals performing alongside ensembles (NR)', values: [] },
                      { code: 's', desc: 'Total number of performers (NR)', values: [] },
                      { code: 't', desc: 'Total number of ensembles (NR)', values: [] },
                      { code: 'v', desc: 'Note (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '383',
                    desc: 'NUMERIC DESIGNATION OF MUSICAL WORK (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Serial number (R)', values: [] },
                      { code: 'b', desc: 'Opus number (R)', values: [] },
                      { code: 'c', desc: 'Thematic index number (R)', values: [] },
                      { code: 'd', desc: 'Thematic index code (NR)', values: [] },
                      { code: 'e', desc: 'Publisher associated with opus number (NR)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials secified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '384',
                    desc: 'KEY (R)',
                    indicators: [
                      { desc: 'Key type',
                        ind1: [
                          { val: '#', desc: 'Relationship to original unknown' },
                          { val: '0', desc: 'Original key' },
                          { val: '1', desc: 'Transposed key' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Key (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '385',
                    desc: 'AUDIENCE CHARACTERISTICS (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Audience term (R)', values: [] },
                      { code: 'b', desc: 'Audience code (R)', values: [] },
                      { code: 'm', desc: 'Demographic group term (NR)', values: [] },
                      { code: 'n', desc: 'Demographic group code (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '386',
                    desc: 'CREATOR/CONTRIBUTOR CHARACTERISTICS (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Creator/contributor term (R)', values: [] },
                      { code: 'b', desc: 'Creator/contributor code (R)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'm', desc: 'Demographic group term (NR)', values: [] },
                      { code: 'n', desc: 'Demographic group code (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '388',
                    desc: 'TIME PERIOD OF CREATION (R)',
                    indicators: [
                      { desc: 'Type of time period',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '1', desc: 'Creation of work' },
                          { val: '2', desc: 'Creation of aggregate work' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Time period of creation term (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Series Statement Fields (4XX)',
                var_fields: [
                  { tag: '400',
                    desc: 'SERIES STATEMENT/ADDED ENTRY--PERSONAL NAME  (R) [US-LOCAL]',
                    indicators: [
                      { desc: 'Type of personal name entry element',
                        ind1: [
                          { val: '0', desc: 'Forename' },
                          { val: '1', desc: 'Surname' },
                          { val: '2', desc: 'Multiple surname [OBSOLETE]' },
                          { val: '3', desc: 'Family name' }
                        ] },
                      {
                        desc: 'Pronoun represents main entry',
                        ind2: [
                          { val: '0', desc: 'Main entry not represented by pronoun' },
                          { val: '1', desc: 'Main entry represented by pronoun' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Personal name (NR)', values: [] },
                      { code: 'b', desc: 'Numeration (NR)', values: [] },
                      { code: 'c', desc: 'Titles and other words associated with a name (R)', values: [] },
                      { code: 'd', desc: 'Dates associated with a name (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'q', desc: 'Fuller form of name (NR) [OBSOLETE]', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'v', desc: 'Volume number/sequential designation  (NR)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number  (NR)', values: [] },
                      { code: '4', desc: 'Relator code (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number  (R)', values: [] }
                    ] },
                  {
                    tag: '410',
                    desc: 'SERIES STATEMENT/ADDED ENTRY--CORPORATE NAME (R) [US-LOCAL]',
                    indicators: [
                      { desc: 'Type of corporate name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      {
                        desc: 'Pronoun represents main entry',
                        ind2: [
                          { val: '0', desc: 'Main entry not represented by pronoun' },
                          { val: '1', desc: 'Main entry represented by pronoun' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Corporate name or jurisdiction name as entry element (NR)', values: [] },
                      { code: 'b', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'c', desc: 'Location of meeting (NR)', values: [] },
                      { code: 'd', desc: 'Date of meeting or treaty signing (R)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'v', desc: 'Volume number/sequential designation  (NR)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '4', desc: 'Relator code (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '411',
                    desc: 'SERIES STATEMENT/ADDED ENTRY--MEETING NAME (R) [US-LOCAL]',
                    indicators: [
                      { desc: 'Type of meeting name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      {
                        desc: 'Pronoun represents main entry',
                        ind2: [
                          { val: '0', desc: 'Main entry not represented by pronoun' },
                          { val: '1', desc: 'Main entry represented by pronoun' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Meeting name or jurisdiction name as entry element (NR)', values: [] },
                      { code: 'b', desc: 'Number  [OBSOLETE]', values: [] },
                      { code: 'c', desc: 'Location of meeting (NR)', values: [] },
                      { code: 'd', desc: 'Date of meeting (NR)', values: [] },
                      { code: 'e', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'q', desc: 'Name of meeting following jurisdiction name entry element (NR)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'v', desc: 'Volume number/sequential designation  (NR)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '4', desc: 'Relator code (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '440',
                    desc: 'SERIES STATEMENT/ADDED ENTRY--TITLE (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Title (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'v', desc: 'Volume number/sequential designation  (NR)', values: [] },
                      { code: 'w', desc: 'Bibliographic record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '490',
                    desc: 'SERIES STATEMENT (R)',
                    indicators: [
                      { desc: 'Series tracing policy',
                        ind1: [
                          { val: '0', desc: 'Series not traced' },
                          { val: '1', desc: 'Series traced [REDEFINED]' },
                          { val: '1', desc: 'Series traced differently' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Series statement (R)', values: [] },
                      { code: 'l', desc: 'Library of Congress call number (NR)', values: [] },
                      { code: 'v', desc: 'Volume number/sequential designation  (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Note Fields (Part 1: 50X-53X)',
                var_fields: [
                  { tag: '500',
                    desc: 'GENERAL NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'General note (NR)', values: [] },
                      { code: 'l', desc: 'Library of Congress call number (SE) [OBSOLETE]', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (SE) [OBSOLETE]', values: [] },
                      { code: 'z', desc: 'Source of note information (AM SE) [OBSOLETE]', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '501',
                    desc: 'WITH NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'With note (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '502',
                    desc: 'DISSERTATION NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Dissertation note (NR)', values: [] },
                      { code: 'b', desc: 'Degree type (NR)', values: [] },
                      { code: 'c', desc: 'Name of granting institution (NR)', values: [] },
                      { code: 'd', desc: 'Year of degree granted (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'o', desc: 'Dissertation identifier (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '503',
                    desc: 'BIBLIOGRAPHIC HISTORY NOTE (R) (BK CF MU) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Bibliographic history note (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '504',
                    desc: 'BIBLIOGRAPHY, ETC. NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Bibliography, etc. note (NR)', values: [] },
                      { code: 'b', desc: 'Number of references (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '505',
                    desc: 'FORMATTED CONTENTS NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [
                          { val: '0', desc: 'Contents' },
                          { val: '1', desc: 'Incomplete contents' },
                          { val: '2', desc: 'Partial contents' },
                          { val: '8', desc: 'No display constant generated' }
                        ] },
                      { desc: 'Level of content designation', ind2: [{ val: '#', desc: 'Basic' }, { val: '0', desc: 'Enhanced' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Formatted contents note (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'r', desc: 'Statement of responsibility (R)', values: [] },
                      { code: 't', desc: 'Title (R)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '506',
                    desc: 'RESTRICTIONS ON ACCESS NOTE (R)',
                    indicators: [
                      { desc: 'Restriction',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'No restrictions' },
                          { val: '1', desc: 'Restrictions apply' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Terms governing access (NR)', values: [] },
                      { code: 'b', desc: 'Jurisdiction (R)', values: [] },
                      { code: 'c', desc: 'Physical access provisions (R)', values: [] },
                      { code: 'd', desc: 'Authorized users (R)', values: [] },
                      { code: 'e', desc: 'Authorization (R)', values: [] },
                      { code: 'f', desc: 'Standardized terminology for access restriction (R)', values: [] },
                      { code: 'g', desc: 'Availability date (R)', values: [] },
                      { code: 'q', desc: 'Supplying agency (R)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '507',
                    desc: 'SCALE NOTE FOR GRAPHIC MATERIAL (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Representative fraction of scale note (NR)', values: [] },
                      { code: 'b', desc: 'Remainder of scale note (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '508',
                    desc: 'CREATION/PRODUCTION CREDITS NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Creation/production credits note (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '510',
                    desc: 'CITATION/REFERENCES NOTE (R)',
                    indicators: [
                      { desc: 'Coverage/location in source',
                        ind1: [
                          { val: '0', desc: 'Coverage unknown' },
                          { val: '1', desc: 'Coverage complete' },
                          { val: '2', desc: 'Coverage is selective' },
                          { val: '3', desc: 'Location in source not given' },
                          { val: '4', desc: 'Location in source given' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Name of source (NR)', values: [] },
                      { code: 'b', desc: 'Coverage of source (NR)', values: [] },
                      { code: 'c', desc: 'Location within source (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '511',
                    desc: 'PARTICIPANT OR PERFORMER NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [
                          { val: '#', desc: 'No information provided (VM MU) [OBSOLETE]' },
                          { val: '0', desc: 'No display constant generated' },
                          { val: '1', desc: 'Cast' },
                          { val: '2', desc: 'Presenter (VM MU) [OBSOLETE]' },
                          { val: '3', desc: 'Narrator (VM MU) [OBSOLETE]' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Participant or performer note (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '512',
                    desc: 'EARLIER OR LATER VOLUMES SEPARATELY CATALOGED NOTE (SE) (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Earlier or later volumes separately cataloged note (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '513',
                    desc: 'TYPE OF REPORT AND PERIOD COVERED NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Type of report (NR)', values: [] },
                      { code: 'b', desc: 'Period covered (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '514',
                    desc: 'DATA QUALITY NOTE (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Attribute accuracy report (NR)', values: [] },
                      { code: 'b', desc: 'Attribute accuracy value (R)', values: [] },
                      { code: 'c', desc: 'Attribute accuracy explanation (R)', values: [] },
                      { code: 'd', desc: 'Logical consistency report (NR)', values: [] },
                      { code: 'e', desc: 'Completeness report (NR)', values: [] },
                      { code: 'f', desc: 'Horizontal position accuracy report (NR)', values: [] },
                      { code: 'g', desc: 'Horizontal position accuracy value (R)', values: [] },
                      { code: 'h', desc: 'Horizontal position accuracy explanation (R)', values: [] },
                      { code: 'i', desc: 'Vertical positional accuracy report (NR)', values: [] },
                      { code: 'j', desc: 'Vertical positional accuracy value (R)', values: [] },
                      { code: 'k', desc: 'Vertical positional accuracy explanation (R)', values: [] },
                      { code: 'm', desc: 'Cloud cover (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: 'z', desc: 'Display note (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '515',
                    desc: 'NUMBERING PECULIARITIES NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Numbering peculiarities note (NR)', values: [] },
                      { code: 'z', desc: 'Source of note information (NR) (SE) [OBSOLETE]', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '516',
                    desc: 'TYPE OF COMPUTER FILE OR DATA NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '#', desc: 'Type of file' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Type of computer file or data note (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '517',
                    desc: 'CATEGORIES OF FILMS NOTE (ARCHIVAL) (VM) (NR) [OBSOLETE]',
                    indicators: [
                      { desc: 'Fiction specification', ind1: [{ val: '0', desc: 'Nonfiction' }, { val: '1', desc: 'Fiction' }] },
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Different formats (NR)', values: [] },
                      { code: 'b', desc: 'Content descriptors (R)', values: [] },
                      { code: 'c', desc: 'Additional animation techniques (R)', values: [] }
                    ]
                  },
                  {
                    tag: '518',
                    desc: 'DATE/TIME AND PLACE OF AN EVENT NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Date/time and place of an event note (NR)', values: [] },
                      { code: 'd', desc: 'Date of event (R)', values: [] },
                      { code: 'o', desc: 'Other event information (R)', values: [] },
                      { code: 'p', desc: 'Place of event (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '520',
                    desc: 'SUMMARY, ETC. (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [
                          { val: '#', desc: 'Summary' },
                          { val: '0', desc: 'Subject' },
                          { val: '1', desc: 'Review' },
                          { val: '2', desc: 'Scope and content' },
                          { val: '3', desc: 'Abstract' },
                          { val: '4', desc: 'Content advice' },
                          { val: '8', desc: 'No display constant generated' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Summary, etc. note (NR)', values: [] },
                      { code: 'b', desc: 'Expansion of summary note (NR)', values: [] },
                      { code: 'c', desc: 'Assigning agency (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: 'z', desc: 'Source of note information (NR) [OBSOLETE]', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '521',
                    desc: 'TARGET AUDIENCE NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [
                          { val: '#', desc: 'Audience' },
                          { val: '0', desc: 'Reading grade level' },
                          { val: '1', desc: 'Interest age level' },
                          { val: '2', desc: 'Interest grade level' },
                          { val: '3', desc: 'Special audience characteristics' },
                          { val: '4', desc: 'Motivation interest level' },
                          { val: '8', desc: 'No display constant generated' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Target audience note (R)', values: [] },
                      { code: 'b', desc: 'Source (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '522',
                    desc: 'GEOGRAPHIC COVERAGE NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '#', desc: 'Geographic coverage' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Geographic coverage note (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '523',
                    desc: 'TIME PERIOD OF CONTENT NOTE (NR) (CF) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Time period of content note (NR)', values: [] },
                      { code: 'b', desc: 'Dates of data collection note (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '524',
                    desc: 'PREFERRED CITATION OF DESCRIBED MATERIALS NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '#', desc: 'Cite as' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Preferred citation of described materials note (NR)', values: [] },
                      { code: '2', desc: 'Source of schema used (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '525',
                    desc: 'SUPPLEMENT NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Supplement note (NR)', values: [] },
                      { code: 'z', desc: 'Source of note information (NR) (SE) [OBSOLETE]', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '526',
                    desc: 'STUDY PROGRAM INFORMATION NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '0', desc: 'Reading program' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Program name (NR)', values: [] },
                      { code: 'b', desc: 'Interest level (NR)', values: [] },
                      { code: 'c', desc: 'Reading level (NR)', values: [] },
                      { code: 'd', desc: 'Title point value (NR)', values: [] },
                      { code: 'i', desc: 'Display text (NR)', values: [] },
                      { code: 'x', desc: 'Nonpublic note (R)', values: [] },
                      { code: 'z', desc: 'Public note (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '527',
                    desc: 'CENSORSHIP NOTE (VM) (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Censorship note (NR)', values: [] }, { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '530',
                    desc: 'ADDITIONAL PHYSICAL FORM AVAILABLE NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Additional physical form available note (NR)', values: [] },
                      { code: 'b', desc: 'Availability source (NR)', values: [] },
                      { code: 'c', desc: 'Availability conditions (NR)', values: [] },
                      { code: 'd', desc: 'Order number (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: 'z', desc: 'Source of note information (NR) (AM CF VM SE) [OBSOLETE]', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '532',
                    desc: 'ACCESSIBILITY NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [
                          { val: '0', desc: 'Accessibility technical details' },
                          { val: '1', desc: 'Accessibility features' },
                          { val: '2', desc: 'Accessibility deficiencies' },
                          { val: '8', desc: 'No display constant generated' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Summary of accessibility (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '533',
                    desc: 'REPRODUCTION NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Type of reproduction (NR)', values: [] },
                      { code: 'b', desc: 'Place of reproduction (R)', values: [] },
                      { code: 'c', desc: 'Agency responsible for reproduction (R)', values: [] },
                      { code: 'd', desc: 'Date of reproduction (NR)', values: [] },
                      { code: 'e', desc: 'Physical description of reproduction (NR)', values: [] },
                      { code: 'f', desc: 'Series statement of reproduction (R)', values: [] },
                      { code: 'm', desc: 'Dates and/or sequential designation of issues reproduced (R)', values: [] },
                      { code: 'n', desc: 'Note about reproduction (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Fixed-length data elements of reproduction (NR)',
                        values: [
                          { val: '0', desc: 'Type of date/Publication status' },
                          { val: '1-4', desc: 'Date 1' },
                          { val: '5-8', desc: 'Date 2' },
                          { val: '9-11', desc: 'Place of publication, production, or execution' },
                          { val: '12', desc: 'Frequency' },
                          { val: 'n', desc: 'Not applicable' },
                          { val: '13', desc: 'Regularity' },
                          { val: '#', desc: 'Not applicable' },
                          { val: '14', desc: 'Form of item' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '534',
                    desc: 'ORIGINAL VERSION NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Specifies presence of series statement on original (BK MP MU VM SE) [OBSOLETE]',
                        ind1: [
                          { val: '0', desc: 'Note excludes series of original' }, { val: '1', desc: 'Note includes series of original' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry of original (NR)', values: [] },
                      { code: 'b', desc: 'Edition statement of original (NR)', values: [] },
                      { code: 'c', desc: 'Publication, distribution, etc. of original (NR)', values: [] },
                      { code: 'e', desc: 'Physical description, etc. of original (NR)', values: [] },
                      { code: 'f', desc: 'Series statement of original (R)', values: [] },
                      { code: 'k', desc: 'Key title of original (R)', values: [] },
                      { code: 'l', desc: 'Location of original (NR)', values: [] },
                      { code: 'm', desc: 'Material specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note about original (R)', values: [] },
                      { code: 'o', desc: 'Other resource identifier (R)', values: [] },
                      { code: 'p', desc: 'Introductory phrase (NR)', values: [] },
                      { code: 't', desc: 'Title statement of original (NR)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (R)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '535',
                    desc: 'LOCATION OF ORIGINALS/DUPLICATES NOTE (R)',
                    indicators: [
                      { desc: 'Additional information about custodian',
                        ind1: [
                          { val: '0', desc: 'Repository (AM) [OBSOLETE]' },
                          { val: '1', desc: 'Holder of originals' },
                          { val: '2', desc: 'Holder of duplicates' },
                          { val: '3', desc: 'Holder of oral tapes (AM) [OBSOLETE]' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Custodian (NR)', values: [] },
                      { code: 'b', desc: 'Postal address (R)', values: [] },
                      { code: 'c', desc: 'Country (R)', values: [] },
                      { code: 'd', desc: 'Telecommunications address (R)', values: [] },
                      { code: 'g', desc: 'Repository location code (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Note Fields (Part 2: 53X-58X)',
                var_fields: [
                  { tag: '536',
                    desc: 'FUNDING INFORMATION NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Text of note (NR)', values: [] },
                      { code: 'b', desc: 'Contract number (R)', values: [] },
                      { code: 'c', desc: 'Grant number (R)', values: [] },
                      { code: 'd', desc: 'Undifferentiated number (R)', values: [] },
                      { code: 'e', desc: 'Program element number (R)', values: [] },
                      { code: 'f', desc: 'Project number (R)', values: [] },
                      { code: 'g', desc: 'Task number (R)', values: [] },
                      { code: 'h', desc: 'Work unit number (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '537',
                    desc: 'SOURCE OF DATA NOTE (NR) (CF) [OBSOLETE]',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '#', desc: 'No information provided' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Source of data note (NR)', values: [] }, { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '538',
                    desc: 'SYSTEM DETAILS NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'System details note (NR)', values: [] },
                      { code: 'i', desc: 'Display text (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: '3', desc: 'Materials specified  (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '540',
                    desc: 'TERMS GOVERNING USE AND REPRODUCTION NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Terms governing use and reproduction (NR)', values: [] },
                      { code: 'b', desc: 'Jurisdiction (NR)', values: [] },
                      { code: 'c', desc: 'Authorization (NR)', values: [] },
                      { code: 'd', desc: 'Authorized users (NR)', values: [] },
                      { code: 'f', desc: 'Use and reproduction rights (R)', values: [] },
                      { code: 'g', desc: 'Availability date (R)', values: [] },
                      { code: 'q', desc: 'Supplying agency (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '541',
                    desc: 'IMMEDIATE SOURCE OF ACQUISITION NOTE (R)',
                    indicators: [
                      { desc: 'Privacy',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Private' },
                          { val: '1', desc: 'Not private' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Source of acquisition (NR)', values: [] },
                      { code: 'b', desc: 'Address (NR)', values: [] },
                      { code: 'c', desc: 'Method of acquisition (NR)', values: [] },
                      { code: 'd', desc: 'Date of acquisition (NR)', values: [] },
                      { code: 'e', desc: 'Accession number (NR)', values: [] },
                      { code: 'f', desc: 'Owner (NR)', values: [] },
                      { code: 'h', desc: 'Purchase price (NR)', values: [] },
                      { code: 'n', desc: 'Extent (R)', values: [] },
                      { code: 'o', desc: 'Type of unit (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '542',
                    desc: 'INFORMATION RELATING TO COPYRIGHT STATUS (R)',
                    indicators: [
                      { desc: 'Privacy',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Private' },
                          { val: '1', desc: 'Not private' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Personal creator (NR)', values: [] },
                      { code: 'b', desc: 'Personal creator death date (NR)', values: [] },
                      { code: 'c', desc: 'Corporate creator (NR)', values: [] },
                      { code: 'd', desc: 'Copyright holder (R)', values: [] },
                      { code: 'e', desc: 'Copyright holder contact information (R)', values: [] },
                      { code: 'f', desc: 'Copyright statement (R)', values: [] },
                      { code: 'g', desc: 'Copyright date (NR)', values: [] },
                      { code: 'h', desc: 'Copyright renewal date (R)', values: [] },
                      { code: 'i', desc: 'Publication date (NR)', values: [] },
                      { code: 'j', desc: 'Creation date (NR)', values: [] },
                      { code: 'k', desc: 'Publisher (R)', values: [] },
                      { code: 'l', desc: 'Copyright status (NR)', values: [] },
                      { code: 'm', desc: 'Publication status (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Research date (NR)', values: [] },
                      { code: 'p', desc: 'Country of publication or creation (R)', values: [] },
                      { code: 'q', desc: 'Supplying agency (NR)', values: [] },
                      { code: 'r', desc: 'Jurisdiction of copyright assessment (NR)', values: [] },
                      { code: 's', desc: 'Source of information (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '543',
                    desc: 'SOLICITATION INFORMATION NOTE (AM) (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Solicitation information note (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '544',
                    desc: 'LOCATION OF OTHER ARCHIVAL MATERIALS NOTE (R)',
                    indicators: [
                      { desc: 'Relationship',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Associated materials' },
                          { val: '1', desc: 'Related materials' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Custodian (R)', values: [] },
                      { code: 'b', desc: 'Address (R)', values: [] },
                      { code: 'c', desc: 'Country (R)', values: [] },
                      { code: 'd', desc: 'Title (R)', values: [] },
                      { code: 'e', desc: 'Provenance (R)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '545',
                    desc: 'BIOGRAPHICAL OR HISTORICAL DATA (R)',
                    indicators: [
                      { desc: 'Type of data',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Biographical sketch' },
                          { val: '1', desc: 'Administrative history' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Biographical or historical note (NR)', values: [] },
                      { code: 'b', desc: 'Expansion (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '546',
                    desc: 'LANGUAGE NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Language note (NR)', values: [] },
                      { code: 'b', desc: 'Information code or alphabet (R)', values: [] },
                      { code: 'z', desc: 'Source of note information (NR) (SE) [OBSOLETE]', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '547',
                    desc: 'FORMER TITLE COMPLEXITY NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Former title complexity note (NR)', values: [] },
                      { code: 'z', desc: 'Source of note information (NR) (SE) [OBSOLETE]', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '550',
                    desc: 'ISSUING BODY NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Existence of additional information (SE) [OBSOLETE]',
                        ind1: [{ val: '0', desc: 'Repetitious' }, { val: '1', desc: 'Not repetitious' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Issuing body note (NR)', values: [] },
                      { code: 'z', desc: 'Source of note information (NR) (SE) [OBSOLETE]', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '552',
                    desc: 'ENTITY AND ATTRIBUTE INFORMATION NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Entity type label (NR)', values: [] },
                      { code: 'b', desc: 'Entity type definition and source (NR)', values: [] },
                      { code: 'c', desc: 'Attribute label (NR)', values: [] },
                      { code: 'd', desc: 'Attribute definition and source (NR)', values: [] },
                      { code: 'e', desc: 'Enumerated domain value (R)', values: [] },
                      { code: 'f', desc: 'Enumerated domain value definition and source (R)', values: [] },
                      { code: 'g', desc: 'Range domain minimum and maximum (NR)', values: [] },
                      { code: 'h', desc: 'Codeset name and source (NR)', values: [] },
                      { code: 'i', desc: 'Unrepresentable domain (NR)', values: [] },
                      { code: 'j', desc: 'Attribute units of measurement and resolution (NR)', values: [] },
                      { code: 'k', desc: 'Beginning date and ending date of attribute values (NR)', values: [] },
                      { code: 'l', desc: 'Attribute value accuracy (NR)', values: [] },
                      { code: 'm', desc: 'Attribute value accuracy explanation (NR)', values: [] },
                      { code: 'n', desc: 'Attribute measurement frequency (NR)', values: [] },
                      { code: 'o', desc: 'Entity and attribute overview (R)', values: [] },
                      { code: 'p', desc: 'Entity and attribute detail citation (R)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: 'z', desc: 'Display note (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '555',
                    desc: 'CUMULATIVE INDEX/FINDING AIDS NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [
                          { val: '#', desc: 'Indexes' },
                          { val: '0', desc: 'Finding aids' },
                          { val: '8', desc: 'No display constant generated' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Cumulative index/finding aids note (NR)', values: [] },
                      { code: 'b', desc: 'Availability source (R)', values: [] },
                      { code: 'c', desc: 'Degree of control (NR)', values: [] },
                      { code: 'd', desc: 'Bibliographic reference (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '556',
                    desc: 'INFORMATION ABOUT DOCUMENTATION NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '#', desc: 'Documentation' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Information about documentation note (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '561',
                    desc: 'OWNERSHIP AND CUSTODIAL HISTORY (R)',
                    indicators: [
                      { desc: 'Privacy',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Private' },
                          { val: '1', desc: 'Not private' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'History (NR)', values: [] },
                      { code: 'b', desc: 'Time of collation (NR) [OBSOLETE]', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '562',
                    desc: 'COPY AND VERSION IDENTIFICATION NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Identifying markings (R)', values: [] },
                      { code: 'b', desc: 'Copy identification (R)', values: [] },
                      { code: 'c', desc: 'Version identification (R)', values: [] },
                      { code: 'd', desc: 'Presentation format (R)', values: [] },
                      { code: 'e', desc: 'Number of copies (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '563',
                    desc: 'BINDING INFORMATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Binding note (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '565',
                    desc: 'CASE FILE CHARACTERISTICS NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [
                          { val: '#', desc: 'File size' },
                          { val: '0', desc: 'Case file characteristics' },
                          { val: '8', desc: 'No display constant generated' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Number of cases/variables (NR)', values: [] },
                      { code: 'b', desc: 'Name of variable (R)', values: [] },
                      { code: 'c', desc: 'Unit of analysis (R)', values: [] },
                      { code: 'd', desc: 'Universe of data (R)', values: [] },
                      { code: 'e', desc: 'Filing scheme or code (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '567',
                    desc: 'METHODOLOGY NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '#', desc: 'Methodology' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Methodology note (NR)', values: [] },
                      { code: 'b', desc: 'Controlled term (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '570',
                    desc: 'EDITOR NOTE (SE) (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Editor note (NR)', values: [] },
                      { code: 'z', desc: 'Source of note information (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '580',
                    desc: 'LINKING ENTRY COMPLEXITY NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Linking entry complexity note (NR)', values: [] },
                      { code: 'z', desc: 'Source of note information (NR) [OBSOLETE]', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '581',
                    desc: 'PUBLICATIONS ABOUT DESCRIBED MATERIALS NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '#', desc: 'Publications' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Publications about described materials note (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '582',
                    desc: 'RELATED COMPUTER FILES NOTE (R) (CF) [OBSOLETE]',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '#', desc: 'No information provided' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Related computer files note (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '583',
                    desc: 'ACTION NOTE (R)',
                    indicators: [
                      { desc: 'Privacy',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Private' },
                          { val: '1', desc: 'Not private' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Action (NR)', values: [] },
                      { code: 'b', desc: 'Action identification (R)', values: [] },
                      { code: 'c', desc: 'Time/date of action (R)', values: [] },
                      { code: 'd', desc: 'Action interval (R)', values: [] },
                      { code: 'e', desc: 'Contingency for action (R)', values: [] },
                      { code: 'f', desc: 'Authorization (R)', values: [] },
                      { code: 'h', desc: 'Jurisdiction (R)', values: [] },
                      { code: 'i', desc: 'Method of action (R)', values: [] },
                      { code: 'j', desc: 'Site of action (R)', values: [] },
                      { code: 'k', desc: 'Action agent (R)', values: [] },
                      { code: 'l', desc: 'Status (R)', values: [] },
                      { code: 'n', desc: 'Extent (R)', values: [] },
                      { code: 'o', desc: 'Type of unit (R)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: 'x', desc: 'Nonpublic note (R)', values: [] },
                      { code: 'z', desc: 'Public note (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '584',
                    desc: 'ACCUMULATION AND FREQUENCY OF USE NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Accumulation (R)', values: [] },
                      { code: 'b', desc: 'Frequency of use (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '585',
                    desc: 'EXHIBITIONS NOTE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Exhibitions note (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '586',
                    desc: 'AWARDS NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [{ val: '#', desc: 'Awards' }, { val: '8', desc: 'No display constant generated' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Awards note (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '588',
                    desc: 'SOURCE OF DESCRIPTION NOTE (R)',
                    indicators: [
                      { desc: 'Display constant controller',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Source of description' },
                          { val: '1', desc: 'Latest issue consulted' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Source of description note (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: '59X - LOCAL NOTES',
                var_fields: [
                  { tag: '590',
                    desc: 'LOCAL NOTE (BK CF MP MU SE VM MX) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [{ code: 'a', desc: 'Local note (NR)', values: [] }] },
                  {
                    tag: '590',
                    desc: 'RECEIPT DATE NOTE (VM) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Receipt date (NR)', values: [] },
                      { code: 'b', desc: 'Provenance (NR)', values: [] },
                      { code: 'd', desc: 'Condition of individual reels (NR)', values: [] },
                      { code: 'd', desc: 'Origin of safety copy (NR)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Subject Access Fields (6XX)',
                var_fields: [
                  { tag: '600',
                    desc: 'SUBJECT ADDED ENTRY--PERSONAL NAME (R)',
                    indicators: [
                      { desc: 'Type of personal name entry element',
                        ind1: [
                          { val: '0', desc: 'Forename' },
                          { val: '1', desc: 'Surname' },
                          { val: '2', desc: 'Multiple surname [OBSOLETE]' },
                          { val: '3', desc: 'Family name' }
                        ] },
                      {
                        desc: 'Thesaurus',
                        ind2: [
                          { val: '0', desc: 'Library of Congress Subject Headings' },
                          { val: '1', desc: 'LC subject headings for children\'s literature' },
                          { val: '2', desc: 'Medical Subject Headings' },
                          { val: '3', desc: 'National Agricultural Library subject authority file' },
                          { val: '4', desc: 'Source not specified' },
                          { val: '5', desc: 'Canadian Subject Headings' },
                          { val: '6', desc: 'R&eacute;pertoire de vedettes-mati&egrave;re' },
                          { val: '7', desc: 'Source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Personal name (NR)', values: [] },
                      { code: 'b', desc: 'Numeration (NR)', values: [] },
                      { code: 'c', desc: 'Titles and other words associated with a name (R)', values: [] },
                      { code: 'd', desc: 'Dates associated with a name (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'j', desc: 'Attribution qualifier (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'q', desc: 'Fuller form of name (NR)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '610',
                    desc: 'SUBJECT ADDED ENTRY--CORPORATE NAME (R)',
                    indicators: [
                      { desc: 'Type of corporate name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      {
                        desc: 'Thesaurus',
                        ind2: [
                          { val: '0', desc: 'Library of Congress Subject Headings' },
                          { val: '1', desc: 'LC subject headings for children\'s literature' },
                          { val: '2', desc: 'Medical Subject Headings' },
                          { val: '3', desc: 'National Agricultural Library subject authority file' },
                          { val: '4', desc: 'Source not specified' },
                          { val: '5', desc: 'Canadian Subject Headings' },
                          { val: '6', desc: 'R&eacute;pertoire de vedettes-mati&egrave;re' },
                          { val: '7', desc: 'Source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Corporate name or jurisdiction name as entry element (NR)', values: [] },
                      { code: 'b', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'c', desc: 'Location of meeting (R)', values: [] },
                      { code: 'd', desc: 'Date of meeting or treaty signing (R)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '611',
                    desc: 'SUBJECT ADDED ENTRY--MEETING NAME (R)',
                    indicators: [
                      { desc: 'Type of meeting name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      {
                        desc: 'Thesaurus',
                        ind2: [
                          { val: '0', desc: 'Library of Congress Subject Headings' },
                          { val: '1', desc: 'LC subject headings for children\'s literature' },
                          { val: '2', desc: 'Medical Subject Headings' },
                          { val: '3', desc: 'National Agricultural Library subject authority file' },
                          { val: '4', desc: 'Source not specified' },
                          { val: '5', desc: 'Canadian Subject Headings' },
                          { val: '6', desc: 'R&eacute;pertoire de vedettes-mati&egrave;re' },
                          { val: '7', desc: 'Source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Meeting name or jurisdiction name as entry element (NR)', values: [] },
                      { code: 'b', desc: 'Number (BK CF MP MU SE VM MX) [OBSOLETE]', values: [] },
                      { code: 'c', desc: 'Location of meeting (R)', values: [] },
                      { code: 'd', desc: 'Date of meeting or treaty signing (R)', values: [] },
                      { code: 'e', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'j', desc: 'Relator term (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'q', desc: 'Name of meeting following jurisdiction name entry element (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '630',
                    desc: 'SUBJECT ADDED ENTRY--UNIFORM TITLE (R)',
                    indicators: [
                      { desc: 'Nonfiling characters',
                        ind1: [
                          { val: '0-9', desc: 'Number of nonfiling characters' },
                          { val: '#', desc: 'Nonfiling characters not specified [OBSOLETE]' }
                        ] },
                      {
                        desc: 'Thesaurus',
                        ind2: [
                          { val: '0', desc: 'Library of Congress Subject Headings' },
                          { val: '1', desc: 'LC subject headings for children\'s literature' },
                          { val: '2', desc: 'Medical Subject Headings' },
                          { val: '3', desc: 'National Agricultural Library subject authority file' },
                          { val: '4', desc: 'Source not specified' },
                          { val: '5', desc: 'Canadian Subject Headings' },
                          { val: '6', desc: 'R&eacute;pertoire de vedettes-mati&egrave;re' },
                          { val: '7', desc: 'Source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Uniform title (NR)', values: [] },
                      { code: 'd', desc: 'Date of treaty signing (R)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '647',
                    desc: 'SUBJECT ADDED ENTRY--NAMED EVENT (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Thesaurus',
                        ind2: [
                          { val: '0', desc: 'Library of Congress Subject Headings' },
                          { val: '1', desc: 'LC subject headings for children\'s literature' },
                          { val: '2', desc: 'Medical Subject Headings' },
                          { val: '3', desc: 'National Agricultural Library subject authority file' },
                          { val: '4', desc: 'Source not specified' },
                          { val: '5', desc: 'Canadian Subject Headings' },
                          { val: '6', desc: 'R&eacute;pertoire de vedettes-mati&egrave;re' },
                          { val: '7', desc: 'Source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Named event (NR)', values: [] },
                      { code: 'c', desc: 'Location of named event (R)', values: [] },
                      { code: 'd', desc: 'Date of named event (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '648',
                    desc: 'SUBJECT ADDED ENTRY--CHRONOLOGICAL TERM (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Type of date or time period [OBSOLETE]',
                        ind1: [
                          { val: '#', desc: 'No information provided [OBSOLETE]' },
                          { val: '0', desc: 'Date or time period covered or depicted [OBSOLETE]' },
                          { val: '1', desc: 'Date or time period of creation or origin [OBSOLETE]' }
                        ]
                      },
                      {
                        desc: 'Thesaurus',
                        ind2: [
                          { val: '0', desc: 'Library of Congress Subject Headings' },
                          { val: '1', desc: 'LC subject headings for children\'s literature' },
                          { val: '2', desc: 'Medical Subject Headings' },
                          { val: '3', desc: 'National Agricultural Library subject authority file' },
                          { val: '4', desc: 'Source not specified' },
                          { val: '5', desc: 'Canadian Subject Headings' },
                          { val: '6', desc: 'R&eacute;pertoire de vedettes-mati&egrave;re' },
                          { val: '7', desc: 'Source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Chronological term (NR)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '650',
                    desc: 'SUBJECT ADDED ENTRY--TOPICAL TERM (R)',
                    indicators: [
                      { desc: 'Level of subject',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'No level specified' },
                          { val: '1', desc: 'Primary' },
                          { val: '2', desc: 'Secondary' }
                        ] },
                      {
                        desc: 'Thesaurus',
                        ind2: [
                          { val: '0', desc: 'Library of Congress Subject Headings' },
                          { val: '1', desc: 'LC subject headings for children\'s literature' },
                          { val: '2', desc: 'Medical Subject Headings' },
                          { val: '3', desc: 'National Agricultural Library subject authority file' },
                          { val: '4', desc: 'Source not specified' },
                          { val: '5', desc: 'Canadian Subject Headings' },
                          { val: '6', desc: 'R&eacute;pertoire de vedettes-mati&egrave;re' },
                          { val: '7', desc: 'Source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Topical term or geographic name as entry element (NR)', values: [] },
                      { code: 'b', desc: 'Topical term following geographic name as entry element (NR)', values: [] },
                      { code: 'c', desc: 'Location of event (NR)', values: [] },
                      { code: 'd', desc: 'Active dates (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '651',
                    desc: 'SUBJECT ADDED ENTRY--GEOGRAPHIC NAME (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Thesaurus',
                        ind2: [
                          { val: '0', desc: 'Library of Congress Subject Headings' },
                          { val: '1', desc: 'LC subject headings for children\'s literature' },
                          { val: '2', desc: 'Medical Subject Headings' },
                          { val: '3', desc: 'National Agricultural Library subject authority file' },
                          { val: '4', desc: 'Source not specified' },
                          { val: '5', desc: 'Canadian Subject Headings' },
                          { val: '6', desc: 'R&eacute;pertoire de vedettes-mati&egrave;re' },
                          { val: '7', desc: 'Source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Geographic name (NR)', values: [] },
                      { code: 'b', desc: 'Geographic name following place entry element (R) [OBSOLETE]', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '652',
                    desc: 'SUBJECT ADDED ENTRY--REVERSED GEOGRAPHIC (BK MP SE) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Geographic name of place element (NR)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] }
                    ]
                  },
                  {
                    tag: '653',
                    desc: 'INDEX TERM--UNCONTROLLED (R)',
                    indicators: [
                      { desc: 'Level of index term',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'No level specified' },
                          { val: '1', desc: 'Primary' },
                          { val: '2', desc: 'Secondary' }
                        ] },
                      {
                        desc: 'Type of term or name',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Topical term' },
                          { val: '1', desc: 'Personal name' },
                          { val: '2', desc: 'Corporate name' },
                          { val: '3', desc: 'Meeting name' },
                          { val: '4', desc: 'Chronological term' },
                          { val: '5', desc: 'Geographic name' },
                          { val: '6', desc: 'Genre/form term' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Uncontrolled term (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '654',
                    desc: 'SUBJECT ADDED ENTRY--FACETED TOPICAL TERMS (R)',
                    indicators: [
                      { desc: 'Level of subject',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'No level specified' },
                          { val: '1', desc: 'Primary' },
                          { val: '2', desc: 'Secondary' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Focus term (R)', values: [] },
                      { code: 'b', desc: 'Non-focus term (R)', values: [] },
                      { code: 'c', desc: 'Facet/hierarchy designation (R)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '655',
                    desc: 'INDEX TERM--GENRE/FORM (R)',
                    indicators: [
                      { desc: 'Type of heading', ind1: [{ val: '#', desc: 'Basic' }, { val: '0', desc: 'Faceted' }] },
                      {
                        desc: 'Thesaurus',
                        ind2: [
                          { val: '0', desc: 'Library of Congress Subject Headings' },
                          { val: '1', desc: 'LC subject headings for children\'s literature' },
                          { val: '2', desc: 'Medical Subject Headings' },
                          { val: '3', desc: 'National Agricultural Library subject authority file' },
                          { val: '4', desc: 'Source not specified' },
                          { val: '5', desc: 'Canadian Subject Headings' },
                          { val: '6', desc: 'R&eacute;pertoire de vedettes-mati&egrave;re' },
                          { val: '7', desc: 'Source specified in subfield $2' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Genre/form data or focus term (NR)', values: [] },
                      { code: 'b', desc: 'Non-focus term (R)', values: [] },
                      { code: 'c', desc: 'Facet/hierarchy designation (R)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '656',
                    desc: 'INDEX TERM--OCCUPATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Source of term', ind2: [{ val: '7', desc: 'Source specified in subfield $2' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Occupation (NR)', values: [] },
                      { code: 'k', desc: 'Form (NR)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '657',
                    desc: 'INDEX TERM--FUNCTION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Source of term', ind2: [{ val: '7', desc: 'Source specified in subfield $2' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Function (NR)', values: [] },
                      { code: 'v', desc: 'Form subdivision (R)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '658',
                    desc: 'INDEX TERM--CURRICULUM OBJECTIVE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main curriculum objective (NR)', values: [] },
                      { code: 'b', desc: 'Subordinate curriculum objective (R)', values: [] },
                      { code: 'c', desc: 'Curriculum code (NR)', values: [] },
                      { code: 'd', desc: 'Correlation factor (NR)', values: [] },
                      { code: '2', desc: 'Source of term or code (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '662',
                    desc: 'SUBJECT ADDED ENTRY--HIERARCHICAL PLACE NAME (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Country or larger entity (R)', values: [] },
                      { code: 'b', desc: 'First-order political jurisdiction (NR)', values: [] },
                      { code: 'c', desc: 'Intermediate political jurisdiction (R)', values: [] },
                      { code: 'd', desc: 'City (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'City subsection (R)', values: [] },
                      { code: 'g', desc: 'Other nonjurisdictional geographic region and feature (R)', values: [] },
                      { code: 'h', desc: 'Extraterrestrial area (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '688',
                    desc: 'SUBJECT ADDED ENTRY--TYPE OF ENTITY UNSPECIFIED (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      {
                        desc: 'Source of name, title, or term',
                        ind2: [{ val: '#', desc: 'No information provided' }, { val: '7', desc: 'Source specified in subfield $2' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Name, title, or term (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of name, title, or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Added Entry Fields (70X-75X)',
                var_fields: [
                  { tag: '700',
                    desc: 'ADDED ENTRY--PERSONAL NAME (R)',
                    indicators: [
                      { desc: 'Type of personal name entry element',
                        ind1: [
                          { val: '0', desc: 'Forename' },
                          { val: '1', desc: 'Surname' },
                          { val: '2', desc: 'Multiple surname [OBSOLETE]' },
                          { val: '3', desc: 'Family name' }
                        ] },
                      {
                        desc: 'Type of added entry',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Alternative entry (BK CF MP MU SE MX) [OBSOLETE]' },
                          { val: '1', desc: 'Secondary entry (BK CF MP MU SE MX) [OBSOLETE]' },
                          { val: '1', desc: 'Printed on card (VM) [OBSOLETE]' },
                          { val: '2', desc: 'Analytical entry' },
                          { val: '3', desc: 'Not printed on card (VM) [OBSOLETE]' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Personal name (NR)', values: [] },
                      { code: 'b', desc: 'Numeration (NR)', values: [] },
                      { code: 'c', desc: 'Titles and other words associated with a name (R)', values: [] },
                      { code: 'd', desc: 'Dates associated with a name (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'j', desc: 'Attribution qualifier (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'q', desc: 'Fuller form of name (NR)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '705',
                    desc: 'ADDED ENTRY--PERSONAL NAME (PERFORMER) (MU) [OBSOLETE]',
                    indicators: [
                      { desc: 'Type of personal name entry element',
                        ind1: [
                          { val: '0', desc: 'Forename' },
                          { val: '1', desc: 'Single surname' },
                          { val: '2', desc: 'Multiple surname' },
                          { val: '3', desc: 'Family name' }
                        ] },
                      {
                        desc: 'Type of added entry',
                        ind2: [
                          { val: '0', desc: 'Alternative entry' },
                          { val: '1', desc: 'Secondary entry' },
                          { val: '2', desc: 'Analytical entry' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Personal name (NR)', values: [] },
                      { code: 'b', desc: 'Numeration (NR)', values: [] },
                      { code: 'c', desc: 'Titles and other words associated with a name (R)', values: [] },
                      { code: 'd', desc: 'Dates associated with a name (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (NR)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '710',
                    desc: 'ADDED ENTRY--CORPORATE NAME (R)',
                    indicators: [
                      { desc: 'Type of corporate name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      {
                        desc: 'Type of added entry',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Alternative entry (BK CF MP MU SE MX) [OBSOLETE]' },
                          { val: '1', desc: 'Secondary entry (BK CF MP MU SE MX) [OBSOLETE]' },
                          { val: '1', desc: 'Printed on card (VM) [OBSOLETE]' },
                          { val: '2', desc: 'Analytical entry' },
                          { val: '3', desc: 'Not printed on card (VM) [OBSOLETE]' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Corporate name or jurisdiction name as entry element (NR)', values: [] },
                      { code: 'b', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'c', desc: 'Location of meeting (R)', values: [] },
                      { code: 'd', desc: 'Date of meeting or treaty signing (R)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '711',
                    desc: 'ADDED ENTRY--MEETING NAME (R)',
                    indicators: [
                      { desc: 'Type of meeting name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      {
                        desc: 'Type of added entry',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Alternative entry (BK CF MP MU SE MX) [OBSOLETE]' },
                          { val: '1', desc: 'Secondary entry (BK CF MP MU SE MX) [OBSOLETE]' },
                          { val: '1', desc: 'Printed on card (VM) [OBSOLETE]' },
                          { val: '2', desc: 'Analytical entry' },
                          { val: '3', desc: 'Not printed on card (VM) [OBSOLETE]' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Meeting name or jurisdiction name as entry element (NR)', values: [] },
                      { code: 'b', desc: 'Number (BK CF MP MU SE VM MX) [OBSOLETE]', values: [] },
                      { code: 'c', desc: 'Location of meeting (R)', values: [] },
                      { code: 'd', desc: 'Date of meeting or treaty signing (R)', values: [] },
                      { code: 'e', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'j', desc: 'Relator term (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'q', desc: 'Name of meeting following jurisdiction name entry element (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '715',
                    desc: 'ADDED ENTRY--CORPORATE NAME (PERFORMING GROUP) (MU) [OBSOLETE]',
                    indicators: [
                      { desc: 'Type of corporate name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      {
                        desc: 'Type of added entry',
                        ind2: [
                          { val: '0', desc: 'Alternative entry' },
                          { val: '1', desc: 'Secondary entry' },
                          { val: '2', desc: 'Analytical entry' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Corporate name or jurisdiction name (NR)', values: [] },
                      { code: 'b', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (NR)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Nonprinting information (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '720',
                    desc: 'ADDED ENTRY--UNCONTROLLED NAME (R)',
                    indicators: [
                      { desc: 'Type of name',
                        ind1: [
                          { val: '#', desc: 'Not specified' },
                          { val: '1', desc: 'Personal' },
                          { val: '2', desc: 'Other' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Name (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '730',
                    desc: 'ADDED ENTRY--UNIFORM TITLE (R)',
                    indicators: [
                      { desc: 'Nonfiling characters',
                        ind1: [
                          { val: '0-9', desc: 'Number of nonfiling characters' },
                          { val: '#', desc: 'Nonfiling characters not specified [OBSOLETE]' }
                        ] },
                      {
                        desc: 'Type of added entry',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Alternative entry (BK CF MP MU SE MX) [OBSOLETE]' },
                          { val: '1', desc: 'Secondary entry (BK CF MP MU SE MX) [OBSOLETE]' },
                          { val: '1', desc: 'Printed on card (VM) [OBSOLETE]' },
                          { val: '2', desc: 'Analytical entry' },
                          { val: '3', desc: 'Not printed on card (VM) [OBSOLETE]' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Uniform title (NR)', values: [] },
                      { code: 'd', desc: 'Date of treaty signing (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '740',
                    desc: 'ADDED ENTRY--UNCONTROLLED RELATED/ANALYTICAL TITLE (R)',
                    indicators: [
                      { desc: 'Nonfiling characters',
                        ind1: [
                          { val: '0-9', desc: 'Number of nonfiling characters' },
                          { val: '#', desc: 'Nonfiling characters not specified [OBSOLETE]' }
                        ] },
                      {
                        desc: 'Type of added entry',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Alternative entry (BK AM CF MP MU) [OBSOLETE]' },
                          { val: '1', desc: 'Secondary entry (BK AM CF MP MU) [OBSOLETE]' },
                          { val: '1', desc: 'Printed on card (VM) [OBSOLETE]' },
                          { val: '2', desc: 'Analytical entry' },
                          { val: '3', desc: 'Not printed on card (VM) [OBSOLETE]' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Uncontrolled related/analytical title (NR)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '751',
                    desc: 'ADDED ENTRY--GEOGRAPHIC NAME (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Geographic name (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '752',
                    desc: 'ADDED ENTRY--HIERARCHICAL PLACE NAME (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Country or larger entity (R)', values: [] },
                      { code: 'b', desc: 'First-order political jurisdiction (NR)', values: [] },
                      { code: 'c', desc: 'Intermediate political jurisdiction (R)', values: [] },
                      { code: 'd', desc: 'City (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'City subsection (R)', values: [] },
                      { code: 'g', desc: 'Other nonjurisdictional geographic region and feature (R)', values: [] },
                      { code: 'h', desc: 'Extraterrestrial area (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '753',
                    desc: 'SYSTEM DETAILS ACCESS TO COMPUTER FILES (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Make and model of machine (NR)', values: [] },
                      { code: 'b', desc: 'Programming language (NR)', values: [] },
                      { code: 'c', desc: 'Operating system (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '754',
                    desc: 'ADDED ENTRY--TAXONOMIC IDENTIFICATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Taxonomic name (R)', values: [] },
                      { code: 'c', desc: 'Taxonomic category (R)', values: [] },
                      { code: 'd', desc: 'Common or alternative name (R)', values: [] },
                      { code: 'x', desc: 'Non-public note (R)', values: [] },
                      { code: 'z', desc: 'Public note (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of taxonomic identification (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '755',
                    desc: 'ADDED ENTRY--PHYSICAL CHARACTERISTICS (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Access term (NR)', values: [] },
                      { code: 'x', desc: 'General subdivision (R)', values: [] },
                      { code: 'y', desc: 'Chronological subdivision (R)', values: [] },
                      { code: 'z', desc: 'Geographic subdivision (R)', values: [] },
                      { code: '2', desc: 'Source of term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '758',
                    desc: 'RESOURCE IDENTIFIER (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Label (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Linking Entry Fields (76X-78X)',
                var_fields: [
                  { tag: '760',
                    desc: 'MAIN SERIES ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Main series' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '762',
                    desc: 'SUBSERIES ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Has subseries' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '765',
                    desc: 'ORIGINAL LANGUAGE ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Translation of' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '767',
                    desc: 'TRANSLATION ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Translated as' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '770',
                    desc: 'SUPPLEMENT/SPECIAL ISSUE ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Has supplement' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '772',
                    desc: 'SUPPLEMENT PARENT ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [
                          { val: '#', desc: 'Supplement to' },
                          { val: '0', desc: 'Parent' },
                          { val: '8', desc: 'No display constant generated' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Stan dard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '773',
                    desc: 'HOST ITEM ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'In' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'p', desc: 'Abbreviated title (NR)', values: [] },
                      { code: 'q', desc: 'Enumeration and first page (NR)', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '774',
                    desc: 'CONSTITUENT UNIT ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Constituent unit' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '775',
                    desc: 'OTHER EDITION ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Other edition available' }, { val: '8', desc: 'No display constant generated' }]
                      },
                      {
                        desc: 'Edition entry same as main entry or title (SE) [OBSOLETE]',
                        ind2: [
                          { val: '0', desc: 'Entry not the same' },
                          { val: '1', desc: 'Entry is the same as title' },
                          { val: '2', desc: 'Entry is the same as main entry and title' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'e', desc: 'Language code (NR)', values: [] },
                      { code: 'f', desc: 'Country code (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '776',
                    desc: 'ADDITIONAL PHYSICAL FORM ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Available in another form' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '777',
                    desc: 'ISSUED WITH ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Issued with' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '780',
                    desc: 'PRECEDING ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Type of relationship',
                        ind2: [
                          { val: '0', desc: 'Continues' },
                          { val: '1', desc: 'Continues in part' },
                          { val: '2', desc: 'Supersedes' },
                          { val: '3', desc: 'Supersedes in part' },
                          { val: '4', desc: 'Formed by the union of ... and ...' },
                          { val: '5', desc: 'Absorbed' },
                          { val: '6', desc: 'Absorbed in part' },
                          { val: '7', desc: 'Separated from' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '785',
                    desc: 'SUCCEEDING ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Type of relationship',
                        ind2: [
                          { val: '0', desc: 'Continued by' },
                          { val: '1', desc: 'Continued in part by' },
                          { val: '2', desc: 'Superseded by' },
                          { val: '3', desc: 'Superseded in part by' },
                          { val: '4', desc: 'Absorbed by' },
                          { val: '5', desc: 'Absorbed in part by' },
                          { val: '6', desc: 'Split into ... and ...' },
                          { val: '7', desc: 'Merged with ... to form ...' },
                          { val: '8', desc: 'Changed back to' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'q', desc: 'Parallel title (NR) (BK SE) [OBSOLETE]', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standa rd Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '786',
                    desc: 'DATA SOURCE ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Data source' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'j', desc: 'Period of content (NR)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'p', desc: 'Abbreviated title (NR)', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'v', desc: 'Source Contribution (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '787',
                    desc: 'OTHER RELATIONSHIP ENTRY (R)',
                    indicators: [
                      { desc: 'Note controller',
                        ind1: [{ val: '0', desc: 'Display note' }, { val: '1', desc: 'Do not display note' }] },
                      {
                        desc: 'Display constant controller',
                        ind2: [{ val: '#', desc: 'Related item' }, { val: '8', desc: 'No display constant generated' }]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Main entry heading (NR)', values: [] },
                      { code: 'b', desc: 'Edition (NR)', values: [] },
                      { code: 'c', desc: 'Qualifying information (NR)', values: [] },
                      { code: 'd', desc: 'Place, publisher, and date of publication (NR)', values: [] },
                      { code: 'g', desc: 'Related parts (R)', values: [] },
                      { code: 'h', desc: 'Physical description (NR)', values: [] },
                      { code: 'i', desc: 'Relationship information (R)', values: [] },
                      { code: 'k', desc: 'Series data for related item (R)', values: [] },
                      { code: 'm', desc: 'Material-specific details (NR)', values: [] },
                      { code: 'n', desc: 'Note (R)', values: [] },
                      { code: 'o', desc: 'Other item identifier (R)', values: [] },
                      { code: 'r', desc: 'Report number (R)', values: [] },
                      { code: 's', desc: 'Uniform title (NR)', values: [] },
                      { code: 't', desc: 'Title (NR)', values: [] },
                      { code: 'u', desc: 'Standard Technical Report Number (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: 'y', desc: 'CODEN designation (NR)', values: [] },
                      { code: 'z', desc: 'International Standard Book Number (R)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [
                          { val: '0', desc: 'Type of main entry heading' },
                          { val: '1', desc: 'Form of name' },
                          { val: '2', desc: 'Type of record' },
                          { val: '3', desc: 'Bibliographic level' }
                        ]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Series Added Entry Fields (80X-830)',
                var_fields: [
                  { tag: '800',
                    desc: 'SERIES ADDED ENTRY--PERSONAL NAME (R)',
                    indicators: [
                      { desc: 'Type of personal name entry element',
                        ind1: [
                          { val: '0', desc: 'Forename' },
                          { val: '1', desc: 'Surname' },
                          { val: '3', desc: 'Family name' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Personal name (NR)', values: [] },
                      { code: 'b', desc: 'Numeration (NR)', values: [] },
                      { code: 'c', desc: 'Titles and other words associated with a name (R)', values: [] },
                      { code: 'd', desc: 'Dates associated with a name (NR)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'j', desc: 'Attribution qualifier (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work  (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'q', desc: 'Fuller form of name (NR)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'v', desc: 'Volume/sequential designation  (NR)', values: [] },
                      { code: 'w', desc: 'Bibliographic record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [{ val: '0', desc: 'Type of record' }, { val: '1', desc: 'Bibliographic level' }]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ] },
                  {
                    tag: '810',
                    desc: 'SERIES ADDED ENTRY--CORPORATE NAME (R)',
                    indicators: [
                      { desc: 'Type of corporate name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Corporate name or jurisdiction name as entry element (NR)', values: [] },
                      { code: 'b', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'c', desc: 'Location of meeting (R)', values: [] },
                      { code: 'd', desc: 'Date of meeting or treaty signing (R)', values: [] },
                      { code: 'e', desc: 'Relator term (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'v', desc: 'Volume/sequential designation (NR)', values: [] },
                      { code: 'w', desc: 'Bibliographic record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [{ val: '0', desc: 'Type of record' }, { val: '1', desc: 'Bibliographic level' }]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '811',
                    desc: 'SERIES ADDED ENTRY--MEETING NAME (R)',
                    indicators: [
                      { desc: 'Type of meeting name entry element',
                        ind1: [
                          { val: '0', desc: 'Inverted name' },
                          { val: '1', desc: 'Jurisdiction name' },
                          { val: '2', desc: 'Name in direct order' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Meeting name or jurisdiction name as entry element (NR)', values: [] },
                      { code: 'c', desc: 'Location of meeting (R)', values: [] },
                      { code: 'd', desc: 'Date of meeting or treaty signing (R)', values: [] },
                      { code: 'e', desc: 'Subordinate unit (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'j', desc: 'Relator term (R)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'n', desc: 'Number of part/section/meeting (R)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'q', desc: 'Name of meeting following jurisdiction name entry element (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'u', desc: 'Affiliation (NR)', values: [] },
                      { code: 'v', desc: 'Volume/sequential designation (NR)', values: [] },
                      { code: 'w', desc: 'Bibliographic record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '4', desc: 'Relationship (R)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [{ val: '0', desc: 'Type of record' }, { val: '1', desc: 'Bibliographic level' }]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '830',
                    desc: 'SERIES ADDED ENTRY--UNIFORM TITLE (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Uniform title (NR)', values: [] },
                      { code: 'd', desc: 'Date of treaty signing (R)', values: [] },
                      { code: 'f', desc: 'Date of a work (NR)', values: [] },
                      { code: 'g', desc: 'Miscellaneous information (R)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'k', desc: 'Form subheading (R)', values: [] },
                      { code: 'l', desc: 'Language of a work (NR)', values: [] },
                      { code: 'm', desc: 'Medium of performance for music (R)', values: [] },
                      { code: 'n', desc: 'Number of part/section of a work (R)', values: [] },
                      { code: 'o', desc: 'Arranged statement for music (NR)', values: [] },
                      { code: 'p', desc: 'Name of part/section of a work (R)', values: [] },
                      { code: 'r', desc: 'Key for music (NR)', values: [] },
                      { code: 's', desc: 'Version (R)', values: [] },
                      { code: 't', desc: 'Title of a work (NR)', values: [] },
                      { code: 'v', desc: 'Volume/sequential designation (NR)', values: [] },
                      { code: 'w', desc: 'Bibliographic record control number (R)', values: [] },
                      { code: 'x', desc: 'International Standard Serial Number (NR)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source of heading or term (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      {
                        code: '7',
                        desc: 'Control subfield (NR)',
                        values: [{ val: '0', desc: 'Type of record' }, { val: '1', desc: 'Bibliographic level' }]
                      },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '840',
                    desc: 'SERIES ADDED ENTRY--TITLE (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Nonfiling characters', ind2: [{ val: '0-9', desc: 'Number of nonfiling characters' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Title (NR)', values: [] },
                      { code: 'h', desc: 'Medium (NR)', values: [] },
                      { code: 'v', desc: 'Volume/sequential designation (NR)', values: [] }
                    ]
                  }
                ]
              },
              {
                desc: 'Holdings, Location, Alternate Graphics, etc. Fields (841-88X)',
                var_fields: [
                  { tag: '841', desc: 'HOLDINGS CODED DATA VALUES (NR)' },
                  { tag: '842', desc: 'TEXTUAL PHYSICAL FORM DESIGNATOR (NR)' },
                  { tag: '843', desc: 'REPRODUCTION NOTE (R)' },
                  { tag: '844', desc: 'NAME OF UNIT (NR)' },
                  { tag: '845', desc: 'TERMS GOVERNING USE AND REPRODUCTION NOTE (R)' },
                  {
                    tag: '850',
                    desc: 'HOLDING INSTITUTION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Holding institution (R)', values: [] },
                      { code: 'b', desc: 'Holdings (NR) (MU VM SE) [OBSOLETE]', values: [] },
                      { code: 'd', desc: 'Inclusive dates (NR) (MU VM SE) [OBSOLETE]', values: [] },
                      { code: 'e', desc: 'Retention statement (NR) (CF MU VM SE) [OBSOLETE]', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '851',
                    desc: 'LOCATION (R) [OBSOLETE]',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Name (custodian or owner) (NR)', values: [] },
                      { code: 'b', desc: 'Institutional division (NR)', values: [] },
                      { code: 'c', desc: 'Street address (NR)', values: [] },
                      { code: 'd', desc: 'Country (NR)', values: [] },
                      { code: 'e', desc: 'Location of units (NR)', values: [] },
                      { code: 'f', desc: 'Item number (NR)', values: [] },
                      { code: 'g', desc: 'Repository location code (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '852',
                    desc: 'LOCATION (R)',
                    indicators: [
                      { desc: 'Shelving scheme',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Library of Congress classification' },
                          { val: '1', desc: 'Dewey Decimal classification' },
                          { val: '2', desc: 'National Library of Medicine classification' },
                          { val: '3', desc: 'Superintendent of Documents classification' },
                          { val: '4', desc: 'Shelving control number' },
                          { val: '5', desc: 'Title' },
                          { val: '6', desc: 'Shelved separately' },
                          { val: '7', desc: 'Source specified in subfield $2' },
                          { val: '8', desc: 'Other scheme' }
                        ] },
                      {
                        desc: 'Shelving order',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Not enumeration' },
                          { val: '1', desc: 'Primary enumeration' },
                          { val: '2', desc: 'Alternative enumeration' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Location (NR)', values: [] },
                      { code: 'b', desc: 'Sublocation or collection (R)', values: [] },
                      { code: 'c', desc: 'Shelving location (R)', values: [] },
                      { code: 'd', desc: 'Former shelving location (R)', values: [] },
                      { code: 'e', desc: 'Address (R)', values: [] },
                      { code: 'f', desc: 'Coded location qualifier (R)', values: [] },
                      { code: 'g', desc: 'Non-coded location qualifier (R)', values: [] },
                      { code: 'h', desc: 'Classification part (NR)', values: [] },
                      { code: 'i', desc: 'Item part (R)', values: [] },
                      { code: 'j', desc: 'Shelving control number (NR)', values: [] },
                      { code: 'k', desc: 'Call number prefix (R)', values: [] },
                      { code: 'l', desc: 'Shelving form of title (NR)', values: [] },
                      { code: 'm', desc: 'Call number suffix (R)', values: [] },
                      { code: 'n', desc: 'Country code (NR)', values: [] },
                      { code: 'p', desc: 'Piece designation (NR)', values: [] },
                      { code: 'q', desc: 'Piece physical condition (NR)', values: [] },
                      { code: 's', desc: 'Copyright article-fee code (R)', values: [] },
                      { code: 't', desc: 'Copy number (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier  (R)', values: [] },
                      { code: 'x', desc: 'Nonpublic note (R)', values: [] },
                      { code: 'z', desc: 'Public note (R)', values: [] },
                      { code: '2', desc: 'Source of classification or shelving scheme (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Sequence number (NR)', values: [] }
                    ]
                  },
                  { tag: '853', desc: 'CAPTIONS AND PATTERN--BASIC BIBLIOGRAPHIC UNIT (R)' },
                  { tag: '854', desc: 'CAPTIONS AND PATTERN--SUPPLEMENTARY MATERIAL (R)' },
                  { tag: '855', desc: 'CAPTIONS AND PATTERN--INDEXES (R)' },
                  {
                    tag: '856',
                    desc: 'ELECTRONIC LOCATION AND ACCESS (R)',
                    indicators: [
                      { desc: 'Access method',
                        ind1: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Email' },
                          { val: '1', desc: 'FTP' },
                          { val: '2', desc: 'Remote login (Telnet)' },
                          { val: '3', desc: 'Dial-up' },
                          { val: '4', desc: 'HTTP' },
                          { val: '7', desc: 'Method specified in subfield $2' }
                        ] },
                      {
                        desc: 'Relationship',
                        ind2: [
                          { val: '#', desc: 'No information provided' },
                          { val: '0', desc: 'Resource' },
                          { val: '1', desc: 'Version of resource' },
                          { val: '2', desc: 'Related resource' },
                          { val: '8', desc: 'No display constant generated' }
                        ]
                      }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Host name (R)', values: [] },
                      { code: 'b', desc: 'Access number (R) [OBSOLETE]', values: [] },
                      { code: 'c', desc: 'Compression information (R)', values: [] },
                      { code: 'd', desc: 'Path (R)', values: [] },
                      { code: 'f', desc: 'Electronic name (R)', values: [] },
                      { code: 'g', desc: 'Uniform Resource Name (R) [OBSOLETE]', values: [] },
                      { code: 'h', desc: 'Processor of request (NR) [OBSOLETE]', values: [] },
                      { code: 'i', desc: 'Instruction (R) [OBSOLETE]', values: [] },
                      { code: 'j', desc: 'Bits per second (NR) [OBSOLETE]', values: [] },
                      { code: 'k', desc: 'Password (NR) [OBSOLETE]', values: [] },
                      { code: 'l', desc: 'Logon (NR) [OBSOLETE]', values: [] },
                      { code: 'm', desc: 'Contact for access assistance (R)', values: [] },
                      { code: 'n', desc: 'Name of location of host (NR)[OBSOLETE]', values: [] },
                      { code: 'o', desc: 'Operating system (NR)', values: [] },
                      { code: 'p', desc: 'Port (NR)', values: [] },
                      { code: 'q', desc: 'Electronic format type (NR)', values: [] },
                      { code: 'r', desc: 'Settings (NR) [OBSOLETE]', values: [] },
                      { code: 's', desc: 'File size (R)', values: [] },
                      { code: 't', desc: 'Terminal emulation (R) [OBSOLETE]', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] },
                      { code: 'v', desc: 'Hours access method available (R)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'Nonpublic note (R)', values: [] },
                      { code: 'y', desc: 'Link text (R)', values: [] },
                      { code: 'z', desc: 'Public note (R)', values: [] },
                      { code: '2', desc: 'Access method (NR)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '7', desc: 'Access status (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  { tag: '863', desc: 'ENUMERATION AND CHRONOLOGY--BASIC BIBLIOGRAPHIC UNIT (R)' },
                  { tag: '864', desc: 'ENUMERATION AND CHRONOLOGY--SUPPLEMENTARY MATERIAL (R)' },
                  { tag: '865', desc: 'ENUMERATION AND CHRONOLOGY--INDEXES (R)' },
                  { tag: '866', desc: 'TEXTUAL HOLDINGS--BASIC BIBLIOGRAPHIC UNIT (R)' },
                  { tag: '867', desc: 'TEXTUAL HOLDINGS--SUPPLEMENTARY MATERIAL (R)' },
                  { tag: '868', desc: 'TEXTUAL HOLDINGS--INDEXES (R)' },
                  { tag: '870', desc: 'VARIANT PERSONAL NAME (SE) [OBSOLETE]' },
                  { tag: '871', desc: 'VARIANT CORPORATE NAME (SE) [OBSOLETE]' },
                  { tag: '872', desc: 'VARIANT CONFERENCE OR MEETING NAME (SE) [OBSOLETE]' },
                  { tag: '873', desc: 'VARIANT UNIFORM TITLE HEADING (SE) [OBSOLETE]' },
                  { tag: '876', desc: 'ITEM INFORMATION--BASIC BIBLIOGRAPHIC UNIT (R)' },
                  { tag: '877', desc: 'ITEM INFORMATION--SUPPLEMENTARY MATERIAL (R)' },
                  { tag: '878', desc: 'ITEM INFORMATION--INDEXES (R)' },
                  {
                    tag: '880',
                    desc: 'ALTERNATE GRAPHIC REPRESENTATION (R)',
                    indicators: [{ desc: 'Same as associated field', ind1: [] }, { desc: 'Same as associated field', ind2: [] }],
                    subfield_codes: [
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code1: 'a', code2: 'z', desc: 'Same as associated field', values: [] },
                      { code1: '0', code2: '5', desc: 'Same as associated field', values: [] },
                      { code1: '7', code2: '9', desc: 'Same as associated field', values: [] }
                    ]
                  },
                  {
                    tag: '881',
                    desc: 'MANIFESTATION STATEMENTS (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Manifestation statement, high-level/general (R)', values: [] },
                      { code: 'b', desc: 'Manifestation identifier statement (R)', values: [] },
                      { code: 'c', desc: 'Manifestation title and responsibility statement (R)', values: [] },
                      { code: 'd', desc: 'Manifestation edition statement (R)', values: [] },
                      { code: 'e', desc: 'Manifestation production statement (R)', values: [] },
                      { code: 'f', desc: 'Manifestation publication statement (R)', values: [] },
                      { code: 'g', desc: 'Manifestation distribution statement (R)', values: [] },
                      { code: 'h', desc: 'Manifestation manufacture statement (R)', values: [] },
                      { code: 'i', desc: 'Manifestation copyright statement (R)', values: [] },
                      { code: 'j', desc: 'Manifestation frequency statement (R)', values: [] },
                      { code: 'k', desc: 'Manifestation designation of sequence statement (R)', values: [] },
                      { code: 'l', desc: 'Manifestation series statement  (R)', values: [] },
                      { code: 'm', desc: 'Manifestation dissertation statement (R)', values: [] },
                      { code: 'n', desc: 'Manifestation regional encoding statement (R)', values: [] },
                      { code: '3', desc: 'Materials specified (NR)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '882',
                    desc: 'REPLACEMENT RECORD INFORMATION (NR)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Replacement title (R)', values: [] },
                      { code: 'i', desc: 'Explanatory text (R)', values: [] },
                      { code: 'w', desc: 'Replacement bibliographic record control number (R)', values: [] },
                      { code: '6', desc: 'Linkage (NR)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '883',
                    desc: 'METADATA PROVENANCE (R)',
                    indicators: [
                      { desc: 'Method of assignment',
                        ind1: [
                          { val: '#', desc: 'No information provided/not applicable' },
                          { val: '0', desc: 'Fully machine-generated' },
                          { val: '1', desc: 'Partially machine-generated' },
                          { val: '2', desc: 'Not machine-generated' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Creation process (NR)', values: [] },
                      { code: 'c', desc: 'Confidence value (NR)', values: [] },
                      { code: 'd', desc: 'Creation date (NR)', values: [] },
                      { code: 'q', desc: 'Assigning or generating agency (NR)', values: [] },
                      { code: 'x', desc: 'Validity end date (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (NR)', values: [] },
                      { code: 'w', desc: 'Bibliographic record control number (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '8', desc: 'Field link and sequence number (R)', values: [] }
                    ]
                  },
                  {
                    tag: '884',
                    desc: 'DESCRIPTION CONVERSION INFORMATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Conversion process (NR)', values: [] },
                      { code: 'g', desc: 'Conversion date (NR)', values: [] },
                      { code: 'k', desc: 'Identifier of source metadata (NR)', values: [] },
                      { code: 'q', desc: 'Conversion agency (NR)', values: [] },
                      { code: 'u', desc: 'Uniform Resource Identifier (R)', values: [] }
                    ]
                  },
                  {
                    tag: '885',
                    desc: 'MATCHING INFORMATION (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Matching information (NR)', values: [] },
                      { code: 'b', desc: 'Status of matching and its checking (NR)', values: [] },
                      { code: 'c', desc: 'Confidence value (NR)', values: [] },
                      { code: 'd', desc: 'Generation date (NR)', values: [] },
                      { code: 'w', desc: 'Record control number (R)', values: [] },
                      { code: 'x', desc: 'Nonpublic note (R)', values: [] },
                      { code: 'z', desc: 'Public note (R)', values: [] },
                      { code: '0', desc: 'Authority record control number or standard number (R)', values: [] },
                      { code: '1', desc: 'Real World Object URI (R)', values: [] },
                      { code: '2', desc: 'Source (NR)', values: [] },
                      { code: '5', desc: 'Institution to which field applies (NR)', values: [] }
                    ]
                  },
                  {
                    tag: '886',
                    desc: 'FOREIGN MARC INFORMATION FIELD (R)',
                    indicators: [
                      { desc: 'Type of field',
                        ind1: [
                          { val: '0', desc: 'Leader' },
                          { val: '1', desc: 'Variable control fields (002-009)' },
                          { val: '2', desc: 'Variable data fields (010-999)' }
                        ] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Tag of the foreign MARC field (NR)', values: [] },
                      { code: 'b', desc: 'Content of the foreign MARC field (NR)', values: [] },
                      { code: '2', desc: 'Source of data (NR)', values: [] },
                      { code1: 'a', code2: 'z', desc: 'Foreign MARC subfield (R)', values: [] },
                      { code1: '0', code2: '9', desc: 'Foreign MARC subfield (R)', values: [] }
                    ]
                  },
                  {
                    tag: '887',
                    desc: 'NON-MARC INFORMATION FIELD (R)',
                    indicators: [
                      { desc: 'Undefined', ind1: [{ val: '#', desc: 'Undefined' }] },
                      { desc: 'Undefined', ind2: [{ val: '#', desc: 'Undefined' }] }
                    ],
                    subfield_codes: [
                      { code: 'a', desc: 'Content of non-MARC field (NR)', values: [] },
                      { code: '2', desc: 'Source of data (NR)', values: [] }
                    ]
                  }
                ]
              }
            ]
          }
      end
    end
  end
end
# rubocop:enable Metrics/ModuleLength
