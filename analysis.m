clear;
%close all;
%use matlab cell 
data = readtable("/Users/stevenseiden/WebGazer/experiment/810/experiment_1660148439631");

eyesX = data{1:end,1};
eyesY = -data{1:end,2};

 figure;hold on

title 'Kuiper Belt Clustering';
xlabel('x gaze area on screen');
ylabel('y gaze area on screen');
ylabel('time');
c = hsv;

% figure;hold on
% 
% for i = 1:size(data,1)
%     kuiperOuter = scatter3(eyesX(i),eyesY(i),i,320,'MarkerFaceColor',c(i,:),...
%         'MarkerFaceAlpha',.1,'MarkerEdgeAlpha',0);
% 
%     kuiperInner = scatter3(eyesX(i),eyesY(i),i,80,'MarkerFaceColor',c(i,:),...
%         'MarkerFaceAlpha',.1,'MarkerEdgeAlpha',0);
% end
% 
% 
% hold off


for i = 1:235

    kuiperOuter = scatter(eyesX(i),eyesY(i),2400,'MarkerFaceColor','blue',...
    'MarkerFaceAlpha',.15,'MarkerEdgeAlpha',0);

    kuiperInner = scatter(eyesX(i),eyesY(i),80,'MarkerFaceColor','blue',...
        'MarkerFaceAlpha',.3,'MarkerEdgeAlpha',0);
end

for i = 236:size(data,1)

    kuiperOuter = scatter(eyesX(i),eyesY(i),2400,'MarkerFaceColor','red',...
    'MarkerFaceAlpha',.15,'MarkerEdgeAlpha',0);

    kuiperInner = scatter(eyesX(i),eyesY(i),80,'MarkerFaceColor','red',...
        'MarkerFaceAlpha',.3,'MarkerEdgeAlpha',0);
end


%I = imread('voting.png');
%h = image([-50 1600],[-100 -650],I);
%uistack(h,'bottom')



hold off

pts = linspace(0, 1, 150);
N = histcounts2(eyesY(:), eyesX(:), pts, pts);

% figure;
% subplot(1, 2, 1);
% scatter(eyesX, eyesY, 'r.');
% axis equal;
% set(gca, 'XLim', pts([1 end]), 'YLim', pts([1 end]));

% Plot heatmap:
% subplot(1, 2, 2);
% imagesc(pts, pts, N);
% axis equal;
% set(gca, 'XLim', pts([1 end]), 'YLim', pts([1 end]), 'YDir', 'normal');
% 
% 
% opts = statset('Display','final');

X = [eyesX eyesY];
% [idx,C] = kmeans(X,2,'Distance','cityblock',...
%     'Replicates',5,'Options',opts);
% 
% setOneAmount = 0;
% setTwoAmount = 0;
% 
% for i = 1 : length(idx)
%     if idx(i) == 1
%         setOneAmount = setOneAmount + 1;
%     else
%         setTwoAmount = setTwoAmount + 1;
%     end
% end



% while setOneAmount/setTwoAmount > 3 || setTwoAmount/setOneAmount > 3
%     if setOneAmount>setTwoAmount
%         for i = length(X):-1:1
%             if idx(i) == 2
%                 X(i,:) = [;];
%             end
%         end
%     elseif setTwoAmount>setOneAmount
%         for i = length(X):-1:1
%             if idx(i) == 1
%                 X(i,:) = [;];
%             end
%         end
%     end
% 
%     [idx,C] = kmeans(X,2,'Distance','cityblock',...
%         'Replicates',5,'Options',opts);
%     
%     for i = 1 : length(idx)
%         if idx(i) == 1
%             setOneAmount = setOneAmount + 1;
%         else
%             setTwoAmount = setTwoAmount + 1;
%         end
%     end
%     
%     figure;
%     plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)
%     hold on
%     plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12)
%     plot(C(:,1),C(:,2),'kx',...
%         'MarkerSize',15,'LineWidth',3)
%     legend('Cluster 1','Cluster 2','Centroids',...
%         'Location','NW')
%     title 'Cluster Assignments and Centroids'
% 
% end


% [idx,C] = kmeans(X,10,'Distance','cityblock',...
%         'Replicates',5,'Options',opts);
%   
% 
% figure;
% plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)
% hold on
% plot(X(idx==2,1),X(idx==2,2),'b.','MarkerSize',12)
% plot(X(idx==3,1),X(idx==3,2),'g.','MarkerSize',12)
% plot(X(idx==4,1),X(idx==4,2),'m.','MarkerSize',12)
% plot(X(idx==5,1),X(idx==5,2),'y.','MarkerSize',12)
% plot(X(idx==6,1),X(idx==6,2),'.','MarkerSize',12,'MarkerFaceColor',[0.8500 0.3250 0.0980])
% plot(X(idx==7,1),X(idx==7,2),'k.','MarkerSize',12)
% plot(X(idx==8,1),X(idx==8,2),'r.','MarkerSize',12)
% plot(X(idx==9,1),X(idx==9,2),'c.','MarkerSize',12)
% plot(X(idx==10,1),X(idx==10,2),'.','MarkerSize',12,'MarkerFaceColor',[0 0.4470 0.7410])
% plot(C(:,1),C(:,2),'kx',...
%      'MarkerSize',15,'LineWidth',3) 
% legend('Cluster 1','Cluster 2','Centroids',...
%        'Location','NW')
% title 'Cluster Assignments and Centroids'
% hold off


%try low pass filter,smooth
%figure;plot(smooth(eyesY))