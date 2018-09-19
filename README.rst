DEPRECATED
==========

Mentioned at [Undeadly](https://undeadly.org/cgi?action=article;sid=20180712084645) auto-join feature was added as feature of hostname.if, which works quite well with **wpa_supplicant**--rendering this script useless for modern OpenBSD-CURRENT post 2018/Jul/12. This repo is available if one requires the scripts for an older OpenBSD--meaning this repo is no longer maintained.

wico
====
A wireless connection manager.

Wico is an exercise in creating wifi manager for OpenBSD using the standard unix-like tools provided in the base system, such gems as awk, cat, grep, sed, uniq etc...

Ensure you have proper permissions to use *ifconfig*, *wpa_supplicant*, and possibly *dhclient*.

Documentation on this page may get out of sync. The most updated documentation is listed in the man pages.

Synopsis
--------
/usr/local/bin/wico, 
~/bin/wico

/etc/wico.conf, 
~/.wico.conf

Description
-----------
The wico(1) utility is a wireless connection manager for networks
according to the wico.conf configuration file. The file is very basic,
and only requires a few items for wirelss network management.


* **intf** The interface that wireless connections should connect over.
* **wpa_supplicant_conf** The location where wpa_supplicant.conf is located.
* **network** Network settings are encapsulated by {}, and are listed below:
                    
  * **nwid** The ssid that you wish to connect too.
  * **wpakey** The WPA key used to connect to the ssid. For added security use a hashed key.
  * **options** Additional options that can be passed to ifconfig.
  * **enterprise** If set to "true", wico tries to use wpa_supplicant to perform the desired handshaking to connect to the network.

Example
-------

::

    intf=iwn0
    wpa_supplicant_conf=/etc/wpa_supplicant.conf

    network {
        nwid=myssid
        wpakey=myhashedkeyORnot
    }

    network {
        nwid=myuniversity
        options=wpaakms 802.1x
        enterprise=true
    }
