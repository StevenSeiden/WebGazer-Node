clear;
%close all;
%use matlab cell 
eyeData = (readtable("/Users/stevenseiden/WebGazer/experiment/71/star"));

eyesX = normalize(eyeData{1:end,1});
eyesY = normalize(-eyeData{1:end,2});
eyesTime = eyeData{1:end,3};

eyesTime = eyesTime - eyesTime(1);

cursorData = (readtable("/Users/stevenseiden/WebGazer/experiment/71/star=.txt"));

cursorX = normalize(cursorData{1:100:end,1});
cursorY = normalize(-cursorData{1:100:end,2});
cursorTime = (cursorData{1:100:end,3});

cursorTime = cursorTime - cursorTime(1);


%plot(cursorX,cursorY);

%figure;plot3(eyesX,eyesY,eyesTime)
cmap1 = winter;
cmap2 = autumn;
figure;hold on;
%title 'Eye gaze VS cursor movement';

xlabel('Time (s)');
ylabel('X');
zlabel('Y');
set(gca,'FontWeight', 'bold','FontSize', 16,'Linewidth',2);

scatter3(cursorTime/1000,cursorX,cursorY,[],cmap1(ceil((1:length(cursorX))/length(cursorX)*size(cmap1,1)),:),'DisplayName','Cursor position');
scatter3(eyesTime/1000,eyesX,eyesY,[],cmap2(ceil((1:length(eyesX))/length(eyesX)*size(cmap2,1)),:),'DisplayName','Gaze position');