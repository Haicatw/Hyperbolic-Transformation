function closestPoint = getClosestPoint(a, b)
%           a . (a - b)               b . (b - a)
%l_0 = -------------------- b +  -------------------- a
%        (a - b) . (a - b)         (b - a) . (b - a) 
aSubB = a - b;
bSubA = b - a;
firstPart = (dot(a, aSubB) / dot(aSubB, aSubB));
secondPart = (dot(b, bSubA) / dot(bSubA, bSubA));
closestPoint = firstPart * b + secondPart * a;