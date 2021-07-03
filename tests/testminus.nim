import
  validateip,
  os

include validateip/ip4

let 
  ip_isIp4 = "1000.11.12.13".isIp4
  ip_isValidIp4 = "1000.11.12.13".isValidIp4
  ipA_validIp4 = "128.21.22.23".validIp4('A')
  ipB_validIp4 = "192.21.22.23".validIp4('B')
  ipC_validIp4 = "224.21.22.23".validIp4('C')
  ipD_validIp4 = "240.21.22.23".validIp4('D')
  ipC_isValidIp4 = "224.21.22.23".isValidIp4("lan")
  ipA_isValidIp4 = "128.21.22.23".isValidIp4("wan")
  ipB_isValidIp4 = "192.21.22.23".isValidIp4("medium")
  ipD_isValidIp4 = "240.21.22.23".isValidIp4("multicast")

assert ip_isIp4 == false
assert ip_isValidIp4 == false
assert ipA_validIp4 == false
assert ipB_validIp4 == false
assert ipC_validIp4 == false
assert ipD_validIp4 == false
assert ipA_isValidIp4 == false
assert ipB_isValidIp4 == false
assert ipC_isValidIp4 == false
assert ipD_isValidIp4 == false

("tests" / "testminus").removeFile