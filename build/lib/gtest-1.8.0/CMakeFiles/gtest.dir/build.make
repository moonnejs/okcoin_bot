# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

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
CMAKE_COMMAND = /opt/cmake-3.11.3-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /opt/cmake-3.11.3-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/okex/okcoin_bot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/okex/okcoin_bot/build

# Include any dependencies generated for this target.
include lib/gtest-1.8.0/CMakeFiles/gtest.dir/depend.make

# Include the progress variables for this target.
include lib/gtest-1.8.0/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include lib/gtest-1.8.0/CMakeFiles/gtest.dir/flags.make

lib/gtest-1.8.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o: lib/gtest-1.8.0/CMakeFiles/gtest.dir/flags.make
lib/gtest-1.8.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o: ../lib/gtest-1.8.0/src/gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/okex/okcoin_bot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/gtest-1.8.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o"
	cd /root/okex/okcoin_bot/build/lib/gtest-1.8.0 && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest.dir/src/gtest-all.cc.o -c /root/okex/okcoin_bot/lib/gtest-1.8.0/src/gtest-all.cc

lib/gtest-1.8.0/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /root/okex/okcoin_bot/build/lib/gtest-1.8.0 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/okex/okcoin_bot/lib/gtest-1.8.0/src/gtest-all.cc > CMakeFiles/gtest.dir/src/gtest-all.cc.i

lib/gtest-1.8.0/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /root/okex/okcoin_bot/build/lib/gtest-1.8.0 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/okex/okcoin_bot/lib/gtest-1.8.0/src/gtest-all.cc -o CMakeFiles/gtest.dir/src/gtest-all.cc.s

# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/src/gtest-all.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

lib/gtest-1.8.0/libgtest.a: lib/gtest-1.8.0/CMakeFiles/gtest.dir/src/gtest-all.cc.o
lib/gtest-1.8.0/libgtest.a: lib/gtest-1.8.0/CMakeFiles/gtest.dir/build.make
lib/gtest-1.8.0/libgtest.a: lib/gtest-1.8.0/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/okex/okcoin_bot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtest.a"
	cd /root/okex/okcoin_bot/build/lib/gtest-1.8.0 && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean_target.cmake
	cd /root/okex/okcoin_bot/build/lib/gtest-1.8.0 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/gtest-1.8.0/CMakeFiles/gtest.dir/build: lib/gtest-1.8.0/libgtest.a

.PHONY : lib/gtest-1.8.0/CMakeFiles/gtest.dir/build

lib/gtest-1.8.0/CMakeFiles/gtest.dir/clean:
	cd /root/okex/okcoin_bot/build/lib/gtest-1.8.0 && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : lib/gtest-1.8.0/CMakeFiles/gtest.dir/clean

lib/gtest-1.8.0/CMakeFiles/gtest.dir/depend:
	cd /root/okex/okcoin_bot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/okex/okcoin_bot /root/okex/okcoin_bot/lib/gtest-1.8.0 /root/okex/okcoin_bot/build /root/okex/okcoin_bot/build/lib/gtest-1.8.0 /root/okex/okcoin_bot/build/lib/gtest-1.8.0/CMakeFiles/gtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/gtest-1.8.0/CMakeFiles/gtest.dir/depend

