#!/bin/bash

echo "Running awspec.."
bundle install && bundle exec rake spec
