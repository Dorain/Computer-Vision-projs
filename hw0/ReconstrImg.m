function resultImg = ReconstrImg(border, center)

imgB = imread(border);
imgC = imread(center);
[xB, yB, ~] = size(imgB);
[xC, yC, ~] = size(imgC);
resultImg = imgB;
resultImg(ceil(xB/2)-floor(xC/2):floor(xB/2)+floor(xC/2),ceil(yB/2)-floor(yC/2):floor(yB/2)+floor(yC/2),:)=imgC(:,:,:);
imshow(resultImg);
imwrite(resultImg,'result4.jpg');
end