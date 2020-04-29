kind: filter
build-depends:
- core-deps/glade-base.bst
runtime-depends:
- core-deps/glade-libs.bst
- sdk/adwaita-icon-theme.bst
config:
  exclude:
  - glade-libs
  - devel
  include-orphans: True
