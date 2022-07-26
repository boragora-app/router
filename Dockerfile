FROM alpine
LABEL maintainer="Boragora <web@boragora.app>"

RUN apk add --no-cache dhcp \
    && touch /var/lib/dhcp/dhcpd.leases

COPY dhcp /etc/dhcp

ENTRYPOINT /usr/sbin/dhcpd -4 -d --no-pid
EXPOSE 67/udp 67/tcp
