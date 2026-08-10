kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/51/tecla-51.beta.tar.xz
  ref: ec97bf9730e2307b2a3936f16ce90368487d23fdc5e3083cb07268cc45813fb8
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
