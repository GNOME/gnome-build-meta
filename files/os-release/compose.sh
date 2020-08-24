#!/bin/sh

exec appstream-compose \
     --basename="$1" \
     --prefix="${MESON_INSTALL_DESTDIR_PREFIX}" \
     --origin=flatpak "${1}" \
     --output-dir="${MESON_INSTALL_DESTDIR_PREFIX}/share/app-info/xmls"
