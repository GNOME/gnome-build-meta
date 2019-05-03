kind: autotools
sources:
- kind: tar
  url: people_freedesktop_org:~svu/libxklavier-5.4.tar.bz2
depends:
- sdk/gobject-introspection.bst
- filename: components/libxml2.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-app-xkbcomp.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xi.bst
  junction: freedesktop-sdk.bst
- filename: components/iso-codes.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
