evos = {d2O1, d4O1, d5O1, d4O2, d6O2, d4O2NoSc}
 
d2O1[driv_, drivconj_] := ExpandAll[dyson2Occu1 /. {d[tx_] :> driv[tx], 
       dconj[tx_] :> drivconj[tx]}]
 
dyson2Occu1 = E^(-(g0^2/wm^2) + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (I*g0^2*t1)/wm - (I*g0^2*t2)/wm - t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2)*d[t2]*dconj[t1] + 
     E^(-(g0^2/wm^2) + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - (I*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - t*\[Kappa] + (t1*\[Kappa])/2 + (t2*\[Kappa])/2)*
      d[t1]*dconj[t2]
 
d4O1[driv_, drivconj_] := ExpandAll[dyson4Occu1 /. {d[tx_] :> driv[tx], 
       dconj[tx_] :> drivconj[tx]}]
 
dyson4Occu1 = -2*E^((-2*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (I*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm - 
        t*\[Kappa] + (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t3]*d[t4]*dconj[t1]*dconj[t2] - 
     2*E^((-2*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm - t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t3]*d[t4]*dconj[t1]*dconj[t2] - 
     E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (I*g0^2*t1)/wm - 
        (I*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t2]*d[t4]*dconj[t1]*dconj[t3] - 
     E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (I*g0^2*t1)/wm - 
        (I*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - t*\[Kappa] + 
        (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t2]*d[t4]*dconj[t1]*dconj[t3] - 
     2*E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t2]*d[t4]*dconj[t1]*dconj[t3] - 
     E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (I*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t1]*d[t4]*dconj[t2]*dconj[t3] - 
     E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (I*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - t*\[Kappa] + 
        (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t1]*d[t4]*dconj[t2]*dconj[t3] - 
     2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t1]*d[t4]*dconj[t2]*dconj[t3] - 
     E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (I*g0^2*t1)/wm - (I*g0^2*t2)/wm - (I*g0^2*t3)/wm + 
        (I*g0^2*t4)/wm - t*\[Kappa] + (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2)*d[t2]*d[t3]*dconj[t1]*dconj[t4] - 
     E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (I*g0^2*t1)/wm - (I*g0^2*t2)/wm - 
        (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2)*d[t2]*d[t3]*
      dconj[t1]*dconj[t4] - 
     2*E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t2]*d[t3]*dconj[t1]*dconj[t4] - 
     E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (I*g0^2*t1)/wm + (I*g0^2*t2)/wm - (I*g0^2*t3)/wm + 
        (I*g0^2*t4)/wm - t*\[Kappa] + (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2)*d[t1]*d[t3]*dconj[t2]*dconj[t4] - 
     E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (I*g0^2*t1)/wm + (I*g0^2*t2)/wm - 
        (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2)*d[t1]*d[t3]*
      dconj[t2]*dconj[t4] - 
     2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t1]*d[t3]*dconj[t2]*dconj[t4] - 
     2*E^((-2*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (I*g0^2*t1)/wm - ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + 
        (I*g0^2*t4)/wm - t*\[Kappa] + (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2)*d[t1]*d[t2]*dconj[t3]*dconj[t4] - 
     2*E^((-2*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - ((3*I)*g0^2*t1)/wm - (I*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + 
        (I*g0^2*t4)/wm - t*\[Kappa] - (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2)*d[t1]*d[t2]*dconj[t3]*dconj[t4]
 
d5O1[driv_, drivconj_] := ExpandAll[dyson5Occu1 /. {d[tx_] :> driv[tx], 
       dconj[tx_] :> drivconj[tx]}]
 
dyson5Occu1 = 2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (I*g0^2*t1)/wm + 
        ((2*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm - t*\[Kappa] + (t1*\[Kappa])/2 - t2*\[Kappa] + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + (t5*\[Kappa])/2)*\[Kappa]*d[t4]*
      d[t5]*dconj[t1]*dconj[t3] + 
     4*E^((-2*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t2)/wm + 
        (I*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - (I*g0^2*t5)/wm - t*\[Kappa] - 
        t1*\[Kappa] + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2)*\[Kappa]*d[t4]*d[t5]*dconj[t2]*dconj[t3] + 
     E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (I*g0^2*t1)/wm - 
        (I*g0^2*t2)/wm + (I*g0^2*t4)/wm - (I*g0^2*t5)/wm - t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - t3*\[Kappa] + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2)*\[Kappa]*d[t2]*d[t5]*dconj[t1]*dconj[t4] + 
     2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (I*g0^2*t1)/wm + 
        ((2*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm - t*\[Kappa] + (t1*\[Kappa])/2 - t2*\[Kappa] + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + (t5*\[Kappa])/2)*\[Kappa]*d[t3]*
      d[t5]*dconj[t1]*dconj[t4] + 
     E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (I*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm + (I*g0^2*t4)/wm - (I*g0^2*t5)/wm - t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - t3*\[Kappa] + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2)*\[Kappa]*d[t1]*d[t5]*dconj[t2]*dconj[t4] + 
     4*E^((-2*g0^2)/wm^2 + (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t2)/wm - 
        ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - (I*g0^2*t5)/wm - t*\[Kappa] - 
        t1*\[Kappa] + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2)*\[Kappa]*d[t3]*d[t5]*dconj[t2]*dconj[t4] + 
     2*E^((-2*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (I*g0^2*t1)/wm - 
        ((2*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm - t*\[Kappa] + (t1*\[Kappa])/2 - t2*\[Kappa] + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + (t5*\[Kappa])/2)*\[Kappa]*d[t1]*
      d[t5]*dconj[t3]*dconj[t4] + 
     4*E^((-2*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t2)/wm + 
        ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - (I*g0^2*t5)/wm - t*\[Kappa] - 
        t1*\[Kappa] + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2)*\[Kappa]*d[t2]*d[t5]*dconj[t3]*dconj[t4] + 
     E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 + (I*g0^2*t1)/wm - (I*g0^2*t2)/wm - 
        (I*g0^2*t4)/wm + (I*g0^2*t5)/wm - t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - t3*\[Kappa] + (t4*\[Kappa])/2 + (t5*\[Kappa])/2)*
      \[Kappa]*d[t2]*d[t4]*dconj[t1]*dconj[t5] + 
     2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 + (I*g0^2*t1)/wm + 
        ((2*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - t*\[Kappa] + (t1*\[Kappa])/2 - t2*\[Kappa] + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + (t5*\[Kappa])/2)*\[Kappa]*d[t3]*
      d[t4]*dconj[t1]*dconj[t5] + 
     E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 - (I*g0^2*t1)/wm + (I*g0^2*t2)/wm - 
        (I*g0^2*t4)/wm + (I*g0^2*t5)/wm - t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - t3*\[Kappa] + (t4*\[Kappa])/2 + (t5*\[Kappa])/2)*
      \[Kappa]*d[t1]*d[t4]*dconj[t2]*dconj[t5] + 
     4*E^((-2*g0^2)/wm^2 + (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t2)/wm - 
        ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + (I*g0^2*t5)/wm - t*\[Kappa] - 
        t1*\[Kappa] + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2)*\[Kappa]*d[t3]*d[t4]*dconj[t2]*dconj[t5] + 
     2*E^((-2*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 - (I*g0^2*t1)/wm - 
        ((2*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - t*\[Kappa] + (t1*\[Kappa])/2 - t2*\[Kappa] + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + (t5*\[Kappa])/2)*\[Kappa]*d[t1]*
      d[t4]*dconj[t3]*dconj[t5] + 
     4*E^((-2*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t2)/wm + 
        ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + (I*g0^2*t5)/wm - t*\[Kappa] - 
        t1*\[Kappa] + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2)*\[Kappa]*d[t2]*d[t4]*dconj[t3]*dconj[t5] + 
     2*E^((-2*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 - (I*g0^2*t1)/wm - 
        ((2*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - t*\[Kappa] + (t1*\[Kappa])/2 - t2*\[Kappa] + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + (t5*\[Kappa])/2)*\[Kappa]*d[t1]*
      d[t3]*dconj[t4]*dconj[t5] + 
     4*E^((-2*g0^2)/wm^2 - (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - t*\[Kappa] - t1*\[Kappa] + (t2*\[Kappa])/2 + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + (t5*\[Kappa])/2)*\[Kappa]*d[t2]*
      d[t3]*dconj[t4]*dconj[t5]
 
d4O2[driv_, drivconj_] := ExpandAll[dyson4Occu2 /. {d[tx_] :> driv[tx], 
       dconj[tx_] :> drivconj[tx]}]
 
dyson4Occu2 = 2*E^((-2*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t3]*d[t4]*dconj[t1]*dconj[t2] + 
     2*E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t2]*d[t4]*dconj[t1]*dconj[t3] + 
     2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
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
        (t4*\[Kappa])/2)*d[t2]*d[t3]*dconj[t1]*dconj[t4] + 
     2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t1]*d[t3]*dconj[t2]*dconj[t4] + 
     2*E^((-2*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - ((3*I)*g0^2*t1)/wm - (I*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + 
        (I*g0^2*t4)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2)*d[t1]*d[t2]*dconj[t3]*dconj[t4]
 
d6O2[driv_, drivconj_] := ExpandAll[dyson6Occu2 /. {d[tx_] :> driv[tx], 
       dconj[tx_] :> drivconj[tx]}]
 
dyson6Occu2 = -6*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm + ((5*I)*g0^2*t3)/wm - ((5*I)*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t4]*d[t5]*
      d[t6]*dconj[t1]*dconj[t2]*dconj[t3] - 
     6*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        ((5*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - ((5*I)*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t4]*d[t5]*
      d[t6]*dconj[t1]*dconj[t2]*dconj[t3] - 
     6*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((5*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - ((5*I)*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t4]*d[t5]*
      d[t6]*dconj[t1]*dconj[t2]*dconj[t3] - 
     4*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t5]*
      d[t6]*dconj[t1]*dconj[t2]*dconj[t4] - 
     2*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t5]*
      d[t6]*dconj[t1]*dconj[t2]*dconj[t4] - 
     6*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        ((5*I)*g0^2*t2)/wm - ((5*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t5]*
      d[t6]*dconj[t1]*dconj[t2]*dconj[t4] - 
     6*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((5*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - ((5*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t5]*
      d[t6]*dconj[t1]*dconj[t2]*dconj[t4] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t5]*
      d[t6]*dconj[t1]*dconj[t3]*dconj[t4] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t5]*
      d[t6]*dconj[t1]*dconj[t3]*dconj[t4] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t5]*
      d[t6]*dconj[t1]*dconj[t3]*dconj[t4] - 
     6*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((5*I)*g0^2*t1)/wm - 
        ((5*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t5]*
      d[t6]*dconj[t1]*dconj[t3]*dconj[t4] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t5]*
      d[t6]*dconj[t2]*dconj[t3]*dconj[t4] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t5]*
      d[t6]*dconj[t2]*dconj[t3]*dconj[t4] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t5]*
      d[t6]*dconj[t2]*dconj[t3]*dconj[t4] - 
     6*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((5*I)*g0^2*t1)/wm + 
        ((5*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        ((3*I)*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t5]*
      d[t6]*dconj[t2]*dconj[t3]*dconj[t4] - 
     2*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t4]*d[t6]*dconj[t1]*
      dconj[t2]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t4]*d[t6]*dconj[t1]*
      dconj[t2]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - (I*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t4]*d[t6]*dconj[t1]*
      dconj[t2]*dconj[t5] - 
     6*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        ((5*I)*g0^2*t2)/wm - ((5*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t4]*d[t6]*dconj[t1]*
      dconj[t2]*dconj[t5] - 
     6*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((5*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - ((5*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t4]*d[t6]*dconj[t1]*
      dconj[t2]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t4]*d[t6]*dconj[t1]*
      dconj[t3]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t4]*d[t6]*dconj[t1]*
      dconj[t3]*dconj[t5] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t4]*d[t6]*dconj[t1]*
      dconj[t3]*dconj[t5] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t4]*d[t6]*dconj[t1]*
      dconj[t3]*dconj[t5] - 
     6*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((5*I)*g0^2*t1)/wm - 
        ((5*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t4]*d[t6]*dconj[t1]*
      dconj[t3]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t4]*d[t6]*dconj[t2]*
      dconj[t3]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t4]*d[t6]*dconj[t2]*
      dconj[t3]*dconj[t5] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t4]*d[t6]*dconj[t2]*
      dconj[t3]*dconj[t5] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t4]*d[t6]*dconj[t2]*
      dconj[t3]*dconj[t5] - 
     6*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((5*I)*g0^2*t1)/wm + 
        ((5*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t4]*d[t6]*dconj[t2]*
      dconj[t3]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*d[t6]*dconj[t1]*
      dconj[t4]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*d[t6]*dconj[t1]*
      dconj[t4]*dconj[t5] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*d[t6]*dconj[t1]*
      dconj[t4]*dconj[t5] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*d[t6]*dconj[t1]*
      dconj[t4]*dconj[t5] - 
     6*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 + ((5*I)*g0^2*t1)/wm - 
        ((5*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*d[t6]*dconj[t1]*
      dconj[t4]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*d[t6]*dconj[t2]*
      dconj[t4]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*d[t6]*dconj[t2]*
      dconj[t4]*dconj[t5] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*d[t6]*dconj[t2]*
      dconj[t4]*dconj[t5] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*d[t6]*dconj[t2]*
      dconj[t4]*dconj[t5] - 
     6*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((5*I)*g0^2*t1)/wm + 
        ((5*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*d[t6]*dconj[t2]*
      dconj[t4]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm - 
        (I*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*d[t6]*dconj[t3]*
      dconj[t4]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm - 
        (I*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*d[t6]*dconj[t3]*
      dconj[t4]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm - 
        (I*g0^2*t2)/wm + (I*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*d[t6]*dconj[t3]*
      dconj[t4]*dconj[t5] - 
     6*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm - 
        ((5*I)*g0^2*t2)/wm + ((5*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*d[t6]*dconj[t3]*
      dconj[t4]*dconj[t5] - 
     6*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t6*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t6*wm)*g0^2)/wm^2 + 
        (E^((-I)*t5*wm + I*t6*wm)*g0^2)/wm^2 - ((5*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + ((5*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm + 
        (I*g0^2*t5)/wm - (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*d[t6]*dconj[t3]*
      dconj[t4]*dconj[t5] - 
     2*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t4]*d[t5]*dconj[t1]*
      dconj[t2]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t4]*d[t5]*dconj[t1]*
      dconj[t2]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - (I*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t4]*d[t5]*dconj[t1]*
      dconj[t2]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        ((5*I)*g0^2*t2)/wm - ((5*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t4]*d[t5]*dconj[t1]*
      dconj[t2]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((5*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - ((5*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t3]*d[t4]*d[t5]*dconj[t1]*
      dconj[t2]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t4]*d[t5]*dconj[t1]*
      dconj[t3]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t4]*d[t5]*dconj[t1]*
      dconj[t3]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t4]*d[t5]*dconj[t1]*
      dconj[t3]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t4]*d[t5]*dconj[t1]*
      dconj[t3]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((5*I)*g0^2*t1)/wm - 
        ((5*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t4]*d[t5]*dconj[t1]*
      dconj[t3]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t4]*d[t5]*dconj[t2]*
      dconj[t3]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t4]*d[t5]*dconj[t2]*
      dconj[t3]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t4]*d[t5]*dconj[t2]*
      dconj[t3]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t4]*d[t5]*dconj[t2]*
      dconj[t3]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((5*I)*g0^2*t1)/wm + 
        ((5*I)*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t4]*d[t5]*dconj[t2]*
      dconj[t3]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*d[t5]*dconj[t1]*
      dconj[t4]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*d[t5]*dconj[t1]*
      dconj[t4]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*d[t5]*dconj[t1]*
      dconj[t4]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*d[t5]*dconj[t1]*
      dconj[t4]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((5*I)*g0^2*t1)/wm - 
        ((5*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*d[t5]*dconj[t1]*
      dconj[t4]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 - 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*d[t5]*dconj[t2]*
      dconj[t4]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*d[t5]*dconj[t2]*
      dconj[t4]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*d[t5]*dconj[t2]*
      dconj[t4]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*d[t5]*dconj[t2]*
      dconj[t4]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 + (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((5*I)*g0^2*t1)/wm + 
        ((5*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*d[t5]*dconj[t2]*
      dconj[t4]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/
         wm^2 - ((3*I)*g0^2*t1)/wm - (I*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + 
        (I*g0^2*t4)/wm - (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 - (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*
      d[t5]*dconj[t3]*dconj[t4]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm - 
        (I*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + (I*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*d[t5]*dconj[t3]*
      dconj[t4]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/
         wm^2 - (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm - 
        (I*g0^2*t2)/wm + (I*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*d[t5]*dconj[t3]*
      dconj[t4]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm - 
        ((5*I)*g0^2*t2)/wm + ((5*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + (t1*\[Kappa])/2 - 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*d[t5]*dconj[t3]*
      dconj[t4]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t5*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t5*wm)*g0^2)/wm^2 + 
        (E^((-I)*t4*wm + I*t5*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((5*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + ((5*I)*g0^2*t3)/wm + ((3*I)*g0^2*t4)/wm - 
        (I*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] - (t1*\[Kappa])/2 + 
        (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + (t4*\[Kappa])/2 + 
        (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*d[t5]*dconj[t3]*
      dconj[t4]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*
      d[t4]*dconj[t1]*dconj[t5]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*
      d[t4]*dconj[t1]*dconj[t5]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*
      d[t4]*dconj[t1]*dconj[t5]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 + ((5*I)*g0^2*t1)/wm - 
        ((5*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t2]*d[t3]*
      d[t4]*dconj[t1]*dconj[t5]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm - ((3*I)*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*
      d[t4]*dconj[t2]*dconj[t5]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*
      d[t4]*dconj[t2]*dconj[t5]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*
      d[t4]*dconj[t2]*dconj[t5]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((5*I)*g0^2*t1)/wm + 
        ((5*I)*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t3]*
      d[t4]*dconj[t2]*dconj[t5]*dconj[t6] - 
     4*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 - 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t5*wm - I*t6*wm)*g0^2)/
         wm^2 - ((3*I)*g0^2*t1)/wm - (I*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm - 
        ((3*I)*g0^2*t4)/wm + ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 
        2*t*\[Kappa] + (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 - 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*
      d[t4]*dconj[t3]*dconj[t5]*dconj[t6] - 
     2*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm - 
        (I*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*
      d[t4]*dconj[t3]*dconj[t5]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm - 
        ((5*I)*g0^2*t2)/wm + ((5*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*
      d[t4]*dconj[t3]*dconj[t5]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 - 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((5*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + ((5*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*
      d[t4]*dconj[t3]*dconj[t5]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t5*wm)*g0^2)/
         wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t6*wm)*g0^2)/
         wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - (E^(I*t5*wm - I*t6*wm)*g0^2)/
         wm^2 - ((3*I)*g0^2*t1)/wm - (I*g0^2*t2)/wm - ((5*I)*g0^2*t3)/wm + 
        ((5*I)*g0^2*t4)/wm + ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 
        2*t*\[Kappa] + (t1*\[Kappa])/2 + (t2*\[Kappa])/2 - (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*
      d[t3]*dconj[t4]*dconj[t5]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm - 
        ((5*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + ((5*I)*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] + 
        (t1*\[Kappa])/2 - (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*
      d[t3]*dconj[t4]*dconj[t5]*dconj[t6] - 
     6*E^((-3*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t5*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t5*wm)*g0^2)/wm^2 - (E^(I*t4*wm - I*t5*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t6*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t6*wm)*g0^2)/wm^2 + (E^(I*t3*wm - I*t6*wm)*g0^2)/
         wm^2 - (E^(I*t4*wm - I*t6*wm)*g0^2)/wm^2 - 
        (E^(I*t5*wm - I*t6*wm)*g0^2)/wm^2 - ((5*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + ((5*I)*g0^2*t4)/wm + 
        ((3*I)*g0^2*t5)/wm + (I*g0^2*t6)/wm - 2*t*\[Kappa] - 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2 + (t5*\[Kappa])/2 + (t6*\[Kappa])/2)*d[t1]*d[t2]*
      d[t3]*dconj[t4]*dconj[t5]*dconj[t6]
 
d4O2NoSc[driv_, drivconj_] := ExpandAll[dyson4Occu2NoSc /. 
      {d[tx_] :> driv[tx], dconj[tx_] :> drivconj[tx]}]
 
dyson4Occu2NoSc = 2*E^((-2*g0^2)/wm^2 - (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm + 
        (I*g0^2*t2)/wm - ((3*I)*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t3]*d[t4]*dconj[t1]*dconj[t2] + 
     2*E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 - 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t2]*d[t4]*dconj[t1]*dconj[t3] + 
     2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 - (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 - (E^((-I)*t1*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t4*wm)*g0^2)/wm^2 + 
        (E^((-I)*t3*wm + I*t4*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm + (I*g0^2*t3)/wm - (I*g0^2*t4)/wm + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t1]*d[t4]*dconj[t2]*dconj[t3] + 
     2*E^((-2*g0^2)/wm^2 + (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 - 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 - (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 + (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 + ((3*I)*g0^2*t1)/wm - 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t2]*d[t3]*dconj[t1]*dconj[t4] + 
     2*E^((-2*g0^2)/wm^2 + (E^(I*t1*wm - I*t2*wm)*g0^2)/wm^2 - 
        (E^((-I)*t1*wm + I*t3*wm)*g0^2)/wm^2 + 
        (E^((-I)*t2*wm + I*t3*wm)*g0^2)/wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/
         wm^2 - (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t3*wm - I*t4*wm)*g0^2)/wm^2 - ((3*I)*g0^2*t1)/wm + 
        ((3*I)*g0^2*t2)/wm - (I*g0^2*t3)/wm + (I*g0^2*t4)/wm + 
        (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + (t3*\[Kappa])/2 + 
        (t4*\[Kappa])/2)*d[t1]*d[t3]*dconj[t2]*dconj[t4] + 
     2*E^((-2*g0^2)/wm^2 - (E^((-I)*t1*wm + I*t2*wm)*g0^2)/wm^2 + 
        (E^(I*t1*wm - I*t3*wm)*g0^2)/wm^2 + (E^(I*t2*wm - I*t3*wm)*g0^2)/
         wm^2 + (E^(I*t1*wm - I*t4*wm)*g0^2)/wm^2 + 
        (E^(I*t2*wm - I*t4*wm)*g0^2)/wm^2 - (E^(I*t3*wm - I*t4*wm)*g0^2)/
         wm^2 - ((3*I)*g0^2*t1)/wm - (I*g0^2*t2)/wm + ((3*I)*g0^2*t3)/wm + 
        (I*g0^2*t4)/wm + (t1*\[Kappa])/2 + (t2*\[Kappa])/2 + 
        (t3*\[Kappa])/2 + (t4*\[Kappa])/2)*d[t1]*d[t2]*dconj[t3]*dconj[t4]
