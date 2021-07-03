# See LICENSE.
# Copyright (C) 2019 Akito

import strutils, validateip/ip4
export ip4

proc isValidIp4*(address: string, class: string = ""): bool =
  ## Wraps `validIp4` proc to provide more user friendly
  ## parameter options. Here, you don't have to state the
  ## class char, instead you can choose another common
  ## alias for the corresponding class.
  try:
    case class.toLowerAscii
    of "small", "local", "private", "lan", "c":
      if validIp4(address, 'C'): return true
    of "large", "internet", "public", "wan", "a":
      if validIp4(address, 'A'): return true
    of "medium", "b":
      if validIp4(address, 'B'): return true
    of "multicast", "d":
      if validIp4(address, 'D'): return true
    of "":
      if isIp4(address): return true
    else:
      "Invalid IPv4 address class.".quit
  except ValueError, RangeDefect:
    return false