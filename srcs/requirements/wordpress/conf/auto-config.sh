#! /bin/bash
cp wp-config-sample.php wp-config.php && \
sed -i "s/database_name_here/wordpress_db/g" wp-config.php && \
sed -i "s/username_here/wuser/g" wp-config.php && \
sed -i "s/password_here/wpass/g" wp-config.php && \
sed -i "s/localhost/mariadb/g" wp-config.php
