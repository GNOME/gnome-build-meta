kind: autotools

sources:
- kind: git_repo
  url: github:brltty/brltty.git
  track: 'BRLTTY-*'
  ref: BRLTTY-6.9.1-0-g4fddd533bf6023820266879203839db511808d63

build-depends:
- core-deps/tcl.bst
- freedesktop-sdk.bst:components/cython.bst
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst

depends:
- freedesktop-sdk.bst:components/bluez-libs.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  make-install-args: >-
    INSTALL_ROOT=%{install-root}
    install
    install-documents
    install-extras
  conf-local: >-
    --with-api-socket-path=/run/BrlAPI
    --with-tables-directory=%{datadir}/brltty
    --disable-stripping
    --without-curses
    --disable-java-bindings
    --disable-ocaml-bindings
    --disable-tcl-bindings
    --disable-emacs-bindings
    --disable-lisp-bindings
    --disable-lua-bindings
    --disable-speech-support
    --disable-x
    --without-pcm-package
    --without-midi-package
    --without-fm-package
