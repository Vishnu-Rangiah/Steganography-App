

function result = embedColorImage(mainImg,hiddenImg)
            
            %convert the loaded main and hidden image into 
            %... a binary character arrayr , nx1
            imgBinMain = dec2bin(mainImg,8);
            
            imgBinHidden = dec2bin(hiddenImg,8);
           
            
            
            %handels greyscale images of one layer 
            if length(imgBinHidden)==160000
                imgBinHidden = [imgBinHidden;imgBinHidden;imgBinHidden];
                fprintf("yes")
            end
            
            %handels smaller or bigger images than the main image
            if length(imgBinHidden)~=480000
                hiddenImg=imresize(hiddenImg,[400 400]);
                imgBinHidden = dec2bin(hiddenImg,8);
            end 
            


            %FOR LOOP
            %take the first four digits of front
            %add it to last four of bin apple
            %only need one loop bc linear indexing

            len_Main = length(imgBinHidden);
            tempVec = imgBinMain;

            %embedding process
            for x = 1:len_Main
                mainTemp = imgBinMain(x,:); %gets each rgb value as binary character array 
                %in the whole binary array
                hiddenTemp = imgBinHidden(x,:); %gets the binary values of hidden image
                frontMain=extractBetween(mainTemp,1,4); %gets first four bits of main image (significant)
                lastHidden=extractBetween(hiddenTemp,1,4);  
                %gets first four bits of hidden image (significant)
                tempVec(x,:) = strcat(frontMain{:},lastHidden{:}); 
                %places first four bits of main infront of first 
                %four bits of hidden and creates a new binary array same size of the main image
            end

            result=reshape(uint8(bin2dec(tempVec)),400,400,3); %converts binary vector to image
            
         end