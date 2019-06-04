#### Hosts
`
127.0.0.1 formation.docker
127.0.0.1 pma.formation.docker
`

#### Connect to php
`
docker-compose exec --user=www-data php /bin/bash
`

#### Composer login & add prestissimo
`
composer global require hirak/prestissimo
composer config -a -g github-oauth.github.com c667cc9cff9d70c479d36c5df63c33db8e7f1ab0
composer config -a -g http-basic.repo.magento.com 845dbde603b74e24fa2d094ec4eecc5d 4a07c902771d6ec56df5893cdaa8b531
`

#### Install

`
composer install
cd /docker && sh install.sh 
`

#### Usefull Methods

##### Export DB
`
docker-compose exec db mysqldump -uformation -pformation formation > formation.sql
`

##### Import DB
`
docker-compose exec db mysql -uformation -pformation formation < formation.sql
`

##### Use node
`
docker-compose run node
docker-compose run node grunt
`