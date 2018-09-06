kind: autotools
sources:
- kind: tar
  url: people_freedesktop_org:~svu/libxklavier-5.4.tar.bz2
  ref: 17a34194df5cbcd3b7bfd0f561d95d1f723aa1c87fca56bc2c209514460a9320
depends:
- sdk/gobject-introspection.bst
- filename: desktop/xorg-app-xkbcomp.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xi.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
