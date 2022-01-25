clear all; 
close all; 
clc;

B = xlsread('Table6Combat&TotalForces.xlsx', 'H6:H15');
b = xlsread('Table6Combat&TotalForces.xlsx', 'H90:H99');
R = xlsread('Table6Combat&TotalForces.xlsx', 'Q6:Q15');
r = xlsread('Table6Combat&TotalForces.xlsx', 'Q90:Q99');

for t = 1: numel(B);
    
    x(t) = (R(t)/B(t));
    y(t) = (b(t)/r(t));
    logx(t) = log(x(t));
    logy(t) = log(y(t));
end

scatter(logx,logy);
polycoefficients = polyfit(logx,logy,1);
linearbestfit = polycoefficients(1)*logx+polycoefficients(2);
hold on;
plot(logx,linearbestfit);
    
beta = polycoefficients(1);
alpha = exp(polycoefficients(2));
residuals = (logy - linearbestfit)';
variance = 1-(sum(residuals.^2)/sum((logy-mean(logy)).^2));

output = [alpha, beta, variance]
