function [iX, iY] = getIntersectPoint(k1, b1, k2, b2)
  if (k1==k2)
      iX = 0;
      iY = 0;
      return;
  end

  iX = (b2    - b1)    / (k1 - k2);
  iY = (k1*b2 - k2*b1) / (k1 - k2);
end

