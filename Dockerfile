FROM ubuntu:22.04

RUN apt update && apt install -y curl iproute2 iptables
RUN curl -fsSL https://tailscale.com/install.sh | sh

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
