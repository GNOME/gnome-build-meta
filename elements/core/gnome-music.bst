kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-music.git
  track: master
  ref: 44.0-2-g764a67be104f44f7d6cb92b3b346e236391c5907
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
