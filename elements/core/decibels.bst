kind: meson

sources:
- kind: git_repo
  url: gnome:decibels.git
  track: main
  ref: 49.0-5-g648195a9ac4455f17bb0668982de8996b5382a31
- kind: git_module
  url: gnome_gitlab:BrainBlasted/gi-typescript-definitions.git
  path: gi-types
  ref: dbbaa0527556cd3ce5434c4a5072cd99348eff7a

build-depends:
- core-deps/typescript.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/blueprint-compiler.bst

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
