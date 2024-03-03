kind: meson

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

variables:
  (@):
  - elements/flatpak/gnome-openh264-version.yml
  extlibdir: "%{libdir}/openh264/extra"
  meson-local: "--libdir=%{extlibdir}"

config:
  configure-commands:
    (<):
    - grep "matching_version = '%{gnome-openh264-version}'" %{build-root}/meson.build

  install-commands:
    (>):
    - |
      mv "%{install-root}%{extlibdir}/pkgconfig/" "%{install-root}%{libdir}"

    - |
      ln -srL %{install-root}%{extlibdir}/libopenh264.so* %{install-root}%{libdir}

    - |
      rm %{install-root}%{extlibdir}/libopenh264.a

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{extlibdir}/libopenh264.so'
        - '%{libdir}/libopenh264.so'

sources:
- kind: tar
  url: gitlab:freedesktop-sdk/noopenh264/-/archive/v2.4.1-2/noopenh264-v2.4.1-2.tar.bz2
  ref: 416e5c4692a31b3461de7a80ab28f34e6fd4e21faf00f993bd512f939a39e729
