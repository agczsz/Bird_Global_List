/log info "Loading BV IPv6 Address List"
/ipv6 firewall address-list
:do { add list=BV address=2602:814:fc84::/46 } on-error={}
:do { add list=BV address=2a03:b601:82c::/46 } on-error={}
:do { add list=BV address=2a03:b601:830::/48 } on-error={}
:do { add list=BV address=2a05:dfc1:5a2b::/48 } on-error={}
:do { add list=BV address=2a06:9f81:3922::/48 } on-error={}
:do { add list=BV address=2a06:9f81:43ef:2100::/56 } on-error={}
:do { add list=BV address=2a06:9f81:5622::/48 } on-error={}
:do { add list=BV address=2a07:d887:2100::/40 } on-error={}
:do { add list=BV address=2a0e:b107:22f0::/45 } on-error={}
:do { add list=BV address=2a0f:1cc1:fd30::/44 } on-error={}
:do { add list=BV address=2a14:2d45:2100::/40 } on-error={}
:do { add list=BV address=2a14:7580:cf21::/48 } on-error={}
