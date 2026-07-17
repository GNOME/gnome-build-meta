kind: meson

sources:
- kind: git_repo
  url: gnome:decibels.git
  track: main
  ref: 49.6.1-12-g70a58075936cfc10e548fafd8b7db26b42e3882b
- kind: git_module
  url: gnome_gitlab:BrainBlasted/gi-typescript-definitions.git
  path: gi-types
  ref: dbbaa0527556cd3ce5434c4a5072cd99348eff7a

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/typescript.bst
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
