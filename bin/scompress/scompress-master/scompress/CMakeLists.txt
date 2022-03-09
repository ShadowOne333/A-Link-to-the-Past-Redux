cmake_minimum_required(VERSION 2.8)


project(scompress)

set(C_STANDARD_REQUIRED 99)
if (MSCV)
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /W4 /std:c99")
else(MSCV)
  set(CMAKE_C_FLAGS "--std=c99 -Wall -Werror -Wno-error=unused-function ${CMAKE_C_FLAGS}")
endif()

add_executable(scompress scompress.c utils.c ../src/compressions/alttpcompression.c ../src/compressions/stdnintendo.c ../src/mapping_lorom.c ../src/tile.c)

include_directories(../src/)