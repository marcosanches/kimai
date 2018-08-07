FROM marcosanches/kimai:v1
LABEL version="1.0" description="Servidor Kimai" maintainer="Marco Sanches"
CMD ln -s /dados/infra/php.ini /etc/php.ini && \
    ln -s /dados/infra/php.d /etc/php.d && \
    ln -s /dados/infra/apache/conf /etc/httpd/conf && \
    ln -s /dados/infra/apache/conf.d /etc/httpd/conf.d && \
    ln -s /dados/infra/apache/logs /etc/httpd/logs && \
    cat /dados/infra/hosts >> /etc/hosts && \
    service httpd start && \
    service sshd start && \
    /bin/bash
