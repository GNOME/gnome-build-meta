kind: manual

sources:
- kind: local
  path: files/boot-keys/PK.key
- kind: local
  path: files/boot-keys/PK.crt
- kind: local
  path: files/boot-keys/PK_MIC.key
- kind: local
  path: files/boot-keys/PK_MIC.crt
- kind: local
  path: files/boot-keys/KEK.key
- kind: local
  path: files/boot-keys/KEK.crt
- kind: local
  path: files/boot-keys/KEK_MIC.key
- kind: local
  path: files/boot-keys/KEK_MIC.crt
- kind: local
  path: files/boot-keys/DB.crt
- kind: local
  path: files/boot-keys/extra-kek
  directory: extra-kek
- kind: local
  path: files/boot-keys/extra-db
  directory: extra-db
- kind: git_repo
  url: github:microsoft/secureboot_objects.git
  track: 'v*-signed'
  directory: microsoft_objects
  ref: v1.6.4-signed-0-gbd7abe3cc73734cf364f6a4bc529ef12a9439ec8

build-depends:
- freedesktop-sdk.bst:components/sbsigntools-maybe.bst

variables:
  gnomeos-keys-uuid: 8dd6b2b4-3dc4-4ee2-a226-635467997f0e
  strip-binaries: ''
  var-attrs: NON_VOLATILE,RUNTIME_ACCESS,BOOTSERVICE_ACCESS,TIME_BASED_AUTHENTICATED_WRITE_ACCESS

config:
  build-commands:
    # A "private" set of keys (PK, KEK, DB)
  - openssl x509 -inform pem -outform der -in PK.crt -out PK.der
  - openssl x509 -inform pem -outform der -in KEK.crt -out KEK.der
  - openssl x509 -inform pem -outform der -in DB.crt -out DB.der

  - sbsiglist --owner '%{gnomeos-keys-uuid}' --type x509 PK.der --output PK.esl
  - sbsiglist --owner '%{gnomeos-keys-uuid}' --type x509 KEK.der --output KEK.esl
  - sbsiglist --owner '%{gnomeos-keys-uuid}' --type x509 DB.der --output DB.esl

    # Another set of keys that includes Microsoft keys
  - openssl x509 -inform pem -outform der -in PK_MIC.crt -out PK_MIC.der

  - sbsiglist --owner '%{gnomeos-keys-uuid}' --type x509 PK_MIC.der --output PK-mic.esl
  - sbsiglist --owner '%{gnomeos-keys-uuid}' --type x509 KEK.der --output KEK-mic.esl
  - sbsiglist --owner '%{gnomeos-keys-uuid}' --type x509 DB.der --output DB-mic.esl

    # Import Microsoft keys
  - |
    mkdir -p extra-kek-mic
    for key in "MicCorKEKCA2011_2011-06-24" \
               "microsoft corporation kek 2k ca 2023"; do
      cp "microsoft_objects/PreSignedObjects/KEK/Certificates/${key}.der" "extra-kek-mic/${key// /_}.der"
      echo 77fa9abd-0359-4d32-bd60-28f4e78f784b >"extra-kek-mic/${key// /_}.owner"
    done

  - |
    mkdir -p extra-db-mic
    for key in "MicCorUEFCA2011_2011-06-27" \
               "MicWinProPCA2011_2011-10-19" \
               "microsoft option rom uefi ca 2023" \
               "microsoft uefi ca 2023" \
               "windows uefi ca 2023"; do
      cp "microsoft_objects/PreSignedObjects/DB/Certificates/${key}.der" "extra-db-mic/${key// /_}.der"
      echo 77fa9abd-0359-4d32-bd60-28f4e78f784b >"extra-db-mic/${key// /_}.owner"
    done

    # Enroll extra keys
    # but first we need to convert PEM to DER
  - |
    for type in kek kek-mic db db-mic; do
      for extra in "extra-${type}"/*.crt; do
        if [ -f "${extra}" ]; then
          base="$(dirname "${extra}")$(basename "${extra}" .crt)"
          openssl x509 -inform pem -outform der -in "${extra}" -out "${base}.der"
        fi
      done
    done
  - |
    for type in kek kek-mic db db-mic; do
      for extra in "extra-${type}"/*.der; do
        if [ -f "${extra}" ]; then
          base="$(dirname "${extra}")$(basename "${extra}" .crt)"
          owner='%{gnomeos-keys-uuid}'
          if [ -f "${base}.owner" ]; then
            owner="$(cat "extra-${type}/${base}.owner")"
          fi
          sbsiglist --owner "${owner}" --type x509 "${extra}" --output "${base}.esl"
          case "${type}" in
            kek)
              cat "${base}.esl" >>KEK.esl
              cat "${base}.esl" >>KEK-mic.esl
              ;;
            kek-mic)
              cat "${base}.esl" >>KEK-mic.esl
              ;;
            db)
              cat "${base}.esl" >>DB.esl
              cat "${base}.esl" >>DB-mic.esl
              ;;
            db-mic)
              cat "${base}.esl" >>DB-mic.esl
              ;;
          esac
        fi
      done
    done

    # Sign the signature lists
  - sbvarsign --attrs "%{var-attrs}" --key PK.key --cert PK.crt PK PK.esl --output PK.auth
  - sbvarsign --attrs "%{var-attrs}" --key PK_MIC.key --cert PK_MIC.crt PK PK-mic.esl --output PK-mic.auth

  - sbvarsign --attrs "%{var-attrs}" --key PK.key --cert PK.crt KEK KEK.esl --output KEK.auth
  - sbvarsign --attrs "%{var-attrs}" --key PK_MIC.key --cert PK_MIC.crt KEK KEK-mic.esl --output KEK-mic.auth

  - sbvarsign --attrs "%{var-attrs}" --key KEK.key --cert KEK.crt db DB.esl --output DB.auth
  - sbvarsign --attrs "%{var-attrs}" --key KEK_MIC.key --cert KEK_MIC.crt db DB-mic.esl --output DB-mic.auth

  install-commands:
  - install -Dm644 -t '%{install-root}%{datadir}/efi-keys' {PK,KEK,DB}.auth
  - install -Dm644 -t '%{install-root}%{datadir}/efi-keys' {PK-mic,KEK-mic,DB-mic}.auth
