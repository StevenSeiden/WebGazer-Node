clear;
%close all

data = readtable("/Users/stevenseiden/WebGazer/experiment/62/horizontal/2");

eyesX = data{1:end,1};
eyesY = data{1:end,2};
opts = statset('Display','final');

figure;plot3(eyesX,eyesY,(1:length(eyesX))/30,'.');

xlabel('X');
ylabel('Y');
zlabel('Time');