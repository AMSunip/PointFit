function [k,b] = getLineKB(x1, y1, x2, y2)
if (x2 == x1)
    k = 0;
    b = 0;
    return;
end

 k = (y2 - y1) / (x2 - x1);
 b = (x1 * y2 - x2 * y1) / (x1 - x2);
end
