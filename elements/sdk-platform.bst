kind: stack
depends:
- sdk/WebKitGTK.bst
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
- sdk/dconf.bst
- sdk/enchant-2.bst
- sdk/fcitx.bst
- sdk/gcab.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/graphene.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gst-libav.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gstreamer-vaapi.bst
- sdk/gtk.bst
- sdk/gtk+-3.bst
- sdk/gvfs.bst
- sdk/ibus.bst
- sdk/json-glib.bst
- sdk/krb5.bst
- sdk/libcanberra.bst
- sdk/libcroco.bst
- sdk/libgee.bst
- sdk/libnotify.bst
- sdk/librsvg.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/libwpe.bst
- sdk/mozjs60.bst
- sdk/openjpeg.bst
- sdk/os-release.bst
- sdk/pango.bst
- sdk/pipewire.bst
- sdk/pycairo.bst
- sdk/pygobject.bst
- sdk/vte.bst
- sdk/woff2.bst
- sdk/wpebackend-fdo.bst
- sdk/yelp-xsl.bst
- sdk/yelp.bst
- sdk/zenity.bst
# we can't depend on desktop-platform.bst from freedesktop-sdk directly as that would
# bring elements we want to build ourselves, and that can cause conflicts.
# This should be kept in sync with desktop-platform.bst from freedesktop-sdk whenever we
# update our reference to add any new elements.

# Currently, the elements we want to build ourselves, and not use from freedesktop-sdk are:
# appstream-glib, at-spi2-*, atk, dconf, fcitx, gcab, gdk-pixbuf, geoclue2, glib-networking,
# gobject-introspection, gstreamer-*, gtk3, ibus, json-glib, libcroco, librsvg,
# libsoup, os-release, pango pipewire and zenity.

# Due to being relatively deep in the stack, glib needs special treatment.

- filename: mtab.bst
  junction: freedesktop-sdk.bst
- filename: components/ca-certificates.bst
  junction: freedesktop-sdk.bst
- filename: components/cracklib.bst
  junction: freedesktop-sdk.bst
- filename: components/curl.bst
  junction: freedesktop-sdk.bst
- filename: components/cyrus-sasl.bst
  junction: freedesktop-sdk.bst
- filename: components/dummy-gbm.bst
  junction: freedesktop-sdk.bst
- filename: components/e2fsprogs.bst
  junction: freedesktop-sdk.bst
- filename: components/expat.bst
  junction: freedesktop-sdk.bst
- filename: components/flex.bst
  junction: freedesktop-sdk.bst
- filename: components/frei0r.bst
  junction: freedesktop-sdk.bst
- filename: components/gdbm.bst
  junction: freedesktop-sdk.bst
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
- filename: components/giflib.bst
  junction: freedesktop-sdk.bst
- filename: components/glib.bst
  junction: freedesktop-sdk.bst
- filename: components/gmp.bst
  junction: freedesktop-sdk.bst
- filename: components/gnupg.bst
  junction: freedesktop-sdk.bst
- filename: components/gnutls.bst
  junction: freedesktop-sdk.bst
- filename: components/gzip.bst
  junction: freedesktop-sdk.bst
- filename: components/gpgme.bst
  junction: freedesktop-sdk.bst
- filename: components/iana-config.bst
  junction: freedesktop-sdk.bst
- filename: components/icu.bst
  junction: freedesktop-sdk.bst
- filename: components/iso-codes.bst
  junction: freedesktop-sdk.bst
- filename: components/jpeg.bst
  junction: freedesktop-sdk.bst
- filename: components/ladspa-sdk.bst
  junction: freedesktop-sdk.bst
- filename: components/lcms.bst
  junction: freedesktop-sdk.bst
- filename: components/less.bst
  junction: freedesktop-sdk.bst
- filename: components/libarchive.bst
  junction: freedesktop-sdk.bst
- filename: components/libassuan.bst
  junction: freedesktop-sdk.bst
- filename: components/libcap.bst
  junction: freedesktop-sdk.bst
- filename: components/libexif.bst
  junction: freedesktop-sdk.bst
- filename: components/libffi.bst
  junction: freedesktop-sdk.bst
- filename: components/libflac.bst
  junction: freedesktop-sdk.bst
- filename: components/libgcrypt.bst
  junction: freedesktop-sdk.bst
- filename: components/libgpg-error.bst
  junction: freedesktop-sdk.bst
- filename: components/libksba.bst
  junction: freedesktop-sdk.bst
- filename: components/libidn2.bst
  junction: freedesktop-sdk.bst
- filename: components/libogg.bst
  junction: freedesktop-sdk.bst
- filename: components/libnice.bst
  junction: freedesktop-sdk.bst
- filename: components/libpng.bst
  junction: freedesktop-sdk.bst
- filename: components/libsamplerate.bst
  junction: freedesktop-sdk.bst
- filename: components/libselinux.bst
  junction: freedesktop-sdk.bst
- filename: components/libtasn1.bst
  junction: freedesktop-sdk.bst
- filename: components/libtheora.bst
  junction: freedesktop-sdk.bst
- filename: components/libtiff.bst
  junction: freedesktop-sdk.bst
- filename: components/libtool.bst
  junction: freedesktop-sdk.bst
- filename: components/libunistring.bst
  junction: freedesktop-sdk.bst
- filename: components/libvorbis.bst
  junction: freedesktop-sdk.bst
- filename: components/libvpx.bst
  junction: freedesktop-sdk.bst
- filename: components/libwebp.bst
  junction: freedesktop-sdk.bst
- filename: components/libxml2.bst
  junction: freedesktop-sdk.bst
- filename: components/libxslt.bst
  junction: freedesktop-sdk.bst
- filename: components/locales.bst
  junction: freedesktop-sdk.bst
- filename: components/lzip.bst
  junction: freedesktop-sdk.bst
- filename: components/nano.bst
  junction: freedesktop-sdk.bst
- filename: components/nettle.bst
  junction: freedesktop-sdk.bst
- filename: components/npth.bst
  junction: freedesktop-sdk.bst
- filename: components/nspr.bst
  junction: freedesktop-sdk.bst
- filename: components/nss.bst
  junction: freedesktop-sdk.bst
- filename: components/nsswitch-config.bst
  junction: freedesktop-sdk.bst
- filename: components/opus.bst
  junction: freedesktop-sdk.bst
- filename: components/osmesa.bst
  junction: freedesktop-sdk.bst
- filename: components/p11-kit.bst
  junction: freedesktop-sdk.bst
- filename: components/pcre2.bst
  junction: freedesktop-sdk.bst
- filename: components/pcre.bst
  junction: freedesktop-sdk.bst
- filename: components/python3.bst
  junction: freedesktop-sdk.bst
- filename: components/python3-pip.bst
  junction: freedesktop-sdk.bst
- filename: components/python3-setuptools.bst
  junction: freedesktop-sdk.bst
- filename: components/python3-six.bst
  junction: freedesktop-sdk.bst
- filename: components/python3-usercustomize.bst
  junction: freedesktop-sdk.bst
- filename: components/python3-sitecustomize.bst
  junction: freedesktop-sdk.bst
- filename: components/tar.bst
  junction: freedesktop-sdk.bst
- filename: components/sndfile.bst
  junction: freedesktop-sdk.bst
- filename: components/sqlite.bst
  junction: freedesktop-sdk.bst
- filename: components/speex.bst
  junction: freedesktop-sdk.bst
- filename: components/speexdsp.bst
  junction: freedesktop-sdk.bst
- filename: components/tzdata.bst
  junction: freedesktop-sdk.bst
- filename: components/unzip.bst
  junction: freedesktop-sdk.bst
- filename: components/util-linux.bst
  junction: freedesktop-sdk.bst
- filename: components/which.bst
  junction: freedesktop-sdk.bst
- filename: components/xz.bst
  junction: freedesktop-sdk.bst
- filename: components/zip.bst
  junction: freedesktop-sdk.bst
- filename: components/alsa-lib.bst
  junction: freedesktop-sdk.bst
- filename: components/alsa-plugins.bst
  junction: freedesktop-sdk.bst
- filename: components/aspell.bst
  junction: freedesktop-sdk.bst
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: components/cups.bst
  junction: freedesktop-sdk.bst
- filename: components/dbus.bst
  junction: freedesktop-sdk.bst
- filename: components/dejavu-fonts.bst
  junction: freedesktop-sdk.bst
- filename: components/dictionaries.bst
  junction: freedesktop-sdk.bst
- filename: components/emoji-one-font.bst
  junction: freedesktop-sdk.bst
- filename: components/ffmpeg.bst
  junction: freedesktop-sdk.bst
- filename: components/fftw.bst
  junction: freedesktop-sdk.bst
- filename: components/flatpak-xdg-utils.bst
  junction: freedesktop-sdk.bst
- filename: components/fontconfig.bst
  junction: freedesktop-sdk.bst
- filename: components/freetype.bst
  junction: freedesktop-sdk.bst
- filename: components/fribidi.bst
  junction: freedesktop-sdk.bst
- filename: components/gnu-free-fonts.bst
  junction: freedesktop-sdk.bst
- filename: components/google-crosextra-caladea.bst
  junction: freedesktop-sdk.bst
- filename: components/google-crosextra-carlito.bst
  junction: freedesktop-sdk.bst
- filename: components/graphite2.bst
  junction: freedesktop-sdk.bst
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/harfbuzz.bst
  junction: freedesktop-sdk.bst
- filename: components/hicolor-icon-theme.bst
  junction: freedesktop-sdk.bst
- filename: components/hunspell.bst
  junction: freedesktop-sdk.bst
- filename: components/hyphen.bst
  junction: freedesktop-sdk.bst
- filename: components/lame.bst
  junction: freedesktop-sdk.bst
- filename: components/libclc.bst
  junction: freedesktop-sdk.bst
- filename: components/libdatrie.bst
  junction: freedesktop-sdk.bst
- filename: components/libdrm.bst
  junction: freedesktop-sdk.bst
- filename: components/libepoxy.bst
  junction: freedesktop-sdk.bst
- filename: components/liberation-fonts.bst
  junction: freedesktop-sdk.bst
- filename: components/libglvnd.bst
  junction: freedesktop-sdk.bst
- filename: components/libproxy.bst
  junction: freedesktop-sdk.bst
- filename: components/libpsl.bst
  junction: freedesktop-sdk.bst
- filename: components/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: components/libsystemd.bst
  junction: freedesktop-sdk.bst
- filename: components/libthai.bst
  junction: freedesktop-sdk.bst
- filename: components/libva-vdpau-driver.bst
  junction: freedesktop-sdk.bst
- filename: components/libva.bst
  junction: freedesktop-sdk.bst
- filename: components/libvdpau.bst
  junction: freedesktop-sdk.bst
- filename: components/libxkbcommon.bst
  junction: freedesktop-sdk.bst
- filename: components/llvm8.bst
  junction: freedesktop-sdk.bst
- filename: components/mesa-headers.bst
  junction: freedesktop-sdk.bst
- filename: components/mpg123.bst
  junction: freedesktop-sdk.bst
- filename: components/mythes.bst
  junction: freedesktop-sdk.bst
- filename: components/openal.bst
  junction: freedesktop-sdk.bst
- filename: components/opencl.bst
  junction: freedesktop-sdk.bst
- filename: components/orc.bst
  junction: freedesktop-sdk.bst
- filename: components/pciutils.bst
  junction: freedesktop-sdk.bst
- filename: components/pixman.bst
  junction: freedesktop-sdk.bst
- filename: components/libpulse.bst
  junction: freedesktop-sdk.bst
- filename: components/sdl2-image.bst
  junction: freedesktop-sdk.bst
- filename: components/sdl2-mixer.bst
  junction: freedesktop-sdk.bst
- filename: components/sdl2-net.bst
  junction: freedesktop-sdk.bst
- filename: components/sdl2-ttf.bst
  junction: freedesktop-sdk.bst
- filename: components/sdl2.bst
  junction: freedesktop-sdk.bst
- filename: components/shared-mime-info.bst
  junction: freedesktop-sdk.bst
- filename: components/vulkan.bst
  junction: freedesktop-sdk.bst
- filename: components/wayland.bst
  junction: freedesktop-sdk.bst
- filename: components/webrtc-audio-processing.bst
  junction: freedesktop-sdk.bst
- filename: components/xcb-util-cursor.bst
  junction: freedesktop-sdk.bst
- filename: components/xcb-util-image.bst
  junction: freedesktop-sdk.bst
- filename: components/xcb-util-keysyms.bst
  junction: freedesktop-sdk.bst
- filename: components/xcb-util-renderutil.bst
  junction: freedesktop-sdk.bst
- filename: components/xcb-util-wm.bst
  junction: freedesktop-sdk.bst
- filename: components/xcb-util.bst
  junction: freedesktop-sdk.bst
- filename: components/xdg-user-dirs.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-app-xkbcomp.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-data-xkeyboard-config.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-ice.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-pciaccess.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-sm.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-x11.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xau.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xcb.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xcomposite.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xcursor.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xdamage.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xdmcp.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xext.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xfixes.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xft.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xi.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xinerama.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xkbfile.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xpm.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xrandr.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xrender.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xscrnsaver.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xshmfence.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xt.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xtrans.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xtst.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xv.bst
  junction: freedesktop-sdk.bst
- filename: components/xorg-lib-xxf86vm.bst
  junction: freedesktop-sdk.bst
