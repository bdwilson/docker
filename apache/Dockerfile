FROM httpd:2.4

MAINTAINER Simon Marti <simon.marti@schulebruegg.ch>

EXPOSE 80 443

# Build variables
ENV TEMPLATE_PATH=/etc/templates \
    DOCKERIZE_VERSION=v0.6.1 \
    DOCKERIZE_PLATFORM=armhf
    #DOCKERIZE_PLATFORM=amd64

# Configuration variables
ENV SERVER_ADMIN=bubba@bubba.org \
    SERVER_NAME=homer.bubba.org \
    SSL_ENABLED=true \
    SSL_EXPECT_CT_REPORT_URI= \
    SSL_EXPECT_CT_ENFORCE=false \
    SSL_EXPECT_CT_MAX_AGE=300 \
    SSL_EXPECT_STAPLE=false \
    SSL_EXPECT_STAPLE_REPORT_URI= \
    SSL_EXPECT_STAPLE_MAX_AGE=300 \
    SSL_EXPECT_STAPLE_PRELOAD=false \
    SSL_EXPECT_STAPLE_INCLUDE_SUBDOMAINS=false \
    SSL_STRICT_TRANSPORT_SECURITY=true \
    SSL_STRICT_TRANSPORT_SECURITY_MAX_AGE=300 \
    SSL_STRICT_TRANSPORT_SECURITY_PRELOAD=false \
    SSL_STRICT_TRANSPORT_SECURITY_INCLUDE_SUBDOMAINS=false \
    FEATURE_POLICY_ACCELEROMETER="'none'" \
    FEATURE_POLICY_AMBIENT_LIGHT_SENSOR="'none'" \
    FEATURE_POLICY_AUTOPLAY="'none'" \
    FEATURE_POLICY_CAMERA="'none'" \
    FEATURE_POLICY_DOCUMENT_DOMAIN="'none'" \
    FEATURE_POLICY_ENCRYPTED_MEDIA="'none'" \
    FEATURE_POLICY_FULLSCREEN="*" \
    FEATURE_POLICY_GEOLOCATION="'none'" \
    FEATURE_POLICY_GYROSCOPE="'none'" \
    FEATURE_POLICY_LAYOUT_ANIMATIONS="*" \
    FEATURE_POLICY_LEGACY_IMAGE_FORMATS="*" \
    FEATURE_POLICY_MAGNETOMETER="'none'" \
    FEATURE_POLICY_MICROPHONE="'none'" \
    FEATURE_POLICY_MIDI="'none'" \
    FEATURE_POLICY_NOTIFICATIONS="'none'" \
    FEATURE_POLICY_OVERSIZED_IMAGES="*" \
    FEATURE_POLICY_PAYMENT="'none'" \
    FEATURE_POLICY_PICTURE_IN_PICTURE="*" \
    FEATURE_POLICY_PUSH="'none'" \
    FEATURE_POLICY_SPEAKER="*" \
    FEATURE_POLICY_SYNC_XHR="*" \
    FEATURE_POLICY_UNOPTIMIZED_IMAGES="*" \
    FEATURE_POLICY_UNSIZED_MEDIA="*" \
    FEATURE_POLICY_USB="'none'" \
    FEATURE_POLICY_VIBRATE="'none'" \
    FEATURE_POLICY_VR="'none'"

# Install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl ca-certificates libapache2-mod-auth-openidc vim bash \
	php php-bz2 php-common php-curl php-gd php-mbstring php-mysql php-pear php-php-gettext php-phpseclib php-xml php-zip pkg-php-tools && \
	phpenmod gd bz2 curl json mysqli mysqlnd && \
    rm -rf /var/lib/apt/lists/* 
	#useradd -ms /bin/bash www-data && \
	#echo "www-data:www-data" | chpasswd

WORKDIR /data
VOLUME /data

# Install dockerize (used in entryscripts)
RUN curl --silent --location https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-$DOCKERIZE_PLATFORM-$DOCKERIZE_VERSION.tar.gz | tar -C /usr/local/bin -xzv

# Add links to volumes
RUN ln -s /certs /usr/local/apache2/conf/certs && \
    ln -s /vhosts /usr/local/apache2/conf/extra/vhosts && \
    ln -s /logs /var/log/apache2 && \
    ln -s /www /var/www && \
	mkdir -p /var/cache/apache2/mod_auth_openidc/cache 
	#chown -R www-data /usr/local/apache2 

VOLUME /certs /vhosts /logs /www
#USER www-data

# Add templates
COPY ["templates/*", "${TEMPLATE_PATH}/"]

# Add entryscripts
COPY ["docker-apache-entrypoint.sh", "/usr/local/bin/docker-apache-entrypoint"]

ENTRYPOINT ["docker-apache-entrypoint"]
CMD ["httpd-foreground"]
