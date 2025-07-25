#!/bin/bash

otree migrate
export DATABASE_URL=${POSTGRESQL_ADDON_URI}
otree prodserver 9000
