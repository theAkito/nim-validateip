[![nimble](https://raw.githubusercontent.com/yglukhov/nimble-tag/master/nimble.png)](https://nimble.directory/pkg/validateip)

[![Language](https://img.shields.io/badge/language-Nim-orange.svg?style=plastic)](https://nim-lang.org/)

[![Build Status](https://drone.akito.ooo/api/badges/Akito/nim-validateip/status.svg)](https://drone.akito.ooo/Akito/nim-validateip)

[![GitHub](https://img.shields.io/badge/license-GPL--3.0-informational?style=plastic)](https://www.gnu.org/licenses/gpl-3.0.txt)
[![Liberapay patrons](https://img.shields.io/liberapay/patrons/Akito?style=plastic)](https://liberapay.com/Akito/)

## What is this?
This is a Nim module that evaluates if a given string is an IPv4 address. Evaluation of specific IPv4 address ranges is also possible. See examples below.

## Tests
```bash
nimble test
```
Runs tests.

## Documentation
```bash
nim doc --project validateip.nim
```
Creates documentation for the entire project.

## Examples

#### Check if given _string_ is an IP address:

```nim
let myIp = "11.0.5.2".isIp4
assert myIp == true
```

```nim
let myIp = "11.0.5.2".isValidIp4
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

## License
Copyright (C) 2020  Akito <the@akito.ooo>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.