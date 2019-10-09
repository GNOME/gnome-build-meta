kind: autotools
sources:
- kind: tar
  url: people_freedesktop_org:~svu/libxklavier-5.4.tar.bz2
build-depends:
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/xorg-app-xkbcomp.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xi.bst
- freedesktop-sdk.bst:bootstrap-import.bst
