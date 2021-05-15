function [outputX,outputY] = getProjectPoint(k, b, inputX,inputY)
  outputX = (inputX / k + inputY - b) / (k + 1 / k);
  outputY = k * inputX + b;
end

