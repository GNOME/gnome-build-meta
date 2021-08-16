kind: autotools

sources:
- kind: tar
  url: people_freedesktop_org:~mccann/dist/sound-theme-freedesktop-0.8.tar.bz2

  ref: cb518b20eef05ec2e82dda1fa89a292c1760dc023aba91b8aa69bafac85e8a14
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- sdk/glib.bst
- core-deps/intltool.bst
