if [ ! -f "/data/wwwroot/config/config.php" ]; then
 echo "配置文件不存在，正在创建" && \
 wget https://raw.githubusercontent.com/DDSRem/easyimage/master/config/api_key.php -p /data/wwwroot/config/ && \
 wget https://raw.githubusercontent.com/DDSRem/easyimage/master/config/config.guest.php -p /data/wwwroot/config/ && \
 wget https://raw.githubusercontent.com/DDSRem/easyimage/master/config/config.manager.php -p /data/wwwroot/config/ && \
 wget https://raw.githubusercontent.com/DDSRem/easyimage/master/config/config.php -p /data/wwwroot/config/ && \
 wget https://raw.githubusercontent.com/DDSRem/easyimage/master/i/index.html -p /data/wwwroot/i/ && \
 wget https://raw.githubusercontent.com/DDSRem/easyimage/master/i/.htaccess -p /data/wwwroot/i/ && \
 chown -R www.www /data/wwwroot
else
 echo "配置文件存在" && \
 chown -R www.www /data/wwwroot
fi

    exec /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
else
    exec "$@"
fi
