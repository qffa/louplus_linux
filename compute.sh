#!/bin/bash

[[ $1 = "+" ]] && echo "scale=3; $2 + $3" | bc && exit 0
[[ $1 = "-" ]] && echo "scale=3; $2 - $3" | bc && exit 0
[[ $1 = "*" ]] && echo "scale=3; $2 * $3" | bc && exit 0
[[ $1 = "/" ]] && echo "scale=3; $2 / $3" | bc && exit 0

echo "paremeter error"
exit 127
