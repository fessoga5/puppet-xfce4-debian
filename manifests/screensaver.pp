# vim: sts=4 ts=4 sw=4 expandtab autoindent
#
#INSTALL SKYPE ON DESKTOP
#
define puppet-xfce4-debian::screensaver () {

    #Installl gnome screensaver
    package {"gnome-screensaver": ensure => latest,}

    #ADd templates for keyborts layout ctrl+alt+l
    #
}
