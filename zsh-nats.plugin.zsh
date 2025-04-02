#!/usr/bin/env bash

# basic messaging commands
alias np='nats publish'
alias nrq='nats request'
alias nrp='nats reply'
alias ns='nats subscribe'

# context management
alias ncxa='nats context add'
alias ncxcp='nats context cp'
alias ncxe='nats context edit'
alias ncxls='nats context ls'
alias ncxrm='nats context rm'
alias ncxsel='nats context select'
alias ncxusel='nats context unselect'
alias ncxi='nats context info'
alias ncxval='nats context validate'
alias ncxpr='nats context previous'

# kv commands
alias nkva='nats kv add'
alias nkve='nats kv edit'
alias nkvp='nats kv put'
alias nkvg='nats kv get'
alias nkvc='nats kv create'
alias nkvu='nats kv update'
alias nkvd='nats kv del'
alias nkvpur='nats kv purge'
alias nkvh='nats kv history'
alias nkvi='nats kv info'
alias nkvw='nats kv watch'
alias nkvls='nats kv ls'
alias nkvcom='nats kv compact'

# stream management
alias nsa='nats stream add'
alias nsls='nats stream ls'
alias nsr='nats stream report'
alias nsf='nats stream find'
alias nsi='nats stream info'
alias nsst='nats stream state'
alias nssub='nats stream subjects'
alias nse='nats stream edit'
alias nsrm='nats stream rm'
alias nspur='nats stream purge'
alias nscp='nats stream copy'
alias nsv='nats stream view'
alias nsg='nats stream get'
alias nsbck='nats stream backup'
alias nsrst='nats stream restore'
alias nss='nats stream seal'
alias nsgph='nats stream graph'

# consumer management
alias nca='nats consumer add'
alias nce='nats consumer edit'
alias ncls='nats consumer ls'
alias ncf='nats consumer find'
alias nci='nats consumer info'
alias ncst='nats consumer state'
alias ncrm='nats consumer rm'
alias nccp='nats consumer copy'
alias ncn='nats consumer next'
alias ncgph='nats consumer graph'
alias ncps='nats consumer pause'
alias ncrs='nats consumer resume'
alias ncupin='nats consumer unpin'
alias ncrp='nats consumer report'

function nats_prompt_info() {
  (( $+commands[nats] )) || return
  (( $+commands[jq] )) || return

  local current_ctx=$(nats context info --json 2> /dev/null | jq --raw-output '.name')

  [[ -n "$current_ctx" ]] || return

  echo "$current_ctx"
}
