##### Plotting
```
>> t=[0:0.01:0.98];
>> y1 = sin(2*pi*4*t);
>> plot(t,y1);
>> y2 = cos(2*pi*4*t);
>> plot(t,y2);
>> plot(t,y1);
>> hold on 					% plot on old graph
>> plot(t,y2, 'r');
>> xlabel('time');
>> ylabel('value');
>> legend('sin', 'cos') 	% name two lines
>> title('my plot')
>> print -dpng 'myPlot.png' % save file
warning: print.m: epstool binary is not available.
Some output formats are not available.
warning: called from
    __print_parse_opts__ at line 382 column 9
    print at line 291 column 8
warning: print.m: fig2dev binary is not available.
Some output formats are not available.
```
[plot]: ../../assets/week-2/myPlot.png "plot"
![alt_text][plot]

##### More
```
>> close 					% to close the figure
>> close all 				% close all figures
>> figure(1); plot(t,y1);	% plot in window 'figure1'
>> figure(2); plot(t,y2);	% plot in window 'figure2'
>> subplot(1,2,1);          % Divides plot into a 1x2 grid, access first element
>> plot(t,y1);
>> subplot(1,2,2);
>> plot(t,y2);
```
[subplot]: ../../assets/week-2/myPlot2.png "subplot"
![alt_text][subplot]

##### More
```
>> axis([0.5 1 -1 1]) 		% set axis
>> clf; 					% to clean figure
```

##### Colored graph, imagesc()
```
>> A = magic(15);
>> imagesc(A) 				% Display a scaled version of the matrix IMG as a color image
>> imagesc(A), colorbar, colormap gray;		% comma chaining command
```
[color]: ../../assets/week-2/color-plot.png "color"
![alt_text][color]

[gray]: ../../assets/week-2/grey-plot.png "gray"
![alt_text][gray]
