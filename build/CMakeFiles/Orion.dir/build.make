# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/macross/Desktop/OrionNN

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/macross/Desktop/OrionNN/build

# Include any dependencies generated for this target.
include CMakeFiles/Orion.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Orion.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Orion.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Orion.dir/flags.make

CMakeFiles/Orion.dir/orion/layers/embedding.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/layers/embedding.cpp.o: /Users/macross/Desktop/OrionNN/orion/layers/embedding.cpp
CMakeFiles/Orion.dir/orion/layers/embedding.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Orion.dir/orion/layers/embedding.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/layers/embedding.cpp.o -MF CMakeFiles/Orion.dir/orion/layers/embedding.cpp.o.d -o CMakeFiles/Orion.dir/orion/layers/embedding.cpp.o -c /Users/macross/Desktop/OrionNN/orion/layers/embedding.cpp

CMakeFiles/Orion.dir/orion/layers/embedding.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/layers/embedding.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/layers/embedding.cpp > CMakeFiles/Orion.dir/orion/layers/embedding.cpp.i

CMakeFiles/Orion.dir/orion/layers/embedding.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/layers/embedding.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/layers/embedding.cpp -o CMakeFiles/Orion.dir/orion/layers/embedding.cpp.s

CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.o: /Users/macross/Desktop/OrionNN/orion/layers/globalaveragepooling1d.cpp
CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.o -MF CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.o.d -o CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.o -c /Users/macross/Desktop/OrionNN/orion/layers/globalaveragepooling1d.cpp

CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/layers/globalaveragepooling1d.cpp > CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.i

CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/layers/globalaveragepooling1d.cpp -o CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.s

CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.o: /Users/macross/Desktop/OrionNN/orion/layers/maxpooling2d.cpp
CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.o -MF CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.o.d -o CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.o -c /Users/macross/Desktop/OrionNN/orion/layers/maxpooling2d.cpp

CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/layers/maxpooling2d.cpp > CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.i

CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/layers/maxpooling2d.cpp -o CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.s

CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.o: /Users/macross/Desktop/OrionNN/orion/optimizers/adam.cpp
CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.o -MF CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.o.d -o CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.o -c /Users/macross/Desktop/OrionNN/orion/optimizers/adam.cpp

CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/optimizers/adam.cpp > CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.i

CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/optimizers/adam.cpp -o CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.s

CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.o: /Users/macross/Desktop/OrionNN/orion/optimizers/sgd.cpp
CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.o -MF CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.o.d -o CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.o -c /Users/macross/Desktop/OrionNN/orion/optimizers/sgd.cpp

CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/optimizers/sgd.cpp > CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.i

CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/optimizers/sgd.cpp -o CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.s

CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.o: /Users/macross/Desktop/OrionNN/orion/optimizers/rmsprop.cpp
CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.o -MF CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.o.d -o CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.o -c /Users/macross/Desktop/OrionNN/orion/optimizers/rmsprop.cpp

CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/optimizers/rmsprop.cpp > CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.i

CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/optimizers/rmsprop.cpp -o CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.s

CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.o: /Users/macross/Desktop/OrionNN/orion/loss/binary_cross_entropy.cpp
CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.o -MF CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.o.d -o CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.o -c /Users/macross/Desktop/OrionNN/orion/loss/binary_cross_entropy.cpp

CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/loss/binary_cross_entropy.cpp > CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.i

CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/loss/binary_cross_entropy.cpp -o CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.s

CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.o: /Users/macross/Desktop/OrionNN/orion/loss/mean_squared_error.cpp
CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.o -MF CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.o.d -o CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.o -c /Users/macross/Desktop/OrionNN/orion/loss/mean_squared_error.cpp

CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/loss/mean_squared_error.cpp > CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.i

CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/loss/mean_squared_error.cpp -o CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.s

CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.o: /Users/macross/Desktop/OrionNN/orion/loss/categorical_cross_entropy.cpp
CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.o -MF CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.o.d -o CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.o -c /Users/macross/Desktop/OrionNN/orion/loss/categorical_cross_entropy.cpp

CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/loss/categorical_cross_entropy.cpp > CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.i

CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/loss/categorical_cross_entropy.cpp -o CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.s

CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.o: /Users/macross/Desktop/OrionNN/orion/loss/mean_absolute_error.cpp
CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.o -MF CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.o.d -o CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.o -c /Users/macross/Desktop/OrionNN/orion/loss/mean_absolute_error.cpp

CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/loss/mean_absolute_error.cpp > CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.i

CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/loss/mean_absolute_error.cpp -o CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.s

CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.o: /Users/macross/Desktop/OrionNN/orion/loss/kl_divergence.cpp
CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.o -MF CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.o.d -o CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.o -c /Users/macross/Desktop/OrionNN/orion/loss/kl_divergence.cpp

CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/loss/kl_divergence.cpp > CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.i

CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/loss/kl_divergence.cpp -o CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.s

CMakeFiles/Orion.dir/orion/main.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/main.cpp.o: /Users/macross/Desktop/OrionNN/orion/main.cpp
CMakeFiles/Orion.dir/orion/main.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/Orion.dir/orion/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/main.cpp.o -MF CMakeFiles/Orion.dir/orion/main.cpp.o.d -o CMakeFiles/Orion.dir/orion/main.cpp.o -c /Users/macross/Desktop/OrionNN/orion/main.cpp

CMakeFiles/Orion.dir/orion/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/main.cpp > CMakeFiles/Orion.dir/orion/main.cpp.i

CMakeFiles/Orion.dir/orion/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/main.cpp -o CMakeFiles/Orion.dir/orion/main.cpp.s

CMakeFiles/Orion.dir/orion/sequential.cpp.o: CMakeFiles/Orion.dir/flags.make
CMakeFiles/Orion.dir/orion/sequential.cpp.o: /Users/macross/Desktop/OrionNN/orion/sequential.cpp
CMakeFiles/Orion.dir/orion/sequential.cpp.o: CMakeFiles/Orion.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/Orion.dir/orion/sequential.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Orion.dir/orion/sequential.cpp.o -MF CMakeFiles/Orion.dir/orion/sequential.cpp.o.d -o CMakeFiles/Orion.dir/orion/sequential.cpp.o -c /Users/macross/Desktop/OrionNN/orion/sequential.cpp

CMakeFiles/Orion.dir/orion/sequential.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Orion.dir/orion/sequential.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/macross/Desktop/OrionNN/orion/sequential.cpp > CMakeFiles/Orion.dir/orion/sequential.cpp.i

CMakeFiles/Orion.dir/orion/sequential.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Orion.dir/orion/sequential.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/macross/Desktop/OrionNN/orion/sequential.cpp -o CMakeFiles/Orion.dir/orion/sequential.cpp.s

# Object files for target Orion
Orion_OBJECTS = \
"CMakeFiles/Orion.dir/orion/layers/embedding.cpp.o" \
"CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.o" \
"CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.o" \
"CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.o" \
"CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.o" \
"CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.o" \
"CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.o" \
"CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.o" \
"CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.o" \
"CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.o" \
"CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.o" \
"CMakeFiles/Orion.dir/orion/main.cpp.o" \
"CMakeFiles/Orion.dir/orion/sequential.cpp.o"

# External object files for target Orion
Orion_EXTERNAL_OBJECTS =

/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/layers/embedding.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/layers/globalaveragepooling1d.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/layers/maxpooling2d.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/optimizers/adam.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/optimizers/sgd.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/optimizers/rmsprop.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/loss/binary_cross_entropy.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/loss/mean_squared_error.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/loss/categorical_cross_entropy.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/loss/mean_absolute_error.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/loss/kl_divergence.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/main.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/orion/sequential.cpp.o
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/build.make
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_gapi.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_highgui.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_ml.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_objdetect.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_photo.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_stitching.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_video.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_videoio.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_imgcodecs.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_dnn.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_calib3d.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_features2d.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_flann.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_imgproc.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: /Users/macross/Desktop/OrionNN/lib/opencv/lib/libopencv_core.4.6.0.dylib
/Users/macross/Desktop/OrionNN/bin/Orion: CMakeFiles/Orion.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/macross/Desktop/OrionNN/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable /Users/macross/Desktop/OrionNN/bin/Orion"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Orion.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Orion.dir/build: /Users/macross/Desktop/OrionNN/bin/Orion
.PHONY : CMakeFiles/Orion.dir/build

CMakeFiles/Orion.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Orion.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Orion.dir/clean

CMakeFiles/Orion.dir/depend:
	cd /Users/macross/Desktop/OrionNN/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/macross/Desktop/OrionNN /Users/macross/Desktop/OrionNN /Users/macross/Desktop/OrionNN/build /Users/macross/Desktop/OrionNN/build /Users/macross/Desktop/OrionNN/build/CMakeFiles/Orion.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Orion.dir/depend
