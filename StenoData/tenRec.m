function [recoveredIm1,recoveredIm2,recoveredIm3,...
    recoveredIm4,recoveredIm5,recoveredIm6,recoveredIm7,...
    recoveredIm8,recoveredIm9,recoveredIm10] = tenRec(ImgM)

recoveredIm1=zeros(400,400);
recoveredIm2=zeros(400,400);
recoveredIm3=zeros(400,400);
recoveredIm4=zeros(400,400);
recoveredIm5=zeros(400,400);
recoveredIm6=zeros(400,400);
recoveredIm7=zeros(400,400);
recoveredIm8=zeros(400,400);
recoveredIm9=zeros(400,400);
recoveredIm10=zeros(400,400);
dog=ImgM;
dogNew=ImgM;
% to recover 1st image with binary method
for i=1:400
    for j=1:400
        bin=dec2bin(dogNew(i,j,1),8);
        if bin(8)=='0'
            recoveredIm1(i,j)=1;
        elseif bin(8)=='1'
            recoveredIm1(i,j)=0;
        end
    end
end
% to recover 2nd image with binary method
for i=1:400
    for j=1:400
        bin=dec2bin(dogNew(i,j,2),8);
        if bin(8)=='0'
            recoveredIm2(i,j)=1;
        elseif bin(8)=='1'
            recoveredIm2(i,j)=0;
        end
    end
end
% to recover 3rd image with binary method
for i=1:400
    for j=1:400
        bin=dec2bin(dogNew(i,j,3),8);
        if bin(8)=='0'
            recoveredIm3(i,j)=1;
        elseif bin(8)=='1'
            recoveredIm3(i,j)=0;
        end
    end
end

% to recover 4th image with binary method
for i=1:400
    for j=1:400
        bin=dec2bin(dogNew(i,j,1),8);
        if bin(7)=='0'
            recoveredIm4(i,j)=1;
        elseif bin(7)=='1'
            recoveredIm4(i,j)=0;
        end
    end
end

 %to recover 5th image with binary method
 for i=1:400
    for j=1:400
        bin=dec2bin(dogNew(i,j,2),8);
        if bin(7)=='0'
            recoveredIm5(i,j)=1;
        elseif bin(7)=='1'
            recoveredIm5(i,j)=0;
        end
    end
 end
    
%to recover 6th image with binary method
for i=1:400
    for j=1:400
        bin=dec2bin(dogNew(i,j,3),8);
        if bin(7)=='0'
            recoveredIm6(i,j)=1;
        elseif bin(7)=='1'
            recoveredIm6(i,j)=0;
        end
    end
end

%to recover 7th image with binary method
for i=1:400
    for j=1:400
        bin=dec2bin(dogNew(i,j,1),8);
        if bin(6)=='0'
            recoveredIm7(i,j)=1;
        elseif bin(6)=='1'
            recoveredIm7(i,j)=0;
        end
    end
end

%to recover 8th image with binary method
for i=1:400
    for j=1:400
        bin=dec2bin(dogNew(i,j,2),8);
        if bin(6)=='0'
            recoveredIm8(i,j)=1;
        elseif bin(6)=='1'
            recoveredIm8(i,j)=0;
        end
    end
end

%to recover 9th image with binary method
for i=1:400
    for j=1:400
        bin=dec2bin(dogNew(i,j,3),8);
        if bin(6)=='0'
            recoveredIm9(i,j)=1;
        elseif bin(6)=='1'
            recoveredIm9(i,j)=0;
        end
    end
end

%to recover 10th image with binary method
for i=1:400
    for j=1:400
        bin=dec2bin(dogNew(i,j,1),8);
        if bin(5)=='0'
            recoveredIm10(i,j)=1;
        elseif bin(5)=='1'
            recoveredIm10(i,j)=0;
        end
    end
    
end

