#!/bin/bash
set -euo pipefail

# Generate configuration before running next entrypoint script
exec dockerize -template "$TEMPLATE_PATH/httpd.conf:$HTTPD_PREFIX/conf/httpd.conf" \
               -template "$TEMPLATE_PATH/httpd-ssl.conf:$HTTPD_PREFIX/conf/extra/httpd-ssl.conf" \
               -template "$TEMPLATE_PATH/httpd-vhost-ssl.conf:$HTTPD_PREFIX/conf/extra/httpd-vhost-ssl.conf" \
               "$@"
