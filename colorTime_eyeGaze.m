clear;
%close all;

data = readtable("/Users/stevenseiden/WebGazer/experiment/77/rick1");


figure; hold on;
x = data{1:end,1};
y = data{1:end,2};
z = zeros(size(x));
c = linspace(1,10,length(x)); %go from blue to yellow
scatter(x,y,[],c)

title 'Eye position';
xlabel('x gaze position on screen');
ylabel('y gaze position on screen');
set(gca, 'YDir','reverse')

hold off;




eyesX = data{1:end,1};
eyesY = data{1:end,2};
opts = statset('Display','final');


speed = [];


for c = 1:size(eyesX)-1

    speed = [speed; sqrt( (eyesX(c)-eyesX(c+1))^2 + (eyesY(c)-eyesY(c+1))^2)];

end

speed

figure;plot((1:length(speed))/30,speed);

figure;plot3(eyesX,eyesY,(1:length(eyesX)),'.');

xlabel('X');
ylabel('Y');
zlabel('Time');


radius = 50;
X = [x y (1:length(eyesX))'];
idx = dbscan(X,radius,5);
cmap = autumn;
figure;hold on;
for i = 1:max(idx)
s = scatter3(X(idx==i,1),X(idx==i,2),X(idx==i,3),'MarkerEdgeColor',cmap(floor(256/max(idx)*i),:),"Marker",'.');
s.SizeData = 300;
end
set(gca, 'YDir','reverse')