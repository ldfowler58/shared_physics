module ldf_microphysics

   implicit none

   public :: ldf_mp_version, &
             ldf_mp_init, &
             ldf_mp

   private

   character(len=*), parameter :: ldf_mp_version = '2.0'


contains


   !-----------------------------------------------------------------------
   !  routine ldf_mp_init
   !
   !> \brief Initialize the MGD microphysics scheme
   !> \details
   !>  This initialization routine must be called before the first call
   !>  to the ldf_mp() routine.
   !
   !-----------------------------------------------------------------------
   subroutine ldf_mp_init()

       write(0,*) 'Initializing the LDF microphysics...'

   end subroutine ldf_mp_init


   !-----------------------------------------------------------------------
   !  routine ldf_mp_init
   !
   !> \brief MGD microphysics scheme
   !> \details
   !>  This is the main MGD microphysics scheme.
   !
   !-----------------------------------------------------------------------
   subroutine ldf_mp(qc, qr, qi, qs, qg)

       real, intent(inout) :: qc    ! Cloud water mixing ratio (kg/kg)
       real, intent(inout) :: qr    ! Rain mixing ratio (kg/kg)
       real, intent(inout) :: qi    ! Cloud ice mixing ratio (kg/kg)
       real, intent(inout) :: qs    ! Snow mixing ratio (kg/kg)
       real, intent(inout) :: qg    ! Graupel mixing ratio (kg/kg)

       write(0,*) 'Running the LDF microphysics version '//trim(ldf_mp_version)
       write(0,*) 'Atmospheric state: '
       write(0,*) ' qc = ', qc
       write(0,*) ' qr = ', qr
       write(0,*) ' qi = ', qi
       write(0,*) ' qs = ', qs
       write(0,*) ' qg = ', qg

   end subroutine ldf_mp

end module ldf_microphysics
