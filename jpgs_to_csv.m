clear all;

n = 2;
indirs = ["D:\vscode\pills_counter\ml\data\img\pill24x24\pill", ".jpg";
          "D:\vscode\pills_counter\ml\data\img\none24x24\none", ".png"];
outdir =  "D:\vscode\pills_counter\ml\data\csv\";
names = ["pill", "none"];


csv = [];
for i = 1:24
    im = imread(indirs(n,1)+i+indirs(n,2));
    im = rgb2gray(im);
    v = reshape (im', [numel(im) 1])';
    csv = [csv; v];
end
csvwrite(outdir+names(n)+".csv", csv);