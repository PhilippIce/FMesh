program testqhull
! dummy program to test calling qhull
use utils
implicit none

integer(kind=idx_t) :: d=2
integer(kind=idx_t) :: np=10
integer(kind=idx_t) :: ierr 

real(kind=real_t),allocatable :: points(:,:)

integer :: i

allocate(points(d,np))
points=0.d0
do i =1,np
  points(1,i)=RAND()
  points(2,i)=RAND()
enddo

ierr = triangulate(d,np,points)

end program testqhull
