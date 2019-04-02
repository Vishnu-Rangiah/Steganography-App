function result = recoverMessage(embeddedImg)
 
    imgBinEmbed = dec2bin(embeddedImg,8);
    tempVec = imgBinEmbed;
    recBin = '00000000';
    endCount=0;
    endB = '00100011';
    j=1;
while(endCount~=3)%must check the last three cant rn
    
    firstTemp = tempVec(2*j-1,:);
    secondTemp = tempVec(2*j,:);
    
    exRec1=extractBetween(firstTemp,5,8);
    exRec2=extractBetween(secondTemp,5,8);
    
    recCharBin = strcat(exRec1{:},exRec2{:});
    
    if strcmp(recCharBin,endB)
        endCount=endCount+1;
    end
    
    recBin(j,:)=recCharBin;
    
    
    j=j+1;
end 

result = char(bin2dec(recBin((1:end-3),:))');


end