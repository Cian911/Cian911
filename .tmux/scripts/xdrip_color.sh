#!/bin/bash

data_value=0

threshold_low="4"
threshold_high="9"

select_color="#a6da95"

get_color() {
  local xdrip_local_server="$(echo $XDRIP_SERVER)"
  local xdrip_local_key="$(echo $XDRIP_SERVER_KEY)"
  local data=$(curl -s $xdrip_local_server --header "api-secret: $xdrip_local_key")
  data_value=$(echo $data | jq -r .bgs[].sgv)
  data_value=$(printf '%.*f\n' 0 $data_value)

  if [[ $data_value -gt $threshold_high ]]
  then
    select_color="#eed49f"
  elif [[ $data_value -le $threshold_low ]]
  then
    select_color="#ed8796"
  else
    select_color="#a6da95"
  fi

  echo $select_color
}

get_color
