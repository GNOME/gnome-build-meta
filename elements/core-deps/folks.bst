kind: meson
sources:
- kind: tar
  url: gnome_downloads:folks/0.13/folks-0.13.1.tar.xz
  ref: 3df1c663b82fe211aead2b31cae1fc41d124e85436375762f6745c45ba46aa5d
depends:
- core-deps/evolution-data-server.bst
- sdk/gobject-introspection.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Deds_backend=true -Dlibsocialweb_backend=false -Dtelepathy_backend=false
