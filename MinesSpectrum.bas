0 let j = 0: let r = 0: let t = 250: let q = 0.9: border 7 : paper 7 : ink 0 : let m=87: let a$="": let k = 1: let e = 0
1 let f = 0: let px=16: let py=12: let k=1: let s = 0: let e = 0: let l = 0: cls: if j>r then let r=j:print at 0,0;"record!":for i=1 to t:next i:cls
2 let j= 0: let w=36:let h=81:print at 0,0;"use ijkl space":for i=1 to t:next i:cls
3 print at 0,0;"$: ";9-f;"  score: ";j;"  hiscore: ";r:if screen$(py,px)="$" then let j=j+4:if f>0 then let f=f-1
4 if rnd>q then let xx = px -4 + 2*int(rnd*5): let xy = py -2 + 2*int(rnd*3):print at xy,xx;"o"
5 print at py,px;"*": LET l = j-4*int(j/4):LET a$=INKEY$:let s=0:let y=0:IF a$<>"" THEN LET s=code a$:let e=s-2*int(s/2):IF j>k*100-2 THEN LET k=k+1:LET f=0
6 let c=s-107+e:if sgn(c)=c then print at py,px;"o": let y=1:let j=j+1:let q=q-0.0005:let px = px+(1-e)*c: let py = py+e*c
7 let gx = (y=1)*(l=3)*int(rnd*32): let gy =(y=1)*(l=3)*int(rnd*21): print at gy,gx;"$": IF s=32 THEN IF f<9 THEN print at py-1,px;" ": print at py+1,px;" ": print at py,px-1;" ": print at py,px+1;" ":let f = f + 1
8 if py < 20 AND py > 3 then if screen$(py,px)<>"o" then GOTO 3
9 print at 1,0;"THE END":FOR i = 1 TO t:NEXT i:GOTO 1
