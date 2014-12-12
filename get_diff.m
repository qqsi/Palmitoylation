function [ output ] = get_diff( motif, motifs )
%GET_DIFF Summary of this function goes here
%   Detailed explanation goes here
    output = zeros(1, 730);
    for i = 1:size(motifs, 1)
        for j = 1:size(motif, 2)
            ii = motif(j) - 'A';
            jj = motifs(i,j) - 'A';

            output(ii*27 + jj + 1) = output(ii*27 + jj + 1) + 1;
        end
    end
    output = output ./ size(motifs, 1);
    
end

