kind: filter
build-depends:
- core-deps/glade.bst
runtime-depends:
- sdk/WebKitGTK.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
config:
  include:
  - glade-libs
  - devel
  include-orphans: False
