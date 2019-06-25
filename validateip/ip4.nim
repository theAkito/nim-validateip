import strutils

type   
  Ip4a* = object
    Sub0: aRange
    Sub1: BaseRange
    Sub2: BaseRange
    Sub3: BaseRange

  Ip4b* = object
    Sub0: bRange
    Sub1: BaseRange
    Sub2: BaseRange
    Sub3: BaseRange

  Ip4c* = object
    Sub0: cRange
    Sub1: BaseRange
    Sub2: BaseRange
    Sub3: BaseRange 

  Ip4d* = object
    Sub0: dRange
    Sub1: BaseRange
    Sub2: BaseRange
    Sub3: BaseRange

  Ip4all* = object
    Sub0: BaseRange
    Sub1: BaseRange
    Sub2: BaseRange
    Sub3: BaseRange
  
  
  aRange = range[0..127]
  bRange = range[128..191]
  cRange = range[192..223]
  dRange = range[224..239]
  BaseRange = range[0..255]
  ClassRange = range['A'..'D']
  
  ClassNick = enum
    large, medium, small, multicast

proc getPrime(address: string): int =
  let
    splitAddress = address.split('.')
    prime = splitAddress[0].parseInt
  return prime

proc isIp4*(address: string): bool =
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
    except:
      return false

proc validIp4*(address: string, class: ClassRange): bool =
  if not address.isIp4:
    return false
  else:
    try:
      case class.toLowerAscii
      of 'a':
        let validPrime: aRange = address.getPrime
      of 'b':
        let validPrime: bRange = address.getPrime
      of 'c':
        let validPrime: cRange = address.getPrime
      of 'd':
        let validPrime: dRange = address.getPrime
      else:
        "Invalid IPv4 address class.".quit
      return true
    except:
      return false      