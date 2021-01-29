[fileName,filePath] = uigetfile('.png', '.');
if filePath==0, error('None selected!'); end
I = imread( fullfile(filePath,fileName) );

points=[];
I=double(I)/255;
delete(findall(gcf,'type','annotation'))
imshow(I,'InitialMagnification','fit');

NfileName=strrep(fileName,'_','\_');

title({['\fontsize{12}', NfileName];'\fontsize{10}\color{blue} Use o rato para selecionar a área a recortar ';...
       },'fontweight','b');
hold on;
set(fh, 'WindowButtonDownFcn','mouseButton');
set(btn1, 'enable','off');
set(btn2, 'enable','off');
set(btn3, 'enable','off');
set(btn4, 'enable','off');
