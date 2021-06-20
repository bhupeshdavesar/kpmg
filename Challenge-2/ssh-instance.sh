#!/bin/sh



echo "starting ssh"

gcloud beta compute ssh  --zone "us-central1-a" $1  --project $2

