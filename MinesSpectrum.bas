0 let j = 0: let r = 0: let t = 250: let q = 0.9: border 5 : paper 0 : ink 7 : let m=87: let k = 1: let up = 0: let lr = 0: let l = 0
1 ink 7: let f = 0: let px=16: let py=12: let k=1: cls: if j>r then let r=j:print at 0,0;"record!":for i=1 to t:next i:cls
2 let j= 0: let w=36: let h=81:print at 0,0;"use ijkl space":for i=1 to t:next i:cls: for i = 0 to 31: print at 2,i;chr$(35);: print at 20,i;chr$(35);: next i: ink 2: print at 1,8;"ooo  mines ooo"
3 ink 5: print at 0,1;": ";9-f;"  score: ";j;"  hiscore: ";r:if screen$(py,px)="$" then let j=j+4:if f>0 then let f=f-1
4 if rnd>q then let xx = px -4 + 2*int(rnd*5): let xx = xx - 32*int(xx/32): let xy = py -2 + 2*int(rnd*3):ink 7: print at xy,xx;"o"
5 ink 2: print at py,px;"*": LET l = j-4*int(j/4):LET s=code inkey$:let lr = (s=108)-(s=106): let ud = (s=107)-(s=105):IF j>k*100-2 THEN LET k=k+1:LET f=0
6 if lr or ud then ink 7: print at py,px;"o":let j=j+1:let q=q-0.0005:let px = px+lr: let py = py+ud: let px = px - 32*int(px/32)
7 let gx = (s>0)*(l=3)*int(rnd*32): let gy =(s>0)*(l=3)*int(rnd*21): ink 6: print at gy,gx;"$": IF s=32 THEN IF f<9 THEN print at py-1,px;" ": print at py+1,px;" ": let f = f + 1: print at py,(px<>0)*(px-1);" ": print at py,(px<>31)*px+1;" ":
8 if py < 20 AND py > 2 then if screen$(py,px)<>"o" then GOTO 3
9 print at 1,0;"THE END":FOR i = 1 TO t:NEXT i:let s = 0: let e = 0: let l = 0: GOTO 1
