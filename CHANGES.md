# 0.3.2 (2025-07-23)

- Update to support Ruby 3.3+.
- Update Rubocop & style changes.

# 0.3.1 (2022-01-26)

- Fixes issue where `MARC::XMLReader#new` and `MARC::XMLReader#read` would
  accept keyword arguments under Ruby 2.7.x, but not under Ruby 3.x; both
  methods should now accept either keyword arguments or an options hash,
  under either Ruby version.

# 0.3.0 (2022-01-25)

Fixes:

- Methods in `MARCExtensions::RecordExtensions` and `MARCExtensions::FieldMapExtensions`
  now correctly return `Enumerator::Lazy` as documented.
- Fix issue where `freeze:` option to `MARC::XMLReader#new` or `MARC::XMLReader#read`
  was accepted, but not implemented
- Test `MARC::XMLReader` extensions with both `MARC::REXMLReader` and `MARC::NokogiriReader`
  - **Note:** the extensions _should_ work with `JREXMLReader`, `JRubyStaxReader`, and
    `LibXMLReader`, but these have not been tested.

Possible breaking changes:

- The unused constant `MARCExtensions::FieldMapExtensions::VALID_TAGS` has been removed.
- `MARC::XMLReader#read` now takes an `options` hash instead of a `freeze:` keyword
  parameter for better compatibility with `MARC::XMLReader#new`, esp. in Ruby 2.x.

# 0.2.1 (2021-10-16)

- Add [MARC::Spec](https://github.com/BerkeleyLibrary/marc-spec)
  support to `berkeley_library/marc_extensions`

# 0.2.0 (2021-08-19)

- Rename to `BerkeleyLibrary::Marc` in prep for move to GitHub

# 0.1.1 2021-05-11

- Change Ruby version requirement from `~> 2.7` to `>= 2.7` to
  support Ruby 3.0

# 0.1.0 2021-05-10

- Initial release
