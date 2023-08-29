kind: stack

depends:
- core-deps/setxkbmap.bst
- core-deps/xvfb.bst
- core/meta-gnome-core-developer-tools.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/python3-buildstream2.bst
- freedesktop-sdk.bst:components/python3-dbusmock.bst
- freedesktop-sdk.bst:components/vim.bst
- freedesktop-sdk.bst:components/xmlto.bst
- sdk-deps/gi-docgen.bst
- sdk-deps/libsass.bst
- sdk-deps/sassc.bst
- sdk.bst
- vm/deviced.bst
- vm/distrobox.bst
- vm/git-lfs.bst
- vm/lxc.bst
- vm/swtpm.bst
- vm/toolbox.bst
