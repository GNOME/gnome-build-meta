kind: autotools

depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
sources:
- kind: tar
  url: https://github.com/sass/libsass/archive/3.5.0.tar.gz
  ref: 9d499927329c7f8816ab67c571fb7cc0ea21d38c6f47c7c58c98de99ef7645eb
