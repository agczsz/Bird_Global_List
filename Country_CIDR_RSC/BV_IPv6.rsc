/log info "Loading BV IPv6 Address List"
/ipv6 firewall address-list
:do { add list=BV address=2401:b60:11e0::/44 } on-error={}
:do { add list=BV address=2a07:d887:2100::/40 } on-error={}
:do { add list=BV address=2a0e:b107:22f0::/45 } on-error={}
