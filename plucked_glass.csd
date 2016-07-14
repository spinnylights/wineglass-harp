<CsoundSynthesizer>
<CsOptions>
-odac
;-o wineglass_harp_test.wav --format=wav
;-o /dev/null
</CsOptions>
; ==============================================
<CsInstruments>

sr  =  44100
ksmps  =  1
nchnls  =  2
0dbfs  =  1

instr 1  

ivel  = p5
idb ampmidid ivel, 1
iamp = ampdb(idb)
icps  = cpsmidinn(p4)

; string

kpik  = .7
iplk  = .6
idamp = 200
ifilt = 1

aexcite oscil 1, 1
apluck  wgpluck icps, iamp, kpik, iplk, idamp, ifilt, aexcite

; body
; wine glass

abp1 mode apluck, icps, 888
abp1 = abp1*iamp
abp2 mode apluck, icps*2.32, 444
abp2 = abp2*iamp
abp3 mode apluck, icps*4.25, 222
abp3 = abp3*iamp
abp4 mode apluck, icps*6.63, 111
abp4 = abp4*iamp
abp5 mode apluck, icps*9.38, 56
abp5 = abp5*iamp

abody = (abp1+abp2+abp3+abp4+abp5) / 5

; mix

asig = (apluck+abody*1.2)/28
apostsig clip asig, 0, iamp
outs apostsig, apostsig

endin

</CsInstruments>
; ==============================================
<CsScore>
t 0 120
a 0 0 15
i1    15.0000     6  69  80
i1    15.5000     6  76  80
i1    15.7500     6  72  80
i1    16.0000     6  74  80
i1    17.0000     6  74  80
i1    18.0000     6  74  80
i1    18.7500     6  71  80
i1    20.0000     6  74  80
i1    21.0000     6  74  80
i1    22.0000     6  74  80
i1    22.7500     6  76  80
i1    23.5000     6  72  80
i1    24.0000     6  74  80
i1    25.0000     6  74  80
i1    26.0000     6  74  80
i1    26.7500     6  71  80
i1    28.0000     6  74  80
i1    29.0000     6  74  80
i1    30.0000     6  74  80
i1    30.7500     6  76  80
i1    31.5000     6  69  80
i1    32.0000     6  74  80
i1    33.0000     6  74  80
i1    34.0000     6  74  80
i1    34.7500     6  71  80
i1    36.0000     6  74  80
i1    37.0000     6  74  80
i1    38.0000     6  74  80
i1    38.7500     6  76  80
i1    39.5000     6  72  80
i1    40.0000     6  74  80
i1    41.0000     6  74  80
i1    42.0000     6  74  80
i1    42.7500     6  71  80
i1    44.0000     6  74  80
i1    45.0000     6  74  80
i1    46.0000     6  74  80
i1    46.7500     6  76  80
i1    47.5000     6  69  80
i1    48.0000     6  71  80
i1    49.5000     6  69  80
i1    50.0000     6  72  80
i1    51.5000     6  71  80
i1    52.0000     6  74  80
i1    53.5000     6  75  80
i1    54.0000     6  74  80
i1    55.5000     6  79  80
i1    56.0000     6  78  80
i1    60.0000     6  81  80

</CsScore>
</CsoundSynthesizer>
