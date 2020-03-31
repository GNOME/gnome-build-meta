kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-bluetooth.git
  track: master
  submodules:
    subprojects/libhandy:
      url: purism:Librem5/libhandy.git
      checkout: true
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libcanberra.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
