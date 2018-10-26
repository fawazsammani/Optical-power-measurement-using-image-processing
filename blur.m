function blurperc=blur(original,blur)
I=imread(original);
C1=rgb2gray(I);   
I2=imread(blur);
C2=rgb2gray(I2);
[m1 n1]=size(C1);  
[m2 n2]=size(C2);                               
for i=2:m1-1                                 
    for j=2:n1-1
A1=[abs(C1(i,j)-C1(i-1,j-1)),abs(C1(i,j)-C1(i-1,j)),abs(C1(i,j)-C1(i-1,j+1)),abs(C1(i,j)-C1(i,j-1)),abs(C1(i,j)-C1(i,j+1)),abs(C1(i,j)-C1(i+1,j-1)),abs(C1(i,j)-C1(i+1,j)),abs(C1(i,j)-C1(i+1,j+1))];
maximum1=max(A1);  
M1(i-1,j-1)=maximum1;   
end
end

for i=2:m2-1                                 
    for j=2:n2-1
A2=[abs(C2(i,j)-C2(i-1,j-1)),abs(C2(i,j)-C2(i-1,j)),abs(C2(i,j)-C2(i-1,j+1)),abs(C2(i,j)-C2(i,j-1)),abs(C2(i,j)-C2(i,j+1)),abs(C2(i,j)-C2(i+1,j-1)),abs(C2(i,j)-C2(i+1,j)),abs(C2(i,j)-C2(i+1,j+1))];
maximum2=max(A2);
M2(i-1,j-1)=maximum2; 
end
end

blur1_mean=mean(mean(M1));
blur2_mean=mean(mean(M2));

blurperc=abs(blur1_mean-blur2_mean)/blur1_mean
end
