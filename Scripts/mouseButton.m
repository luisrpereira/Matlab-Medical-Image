p=get(ax, 'CurrentPoint');

points=[points p(1, 1:2)'];

imshow(I);
hold on;

if length(points)>2
    set(btn1, 'enable','on');
    set(btn2, 'enable','on');
   
    
    ps = polyshape(points');
    pg = plot(ps);
    pg.FaceColor=[1 0 0];
    pg.FaceAlpha = 0.5;
    pg.EdgeColor = [1 1 1 1];
    pg.LineWidth = 0.5;
end
