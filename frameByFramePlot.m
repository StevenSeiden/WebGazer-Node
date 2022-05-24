clear;
close all

data = readtable("/Users/stevenseiden/Developer/eyeCursorTrack/output.txt");

eyesX = data{:,1};
eyesY = data{:,2};
opts = statset('Display','final');

plot(eyesY)

%plot(eyesX([1:10]),eyesY([1:10]),'.')

plot(eyesX,eyesY,'.')

figure; hold on;
    set(gca,'Ydir','reverse')
    axis([0 1 .5 1])
for i = 1 : (length(eyesX)-10)
    plotimg = plot(eyesX(i),eyesY(i),'.b','MarkerSize',20);
pause(0.02);
    %saveas(plotimg,sprintf('plot%d.jpg',i))
end
hold off;

eyesX_mirror = 1 - eyesX;
figure;
plot3(eyesX_mirror,(1:length(eyesX))/30, eyesY,'.');
xlabel('X');
ylabel('Time');
zlabel('Y');
%surf([eyesX,eyesT],'EdgeColor','none');