kind: meson

sources:
- kind: git_repo
  url: gnome:decibels.git
  track: main
  ref: 48.0-13-ge2c7542c7c5e822a73ff080b3288f91cf8984dab
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
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-bad.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
