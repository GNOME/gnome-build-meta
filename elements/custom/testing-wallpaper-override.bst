kind: import

sources:
- kind: local
  path: files/backgrounds/backgrounds.gschema.override

depends: 
  - core/gnome-backgrounds.bst

config:
  source: /
  target: /usr/share/glib-2.0/schemas/

public:
  bst:
    integration-commands:
    - glib-compile-schemas usr/share/glib-2.0/schemas