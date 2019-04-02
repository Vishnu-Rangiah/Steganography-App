function result = singleRec(ImgE)

dogNew= ImgE;
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

result = [recoveredImg1];
end 