kind: distutils
sources:
- kind: tar
  url: github_tar:mesonbuild/meson/releases/download/0.44.0/meson-0.44.0.tar.gz
  ref: 50f9b12b77272ef6ab064d26b7e06667f07fa9f931e6a20942bba2216ba4281b
depends:
- base.bst
variables:
  python: python3

  # FIXME: this is to work around an issue with directories that overlap files
  # It effectively switches off the element for builds against Freedesktop SDK
  (?):
    - base == 'freedesktop1.8':
        python-install: 'true'
