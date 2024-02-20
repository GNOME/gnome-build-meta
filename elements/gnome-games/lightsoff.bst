kind: meson
sources:
- kind: git_repo
  url: gnome:lightsoff.git
  track: master

  ref: 46.alpha-9-g1ae9782e3d589344b3fcc0c5c78168f3928d03fd
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
