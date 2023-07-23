kind: meson

sources:
- kind: tar
  url: freedesktop_files:libinput/libei/-/archive/1.0.0/libei-1.0.0.tar.gz
  ref: 1fc8dbc2c39c6142da10136a00691e9352fee1ff9bccff978fa68779e73c2a34

build-depends:
- freedesktop-sdk.bst:components/python3-attrs.bst
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >
    -Dtests=disabled
