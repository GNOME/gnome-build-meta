kind: flatpak_image
depends:
- filename: sdk-platform-image.bst
  type: build
config:
  directory: "%{prefix}"
  exclude:
    - debug
    - docs
    - locale
  metadata:
    Runtime:
      name: org.gnome.Platform
      runtime: org.gnome.Platform/%{gcc_arch}/%{branch}
      sdk: org.gnome.Sdk/%{gcc_arch}/%{branch}

    Environment:
      GI_TYPELIB_PATH: /app/lib/girepository-1.0
      GST_PLUGIN_SYSTEM_PATH: /app/lib/gstreamer-1.0:/usr/lib/extensions/gstreamer-1.0:/usr/lib/gstreamer-1.0
      XDG_DATA_DIRS: app/share:/usr/share:/usr/share/runtime/share:/run/host/share

    Extension org.gnome.Platform.Locale:
      directory: share/runtime/locale
      autodelete: true
      locale-subset: true

    # Copied from sdk/elements/platform.bst from freedesktop-sdk because
    # bst doesn't support inheriting extensions
    'Extension org.freedesktop.Platform.GL':
      versions: "1.6;1.4"
      version: "1.4"
      directory: "%{lib}/GL"
      subdirectories: "true"
      no-autodownload: "true"
      autodelete: "false"
      add-ld-path: "lib"
      merge-dirs: "vulkan/icd.d;glvnd/egl_vendor.d"
      download-if: "active-gl-driver"
      enable-if: "active-gl-driver"

    'Extension org.freedesktop.Platform.Locale':
      directory: "share/runtime/locale"
      autodelete: "true"
      locale-subset: "true"

    'Extension org.freedesktop.Platform.Timezones':
      directory: "share/zoneinfo"

    'Extension org.freedesktop.Platform.GStreamer':
      directory: "lib/extensions/gstreamer-1.0"
      subdirectories: "true"

    'Extension org.freedesktop.Platform.Icontheme':
      directory: "share/runtime/share/icons"
      subdirectories: "true"
      no-autodownload: "true"
      version: "1.0"

    'Extension org.gtk.Gtk3theme':
      directory: "share/runtime/share/themes"
      subdirectories: "true"
      subdirectory-suffix: "gtk-3.0"
      no-autodownload: "true"
      version: "3.22"

    'Extension org.freedesktop.Platform.VAAPI.Intel':
      directory: "%{lib}/dri/intel-vaapi-driver"
      autodelete: "false"
