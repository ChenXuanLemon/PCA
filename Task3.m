clear;
path(path,'C:\Users\GongJie\Desktop\BigData\project1\Project1');
load('C:\Users\GongJie\Desktop\BigData\project1\Project1\Project1-data\usps')
j=0;
for i = 1:1:2007
    if y(i,1) == 3
        j = j + 1;
        w(:,j) = x(i,:)';
    end
end
totalnum = j;
k = 50;
[Lambda,U,meanX]=MyPCA(w);
[Y]=PCAProjection(w,meanX,U(:,1:1:k));
[Z]=PCAReconstruction(Y,meanX,U(:,1:1:k));
% for i = 1:1:20
%     image1 = reshape((Z(:,i))', [16 16])';
%     subplot(4,5,i),imshow(image1, [  ]);
% end
for i = 1:1:totalnum
    error(i,1) = norm(Z(:,i)'-w(:,i)')^2;
end
sum(error)/totalnum