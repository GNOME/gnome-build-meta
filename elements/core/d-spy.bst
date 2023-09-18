kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/1.8/d-spy-1.8.0.tar.xz
  ref: f89d795d0686d82da1dceb236148f7ce54d5ca78f0b98e0f1336b263a5afcea1
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
