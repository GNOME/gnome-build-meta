kind: stack

depends:
- core/meta-gnome-core-developer-tools.bst

- freedesktop-sdk.bst:components/buildstream2.bst
- freedesktop-sdk.bst:components/debuginfod.bst

# Useful utilities for testing and CI
- core-deps/foundry.bst
- core-deps/python-dbusmock.bst
- core-deps/setxkbmap.bst
- core-deps/umockdev.bst
- core-deps/xvfb.bst
- gnomeos-deps/bpftop.bst
- gnomeos-deps/deviced.bst
- gnomeos-deps/grcov.bst
- gnomeos-deps/just.bst
- gnomeos-deps/swtpm.bst
- gnomeos-deps/sysext-utils.bst
- gnomeos-deps/virtiofsd.bst
- gnomeos-deps/wl-clipboard.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst
- freedesktop-sdk.bst:components/tpm2-tools.bst

# Currently for sysprof-ebpf but useful in general
- freedesktop-sdk.bst:components/bpf.bst
- freedesktop-sdk.bst:components/vmlinuxh.bst

# Common build deps that do not make it to the runtime
- core-deps/python-argcomplete.bst
- core-deps/umockdev.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/mtools.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/python3-tomlkit.bst
- sdk-deps/libsass.bst
- sdk-deps/sassc.bst
- sdk/gi-docgen.bst
- freedesktop-sdk.bst:components/xmlto.bst
# Used by gdm tests
- core-deps/libcheck.bst
# Some testsuites depend on zenity
- core-deps/zenity.bst

- sdk.bst
