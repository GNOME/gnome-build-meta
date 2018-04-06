kind: manual
sources:
- kind: zip
  url: http://www.argyllcms.com/Argyll_V2.0.0_src.zip
depends:
- filename: core-deps/ftjam.bst
  type: build
- base.bst
config:
  build-commands:
  - jam -q -fJambase -j%{max-jobs}
  install-commands:
  - jam -q -fJambase -j%{max-jobs} DESTDIR=%{install-root} PREFIX=%{prefix} install
