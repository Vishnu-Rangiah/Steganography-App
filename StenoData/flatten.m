%flatten function - takes image as img, creates logical index representing
%1 if image rgb value is over 128 meaning it is light, 
%0 if image rgb value is under 128 meaning dark.
function flatImg = flatten(img)
    flatImg = (img>128);  
end