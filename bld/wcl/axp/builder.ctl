# wcl Builder Control file
# ========================

set PROJDIR=<CWD>
set PROJNAME=wclaxp

[ INCLUDE <OWROOT>/build/master.ctl ]
[ LOG <LOGFNAME>.<LOGEXT> ]

[ INCLUDE <OWROOT>/build/defrule.ctl ]

[ BLOCK <1> rel ]
    cdsay <PROJDIR>

[ BLOCK <BINTOOL> build ]
#========================
    cdsay <PROJDIR>
    <CPCMD> <OWOBJDIR>/bwclaxp.exe <OWBINDIR>/bwclaxp<CMDEXT>

[ BLOCK <BINTOOL> clean ]
#========================
    echo rm -f <OWBINDIR>/bwclaxp<CMDEXT>
    rm -f <OWBINDIR>/bwclaxp<CMDEXT>

[ BLOCK <1> rel cprel ]
#======================
    <CCCMD> dosi86/wclaxp.exe     <OWRELROOT>/binw/
    <CCCMD> dosi86/wclaxp.sym     <OWRELROOT>/binw/
    <CCCMD> nt386/wclaxp.exe      <OWRELROOT>/binnt/
    <CCCMD> nt386/wclaxp.sym      <OWRELROOT>/binnt/
    <CCCMD> os2386/wclaxp.exe     <OWRELROOT>/binp/
    <CCCMD> os2386/wclaxp.sym     <OWRELROOT>/binp/
    <CCCMD> linux386/wclaxp.exe   <OWRELROOT>/binl/wclaxp
    <CCCMD> linux386/wclaxp.sym   <OWRELROOT>/binl/
    <CCCMD> ntaxp/wclaxp.exe      <OWRELROOT>/axpnt/
    <CCCMD> ntaxp/wclaxp.sym      <OWRELROOT>/axpnt/

    <CCCMD> ntx64/wclaxp.exe      <OWRELROOT>/binnt64/

[ BLOCK . . ]
#============
cdsay <PROJDIR>
