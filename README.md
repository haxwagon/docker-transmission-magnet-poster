# Docker Transmission Magnet Poster

### Tags
- twoboxen/transmission-magnet-poster:**latest**

### Env
PERIOD 300 - default poll interval in seconds
TRANSMISSION_URL http://localhost:9091 - URL on which to send transmission-remote call

### Ports

### Volumes
- **/source** - Source directory to watch for *.magnet files

## Running
```
sudo docker run --name transmission-magnet-poster -v /path/to/your/input/magnet/files:/source twoboxen/docker-transmission-magnet-poster
```
