module queues();
  int i=1;
  int j;
  int b[$]={3,4};
  int q[$]={0,2,5};
  
initial 
  begin
        q.insert(1,"j"); 
    $display("size of q =%d",q.size);
    foreach(q[i])
      $display("q[%0p]=%p",i,q[i]);
    q.insert(3,b[$]); 
    $display("size=%d",q.size);
    foreach(q[i])
      $display("q[%0p]=%p",i,q[i]);
        q.delete(1);
     $display("size=%d",q.size);
    foreach(q[i])
       $display("q[%0p]=%p",i,q[i]);
        q.push_front (6);
     $display("size=%d",q.size);
    foreach(q[i])
      $display("q[%0p]=%p",i,q[i]);
      j=  q.pop_back();
    $display("j=%d",j);
        q.push_back(8);
    foreach(q[i])
      $display("q[%0d]=%0p",i,q[i]);
      j= q.pop_front();
    $display("j=%d",j);
    end
endmodule

