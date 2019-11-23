kind: autotools
sources:
- kind: tar
  url: gnome_downloads:startup-notification/0.12/startup-notification-0.12.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
