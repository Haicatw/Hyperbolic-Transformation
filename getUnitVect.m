function unitVect = getUnitVect(point)
point = getNormalizedHomogeneous(point);
unitVect = point(1:3)/norm(point(1:3));
unitVect = [unitVect; 1];