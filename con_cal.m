p = 0:1:200;
y = convex(p);
plot(p,y);

options =  optimset('Display','iter');
pmin = fminbnd(@convex, 0, 200, options)

