#!/bin/sh

print_key() {
  key="$1"
  if out=$(git config --show-origin --get "$key" 2>/dev/null); then
    printf "%s\t%s\n" "$key" "$out"
  else
    printf "%s\tUNSET\n" "$key"
  fi
}

print_key user.name
print_key user.email
print_key user.signingKey
print_key remote.origin.url
