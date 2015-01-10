path(path,'C:\Users\GongJie\Desktop\BigData\project1\Project1');
load('C:\Users\GongJie\Desktop\BigData\project1\Project1\Project1-data\usps')
totalnum = 2007;
k = 200;
[Lambda,U,meanX]=MyPCA(x');
[Y]=PCAProjection(x',meanX,U(:,1:1:k));
[Z]=PCAReconstruction(Y,meanX,U(:,1:1:k));
for i = 1:1:20
    image1 = reshape((Z(:,i))', [16 16])';
    subplot(4,10,i),imshow(image1, [  ]);
end
for i = 1:1:totalnum
    error(i,1) = norm(Z(:,i)-x(i,:)')^2;
end
sum(error)/totalnum
for i = 1:1:256
    Lambda_sum(i,1) = sum(Lambda(1:1:i,1))/sum(Lambda);
end