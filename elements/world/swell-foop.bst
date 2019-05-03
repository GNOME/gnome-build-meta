kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/swell-foop.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
