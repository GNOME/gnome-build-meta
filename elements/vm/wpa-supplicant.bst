kind: manual

sources:
- kind: tar
  url: https://w1.fi/releases/wpa_supplicant-2.9.tar.gz

depends:
- freedesktop-sdk.bst:components/dbus.bst
- core-deps/libnl.bst

build-depends:
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst

variables:
  config: |
    # Add configuration here
  make-args: >-
    BINDIR="%{bindir}"
    LIBDIR="%{libdir}"
    DESTDIR="%{install-root}"

config:
  configure-commands:
  - cp wpa_supplicant/defconfig wpa_supplicant/.config

  - |
    cat <<\EOF >>wpa_supplicant/.config
    %{config}
    EOF

  build-commands:
  - |
    cd wpa_supplicant
    make %{make-args}

  install-commands:
  - |
    cd wpa_supplicant
    make -j1 %{make-args} install

  - |
    cd wpa_supplicant
    systemservices="$(pkg-config --variable system_bus_services_dir dbus-1)"
    install -Dm644 -t "%{install-root}${systemservices}" dbus/fi.w1.wpa_supplicant1.service

  - |
    cd wpa_supplicant
    systemdir="$(pkg-config --variable datadir dbus-1)/dbus-1/system.d"
    install -Dm644 dbus/dbus-wpa_supplicant.conf "%{install-root}${systemdir}/wpa_supplicant.conf"

  - |
    cd wpa_supplicant
    systemdsystemunitdir="$(pkg-config --variable systemdsystemunitdir systemd)"
    install -Dm644 -t "%{install-root}${systemdsystemunitdir}" systemd/*.service

  # wpa_supplicant-wired seems to hang boot. It gets enabled for
  # unknown reason.  So we forcibly disable it.
  - |
    cat <<EOF >disable-wpa-wired.preset
    disable wpa_supplicant-wired@.service
    EOF
    systemdsystempresetdir="$(pkg-config --variable systemdsystempresetdir systemd)"
    install -Dm644 -t "%{install-root}${systemdsystempresetdir}" disable-wpa-wired.preset
