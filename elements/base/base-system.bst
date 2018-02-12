kind: import
(?):
- arch == "x86_64":
    sources:
    - kind: ostree
      url: gnome7:repo
      gpg-key: keys/gnome-base.gpg
      track: debian/testing/amd64
      ref: 21ffaf453fded072dec48b1ac1e7b2087a10ed0ec9c59ca6decac52e84f719bc
- arch == "i386":
    sources:
    - kind: ostree
      url: gnome7:repo
      gpg-key: keys/gnome-base.gpg
      track: debian/testing/i386
      ref: 2f4990cd24c04461eb24645d4300bfdd75f205fbe4245487d99f060f855a116d
- arch == "aarch64":
    sources:
    - kind: ostree
      url: gnome7:repo
      gpg-key: keys/gnome-base.gpg
      track: debian/testing/arm64
      ref: 0c91ef17603c520e39fc933f6602c781e19d48bd57f8d8e0e0a4a232f093004e
- arch == "arm":
    sources:
    - kind: ostree
      url: gnome7:repo
      gpg-key: keys/gnome-base.gpg
      track: debian/testing/armhf
      ref: d40b6fdbd66c567043039dd6cbd1b01173718d02ad5a981f9fd1cbc218780ac2
