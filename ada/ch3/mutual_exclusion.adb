with Ada.Text_IO;
use Ada.Text_Io;

With Semaphore_Package;
use Semaphore_Package;

procedure Mutual_Exclusion is
   Mutex : Semaphore;
   task T1;
   task T2;
   
   task body T1 is
   begin
      loop
         Wait(Mutex);
         Put_Line("Task 1");
         Send(Mutex);
         delay 0.01;
      end loop;
   end T1;
   task body T2 is
   begin
      loop
         Wait(Mutex);
         Put_Line("Task 2");
         Send(Mutex);
         delay 0.01;
      end loop;
   end T2;
begin
   null;
end Mutual_Exclusion;
