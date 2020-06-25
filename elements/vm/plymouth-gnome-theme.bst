kind: manual

sources:
- kind: local
  path: files/plymouth/plymouthd.defaults
- kind: remote
  url: https://people.gnome.org/~engagement/logos/GnomeLogoHorizontal.svg

runtime-depends:
- core-deps/plymouth.bst

build-depends:
- sdk/librsvg.bst

config:
  build-commands:
  - sed -i "s/black/white/g" GnomeLogoHorizontal.svg
  - rsvg-convert GnomeLogoHorizontal.svg -h 40 -f png -b black -o gnome-boot-logo.png

  install-commands:
  - install -Dm644 -t "%{install-root}%{datadir}/pixmaps" gnome-boot-logo.png
  - install -Dm644 plymouthd.defaults "%{install-root}%{datadir}/plymouth/plymouthd.defaults"
  - install -Dm644 gnome-boot-logo.png "%{install-root}%{datadir}/plymouth/themes/spinner/watermark.png"

public:
  bst:
    overlap-whitelist:
    - '%{datadir}/plymouth/plymouthd.defaults'
