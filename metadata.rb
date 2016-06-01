name              "monit"
maintainer        "Phil Cohen"
maintainer_email  "github@phlippers.net"
license           "MIT"
description       "Configures monit"
long_description  "Please refer to README.md"
version           "1.5.5"

recipe "monit", "Sets up the service definition and default checks."

depends "apt"

supports "ubuntu"
supports "debian"
