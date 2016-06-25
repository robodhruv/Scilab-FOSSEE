function [u, v, w] = transformPointsForward(tform, x, y, z)
    mat = tform.T;//Extract matrix from struct
    reduced_mat = mat(1:3,1:3); //Transformation Matrix
    
    transF = reduced_mat*[x;y;z];
    u = transF(1); v = transF(2); w = transF(3);
endfunction
