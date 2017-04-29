# The Eta Benchmarks Suite

This repository contains a set of performance tests used to properly measure how changes in the compiler affect performance. A big part of this suite consists of  the `nofib` benchmark suite along with benchmarks that are relevant for Eta.

## Methodology
The [Java Micobenchmarking Harness](http://openjdk.java.net/projects/code-tools/jmh/) is used to conduct the benchmarks. The follow process occurs when you run a benchmark:

1. The benchmark is compiled into a JAR file.
2. The `eta.main.main` method (the entry point into Eta programs) is invoked from the
   JMH framework.
3. The JMH framework will fork a single JVM process and run the program 5 times for
   warmup and 5 times for measurement and the average/error is calculated.

## Getting Started

### Prerequisites
- Maven
- JDK 1.7+
- Eta

### Runner Installation

First, install the runner:

```
stack install
```

### Quick Run

A standalone script will run the entire suite without additional work.

```
./eta-benchmarks.sh
```

If you want to do more fine-grained performance benchmarking, please see the remaining sections.

## Running

All runs of the runner should be at the root of the repository.

### To run an individual test

`$ eta-bench [test-name] --run`

Example:

`$ eta-bench scs --run`

### To run an entire suite

`$ eta-bench [suite-name] --run`

Example:

`$ eta-bench imaginary --run`

### Clean up test/benchmark artifacts

`$ eta-bench clean`

## Contact Us

If you had trouble using this project, you can give us feedback by:

- filing an [issue](https://github.com/typelead/eta-benchmarks/issues/new)

- discussing with us on [Gitter](https://gitter.im/typelead/eta) 
