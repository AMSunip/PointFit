function [acceleratorPath] = getAcceleratorPath()
    acceleratorPath = '.\\Accelerator\\Windows\\FaultRecovery.exe';
    currentOS = osPlatform();
    if (currentOS == 0)
        acceleratorPath = '.\\Accelerator\\Windows\\FaultRecovery.exe';      
    elseif (currentOS == 1) 
        acceleratorPath = '.\\Accelerator\\macOS\\FaultRecovery';
    elseif (currentOS == 2)
        acceleratorPath = '.\\Accelerator\\Linux\\FaultRecovery';
        end
end
