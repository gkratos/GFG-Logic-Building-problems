class closest_to_n_divisible_by_m;
  
  rand bit [9:0] m,n;
  rand int answer;
  
  function void post_randomize();
    $display("%0d, %0d, answer = %0d",n,m,answer);
  endfunction
  
  constraint c{
    if(((n%m)+n)%m ==0 && (n-(n%m))%m == 0)
    {
      answer == (n%m)+n;
    }
      else
      {
        answer == n-(n%m);
      }
  }
  
endclass
