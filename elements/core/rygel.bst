kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/rygel.git
  track: master
depends:
- core-deps/gssdp.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libmediaart.bst
- core-deps/tracker.bst
- sdk/libgee.bst
- sdk/vala.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
