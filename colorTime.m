data = readtable("/Users/stevenseiden/WebGazer/experiment/525/Iran/2");



figure; hold on;
x = data{1:end,1};
y = -data{1:end,2};
z = zeros(size(x));
c = linspace(1,10,length(x)); %go from blue to yellow
scatter(x,y,[],c)
hold off;


