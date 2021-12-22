kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-documents.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: true
      url: gnome:libgd.git

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- world/gnome-online-miners.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/libgdata.bst
- core/evince.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.0.bst
- world/libgepub.bst
- world/libzapojit.bst
- world/tracker-2.bst
- world/tracker-miners-2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
