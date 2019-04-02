function result = recoverColorImage(embeddedImg)
    

    imgBinEmbed = dec2bin(embeddedImg,8);

    addChar = '0000';
    lengthofVec = length(imgBinEmbed);
    %extraction Process
    
    tempVec=imgBinEmbed;
    for x = 1:lengthofVec
       exTemp = tempVec(x,:);%gets each binary in the binary vector
       exHidden=extractBetween(exTemp,5,8);
    
       tempVec(x,:) = strcat(exHidden{:},addChar);
    end

    result=reshape(uint8(bin2dec(tempVec)),400,400,3);%converts binary vector to image




end