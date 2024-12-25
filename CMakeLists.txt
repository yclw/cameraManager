cmake_minimum_required(VERSION 3.5)
project(test_project)


# opencv
find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})

# include
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
# src
set(SOURCES
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
    ${CMAKE_CURRENT_SOURCE_DIR}/src/class_camera_manager.cpp
)

add_executable(test_project ${SOURCES})
target_link_libraries(test_project ${OpenCV_LIBS})