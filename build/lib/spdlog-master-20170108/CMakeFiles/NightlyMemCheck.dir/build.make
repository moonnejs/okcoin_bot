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

# Utility rule file for NightlyMemCheck.

# Include the progress variables for this target.
include lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck.dir/progress.make

lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck:
	cd /root/okex/okcoin_bot/build/lib/spdlog-master-20170108 && /opt/cmake-3.11.3-Linux-x86_64/bin/ctest -D NightlyMemCheck

NightlyMemCheck: lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck
NightlyMemCheck: lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck.dir/build.make

.PHONY : NightlyMemCheck

# Rule to build all files generated by this target.
lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck.dir/build: NightlyMemCheck

.PHONY : lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck.dir/build

lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck.dir/clean:
	cd /root/okex/okcoin_bot/build/lib/spdlog-master-20170108 && $(CMAKE_COMMAND) -P CMakeFiles/NightlyMemCheck.dir/cmake_clean.cmake
.PHONY : lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck.dir/clean

lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck.dir/depend:
	cd /root/okex/okcoin_bot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/okex/okcoin_bot /root/okex/okcoin_bot/lib/spdlog-master-20170108 /root/okex/okcoin_bot/build /root/okex/okcoin_bot/build/lib/spdlog-master-20170108 /root/okex/okcoin_bot/build/lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/spdlog-master-20170108/CMakeFiles/NightlyMemCheck.dir/depend

