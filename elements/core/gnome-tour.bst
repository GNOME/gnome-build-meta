kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-tour/40/gnome-tour-40.beta.tar.xz
  ref: 6a678b4f47ef99f453f2cdc3e1fdbf381869483fd09a4bfabfebd62ce2e4467f
build-depends:
- freedesktop-sdk.bst:extensions/rust/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
