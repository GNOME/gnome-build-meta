kind: manual

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    mkdir -p "%{install-root}%{indep-libdir}/modprobe.d/"
    cat <<EOF >"%{install-root}%{indep-libdir}/modprobe.d/modprobe.conf"
    # Tablet mode on Framework 12 needs pinctrl_tigerlake to be loaded before soc_button_array
    # https://bugzilla.kernel.org/show_bug.cgi?id=220965
    softdep soc_button_array pre: pinctrl_tigerlake
    EOF
