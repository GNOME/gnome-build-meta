kind: autotools
sources:
- kind: git
  url: https://anongit.freedesktop.org/git/polkit.git
  track: master
depends:
- core-deps/mozjs24.bst
- base.bst
variables:
  conf-local:
    --enable-libsystemd-login=yes
public:
  bst:
    integration-commands:
      - groupadd -fg 27 polkitd
      - useradd -c "PolicyKit Daemon Owner" -d /etc/polkit-1 -u 27  -g polkitd -s /bin/false polkitd
