
if length(points)>2
    mask = roipoly(I, points(1,:)',points(2,:)');
    cutImg=(mask.*I);
    imshow(cutImg);
    set(btn3, 'enable','on');
    set(fh, 'WindowButtonDownFcn','');
end