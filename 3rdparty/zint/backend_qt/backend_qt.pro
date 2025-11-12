TEMPLATE = lib
DEFINES += ZINT_NO_PNG
# My qt is configured for static build:
# http://qt-project.org/wiki/Build_Standalone_Qt_Application_for_Windows
#CONFIG += staticlib
CONFIG(static_build) {
    message(Static Build)
    CONFIG += staticlib
    DEFINES += QZINT_STATIC_BUILD
}

!CONFIG(staticlib) {
    CONFIG += dll
    DEFINES += QZINT_LIBRARY
}
# for dynamic build enable this:
#CONFIG += dll
include(../../../common.pri)
macx{
    CONFIG -= dll
    CONFIG += lib_bundle
}
CONFIG(release, debug|release) {
    TARGET = QtZint
} else {
    TARGET = QtZintd
}

INCLUDEPATH += $$PWD/../backend

#EDIT THIS !!!!
DEFINES += ZINT_VERSION="\\\"2.15.0.9\\\""

# INCLUDEPATH += $$PWD/../../lpng
# INCLUDEPATH += $$PWD/../../zlib

#DEFINES += ZINT_HAVE_GS1SE
#INCLUDEPATH += $$PWD/../../gs1-syntax-engine/src/c-lib

INCLUDEPATH += zint zint/backend zint/backend_qt

HEADERS +=  $$PWD/../backend/aztec.h \
            $$PWD/../backend/big5.h \
            $$PWD/../backend/bmp.h \
            $$PWD/../backend/channel_precalcs.h \
            $$PWD/../backend/code1.h \
            $$PWD/../backend/code128.h \
            $$PWD/../backend/code49.h \
            $$PWD/../backend/common.h \
            $$PWD/../backend/composite.h \
            $$PWD/../backend/dmatrix.h \
            $$PWD/../backend/dmatrix_trace.h \
            $$PWD/../backend/eci.h \
            $$PWD/../backend/eci_sb.h \
            $$PWD/../backend/emf.h \
            $$PWD/../backend/raster_font.h \
            $$PWD/../backend/gb18030.h \
            $$PWD/../backend/gb2312.h \
            $$PWD/../backend/gbk.h \
            $$PWD/../backend/filemem.h \
            $$PWD/../backend/general_field.h \
            $$PWD/../backend/gridmtx.h \
            $$PWD/../backend/gs1.h \
            $$PWD/../backend/gs1_lint.h \
            $$PWD/../backend/hanxin.h \
            $$PWD/../backend/iso3166.h \
            $$PWD/../backend/iso4217.h \
            $$PWD/../backend/ksx1001.h \
            $$PWD/../backend/large.h \
            $$PWD/../backend/maxicode.h \
            $$PWD/../backend/output.h \
            $$PWD/../backend/pcx.h \
            $$PWD/../backend/pdf417.h \
            $$PWD/../backend/pdf417_tabs.h \
            $$PWD/../backend/pdf417_trace.h \
            $$PWD/../backend/qr.h \
            $$PWD/../backend/reedsol.h \
            $$PWD/../backend/reedsol_logs.h \
            $$PWD/../backend/rss.h \
            $$PWD/../backend/sjis.h \
            $$PWD/../backend/tif.h \
            $$PWD/../backend/tif_lzw.h \
            $$PWD/../backend/zfiletypes.h \
            $$PWD/../backend/zintconfig.h \
            $$PWD/../backend/zint.h \
            $$PWD/qzint.h

SOURCES += $$PWD/../backend/2of5.c \
           $$PWD/../backend/2of5inter.c \
           $$PWD/../backend/2of5inter_based.c \
           $$PWD/../backend/auspost.c \
           $$PWD/../backend/aztec.c \
           $$PWD/../backend/bc412.c \
           $$PWD/../backend/bmp.c \
           $$PWD/../backend/channel.c \
           $$PWD/../backend/codabar.c \
           $$PWD/../backend/codablock.c \
           $$PWD/../backend/code.c \
           $$PWD/../backend/code1.c \
           $$PWD/../backend/code11.c \
           $$PWD/../backend/code128.c \
           $$PWD/../backend/code128_based.c \
           $$PWD/../backend/code16k.c \
           $$PWD/../backend/code49.c \
           $$PWD/../backend/common.c \
           $$PWD/../backend/composite.c \
           $$PWD/../backend/dmatrix.c \
           $$PWD/../backend/dotcode.c \
           $$PWD/../backend/dxfilmedge.c \
           $$PWD/../backend/eci.c \
           $$PWD/../backend/emf.c \
           $$PWD/../backend/filemem.c \
           $$PWD/../backend/general_field.c \
           $$PWD/../backend/gif.c \
           $$PWD/../backend/gridmtx.c \
           $$PWD/../backend/gs1.c \
           $$PWD/../backend/hanxin.c \
           $$PWD/../backend/imail.c \
           $$PWD/../backend/large.c \
           $$PWD/../backend/library.c \
           $$PWD/../backend/mailmark.c \
           $$PWD/../backend/maxicode.c \
           $$PWD/../backend/medical.c \
           $$PWD/../backend/output.c \
           $$PWD/../backend/pcx.c \
           $$PWD/../backend/pdf417.c \
           $$PWD/../backend/plessey.c \
           $$PWD/../backend/png.c \
           $$PWD/../backend/postal.c \
           $$PWD/../backend/ps.c \
           $$PWD/../backend/qr.c \
           $$PWD/../backend/raster.c \
           $$PWD/../backend/reedsol.c \
           $$PWD/../backend/rss.c \
           $$PWD/../backend/svg.c \
           $$PWD/../backend/telepen.c \
           $$PWD/../backend/tif.c \
           $$PWD/../backend/ultra.c \
           $$PWD/../backend/upcean.c \
           $$PWD/../backend/vector.c \
           $$PWD/../backend/dllversion.c \
           $$PWD/qzint.cpp

# VERSION = 2.15.0.9

DESTDIR        = $${DEST_LIBS}

unix {
    target.path = $${DESTDIR}
    INSTALLS = target
}

#include.path = $$[ZINT_INSTALL_HEADERS]
# include.path = inst/include
# include.files = $$PWD/../backend/zint.h $$PWD/qzint.h

# #target.path = $$[ZINT_INSTALL_LIBS]
# target.path = inst/lib

# INSTALLS += target include
