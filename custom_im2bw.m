function [ picture ] = custom_im2bw( picture, treshold )

for i = 1:size(picture, 1)
    for j = 1:size(picture, 2)
        if picture(i,j,1) < treshold && picture(i,j,2) < treshold && picture(i,j,3) < treshold
            gsc = 0;
            picture(i,j,:) = [gsc gsc gsc];
        else
            gsc = 255;
            picture(i,j,:) = [gsc gsc gsc];
        end
    end
end

end

