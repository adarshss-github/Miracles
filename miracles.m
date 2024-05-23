clr

N = 500 ;

A = zeros(N,2) ;

A(:,1) = 1:1:N ;
A(:,2) = randi([0,1],N,1) ;
[m,~] = size(A) ;
i = 1 ;
Astr = zeros(N,2,20) ;
Astr(:,:,1) = A ;
mstr = zeros(20,1) ;
mstr(1) = N ;


while m >1
    
    i = i+1 ;
    
    NZ = find(A(:,2)==0) ;
   
    A(NZ,:) = [] ;
   [m,~] = size(A) ;
   
   if m>1
       
   A(:,2) = randi([0,1],m,1) ;
   Astr(1:m,1:2,i) = A ;
   mstr(i) = m ;
   
   end
   
   if nnz(A(:,2)) == 0
       
       break
       
   end
   
    
end
