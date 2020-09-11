if(BUILD_OS_WINDOWS)
    set(sip_command
        ${Python3_EXECUTABLE}
        configure.py
        --platform win32-msvc2015
    )
elseif(BUILD_OS_LINUX)
    set(sip_command
        ${Python3_EXECUTABLE}
        configure.py
    )
elseif(BUILD_OS_OSX)
    set(sip_command
        ${Python3_EXECUTABLE}
        configure.py
    )
else()
    set(sip_command "")
endif()

ExternalProject_Add(Sip
    URL http://sourceforge.net/projects/pyqt/files/sip/sip-4.19.12/sip-4.19.12.zip
    URL_MD5 6be7fb646a862cb0c3340e99475700c3
    CONFIGURE_COMMAND ${sip_command}
    BUILD_IN_SOURCE 1
)

SetProjectDependencies(TARGET Sip DEPENDS Python)
