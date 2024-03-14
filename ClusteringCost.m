function [z, out] = ClusteringCost(m, X)

n=numel(X);
for i=1:n
    
if(X(n)>=0.5)
    X(n)=1;
else
    X(n)=0;
end
end
    % Calculate Distance Matrix
    m=reshape(m,34,3)';  
     d = pdist2(X, m,'jaccard');
    
  %  d = pdist2(X, m,@nmi1(Xi,Yj) nmi(Xi,Xj,Wgts));
    
    % Assign Clusters and Find Closest Distances
    [dmin, ind] = min(d, [], 2);
    
    % Sum of Within-Cluster Distance
    WCD = sum(dmin);
    
    z=WCD;

    out.d=d;
    out.dmin=dmin;
    out.ind=ind;
    %out.WCD=WCD;
%NMI formula    
%     out.WCD=  (nmi(m(1,:),m(3,:))+nmi(m(2,:),m(3,:))+nmi(m(1,:),m(2,:)))/3*rand;     
    %z=out.WCD;
        
end


