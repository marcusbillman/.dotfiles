# Compile and run C code with recommended settings

gccc() {
  gcc -Wall -std=c99 -o $1 $1.c && ./$1
}
