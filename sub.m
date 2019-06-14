function point = sub(point1, point2)
point1 = getNormalizedHomogeneous(point1);
point2 = getNormalizedHomogeneous(point2);
point = (point1(1:3) - point2(1:3));
point = [point; 1];