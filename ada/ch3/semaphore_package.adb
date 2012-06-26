package body Semaphore_package is
   procedure Wait(S : in out Semaphore) is
   begin
      if S.Sem = 0 then
         while S.Sem = 0 loop
            null;
         end loop;
      end if;
      S.Sem := S.Sem - 1;
   end Wait;
   procedure Send(S : in out Semaphore) is
   begin
      S.Sem := S.Sem + 1;
   end Send;
end Semaphore_Package;

   

         
