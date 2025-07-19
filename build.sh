#!/bin/bash
set -e

# 1. 빌드 (build 디렉토리에서)
make

# 2. J-Link 플래시용 스크립트 생성
cat <<EOF > flash.jlink
loadbin build/asd.bin
r
g
q
EOF

# 3. J-Link 실행 (자동 플래시)
JLinkExe -device STM32F411CE -if SWD -speed 4000 -autoconnect 1 -CommanderScript flash.jlink
