% number of input values
a = 2^8; % eight bit value

% number of possible output values
b = 2^16; % 16 bit values

% possible input arguments
x = 0:(a-1); 

% brightness linearisation
y = 2.^(log2(b-1).*(x+1)./a);
%y=1./(1+exp(((x./21)-6).*-1))*b;

y(1) = 0;

% inverse, because b equals turned off and zero equals turned on
yi = round(y);

plot(x,yi);


fprintf('{ ');
for i = 1:a
    fprintf('0x%04X', yi(i));
    
    if(i ~= a)
        fprintf(', ');
    end
    
    if(mod(i,10) == 0)
        fprintf('\n');
    end
end
fprintf(' }\n');