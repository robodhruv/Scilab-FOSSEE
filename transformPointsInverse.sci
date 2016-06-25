function [u, v, w] = transformPointsInverse(tform, x, y, z)
    mat = tform.T;//Extract matrix from struct
    reduced_mat = mat(1:3,1:3); //Transformation Matrix
    
    transI = inv(reduced_mat)*[x;y;z];
    u = transI(1); v = transI(2); w = transI(3);
endfunction
