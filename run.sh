#!/bin/bash
. venv/bin/activate
export FLASK_APP=arduino-index
flask run -h 0.0.0.0
