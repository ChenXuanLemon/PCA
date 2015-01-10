function [Lambda,U,Temp]=MyPCA(X)
%%
% Performs the extraction of the PCA components given a dataset 
% Input:    X, DxN matrix of N points x of dimension D 
% Output:   
%    Lambda : set of eigenvalues of the covariance matrix ranked in decreasing order
%    U      : matrix of eigenvectors (ranked in the same order than eigenvalues)
%    meanX  : average value of the datas in X
% 
[D,N]=size(X);
Temp=zeros(D,1);
for i=1:1:D
    Temp(i,1)=sum(X(i,:))/N;
end
for i=1:1:D
    for j=1:1:N
    X(i,j) = X(i,j) - Temp(i,1);
    end
end
S=X*X';
S=S./(N-1);
[V,~]=eig(S);
W=eig(S);
[W_sort,W_index]= sort(W,'descend');
V_sort=V(:, W_index); 
Lambda =W_sort;
U=V_sort;
end