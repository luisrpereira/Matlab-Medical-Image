pause on;
delete(findall(gcf,'type','annotation'))
set(fh, 'pointer', 'watch')


annotation('textbox',...
    [0.15 0.74 0.3 0.15],...
    'String', 'Thresholding...',...
    'FontSize',15,...
    'FontName','Consolas',...
    'LineStyle','none',...
    'EdgeColor','none',...
    'BackgroundColor',[0.4 0.4 0.4],...
    'Color','w',...
    'FitBoxToText', 'on',...
    'visible','on');
pause(2)
delete(findall(gcf,'type','annotation'))
binImg = imbinarize(cutImg,'adaptive','Sensitivity',1);
annotation('textbox',...
    [0.15 0.74 0.3 0.15],...
    'String', 'Preencher...',...
    'FontSize',15,...
    'FontName','Consolas',...
    'LineStyle','none',...
    'EdgeColor','none',...
    'BackgroundColor',[0.4 0.4 0.4],...
    'Color','w',...
    'FitBoxToText', 'on',...
    'visible','on');
imshow(binImg);
pause(2);
delete(findall(gcf,'type','annotation'))
fillImg = imfill(binImg, 'holes');

it=350;

imshow(fillImg);
annotation('textbox',...
    [0.15 0.74 0.3 0.15],...
    'String', sprintf('Loading activecontour...\n(%.f Max iterations)',it),...
    'FontSize',15,...
    'FontName','Consolas',...
    'LineStyle','none',...
    'EdgeColor','none',...
    'BackgroundColor',[0.4 0.4 0.4],...
    'Color','w',...
    'FitBoxToText', 'on',...
    'visible','on');
drawnow;

ctrImg = activecontour(I, fillImg,it, 'edge', 'SmoothFactor', 15);
delete(findall(gcf,'type','annotation'))
annotation('textbox',...
    [0.15 0.74 0.3 0.15],...
    'String', 'Contorno...',...
    'FontSize',15,...
    'FontName','Consolas',...
    'LineStyle','none',...
    'EdgeColor','none',...
    'BackgroundColor',[0.4 0.4 0.4],...
    'Color','w',...
    'FitBoxToText', 'on',...
    'visible','on');
imshow(ctrImg);
pause(2)
segImg = bwperim(ctrImg);

set(fh, 'pointer', 'arrow')


imshow(segImg+cutImg);
delete(findall(gcf,'type','annotation'))
annotation('textbox',...
    [0.15 0.74 0.3 0.15],...
    'String', 'Segmenta��o completa!',...
    'FontSize',15,...
    'FontName','Consolas',...
    'LineStyle','none',...
    'EdgeColor','none',...
    'BackgroundColor',[0.4 0.4 0.4],...
    'Color','w',...
    'FitBoxToText', 'on',...
    'visible','on');



set(btn4, 'enable','on');