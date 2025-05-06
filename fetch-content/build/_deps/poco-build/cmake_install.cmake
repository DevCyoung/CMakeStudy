# Install script for directory: C:/opengl/fetch-content/build/_deps/poco-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/fetch-content")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES
    "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.40.33807/x64/Microsoft.VC143.CRT/msvcp140.dll"
    "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.40.33807/x64/Microsoft.VC143.CRT/msvcp140_1.dll"
    "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.40.33807/x64/Microsoft.VC143.CRT/msvcp140_2.dll"
    "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.40.33807/x64/Microsoft.VC143.CRT/msvcp140_atomic_wait.dll"
    "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.40.33807/x64/Microsoft.VC143.CRT/msvcp140_codecvt_ids.dll"
    "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.40.33807/x64/Microsoft.VC143.CRT/vcruntime140_1.dll"
    "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.40.33807/x64/Microsoft.VC143.CRT/vcruntime140.dll"
    "C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Redist/MSVC/14.40.33807/x64/Microsoft.VC143.CRT/concrt140.dll"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE DIRECTORY FILES "")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "C:/opengl/fetch-content/build/_deps/poco-build/Poco/PocoConfig.cmake"
    "C:/opengl/fetch-content/build/_deps/poco-build/Poco/PocoConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/opengl/fetch-content/build/_deps/poco-build/Foundation/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/Encodings/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/XML/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/JSON/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/Util/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/Net/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/MongoDB/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/Redis/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/Prometheus/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/Data/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/ActiveRecord/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/ActiveRecord/Compiler/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/Zip/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/PageCompiler/cmake_install.cmake")
  include("C:/opengl/fetch-content/build/_deps/poco-build/PageCompiler/File2Page/cmake_install.cmake")

endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/opengl/fetch-content/build/_deps/poco-build/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
