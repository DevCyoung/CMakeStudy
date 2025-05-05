#Comment

#[=[
hello world!
#]=]

#필요한 CMake 최소 버전 명시
#해당하는 버전일때만 CMake가 빌드 파일을 생성할 수 있음
cmake_minimum_required(VERSION 3.0.0)

#프로젝트 정의
project(command VERSION 0.0.1 LANGUAGES C CXX)

#메세지 출력
message(STATUS "this is command message")

#변수 생성
set(_variable CMake)

#변수 참조
message("This is a var=${_variable}")

#변수 파괴
unset(_variable)

#옵션 정의
option(BUILD_SAMPLE_OPTION "Enable build Examples." ON)

#옵션 출력
message(STATUS "Hello Option ${BUILD_SAMPLE_OPTION}")

# 리스트 생성
list(APPEND FILES foo.cpp bar.cpp qux.cpp)

# 리스트 길이 조회
list(LENGTH FILES NUM_FILES)

# 리스트와 정보 출력
message("File List[${NUM_FILES}]:[${FILES}]")

# 리스트 검색
list(FIND FILES bar.cpp baz_cpp_index)
message("FIND FILE bar.cpp ${baz_cpp_index}")

list(FIND FILES none baz_cpp_index)
message("FIND FILE none ${baz_cpp_index}")

list(SORT FILES)
message("SORTED FILES ${FILES}")

# 조건문 처리
if(APPLE)
    message(STATUS "My system is macOS")
elseif(WIN32)
    message(STATUS "My system is Windows")
elseif(UNIX)
    message(STATUS "My system is Linux")
else()
    message(STATUS "My system is unknown")
endif()

# 반복문
foreach(FILE IN LISTS FILES)
    message("${FILE} is in the list")
endforeach()

# 빌드에 포함할 소스 디렉토리를 추가
#add_subdirectory(cmake)

# 실행파일 컴파일 옵션 추가
add_compile_options(-W4)

# 실행 타겟을 정의
add_executable(foo src/main.cpp)

# 라이브러리 타겟을 정의
add_library(bar STATIC
    lib/bar/include/bar.h
    lib/bar/src/bar.cpp
)

# 타겟의 속성을 설정
set_target_properties(foo PROPERTIES
    WINDOWS_EXPORT_ALL_SYMBOLS YES
    MACOSX_BUNDLE YES
)

# 타겟을 링킹할 때 필요한 타겟이나 라이브러리를 지정
# foo 가 링킹될때 bar 라이브러리가 필요 bar 타겟이 먼저 빌드되는지 확인필요
target_link_libraries(foo PRIVATE bar)

#타겟에 명시된 소스 파일을 추가
target_sources(foo PRIVATE src/baz.h src/baz.cpp)

#컴파일 디파인 지정
#foo 타겟파일은 모두 NOMINMAX 지정
target_compile_definitions(foo PRIVATE NOMINMAX)

# 타겟을 컴파일할 때 사용할 인클루드 디렉토리를 지정
# bar를 링크하는 foo가 이 디렉토리에 접근할 수 있음
target_include_directories(bar PUBLIC lib/bar/include)

# 타겟을 컴파일할 때 사용할 컴파일 옵션을 지정
target_compile_options(bar PRIVATE -pedantic)