cmake_minimum_required(VERSION 3.0 FATAL_ERROR)
project(CIFAR_image_detection)

# USER flags (change here) ################################################
# Optimization
set(USE_SSE ON)
set(USE_AVX ON)
set(USE_AVX2 ON)
###########################################################################

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

# Optimization flags ######################################################
# Unix
if(CMAKE_COMPILER_IS_GNUCXX OR MINGW OR
   CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    include(CheckCXXCompilerFlag)
    check_cxx_compiler_flag("-msse3" COMPILER_HAS_SSE_FLAG)
    check_cxx_compiler_flag("-mavx"  COMPILER_HAS_AVX_FLAG)
    check_cxx_compiler_flag("-mavx2" COMPILER_HAS_AVX2_FLAG)

    # set Streaming SIMD Extension (SSE) instructions
    if(USE_SSE AND COMPILER_HAS_SSE_FLAG)
        set(EXTRA_C_FLAGS "${EXTRA_C_FLAGS} -msse3")
    endif(USE_SSE AND COMPILER_HAS_SSE_FLAG)
    # set Advanced Vector Extensions (AVX)
    if(USE_AVX AND COMPILER_HAS_AVX_FLAG)
        set(EXTRA_C_FLAGS "${EXTRA_C_FLAGS} -mavx")
    endif(USE_AVX AND COMPILER_HAS_AVX_FLAG)
    # set Advanced Vector Extensions 2 (AVX2)
    if(USE_AVX2 AND COMPILER_HAS_AVX2_FLAG)
        set(EXTRA_C_FLAGS "${EXTRA_C_FLAGS} -mavx2 -march=core-avx2")
    endif(USE_AVX2 AND COMPILER_HAS_AVX2_FLAG)
endif()
###########################################################################

# Compile flags ###########################################################
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -pedantic ${EXTRA_C_FLAGS}")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")
set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g3 -pg -Wall")
SET(CMAKE_EXE_LINKER_FLAGS_DEBUG "${CMAKE_EXE_LINKER_FLAGS_DEBUG} -pg")
SET(CMAKE_SHARED_LINKER_FLAGS_DEBUG "${CMAKE_SHARED_LINKER_FLAGS_DEBUG} -pg")
###########################################################################

# Set source and include folder ###########################################
set(SRC_FOLDER "${CMAKE_CURRENT_LIST_DIR}")
set(HEADER_FOLDER "${CMAKE_CURRENT_LIST_DIR}")
include_directories("${HEADER_FOLDER}")
###########################################################################

# Include EIGEN ###########################################################
include_directories("~/tools/eigen")
###########################################################################

# Include FLARE ###########################################################
include_directories("${CMAKE_CURRENT_LIST_DIR}/../")
###########################################################################

# Setup executables #######################################################
add_executable(CIFAR_image_detection ${SRC_FOLDER}/main.cpp)
set_property(TARGET CIFAR_image_detection PROPERTY CXX_STANDARD 17)
###########################################################################
