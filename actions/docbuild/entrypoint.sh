#!/bin/sh -l

echo "GitHub Actions - Hello world!"
ls -lah
pandoc preamble.md -o preamble.pdf

