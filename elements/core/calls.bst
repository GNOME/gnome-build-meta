kind: meson

sources:
- kind: git_repo
  url: gnome:calls.git
  track: main
  ref: v48.0-5-g523ec151d13df47757f30426a3eed67aba306505
- kind: git_module
  url: gnome_gitlab:World/Phosh/libcall-ui.git
  path: subprojects/libcall-ui
  ref: f66056ace818ff19b507335634dd67138a92c77f

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/ModemManager.bst
- core-deps/callaudiod.bst
- core-deps/evolution-data-server.bst
- core-deps/feedbackd.bst
- core-deps/folks.bst
- core-deps/gom.bst
- core-deps/libpeas.bst
- core-deps/sofia-sip.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
