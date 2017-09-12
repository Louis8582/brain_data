clear
clc
load('original_data1.mat')
c = 1;
a = 1;
p = 1;
dataset.CIndex = zeros(41,1);
dataset.AIndex = zeros(160,1);
dataset.PIndex = zeros(40,1);
for i = 1 : size(data1,1)
    i
    if data1{i,9} == 20
        temp = zeros(1500,9);
        count = 1;
        for j = i - 500 : i
            for k = 1 : 9
                temp(count,k) = data1{j,k};
            end
            count = count + 1;
        end
        for j = i + 1 : i + 1000
            for k = 1 : 9
                temp(count,k) = data1{j,k};
            end
            count = count + 1;
        end
        dataset.C{c} = temp;
        dataset.CIndex(c,1) = i;
        c = c + 1;
    end
    
    if data1{i,9} == 10
        temp = zeros(1500,9);
        count = 1;
        for j = i - 500 : i
            for k = 1 : 9
                temp(count,k) = data1{j,k};
            end
            count = count + 1;
        end
        for j = i + 1 : i + 1000
            for k = 1 : 9
                temp(count,k) = data1{j,k};
            end
            count = count + 1;
        end
        dataset.A{a} = temp;
        dataset.AIndex(a,1) = i;
        a = a + 1;
    end
    
    if data1{i,9} == 55
        temp = zeros(1500,9);
        count = 1;
        for j = i - 500 : i
            for k = 1 : 9
                temp(count,k) = data1{j,k};
            end
            count = count + 1;
        end
        for j = i + 1 : i + 1000
            for k = 1 : 9
                temp(count,k) = data1{j,k};
            end
            count = count + 1;
        end
        dataset.P{p} = temp;
        dataset.PIndex(p,1) = i;
        p = p + 1;
    end
end

