# vim: sts=4 ts=4 sw=4 expandtab autoindent
#
#INSTALL SKYPE ON DESKTOP
#
class puppet-xfce4-debian () {
    #support multiarch
    exec{ "dpkg --add-architecture i386;apt-get update;":
        path => '/usr/bin:/bin:/usr/sbin:/sbin',
        unless => '/usr/bin/dpkg --print-foreign-architectures | /bin/grep i386'
    }

}
