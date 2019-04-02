function result = tenEmb(ImgM,ImgH1,ImgH2,ImgH3,ImgH4,ImgH5,ImgH6,ImgH7,ImgH8,ImgH9,ImgH10)
hidden01=ImgH1;
hidden02=ImgH2;
hidden03=ImgH3;
hidden04=ImgH4;
hidden05=ImgH5;
hidden06=ImgH6;
hidden07=ImgH7;
hidden08=ImgH8;
hidden09=ImgH9;
hidden10=ImgH10;

flattIm1=hidden01>100;
flattIm2=hidden02>100;
flattIm3=hidden03>100;
flattIm4=hidden04>100;
flattIm5=hidden05>100;
flattIm6=hidden06>100;
flattIm7=hidden07>100;
flattIm8=hidden08>100;
flattIm9=hidden09>100;
flattIm10=hidden10>100;

dog=ImgM;
dogNew=ImgM;
%to hide 1st image using binary method
for i=1:400
    for j=1:400
        binary=dec2bin(dogNew(i,j,1),8);
        if flattIm1(i,j)==1
            binary(8)= '0';
            dogNew(i,j,1)=bin2dec(binary);
        elseif flattIm1(i,j)==0
            binary(8)= '1';
            dogNew(i,j,1)=bin2dec(binary);
        end
    
    end
end

%to hide 2nd image using binary method
for i=1:400
    for j=1:400
        binary=dec2bin(dogNew(i,j,2),8);
        if flattIm2(i,j)==1
            binary(8)= '0';
            dogNew(i,j,2)=bin2dec(binary);
        elseif flattIm2(i,j)==0
            binary(8)= '1';
            dogNew(i,j,2)=bin2dec(binary);
        end
    
    end
end

%to hide 3rd image using binary method
for i=1:400
    for j=1:400
        binary=dec2bin(dogNew(i,j,3),8);
        if flattIm3(i,j)==1
            binary(8)= '0';
            dogNew(i,j,3)=bin2dec(binary);
        elseif flattIm3(i,j)==0
            binary(8)= '1';
            dogNew(i,j,3)=bin2dec(binary);
        end
    
    end
end
%to hide 4th image with binary method
for i=1:400
    for j=1:400
        binary=dec2bin(dogNew(i,j,1),8);%binary of the first element 
        if flattIm4(i,j)==1
            binary(7)= '0';
            dogNew(i,j,1)=bin2dec(binary);
        elseif flattIm4(i,j)==0
            binary(7)= '1';
            dogNew(i,j,1)=bin2dec(binary);
        end
    
    end
end

%to hide 5th image with binary method
for i=1:400
    for j=1:400
        binary=dec2bin(dogNew(i,j,2),8);
        if flattIm5(i,j)==1
            binary(7)= '0';
            dogNew(i,j,2)=bin2dec(binary);
        elseif flattIm5(i,j)==0
            binary(7)= '1';
            dogNew(i,j,2)=bin2dec(binary);
        end
    
    end
end

%to hide 6th image with binary method
for i=1:400
    for j=1:400
        binary=dec2bin(dogNew(i,j,3),8);
        if flattIm6(i,j)==1
            binary(7)= '0';
            dogNew(i,j,3)=bin2dec(binary);
        elseif flattIm6(i,j)==0
            binary(7)= '1';
            dogNew(i,j,3)=bin2dec(binary);
        end
    
    end
end

%to hide 7th image with binary method
for i=1:400
    for j=1:400
        binary=dec2bin(dogNew(i,j,1),8);
        if flattIm7(i,j)==1
            binary(6)= '0';
            dogNew(i,j,1)=bin2dec(binary);
        elseif flattIm7(i,j)==0
            binary(6)= '1';
            dogNew(i,j,1)=bin2dec(binary);
        end
    
    end
end

%to hide 8th image with binary method
for i=1:400
    for j=1:400
        binary=dec2bin(dogNew(i,j,2),8);
        if flattIm8(i,j)==1
            binary(6)= '0';
            dogNew(i,j,2)=bin2dec(binary);
        elseif flattIm8(i,j)==0
            binary(6)= '1';
            dogNew(i,j,2)=bin2dec(binary);
        end
    
    end
end

%to hide 9th image with binary method
for i=1:400
    for j=1:400
        binary=dec2bin(dogNew(i,j,3),8);
        if flattIm9(i,j)==1
            binary(6)= '0';
            dogNew(i,j,3)=bin2dec(binary);
        elseif flattIm9(i,j)==0
            binary(6)= '1';
            dogNew(i,j,3)=bin2dec(binary);
        end
    
    end
end

%to hide 10th image with binary method
for i=1:400
    for j=1:400
        binary=dec2bin(dogNew(i,j,1),8);
        if flattIm10(i,j)==1
            binary(5)= '0';
            dogNew(i,j,1)=bin2dec(binary);
        elseif flattIm10(i,j)==0
            binary(5)= '1';
            dogNew(i,j,1)=bin2dec(binary);
        end
    
    end
    result=dogNew;
end


