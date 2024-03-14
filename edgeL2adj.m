   function adj=edgeL2adjj(e)
     Av=[e; fliplr(e)];
    nodes=unique(Av(:, 1:2)); % get all nodes, sorted
    adj=zeros(numel(nodes));   % initialize adjacency matrix
    % across all edges
    for i=1:size(Av,1)
        adj(nodes==Av(i,1),(nodes==Av(i,2)))=1;
    end
end