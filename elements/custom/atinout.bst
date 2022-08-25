description: atinout is a low level application for communicating with modems over
  serial.
kind: make
sources:
- kind: tar
  url: https://sourceforge.net/projects/atinout/files/v0.9.1/atinout-0.9.1.tar.gz/download
- kind: patch
  path: files/atinout/0001-make-gcc-happy-by-adding-fallthrough-comment.patch
- kind: patch
  path: files/atinout/0002-do-not-rely-on-CR-in-modem-output.patch
build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
