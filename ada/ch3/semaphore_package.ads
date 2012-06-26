package Semaphore_Package is
   type Semaphore is limited private;
   procedure Wait(S: in out Semaphore);
   procedure Send(S: in out Semaphore);
private
   type Semaphore is
      record
         Sem : Natural := 1;
      end record;
end Semaphore_Package;
