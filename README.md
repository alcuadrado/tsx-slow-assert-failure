# tsx-slow-assert-failure

Reproduction of https://github.com/privatenumber/tsx/issues/548

## How to run it

Install hyperfine and run `pnpm i` and `./run.sh`.

Example output

```
Benchmark 1: node ./without-tsx.js
  Time (mean ± σ):      17.0 ms ±   0.7 ms    [User: 14.8 ms, System: 3.0 ms]
  Range (min … max):    16.0 ms …  19.8 ms    151 runs

  Warning: Ignoring non-zero exit code.

Benchmark 2: node --import tsx/esm with-tsx.ts
  Time (mean ± σ):      2.609 s ±  0.063 s    [User: 2.680 s, System: 0.032 s]
  Range (min … max):    2.512 s …  2.703 s    10 runs

  Warning: Ignoring non-zero exit code.

Summary
  node ./without-tsx.js ran
  153.10 ± 7.41 times faster than node --import tsx/esm with-tsx.ts
```
