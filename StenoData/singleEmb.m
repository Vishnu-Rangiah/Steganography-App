function result=singleEmb(ImgM, ImgH)

hidden01=ImgH;
flattIm1=hidden01>100;
dog=ImgM;
dogNew=ImgM;

for i=1:400
    for j=1:400
        if flattIm1(i,j)==1
           if rem(dog(i,j,1),2)==0 
               dogNew(i,j,1)=dog(i,j,1);
           else
               dogNew(i,j,1)=dog(i,j,1)-1;
           end
        else
            if rem(dog(i,j,1),2)==0
                dogNew(i,j,1)=dog(i,j,1)-1;
            else
                dogNew(i,j,1)=dog(i,j,1);
            end
        end
    end
end 
result = dogNew;
end 

