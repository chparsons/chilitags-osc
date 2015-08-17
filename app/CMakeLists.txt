
if(NOT OPENCV_HIGHGUI_FOUND)
    message(FATAL_ERROR "OpenCV compiled without support for highgui, cannot compile samples!")
endif()

add_executable( chilitags_osc chilitags_osc.cpp)
target_link_libraries( chilitags_osc chilitags_static )
target_link_libraries( chilitags_osc ${OpenCV_LIBS} )
target_link_libraries( chilitags_osc oscpack ${LIBS})

add_executable( detect_from_file detect_from_file.cpp)
target_link_libraries( detect_from_file chilitags_static )
target_link_libraries( detect_from_file oscpack ${LIBS})

add_executable( osc_dump osc_dump.cpp)
target_link_libraries( osc_dump oscpack ${LIBS})

