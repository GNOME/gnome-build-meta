kind: distutils
sources:
- kind: tar
  url: github_tar:pygobject/pycairo/releases/download/v1.16.3/pycairo-1.16.3.tar.gz
depends:
- base.bst
variables:
  python: python3
config:
  install-commands:
    (>):
      # There's no way to get the setup.py to install this in the right place.
      - mkdir -p %{install-root}/usr/%{lib}/
      - mv %{install-root}/usr/lib/pkgconfig/ %{install-root}/usr/%{lib}/
