kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-music.git
  track: master
  ref: 42.1-82-g621bc4f25d99c4b1eeb1f66578017b476883e73c
  submodules:
    subprojects/gfm:
      checkout: true
      url: gnome_gitlab:mschraal/gfm.git
    subprojects/shared-modules:
      checkout: false
      url: github:flathub/shared-modules.git

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libmediaart.bst
- core-deps/tracker-miners.bst
- core/gvfs-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/pygobject.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst
