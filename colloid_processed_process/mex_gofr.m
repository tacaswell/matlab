function out = mex_gofr(fname)
   
    output = open(fname);
    
    tmp = output.all_pks_trim(:,[2 3 end]);
    tmp(:,3) = tmp(:,3) -1;
    out.stack_name = output.fname;
    clear output
    [out.gofr out.edges] = basic_static(tmp);
    out.fname = fname;
    clear basic_static;
end