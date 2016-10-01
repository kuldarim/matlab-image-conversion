% according to http://stackoverflow.com/a/29498605/1883645
function [ grayImage ] = custom_ind2gray( image, colorMap )

colourImage = cat(3, colorMap(image), colorMap(image + size(colorMap,1)), colorMap(image + 2*size(colorMap,1)));
grayImage = sum(bsxfun(@times, colourImage, permute([0.2126 0.7152 0.0722], [3 1 2])), 3);

end
