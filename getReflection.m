function reflection = getReflection(point)
I = eye(4)
I31 = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 -1]
point = getNormalizedHomogeneous(point)
reflection = I - 2 * point * point' * I31 / minkowoski(point, point)