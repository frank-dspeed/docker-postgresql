FROM ubuntu:14.04
MAINTAINER sameer@damagehead.com

RUN apt-get update \
 && apt-get install -y --no-install-recommends postgresql postgresql-client \
 && rm -rf /var/lib/postgresql \
 && rm -rf /var/lib/apt/lists/* # 20140818

COPY start /start
RUN chmod 755 /start

EXPOSE 5432
# Optional Suggested Volume
#VOLUME ["/var/lib/postgresql"]
CMD ["/start"]
