function [result] = FileWriterXYZ(filePath, dataXYZ)
fid=fopen(filePath, 'wt');
matrix = dataXYZ;        
[m,n]=size(matrix);
for i=1:m
    for j=1:n
        if j==n
            fprintf(fid,'%10.4f\n',matrix(i,j));
        else
            fprintf(fid,'%10.4f,',matrix(i,j));            
        end
    end
end
fclose(fid);

    result = true;
end

