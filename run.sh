#!/bin/bash

export DATABASE_URL=${POSTGRESQL_ADDON_URI}

echo "[INFO] Resetting the database..."
y | otree resetdb
otree prodserver 9000
