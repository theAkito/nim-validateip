import
  validateip,
  os

include validateip/ip4

let 
  prime = "10.11.12.13".getPrime
  ip_isIp4 = "10.11.12.13".isIp4
  ip_isValidIp4 = "10.11.12.13".isValidIp4
  ipA_validIp4 = "20.21.22.23".validIp4('A')
  ipB_validIp4 = "130.21.22.23".validIp4('B')
  ipC_validIp4 = "192.21.22.23".validIp4('C')
  ipD_validIp4 = "238.21.22.23".validIp4('D')
  ipC_isValidIp4 = "192.21.22.23".isValidIp4("lan")
  ipA_isValidIp4 = "23.21.22.23".isValidIp4("wan")
  ipB_isValidIp4 = "130.21.22.23".isValidIp4("medium")
  ipD_isValidIp4 = "238.21.22.23".isValidIp4("multicast")

assert prime == 10
assert ip_isIp4 == true
assert ip_isValidIp4 == true
assert ipA_validIp4 == true
assert ipB_validIp4 == true
assert ipC_validIp4 == true
assert ipD_validIp4 == true
assert ipA_isValidIp4 == true
assert ipB_isValidIp4 == true
assert ipC_isValidIp4 == true
assert ipD_isValidIp4 == true

("tests" / "testplus").removeFile