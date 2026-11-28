/log info "Loading HM IPv6 Address List"
/ipv6 firewall address-list
:do { add list=HM address=2401:b60:15f0::/44 } on-error={}
:do { add list=HM address=2602:814:fd7c::/46 } on-error={}
:do { add list=HM address=2605:59c0:6500::/40 } on-error={}
:do { add list=HM address=2a07:d887:5f00::/40 } on-error={}
:do { add list=HM address=2a0d:2684:60::/48 } on-error={}
:do { add list=HM address=2a0e:97c0:4b61::/48 } on-error={}
:do { add list=HM address=2a0f:1cc1:fd90::/44 } on-error={}
:do { add list=HM address=2a12:f381:d500::/40 } on-error={}
:do { add list=HM address=2a12:f382:d500::/40 } on-error={}
:do { add list=HM address=2a13:b487:5035::/48 } on-error={}
:do { add list=HM address=2a14:2d45:5f00::/40 } on-error={}
:do { add list=HM address=2a14:67c1:b65e::/48 } on-error={}
