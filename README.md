# VNCHoneypot

This repository *is not* a fully functioning VNC honeypot.

This repository is a tutorial and set of scripts needed to make a very simple VNC honeypot.

# Tutorial

1. Setup a virtualbox VM.
2. Enable bridging in virtualbox.
3. Setup [static IP](https://superuser.com/questions/456057/static-ip-for-ubuntu-server-in-virtualbox-using-bridged-adapter) in guest.
4. Install x11vnc in guest.
5. Run in guest:
```bash
$ sudo x11vnc -nopw -forever -shared -dontdisconnect &
```
6. Run in host:
```bash
$ ./forward.sh <GUEST STATIC IP>
$ sudo ./tcpdump.sh
```
