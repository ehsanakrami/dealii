# Try to find UMFPACK

INCLUDE(FindPackageHandleStandardArgs)

FIND_PATH(UMFPACK_INCLUDE_DIR umfpack.h
  HINTS
  $ENV{UMFPACK_INCLUDE_DIR}
  ${UMFPACK_INCLUDE_DIR}
)

FIND_LIBRARY(UMFPACK_LIBRARY
  NAMES umfpack
  PATHS
  $ENV{UMFPACK_LIBRARY_DIR}
  ${UMFPACK_LIBRARY_DIR}
  PATH_SUFFIXES lib64 lib
)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(UMFPACK DEFAULT_MSG UMFPACK_LIBRARY UMFPACK_INCLUDE_DIR)

IF(UMFPACK_FOUND)
  MARK_AS_ADVANCED(
    UMFPACK_LIBRARY
    UMFPACK_INCLUDE_DIR
  )
ENDIF()
