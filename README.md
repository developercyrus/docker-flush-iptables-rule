### Background
This a demostration, that if a docker is run with the privileged option, and it perform a flush on the iptables, it will delete all iptables rules including those come with Docker.

### Run by docker 
```bash
sudo docker run --rm \
  --privileged \
  --network host \
  developercyrus/flush-iptables-rules
```
