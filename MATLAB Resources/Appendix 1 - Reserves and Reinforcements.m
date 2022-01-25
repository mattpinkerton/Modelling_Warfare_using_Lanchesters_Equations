clear all; 
close all; 
clc;

resourceAvailable = xlsread('Table1Manpower.xlsx', 'B8:B17');
resourceKilled = xlsread('Table1Manpower.xlsx', 'D8:D17');

X = resourceAvailable;
x = resourceKilled;
xr = 0;
xlr = 0;

for t = 1: numel(X)-1
    
    if and(X(t+1) >= (X(t) - x(t)), xlr(t) == 0)
        xr(t+1) = X(t+1) - X(t) + x(t);
        xlr(t+1) = xlr(t);
    else
        if and(X(t+1) >= (X(t)-x(t)), xlr(t) >= (X(t+1)-X(t)+x(t)))
            xlr(t+1) = xlr(t) - (X(t+1)-X(t)+x(t));
            xr(t+1) = 0;
        else
            if and(X(t+1) >= (X(t)-x(t)), 0 < xlr(t) < (X(t+1)-X(t)+x(t))) 
                xr(t+1) = xr(t) + (X(t+1)-X(t)+x(t)) - xlr(t);
                xlr(t+1) = 0;
            else
                if X(t+1) < (X(t)-x(t))
                    xlr(t+1) = xlr(t) + (X(t)-x(t)-X(t+1));
                    xr(t+1) = 0;
                end
            end
        end
    end
end

output = [X,x,xr',xlr']
