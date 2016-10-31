function rotatedImg = rotateImg(rawImg, theta)

img = imread(rawImg);
xMid = ceil((size(img,1)+1)/2);
yMid = ceil((size(img,2)+1)/2);
rotatedImg = img;
MR = [cos(theta) -sin(theta);sin(theta) cos(theta)]; %rotataion matrix
for x = 1:size(img,1)
    for y = 1:size(img,2)
        A = MR*[x-xMid, y-yMid]'; %change coordinate to mid
        rotatedImg(round(A(1))+xMid, round(A(2))+yMid, :) = img(x,y,:); 
    end
end
imshow(rotatedImg)
imwrite(rotatedImg,'rotated_2pi_3.jpg');
        
