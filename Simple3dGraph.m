clear;
%close all

files = dir('/Users/stevenseiden/WebGazer/experiment/810/experiment*');

ground_truth = strings(12,1);

orders = 1:12;%randperm(12)

for i = 1:12

    filename = strcat(files(orders(i)).folder,'/',files(orders(i)).name);

    ground_truth(i,1) = filename(length(filename));

    data = readtable(filename);

    cutoff = 15;

    eyesX = data{1:end,1};
    eyesY = data{1:end,2};
%     eyesX = lowpass(data{1:end,1},cutoff,30,'ImpulseResponse','iir','Steepness',.9);
%     eyesY = lowpass(data{1:end,2},cutoff,30,'ImpulseResponse','iir','Steepness',.9);
    opts = statset('Display','final');

    a = abs(diff(sqrt(diff(eyesX).^2+diff(eyesY).^2)));
    figure;plot(1:length(a),a);


    figure; hold on;
    set(gca, 'YDir','reverse')

    title 'Eye gaze position';

    xlabel('X');
    ylabel('Y');
    zlabel('Time');

%     plot3(smooth(eyesX),smooth(eyesY),(1:length(eyesX)),'.');
    plot3(eyesX,eyesY,(1:length(eyesX)),'.');

    hold off;

end
