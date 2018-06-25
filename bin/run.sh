#!/bin/bash
bin/rails s -b 0.0.0.0 -d
bin/ngrok http 3000
