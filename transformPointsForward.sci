function trans = transformPointsForward(tform, x, y, z)
    mat = tform.T;//Extract matrix from struct
    reduced_mat = mat(1:3,1:3); //Transformation Matrix
    
    trans = reduced_mat*[x;y;z];
endfunction
