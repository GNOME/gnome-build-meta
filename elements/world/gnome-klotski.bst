kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-klotski.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/appstream-glib.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- world/libgnome-games-support.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
