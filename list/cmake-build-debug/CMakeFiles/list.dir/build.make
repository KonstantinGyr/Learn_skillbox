# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Kot\CLionProjects\HW19\list

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Kot\CLionProjects\HW19\list\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\list.dir\depend.make
# Include the progress variables for this target.
include CMakeFiles\list.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\list.dir\flags.make

CMakeFiles\list.dir\main.cpp.obj: CMakeFiles\list.dir\flags.make
CMakeFiles\list.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Kot\CLionProjects\HW19\list\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/list.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\list.dir\main.cpp.obj /FdCMakeFiles\list.dir\ /FS -c C:\Users\Kot\CLionProjects\HW19\list\main.cpp
<<

CMakeFiles\list.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/list.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\list.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Kot\CLionProjects\HW19\list\main.cpp
<<

CMakeFiles\list.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/list.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\list.dir\main.cpp.s /c C:\Users\Kot\CLionProjects\HW19\list\main.cpp
<<

# Object files for target list
list_OBJECTS = \
"CMakeFiles\list.dir\main.cpp.obj"

# External object files for target list
list_EXTERNAL_OBJECTS =

list.exe: CMakeFiles\list.dir\main.cpp.obj
list.exe: CMakeFiles\list.dir\build.make
list.exe: CMakeFiles\list.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Kot\CLionProjects\HW19\list\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable list.exe"
	"C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\list.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\list.dir\objects1.rsp @<<
 /out:list.exe /implib:list.lib /pdb:C:\Users\Kot\CLionProjects\HW19\list\cmake-build-debug\list.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\list.dir\build: list.exe
.PHONY : CMakeFiles\list.dir\build

CMakeFiles\list.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\list.dir\cmake_clean.cmake
.PHONY : CMakeFiles\list.dir\clean

CMakeFiles\list.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Kot\CLionProjects\HW19\list C:\Users\Kot\CLionProjects\HW19\list C:\Users\Kot\CLionProjects\HW19\list\cmake-build-debug C:\Users\Kot\CLionProjects\HW19\list\cmake-build-debug C:\Users\Kot\CLionProjects\HW19\list\cmake-build-debug\CMakeFiles\list.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\list.dir\depend

