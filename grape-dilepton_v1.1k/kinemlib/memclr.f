       SUBROUTINE MEMCLR(R,N1,N2)
       REAL*8 R(9)
       DO 1 I=1,N1
1       R(I)=N2
       RETURN
       END
