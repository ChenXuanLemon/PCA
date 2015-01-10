function [Ztilde]=PCAReconstruction(Y,meanX,P)
%%
% Reconstructs data points given their coordinates Y in the space spanned by the M eigenvectors of P
% Input:
%    Y     : MxN coordinates of the N points to (re)construct 
%    meanX : mean of data points provided by MyPCA
%    P     : DxM projection matrix containing the first M eigenvectors obtained from MyPCA
% Output:   
%    Ztilde     : DxN matrix containing the constructed vectors 
% 
Ztilde=P*Y;
[D,N]=size(Ztilde);
for i=1:1:D
    for j=1:1:N
    Ztilde(i,j) = Ztilde(i,j) + meanX(i,1);
    end
end
end