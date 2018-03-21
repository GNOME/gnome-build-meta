kind: import

sources:
- kind: ostree
  url: ostree-gnome:repo
  gpg-key: keys/gnome-base.gpg

  # Conditional tracking branch
  #
  (?):
  - arch == "x86_64":
      track: debian/testing/amd64
  - arch == "i386":
      track: debian/testing/i386
  - arch == "aarch64":
      track: debian/testing/arm64
  - arch == "arm":
      track: debian/testing/armhf
