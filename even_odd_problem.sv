class even_odd_problem;
  
  rand bit [4:0] n;
  rand bit answer;
  
  constraint even_odd{
    if(n%2==0)
    {
      answer == 0;
    }
      else
      {
        answer == 1;
      }
  }
        
        function void post_randomize();
    $display($time,"for %0d answer = %0d",n,answer);
    endfunction
  
endclass
