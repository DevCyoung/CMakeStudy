cmake_minimum_required(VERSION 3.0.0)

project(variable)

set(I_AM_VARIABLE TRUE)

message(STATUS ${I_AM_VARIABLE})

message(STATUS "System Name: ${CMAKE_SYSTEM_NAME}")
message(STATUS "System Version: ${CMAKE_SYSTEM_VERSION}")
message(STATUS "C++ Compiler: ${CMAKE_CXX_COMPILER}")
message(STATUS "Install Prefix: ${CMAKE_INSTALL_PREFIX}")


if (${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    message(STATUS "OS is Windows")
endif()

if (WIN32)
    message(STATUS "OS is Win32")
elseif(LINUX)
    message(STATUS "OS is LINUX")
endif( )


# FALSE면 정적 TRUE면 동적
set(BUILD_SHARED_LIBS FALSE)
add_library(foo
    src/foo.cpp
)

install(TARGETS foo DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)