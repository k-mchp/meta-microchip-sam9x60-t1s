FILESEXTRAPATHS:prepend := "${THISDIR}/linux-mchp-6.12.22:"

SRC_URI:append:sam9x60-curiosity-sd = " \
	file://0001-Add-10-base-t1s-support.patch \
	file://t1s.cfg \
"
