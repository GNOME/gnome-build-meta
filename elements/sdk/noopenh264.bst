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
- kind: git_repo
  url: gitlab:freedesktop-sdk/noopenh264.git
  track: v*
  ref: v2.4.1-2-0-g96d0e58260580ee6fcab4331bfc792309e3c6128
