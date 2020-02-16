# Tobi's HP Stream 11 ak0001ng

Personal Gentoo configuration of the HP Stream 11-ak0001ng. All hardware
is supported.

## Usage

Update this repository:

    ./config-save.sh

Checkout the repository:

    ./config-restore.sh

## lspci -k
```
00:00.0 Host bridge: Intel Corporation Device 31f0 (rev 03)
	Subsystem: Hewlett-Packard Company Device 85b6
00:00.1 Signal processing controller: Intel Corporation Celeron/Pentium Silver Processor Dynamic Platform and Thermal Framework Processor Participant (rev 03)
	Subsystem: Hewlett-Packard Company Celeron/Pentium Silver Processor Dynamic Platform and Thermal Framework Processor Participant
	Kernel driver in use: proc_thermal
00:00.3 System peripheral: Intel Corporation Device 3190 (rev 03)
	Subsystem: Hewlett-Packard Company Device 85b6
00:02.0 VGA compatible controller: Intel Corporation Device 3185 (rev 03)
	Subsystem: Hewlett-Packard Company Device 85b6
	Kernel driver in use: i915
00:0e.0 Audio device: Intel Corporation Device 3198 (rev 03)
	Subsystem: Hewlett-Packard Company Device 85b6
	Kernel driver in use: snd_hda_intel
00:0f.0 Communication controller: Intel Corporation Celeron/Pentium Silver Processor Trusted Execution Engine Interface (rev 03)
	Subsystem: Hewlett-Packard Company Celeron/Pentium Silver Processor Trusted Execution Engine Interface
	Kernel driver in use: mei_me
00:13.0 PCI bridge: Intel Corporation Device 31da (rev f3)
	Kernel driver in use: pcieport
00:15.0 USB controller: Intel Corporation Device 31a8 (rev 03)
	Subsystem: Hewlett-Packard Company Device 85b6
	Kernel driver in use: xhci_hcd
00:17.0 Signal processing controller: Intel Corporation Device 31b4 (rev 03)
	Subsystem: Hewlett-Packard Company Device 85b6
	Kernel driver in use: intel-lpss
00:17.1 Signal processing controller: Intel Corporation Device 31b6 (rev 03)
	Subsystem: Hewlett-Packard Company Device 85b6
	Kernel driver in use: intel-lpss
00:1c.0 SD Host controller: Intel Corporation Celeron/Pentium Silver Processor SDA Standard Compliant SD Host Controller (rev 03)
	Subsystem: Hewlett-Packard Company Celeron/Pentium Silver Processor SDA Standard Compliant SD Host Controller
	Kernel driver in use: sdhci-pci
00:1f.0 ISA bridge: Intel Corporation Device 31e8 (rev 03)
	Subsystem: Hewlett-Packard Company Device 85b6
00:1f.1 SMBus: Intel Corporation Celeron/Pentium Silver Processor Gaussian Mixture Model (rev 03)
	Subsystem: Hewlett-Packard Company Celeron/Pentium Silver Processor Gaussian Mixture Model
	Kernel driver in use: i801_smbus
01:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8821CE 802.11ac PCIe Wireless Network Adapter
	Subsystem: Hewlett-Packard Company RTL8821CE 802.11ac PCIe Wireless Network Adapter
	Kernel driver in use: rtl8821ce
	Kernel modules: 8821ce
```

## Hints

### wpa_supplicant.conf

To connect to a wifi, configure a `wpa_supplicant.conf`. For obvious reasons it is not included, a template is added here.

### openjdk has circular dependency

`openjdk` has by default a circular dependency and will fail. Install `openjdk-bin` first, emerge `openjdk` after that and delete `openjdk-bin`.
