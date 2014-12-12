function matrix = GetTestFeatureMatrix(test, seq, labels, paras)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    pos_indices = labels == 1;
    neg_indices = labels == -1;
    
    pos_data = seq(pos_indices, :);
    neg_data = seq(neg_indices, :);
    
    num_of_instances = length(test);
    matrix = zeros(num_of_instances, 16);
    
    for i = 1:num_of_instances
        cur = test(i, :);
        pos = get_diff(cur, pos_data) * paras;
        neg = get_diff(cur, neg_data) * paras;
        
        matrix(i, :) = [pos neg];
    end
end