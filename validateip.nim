import strutils

type IpAddress = object
  Sub0: int
  Sub1: int

#TODO: make .split.parseInt and then apply the resulting Int sequence to IpAddress object, with sequence contents as arguments for IpAddress properties.