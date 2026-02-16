class multiplication_table;
  rand bit [4:0] n;
  rand int table_n[10];
  
  function void post_randomize();
    foreach(table_n[i])
      begin
        $display(" %0d x %0d = %0d",n,(i+1),table_n[i]);        
      end
  endfunction
  
  constraint n_table{
    foreach(table_n[i])
    {
      table_n[i] == n*(i+1); 
    }
    
  }
  
  
endclass
