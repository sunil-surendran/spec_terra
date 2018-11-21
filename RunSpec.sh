#!/bin/bash

echo "Running awspec.."
source ./.env.sh
bundle install && bundle exec rake spec
