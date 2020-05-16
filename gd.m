function [theta] = gd(x, y, theta, alpha, num_iters)
m=length(x);
sum0=0;
sum1=0;
for i=1:num_iters
    for j=1:m
        sum0=sum0+(theta(1)+theta(2).*x(j)-y(j));
        sum1=sum1+(theta(1)+theta(2).*x(j)-y(j)).*x(j);
    end
    theta(1)=theta(1)-(alpha.*sum0)/m;
    theta(2)=theta(2)-(alpha.*sum1)/m;
    sum0=0;
    sum1=0;
end