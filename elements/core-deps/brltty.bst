kind: autotools

sources:
- kind: git_repo
  url: github:brltty/brltty.git
  track: 'BRLTTY-*'
  ref: BRLTTY-6.8-0-g0c47ee1654cac541f2fc3b447987cf00dadd0c16

build-depends:
- core-deps/tcl.bst
- freedesktop-sdk.bst:components/cython.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
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
