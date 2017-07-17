function(ADM_EXTRA_WARNINGS)
  option(ADM_FATAL_WARNINGS "ADM_FATAL_WARNINGS" OFF)
  if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU" OR
      "${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
      add_compile_options(-Wall)
      add_compile_options(-Wextra)
      if (ADM_FATAL_WARNINGS)
        add_compile_options(-Werror)
      else()
        message(STATUS "* * *")
        message(STATUS "If you want to treat warnings as errors use: -DADM_FATAL_WARNINGS=ON")
        message(STATUS "* * *")
      endif()
  endif()
endfunction()
