function [ output ] = read_matrix( filename )
%READ_MATRIX Summary of this function goes here
%   Detailed explanation goes here

filename = 'ScoreMatrixBLOSUM62.txt';
fileID = fopen(filename);

head = fgets(fileID);
head = strsplit(strtrim(head));
head = cell2mat(head(1,2:end));


for i = 1:size(head, 2)
    value = fgets(fileID);
    value = strsplit(strtrim(value));
    value = str2double(value(1,2:end));
    values(i,:) = value;
end

fclose(fileID);

output = zeros(730,1);

for i = 1:size(head, 2)
    for j = 1:size(head, 2)
        ii = head(i) - 'A';
        jj = head(j) - 'A';

        output(ii*27 + jj + 1) = values(i,j);
        
    end
% end
output;

%values = double(size(values))


end

