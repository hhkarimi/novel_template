# Book template

Inspired by Scrivener, this repo is a workflow that uses open source tools to write and compile large documents, such as books for creative writing or technical documents. The directory structure *is* the organizational structure, and can be modified as desired. Note that the `Makefile` only searches directory `chapter/` for an ordered list of markdown (`.md`) files to include in book compilation.

## Usage

1. Clone the repo to your machine with `git clone {link}`.
2. write story in chapters
3. add front matter
4. Locally compile the book by running `make all`. Refer to `Makefile`

Note that files in `characters/`, `events/` and `research/` will not affect book compilation, only markdown files--that is with extension `.md`--will be included in the book compilation.

## Directory structure

```shell
novel_project
├── build
│   └── novel_project.epub
├── chapters
│   └── chapter_01.md
│   └── ...
└───characters
│   ├── Agathon.md
│   └── Brutus.md
└───events
│   │   some_cool_event.md
│   │   some_sad_event.md
│   │   some_narrative_changing_event.md
└───research
│   │   ancient_greek_breakfast.md
│   │   ancient_roman_consulate.md
│   └── important_dates.md
├── front_matter
├── research
├── Makefile
├── README.md
└── metadata.yaml
```

## Build

Run:

```shell
make all
```
