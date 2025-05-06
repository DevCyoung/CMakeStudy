cmake_minimum_required(VERSION 3.21.0)


project(package-manager)

# 사용할 C++ 버전을 20으로 설정
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_TOOLCHAIN_FILE C:/Command/vcpkg/scripts/buildsystems/vcpkg.cmake)

# 컴파일러에 따른 컴파일 옵션 설정
if(MSVC)
    add_compile_options(/W3 /WX)
else()
    add_compile_options(-Wall -Werror)
endif()

# 필요한 패키지 찾기
find_package(fmt CONFIG REQUIRED)
find_package(imgui CONFIG REQUIRED)
find_package(implot CONFIG REQUIRED)

# 타겟 프로그램 정의
add_executable(main src/main.cpp)

#타겟을 링킹할 때 필요한 타겟이나 라이브러리를 지정
target_link_libraries(main
PRIVATE
    fmt::fmt
    imgui::imgui
    implot::implot
)