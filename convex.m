function y = convex(p)

alpha = 41.906;
beta = 4./300;

omega = 4;

phi = 200;
kappa = 1;

N = 768;
S = 12;


y = -(alpha.*log(omega.* exp(1) - beta.* (phi - p)./kappa) + (phi - p)./kappa .*p - ...
    (N./S - 1).* (phi - p)./kappa + ((1 + (phi - p)./kappa).*((phi-p)./kappa) - 2)./(2.*S));

end