# See LICENSE.
# Copyright (C) 2019 Akito

{.push used, warning[UnusedImport]: off.}

import strutils

type
  aRange = range[0..127]
  bRange = range[128..191]
  cRange = range[192..223]
  dRange = range[224..239]
  BaseRange = range[0..255]
  ClassRange = range['A'..'D']

proc getPrime(address: string): int =
  let
    splitAddress = address.split('.')
    prime = splitAddress[0].parseInt
  return prime

proc isIp4*(address: string): bool =
  ## Checks if IP address given as string is an IPv4
  ## address, at all. Returns true, if IP address is within
  ## the range of 0.0.0.0 to 255.255.255.255
  let splitAddress = address.split('.')
  if splitAddress.len != 4:
    return false
  else:
    try:
      let
        partAddr0: BaseRange = splitAddress[0].parseInt
        partAddr1: BaseRange = splitAddress[1].parseInt
        partAddr2: BaseRange = splitAddress[2].parseInt
        partAddr3: BaseRange = splitAddress[3].parseInt
      return true
    except:
      return false

proc validIp4*(address: string, class: ClassRange): bool =
  ## Checks if given IP address is of a certain IPv4 class or not.
  ## By providing a char for the `class` parameter you choose
  ## which class the given IP address should match with.
  ## Returns true, if `address` matches with the specified `class`
  ## requirements.
  if not address.isIp4:
    return false
  else:
    try:
      case class
      of 'A':
        let validPrime: aRange = address.getPrime
      of 'B':
        let validPrime: bRange = address.getPrime
      of 'C':
        let validPrime: cRange = address.getPrime
      of 'D':
        let validPrime: dRange = address.getPrime
      return true
    except:
      return false

{.pop.}