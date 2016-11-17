#!/bin/sh

/etc/init.d/ltechagent stop
rm -Rf "/usr/local/ltechagent"
rm -f /etc/init.d/ltechagent

if [ -n "$(command -v update-rc.d)" ]; then
    update-rc.d ltechagent remove
else
	rm -f /etc/rc2.d/S99ltechagent
	rm -f /etc/rc3.d/S99ltechagent
	rm -f /etc/rc4.d/S99ltechagent
	rm -f /etc/rc5.d/S99ltechagent
	rm -f /etc/rc0.d/K99ltechagent
	rm -f /etc/rc1.d/K99ltechagent
	rm -f /etc/rc6.d/K99ltechagent
fi