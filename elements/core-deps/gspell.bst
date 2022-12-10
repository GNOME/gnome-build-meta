kind: autotools

sources:
- kind: git_tag
  url: gnome:gspell.git
  track: master
  ref: 1.12.0-5-g064f7e4a6bc7259318d5aebc60c70ae4e6b35521

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/enchant-2.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
