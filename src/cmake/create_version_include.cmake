#message("-- Creating config.h...")
#configure_file(config.h.in config.h)

if(NOT VER_NAME)
  message(FATAL_ERROR "VER_NAME not set")
endif(NOT VER_NAME)

if(NOT VER_VALUE)
  message(FATAL_ERROR "VER_VALUE not set")
endif(NOT VER_VALUE)

file(WRITE version/${VER_NAME}.h
"/* This file is automatically generated by CMake. Do not edit! */

#ifndef ${VER_NAME}_VERSION_INCLUDED
#define ${VER_NAME}_VERSION_INCLUDED

#define ${VER_NAME}_VERSION \"${VER_VALUE}\"

#endif
")
