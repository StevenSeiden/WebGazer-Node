data = readtable("/Users/stevenseiden/WebGazer/experiment/62/vertical/2.txt");

title 'Cursor Position (Ground Truth)';
xlabel('x position');
ylabel('y position');

figure; hold on;
x = data{1:100:end,1};
y = -data{1:100:end,2};
z = zeros(size(x));
c = linspace(1,10,length(x)); %go from blue to yellow
scatter(x,y,[],c)
hold off;


