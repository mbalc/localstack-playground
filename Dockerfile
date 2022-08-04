FROM localstack/localstack:1.0.3

# VOLUME /tmp/localstack

# TODO: this doesn't get started by localstack - https://github.com/localstack/localstack/issues/6589
COPY scripts/init_bucket.sh /docker-entrypoint-initaws.d/1-autodl.sh

ENTRYPOINT ./bin/localstack start --host
