#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Poco::Zip" for configuration "MinSizeRel"
set_property(TARGET Poco::Zip APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(Poco::Zip PROPERTIES
  IMPORTED_IMPLIB_MINSIZEREL "${_IMPORT_PREFIX}/lib/PocoZip.lib"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/bin/PocoZip.dll"
  )

list(APPEND _cmake_import_check_targets Poco::Zip )
list(APPEND _cmake_import_check_files_for_Poco::Zip "${_IMPORT_PREFIX}/lib/PocoZip.lib" "${_IMPORT_PREFIX}/bin/PocoZip.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
