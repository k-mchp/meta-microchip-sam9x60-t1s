FILESEXTRAPATHS:prepend := "${THISDIR}/systemd-conf:"

SRC_URI:append = " \
    file://eth.network \
    file://wlan.network \
"

do_install:append() {
    install -d ${D}${sysconfdir}/systemd/network
    install -m 0644 ${WORKDIR}/wlan.network ${D}${sysconfdir}/systemd/network/
}

FILES:${PN}:append = " \
    ${sysconfdir}/systemd/network/* \
"
