# rubocop:disable Layout/LineLength
module BerkeleyLibrary
  module Marc
    module FieldInfo
      module VarFields
        BERKELEY_9XX_PARSED =
          { doc_comments: [{ comment: 'Adapted from https://asktico.lib.berkeley.edu/9xx-local-field-use-2/' },
                           { comment: 'Retrieved 2021-01-15' }],
            sections: [{ var_fields: [{ tag: '900',
                                        desc: 'Level 2/Level 3 notes (SCP Shared Cataloging Program information)' },
                                      { tag: '905',
                                        desc: 'Field to retain previous OCLC number/001 when bib record is merged and/or marked for suppression/deletion — to prevent OCLC number duplicates' },
                                      { tag: '907',
                                        desc: 'Used in OCLC to target the Millennium bib record number to overlay (not retained in Millennium)' },
                                      { tag: '907',
                                        desc: 'OTF Bib (shows that Bib record was created on the fly – usually at checkout)' },
                                      { tag: '911', desc: 'SCP Tier 1' },
                                      { tag: '912', desc: 'SCP Tier 2' },
                                      { tag: '913', desc: 'SCP Tier 3' },
                                      { tag: '936',
                                        desc: 'Mix of volume information (historic?) and OCLC parallel record numbers.' },
                                      { tag: '941', desc: 'PFA coded 541 text.' },
                                      { tag: '945', desc: 'PFA condition notes' },
                                      { tag: '946', desc: 'PFA cataloging notes' },
                                      { tag: '948', desc: 'PFA restriction notes' },
                                      { tag: '949',
                                        desc: 'Used to load item information from OCLC and other sources (not retained in Millennium)' },
                                      { tag: '950',
                                        desc: 'ITSL – used to mark a record for the TRIS database' },
                                      { tag: '954', desc: 'Marcive authority load marker' },
                                      { tag: '955', desc: 'C&MS use' },
                                      { tag: '956',
                                        desc: 'Load source/cataloger initials/date. See details below.' },
                                      { tag: '957', desc: 'OCLC load marker' },
                                      { tag: '958',
                                        desc: 'Marker for titles which have too many items to fit on one bib record, for which multiple bib records have been created' },
                                      { tag: '959',
                                        desc: 'Saved 856 fields when an SFX 856 is added to the record' },
                                      { tag: '990', desc: 'ANAL note.' },
                                      { tag: '993',
                                        desc: 'Marker used for identifying category/characteristics of this bib record for inclusion or exclusion in various LSO Create Lists queries.  Examples of possible use would be “Unlinked analytic” or “Government publication”.  Will be in the form:  $a<yyyymmdd>$b<category>' },
                                      { tag: '994', desc: 'OCLC data (added automatically)' },
                                      { tag: '998', desc: 'AV track information' },
                                      { tag: '999',
                                        desc: 'Deletion marker – use specified here: Deletion: Bibliographic Record' }] }] }.freeze
      end
    end
  end
end
# rubocop:enable Layout/LineLength
