kind: distutils
sources:
- kind: tar
  url: github_tar:pygobject/pycairo/releases/download/v1.15.1/pycairo-1.15.1.tar.gz
  ref: 987d392270247343595d37591f80639ed902fce7e30bd2f944cb1b0a9093553d
depends:
- base.bst
variables:
  python: python3
config:
  install-commands:
    (>):
    - sed -i -e 's|/usr|%{prefix}|g' %{install-root}%{prefix}/lib/pkgconfig/py3cairo.pc
