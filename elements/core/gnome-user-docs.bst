kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-user-docs/3.30/gnome-user-docs-3.30.2.tar.xz
  ref: 6fba5316625a1ea4017b53c342dd79fa0b2f0481bf6a3e50501de774dacefadd
depends:
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
