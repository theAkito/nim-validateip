# Package

version     = "0.1.2"
author      = "Akito <the@akito.ooo>"
description = "Nim module for checking if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses. IPv6 support planned."
license     = "GPL-3.0-or-later"


# Dependencies

requires "nim >= 0.19.4"


# Tasks

task intro, "Initialize project. Run only once at first pull.":
  exec "git submodule add https://github.com/theAkito/nim-tools.git tasks || true"
  exec "git submodule update --init --recursive"
  exec "git submodule update --recursive --remote"
  exec "nimble configure"
task configure, "Configure project. Run whenever you continue contributing to this project.":
  exec "git fetch --all"
  exec "nimble check"
  exec "nimble --silent refresh"
  exec "nimble install --accept --depsOnly"
  exec "git status"
task fbuild, "Build project.":
  exec """nim c \
            --define:danger \
            --opt:speed \
            --out:validateip \
            validateip
       """
task dbuild, "Debug Build project.":
  exec """nim c \
            --define:debug:true \
            --debuginfo:on \
            --out:validateip_debug \
            validateip
       """
task test, "Test project.":
  exec "nim c -r tests/testminus.nim"
  exec "nim c -r tests/testplus.nim"
task makecfg, "Create nim.cfg for optimized builds.":
  exec "nim tasks/cfg_optimized.nims"
task clean, "Removes nim.cfg.":
  exec "nim tasks/cfg_clean.nims"