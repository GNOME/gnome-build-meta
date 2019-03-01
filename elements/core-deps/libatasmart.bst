kind: autotools
sources:
- kind: tar
  url: http://0pointer.de/public/libatasmart-0.19.tar.xz
  ref: 61f0ea345f63d28ab2ff0dc352c22271661b66bf09642db3a4049ac9dbdb0f8d
depends:
- filename: desktop/systemd.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
