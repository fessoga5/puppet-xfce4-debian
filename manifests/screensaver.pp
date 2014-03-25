# vim: sts=4 ts=4 sw=4 expandtab autoindent
#
#INSTALL SKYPE ON DESKTOP
#
define puppet-xfce4-debian::screensaver ($owner= root) {

    #Installl gnome screensaver
    package {"gnome-screensaver": ensure => latest,}

    #ADd templates for keyborts layout ctrl+alt+l
    #

    file { "/home/$owner/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml":
        replace => "yes",
        owner   => $owner,
        mode    => 600,
        content => template('puppet-xfce4-debian/xfce4-keyboard-shortcuts.xml'),
        require => Package["gnome-screensaver"],
    }
}
