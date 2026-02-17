class sum_of_n_numbers;
  rand bit [8:0] n;
  rand int answer;
  function void post_randomize();
    $display(" answer = %0d",answer);
  endfunction
  
  function int calc(bit [8:0] i);
    if(i==0)
      return 0;
    else 
      return i + calc(i-1);
  endfunction
  
  constraint c{
    answer == calc(n);
  }
  
endclass
