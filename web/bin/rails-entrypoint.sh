#!/usr/bin/env sh
if [ -f tmp/pids/server.pid ]; then
    rem tmp/pids/server.pid
fi
bundle exec rails s -b 0.0.0.0