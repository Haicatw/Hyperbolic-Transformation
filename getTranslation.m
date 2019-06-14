function translation = getTranslation(point1, point2)
midpoint = getMidpoint(point1, point2)
translation = getReflection(midpoint) * getReflection(point1)
% translation = getReflection(midpoint) .* getReflection(point1)

function midpoint = getMidpoint(point1, point2)
point1 = getNormalizedHomogeneous(point1);
point2 = getNormalizedHomogeneous(point2);
coeff1 = sqrt(minkowoski(point2, point2) * minkowoski(point1, point2))
coeff2 = sqrt(minkowoski(point1, point1) * minkowoski(point1, point2))
midpoint = point1 * coeff1 + point2 * coeff2