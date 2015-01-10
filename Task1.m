clear;
path(path,'C:\Users\GongJie\Desktop\BigData\project1\Project1');
load('C:\Users\GongJie\Desktop\BigData\project1\Project1\Project1-data\usps')
j=0;
u=zeros(1,2007);
for i = 1:1:2007
    if y(i,1) == 3
        j = j + 1;  
        u(1,j) = i;
    end
end
j = 20;
for i=1:1:j
    image1 = reshape(x(u(1,i),:), [16 16])';
    subplot(ceil(j/4),10,i),imshow(image1, [0 2]);
end

