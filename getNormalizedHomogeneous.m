function point = getNormalizedHomogeneous(originalPoint)
% originalPoint
% originalPoint(1)
% originalPoint(2)
% originalPoint(3)
% originalPoint(4)
ele1 = originalPoint(1)/originalPoint(4)
ele2 = originalPoint(2)/originalPoint(4)
ele3 = originalPoint(3)/originalPoint(4)
point = [ele1 ele2 ele3 1]'