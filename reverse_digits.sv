class reverse_digits;
  
  rand bit [8:0] n;
  rand int answer;
  
  function void post_randomize();
    $display("n = %0d, answer = %0d",n,answer);
  endfunction
  
  function int reverse_number(input bit[8:0] i);
    int temp;
    while(i!=0)
      begin
        temp = temp*(10) +(i%10);
        i = i/10;
      end
    return temp;
  endfunction
  
  constraint c{
    answer == reverse_number(n); 
  }
  
endclass
