GLUON_SITE_PACKAGES := \
	gluon-mesh-batman-adv-14 \
	gluon-alfred \
	gluon-respondd \
	gluon-autoupdater \
	gluon-config-mode-autoupdater \
	gluon-config-mode-contact-info \
	gluon-config-mode-core \
	gluon-config-mode-geo-location \
	gluon-config-mode-hostname \
	gluon-config-mode-mesh-vpn \
	gluon-ebtables-filter-multicast \
	gluon-ebtables-filter-ra-dhcp \
	gluon-luci-private-wifi \
	gluon-luci-admin \
	gluon-luci-autoupdater \
	gluon-luci-portconfig \
	gluon-luci-wifi-config \
	gluon-next-node \
	gluon-mesh-vpn-fastd \
	gluon-radvd \
	gluon-setup-mode \
	gluon-status-page \
	haveged \
	iptables \
	ffhgw-banner \
	gluon-ssid-changer \
	gluon-rfkill-disable \
	gluon-authorized-keys \
	iwinfo

DEFAULT_GLUON_RELEASE := 2016.3~$(shell date +'%Y-%m-%d')

# Allow overriding the release number from the command line
GLUON_RELEASE ?= $(DEFAULT_GLUON_RELEASE)

# Default priority for updates.
GLUON_PRIORITY ?= 0

GLUON_BRANCH ?= stable
export GLUON_BRANCH

GLUON_TARGET ?= ar71xx-generic
export GLUON_TARGET

# Region code required for some images; supported values: us eu
GLUON_REGION ?= eu

# Languages to include
GLUON_LANGS ?= en de

#enable generation of images for ath10k devices with ibss mode
GLUON_ATH10K_MESH=ibss
