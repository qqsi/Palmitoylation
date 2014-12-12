function matrix = GetFeatureMatrix(seq, labels, paras)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    pos_indices = labels == 1;
    neg_indices = labels == -1;
    
    pos_data = seq(pos_indices);
    neg_data = seq(neg_indices);
    
    num_of_instances = size(labels);
    matrix = zeros(num_of_instances, 16);
    
    for i = 1:num_of_instances
        cur = seq(i, :);
        pos = get_diff(cur, pos_data) * paras;
        neg = get_diff(cur, neg_data) * paras;
        
        matrix(i, :) = [pos neg];
    end    
end

