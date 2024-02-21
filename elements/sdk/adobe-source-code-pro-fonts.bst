kind: manual

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  fontdir: '%{datadir}/fonts/adobe-source-code-pro-fonts'
  confdir: '%{sysconfdir}/fonts'

config:
  install-commands:
  - |
    install -d -m0755 "%{install-root}%{confdir}/conf.avail" "%{install-root}%{confdir}/conf.d" "%{install-root}%{fontdir}"
    install -p -m0644 OTF/*.otf "%{install-root}%{fontdir}/"
    install -p -m0644 "config/adobe-source-code-pro.conf" "%{install-root}%{confdir}/conf.avail/"
    ln -s "../conf.avail/61-adobe-source-code-pro.conf" "%{install-root}%{confdir}/conf.d/"

sources:
- kind: tar
  url: github_files:adobe-fonts/source-code-pro/archive/2.038R-ro/1.058R-it/1.018R-VAR.tar.gz
  ref: d8f879fefd66ecb7291ea2d73984b9c0a97fb499424e58290ba6b81787d0c725
- kind: local
  path: files/font-conf/adobe-source-code-pro.conf
  directory: config
