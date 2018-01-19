# These are common compilation options shared with all workshops

# The application type
TEMPLATE = app

# The include path - includes a number of environment variables (see README.md)
INCLUDEPATH += . /usr/include $$(NGLDIR)/include ../common/include $$(IGLDIR)/include  $$(EIGENDIR) $$(NOISEDIR)/src

# The config includes C++11 features. I'll assume you want debug mode!
CONFIG += c++11 debug

# These options are to include the openGL headers etc for NGL
QT += core opengl gui

# The path to move all your compiled object files to
OBJECTS_DIR = obj

# The libs path (this will change depending on your platform
LIBS += -lglfw -lGL -lGLEW -lGLU -lNGL -lnoise -L$$(NGLDIR)/lib -L$$(NOISEDIR)/lib
#LIBS +=  -lXi -ldl -lX11 -lXrandr -lXinerama -lXcursor -lXxf86vm -lglfw3  -lGLU  -lNGL -L $$(NGLDIR)/lib

# The RPATH tells the executable where to find the shared libraries 
# that are not in LD_LIBRARY_PATH
QMAKE_RPATHDIR += $$(NGLDIR)/lib $$(NOISEDIR)/lib

# Include the NGL pri file
include($$(NGLDIR)/UseNGL.pri)
