FROM datadog/docker-dd-agent:10.1.552

# Workaround for https://github.com/DataDog/dd-agent/issues/1342. Will be removed after 5.2 is released.
# RUN sed -i 's/self._count_images(instance)/#self._count_images(instance)/g' /opt/datadog-agent/agent/checks.d/docker.py
RUN sed -i -e 's/^#\s*\(graphite_listen_port.*\)/\1/g' /etc/dd-agent/datadog.conf
