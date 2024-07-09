#!/usr/bin/emv -S awk -f
/ HostName / {
  $2=ip
  print "  " $0
}

else {
  print
}

