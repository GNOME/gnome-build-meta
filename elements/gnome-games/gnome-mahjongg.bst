kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-mahjongg.git
  track: master

  ref: 3.40.0-40-g4c3d434965eae7aebd506466c19b085aa275850f
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dcompile-schemas=disabled
    -Dupdate-icon-cache=disabled
