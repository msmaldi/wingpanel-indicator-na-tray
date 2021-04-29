shared_module('indicator-sample',
    'Indicator.vala',
    dependencies: [ libwingpanel_dep, lib_gtk_x11tray_dependency ],
    install: true,
    install_dir: wingpanel_indicatorsdir,
    vala_args: [
    '--vapidir=' + meson.source_root() + '/vapi/',
    '--pkg=gtk_x11tray'
  ]
)