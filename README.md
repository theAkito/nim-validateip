# What is it?
This is a Nim module that evaluates if a given string is an IPv4 address. Evaluation of specific IPv4 address ranges is also possible. See examples below.

# Documentation
```bash
nim doc --project validateip.nim
```
Creates documentation for the entire project.

# Examples

#### Check if given _string_ is an IP address:

```nim
let myIp = isIp4("11.0.5.2")
assert myIp == true
```

#### Check if given _string_ is a local IP address:
##### Just pick whatever keyword you personally prefer.

```nim
let myIp = isValidIp4("192.168.1.10", "local")
assert myIp == true
```

```nim
let myIp = isValidIp4("192.168.1.10", "lan")
assert myIp == true
```

```nim
let myIp = isValidIp4("192.168.1.10", "private")
assert myIp == true
```

#### Check if given _string_ is a public IP address:
##### Just pick whatever keyword you personally prefer.

```nim
let myIp = isValidIp4("111.12.1.10", "public")
assert myIp == true
```

```nim
let myIp = isValidIp4("111.12.1.10", "wan")
assert myIp == true
```

```nim
let myIp = isValidIp4("111.12.1.10", "internet")
assert myIp == true
```

Same applies to classes B and D.