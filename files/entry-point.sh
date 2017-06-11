#!/bin/bash

java -cp $JAVA_HOME/lib/tools.jar:/opt/cjmx/cjmx_${SCALA_VERSION}-${CJMX_VERSION}-app.jar cjmx.Main $@
