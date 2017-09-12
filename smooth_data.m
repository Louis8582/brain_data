clc
clear
load('dataset2.mat')
dataset.smoothC = zeros(1501,8);
dataset.smoothA = zeros(1501,8);
dataset.smoothP = zeros(1501,8);


for i = 2 : 41
    for j = 1 : 1501
        for k = 1 : 8
            dataset.smoothC(j,k) = dataset.smoothC(j,k) + dataset.C{1,i}(j,k);
        end
    end
end

for i = 1 : 160
    for j = 1 : 1501
        for k = 1 : 8
            dataset.smoothA(j,k) = dataset.smoothA(j,k) + dataset.A{1,i}(j,k);
        end
    end
end

for i = 2 : 41
    for j = 1 : 1501
        for k = 1 : 8
            dataset.smoothP(j,k) = dataset.smoothP(j,k) + dataset.P{1,i}(j,k);
        end
    end
end

for i = 1 : 1501
    for k = 1 : 8
        dataset.smoothC(i,k) = dataset.smoothC(i,k) / 40;
    end
end

for i = 1 : 1501
    for k = 1 : 8
        dataset.smoothA(i,k) = dataset.smoothA(i,k) / 160;
    end
end

for i = 1 : 1501
    for k = 1 : 8
        dataset.smoothP(i,k) = dataset.smoothP(i,k) / 40;
    end
end

for i = 0 : 7
    subplot(8,3,i * 3 + 1);
    plot(dataset.smoothA(:,i + 1));
    subplot(8,3,i * 3 + 2);
    plot(dataset.smoothC(:,i + 1));
    subplot(8,3,i * 3 + 3);
    plot(dataset.smoothP(:,i + 1));
end

figure(2)
hold on 
plot(dataset.smoothA(:,6));
plot(dataset.smoothC(:,6));
% plot(dataset.smoothP(:,6));
