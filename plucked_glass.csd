<CsoundSynthesizer>
<CsOptions>
-odac
;-o plucked_glass_test.wav --format=wav
</CsOptions>
; ==============================================
<CsInstruments>

sr  =  44100
ksmps  =  1
nchnls  =  2
0dbfs  =  1

instr 1  

iamp  = p4
icps  = cpsmidinn(p5)

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
apostsig clip asig, 1, iamp
outs apostsig, apostsig

endin

</CsInstruments>
; ==============================================
<CsScore>
;t 0 30
;i1 0 4 .35 57
;i1 . . .  59
;i1 . . .  60
;i1 . . .  65
;i1 1 4 .35 55
;i1 . . .  62
;i1 . . .  64
;i1 . . .  65
;i1 2 4 .4 79
;i1 2.5 4 .6 77
;i1 3 4 .6 69
;i1 4 4 .5 72
;i1 4 4 .5 71
</CsScore>
</CsoundSynthesizer>
