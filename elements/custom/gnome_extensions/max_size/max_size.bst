kind: import

# Stage the files/src directory for building
sources:
- kind: git
  url: github:aXe1/gnome-shell-extension-maximized-by-default.git
  track: master
  ref: 56af23ca3550edfacc6fe88a9caed16953da4b1c

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
  target: /max_size

public:
  bst:
    integration-commands:
    - |
      UUID=$(cat < ./max_size/src/metadata.json | jq -r '.uuid')
      NEW_DIR="/usr/share/gnome-shell/extensions/${UUID}"
      mkdir -p ${NEW_DIR}
      mv ./max_size/* ${NEW_DIR} 
      mv ${NEW_DIR}/src/* ${NEW_DIR}
      rm -rf ${NEW_DIR}/src/
      rm -rf ./max_size/