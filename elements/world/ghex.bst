kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/ghex.git
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
