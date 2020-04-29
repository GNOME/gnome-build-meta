kind: filter
build-depends:
- core-deps/glade.bst
runtime-depends:
- core-deps/glade-libs.bst
- sdk/adwaita-icon-theme.bst
- sdk/cantarell-fonts.bst
config:
  exclude:
  - glade-libs
  - devel
  include-orphans: True
