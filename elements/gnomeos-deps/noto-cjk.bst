kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/pkg-config.bst

sources:
- kind: zip
  url: 
    github_files:notofonts/noto-cjk/releases/download/Sans2.004/03_NotoSansCJK-OTC.zip
  base-dir: ''
  directory: sans
  ref: 528f4e1b25ff3badb0321b38d015d954c4c0de926c7830ef50e4a1948f6a3eed
- kind: zip
  url: 
    github_files:notofonts/noto-cjk/releases/download/Serif2.001/04_NotoSerifCJKOTC.zip
  base-dir: ''
  directory: serif
  ref: 2f0630f88752d50b11a427bdd71f20f7178219e647c56cbaf36c032dbe1ed9d0
- kind: local
  path: files/noto-cjk/generate-config.sh

variables:
  strip-binaries: ''

config:
  build-commands:
  - |
    ./generate-config.sh >65-noto-cjk.conf

  install-commands:
  - install -Dm644 -t '%{install-root}%{datadir}/fonts/noto' sans/NotoSansCJK-{Bold,Regular}.ttc
  - install -Dm644 -t '%{install-root}%{datadir}/fonts/noto' serif/OTC/NotoSerifCJK-{Bold,Regular}.ttc
  - |
    confdir="$(pkg-config --variable=confdir fontconfig)"
    install -Dm644 -t "%{install-root}${confdir}/conf.available" 65-noto-cjk.conf
    install -d "%{install-root}${confdir}/conf.d"
    ln -sr "%{install-root}${confdir}/conf.available/65-noto-cjk.conf" "%{install-root}${confdir}/conf.d/65-noto-cjk.conf"
  - |
    %{install-extra}
