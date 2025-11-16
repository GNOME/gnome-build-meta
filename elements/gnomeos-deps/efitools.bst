kind: make

sources:
- kind: git_repo
  url: kernel:linux/kernel/git/jejb/efitools.git
  track: v1.9.2
  ref: v1.9.2-0-g392836a46ce3c92b55dc88a1aebbcfdfc5dcddce
- kind: patch
  path: patches/efitools/aarch64-on-newer-gnu-efi.patch
- kind: generated
  path: PK.key
- kind: generated
  path: PK.crt
- kind: generated
  path: PK_MIC.key
- kind: generated
  path: PK_MIC.crt
- kind: generated
  path: KEK.key
- kind: generated
  path: KEK.crt
- kind: generated
  path: KEK_MIC.key
- kind: generated
  path: KEK_MIC.crt
- kind: generated
  path: DB.key
- kind: generated
  path: DB.crt
- kind: generated
  path: extra-kek
  directory: extra-kek
- kind: generated
  path: extra-db
  directory: extra-db
- kind: generated
  path: extra-kek-mic
  directory: extra-kek-mic
- kind: generated
  path: extra-db-mic
  directory: extra-db-mic

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/gnu-efi.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/perl-slurp.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
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
  configure-commands:
  - |
    cat <<EOF >>Make.rules
    CFLAGS+=-Wno-error=implicit-function-declaration -std=gnu17
    EOF

  build-commands:
    (>):
    # Create another set of keys PK-mic,KEK-mic,DB-mic
    - |
      ./cert-to-efi-sig-list -g '%{gnomeos-keys-uuid}' PK_MIC.crt PK-mic.esl

    - |
      ./sign-efi-sig-list -k PK_MIC.key -c PK_MIC.crt PK PK-mic.esl PK-mic.auth

    - |
      ./cert-to-efi-sig-list -g '%{gnomeos-keys-uuid}' KEK.crt KEK-mic.esl

    - |
      ./cert-to-efi-sig-list -g '%{gnomeos-keys-uuid}' DB.crt DB-mic.esl

    # Enroll extra keys
    - |
      for type in kek kek-mic db db-mic; do
        regen=0
        for extra in "extra-${type}"/*.crt; do
          if [ -f "${extra}" ]; then
            base="$(dirname "${extra}")$(basename "${extra}" .crt)"
            owner='%{gnomeos-keys-uuid}'
            if [ -f "${base}.owner" ]; then
              owner="$(cat "extra-${type}/${base}.owner")"
            fi
            ./cert-to-efi-sig-list -g '${owner}' "${extra}" "${base}.esl"
            case "${type}" in
              kek)
                cat "${base}.esl" >>KEK.esl
                cat "${base}.esl" >>KEK-mic.esl
                ;;
              kek-mic)
                cat "${base}.esl" >>KEK-mic.esl
                regen=1
                ;;
              db)
                cat "${base}.esl" >>DB.esl
                cat "${base}.esl" >>DB-mic.esl
                ;;
              db-mic)
                cat "${base}.esl" >>DB-mic.esl
                regen=1
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
            kek-mic)
              ./sign-efi-sig-list -c PK_MIC.crt -k PK_MIC.key KEK KEK-mic.esl KEK-mic.auth
              ;;
            db)
              ./sign-efi-sig-list -c KEK.crt -k KEK.key db DB.esl DB.auth
              ;;
            db-mic)
              ./sign-efi-sig-list -c KEK_MIC.crt -k KEK_MIC.key db DB-mic.esl DB-mic.auth
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

    - |
      install -Dm644 -t '%{install-root}%{datadir}/efitools/efi' {PK-mic,KEK-mic,DB-mic}.auth
