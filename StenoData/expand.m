%expand function - takes image as img- used with flatten image, creates an
%rgb image with values of 0 or 256 - 3layers
%pixel is 0 if black or the given 0
%pixel is 256 if light or the given pixel is 1
function expandImg = expand(fImg)
expandBase=(fImg)*255;
expandImg=[expandBase;expandBase;expandBase];
end
