clear;
path(path,'C:\Users\GongJie\Desktop\BigData\project1\Project1');
load('C:\Users\GongJie\Desktop\BigData\project1\Project1\Project1-data\usps')
j=0;
for i = 1:1:2007
    if y(i,1) == 3
        j = j + 1;
        u(:,j) = x(i,:)';
    end
end
j = 0;
for i = 1:1:2007
    if y(i,1) == 8
        j = j + 1;
        q(:,j) = x(i,:)';
    end
end
totalnum = j;
k = 50;
[Lambda,U,meanX]=MyPCA(u);
[Y]=PCAProjection(q,meanX,U(:,1:1:k));
[Z]=PCAReconstruction(Y,meanX,U(:,1:1:k));
for i = 1:1:10
    image1 = reshape((Z(:,i))', [16 16])';
    subplot(4,10,i),imshow(image1, [  ]);
end
for i = 1:1:totalnum
    error(i,1) = norm(Z(:,i)'-q(:,i)')^2;
end
sum(error)/totalnum