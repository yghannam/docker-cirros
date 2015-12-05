FROM scratch
MAINTAINER Yazen Ghannam <yazen.ghannam@linaro.org>
ADD cirros-d150923-aarch64-lxc.tar.gz /

# Don't configure network
RUN rm /etc/rc3.d/S40-network
RUN sed -i '/is_lxc && lxc_netdown/d' /etc/init.d/rc.sysinit
CMD ["/sbin/init"]
