delete(findall(gcf,'type','annotation'))
set(btn2, 'enable','off');
set(btn3, 'enable','off');
set(btn4, 'enable','off');
set(fh, 'WindowButtonDownFcn','mouseButton');
points=[];
imshow(I);
