clear;
clc;
path(path,'C:\Users\GongJie\Desktop\BigData\project1\Project1');
load('C:\Users\GongJie\Desktop\BigData\project1\Project1\Project1-data\usps')
j=0;
u=zeros(256,2007);
for i = 1:1:2007
    if y(i,1) < 500
        j = j + 1;
        u(:,j) = x(i,:)';
    end
end
[Lambda,U,meanX]=MyPCA(u(:,1:1:j));
for i = 1:1:20
    image1 = reshape((5*U(:,i)+meanX(:,1))', [16 16])';
    subplot(4,10,i),imshow(image1, [  ]);
end