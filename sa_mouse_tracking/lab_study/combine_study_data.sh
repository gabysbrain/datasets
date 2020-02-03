#!/usr/bin/env bash

jq -s add *.json | tee \
  study_results.all.json \
  >(jq '[.[] | ."mouseevents-events"[]]' > mouse_events.json) \
  | jq '[.[] | del(."mouseevents-events")]' > portfolio_selections.json
