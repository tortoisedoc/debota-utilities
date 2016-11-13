TARGET=debotalancia

OTHER_FILES += \
    com.giuliettasw.debota.service \
    harbour-debota.service \
    rpm/debota-utilities.yaml \
    rpm/debota-utilities.spec \
    settings/plugin/debota.json \
    settings/plugin/EnableSwitch.qml \
    settings/plugin/mainpage.qml

#target.path = /usr/bin/
#target.files = debotalancia

dbus.path = /usr/share/dbus-1/services/
dbus.files = com.giuliettasw.debota.service

systemd.path = /etc/systemd/user/
systemd.files = harbour-debota.service

settings_qml.path = /usr/share/jolla-settings/pages/debota
settings_qml.files = settings/plugin/EnableSwitch.qml settings/plugin/mainpage.qml

settings_json.path = /usr/share/jolla-settings/entries
settings_json.files = settings/plugin/debota.json

#INSTALLS += target
INSTALLS += dbus
INSTALLS += systemd
#INSTALLS += settings_qml
#INSTALLS += settings_json

SOURCES += \
    main.cpp
