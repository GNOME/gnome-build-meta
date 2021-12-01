kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gupnp-igd.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
