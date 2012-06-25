with Ada.Calendar;
use Ada.Calendar;
with Ada.Text_IO;

procedure Main is
   Start, Finish : Time;
   Interval : Duration := 1.7;
   I : Integer := 0;
begin
   Start := Clock;
   for I in 1..10 loop
      Ada.Text_IO.Put_Line("OMG");
   end loop;
   delay 2.0;
   Finish := Clock;
   if Finish - Start > Interval then
      Ada.Text_IO.Put_Line("Took longer than 1.7 seconds");
   end if;
end;
   
