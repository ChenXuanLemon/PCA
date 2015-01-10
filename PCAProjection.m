function [Y]=PCAProjection(Z,meanX,P)
%%
% Projects a matrix of data points Z on the first M eigenvectors
% Input:
%    Z     : DxN data matrix (N columns of data zi of dimension D)
%    meanX : mean of data points provided by MyPCA
%    P     : DxM projection matrix containing the first M eigenvectors obtained from MyPCA
% Output:   
%    Y     : MxN matrix containing the components in PCA subspace for all data points of Z
% 
[D,N]=size(Z);
for i=1:1:D
    for j=1:1:N
    Z(i,j) = Z(i,j) - meanX(i,1);
    end
end
Y=P'*Z;
end