*     File ed_edmm/ged_edmmfinit.f : Sat Mar 18 19:45:00 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
      subroutine ged_edmmfinit
      implicit real*8(a-h,o-z)

      include 'incled_edmm1.h'
      include '../inc/graepia.h'
      include 'inclk.h'
      common /chcntl/ jwidth, jtgamm
*-----------------------------------------------------------------------
*-----------------------------------------------------------------------
* Propagator = (i)**(-pphase)
      pphase = -1


* Set KF-Code
      call amkfcd
*-----------------------------------------------------------------------
* mass**2
*-----------------------------------------------------------------------
        amw2 =    amw**2
        amz2 =    amz**2
        ama2 =    ama**2
        amg2 =    amg**2
        amg2 =    amg**2
        amh2 =    amh**2
        amx2 =    amx**2
        amy2 =    amy**2
      amnu2(1) = amnu(1)**2
      amnu2(2) = amnu(2)**2
      amnu2(3) = amnu(3)**2
      amlp2(1) = amlp(1)**2
      amlp2(2) = amlp(2)**2
      amlp2(3) = amlp(3)**2
      amuq2(1) = amuq(1)**2
      amuq2(2) = amuq(2)**2
      amuq2(3) = amuq(3)**2
      amdq2(1) = amdq(1)**2
      amdq2(2) = amdq(2)**2
      amdq2(3) = amdq(3)**2
        amp2 =    amp**2
        amn2 =    amn**2
        amp2 =    amp**2
       amcp2 =   amcp**2
       amcm2 =   amcm**2
       amcz2 =   amcz**2
       amca2 =   amca**2
       amcg2 =   amcg**2
      amjp1s2 = amjp1s**2
      amjp2s2 = amjp2s**2
      amjp372 = amjp37**2
      amjp402 = amjp40**2
      amjp412 = amjp41**2
      amjp442 = amjp44**2
      amyy1s2 = amyy1s**2
      amyy2s2 = amyy2s**2
      amyy3s2 = amyy3s**2
      amyy4s2 = amyy4s**2
      amyy102 = amyy10**2
      amyy112 = amyy11**2

*-----------------------------------------------------------------------
* Parameters for the process
      kmngr  = ned_edmmgraph
      kmnext = ned_edmmextn
      kmlag  = led_edmmag
      smpref = 'ed_edmm'
c??   smproc = 'd positron  --> d positron muon anti-muon '

*-----------------------------------------------------------------------
* Gauge parametes (default is unitary gauge)
      igau00 = 0
      igauab = 0
      igauwb = 0
      igauzb = 0
      igaugb = 0
      agauge(igau00) = 1.0d0
      agauge(igauab) = 1.0d0
      agauge(igauwb) = 1.0d0
      agauge(igauzb) = 1.0d0
      agauge(igaugb) = 1.0d0

* Spin average
      aspin = 1.0d0

*     1: initial d mass=amdq(1)
      jhs(1) = 0
      jhe(1) = lextrn - 1
      aspin = aspin/dble(jhe(1) - jhs(1)+1)

*     2: initial positron mass=amlp(1)
      jhs(2) = 0
      jhe(2) = lextrn - 1
      aspin = aspin/dble(jhe(2) - jhs(2)+1)

*     3: final d mass=amdq(1)
      jhs(3) = 0
      jhe(3) = lextrn - 1

*     4: final positron mass=amlp(1)
      jhs(4) = 0
      jhe(4) = lextrn - 1

*     5: final muon mass=amlp(2)
      jhs(5) = 0
      jhe(5) = lextrn - 1

*     6: final anti-muon mass=amlp(2)
      jhs(6) = 0
      jhe(6) = lextrn - 1

* Flag of cyclic polarization

* Initial color average
      acolav = 1.0d0/3.0d0
      aspin = aspin*acolav

* Symmetry factor for final identical particles
      aident = 1.0d0
*     aident = 1.0d0
      aspin = aspin/aident

* graph selection
      do 10 n1 = 1, ned_edmmgraph
        i = int( (n1-1)/30 ) + 1 
        ibit = n1 - 30*(i-1) - 1 
        jselg(n1) = Ibtest(jgra_flag(i),ibit)
        if (print_flag .EQ. 1) then
          write(6,*)  n1, ' :', jselg(n1)
        endif
   10 continue

      jgraph = 0


*     Graph selection flags
      jgluon = 1

      jhiggs = 1

*     Running width (0) or fixed width(1) in CHANEL
      jwidth = 1

      jtgamm = 1

* weight for the color base
      cfmtx = 3.d0


* Color string information
      kmcbas    = 1
      kmcbmx    = 2
      kmcstr(1) = 1
      kmcstr(2) = 3

*-----------------------------------------------------------------------
* Permutation of external particles
      kperm(1) = 1
      kperm(2) = 2
      kperm(3) = 3
      kperm(4) = 4
      kperm(5) = 5
      kperm(6) = 6

* Particle name
      kmprtc(kperm(1)) = 'd'
      kmprtl(kperm(1)) = 1
      kmprtc(kperm(2)) = 'positron'
      kmprtl(kperm(2)) = 8
      kmprtc(kperm(3)) = 'd'
      kmprtl(kperm(3)) = 1
      kmprtc(kperm(4)) = 'positron'
      kmprtl(kperm(4)) = 8
      kmprtc(kperm(5)) = 'muon'
      kmprtl(kperm(5)) = 4
      kmprtc(kperm(6)) = 'anti-muon'
      kmprtl(kperm(6)) = 9

* Masses of external particles
      amass1(kperm(1)) = amdq(1)
      amass1(kperm(2)) = amlp(1)
      amass1(kperm(3)) = amdq(1)
      amass1(kperm(4)) = amlp(1)
      amass1(kperm(5)) = amlp(2)
      amass1(kperm(6)) = amlp(2)
      amass2(kperm(1)) = amass1(kperm(1))**2
      amass2(kperm(2)) = amass1(kperm(2))**2
      amass2(kperm(3)) = amass1(kperm(3))**2
      amass2(kperm(4)) = amass1(kperm(4))**2
      amass2(kperm(5)) = amass1(kperm(5))**2
      amass2(kperm(6)) = amass1(kperm(6))**2

* Charge*3
      kcharg(kperm(1)) =  -1
      kcharg(kperm(2)) =   3
      kcharg(kperm(3)) =  -1
      kcharg(kperm(4)) =   3
      kcharg(kperm(5)) =  -3
      kcharg(kperm(6)) =   3

* KFcode
      kfcode(kperm(1)) =   1
      kfcode(kperm(2)) = -11
      kfcode(kperm(3)) =   1
      kfcode(kperm(4)) = -11
      kfcode(kperm(5)) =  13
      kfcode(kperm(6)) = -13

*-----------------------------------------------------------------------
* initialization of summary table
      call amclr

      return
      end