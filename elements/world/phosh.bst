kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:World/Phosh/phosh.git
  track: main
  submodules:
    subprojects/gvc:
      checkout: true
      url: gitlab_gnome_org:GNOME/libgnome-volume-control.git
    subprojects/libcall-ui:
      checkout: true
      url: gitlab_gnome_org:World/Phosh/libcall-ui.git

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/callaudiod.bst
- core-deps/feedbackd.bst
- core-deps/libinput.bst
- core-deps/NetworkManager.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- core/phoc.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/wayland.bst
