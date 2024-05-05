# see https://makefiletutorial.com/ for help

CHAPTER_FILES := $(wildcard ./chapters/*.md)
BUILD_DIR := ./build

all: clean build

clean:
	rm -rf ./build

build: $(CHAPTER_FILES)
	mkdir -p $(BUILD_DIR)
	pandoc \
    metadata.yaml \
	$(CHAPTER_FILES) \
    -o $(BUILD_DIR)/book.epub

# ensure that each target is called, even if files with with the following
# targets exist
.PHONY: all clean build
