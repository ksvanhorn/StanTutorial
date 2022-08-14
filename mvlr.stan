data {
  int<lower=0> N;
  int<lower=0> K;
  matrix[N, K] x;
  vector[N] y;
}
parameters {
  real alpha;
  vector[K] beta;
  real<lower=0> sigma;
}
model {
  alpha ~ normal(0, 100);
  beta ~ normal(0, 100);
  sigma ~ exponential(100);
  y ~ normal(alpha + x * beta, sigma);
}

