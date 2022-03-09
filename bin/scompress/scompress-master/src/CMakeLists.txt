cmake_minimum_required(VERSION 2.8)

set(C_STANDARD_REQUIRED 99)
set(CMAKE_C_FLAGS "--std=c99 -Wall -Werror ${CMAKE_C_FLAGS}")

add_executable(testexportpng testpng.c tile.c tilepng.c palette.c)

find_package (PNG)
if (PNG_FOUND)
  include_directories(${PNG_INCLUDE_DIRS})
  target_link_libraries (testexportpng ${PNG_LIBRARIES})
endif (PNG_FOUND)