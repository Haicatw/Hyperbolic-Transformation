function affinePoint = getAffinePoint(point)
temp = getNormalizedHomogeneous(point)
affinePoint = temp(1:3)