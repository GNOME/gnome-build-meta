kind: manual

sources:
- kind: zip
  url: github_files:rsms/inter/releases/download/v4.0/Inter-4.0.zip
  base-dir: ''
  ref: ff970a5d4561a04f102a7cb781adbd6ac4e9b6c460914c7a101f15acb7f7d1a4

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  fontdir: '%{datadir}/fonts/inter'

config:
  install-commands:
  - |
    install -Dm644 InterVariable.ttf "%{install-root}%{fontdir}/InterVariable.ttf"
