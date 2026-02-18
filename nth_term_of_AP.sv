class nth_term_of_AP;
  rand bit [4:0] a1, a2, n;
  rand int answer;
  
  function int AP(input bit [4:0] i, input bit[4:0] a, input bit[4:0] b);
    int d = b - a;
    return a + d*(i-1);
  endfunction
  
  function void post_randomize();
    $display("a1 = %0d, a2 = %0d, n = %0d, answer = %0d",a1,a2,n, answer);
  endfunction
  
  constraint c{
    a2 > a1;
    answer == AP(n,a1,a2);
  }
  
endclass
