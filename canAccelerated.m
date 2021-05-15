function [result] = canAccelerated()
    result = false;   
    currentOS = osPlatform();
    if (currentOS == 0)
        acceleratorPath = '.\\Accelerator\\Windows\\FaultRecovery.exe';
        if (exist(acceleratorPath, 'file')~=0)
            result = true;
            return;
        end
    elseif (currentOS == 1) 
        acceleratorPath = '.\\Accelerator\\macOS\\FaultRecovery';
        if (exist(acceleratorPath, 'file')~=0)
            result = true;
            return;
        end
    elseif (currentOS == 2)
        acceleratorPath = '.\\Accelerator\\Linux\\FaultRecovery';
        if (exist(acceleratorPath, 'file')~=0)
            result = true;
            return;
        end
    end
end

