#!/usr/bin/env sh

MEASUREMENT_ITERATIONS=5
WARMUP_ITERATIONS=1

BENCHMARKS=$(cat ./scripts/benchmarks | awk '{if ($1 == "fast") print $2}')

for b in ${BENCHMARKS}
do
  etlas run eta-bench -- ${b} --way="-O2" --jmh="-i ${MEASUREMENT_ITERATIONS} -wi ${WARMUP_ITERATIONS} -gc true -prof gc -f 1 -bm all" --run --compiler="./scripts/eta.sh" --skip-check || exit
done
