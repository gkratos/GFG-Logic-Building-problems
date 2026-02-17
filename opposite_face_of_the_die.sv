class opposite_face_of_the_die;
  
  rand bit [2:0] n;
  rand int answer;
  
  function void post_randomize();
    $display(" answer = %0d", answer);
  endfunction
  
  constraint c{
   answer == 7-n; 
  }
  
endclass
