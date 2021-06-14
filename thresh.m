clear all;

for i = 1:24
    im = imread("D:\vscode\pills_counter\ml\data\img\pill24x24\pill"+ i +".jpg");
    im = rgb2gray(im);
    im = imbinarize(im);
    im = imfill(im,'holes');
    %for h = 1:24
    %    for w = 1:24
    %        if im(h,w) > 170
    %            im(h,w) = 255;
    %        else
    %            im(h,w) = 0;
    %        end
    %    end
    %end
    %imshow(im);
    imwrite(im, "D:\vscode\pills_counter\ml\data\img\pill24x24\pill"+ i +".jpg");
end