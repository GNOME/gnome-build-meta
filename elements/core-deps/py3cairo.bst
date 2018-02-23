kind: distutils
sources:
- kind: tar
  url: github_tar:pygobject/pycairo/releases/download/v1.16.1/pycairo-1.16.1.tar.gz
  ref: 47a14a6a2f8dadb649229f099ac712a5f3d0a22e14877165a203d8a0de09ad63
depends:
- base.bst
variables:
  python: python3
config:
  (?):
    - base == "freedesktop1.8":
        install-commands:
          (>):
            # There's no way to get the setup.py to install this in the right place.
            - mkdir -p %{install-root}/usr/%{lib}/
            - mv %{install-root}/usr/lib/pkgconfig/ %{install-root}/usr/%{lib}/
