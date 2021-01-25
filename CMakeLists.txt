cmake_minimum_required(VERSION 3.2)
project(pyPlugin) 
set(CMAKE_PREFIX_PATH "$ENV{QTDIR}")
message(${CMAKE_PREFIX_PATH})
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/bin)

link_directories(${CMAKE_SOURCE_DIR}/lib/x64)
include_directories( ${CMAKE_SOURCE_DIR}/include/ )

add_subdirectory(src)

