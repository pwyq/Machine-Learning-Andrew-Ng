##### Example Operation Name
- (Optional) notes on the operation
```
Here is example command and the corresponding output from octave
```

##### size()
```
>> A = [1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> size(A) % tells the size of matrix
ans =

   3   2

>> sz = size(A)
sz =

   3   2

>> size(sz)
ans =

   1   2

>> size(A, 1) % first dimension (row size) of A
ans =  3
>> size(A, 2) % second dimension (column size ) of A
ans =  2
```

##### length()
- usually we only apply length() to vector rather matrix (cause that's confusing)
```
>> v = [1 2 3 4]
v =

   1   2   3   4

>> length(v) % gives the longest dimension
ans =  4
>> length(A)
ans =  3
```

##### Load data
- can use `pwd`, `cd`, `ls` in octave
```
>> load test.dat  % can use tab to auto-complete
>> load('test.dat' ) % can use tab to auto-complete
```

##### who/whos
```
>> who % shows current variable
Variables in the current scope:

A     ans   sz    test  v

>> whos
Variables in the current scope:

   Attr Name        Size                     Bytes  Class
   ==== ====        ====                     =====  =====
        A           3x2                         48  double
        ans         1x23                        23  char
        sz          1x2                         16  double
        test        4x2                         64  double
        v           1x4                         32  double

Total is 43 elements using 183 bytes

>> test  % load in the previous command
test =

   100     1
   200     2
   300     4
   400     8
   
>> save test3.txt test -ascii % save as text (ASCII)
```

##### save
- save {new file name} {data name};
```
>> save test2.dat test;
```

##### clear
- clear all variables

##### Manipulate Data
```
>> A(3,2) % show element in the 3rd row, 2nd col of A
ans =  6

>> A(2,:) % to fetch everything in the 2nd row
          % ":" means every element along that row/col
ans =

   3   4
   
>> A([1 3], :) % get everything in the 1st and 3rd row of A
ans =

   1   2
   5   6
   
>> A(:,2)
ans =

   2
   4
   6

>> A(:,2) = [10; 11; 12] % assign element
A =

    1   10
    3   11
    5   12
    
>> A = [A, [100; 101; 102]] % append another col vector to the right ofA
A =

     1    10   100
     3    11   101
     5    12   102
     
>> size(A)
ans =

   3   3

>> A(:) % put all elements of A into a single vector
ans =

     1
     3
     5
    10
    11
    12
   100
   101
   102
   
>> A = [1 2; 3 4; 5 6]
A =

   1   2
   3   4
   5   6

>> B = [11 12; 13 14; 15 16]
B =

   11   12
   13   14
   15   16

>> C = [A B] % concatenating two matrices in horizontal direction
             % equivalent to C = [A, B]
C =

    1    2   11   12
    3    4   13   14
    5    6   15   16
    
>> C = [A; B] % concatenating two matrices in vertical direction
C =

    1    2
    3    4
    5    6
   11   12
   13   14
   15   16
```