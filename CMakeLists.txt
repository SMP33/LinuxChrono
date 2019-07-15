cmake_minimum_required(VERSION 3.5)

project (LinuxChrono)

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++1y -Wall")

include_directories("${PROJECT_BINARY_DIR}")
include_directories("${PROJECT_SOURCE_DIR}/include")





#-------------------- Create a library -----------------------------------------
#Generate the shared library from the library sources
#-------------------------------------------------------------------------------
add_library(${PROJECT_NAME}_lib STATIC 
            LinuxChrono.cpp
          )

target_include_directories(${PROJECT_NAME}_lib
    PUBLIC 
        ${PROJECT_SOURCE_DIR}
)

#------------------- Create an executable --------------------------------------
file(GLOB 
          CPP_SOURCES "LinuxChrono_test.cpp")
          
add_executable(${PROJECT_NAME} ${CPP_SOURCES})

# link the new library target with the binary target
target_link_libraries( ${PROJECT_NAME}
    PRIVATE 
        ${PROJECT_NAME}_lib
)



install(FILES LinuxChrono.h DESTINATION include)
install(FILES LinuxChronoConfig.cmake DESTINATION lib/cmake/LinuxChrono)

install(FILES build/lib${PROJECT_NAME}_lib.a DESTINATION lib)