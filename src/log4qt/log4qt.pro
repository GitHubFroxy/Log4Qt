QT += core xml network
include(log4qt.pri)
include(../../g++.pri)

CONFIG += c++11 \
          hide_symbols

TEMPLATE = lib
TARGET = log4qt

LOG4QT_VERSION_MAJOR = 1
LOG4QT_VERSION_MINOR = 2
LOG4QT_VERSION_RELEASE = 0

LOG4QT_VERSION = '\\"$${LOG4QT_VERSION_MAJOR}.$${LOG4QT_VERSION_MINOR}.$${LOG4QT_VERSION_RELEASE}\\"'
DEFINES += LOG4QT_VERSION_STR=\"$${LOG4QT_VERSION}\"
DEFINES += LOG4QT_VERSION=$${LOG4QT_VERSION}

DEPENDPATH += . helpers spi varia
INCLUDEPATH += . helpers spi varia

DESTDIR = ../../bin
DEFINES += NOMINMAX QT_DEPRECATED_WARNINGS  QT_NO_CAST_FROM_BYTEARRAY
DEFINES += LOG4QT_LIBRARY
