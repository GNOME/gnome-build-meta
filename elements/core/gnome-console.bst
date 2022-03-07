kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/42/gnome-console-42.beta.tar.xz
  ref: 2eafec8720210dcc01e47aa98a1bc6c76fb1c155365dac7bfcd7ab170477e834
build-depends:
- core/nautilus.bst
- sdk-deps/sassc.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adobe-source-code-pro-fonts.bst
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libgtop.bst
- core-deps/vte.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
