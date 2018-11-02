kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/rygel
  track: master
depends:
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libgee.bst
- core-deps/libmediaart.bst
- core-deps/tracker.bst
- sdk/vala.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
