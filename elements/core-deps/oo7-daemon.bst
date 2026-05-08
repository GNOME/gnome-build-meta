kind: meson

(@): elements/core-deps/oo7.inc

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  command-subdir: server

config:
  install-commands:
    # Not to need user preset for this we just for enable it.
    # Also in the future, this should be dbus activated instead.
    (>):
    - |
      install -Dm755 -d '%{install-root}%{indep-libdir}/systemd/user/gnome-session.target.wants'
      ln -s ../oo7-daemon.service '%{install-root}%{indep-libdir}/systemd/user/gnome-session.target.wants/'
