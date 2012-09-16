# Try to find the Threading Building Blocks-library

INCLUDE(FindPackageHandleStandardArgs)

FIND_PATH(TBB_INCLUDE_DIR tbb/parallel_reduce.h
  HINTS
  $ENV{TBB_INCLUDE_DIR}
  ${TBB_INCLUDE_DIR}
)

FIND_LIBRARY(TBB_LIBRARY
  NAMES tbb
  PATHS
  $ENV{TBB_LIBRARY_DIR}
  ${TBB_LIBRARY_DIR}
  PATH_SUFFIXES lib64 lib
)

FIND_LIBRARY(TBB_DEBUG_LIBRARY
  NAMES tbb_debug
  PATHS
  $ENV{TBB_DEBUG_LIBRARY_DIR}
  ${TBB_DEBUG_LIBRARY_DIR}
  PATH_SUFFIXES lib64 lib
)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(TBB DEFAULT_MSG TBB_LIBRARY TBB_INCLUDE_DIR)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(TBB_DEBUG DEFAULT_MSG TBB_DEBUG_LIBRARY TBB_INCLUDE_DIR)

IF(TBB_FOUND)
  MARK_AS_ADVANCED(
    TBB_LIBRARY
    TBB_DEBUG_LIBRARY
    TBB_INCLUDE_DIR
  )
ENDIF()
