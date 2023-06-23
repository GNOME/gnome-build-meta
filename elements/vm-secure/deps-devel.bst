kind: stack

depends:
- vm-secure/common-deps.bst

- sdk.bst
- sdk-deps/gi-docgen.bst
- sdk-deps/libsass.bst
- sdk-deps/sassc.bst
- core/meta-gnome-core-developer-tools.bst
- vm/deviced.bst
- vm/git-lfs.bst
- vm/lxc.bst
- vm/toolbox.bst
- freedesktop-sdk.bst:components/tpm2-tools.bst
- vm-secure/swtpm.bst
- freedesktop-sdk.bst:components/python3-buildstream2.bst
