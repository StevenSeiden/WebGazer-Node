clear;
close all;

data = readtable("/Users/stevenseiden/WebGazer/experiment/62/vertical/16");

figure; hold on;
x = data{1:end,1};
y = -data{1:end,2};
z = zeros(size(x));
c = linspace(1,10,length(x)); %go from blue to yellow
scatter(x,y,[],c)
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
