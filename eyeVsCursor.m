clear;
%close all;
%use matlab cell 
eyeData = normalize(readtable("/Users/stevenseiden/WebGazer/experiment/71/square"));

eyesX = eyeData{65:end-105,1};
eyesY = -eyeData{65:end-105,2};
eyesTime = -eyeData{65:end-105,3};

cursorData = normalize(readtable("/Users/stevenseiden/WebGazer/experiment/71/square.txt"));

cursorX = cursorData{1:100:end,1};
cursorY = -cursorData{1:100:end,2};
cursorTime = -cursorData{1:100:end,3};

%plot(cursorX,cursorY);

%figure;plot3(eyesX,eyesY,eyesTime)
cmap1 = jet;
cmap2 = turbo;
figure;hold on;
scatter3(cursorX,cursorY,cursorTime,[],cmap1(ceil((1:length(cursorX))/length(cursorX)*size(cmap1,1)),:));
scatter3(eyesX,eyesY,eyesTime,[],cmap1(ceil((1:length(eyesX))/length(eyesX)*size(cmap1,1)),:));