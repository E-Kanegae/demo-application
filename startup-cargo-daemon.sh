#!/usr/bin/env bash

export CARGO_DAEMON_WEBAPP_VERSION=1.4.16
if test ! -f $HOME/cargo-daemon/cargo-daemon-webapp-${CARGO_DAEMON_WEBAPP_VERSION}.war ; then
    mvn dependency:copy -Dartifact=org.codehaus.cargo:cargo-daemon-webapp:${CARGO_DAEMON_WEBAPP_VERSION}:war -DoutputDirectory=$HOME/cargo-daemon/.
fi
java -Djava.security.egd=file:/dev/urandom -jar $HOME/cargo-daemon/cargo-daemon-webapp-${CARGO_DAEMON_WEBAPP_VERSION}.war &
