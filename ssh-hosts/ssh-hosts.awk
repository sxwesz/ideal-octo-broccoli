#!/usr/bin/env -S awk -f

#Not working

{
  if ($1=="HostName") {
    $2=$ip
    print "  " $0
  }
  else {
    print
  }
}
