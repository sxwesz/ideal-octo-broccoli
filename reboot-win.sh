#!/usr/bin/env sh
exec execlineb -s0 $(dirname ${0})/required-root.exec "if { grub-reboot 1 } reboot"
