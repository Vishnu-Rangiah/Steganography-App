 function result = embedMessage(hiddenMessage, mainImg)%input is character vector - user typed, 
 % and the image to embed the message
      hiddenMessageChar = char(hiddenMessage);
      messageBin = dec2bin(hiddenMessageChar,8); %converts characters to binary values, nx8 char matrix
      [num_Chars,lenC] = size(messageBin); %gives size nx8,num_chars number of characters to embed

      %mainImg = imread('dogImage.png'); % image us
      imgBinMain = dec2bin(mainImg,8);


      tempVec=imgBinMain; % tempVec will be the binary char array 
      %that will be convert to an image with the embedded information

%embedding process
      for x = 1:num_Chars 
            messageTemp = messageBin(x,:); %gets each binary in the binary vector of the messages
 
            firstTemp = imgBinMain(2*x-1,:); %gets first binary value of the image char array
            secondTemp = imgBinMain(2*x,:); %gets second binary value of the image char array 
    
            frontMessage=extractBetween(messageTemp,1,4); %gets first four bits of the binary version 
            %of the first character
            lastMessage=extractBetween(messageTemp,5,8); %gets last four bits of the binary version 
            %of the first character
    
            exFirstImg=extractBetween(firstTemp,1,4); %gets first four bits
            %of first binary value in binary image char array
            exSecondImg=extractBetween(secondTemp,1,4);%gets first four bits
            %of second binary value in binary image char array
    
            tempVec(2*x-1,:) = strcat(exFirstImg{:},frontMessage{:});
            tempVec(2*x,:) = strcat(exSecondImg{:},lastMessage{:});
      end

      %for loop adds ending message as last three characters
      endSign = '#'; 
      endBin = dec2bin(endSign,8);%converst symbol to 8-bit binary

      for y=(num_Chars*2+1:2:num_Chars*2+6)
            firstEndTemp = tempVec(y,:);
            secondEndTemp = tempVec(y+1,:);

            exFirstEnd=extractBetween(firstEndTemp,1,4);
            exSecondEnd=extractBetween(secondEndTemp,1,4);
            
            exSignFront=extractBetween(endBin,1,4);
            exSignLast=extractBetween(endBin,5,8);
    
            tempVec(y,:) = strcat(exFirstEnd{:},exSignFront{:});
            tempVec(y+1,:) = strcat(exSecondEnd{:},exSignLast{:});
      end 

%need to have a character that specfies the end of the message, say ###


%RECOVERY TIME, read each line incrementally convert to character array,
%CHAR, and see if the last three characters are ### then break

      result = reshape(uint8(bin2dec(tempVec)),400,400,3);

%b=reshape(uint8(bin2dec(tempVec)),400,400,3); %converts binary vector to image
%imshow(b)

end