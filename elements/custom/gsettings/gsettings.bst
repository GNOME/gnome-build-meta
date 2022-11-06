kind: import

sources:
- kind: local
  path: elements/custom/gsettings/src/01_mobile.gschema.override

# The import element simply stages the given sources
# directly to the root of the sandbox and then collects
# the output to create an output artifact.
config:

  # By default we collect everything staged, specify a
  # directory here to output only a subset of the staged
  # input sources.
  source: /

  # Prefix the output with an optional directory, by default
  # the input is found at the root of the produced artifact.
  target: /usr/share/glib-2.0/schemas/

public:
  bst:
    integration-commands:
    - glib-compile-schemas usr/share/glib-2.0/schemas