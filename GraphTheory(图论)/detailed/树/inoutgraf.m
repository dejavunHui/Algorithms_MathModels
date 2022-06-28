function [ k1 k2 ] = inoutgraf( A,k)
%有向图的外向树与内向树数目的算法
% A表示图的关联矩阵
% k1表示外向树的数目
% k2表示内向树的数目
n = size(A,1);
c=[1:k-1,k+1:n];
C=A(c,:);
D = C;
D(D>0)=0;
B=C*D';
k1=det(B);
E=C;
E(E<0)=0;
B = C*E';
k2=det(B);
end

