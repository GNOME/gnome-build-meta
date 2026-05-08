kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-user-dirs-gtk.git
  track: master
  ref: 0.16-7-g2517b1681578168a89850731de5620cbc9721d76

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/xdg-user-dirs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
