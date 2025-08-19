kind: manual

sources:
- kind: tar
  url: ftp_gnu_org:aspell/dict/en/aspell6-en-2020.12.07-0.tar.bz2
  ref: 4c8f734a28a088b88bb6481fcf972d0b2c3dc8da944f7673283ce487eac49fb3
- kind: tar
  url: ftp_gnu_org:aspell/dict/ca/aspell6-ca-2.1.5-1.tar.bz2
  ref: ebdae47edf87357a4df137dd754737e6417452540cb1ed34b545ccfd66f165b9
- kind: tar
  url: ftp_gnu_org:aspell/dict/fi/aspell6-fi-0.7-0.tar.bz2
  ref: f8d7f07b4511e606eb56392ddaa76fd29918006331795e5942ad11b510d0a51d
- kind: tar
  url: ftp_gnu_org:aspell/dict/fr/aspell-fr-0.50-3.tar.bz2
  ref: f9421047519d2af9a7a466e4336f6e6ea55206b356cd33c8bd18cb626bf2ce91
- kind: tar
  url: ftp_gnu_org:aspell/dict/de-alt/aspell6-de-alt-2.1-1.tar.bz2
  ref: 36d13c6c743a6b1ff05fb1af79134e118e5a94db06ba40c076636f9d04158c73
- kind: tar
  url: ftp_gnu_org:aspell/dict/it/aspell6-it-2.2_20050523-0.tar.bz2
  ref: 3b19dc709924783c8d87111aa9653dc6c000e845183778abee750215d83aaebd
- kind: tar
  url: ftp_gnu_org:aspell/dict/de/aspell-de-0.50-2.tar.bz2
  ref: f1b6f23d694fc12da193de5d5d2232797e87aecf684d8aa5872d83176eeb84ba
- kind: tar
  url: ftp_gnu_org:aspell/dict/es/aspell6-es-1.11-2.tar.bz2
  ref: ad367fa1e7069c72eb7ae37e4d39c30a44d32a6aa73cedccbd0d06a69018afcc

build-depends:
- freedesktop-sdk.bst:components/aspell.bst
- freedesktop-sdk.bst:components/findutils.bst
  
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  build-commands:
  - |
    mkdir install_files
    find . -name '*.cwl' -not -path "./install_files/*" -exec cp -u '{}' './install_files/' \;
    cd install_files
    preunzip *.cwl
    for wl in *.wl; do
      iconv --from-code=ISO-8859-1 --to-code=UTF-8 $wl | cut -d '/' -f 1 | LC_ALL=C sort -df > $wl.utf8
    done
    rm *.wl
   
  install-commands:
  - |
    install -Dm644 -t "%{install-root}%{datadir}/dict/" install_files/*.utf8
  - |
    %{install-extra}
