kind: autotools
sources:
- kind: tar
  url: http://www.freedesktop.org/software/startup-notification/releases/startup-notification-0.12.tar.gz
depends:
- base.bst
variables:
  autogen: autoreconf -ivf
