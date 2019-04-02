function result = tripleEmb(ImgM, ImgH1, ImgH2, ImgH3)

hidden01=ImgH1;
hidden02=ImgH2;
hidden03=ImgH3;
flattIm1=hidden01>100;
flattIm2=hidden02>100;
flattIm3=hidden03>100;
dog=ImgM;
dogNew =ImgM;
%this is for the first hidden image
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

%this is for the second hidden image
for i=1:400
    for j=1:400
    if flattIm2(i,j)==1
        if rem(dog(i,j,2),2)==0
            dogNew(i,j,2)=dog(i,j,2);
        else
            dogNew(i,j,2)=dog(i,j,2)-1;
        end
    else
        if rem(dog(i,j,2),2)==0
            dogNew(i,j,2)=dog(i,j,2)-1;
        else
            dogNew(i,j,2)=dog(i,j,2);
        end
    end
    end
end

%this is for the third hidden image
for i=1:400
    for j=1:400
    if flattIm3(i,j)==1
        if rem(dog(i,j,3),2)==0
            dogNew(i,j,3)=dog(i,j,3);
        else
            dogNew(i,j,3)=dog(i,j,3)-1;
        end
    else
        if rem(dog(i,j,3),2)==0
            dogNew(i,j,3)=dog(i,j,3)-1;
        else
            dogNew(i,j,3)=dog(i,j,3);
        end
    end
    end
    result=dogNew;
end
