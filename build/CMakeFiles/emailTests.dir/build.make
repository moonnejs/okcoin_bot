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
include CMakeFiles/emailTests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/emailTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/emailTests.dir/flags.make

CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.o: CMakeFiles/emailTests.dir/flags.make
CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.o: ../test/email/test_email.cpp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/okex/okcoin_bot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.o -c /root/okex/okcoin_bot/test/email/test_email.cpp.cpp

CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/okex/okcoin_bot/test/email/test_email.cpp.cpp > CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.i

CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/okex/okcoin_bot/test/email/test_email.cpp.cpp -o CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.s

# Object files for target emailTests
emailTests_OBJECTS = \
"CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.o"

# External object files for target emailTests
emailTests_EXTERNAL_OBJECTS =

emailTests: CMakeFiles/emailTests.dir/test/email/test_email.cpp.cpp.o
emailTests: CMakeFiles/emailTests.dir/build.make
emailTests: lib/gtest-1.8.0/libgtest.a
emailTests: lib/gtest-1.8.0/libgtest_main.a
emailTests: /usr/local/lib/libboost_system.so
emailTests: /usr/local/lib/libboost_filesystem.so
emailTests: /usr/local/lib/libboost_regex.so
emailTests: lib/gtest-1.8.0/libgtest.a
emailTests: CMakeFiles/emailTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/okex/okcoin_bot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable emailTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/emailTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/emailTests.dir/build: emailTests

.PHONY : CMakeFiles/emailTests.dir/build

CMakeFiles/emailTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/emailTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/emailTests.dir/clean

CMakeFiles/emailTests.dir/depend:
	cd /root/okex/okcoin_bot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/okex/okcoin_bot /root/okex/okcoin_bot /root/okex/okcoin_bot/build /root/okex/okcoin_bot/build /root/okex/okcoin_bot/build/CMakeFiles/emailTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/emailTests.dir/depend

