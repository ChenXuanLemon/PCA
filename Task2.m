path(path,'C:\Users\GongJie\Desktop\BigData\project1\Project1');
load('C:\Users\GongJie\Desktop\BigData\project1\Project1\Project1-data\usps')
% j=0;
u=zeros(256,2007);
for i = 1:1:2007
    if y(i,1) == 3
        j = j + 1;
        u(:,j) = x(i,:)';
    end
end
[Lambda,U,meanX]=MyPCA(u(:,1:1:j));
% % for i = 1:1:20
% %     image1 = reshape((U(:,i))', [16 16])';
% %     subplot(2,10,i),imshow(image1, [  ]);
% % end
% for i = 1:1:256
%     Lambda_sum(i,1) = sum(Lambda(1:1:i,1))/sum(Lambda);
% end


sizeLambda = [2,5,10,50,100,200];


for(i = 1:1:6)
% sum: sum of all diagnal elements of Lambda
a = 1:1:sizeLambda(i);
b = 1:1:sizeLambda(i);
sum = 0;

% fetch the diagnal element
for j = 1:1:sizeLambda(i)
    b(j) = Lambda(j,1);
    sum = sum + Lambda(j,1);
end

subplot(2,3,i);plot(a,b/sum); xlabel('index'); ylabel('eigenvalue');title(strcat('k = ', num2str(sizeLambda(i))));
end