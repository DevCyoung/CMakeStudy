# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.8)
   message(FATAL_ERROR "CMake >= 2.8.3 required")
endif()
if(CMAKE_VERSION VERSION_LESS "2.8.3")
   message(FATAL_ERROR "CMake >= 2.8.3 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.8.3...3.29)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_cmake_targets_defined "")
set(_cmake_targets_not_defined "")
set(_cmake_expected_targets "")
foreach(_cmake_expected_target IN ITEMS Poco::DataODBC)
  list(APPEND _cmake_expected_targets "${_cmake_expected_target}")
  if(TARGET "${_cmake_expected_target}")
    list(APPEND _cmake_targets_defined "${_cmake_expected_target}")
  else()
    list(APPEND _cmake_targets_not_defined "${_cmake_expected_target}")
  endif()
endforeach()
unset(_cmake_expected_target)
if(_cmake_targets_defined STREQUAL _cmake_expected_targets)
  unset(_cmake_targets_defined)
  unset(_cmake_targets_not_defined)
  unset(_cmake_expected_targets)
  unset(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT _cmake_targets_defined STREQUAL "")
  string(REPLACE ";" ", " _cmake_targets_defined_text "${_cmake_targets_defined}")
  string(REPLACE ";" ", " _cmake_targets_not_defined_text "${_cmake_targets_not_defined}")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_cmake_targets_defined_text}\nTargets not yet defined: ${_cmake_targets_not_defined_text}\n")
endif()
unset(_cmake_targets_defined)
unset(_cmake_targets_not_defined)
unset(_cmake_expected_targets)


# Create imported target Poco::DataODBC
add_library(Poco::DataODBC SHARED IMPORTED)

set_target_properties(Poco::DataODBC PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "THREADSAFE"
  INTERFACE_INCLUDE_DIRECTORIES "C:/opengl/fetch-content/build/_deps/poco-src/Data/ODBC/include"
  INTERFACE_LINK_LIBRARIES "Poco::Data;ODBC::ODBC"
)

# Import target "Poco::DataODBC" for configuration "Debug"
set_property(TARGET Poco::DataODBC APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Poco::DataODBC PROPERTIES
  IMPORTED_IMPLIB_DEBUG "C:/opengl/fetch-content/build/lib/Debug/PocoDataODBCd.lib"
  IMPORTED_LOCATION_DEBUG "C:/opengl/fetch-content/build/bin/Debug/PocoDataODBCd.dll"
  )

# Import target "Poco::DataODBC" for configuration "Release"
set_property(TARGET Poco::DataODBC APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Poco::DataODBC PROPERTIES
  IMPORTED_IMPLIB_RELEASE "C:/opengl/fetch-content/build/lib/Release/PocoDataODBC.lib"
  IMPORTED_LOCATION_RELEASE "C:/opengl/fetch-content/build/bin/Release/PocoDataODBC.dll"
  )

# Import target "Poco::DataODBC" for configuration "MinSizeRel"
set_property(TARGET Poco::DataODBC APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(Poco::DataODBC PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "C:/opengl/fetch-content/build/lib/MinSizeRel/PocoDataODBC.lib"
  IMPORTED_LOCATION_MINSIZEREL "C:/opengl/fetch-content/build/bin/MinSizeRel/PocoDataODBC.dll"
  )

# Import target "Poco::DataODBC" for configuration "RelWithDebInfo"
set_property(TARGET Poco::DataODBC APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Poco::DataODBC PROPERTIES
  IMPORTED_IMPLIB_RELWITHDEBINFO "C:/opengl/fetch-content/build/lib/RelWithDebInfo/PocoDataODBC.lib"
  IMPORTED_LOCATION_RELWITHDEBINFO "C:/opengl/fetch-content/build/bin/RelWithDebInfo/PocoDataODBC.dll"
  )

# Make sure the targets which have been exported in some other
# export set exist.
unset(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)
foreach(_target "Poco::Data" )
  if(NOT TARGET "${_target}" )
    set(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets "${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets} ${_target}")
  endif()
endforeach()

if(DEFINED ${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)
  if(CMAKE_FIND_PACKAGE_NAME)
    set( ${CMAKE_FIND_PACKAGE_NAME}_FOUND FALSE)
    set( ${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE "The following imported targets are referenced, but are missing: ${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets}")
  else()
    message(FATAL_ERROR "The following imported targets are referenced, but are missing: ${${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets}")
  endif()
endif()
unset(${CMAKE_FIND_PACKAGE_NAME}_NOT_FOUND_MESSAGE_targets)

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
