kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-music.git
  track: master
  ref: 50.0-50-ga59e8b7439fd0d0d8bb301f07255c8b33a72006f

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/libmediaart.bst
- core-deps/localsearch.bst
- core/gvfs-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libglycin-gtk4.bst
- sdk/pygobject.bst
- sdk/tinysparql.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
