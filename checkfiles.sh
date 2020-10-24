#!/bin/bash

echo "counting hkl files excluding spiketrain and mountains..."
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "listing hkl files excluding spiketrain and mountains..."
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | xargs ls -hl

echo "counting firings.mda..."
find mountains -name "firings.mda" | wc -l

