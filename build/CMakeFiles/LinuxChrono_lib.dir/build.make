# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/LinuxChrono

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/LinuxChrono/build

# Include any dependencies generated for this target.
include CMakeFiles/LinuxChrono_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LinuxChrono_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LinuxChrono_lib.dir/flags.make

CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o: CMakeFiles/LinuxChrono_lib.dir/flags.make
CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o: ../LinuxChrono.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/LinuxChrono/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o -c /home/ubuntu/LinuxChrono/LinuxChrono.cpp

CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/LinuxChrono/LinuxChrono.cpp > CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.i

CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/LinuxChrono/LinuxChrono.cpp -o CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.s

CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o.requires:

.PHONY : CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o.requires

CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o.provides: CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o.requires
	$(MAKE) -f CMakeFiles/LinuxChrono_lib.dir/build.make CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o.provides.build
.PHONY : CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o.provides

CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o.provides.build: CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o


# Object files for target LinuxChrono_lib
LinuxChrono_lib_OBJECTS = \
"CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o"

# External object files for target LinuxChrono_lib
LinuxChrono_lib_EXTERNAL_OBJECTS =

libLinuxChrono_lib.a: CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o
libLinuxChrono_lib.a: CMakeFiles/LinuxChrono_lib.dir/build.make
libLinuxChrono_lib.a: CMakeFiles/LinuxChrono_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/LinuxChrono/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libLinuxChrono_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/LinuxChrono_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LinuxChrono_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LinuxChrono_lib.dir/build: libLinuxChrono_lib.a

.PHONY : CMakeFiles/LinuxChrono_lib.dir/build

CMakeFiles/LinuxChrono_lib.dir/requires: CMakeFiles/LinuxChrono_lib.dir/LinuxChrono.cpp.o.requires

.PHONY : CMakeFiles/LinuxChrono_lib.dir/requires

CMakeFiles/LinuxChrono_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LinuxChrono_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LinuxChrono_lib.dir/clean

CMakeFiles/LinuxChrono_lib.dir/depend:
	cd /home/ubuntu/LinuxChrono/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/LinuxChrono /home/ubuntu/LinuxChrono /home/ubuntu/LinuxChrono/build /home/ubuntu/LinuxChrono/build /home/ubuntu/LinuxChrono/build/CMakeFiles/LinuxChrono_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LinuxChrono_lib.dir/depend

