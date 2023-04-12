#!/bin/bash


python server.py &

sleep 5

winpty mintty -e "bash -c './client.py; exec bash'"
