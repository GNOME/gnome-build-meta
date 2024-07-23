kind: meson

sources:
- kind: git_repo
  url: gnome:gsettings-desktop-schemas.git
  track: master
  ref: 47.alpha-12-ga270d1ae85abdb23aa5100117a8f33fd551c5528

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
