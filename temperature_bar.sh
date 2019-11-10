#!/bin/bash

temperature=$(sensors | grep -i 'Package id' | cut -d+ -f2 | cut -d' ' -f1)

echo -n $temperature
