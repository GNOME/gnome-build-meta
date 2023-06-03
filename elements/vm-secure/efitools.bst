kind: make

build-depends:
- freedesktop-sdk.bst:components/gnu-efi.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/perl-slurp.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/sbsigntools.bst

variables:
  gnomeos-keys-uuid: 8dd6b2b4-3dc4-4ee2-a226-635467997f0e
  notparallel: true
  make-args: >-
    PREFIX='%{prefix}'
    CRTPATHS='%{libdir}'
    EXTRAKEYS=''
    EXTERNALKEYS=''
    KEYUPDATEAUTH=''
    KEYBLACKLISTAUTH=''
    KEYHASHBLACKLISTAUTH=''
    MYGUID=%{gnomeos-keys-uuid}

config:
  build-commands:
    (>):
    - |
      for type in kek db; do
        regen=0
        for extra in "extra-${type}"/*.crt; do
          if [ -f "${extra}" ]; then
            base="$(dirname "${extra}")$(basename "${extra}" .crt)"
            owner='%{gnomeos-keys-uuid}'
            if [ -f "${base}.owner" ]; then
              owner="$(cat "extra-kek/${base}.owner")"
            fi
            ./cert-to-efi-sig-list -g '${owner}' "${extra}" "${base}.esl"
            case "${type}" in
              kek)
                cat "${base}.esl" >>KEK.esl
                ;;
              db)
                cat "${base}.esl" >>DB.esl
                ;;
            esac
            regen=1
          fi
        done
        if [ "${regen}" = 1 ]; then
          case "${type}" in
            kek)
              ./sign-efi-sig-list -c PK.crt -k PK.key KEK KEK.esl KEK.auth
              ;;
            db)
              ./sign-efi-sig-list -c KEK.crt -k KEK.key db DB.esl DB.auth
              ;;
          esac
        fi
      done

    # Might need some rebuilds
    - |
      %{make}

  install-commands:
    (>):
    - |
      install -Dm644 -t '%{install-root}%{datadir}/efitools/efi' *-signed.efi

    - |
      install -Dm644 -t '%{install-root}%{datadir}/efitools/efi' {PK,KEK,DB}.auth

sources:
- kind: git_tag
  url: kernel:linux/kernel/git/jejb/efitools.git
  track: v1.9.2
  ref: v1.9.2-0-g392836a46ce3c92b55dc88a1aebbcfdfc5dcddce
- kind: local
  path: files/boot-keys/PK.key
- kind: local
  path: files/boot-keys/PK.crt
- kind: local
  path: files/boot-keys/KEK.key
- kind: local
  path: files/boot-keys/KEK.crt
- kind: local
  path: files/boot-keys/DB.key
- kind: local
  path: files/boot-keys/DB.crt
- kind: local
  path: files/boot-keys/extra-kek
  directory: extra-kek
- kind: local
  path: files/boot-keys/extra-db
  directory: extra-db
