kind: meson
sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/libmbim.git
  track: '*.*'
  ref: 1.34.0-0-g2bca5d22137883f348cb117597746483637491db
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/help2man.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
