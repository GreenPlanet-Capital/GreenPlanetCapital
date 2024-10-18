#!/bin/bash

gh repo list GreenPlanet-Capital --visibility public --limit 4000 | while read -r repo _; do
    if [[ "$repo" == "GreenPlanet-Capital/AlgoBot" ||  "$repo" == "GreenPlanet-Capital/jessify-strategies" ||  "$repo" == "GreenPlanet-Capital/GreenPlanetCapital" ]]; then
        continue
    fi
    echo "Cloning $repo"
    gh repo clone "$repo" -- --recurse-submodules
done

mkdir -p marketstore/data
