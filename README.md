# clj-kondo-parallel-bug

I'm trying to make a repro case of https://github.com/borkdude/clj-kondo/issues/1068 .
It's related to `:refer :all` (or `:use`) and `--parallel` option.

I havn't made it to work yet.

## Usage

- generate `n` test files: `ruby gen-lots-of-test-clj.rb [n]`
  - this command remove existing `hoge*.clj` and generates `n` `hoge*.clj` files
- run parallel lint `n` times `./run-n-times.sh [n]`

## TODO
- generate more test files
- use more complicated project
  - start with some real open source project which has certain amount of code
    - then remove some files to make minimal repro
