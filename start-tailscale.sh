/app/.apt/usr/sbin/tailscaled --tun=userspace-networking --socks5-server=localhost:1055 --socket="/app/tailscaled.sock" &
until tailscale up --authkey=$TAILSCALE_AUTHKEY --hostname=tailscale-example
do
    sleep 1
done
tailscale status
