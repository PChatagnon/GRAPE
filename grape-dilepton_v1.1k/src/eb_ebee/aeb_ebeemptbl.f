*     File eb_ebee/aeb_ebeemptbl.f : Sat Mar 18 19:45:05 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
      subroutine aeb_ebeemptbl
      implicit real*8(a-h,o-z)
      include 'incleb_ebee1.h'
      include 'incl2.h'
      include 'inclk.h'
      include 'incleb_ebeep.h'
*-----------------------------------------------------------------------
      jgraph = 0

* External lines
      call smextf(lincom,amdq(3),pfeb_ebee2,pteb_ebee2u,cfeb_ebee2u)
      exeb_ebee2u(1) = lprtcl
      call smextf(loutgo,amlp(1),pfeb_ebee4,pteb_ebee4m,cfeb_ebee4m)
      exeb_ebee4m(1) = lantip
      call smextf(loutgo,amdq(3),pfeb_ebee9,pteb_ebee9u,cfeb_ebee9u)
      exeb_ebee9u(1) = lprtcl
      call smextf(lincom,amlp(1),pfeb_ebee17,pteb_ebee17m,cfeb_ebee17m)
      exeb_ebee17m(1) = lantip
      call smextf(loutgo,amlp(1),pfeb_ebee33,pteb_ebee33m,cfeb_ebee33m)
      exeb_ebee33m(1) = lprtcl
      call smextf(lincom,amlp(1),pfeb_ebee62,pteb_ebee62m,cfeb_ebee62m)
      exeb_ebee62m(1) = lantip


* Buffer clear for amplitude
      do 200 ih = 0 , leb_ebeeag-1
         agc(ih) = (0.0d0,0.0d0)
  200 continue

      call aeb_ebeempt0

      return
      end
************************************************************************
      subroutine aeb_ebeempt0
      implicit real*8(a-h,o-z)

      include 'incleb_ebee1.h'
      include 'incl2.h'
      include 'inclk.h'
*-----------------------------------------------------------------------
      if(jselg(1) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 1
        call aeb_ebeeg1
      endif

      if(jselg(2) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 2
        call aeb_ebeeg2
      endif

      if(jselg(3) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 3
        call aeb_ebeeg3
      endif

      if(jselg(4) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 4
        call aeb_ebeeg4
      endif

      if(jselg(5) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 5
        call aeb_ebeeg5
      endif

      if(jselg(6) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 6
        call aeb_ebeeg6
      endif

      if(jselg(7) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 7
        call aeb_ebeeg7
      endif

      if(jselg(8) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 8
        call aeb_ebeeg8
      endif

      if(jselg(9) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 9
        call aeb_ebeeg9
      endif

      if(jselg(10) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 10
        call aeb_ebeeg10
      endif

      if(jselg(11) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 11
        call aeb_ebeeg11
      endif

      if(jselg(12) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 12
        call aeb_ebeeg12
      endif

      if(jselg(13) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 13
        call aeb_ebeeg13
      endif

      if(jselg(14) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 14
        call aeb_ebeeg14
      endif

      if(jselg(15) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 15
        call aeb_ebeeg15
      endif

      if(jselg(16) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 16
        call aeb_ebeeg16
      endif

      if(jselg(17) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 17
        call aeb_ebeeg17
      endif

      if(jselg(18) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 18
        call aeb_ebeeg18
      endif

      if(jselg(19) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 19
        call aeb_ebeeg19
      endif

      if(jselg(20) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 20
        call aeb_ebeeg20
      endif

      if(jselg(21) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 21
        call aeb_ebeeg21
      endif

      if(jselg(22) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 22
        call aeb_ebeeg22
      endif

      if(jselg(23) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 23
        call aeb_ebeeg23
      endif

      if(jselg(24) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 24
        call aeb_ebeeg24
      endif

      if(jselg(25) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 25
        call aeb_ebeeg25
      endif

      if(jselg(26) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 26
        call aeb_ebeeg26
      endif

      if(jselg(27) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 27
        call aeb_ebeeg27
      endif

      if(jselg(28) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 28
        call aeb_ebeeg28
      endif

      if(jselg(29) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 29
        call aeb_ebeeg29
      endif

      if(jselg(30) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 30
        call aeb_ebeeg30
      endif

      if(jselg(31) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 31
        call aeb_ebeeg31
      endif

      if(jselg(32) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 32
        call aeb_ebeeg32
      endif

      if(jhiggs .ne. 0) then
      if(jselg(33) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 33
        call aeb_ebeeg33
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(34) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 34
        call aeb_ebeeg34
      endif
      endif

      if(jselg(35) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 35
        call aeb_ebeeg35
      endif

      if(jselg(36) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 36
        call aeb_ebeeg36
      endif

      if(jselg(37) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 37
        call aeb_ebeeg37
      endif

      if(jselg(38) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 38
        call aeb_ebeeg38
      endif

      if(jselg(39) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 39
        call aeb_ebeeg39
      endif

      if(jselg(40) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 40
        call aeb_ebeeg40
      endif

      if(jselg(41) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 41
        call aeb_ebeeg41
      endif

      if(jselg(42) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 42
        call aeb_ebeeg42
      endif

      if(jselg(43) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 43
        call aeb_ebeeg43
      endif

      if(jselg(44) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 44
        call aeb_ebeeg44
      endif

      if(jselg(45) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 45
        call aeb_ebeeg45
      endif

      if(jselg(46) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 46
        call aeb_ebeeg46
      endif

      if(jselg(47) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 47
        call aeb_ebeeg47
      endif

      if(jselg(48) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 48
        call aeb_ebeeg48
      endif

      if(jselg(49) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 49
        call aeb_ebeeg49
      endif

      if(jselg(50) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 50
        call aeb_ebeeg50
      endif

      return
      end