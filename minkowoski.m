function product = minkowoski(point1, point2)
I31 = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 -1]
point1 = getNormalizedHomogeneous(point1);
point2 = getNormalizedHomogeneous(point2);
product = point1' * I31 * point2