module t_mod
use iso_c_binding
type, bind(c) :: ftype
        integer (c_int) :: i
        character (c_char) :: mes(100)
end type ftype
public :: ftype

interface

 subroutine routine (f) bind(C,name="routine")
     import 
        implicit none
        type(ftype) :: f
 end subroutine  routine

 subroutine array (i) bind(C,name="array")
     import 
        implicit none
        integer(c_int) :: i(3)
 end subroutine  array

end interface

end module t_mod


program tprog
use t_mod

type(ftype) :: f
integer :: a(3)
 call routine(f)
 write(6,*) f%i
 write(6,*) (f%mes(i),i=1,36)
 call array(a)
 write (6,*) a


write(6,*) "Goodbye world"
end program tprog
