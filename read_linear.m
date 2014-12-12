function [ output ] = read_linear( filename )
%READ_LINEAR Summary of this function goes here
%   Detailed explanation goes here

% filename = 'PI.txt';
fileID = fopen(filename);
head = fgets(fileID);
head = strsplit(strtrim(head));
head = cell2mat(head);
values = fgets(fileID);
values = strsplit(strtrim(values));
values = str2double(values);

fclose(fileID);

output = zeros(730,1);

for i = 1:size(values, 2)
    for j = 1:size(values, 2)
        ii = head(i) - 'A';
        jj = head(j) - 'A';

        output(ii*27 + jj + 1) = abs(values(i) - values(j));
        
    end
end
output;

%values = double(size(values))



end

