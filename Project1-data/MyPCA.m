function [Lambda,U,meanX]=MyPCA(X)
%%
% Performs the extraction of the PCA components given a dataset 
% Input:    X, DxN matrix of N points x of dimension D 
% Output:   
%    Lambda : set of eigenvalues of the covariance matrix ranked in decreasing order
%    U      : matrix of eigenvectors (ranked in the same order than eigenvalues)
%    meanX  : average value of the datas in X
% 
