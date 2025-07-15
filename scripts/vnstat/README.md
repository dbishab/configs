This document provides a basic script template for utilizing the [vnstat] utility.

Prior to executing these scripts, ensure that the [vnstat] package is properly installed on the system.

Most [vnstat] commands require specification of a network interface. The available interfaces can be listed using the [ifconfig] command, which is provided by the [net-tools] package (and may need to be installed separately).

In this script, two network interfaces are referenced: [wlan0] for the Wi-Fi connection and [tailscale0] for the Tailscale VPN. These interface names are configurable and should be adjusted based on the user's system configuration. If additional interfaces are present, the same [vnstat] commands may be replicated for each desired interface.