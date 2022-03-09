cmake_minimum_required(VERSION 3.0)

project(testsavestate LANGUAGES C)

include_directories(../ ../../)

add_compile_options(-Wall -Wextra -pedantic -Werror -Wno-unused-parameter -g)

add_executable(testsavestate main.c
                ../savestate.c
                ../../savestateloader.c
                ../snes9x_152.c)

install(TARGETS testsavestate RUNTIME DESTINATION bin)
