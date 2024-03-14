function [y1, y2]=Crossover(x1,x2,gamma,VarMin,VarMax)

    alpha=unifrnd(-gamma,1+gamma,size(x1));
    %crossover two point
    y1=alpha.*x1+(1-alpha).*x2;
    y2=alpha.*x2+(1-alpha).*x1;
    
    %crossover one point
    %y1=alpha.*x1+(1-alpha);
    %y2=alpha.*x2+(1-alpha);
    
    y1=max(y1,VarMin);
    y1=min(y1,VarMax);
    
    y2=max(y2,VarMin);
    y2=min(y2,VarMax);

end