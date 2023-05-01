function result = TENSORPROD (a, b, a_con, b_con, DimA, DimB)


dimA = max(length(size(a)), DimA);
dimB = max(length(size(b)), DimB);

a_ncon = setdiff(1:dimA, a_con);
b_ncon = setdiff(1:dimB, b_con);
% disp(a_ncon)
% disp(b_ncon)

a_mat = permute(a, [a_ncon, a_con]);
b_mat = permute(b, [b_con, b_ncon]);

size_a = [size(a), ones(1, dimA - length(size(a)))];
size_b = [size(b), ones(1, dimB - length(size(b)))];

dimx_mat_a = 1;
dimy_mat_a = 1;
dimy_mat_b = 1;

for ii = a_ncon
    dimx_mat_a = dimx_mat_a * size_a(ii);
end

for ii = a_con
    dimy_mat_a = dimy_mat_a * size_a(ii);
end

for ii = b_ncon
    dimy_mat_b = dimy_mat_b * size_b(ii);
end

dimx_mat_b = dimy_mat_a;


a_mat = RESHAPE(a_mat, [dimx_mat_a, dimy_mat_a]);
b_mat = RESHAPE(b_mat, [dimx_mat_b, dimy_mat_b]);

result_mat = a_mat * b_mat;
result = RESHAPE(result_mat, [size_a(a_ncon) ,size_b(b_ncon)]);


end
