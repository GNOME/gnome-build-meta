kind: stack

depends:
- core/meta-gnome-core-apps.bst
- core/meta-gnome-core-os-services.bst
- core/meta-gnome-core-shell.bst
- core/systemd-presets.bst
- incubator/meta-gnome-incubator-apps.bst
- sdk-platform.bst

- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- core-deps/xdg-desktop-portal-gnome.bst
- core-deps/xdg-desktop-portal-gtk.bst

- vm/flathub-config.bst
- vm/gnome-nightly-config.bst
- vm/plymouth-gnome-theme.bst
- vm-deps/spice-vdagent.bst
- vm/wpa-supplicant-config.bst
- vm/nsswitch-config.bst
- vm/disable-iscsi.bst
- vm/journald-config.bst

- vm-deps/fish.bst
- vm-deps/nss-mdns.bst
- vm-deps/opensc.bst
- vm-deps/uresourced.bst
- vm-deps/android-udev-rules.bst
- vm-deps/alsa-ucm-conf.bst
- vm-deps/fprintd.bst
- core-deps/boltd.bst

- vm-deps/ibus-anthy.bst
- vm-deps/ibus-hangul.bst
- vm-deps/ibus-libpinyin.bst

- vm-deps/NetworkManager-openvpn.bst
- vm-deps/NetworkManager-openconnect.bst
- vm-deps/NetworkManager-fortisslvpn.bst
- vm-deps/NetworkManager-vpnc.bst

- vm-deps/noto-cjk.bst
- vm-deps/words.bst

- freedesktop-sdk.bst:components/pipewire-daemon.bst
- freedesktop-sdk.bst:components/wireplumber.bst

- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/useradd-default.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/bash-config.bst
- freedesktop-sdk.bst:components/ccid.bst
- freedesktop-sdk.bst:components/gamemode-daemon.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/man-db.bst
- freedesktop-sdk.bst:components/open-iscsi.bst
- freedesktop-sdk.bst:components/openssh-systemd.bst
- freedesktop-sdk.bst:components/rsync.bst
- freedesktop-sdk.bst:components/sof-firmware.bst
- freedesktop-sdk.bst:components/steam-devices.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
- freedesktop-sdk.bst:components/iio-sensor-proxy.bst

- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/nano.bst
