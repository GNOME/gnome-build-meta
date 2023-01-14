kind: autotools

sources:
- kind: git_tag
  url: gnome:gspell.git
  track: master
  ref: 1.12.0-6-g19f8bb35460003062a1fb36e0194c6c8ac5ea778

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
