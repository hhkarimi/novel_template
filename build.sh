#!/bin/bash

mkdir -p build

pandoc \
    metadata.yaml \
    chapters/chapter_1.md \
    -o ./build/book.epub \
    # --epub-title-page=true \
