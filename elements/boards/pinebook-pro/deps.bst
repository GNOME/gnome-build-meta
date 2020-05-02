kind: stack

runtime-depends:
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-server.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:vm/mesa-default.bst

- vm/ostree-config.bst
- core-deps/avahi.bst
- core-deps/eos-updater.bst

- vm/plymouth-gnome-theme.bst
- vm/kbd.bst
- vm/dev-repo-script.bst

- freedesktop-sdk.bst:vm/config/pulseaudio.bst
- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/journald.bst
- vm/flathub-config.bst

# And add GNOME core on top !
- sdk-platform.bst
- core.bst
- core/systemd-presets.bst

- boards/pinebook-pro/initramfs.bst
- boards/pinebook-pro/tweak-resize-root.bst
- vm/eos-repartition.bst

- boards/pinebook-pro/keyboard-updater.bst

# FIXME: Waiting for those to be merged:
#- freedesktop-sdk.bst:components/linux-firmware.bst
#- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
