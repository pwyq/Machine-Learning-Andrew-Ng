##### Example Operation Name
- (Optional) notes on the operation
```
Here is example command and the corresponding output from octave
```

##### Matrix Operations
```
>> A = [1 2;3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> B = [11 12; 13 14; 15 16]
B =

   11   12
   13   14
   15   16

>> C = [1 1; 2 2]
C =

   1   1
   2   2

>> A*C % 3x2 matrix times 2x2 matrix
ans =

    5    5
   11   11
   17   17

>> A .* B % fetch each element of A times corresponding elements in B
ans =

   11   24
   39   56
   75   96

>> v = [1; 2; 3]
v =

   1
   2
   3

>> 1 ./ v % reciprocal
ans =

   1.00000
   0.50000
   0.33333

>> 1 ./ A % elementwise inverse of A
ans =

   1.00000   0.50000
   0.33333   0.25000
   0.20000   0.16667
```

##### log(), exp(), abs()
```
>> log(v)
ans =

   0.00000
   0.69315
   1.09861

>> exp(v)
ans =

    2.7183
    7.3891
   20.0855

>> v
v =

   1
   2
   3

   >> abs([-1; 2; -3])
ans =

   1
   2
   3

>> -v % -1*v
ans =

  -1
  -2
  -3
```

##### Adding One
```
>> v + ones(length(v),1) % v+1
ans =

   2
   3
   4
```

##### Transpose
```
>> A = [1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> A'
ans =

   1   3   5
   2   4   6

>> (A')'
ans =

   1   2
   3   4
   5   6
```

##### max()
```
>> a = [1 15 2 0.5]
a =

    1.00000   15.00000    2.00000    0.50000

>> val = max(a)
val =  15
>> [value, index] = max(a)
value =  15
index =  2
>> max(A) % column wise maximum
ans =

   5   6
```

##### Element-wise Comparison
```
>> a
a =

    1.00000   15.00000    2.00000    0.50000

>> a < 3
ans =

   1   0   1   1

>> find(a<3)
ans =

   1   3   4

>> find(a<3) % Gives which element is less than 3
ans =

   1   3   4

>> w = randn(3,3)
w =

   1.53721  -1.10976   0.21301
   2.08271  -0.44554  -0.63775
  -0.40571   0.37086  -3.16145

>> find(w<0.3) % count from 1st col to last, from up to bottom
ans =

   3
   4
   5
   7
   8
   9

>> w<0.3
ans =

   0   1   1
   0   1   1
   1   0   1
```


##### magic()
```
>> A = magic(3) % magic() return magic square, all col, row, diagonal are added to the same, Prof.Ng uses this as a convenient way to generate a square matrix; not useful for ML
A =

   8   1   6
   3   5   7
   4   9   2

>> [row, col] = find(A >= 7)
row =

   1
   3
   2

col =

   1
   2
   3
% (1,1), (3,2), (2,3) element is greater than or equal to 7
% don't memorize, use `help {command}`!

A =

   47   58   69   80    1   12   23   34   45
   57   68   79    9   11   22   33   44   46
   67   78    8   10   21   32   43   54   56
   77    7   18   20   31   42   53   55   66
    6   17   19   30   41   52   63   65   76
   16   27   29   40   51   62   64   75    5
   26   28   39   50   61   72   74    4   15
   36   38   49   60   71   73    3   14   25
   37   48   59   70   81    2   13   24   35

>> sum(A,1)
ans =

   369   369   369   369   369   369   369   369   369

>> sum(A,2)
ans =

   369
   369
   369
   369
   369
   369
   369
   369
   369
```

##### sum(), prod(), floor(), ceil()
```
>> a
a =

    1.00000   15.00000    2.00000    0.50000

>> sum(a)
ans =  18.500
>> prod(a)
ans =  15
>> floor(a)
ans =

    1   15    2    0

>> ceil(a)
ans =

    1   15    2    1
```

###### More max()
```
>> A
A =

   8   1   6
   3   5   7
   4   9   2

>> max(A)
ans =

   8   9   7

>> max(max(A))
ans =  9

>> max(A,[],1) % takes column-wise maximum
ans =

   8   9   7

>> max(A,[],2) % takes row-wise maximum
ans =

   8
   7
   9

>> max(A,[],3)
ans =

   8   1   6
   3   5   7
   4   9   2

>> A(:)
ans =

   8
   3
   4
   1
   5
   9
   6
   7
   2

>> max(A(:))
ans =  9
```

##### flipud()
```>> flipud(eye(9))
ans =

Permutation Matrix

   0   0   0   0   0   0   0   0   1
   0   0   0   0   0   0   0   1   0
   0   0   0   0   0   0   1   0   0
   0   0   0   0   0   1   0   0   0
   0   0   0   0   1   0   0   0   0
   0   0   0   1   0   0   0   0   0
   0   0   1   0   0   0   0   0   0
   0   1   0   0   0   0   0   0   0
   1   0   0   0   0   0   0   0   0
```

##### Inverse
```
>> A = magic(3)
A =

   8   1   6
   3   5   7
   4   9   2

>> pinv(A) % sudo inverse of A
ans =

   0.147222  -0.144444   0.063889
  -0.061111   0.022222   0.105556
  -0.019444   0.188889  -0.102778
```