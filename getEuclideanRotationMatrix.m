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
    0,0,0,1];
