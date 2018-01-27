##### Addition
```
>> 5+6  
ans = 11
```

##### Subtraction
```
>> 3-2  
ans = 1
```

##### Multiplication
```
>> 5*8  
ans = 40
```

##### Division
- Be careful with 0
```
>> 1/2  
ans = 0.50000
```

##### Exponent
```
>> 2^6  
ans =  64
```

##### Logic Operation
```
>> 2^6  
ans =  64  
>> 1 == 2 % false "%" for comments  
ans = 0  
>> 1 ~= 2 % "~" for not  
ans =  1  
>> 1 && 0 % AND  
ans = 0  
>> 1 || 0 % OR  
ans =  1  
>> xor(1,0)  
ans =  1
```

##### Assign variable
```
>> a = 3  
a =  3  
>> a = 3; % semicolon supressing output  
>> b = 'hi, octave'; % string assignment  
>> c = (3 >= 1);  
>> c  
c =  1  
>> a = pi;  
>> disp(a);  
 3.1416
```

##### Change Display Decimals
```
>> disp(sprintf('2 decimals: %0.2f', a))  
2 decimals: 3.14  
>> disp(sprintf('6 decimals: %0.6f', a))  
6 decimals: 3.141593  
>> format long  
>> a  
a =  3.14159265358979  
>> format short  
>> a  
a =  3.1416
```

##### Matrix
```
>> A = [1 2; 3 4; 5 6]  
A =  

   1   2  
   3   4  
   5   6

>> A = [1 2;
3 4;
5 6]
A =

   1   2
   3   4
   5   6

>> v = [1 2 3] % row vector
v =

   1   2   3

>> v = [1; 2; 3] % column vector
v =

   1
   2
   3

>> v = 1:0.1:2
v =

 Columns 1 through 7:

    1.0000    1.1000    1.2000    1.3000    1.4000    1.5000    1.6000

 Columns 8 through 11:

    1.7000    1.8000    1.9000    2.0000

>> v = 1:6
v =

   1   2   3   4   5   6
```

##### Special Matrix
```
>> ones(2,3) % generate 2 by 3 matrix all one's
ans =

   1   1   1
   1   1   1

>> C = 2*ones(2,3)
C =

   2   2   2
   2   2   2

>> C = [2 2 2; 2 2 2]
C =

   2   2   2
   2   2   2

>> w = ones(1,3)
w =

   1   1   1

>> w = zeros(1,3)
w =

   0   0   0
   
>> eye(4)
ans =

Diagonal Matrix

   1   0   0   0
   0   1   0   0
   0   0   1   0
   0   0   0   1

>> w = rand(1,3) % generate random number between 0 and 1
w =

   0.99764   0.85002   0.51189

>> rand(3,3)
ans =

   0.3828150   0.2680077   0.7225260
   0.8277162   0.5582515   0.0070873
   0.4377640   0.0539415   0.8559138

>> randn(1,3) % Gaussian Distribution
ans =

   0.10208   0.65904   1.45610
```


[Gaussian Distribution](https://en.wikipedia.org/wiki/Normal_distribution)  
> The gaussian (or normal) distribution is a commonly used continuous probability distribution with several important and useful properties. Often, the gaussian distribution is used to model quantities that are expected to the sum of many independent contributions because the Central Limit Theorem tells us that such quantities are likely to be nearly normal in many cases.

##### Histogram
```
>> w = -6 + sqrt(10)*(randn(1,10000));
>> hist(w)
>> hist(w,50)
```