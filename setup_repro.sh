#!/bin/sh

DIR="/tmp/vim-lsp-repro"
mkdir -p "$DIR"

(
cd "$DIR"
git clone https://github.com/prabirshrestha/vim-lsp.git
git clone https://github.com/mattn/vim-lsp-settings.git
git clone https://github.com/prabirshrestha/asyncomplete.vim.git
git clone https://github.com/prabirshrestha/asyncomplete-lsp.vim.git
)
