function tform = MYaffine3d(varargin)
    [index num] = argn(0); // num would store the number of input parameters given to the function
    tform = struct(); // This is the return variable of the function
    
    if num==0 then tform.T = eye(4,4);
    else tform.T = varargin(1);
    end
    tform.Dimensionality = 3; //Dimensionality Feature
    
    tform.invert = inv(tform.T);
    tform.isRigid = 0; //Stores 1/0 depending on whether the transformation is rigid or not.
    if tform.T*tform.T' == eye(4,4) then tform.isRigid = 1;
    end
    
    tform.isSimilar = 0; //Stores 1/0 depending on whether the transformation is denotes similarity or not.
    sampl = rand(4,4);
    [self1 self2] = spec(sampl);
    similar = inv(tform.T)*sampl*tform.T;
    [sim1 sim2] = spec(similar);
    if self2==sim2 then tform.isSimilar = 1
    end
    
    tform.isTranslation = 0; //Checks pure translation.
    if diag(tform.T) == ones(4,1) then tform.isTranslation =1;
    end
    
    function ab = fun(x, y)
        ab =2;
endfunction
