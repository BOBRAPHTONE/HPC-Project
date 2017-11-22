#include <stdio.h>
//#include sieve.h

/* Returns the index of the next prime (non-zero, since we "knock out" non-primes by setting their value to zero) */
int getNextPrime(int i, int x[]);
void display_CPU_freq(void);



int main(int argc, char* argv[]) {
  int* primes;
  int i, j, k, NPRIMES;  

  NPRIMES = atoi(argv[1]);
  primes = (int*)malloc(NPRIMES * sizeof(int));

  /* we start at 2 because it is the smallest prime */
  for(i=2; i < NPRIMES; i++) {
    primes[i] = i;
    printf("%d\n", i);
  }

  for(i=2; i < NPRIMES; i = getNextPrime(i+1, primes)) {
    for(j = (i*2); j < NPRIMES; j += i) {
      printf("i: %d, j: %d\n", i, j);
      primes[j] = 0;
    }
  }

  for(i=2; i < NPRIMES; i++) {
    if ( primes[i] != 0 ) {
      printf("Prime number: %d\n", primes[i]);
    }
  }

  return 0;
}

/* Returns the index of the next prime (non-zero, since we "knock out" non-primes by setting their value to zero) */
int getNextPrime(int i, int x[]) {
  while (x[i] == 0) {
    i++;
  }
  return i;
}

void display_CPU_freq(void)
{

  float cpu_freq ;
  printf("The CPU frequency is  : %f ",cpu_freq);
}