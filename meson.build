project(
    'wingpanel-indicator-x11tray',
    'c', 'vala',
    version: '1.0.0',
)

add_project_arguments([
        '--vapidir=' + join_paths(meson.source_root(), 'vapi'),
    ],
    language: 'vala',
)

prefix = get_option('prefix')
libdir = join_paths(prefix, get_option('libdir'))

i18n = import('i18n')
gnome = import('gnome')
pkg = import('pkgconfig')

glib_dep = dependency('glib-2.0', version: '>=2.32')
gio_dep = dependency('gio-2.0')
gio_unix_dep = dependency('gio-unix-2.0')
gmodule_dep = dependency('gmodule-2.0')

gdk_x11_dep = dependency('gdk-x11-3.0')
gtk_dep = dependency('gtk+-3.0', version: '>=3.10')
gobject_dep = dependency('gobject-2.0')
gdk_pixbuf_dep = dependency('gdk-pixbuf-2.0')
x11_dep = dependency('x11')
gee_dep = dependency('gee-0.8')
granite_dep = dependency('granite', version: '>=5.4.0')

cc = meson.get_compiler('c')
m_dep = cc.find_library('m', required : false)

libwingpanel_dep = dependency('wingpanel-2.0')
wingpanel_indicatorsdir = libwingpanel_dep.get_pkgconfig_variable('indicatorsdir', define_variable: ['libdir', libdir])

subdir('lib')
subdir('src')