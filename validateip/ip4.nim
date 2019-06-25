import strutils

type   
  Ip4a* = object
    Sub0: aRange
    Sub1: baseRange
    Sub2: baseRange
    Sub3: baseRange

  Ip4b* = object
    Sub0: bRange
    Sub1: baseRange
    Sub2: baseRange
    Sub3: baseRange

  Ip4c* = object
    Sub0: cRange
    Sub1: baseRange
    Sub2: baseRange
    Sub3: baseRange 

  Ip4d* = object
    Sub0: dRange
    Sub1: baseRange
    Sub2: baseRange
    Sub3: baseRange

  Ip4all* = object
    Sub0: baseRange
    Sub1: baseRange
    Sub2: baseRange
    Sub3: baseRange
  
  
  aRange = range[0..127]
  bRange = range[128..191]
  cRange = range[192..223]
  dRange = range[224..239]
  baseRange = range[0..255]

proc baseRanger(partialAddress: seq): bool =
  try:
    let
      partAddr1: baseRange = partialAddress[0].parseInt
      partAddr2: baseRange = partialAddress[1].parseInt
      partAddr3: baseRange = partialAddress[2].parseInt
    return true
  except:
    return false

proc isIp4(address: string): bool =
  let splitAddress = address.split('.')
  if splitAddress.len != 4:
    return false
  else:
    try:
      let
        partAddr0: baseRange = splitAddress[0].parseInt
        partAddr1: baseRange = splitAddress[1].parseInt
        partAddr2: baseRange = splitAddress[2].parseInt
        partAddr3: baseRange = splitAddress[3].parseInt
    except:
      return false

proc getPrime(address: string): int =
  let
    splitAddress = address.split('.')
    prime = splitAddress[0].parseInt
  return prime

proc validIp4c(address: string): bool =
  if not address.isIp4:
    return false
  else:
    try:
      let validPrime: cRange = address.getPrime
      return true
    except:
      return false      