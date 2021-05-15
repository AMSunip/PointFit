function [result] = isReverse(x1,y1,x2,y2, x3,y3,x4,y4, x5,y5,x6,y6)
    centerPointX1 = (x3+x4)/2;
    centerPointY1 = (y3+y4)/2;
    centerPointX2 = (x5+x6)/2;
    centerPointY2 = (y5+y6)/2;
    %
    [k,b] = getLineKB(x1,y1,x2,y2);
    
    % 左上右下判断限定
      if((centerPointY1 > k * centerPointX1 + b) && (centerPointY2 < k * centerPointX2 + b))
         result = true;
         return;
      end
       
      result = false;
      return;
end
