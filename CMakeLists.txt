# ------------------------------------ Project definitions ------------------------------------ #
cmake_minimum_required(VERSION 3.24)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

include(${CMAKE_SOURCE_DIR}/cmake/CMakeOptions.cmake)
include(FetchContent)
# --------------------------------------------------------------------------------------------- #


# --------------------------------------- Build section --------------------------------------- #
project(
    google_test_first_attempt
    VERSION 0.1
    DESCRIPTION "First attempt at using Google Tests"
)

include_directories(BEFORE ${INCLUDE_DIR})

add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})

target_compile_options(${PROJECT_NAME} PRIVATE ${COMPILER_WARNINGS})
# --------------------------------------------------------------------------------------------- #


# -------------------------------------- Testing section -------------------------------------- #
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/03597a01ee50ed33e9dfd640b249b4be3799d395.zip
)
FetchContent_MakeAvailable(googletest)

enable_testing()

add_executable(${PROJECT_NAME}_test ${TESTS})

target_link_libraries(
    ${PROJECT_NAME}_test
    GTest::gtest_main
)

include(GoogleTest)
gtest_discover_tests(${PROJECT_NAME}_test)
# --------------------------------------------------------------------------------------------- #