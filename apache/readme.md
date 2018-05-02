## Dynamic Hostname Support for Apache

1. Edit /etc/apache/http.conf 
  * make sure PHP and vhosts modules are loaded
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
  * ie: `kylehotchkiss.mac` = `http://kylehotchkiss.mac`. `hotchkissmade.mac` = `http://hotchkissmade.mac`