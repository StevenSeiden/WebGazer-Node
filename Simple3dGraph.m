clear;
%close all

data = readtable("/Users/stevenseiden/WebGazer/experiment/525/Spain/3.txt");

eyesX = data{1:100:end,1};
eyesY = data{1:100:end,2};
opts = statset('Display','final');

figure;plot3(eyesX,eyesY,(1:length(eyesX))/30,'.');

xlabel('X');
ylabel('Y');
zlabel('Time');