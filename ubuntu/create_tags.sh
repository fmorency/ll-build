#!/usr/bin/env bash

function usage {
        echo "Usage: $(basename $0) [-u UBUNTU_TAG] [-h]" 2>&1
        echo '   -u   ubuntu tag'
        echo '   -h   display this menu'
        exit 1
}

if [[ ${#} -eq 0 ]]; then
   usage
fi

# list of arguments expected in the input
optstring=":h:u:"

while getopts ${optstring} arg; do
  case ${arg} in
    u) utag+=("$OPTARG");;
    h) usage;;
    ?)
      echo "Invalid option: -${OPTARG}."
      echo
      usage
      ;;
  esac
done

for ut in "${utag[@]}"; do
    echo "Creating image tag ll-build:ubuntu_${ut}"
    docker build . --build-arg UBUNTU_TAG=${ut}\
                   -t lifted/ll-build:ubuntu_${ut}
done

echo "Image tag creation done"
