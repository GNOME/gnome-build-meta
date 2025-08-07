kind: autotools

sources:
- kind: tar
  url: brltty:brltty-6.8.tar.xz
  ref: 9f3c6dc2b65059d20f60836e8f9ebc58d8e518d6a8f8fee33e1d1e50ab43c3bc

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
