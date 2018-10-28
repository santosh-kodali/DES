start = 0;
counter = 1;
old = 0;
stop = 0;
length = 62; 
times = zeros(1,length);
for i = 1:1918
        
    
  
        
    if(abs(old - Trace_3(i,2)) > 2)
        counter =  counter + 1;          %when it toggles,switch to next bit
        
        if(counter > length)
            stop = 1;
            continue;
        end
    end
    times(1,counter) = times(1,counter) + 1; %when in the current bit, increment this value as long as it is here
   
   
    
    old = Trace_3(i,2) ;        %store this to compare in next loop
end

times = times .* (Trace_1(2,1)-Trace_1(1,1))
actual = times(5:60)

bits=zeros(1,56)
for i = 1:56 
    if((abs(actual(i)-ttt(1,i)))>(abs(actual(i)-ttt(2,i))))
        bits(1,i) = 1;
    end
end
bits

        