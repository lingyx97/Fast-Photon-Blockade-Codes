evosSp = {d4O2Sp1, d4O2Sp2, d4O2Sp3}
 
d4O2Sp1[driv_, drivconj_] := ExpandAll[dyson4Occu2SP1 /. 
      {d[tx_] :> driv[tx], dconj[tx_] :> drivconj[tx]}]
 
dyson4Occu2SP1 = 2*E^((-2*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t3]*d[t4]*dconj[t1]*dconj[t2] + 
     2*E^((-2*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - ((3*I)*g0^2*t1)/wm - (I*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + 
        (I*g0^2*t4)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2)*d[t1]*d[t2]*dconj[t3]*dconj[t4]
 
d4O2Sp2[driv_, drivconj_] := ExpandAll[dyson4Occu2SP2 /. 
      {d[tx_] :> driv[tx], dconj[tx_] :> drivconj[tx]}]
 
dyson4Occu2SP2 = 2*E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t2]*d[t4]*dconj[t1]*dconj[t3] + 
     2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t1]*d[t3]*dconj[t2]*dconj[t4]
 
d4O2Sp3[driv_, drivconj_] := ExpandAll[dyson4Occu2SP3 /. 
      {d[tx_] :> driv[tx], dconj[tx_] :> drivconj[tx]}]
 
dyson4Occu2SP3 = 2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t1]*d[t4]*dconj[t2]*dconj[t3] + 
     2*E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t2]*d[t3]*dconj[t1]*dconj[t4]
