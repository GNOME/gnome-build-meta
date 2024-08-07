kind: meson

sources:
- kind: git_repo
  url: gnome:Incubator/decibels.git
  track: main
  ref: 46.0-122-g546ed8bb44c075130ce3f035791d8c91f8627d6c
- kind: git_module
  url: gnome_gitlab:BrainBlasted/gi-typescript-definitions.git
  path: gi-types
  ref: dbbaa0527556cd3ce5434c4a5072cd99348eff7a

build-depends:
- incubator-deps/blueprint-compiler.bst
- incubator-deps/typescript.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
