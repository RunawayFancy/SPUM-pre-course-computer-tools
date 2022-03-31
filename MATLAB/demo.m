% clear all;
%  
% a = 0; 
% 
% for i = 1:10
%     
%     
%     
% end
% 
% if a>0
%     a = 0;
% elseif a<0
%     a = a+1;
% else
%     a = a-1;
% end
% 
% array = [1,2,3,4,5,6,7];
% 
% every thing is matrix
% +
% 
% 加法
% 
% A+B 表示将 A 和 B 加在一起。
% 
% plus
% +
% 
% 一元加法
% 
% +A 返回 A。
% 
% uplus
% -
% 
% 减法
% 
% A-B 表示从 A 中减去 B
% 
% minus
% -
% 
% 一元减法
% 
% -A 表示对 A 的元素求反。
% 
% uminus
% .*
% 
% 按元素乘法
% 
% A.*B 表示 A 和 B 的逐元素乘积。
% 
% times
% .^
% 
% 按元素求幂
% 
% A.^B 表示包含元素 A(i,j) 的 B(i,j) 次幂的矩阵。
% 
% power
% ./	
% 数组右除
% 
% A./B 表示包含元素 A(i,j)/B(i,j) 的矩阵。
% 
% rdivide
% .\
% 
% 数组左除
% 
% A.\B 表示包含元素 B(i,j)/A(i,j) 的矩阵。
% 
% ldivide
% .'
% 
% 数组转置
% 
% A.' 表示 A 的数组转置。对于复矩阵，这不涉及共轭。
% 
% transpose
% 
% matrix = [1,2,3;2,3,4;4,5,6];






[m,n]=myfun(10);
function [b,a] = myfun(x)
    a = x;
    b=2*x;
end
