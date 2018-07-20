kind: autotools
sources:
- kind: tar
  url: http://tecnocode.co.uk/downloads/uhttpmock/uhttpmock-0.5.1.tar.xz
  ref: a6a34a011db142a98473b492039c84468d575f416689484f1f82a84927f17798
depends:
- core-deps/glib.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
