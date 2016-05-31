#!/bin/bash


docker run -it --rm -v /html:/home -e port=4000 nodejsweb
