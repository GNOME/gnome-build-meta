kind: meson

sources:
- kind: git_repo
  url: gnome:console.git
  track: main
  ref: 51.rc-7-g6e64bb946b431673d6b324b432c39bb5c09a8ead

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libgtop.bst
- core-deps/vte.bst
- core/nautilus.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
