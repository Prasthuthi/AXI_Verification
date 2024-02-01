module polymorphism;
class Packet;
bit [31:0]data;
 function int send(bit [31:0] data);
      $display("SENDING BASE PACKET");
      return 0;
  endfunction
endclass
class Ethernet_packet extends Packet;
bit [31:0] ether_data;
  function int send(bit [31:0] ether_data);
      $display("SENDING ETHERNET PACKET");
      return 0;
  endfunction
endclass
class Token_packet extends Packet;
bit [31:0] token_data;
  function int send(bit [31:0] token_data);
    $display("SENDING TOKEN PACKET");
      return 0;
  endfunction
endclass
  Packet pkts[10];
  Ethernet_packet ep=new();
  Token_packet tp=new();
  initial begin
    pkts[0]=ep;
    pkts[1]=tp;
    
    pkts[0].send(0);
    pkts[1].send(0);
  end
endmodule

