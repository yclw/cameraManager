# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yc/V3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yc/V3/build

# Include any dependencies generated for this target.
include CMakeFiles/test_project.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/test_project.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/test_project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_project.dir/flags.make

CMakeFiles/test_project.dir/src/main.cpp.o: CMakeFiles/test_project.dir/flags.make
CMakeFiles/test_project.dir/src/main.cpp.o: /home/yc/V3/src/main.cpp
CMakeFiles/test_project.dir/src/main.cpp.o: CMakeFiles/test_project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yc/V3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_project.dir/src/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_project.dir/src/main.cpp.o -MF CMakeFiles/test_project.dir/src/main.cpp.o.d -o CMakeFiles/test_project.dir/src/main.cpp.o -c /home/yc/V3/src/main.cpp

CMakeFiles/test_project.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_project.dir/src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yc/V3/src/main.cpp > CMakeFiles/test_project.dir/src/main.cpp.i

CMakeFiles/test_project.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_project.dir/src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yc/V3/src/main.cpp -o CMakeFiles/test_project.dir/src/main.cpp.s

CMakeFiles/test_project.dir/src/class_camera_manager.cpp.o: CMakeFiles/test_project.dir/flags.make
CMakeFiles/test_project.dir/src/class_camera_manager.cpp.o: /home/yc/V3/src/class_camera_manager.cpp
CMakeFiles/test_project.dir/src/class_camera_manager.cpp.o: CMakeFiles/test_project.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yc/V3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_project.dir/src/class_camera_manager.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/test_project.dir/src/class_camera_manager.cpp.o -MF CMakeFiles/test_project.dir/src/class_camera_manager.cpp.o.d -o CMakeFiles/test_project.dir/src/class_camera_manager.cpp.o -c /home/yc/V3/src/class_camera_manager.cpp

CMakeFiles/test_project.dir/src/class_camera_manager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_project.dir/src/class_camera_manager.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yc/V3/src/class_camera_manager.cpp > CMakeFiles/test_project.dir/src/class_camera_manager.cpp.i

CMakeFiles/test_project.dir/src/class_camera_manager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_project.dir/src/class_camera_manager.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yc/V3/src/class_camera_manager.cpp -o CMakeFiles/test_project.dir/src/class_camera_manager.cpp.s

# Object files for target test_project
test_project_OBJECTS = \
"CMakeFiles/test_project.dir/src/main.cpp.o" \
"CMakeFiles/test_project.dir/src/class_camera_manager.cpp.o"

# External object files for target test_project
test_project_EXTERNAL_OBJECTS =

test_project: CMakeFiles/test_project.dir/src/main.cpp.o
test_project: CMakeFiles/test_project.dir/src/class_camera_manager.cpp.o
test_project: CMakeFiles/test_project.dir/build.make
test_project: /usr/local/lib/libopencv_gapi.so.4.10.0
test_project: /usr/local/lib/libopencv_highgui.so.4.10.0
test_project: /usr/local/lib/libopencv_ml.so.4.10.0
test_project: /usr/local/lib/libopencv_objdetect.so.4.10.0
test_project: /usr/local/lib/libopencv_photo.so.4.10.0
test_project: /usr/local/lib/libopencv_stitching.so.4.10.0
test_project: /usr/local/lib/libopencv_video.so.4.10.0
test_project: /usr/local/lib/libopencv_videoio.so.4.10.0
test_project: /usr/local/lib/libopencv_imgcodecs.so.4.10.0
test_project: /usr/local/lib/libopencv_dnn.so.4.10.0
test_project: /usr/local/lib/libopencv_calib3d.so.4.10.0
test_project: /usr/local/lib/libopencv_features2d.so.4.10.0
test_project: /usr/local/lib/libopencv_flann.so.4.10.0
test_project: /usr/local/lib/libopencv_imgproc.so.4.10.0
test_project: /usr/local/lib/libopencv_core.so.4.10.0
test_project: CMakeFiles/test_project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/yc/V3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test_project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_project.dir/build: test_project
.PHONY : CMakeFiles/test_project.dir/build

CMakeFiles/test_project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_project.dir/clean

CMakeFiles/test_project.dir/depend:
	cd /home/yc/V3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yc/V3 /home/yc/V3 /home/yc/V3/build /home/yc/V3/build /home/yc/V3/build/CMakeFiles/test_project.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/test_project.dir/depend

