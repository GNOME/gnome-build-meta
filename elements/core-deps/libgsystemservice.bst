kind: meson

sources:
- kind: git_tag
  url: gnome_gitlab:pwithnall/libgsystemservice.git
  track: 0.2.0
  ref: 0.2.0-0-gbb53a665a769dadb85d2e1197572ee7fe919f56d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gtk-doc.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
