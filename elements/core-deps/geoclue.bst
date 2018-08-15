depends:
- core-deps/ModemManager.bst
- core-deps/avahi.bst
- core-deps/glib.bst
- core-deps/json-glib.bst
- core-deps/libnotify.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 01397ff7e4acaf0503eacd51aae3d70df0ddc7553bb822f172e4f1409713f31d
  url: http://www.freedesktop.org/software/geoclue/releases/2.4/geoclue-2.4.11.tar.xz
