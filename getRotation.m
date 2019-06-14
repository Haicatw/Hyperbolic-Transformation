function rotationMatrix = getRotation(point1, point2, angle)
% point1 and point2 are two points on the axis l
% point1 and point2 should be project to affine
point1 = getNormalizedHomogeneous(point1);
point2 = getNormalizedHomogeneous(point2);
point1a = getAffinePoint(point1);
point2a = getAffinePoint(point2);
Origin = [0 0 0 1]';
closestPoint = getClosestPoint(point1a, point2a);
closestPoint = [closestPoint; 1];
euclideanRotationMatrix = getEuclideanRotationMatrix(point1, point2, angle);
translationMatrix = getTranslation(closestPoint, Origin);
temp = inv(translationMatrix);
rotationMatrix = temp * euclideanRotationMatrix * translationMatrix;

function closestPoint = getClosestPoint(a, b)
%           a . (a - b)               b . (b - a)
%l_0 = -------------------- b +  -------------------- a
%        (a - b) . (a - b)         (b - a) . (b - a) 
aSubB = a - b;
bSubA = b - a;
firstPart = (dot(a, aSubB) / dot(aSubB, aSubB));
secondPart = (dot(b, bSubA) / dot(bSubA, bSubA));
closestPoint = firstPart * b + secondPart * a;

function euclideanRotationMatrix = getEuclideanRotationMatrix(point1, point2, angle)
u = getUnitVect(sub(point1, point2));
u1 = u(1);
u2 = u(2);
u3 = u(3);
c = cos(angle);
s = sin(angle);
c1 = 1 - c;
euclideanRotationMatrix = [
    u1^2+c*(1-u1^2),u1*u2*c1-u3*s,u1*u3*c1+u2*s,0;
    u1*u2*c1+u3*s,u2^2+c*(1-u2^2),u2*u3*c1-u1*s,0;
    u1*u3*c1-u2*s,u2*u3*c1+u1*s,u3^2+c*(1-u3^2),0;
    0,0,0,1
    ];
