kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/47/gsettings-desktop-schemas-47.beta.tar.xz
  ref: 27c3e7fbf040b723bf2098c2950d4bafba6a28bc784d2fd04b28cc706ba27136
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
