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
include CMakeFiles/restApiTests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/restApiTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/restApiTests.dir/flags.make

CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.o: CMakeFiles/restApiTests.dir/flags.make
CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.o: ../test/okapi_test/ok_rest_api_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/okex/okcoin_bot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.o -c /root/okex/okcoin_bot/test/okapi_test/ok_rest_api_test.cpp

CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/okex/okcoin_bot/test/okapi_test/ok_rest_api_test.cpp > CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.i

CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/okex/okcoin_bot/test/okapi_test/ok_rest_api_test.cpp -o CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.s

# Object files for target restApiTests
restApiTests_OBJECTS = \
"CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.o"

# External object files for target restApiTests
restApiTests_EXTERNAL_OBJECTS =

restApiTests: CMakeFiles/restApiTests.dir/test/okapi_test/ok_rest_api_test.cpp.o
restApiTests: CMakeFiles/restApiTests.dir/build.make
restApiTests: lib/gtest-1.8.0/libgtest.a
restApiTests: lib/gtest-1.8.0/libgtest_main.a
restApiTests: libokcoin_lib.a
restApiTests: /usr/local/lib/libcurl.so
restApiTests: lib/gtest-1.8.0/libgtest.a
restApiTests: CMakeFiles/restApiTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/okex/okcoin_bot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable restApiTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/restApiTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/restApiTests.dir/build: restApiTests

.PHONY : CMakeFiles/restApiTests.dir/build

CMakeFiles/restApiTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/restApiTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/restApiTests.dir/clean

CMakeFiles/restApiTests.dir/depend:
	cd /root/okex/okcoin_bot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/okex/okcoin_bot /root/okex/okcoin_bot /root/okex/okcoin_bot/build /root/okex/okcoin_bot/build /root/okex/okcoin_bot/build/CMakeFiles/restApiTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/restApiTests.dir/depend
