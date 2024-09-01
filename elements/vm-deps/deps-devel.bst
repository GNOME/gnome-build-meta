kind: stack

depends:
- core-deps/python-dbusmock.bst
- core-deps/setxkbmap.bst
- core-deps/xvfb.bst
- vm-deps/sysext-utils.bst
- core/meta-gnome-core-developer-tools.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/git-lfs.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/podman-config.bst
- freedesktop-sdk.bst:components/podman.bst
- freedesktop-sdk.bst:components/python3-buildstream2.bst
- freedesktop-sdk.bst:components/python3-tomlkit.bst
- freedesktop-sdk.bst:components/vim.bst
- freedesktop-sdk.bst:components/xmlto.bst
- sdk-deps/libsass.bst
- sdk-deps/sassc.bst
- sdk.bst
- vm-deps/deviced.bst
- vm-deps/distrobox.bst
- vm-deps/swtpm.bst
- vm-deps/toolbox.bst
