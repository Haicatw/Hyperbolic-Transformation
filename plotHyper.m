function plotHyper(pointsMatrix)
[m,n] = size(pointsMatrix)
figure
for i = 1:n
    drawPoint = pointsMatrix(1:m-1, i) / pointsMatrix(m, i)
    scatter3(drawPoint(1), drawPoint(2), drawPoint(3))
    hold on
end
hold off
