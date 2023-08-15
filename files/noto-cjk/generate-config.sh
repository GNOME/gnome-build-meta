#!/bin/bash

set -eu

cat <<EOF
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "urn:fontconfig:fonts.dtd">
<fontconfig>
EOF

for lang in ja ko zh-cn zh-tw zh-hk; do
  case "${lang}" in
    ja)
      lang_name=JA
      ;;
    ko)
      lang_name=KO
      ;;
    zh-cn)
      lang_name=SC
      ;;
    zh-tw)
      lang_name=TC
      ;;
    zh-hk)
      lang_name=HK
      ;;
  esac
  for family in serif sans monospace; do
    case "${family}" in
      serif)
        family_name=Serif
        ;;
      sans)
        family_name=Sans
        ;;
      monospace)
        family_name="Sans Mono"
        ;;
    esac
    cat <<EOF
    <match target="pattern">
      <test name="lang">
        <string>${lang}</string>
      </test>
      <test name="family">
        <string>${family}</string>
      </test>
      <edit name="family" mode="prepend" binding="strong">
        <string>Noto ${family_name} CJK ${lang_name}</string>
      </edit>
    </match>
EOF
  done
done

cat <<EOF
</fontconfig>
EOF
