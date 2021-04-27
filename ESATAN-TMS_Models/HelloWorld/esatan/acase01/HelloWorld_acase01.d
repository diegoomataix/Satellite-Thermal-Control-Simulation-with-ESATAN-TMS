$MODEL HelloWorld_acase01, ACDFILE
# ESATAN-TMS 2020, run date 11:33 Tue 13 Apr 2021
# Model name: HelloWorld        Analysis case: acase01
#
# template file: Template.tpl
# ESATAN-TMS 2020, run date 11:32 Tue 13 Apr 2021
# Model name: HelloWorld        Analysis case: acase01
#
  $LOCALS
    $INCLUDE "HelloWorld_acase01.LOCALS.data"
#
  $NODES
    $INCLUDE "HelloWorld_acase01.NODES.data"
#
  $CONDUCTORS
    $INCLUDE "HelloWorld_acase01.CONDUCTORS.data"
#
  $CONSTANTS
    $INCLUDE "HelloWorld_acase01.CONSTANTS.data"
#
  $ARRAYS
    $INCLUDE "HelloWorld_acase01.ARRAYS.data"
#
  $EVENTS
    $INCLUDE "HelloWorld_acase01.EVENTS.data"
#
  $SUBROUTINES
    $INCLUDE "HelloWorld_acase01.SUBROUTINES.data"
C
  $INITIAL
      GENMOR
    $INCLUDE "HelloWorld_acase01.BOUNDARY_CONDS.data"
    $INCLUDE "HelloWorld_acase01.INITIAL.data"
C
  $EXECUTION
C
C Steady State Solution
C
      RELXCA=0.01
      NLOOP=100
C
      CALL SOLVFM
C
C Transient Solution
C
      TIMEND=PERIOD
      DTIMEI=TIMEND/100.0
      OUTINT=TIMEND/10.0
C
      CALL SLCRNC

C
      TIMEND=6050.2473
      OUTINT=605.02473
      NLOOP=500
      RELXCA=0.01
      DTIMEI=10.0
      CALL SOLCYC('SLCRNC',0.01D0,0.01D0,6050.2473D0,50,' ','NONE')
C
      CALL SLCRNC
C
  $VARIABLES1
    $INCLUDE "HelloWorld_acase01.VARIABLES1.data"
C
  $VARIABLES2
    $INCLUDE "HelloWorld_acase01.VARIABLES2.data"
C
  $OUTPUTS
      CALL PRNDTB(' ', 'L, T, QS, QE, QA, QI, C', CURRENT)
C
      CALL DMPTMD(' ', 'NODES, CONDUCTORS, CONSTANTS', CURRENT, ' ')

    $INCLUDE "HelloWorld_acase01.OUTPUTS.data"
C
$ENDMODEL #HelloWorld_acase01
