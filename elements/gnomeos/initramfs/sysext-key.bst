kind: import

sources:
- kind: local
  path: files/boot-keys/gnomeos-certificate.pem

config:
  target: '%{datadir}/voa/org.gnome.os/kernel-keyring/dm-verity/x509'
