lib_gtk_x11tray_sources = files(
    'fixedtip.c',
    'na-grid.c',
    'na-host.c',
    'na-item.c',
    'na-marshal.c',
    'na-tray-child.c',
    'na-tray-manager.c',
    'na-tray.c'
)

lib_gtk_x11tray_dependencies = [
    gtk_dep,
    gobject_dep,
    gdk_pixbuf_dep,
    x11_dep,
    m_dep
]

lib_gtk_x11tray_static = static_library ('gtk_x11tray',
    lib_gtk_x11tray_sources,
    dependencies: lib_gtk_x11tray_dependencies
)

lib_gtk_x11tray_dependency = declare_dependency (
    link_with: lib_gtk_x11tray_static,
    include_directories: [ include_directories('.') ]
)