function [recoveredIm1, recoveredIm2, recoveredIm3] = tripleRec(ImgE)
dogNew=ImgE;
%this is to recover the first hidden image
recoveredIm1=zeros(400,400);
for i=1:400
    for j=1:400
        if rem(dogNew(i,j,1),2)==1
            recoveredIm1(i,j)=0;
        else
            recoveredIm1(i,j)=1;
        end
    end
end

%this is to recover the second hidden image
recoveredIm2=zeros(400,400);
for i=1:400
    for j=1:400
        if rem(dogNew(i,j,2),2)==1
            recoveredIm2(i,j)=0;
        else
            recoveredIm2(i,j)=1;
        end
    end
end

%this is to recover the third hidden image
recoveredIm3=zeros(400,400);
for i=1:400
    for j=1:400
        if rem(dogNew(i,j,3),2)==1
            recoveredIm3(i,j)=0;
        else
            recoveredIm3(i,j)=1;
        end
    end
   
end