kind: stack

depends:
- sdk.bst
- sdk-deps/gi-docgen.bst
- sdk-deps/libsass.bst
- sdk-deps/sassc.bst
- core/gnome-software-snap.bst
- core/meta-gnome-core-developer-tools.bst
- vm/common-deps.bst
- vm/deviced.bst
- vm/git-lfs.bst
- vm/initramfs.bst
- vm/lxc.bst
- vm/os-release-devel.bst
- vm/toolbox.bst
- vm/swtpm.bst
- freedesktop-sdk.bst:components/python3-buildstream2.bst
