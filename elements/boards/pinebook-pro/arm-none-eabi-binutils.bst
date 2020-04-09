kind: autotools

sources:
- kind: tar
  url: https://ftp.gnu.org/gnu/binutils/binutils-2.32.tar.xz

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  target: arm-none-eabi
  conf-local: >-
    --target=%{target}

config:
  install-commands:
    (>):
    - |
      rm -rf "%{install-root}%{datadir}/locale"
      rm -rf "%{install-root}%{infodir}"

    - |
      rm "%{install-root}%{prefix}/%{target}/bin/ld"
      ln -s ld.bfd "%{install-root}%{prefix}/%{target}/bin/ld"

    - |
      for f in "%{install-root}%{bindir}"/*; do
        basename="$(basename "${f}")"
        case "${basename}" in
          %{target}-*)
            main="%{install-root}%{prefix}/%{target}/bin/${basename#%{target}-}"
            if [ -f "${main}" ]; then
              rm "${f}"
              ln -sr "${main}" "${f}"
            fi
            ;;
        esac
      done
