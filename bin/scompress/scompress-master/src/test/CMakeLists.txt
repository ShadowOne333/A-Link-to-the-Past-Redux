cmake_minimum_required(VERSION 2.8)


project(test)

set(C_STANDARD_REQUIRED 99)
#set(CMAKE_C_FLAGS "--std=c99 -Wall -Werror -g ${CMAKE_C_FLAGS}")

add_executable(testnintendocompression CuTest.c testnintendocompression.c ../compressions/stdnintendo.c)
add_executable(testtile CuTest.c testtile.c ../tile.c)
add_executable(testrommaping CuTest.c testrommapping.c ../mapping_lorom.c ../rommapping.c ../mapping_hirom.c)
add_executable(testpalette CuTest.c testpalette.c ../palette.c)
add_executable(testrominfo CuTest.c testrominfo.c ../rominfo.c)

include_directories(../)

#install(TARGETS test RUNTIME DESTINATION bin)
