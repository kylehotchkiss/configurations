## Dynamic Hostname Support for Apache

1. Edit /etc/apache/http.conf 
  * make sure `php7_module`, `rewrite_module`, and `vhost_alias_module` modules are loaded (uncommented)
  * add index.php to directory indexes
  * make sure /extra/http-vhosts.conf loads
2. Add some structure
  * `sudo mkdir /Sites`
  * `sudo mkdir /Sites/_apache`
  * `sudo touch /Sites/_apache/error.log /Sites/_apache/access.log`
  * `sudo chgrp -R _www /Sites`
  * `sudo chmod -R 775 /Sites`
3. Test apache
  * `apachectl configtest`
4. Make sites with their domain as folder name
  * ie: `/Sites/kylehotchkiss.mac` = `http://kylehotchkiss.mac`. `/Sites/hotchkissmade.mac` = `http://hotchkissmade.mac`


### FAQ

**Why keep sites in `/Sites` instead of `/User/%myusername%/Sites`?**

Requires changing too many permissions I precieve are an important part of OSX security policy. May be reset back to defaults with updates. `/Sites` doesn't exist in OSX to start, so updaters shouldn't touch. Also, other computer users can edit if that matters.
