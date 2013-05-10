#-------------------------------------------------
#
# Project created by QtCreator 2012-08-19T17:37:27
#
#-------------------------------------------------
#
#    This file is part of QStamina
#
#    Copyright (C) 2012 Aleksey Lezhoev <lezhoev@gmail.com>
#
#    QStamina is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#     any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

QT       += gui xml

TARGET = ../qstamina
TEMPLATE = app


SOURCES += main.cpp\
        stamina.cpp \
    results.cpp \
    about.cpp \
    textfield.cpp \
    inlinefield.cpp \
    settings.cpp \
    keyboard.cpp \
    lessongenerator.cpp

HEADERS  += stamina.h \
    results.h \
    about.h \
    textfield.h \
    inlinefield.h \
    settings.h \
    keyboard.h \
    lessongenerator.h

FORMS    += stamina.ui \
    results.ui \
    about.ui \
    settings.ui \
    keyboard.ui

RESOURCES += \
    res.qrc

TRANSLATIONS += resources/ts/qstamina_ru.ts

DEFINES += APPLICATION_NAME=\\\"QStamina\\\"
DEFINES += ORGANIZATION_NAME=\\\"SerdobolTeam\\\"

win32 {
	OTHER_FILES += res.rc
	RC_FILE = res.rc
}

macx {
	ICON = resources/qstamina.icns
	
        LAYOUTS.files = resources/layouts
        LAYOUTS.path = Contents/Resources
        QMAKE_BUNDLE_DATA += LAYOUTS
	
	BASELESSONS.files = resources/baselessons
	BASELESSONS.path = Contents/Resources
	QMAKE_BUNDLE_DATA += BASELESSONS
}

unix : !macx :{
    #VARIABLES
    isEmpty(PREFIX) {
        PREFIX = /usr
    }
    BINDIR = $$PREFIX/bin
    DATADIR = $$PREFIX/share

    DEFINES += DATADIR=\\\"$$DATADIR\\\" PKGDATADIR=\\\"$$PKGDATADIR\\\"

    #MAKE INSTALL
    INSTALLS += target desktop baselessons generatorRules layouts translations icon16 icon22 icon24 icon32 icon36 icon48 icon64 icon72 icon96 icon128 icon192 icon256 icon512

    target.path =$$BINDIR

    desktop.path = $$DATADIR/applications
    desktop.files += resources/qstamina.desktop

    baselessons.path = $$DATADIR/qstamina/baselessons
    baselessons.files = resources/baselessons/*

    generatorRules.path = $$DATADIR/qstamina/generatorRules
    generatorRules.files = resources/generatorRules/*

    layouts.path = $$DATADIR/qstamina/layouts
    layouts.files = resources/layouts/*.ltf

    translations.path = $$DATADIR/qstamina/translations
    translations.files = resources/qm/*

    icon16.path = $$DATADIR/icons/hicolor/16x16/apps
    icon16.files += resources/icons/16/qstamina.png

    icon22.path = $$DATADIR/icons/hicolor/22x22/apps
    icon22.files += resources/icons/22/qstamina.png

    icon24.path = $$DATADIR/icons/hicolor/24x24/apps
    icon24.files += resources/icons/24/qstamina.png

    icon32.path = $$DATADIR/icons/hicolor/32x32/apps
    icon32.files += resources/icons/32/qstamina.png

    icon36.path = $$DATADIR/icons/hicolor/36x36/apps
    icon36.files += resources/icons/36/qstamina.png

    icon48.path = $$DATADIR/icons/hicolor/48x48/apps
    icon48.files += resources/icons/48/qstamina.png

    icon64.path = $$DATADIR/icons/hicolor/64x64/apps
    icon64.files += resources/icons/64/qstamina.png

    icon72.path = $$DATADIR/icons/hicolor/72x72/apps
    icon72.files += resources/icons/72/qstamina.png

    icon96.path = $$DATADIR/icons/hicolor/96x96/apps
    icon96.files += resources/icons/96/qstamina.png

    icon128.path = $$DATADIR/icons/hicolor/128x128/apps
    icon128.files += resources/icons/128/qstamina.png

    icon192.path = $$DATADIR/icons/hicolor/192x192/apps
    icon192.files += resources/icons/192/qstamina.png

    icon256.path = $$DATADIR/icons/hicolor/256x256/apps
    icon256.files += resources/icons/256/qstamina.png

    icon512.path = $$DATADIR/icons/hicolor/512x512/apps
    icon512.files += resources/icons/512/qstamina.png
}
