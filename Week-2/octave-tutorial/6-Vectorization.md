##### Vectorization
**Unvectorized implementation**
```
prediction = 0.0;
for j = 1:n+1,
    prediction = prediction + theta(j) * x(j)
end;

====C++====
double prediction = 0.0;
for (int j = 0; j <= n; j++)
    prediction += theta[j] * x[j];
```

**Vectorized implementatoin**
```
prediction = theta' * x;

====C++====
// using libraries
double prediction
    = theta.transpose() * x;
```