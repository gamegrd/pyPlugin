SET( CMAKE_VERBOSE_MAKEFILE on )
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


MESSAGE(STATUS "operation system is ${CMAKE_SYSTEM}")
IF (WIN32)
	MESSAGE(STATUS "------------Now is windows-------------")
 
	if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
	# using Clang
	elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
	# using GCC
	elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Intel")
	# using Intel C++
	elseif ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "MSVC")
		MESSAGE(STATUS "----------------Now is MSVC----------------")
	 	set(CMAKE_CXX_FLAGS_RELEASE "/MT  /O2 /EHa")
		set(CMAKE_C_FLAGS_RELEASE "/MT  /O2 /EHa")
                set(CMAKE_CXX_FLAGS_DEBUG "/MT /Zi /EHa")
                set(CMAKE_C_FLAGS_DEBUG "/MT /Zi /EHa")
		set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "/MT /Zi /EHa")
		set(CMAKE_C_FLAGS_RELWITHDEBINFO "/MT /Zi /EHa")
	endif()

ELSEIF (APPLE)
	MESSAGE(STATUS "Now is Apple systens.")
ELSEIF (UNIX)
	MESSAGE(STATUS "Now is UNIX-like OS's.")
ENDIF ()



add_subdirectory(core)
 
