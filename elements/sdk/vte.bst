kind: meson
sources:
- kind: tar
  url: gnome_downloads:vte/0.58/vte-0.58.3.tar.xz
  ref: 22dcb54ac2ad1a56ab0a745e16ccfeb383f0b5860b5bfa1784561216f98d4975
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/gnutls.bst
  junction: freedesktop-sdk.bst
- filename: components/pcre2.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
(?):
- arch == "x86_64":
    environment:
      CXXFLAGS: '%{flags_x86_64} -fno-exceptions'
- arch == "i686":
    environment:
      CXXFLAGS: '%{flags_i686} -fno-exceptions'
- arch == "arm":
    environment:
      CXXFLAGS: '%{flags_arm} -fno-exceptions'
- arch == "aarch64":
    environment:
      CXXFLAGS: '%{flags_aarch64} -fno-exceptions'
