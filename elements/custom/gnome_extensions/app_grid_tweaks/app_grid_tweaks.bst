kind: import

# Stage the files/src directory for building
sources:
- kind: git
  url: github:Selenium-H/App-Grid-Tweaks.git
  track: main
  ref: e68ded45a42f19680ad8281f5426f441496b34da
- kind: local
  path: elements/custom/gnome_extensions/app_grid_tweaks/src/02_mobile.gschema.override

depends:
- freedesktop-sdk.bst:components/jq.bst

# The import element simply stages the given sources
# directly to the root of the sandbox and then collects
# the output to create an output artifact.
#
config:

  # By default we collect everything staged, specify a
  # directory here to output only a subset of the staged
  # input sources.
  source: /

  # Prefix the output with an optional directory, by default
  # the input is found at the root of the produced artifact.
  target: /app_grid_tweaks

public:
  bst:
    integration-commands:
    - |-
      UUID=$(cat < ./app_grid_tweaks/app-grid-tweaks@Selenium-H/metadata.json | jq -r '.uuid')
      NEW_DIR="/usr/share/gnome-shell/extensions/${UUID}"
      mkdir -p ${NEW_DIR}
      mv -v -n ./app_grid_tweaks/app-grid-tweaks@Selenium-H/* ./app_grid_tweaks/
      rm -rf ./app_grid_tweaks/app-grid-tweaks@Selenium-H
      mv -v ./app_grid_tweaks/* ${NEW_DIR}
      cp ${NEW_DIR}/schemas/org.gnome.shell.extensions.app-grid-tweaks.gschema.xml /usr/share/glib-2.0/schemas/
      mv ${NEW_DIR}/02_mobile.gschema.override /usr/share/glib-2.0/schemas/
      glib-compile-schemas /usr/share/glib-2.0/schemas/
      glib-compile-schemas ${NEW_DIR}/schemas/
      rm -rf ./app_grid_tweaks/