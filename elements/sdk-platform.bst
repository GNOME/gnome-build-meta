kind: stack
depends:
- sdk/WebKitGTK+.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/at-spi2-atk.bst
- sdk/at-spi2-core.bst
- sdk/atk.bst
- sdk/brotli.bst
- sdk/cantarell-fonts.bst
- sdk/clutter-gst.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/cogl.bst
- sdk/dbus-glib.bst
- sdk/dconf.bst
- sdk/enchant-2.bst
- sdk/fribidi.bst
- sdk/gcab.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gnome-themes-extra.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gst-libav.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gstreamer.bst
- sdk/gtk+-3.bst
- sdk/gvfs.bst
- sdk/ibus.bst
- sdk/json-glib.bst
- sdk/libcanberra.bst
- sdk/libcroco.bst
- sdk/libnotify.bst
- sdk/libpsl.bst
- sdk/librsvg.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/mozjs60.bst
- sdk/os-release.bst
- sdk/pango.bst
- sdk/pycairo.bst
- sdk/pygobject.bst
- sdk/sdl2-image.bst
- sdk/sdl2-mixer.bst
- sdk/sdl2-net.bst
- sdk/sdl2-ttf.bst
- sdk/sdl2.bst
- sdk/vte.bst
- sdk/woff2.bst
- sdk/yelp-xsl.bst
- sdk/yelp.bst
- sdk/zenity.bst
# we can't depend on desktop-platform.bst from freedesktop-sdk directly as that would
# bring elements we want to build ourselves, and that can cause conflicts.
# This should be kept in sync with desktop-platform.bst from freedesktop-sdk whenever we
# update our reference to add any new elements.

# Currently, the elements we want to build ourselves, and not use from freedesktop-sdk are:
# appstream-glib, at-spi2-*, atk, gcab, gdk-pixbuf, geoclue2, glib-networking,
# gobject-introspection, gstreamer-*, gtk3, ibus, json-glib, libcroco, librsvg,
# libsoup, os-release, pango, sdl2* and zenity.

# Due to being relatively deep in the stack, glib needs special treatment.

- filename: base-platform.bst
  junction: freedesktop-sdk.bst
- filename: desktop/alsa-lib.bst
  junction: freedesktop-sdk.bst
- filename: desktop/alsa-plugins.bst
  junction: freedesktop-sdk.bst
- filename: desktop/aspell.bst
  junction: freedesktop-sdk.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: desktop/cups.bst
  junction: freedesktop-sdk.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: desktop/dconf.bst
  junction: freedesktop-sdk.bst
- filename: desktop/dejavu-fonts.bst
  junction: freedesktop-sdk.bst
- filename: desktop/dictionaries.bst
  junction: freedesktop-sdk.bst
- filename: desktop/emoji-one-font.bst
  junction: freedesktop-sdk.bst
- filename: desktop/ffmpeg.bst
  junction: freedesktop-sdk.bst
- filename: desktop/flatpak-xdg-utils.bst
  junction: freedesktop-sdk.bst
- filename: desktop/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: desktop/freetype.bst
  junction: freedesktop-sdk.bst
- filename: desktop/gnu-free-fonts.bst
  junction: freedesktop-sdk.bst
- filename: desktop/google-crosextra-caladea.bst
  junction: freedesktop-sdk.bst
- filename: desktop/google-crosextra-carlito.bst
  junction: freedesktop-sdk.bst
- filename: desktop/graphite2.bst
  junction: freedesktop-sdk.bst
- filename: desktop/harfbuzz.bst
  junction: freedesktop-sdk.bst
- filename: desktop/hicolor-icon-theme.bst
  junction: freedesktop-sdk.bst
- filename: desktop/hunspell.bst
  junction: freedesktop-sdk.bst
- filename: desktop/hyphen.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libdatrie.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libdrm.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libepoxy.bst
  junction: freedesktop-sdk.bst
- filename: desktop/liberation-fonts.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libglvnd.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libproxy.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libthai.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libva-vdpau-driver.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libva.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libvdpau.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libxkbcommon.bst
  junction: freedesktop-sdk.bst
- filename: desktop/llvm6.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mesa.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mpg123.bst
  junction: freedesktop-sdk.bst
- filename: desktop/multiarch-links.bst
  junction: freedesktop-sdk.bst
- filename: desktop/mythes.bst
  junction: freedesktop-sdk.bst
- filename: desktop/openal.bst
  junction: freedesktop-sdk.bst
- filename: desktop/opencl.bst
  junction: freedesktop-sdk.bst
- filename: desktop/orc.bst
  junction: freedesktop-sdk.bst
- filename: desktop/pixman.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: desktop/shared-mime-info.bst
  junction: freedesktop-sdk.bst
- filename: desktop/sound-theme-freedesktop.bst
  junction: freedesktop-sdk.bst
- filename: desktop/vulkan.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xcb-util-cursor.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xcb-util-image.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xcb-util-keysyms.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xcb-util-renderutil.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xcb-util-wm.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xcb-util.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xdg-user-dirs.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-app-xkbcomp.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-data-xkeyboard-config.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-ice.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-pciaccess.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-sm.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xau.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xcb.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xcomposite.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xcursor.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xdamage.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xdmcp.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xext.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xfixes.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xft.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xi.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xinerama.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xkbfile.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xpm.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xrandr.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xrender.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xscrnsaver.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xshmfence.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xt.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xtrans.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xv.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xxf86vm.bst
  junction: freedesktop-sdk.bst
