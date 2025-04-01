#!/usr/bin/env bash

function nats_prompt_info() {
  (( $+commands[nats] )) || return
  (( $+commands[jq] )) || return

  local current_ctx=$(nats context info --json 2> /dev/null | jq --raw-output '.name')

  [[ -n "$current_ctx" ]] || return

  echo "$current_ctx"
}
