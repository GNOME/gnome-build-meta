kind: manual

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/python3.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    site="$(python3 -c 'import site; print(site.getsitepackages()[0])')"
    install -Dm755 mkbootimg.py '%{install-root}%{bindir}/mkbootimg'
    install -Dm755 -t "%{install-root}${site}/gki" gki/generate_gki_certificate.py

sources:
- kind: git_repo
  url: android:platform/system/tools/mkbootimg
  track: android-platform-*
  ref: android-platform-15.0.0_r10-0-gc40a04c0620c5a0dab87497857805b8d9b8a827a
