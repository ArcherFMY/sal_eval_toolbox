function alg_dir = setup_dir(alg_names,path0)

impaths = setup_path(alg_names,path0);

num = length(impaths);
alg_dir = cell(num,1);
for i = 1 : num
    alg_dir{i,1} = {alg_names{i,1},impaths(i).path,alg_names{i,2},alg_names{i,3},alg_names{i,4}};
end