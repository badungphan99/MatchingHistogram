# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/dungba/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/182.3684.76/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/dungba/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/182.3684.76/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dungba/Dev/XLA/MatchingHistogram

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dungba/Dev/XLA/MatchingHistogram/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/addlut.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/addlut.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/addlut.dir/flags.make

CMakeFiles/addlut.dir/main.cpp.o: CMakeFiles/addlut.dir/flags.make
CMakeFiles/addlut.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/dungba/Dev/XLA/MatchingHistogram/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/addlut.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/addlut.dir/main.cpp.o -c /Users/dungba/Dev/XLA/MatchingHistogram/main.cpp

CMakeFiles/addlut.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/addlut.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/dungba/Dev/XLA/MatchingHistogram/main.cpp > CMakeFiles/addlut.dir/main.cpp.i

CMakeFiles/addlut.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/addlut.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/dungba/Dev/XLA/MatchingHistogram/main.cpp -o CMakeFiles/addlut.dir/main.cpp.s

# Object files for target addlut
addlut_OBJECTS = \
"CMakeFiles/addlut.dir/main.cpp.o"

# External object files for target addlut
addlut_EXTERNAL_OBJECTS =

addlut: CMakeFiles/addlut.dir/main.cpp.o
addlut: CMakeFiles/addlut.dir/build.make
addlut: /usr/local/lib/libopencv_dnn.3.4.2.dylib
addlut: /usr/local/lib/libopencv_ml.3.4.2.dylib
addlut: /usr/local/lib/libopencv_objdetect.3.4.2.dylib
addlut: /usr/local/lib/libopencv_shape.3.4.2.dylib
addlut: /usr/local/lib/libopencv_stitching.3.4.2.dylib
addlut: /usr/local/lib/libopencv_superres.3.4.2.dylib
addlut: /usr/local/lib/libopencv_videostab.3.4.2.dylib
addlut: /usr/local/lib/libopencv_calib3d.3.4.2.dylib
addlut: /usr/local/lib/libopencv_features2d.3.4.2.dylib
addlut: /usr/local/lib/libopencv_flann.3.4.2.dylib
addlut: /usr/local/lib/libopencv_highgui.3.4.2.dylib
addlut: /usr/local/lib/libopencv_photo.3.4.2.dylib
addlut: /usr/local/lib/libopencv_video.3.4.2.dylib
addlut: /usr/local/lib/libopencv_videoio.3.4.2.dylib
addlut: /usr/local/lib/libopencv_imgcodecs.3.4.2.dylib
addlut: /usr/local/lib/libopencv_imgproc.3.4.2.dylib
addlut: /usr/local/lib/libopencv_core.3.4.2.dylib
addlut: CMakeFiles/addlut.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/dungba/Dev/XLA/MatchingHistogram/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable addlut"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/addlut.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/addlut.dir/build: addlut

.PHONY : CMakeFiles/addlut.dir/build

CMakeFiles/addlut.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/addlut.dir/cmake_clean.cmake
.PHONY : CMakeFiles/addlut.dir/clean

CMakeFiles/addlut.dir/depend:
	cd /Users/dungba/Dev/XLA/MatchingHistogram/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dungba/Dev/XLA/MatchingHistogram /Users/dungba/Dev/XLA/MatchingHistogram /Users/dungba/Dev/XLA/MatchingHistogram/cmake-build-debug /Users/dungba/Dev/XLA/MatchingHistogram/cmake-build-debug /Users/dungba/Dev/XLA/MatchingHistogram/cmake-build-debug/CMakeFiles/addlut.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/addlut.dir/depend

