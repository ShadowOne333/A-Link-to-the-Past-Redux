cmake_minimum_required(VERSION 3.0)


include_directories(bitstream/include/)
project(quintet1 LANGUAGES C)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fsanitize=address -fsanitize=leak -g")

add_executable(quintet1 main.c quintet1_compression.c bitstream/src/bitstream.c)

install(TARGETS quintet1 RUNTIME DESTINATION bin)
