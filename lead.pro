TEMPLATE = app
TARGET = lead
INCLUDEPATH += .

QT += widgets

# Output folders, thanks https://stackoverflow.com/a/12872585/12036073
release: DESTDIR = build/release
debug:   DESTDIR = build/debug

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.qrc
UI_DIR = $$DESTDIR/.ui

# Make commands, thanks https://stackoverflow.com/a/9378280/12036073
target.path = /usr/bin/lead
INSTALLS += target

# Input
HEADERS += src/app.h src/screenname.h src/sensor.h
SOURCES += src/app.cpp src/main.cpp src/screenname.cpp src/sensor.cpp

# You can make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# Please consult the documentation of the deprecated API in order to know
# how to port your code away from it.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
