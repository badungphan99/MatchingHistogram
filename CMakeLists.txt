cmake_minimum_required(VERSION 3.12)

project(MatchingHistogram)

set(CMAKE_CXX_STANDARD 14)

find_package(OpenCV REQUIRED)

add_executable(MatchingHistogram main.cpp)

target_link_libraries(MatchingHistogram ${OpenCV_LIBS})