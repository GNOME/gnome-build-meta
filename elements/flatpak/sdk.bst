kind: flatpak_image
build-depends:
- flatpak/sdk-image.bst
- freedesktop-sdk.bst:integration/sdk-integration.bst
- freedesktop-sdk.bst:flatpak-images/copy-ld-debug.bst
- freedesktop-sdk.bst:integration/app-debug-link.bst

variables:
  # Obtain the versions of the flatpak extensions
  (@):
  - freedesktop-sdk.bst:include/repo_branches.yml

(@):
- freedesktop-sdk.bst:elements/flatpak-images/include/platform-vars.yml

config:
  directory: '%{prefix}'
  exclude:
  - debug
  - docs
  - locale
  - tests
  - shells

  metadata:
    Runtime:
      name: org.gnome.Sdk
      runtime: org.gnome.Platform/%{flatpak_arch}/%{flatpak-branch}
      sdk: org.gnome.Sdk/%{flatpak_arch}/%{flatpak-branch}

    Environment:
      GI_TYPELIB_PATH: /app/lib/girepository-1.0
      GST_PLUGIN_SYSTEM_PATH: /app/lib/gstreamer-1.0:/usr/lib/extensions/gstreamer-1.0:%{libdir}/codecs-extra/lib/gstreamer-1.0:%{libdir}/gstreamer-1.0
      XDG_DATA_DIRS: /app/share:/usr/share:/usr/share/runtime/share:/run/host/user-share:/run/host/share
      ALSA_CONFIG_DIR: /usr/share/alsa
      ALSA_CONFIG_PATH: /usr/share/alsa/alsa-flatpak.conf
      __EGL_EXTERNAL_PLATFORM_CONFIG_DIRS: /etc/egl/egl_external_platform.d:/usr/%{lib}/GL/egl/egl_external_platform.d:/usr/share/egl/egl_external_platform.d
      PYTHONUSERBASE: /var/data/python

    Extension org.gnome.Sdk.Debug:
      directory: lib/debug

    Extension org.gnome.Sdk.Docs:
      directory: share/runtime/docs
      autodelete: 'true'
      no-autodownload: 'true'

    Extension org.gnome.Sdk.Locale:
      directory: share/runtime/locale

    # Copied from elements/flatpak-images/sdk.bst from freedesktop-sdk because
    # bst doesn't support inheriting extensions
    # When syncing, skip the Debug, Docs and Locale extensions, and
    # add the freedesktop-sdk version to extensions that don't have
    # a version.
    Extension org.freedesktop.Platform.GL:
      # 1.4 is for Nvidia drivers
      versions: "%{freedesktop-sdk-flatpak-branch};%{freedesktop-sdk-flatpak-branch-extra};1.4"
      version: "1.4"
      directory: "%{lib}/GL"
      subdirectories: "true"
      no-autodownload: "true"
      autodelete: "false"
      add-ld-path: "lib"
      merge-dirs: "%{gl_merge_dirs}"
      download-if: "active-gl-driver"
      enable-if: "active-gl-driver"
      autoprune-unless: active-gl-driver

    Extension org.freedesktop.Platform.GL.Debug:
      # 1.4 is for Nvidia drivers
      versions: "%{freedesktop-sdk-flatpak-branch};%{freedesktop-sdk-flatpak-branch-extra};1.4"
      version: "1.4"
      directory: "lib/debug%{libdir}/GL"
      subdirectories: "true"
      no-autodownload: "true"
      merge-dirs: "%{gl_merge_dirs}"
      enable-if: "active-gl-driver"
      autoprune-unless: active-gl-driver

    Extension org.freedesktop.Platform.VulkanLayer:
      version: "%{freedesktop-sdk-flatpak-branch}"
      directory: "lib/extensions/vulkan"
      subdirectories: "true"
      no-autodownload: "true"
      merge-dirs: "share/vulkan/implicit_layer.d;share/vulkan/explicit_layer.d;"

    Extension org.freedesktop.Platform.Timezones:
      directory: share/zoneinfo
      version: '%{freedesktop-sdk-flatpak-branch}'

    Extension org.freedesktop.Platform.GStreamer:
      directory: lib/extensions/gstreamer-1.0
      subdirectories: 'true'
      no-autodownload: 'true'
      version: '%{freedesktop-sdk-flatpak-branch}'

    Extension org.freedesktop.Platform.Icontheme:
      directory: share/runtime/share/icons
      subdirectories: 'true'
      no-autodownload: 'true'
      version: '1.0'

    Extension org.gtk.Gtk3theme:
      directory: share/runtime/share/themes
      subdirectories: 'true'
      subdirectory-suffix: gtk-3.0
      no-autodownload: 'true'
      version: '3.22'
      download-if: active-gtk-theme

    Extension org.freedesktop.Sdk.Extension:
      subdirectories: 'true'
      directory: lib/sdk
      no-autodownload: 'true'
      add-ld-path: lib
      version: '%{freedesktop-sdk-flatpak-branch}'

    Extension org.freedesktop.Platform.codecs-extra:
      directory: '%{lib}/codecs-extra'
      version: "%{freedesktop-sdk-flatpak-branch-extra}"
      add-ld-path: lib
      autodelete: 'true'

    Extension org.freedesktop.Platform.VAAPI.Intel:
      directory: '%{lib}/dri/intel-vaapi-driver'
      autodelete: 'false'
      no-autodownload: 'true'
      download-if: have-intel-gpu
      autoprune-unless: have-intel-gpu
      version: '%{freedesktop-sdk-flatpak-branch}'

    Extension org.freedesktop.Platform.VAAPI.nvidia:
      directory: '%{lib}/dri/nvidia-vaapi-driver'
      autodelete: 'false'
      no-autodownload: 'true'
      add-ld-path: lib
      download-if: have-kernel-module-nvidia
      autoprune-unless: have-kernel-module-nvidia
      version: '%{freedesktop-sdk-flatpak-branch}'

    (?):
    - arch == "x86_64":
        Extension org.freedesktop.Sdk.Compat.i386:
          directory: 'lib/i386-linux-gnu'
          autodelete: 'true'
          no-autodownload: 'true'
          add-ld-path: '.'
          version: '%{freedesktop-sdk-flatpak-branch}'

        Extension org.freedesktop.Sdk.Compat.i386.Debug:
          directory: 'lib/debug/usr/lib/i386-linux-gnu'
          autodelete: 'true'
          no-autodownload: 'true'
          version: '%{freedesktop-sdk-flatpak-branch}'

        Extension org.gnome.Sdk.Compat.aarch64:
          directory: 'lib/aarch64-linux-gnu'
          autodelete: 'true'
          no-autodownload: 'true'
          add-ld-path: '.'

        Extension org.gnome.Sdk.Compat.aarch64.Debug:
          directory: "lib/debug/usr/lib/aarch64-linux-gnu"
          autodelete: 'true'
          no-autodownload: 'true'
