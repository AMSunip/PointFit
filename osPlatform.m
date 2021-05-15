function [result] = osPlatform()
    result = 0; 
    if (ispc())
        % Windows
        result = 0;
    elseif(ismac())
        % macOS
        result = 1;
    elseif(isunix())
        % Linux
        result = 2;
    end
end

