function result = doubleEmb(ImgM, ImgH1, ImgH2)

hidden01=ImgH1;
hidden02=ImgH2;
flattIm1=hidden01>100;
flattIm2=hidden02>100;
dog=ImgM;
dogNew=ImgM;

%first hidden image
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
  result = dogNew;
end