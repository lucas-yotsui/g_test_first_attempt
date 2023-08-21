set(COMPILER_WARNINGS 
        -Wall 
        -Wextra 
        -pedantic 
        -MD 
        -fno-exceptions 
    )

set(INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)

# Use any extension you want bro
file(GLOB_RECURSE SOURCES 
        ${CMAKE_SOURCE_DIR}/source/*.c
        ${CMAKE_SOURCE_DIR}/source/*.C # funny enough, this one is not a c equivalent, but rather a c++ one
        ${CMAKE_SOURCE_DIR}/source/*.cpp
        ${CMAKE_SOURCE_DIR}/source/*.CPP
        ${CMAKE_SOURCE_DIR}/source/*.c++
        ${CMAKE_SOURCE_DIR}/source/*.cxx
        ${CMAKE_SOURCE_DIR}/source/*.cc
        ${CMAKE_SOURCE_DIR}/source/*.cp
        ${CMAKE_SOURCE_DIR}/app/*.c
        ${CMAKE_SOURCE_DIR}/app/*.C # funny enough, this one is not a c equivalent, but rather a c++ one
        ${CMAKE_SOURCE_DIR}/app/*.cpp
        ${CMAKE_SOURCE_DIR}/app/*.CPP
        ${CMAKE_SOURCE_DIR}/app/*.c++
        ${CMAKE_SOURCE_DIR}/app/*.cxx
        ${CMAKE_SOURCE_DIR}/app/*.cc
        ${CMAKE_SOURCE_DIR}/app/*.cp
    )
    
file(GLOB_RECURSE HEADERS 
        ${INCLUDE_DIR}/*.h 
        ${INCLUDE_DIR}/*.H # funny enough, this one is not a h equivalent, but rather a hpp one
        ${INCLUDE_DIR}/*.hh 
        ${INCLUDE_DIR}/*.hpp
        ${INCLUDE_DIR}/*.h++
        ${INCLUDE_DIR}/*.hxx
    )
    
file(GLOB_RECURSE TESTS 
        ${CMAKE_SOURCE_DIR}/tests/*.c
        ${CMAKE_SOURCE_DIR}/tests/*.C # funny enough, this one is not a c equivalent, but rather a c++ one
        ${CMAKE_SOURCE_DIR}/tests/*.cpp
        ${CMAKE_SOURCE_DIR}/tests/*.CPP
        ${CMAKE_SOURCE_DIR}/tests/*.c++
        ${CMAKE_SOURCE_DIR}/tests/*.cxx
        ${CMAKE_SOURCE_DIR}/tests/*.cc
        ${CMAKE_SOURCE_DIR}/tests/*.cp
    )