class sum_of_digits;
  rand bit [6:0] a;
  rand int answer;
  
  function void post_randomize();
    $display("a = %0d answer = %0d",a, answer);
  endfunction

  function int sum_of_d(input bit[6:0] n);
    int sum;
    while(n!=0)
      begin
        sum = sum + (n%10);
        n = n/10;
      end
    return sum;
  endfunction
  
  constraint c{
    answer == sum_of_d(a); 
  }
endclass
