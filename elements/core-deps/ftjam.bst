kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:project/freetype/ftjam/2.5.2/ftjam-2.5.2.tar.bz2
depends:
- base.bst
variables:
  autogen: cp /usr/share/automake*/config.{sub,guess} builds/unix
