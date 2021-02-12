kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-music.git
  track: master
  submodules:
    subprojects/libgd:
      checkout: true
      url: gitlab_gnome_org:GNOME/libgd.git
    subprojects/gfm:
      checkout: true
      url: gitlab_gnome_org:mschraal/gfm.git
    subprojects/shared-modules:
      checkout: false
      url: github_com:flathub/shared-modules.git

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libdazzle.bst
- core-deps/libmediaart.bst
- core-deps/tracker-miners.bst
- core/gvfs-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/pygobject.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst
