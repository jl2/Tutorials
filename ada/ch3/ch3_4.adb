with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   N : Integer := 0;
   task type Simple;
   T1, T2 : Simple;
   
   task body Simple is
   begin
      for I in 1..20 loop
         N := N+1;
         delay 0.001;
      end loop;
   end Simple;
begin
   delay 0.5;
   Put("N = "); Put(N);
end Main;

        
