#!/bin/bash
source /srv/tawhiri3/venv/bin/activate
mkdir -p /run/tawhiri
gunicorn --config /srv/tawhiri3/gunicorn_cfg.py tawhiri.api:app
