function h3D = plotShape(X)

figure

h3D = axes;

line( X(1:2,1), X(1:2,2), X(1:2,3));
line( X(3:4,1), X(3:4,2), X(3:4,3));
line( [X(1,1) X(3,1)]',[X(1,2) X(3,2)]',[X(1,3) X(3,3)]');
line( [X(2,1) X(4,1)]',[X(2,2) X(4,2)]',[X(2,3) X(4,3)]');

line( X(5:6,1), X(5:6,2), X(5:6,3));
line( X(7:8,1), X(7:8,2), X(7:8,3));
line( [X(5,1) X(7,1)]',[X(5,2) X(7,2)]',[X(5,3) X(7,3)]');
line( [X(6,1) X(8,1)]',[X(6,2) X(8,2)]',[X(6,3) X(8,3)]');

for i=1:4
    line([X(i,1) X(10,1)]',[X(i,2) X(10,2)]',[X(i,3) X(10,3)]');
end
for i=5:8
    line([X(i,1) X(9,1)]',[X(i,2) X(9,2)]',[X(i,3) X(9,3)]');
end
for i=1:4
    line([X(i,1) X(i+4,1)]',[X(i,2) X(i+4,2)]',[X(i,3) X(i+4,3)]');
end

line( X(end:-1:end-2,1),  X(end:-1:end-2,2),  X(end:-1:end-2,3),  'LineWidth',1,...
   'Color',[1 .4 .7]);

line( [X(1,1) X(end,1) X(8,1) ]', [X(1,2) X(end,2) X(8,2) ]',  [X(1,3) X(end,3) X(8,3) ]','LineWidth',1,...
   'Color', 'g' );


line([0;50], [0;0], [0;0], 'Color', [1, 0, 0]);
line([0;0], [0; 510], [0;0], 'Color', [0,1,0]);
line([0;0], [0;0], [0;50], 'Color', [0,0,1]);
hold on;
grid on;
plot3(h3D, X(:,1), X(:,2), X(:,3), '*r');
hold on;
axis([-150,150,-150,150, -150, 150]);