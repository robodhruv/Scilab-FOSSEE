function [u, v, w] = outputLimits(tform, x, y, z)
    mat = tform.T;//Extract matrix from struct
    reduced_mat = mat(1:3,1:3); //Transformation Matrix
    
    transformation = reduced_mat*[x;y;z]; //Obtaining Images of the boundary points.
    //Since the transformation is linear, we can claim that the boundary points would still remain at the boundary and hence all interior points also stay within.
    
    u = transformation(1,:); v = transformation(2,:); w = transformation(3,:);
    endfunction
