cmake_minimum_required(VERSION 2.8.8)

if (CMAKE_VERSION VERSION_LESS "3.1")
  add_definitions(-std=c++11)
else()
  set(CMAKE_CXX_STANDARD 11)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
  set(CMAKE_CXX_EXTENSIONS OFF)
endif()
project(googletest-testcode)
include_directories(${PROJECT_SOURCE_DIR}/../googletest/googletest/include)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)


add_library( test_code
            STATIC
            src/cpp/tests.cpp
)
