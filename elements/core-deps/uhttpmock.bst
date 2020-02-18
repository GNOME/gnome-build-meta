kind: autotools
sources:
- kind: tar
  url: https://tecnocode.co.uk/downloads/uhttpmock/uhttpmock-0.5.1.tar.xz
  ref: a6a34a011db142a98473b492039c84468d575f416689484f1f82a84927f17798
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
