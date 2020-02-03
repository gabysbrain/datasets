#!/usr/bin/env bash

jq -s add study_results_*.json | tee \
  study_results.all.json \
  >(jq '[.[] | ."mouseevents-events"[]]' > mouse_events.json) \
  | jq '[.[] | del(."mouseevents-events")]' > portfolio_selections.json
