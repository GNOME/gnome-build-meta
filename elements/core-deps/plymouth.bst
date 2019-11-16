kind: autotools

depends:
- sdk/pango.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/systemd.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- sdk/gtk-doc.bst
- sdk/librsvg.bst

variables:
  conf-local: >-
    --with-logo="%{datadir}/pixmaps/gnome-boot-logo.png"

config:
  build-commands:
    (>):
    - sed -i "s/black/white/g" GnomeLogoHorizontal.svg
    - rsvg-convert GnomeLogoHorizontal.svg -h 40 -f png -b black -o gnome-boot-logo.png

  install-commands:
    (<):
    - |
      install -d "%{install-root}/run"
      install -d "%{install-root}/var"
      ln -s ../run "%{install-root}/var/run"

    (>):
    - |
      install -Dm644 -t "%{install-root}%{datadir}/pixmaps" gnome-boot-logo.png
    - |
      install -Dm644 -t "%{install-root}%{datadir}/plymouth" plymouthd.defaults
    - |
      install -Dm644 gnome-boot-logo.png "%{install-root}%{datadir}/plymouth/themes/spinner/watermark.png"

sources:
- kind: git_tag
  url: freedesktop:plymouth/plymouth.git
  track: master
  track-tags: false
- kind: patch
  path: files/plymouth/no-intltool.patch
- kind: patch
  path: files/plymouth/logo-parameter.patch
- kind: local
  path: files/plymouth/plymouthd.defaults
- kind: remote
  url: https://people.gnome.org/~engagement/logos/GnomeLogoHorizontal.svg
