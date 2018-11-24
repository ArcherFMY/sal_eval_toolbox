function impaths = setup_path(alg_names,path)

num = size(alg_names,1);
% impaths = struct(num,1);
for i = 1 : num
    impaths(i).path = [path,alg_names{i},'/'];
end