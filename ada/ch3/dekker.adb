with Ada.Text_IO;
use Ada.Text_IO;

procedure Dekker is
   task T1;
   task T2;
   type Flag is (Up, Down);
   Flag_1, Flag_2 : Flag := Down;
   -- 'up' implies intention to enter critical section
   Turn : Integer range 1..2 := 1;
   task body T1 is
   begin
      loop
         Flag_1 := Up;
         while Flag_2 = Up loop
            if Turn = 2 then
               Flag_1 := Down;
               while Turn = 2 loop
                  null; -- busy wait
               end loop;
               Flag_1 := Up;
            end if;
         end loop;
         -- critical section
         Turn := 2;
         Flag_1 := Down;
         -- rest of task
         Put_Line("Task 1");
      end loop;
   end T1;
   
   task body T2 is
   begin
      loop
         Flag_2 := Up;
         while Flag_1 = Up loop
            if Turn = 1 then
               Flag_2 := Down;
               while Turn = 1 loop
                  null; -- busy wait
               end loop;
               Flag_2 := Up;
            end if;
         end loop;
         -- critical section
         Turn := 1;
         Flag_2 := Down;
         -- rest of task
         Put_Line("Task 2***");
      end loop;
   end T2;
begin
   null;
end Dekker;
