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
include lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/depend.make

# Include the progress variables for this target.
include lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/progress.make

# Include the compile flags for this target's objects.
include lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/flags.make

lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/build_toml.cpp.o: lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/flags.make
lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/build_toml.cpp.o: ../lib/cpptoml-master-20170107/examples/build_toml.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/okex/okcoin_bot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/build_toml.cpp.o"
	cd /root/okex/okcoin_bot/build/lib/cpptoml-master-20170107/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpptoml-build.dir/build_toml.cpp.o -c /root/okex/okcoin_bot/lib/cpptoml-master-20170107/examples/build_toml.cpp

lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/build_toml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpptoml-build.dir/build_toml.cpp.i"
	cd /root/okex/okcoin_bot/build/lib/cpptoml-master-20170107/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/okex/okcoin_bot/lib/cpptoml-master-20170107/examples/build_toml.cpp > CMakeFiles/cpptoml-build.dir/build_toml.cpp.i

lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/build_toml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpptoml-build.dir/build_toml.cpp.s"
	cd /root/okex/okcoin_bot/build/lib/cpptoml-master-20170107/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/okex/okcoin_bot/lib/cpptoml-master-20170107/examples/build_toml.cpp -o CMakeFiles/cpptoml-build.dir/build_toml.cpp.s

# Object files for target cpptoml-build
cpptoml__build_OBJECTS = \
"CMakeFiles/cpptoml-build.dir/build_toml.cpp.o"

# External object files for target cpptoml-build
cpptoml__build_EXTERNAL_OBJECTS =

lib/cpptoml-master-20170107/cpptoml-build: lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/build_toml.cpp.o
lib/cpptoml-master-20170107/cpptoml-build: lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/build.make
lib/cpptoml-master-20170107/cpptoml-build: lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/okex/okcoin_bot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../cpptoml-build"
	cd /root/okex/okcoin_bot/build/lib/cpptoml-master-20170107/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpptoml-build.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/build: lib/cpptoml-master-20170107/cpptoml-build

.PHONY : lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/build

lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/clean:
	cd /root/okex/okcoin_bot/build/lib/cpptoml-master-20170107/examples && $(CMAKE_COMMAND) -P CMakeFiles/cpptoml-build.dir/cmake_clean.cmake
.PHONY : lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/clean

lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/depend:
	cd /root/okex/okcoin_bot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/okex/okcoin_bot /root/okex/okcoin_bot/lib/cpptoml-master-20170107/examples /root/okex/okcoin_bot/build /root/okex/okcoin_bot/build/lib/cpptoml-master-20170107/examples /root/okex/okcoin_bot/build/lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/cpptoml-master-20170107/examples/CMakeFiles/cpptoml-build.dir/depend

