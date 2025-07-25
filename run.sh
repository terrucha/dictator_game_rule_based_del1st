#!/bin/bash

export DATABASE_URL=${POSTGRESQL_ADDON_URI}

otree resetdb --confirm
otree prodserver 9000
