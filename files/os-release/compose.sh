#!/bin/sh

exec appstreamcli compose \
     --components="$1" \
     --prefix="${MESON_INSTALL_PREFIX}" \
     --origin="${1}" \
     --result-root="${DESTDIR}" \
     --data-dir="${MESON_INSTALL_DESTDIR_PREFIX}/share/app-info/xmls" \
     "${DESTDIR}"
