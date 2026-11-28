kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-music.git
  track: main
  ref: 51.0-48-g23db255a1e55e1ad0e8e223462944bf3b041de34

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- core-deps/grilo-plugins.bst
- core-deps/grilo.bst
- core-deps/gst-python.bst
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
