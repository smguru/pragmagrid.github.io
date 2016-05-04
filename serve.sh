#!/bin/bash
set -e

PORT=3000

( sleep 1 && open 'http://localhost:$PORT/' ) &
jekyll serve  --watch --host localhost --port $PORT

#jekyll serve --limit_posts 10 --watch --host localhost --port $PORT
