#!/bin/bash

export DATABASE_URL=${POSTGRESQL_ADDON_URI}

echo "[INFO] Dropping and recreating public schema…"
psql "$DATABASE_URL" -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public; GRANT ALL ON SCHEMA public TO PUBLIC;"

echo "[INFO] Applying migrations…"
python manage.py migrate --noinput

otree prodserver 9000
