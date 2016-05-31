# nodejsweb

Proof of concept to create a web server from static pages.
NodeJsWeb (to server static html pages)


## Launch with
docker run -it --rm -v /tmp/test/Slides:/home -e port=4000 nodejsweb

### ATTENTION
Don't map without control !!!
-v /:/home (will expose your ROOT directory)

