clear;

data = readtable("/Users/stevenseiden/WebGazer/experiment/525/Spain/3.txt");

eyesX = data{1:100:end,1};
eyesY = data{1:100:end,2};
opts = statset('Display','final');

map = winter;
figure;hold on;
for i = 1:length(eyesY)
plot(eyesX(i), eyesY(i), '.','color',map(ceil(i/length(eyesY)*256),:));
end

speed = [];


for c = 1:size(eyesX)-1

    speed = [speed; sqrt( (eyesX(c)-eyesX(c+1))^2 + (eyesY(c)-eyesY(c+1))^2)];

end

speed

figure;plot((1:length(speed))/30,speed);


dydx = gradient(speed(:)) ./ gradient((1:length(speed))/30);

splot(x, gradient(y,x));