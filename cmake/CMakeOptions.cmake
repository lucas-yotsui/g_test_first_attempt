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
    ${CMAKE_SOURCE_DIR}/source/*.cpp
)
    
file(GLOB_RECURSE HEADERS 
    ${INCLUDE_DIR}/*.h 
    ${INCLUDE_DIR}/*.hpp
)
    
file(GLOB_RECURSE TESTS 
    ${CMAKE_SOURCE_DIR}/tests/*.cpp
)