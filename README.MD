Requirement
-----------
   
UID & GUID must be equals to 1000.

```bash
id -u username
id -g username
```

You can follow this link to change ids [Change UID & GID](https://www.cyberciti.biz/faq/linux-change-user-group-uid-gid-for-all-owned-files/).

Hosts
-----

##### _Classic Way_

```bash
127.0.0.1 formation.docker
```

* [http://formation.docker](http://formation.docker)
* [http://localhost:8080](http://localhost:8080)


##### _Traefik_

```bash
127.0.0.1 formation.docker
127.0.0.1 pma.formation.docker
```

* [http://formation.docker](http://formation.docker)
* [http://pma.formation.docker](http://pma.formation.docker)

Connect to php
------
```bash
docker-compose exec --user=www-data php /bin/bash
```

Composer login & add prestissimo
------

```bash 
composer global require hirak/prestissimo
composer config -a -g github-oauth.github.com c667cc9cff9d70c479d36c5df63c33db8e7f1ab0
composer config -a -g http-basic.repo.magento.com 845dbde603b74e24fa2d094ec4eecc5d 4a07c902771d6ec56df5893cdaa8b531
```


Install
------
```bash
composer install
cd /docker && sh install.sh
```

Usefull Methods
------

##### _Export DB_
```bash
docker-compose exec db mysqldump -uformation -pformation formation > formation.sql
```

##### _Import DB_
```bash
docker-compose exec db mysql -uformation -pformation formation < formation.sql
```

##### _Use node_
```bash
docker-compose run node
docker-compose run node grunt

```