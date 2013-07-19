;===========================================================================
; Super Moves
;===========================================================================

;---------------------------------------------------------------------------
; Gato!
[Statedef 2000]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 2000
poweradd = -1000
sprpriority = 2

[State 2000, NHB]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 2110, Super Pause]
type = Explod
trigger1 = AnimElem = 2
removetime = -1
ID = 2000
anim = 7055
pos = 5, -25
ownpal = 1
sprpriority = 3
shadow = -1
removeongethit = 1
supermovetime = 99999
ignorehitpause = 1

[State 2000, Explosion]
type = Helper
trigger1 = AnimElemTime(2) = 20
name = "Gato"
ID = 2000
stateno = 2001
pos = 17, -85
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0
supermovetime = 999999

[State 2000, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 7000
ID = 7000
name = "Super Charge"
postype = p1
pos = 0,0
ownpal = 1
persistent = 0
supermovetime = 9999

[State 2000, Super Pause]
type = superpause
trigger1 = time = 1
time = 45
movetime = 45
anim = -1
sound = S7010,2
p2defmul = 1
darken = 0

[State 2000, End]
type = RemoveExplod
trigger1 = Time > 1 && !NumHelper(7000)
ID = 2000
ignorehitpause = 1

[State 2000, End]
type = ChangeState
trigger1 = Time > 1 && !NumHelper(7000)
value = 0
ctrl = 1

; Gato
[Statedef 2001]
type    = A
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 7053
sprpriority = 2

[State 2001, Trans]
type = Trans
trigger1 = Time = [0, 16]
trans = AddAlpha
alpha = 16 * Time, 256 - 16 * Time
ignorehitpause = 1

[State 2002, Fall]
type = VelSet
trigger1 = 1
Y = 3.1

[State 2002, Fall]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 2002, Land]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y > - Vel Y
value = 2002

;Gato - Walking and Punching
[Statedef 2002]
type    = S
movetype= A
physics = N
ctrl = 0
velset = 0,0
sprpriority = 2
facep2 = 1

[State 2013, RealTime]
type = ChangeAnim
trigger1 = !Time && PrevStateNo != 2003
value = 7050
ignorehitpause = 1

[State 2013, RealTime]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 2003
value = Var(1)
elem = Var(2)
ignorehitpause = 1

[State 2004, NHB]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP
stateno = 2003
ignorehitpause = 1

[State 2004, NHB]
type = NotHitBy
trigger1 = 1
value = , AT
ignorehitpause = 1

[State 2013, RealTime]
trigger1 = !Time && PrevStateNo != 2003
type = VarSet
v = 0
value = -120
persistent = 0
ignorehitpause = 1

[State 2003, Shake]
type = EnvShake
trigger1 = !Time && PrevStateNo != 2003
freq = 120
time = 12
ampl = 8

[State 2003, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 7050 && !AnimTime
value = 7051
persistent = 0

[State 2003, Walk]
type = PosSet
trigger1 = !Var(0)
Y = 0

[State 2003, Walk]
type = VelSet
trigger1 = Anim = 7051
X = 2.5

[State 2013, HitDef]
type = HitDef
trigger1 = Var(0) = -120
attr = S, HA
damage = 21,3
animtype = Hard
air.type = Low
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0,10
sparkno = -1
hitsound = S7020,5
guardsound = 5,0
ground.type = Low
ground.velocity = 0, 0
ground.hittime = 5
ground.slidetime = 5
guard.velocity = -1
air.velocity = 0,0
airguard.velocity = 0, 0
air.hittime = 5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4
air.fall = 1
snap = 40, 0
fall = 0
fall.recover = 0
fall.recovertime = 120
fall.animtype = Medium
getpower = 0, 0
givepower = 36, 36
palfx.color = 0
palfx.add = 144, 64, 7
palfx.mul = 256, 256, 256
palfx.time = 20
ignorehitpause = 1
numhits = 0

[State 2013, HitDef]
type = HitDef
trigger1 = Anim = 7052 
trigger1 = AnimElemTime(3) = 2
trigger1 = Var(0) <= 80
attr = S, HA
damage = 15,3
animtype = Hard
air.type = Low
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0,19
sparkno = -1
hitsound = S7020,5
guardsound = 5,0
ground.type = Low
ground.velocity = 0, 0
ground.hittime = 5
ground.slidetime = 5
guard.velocity = -1
air.velocity = 0,0
airguard.velocity = 0, 0
air.hittime = 5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4
air.fall = 1
snap = 40, 0
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.animtype = Medium
getpower = 0, 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
palfx.color = 0
palfx.add = 144, 64, 7
palfx.mul = 256, 256, 256
palfx.time = 20
ignorehitpause = 1
numhits = 1


[State 2002, ChangeState]
type = VarSet
trigger1 = RoundState = 2
trigger1 = Win
V = 0
value = 10
ignorehitpause = 1

[State 2002, ChangeState]
type = ChangeState
trigger1 = RoundState = 3
trigger1 = Win
value = 2004
ignorehitpause = 1

[State 2013, Pawnch]
type = ChangeAnim
trigger1 = Anim = 7051
trigger1 = MoveContact
value = 7052

[State 2013, Pawnch]
type = VelSet
trigger1 = Anim = 7052
X = 0 

[State 2013, Var]
type = VarAdd
trigger1 = 1
v = 0
value = 1
ignorehitpause = 1

[State 2013, Var]
type = VarSet
trigger1 = MoveContact && Var(0) < 0
v = 0
value = 0
ignorehitpause = 1

[State 1022, Explod]
type = Explod
trigger1 = NumExplod(1020) < 6
trigger1 = Var(0) % 4
trigger1 = Var(0) > 60
anim = 7002
ID = 1020
pos = 25 - (Random % 50), - (Random % 60)
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0, -1.2
accel = 0,0
removetime = -2
scale = 1 , 1
sprpriority = 4
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 0

[State 2013, EndTrans]
type = Trans
trigger1 = Var(0) >= 80
trans = AddAlpha
alpha = 256 - 16 * (Var(0) - 80), 16 * (Var(0) - 80)
ignorehitpause = 1

[State 2002, End]
type = DestroySelf
trigger1 = var(0) >= 96
ignorehitpause = 1

;Gato Gethit
[Statedef 2003]
type    = S
movetype= H
physics = S
ctrl = 0
sprpriority = 2

[State 2004, Var]
type = VarAdd
trigger1 = 1
V = 0
value = 1
ignorehitpause = 1

[State 2004, Anim]
type = VarSet
trigger1 = !Time
trigger1 = PrevStateNo != 2003
V = 1
value = Anim
ignorehitpause = 1

[State 2004, Anim]
type = VarSet
trigger1 = !Time
trigger1 = PrevStateNo != 2003
V = 2
value = AnimElemNo(0)
ignorehitpause = 1

[State 2004, Anim]
type = ChangeAnim
trigger1 = !Time
value = 7053
ignorehitpause = 1

[State 2004, NHB]
type = HitOverride
trigger1 = 1
attr = , AA, AP
stateno = 2003
ignorehitpause = 1

[State 2004, NHB]
type = NotHitBy
trigger1 = 1
value = , AT
ignorehitpause = 1

[State 2013, EndTrans]
type = Trans
trigger1 = Var(0) >= 80
trans = AddAlpha
alpha = 256 - 16 * (Var(0) - 80), 16 * (Var(0) - 80)
ignorehitpause = 1

[State 2002, End]
type = DestroySelf
trigger1 = var(0) >= 96
ignorehitpause = 1

[State 2004, End]
type = ChangeState
trigger1 = Time > GetHitVar(HitTime)
value = 2002
ignorehitpause = 1

; Gato Win
[Statedef 2004]
type    = S
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 7050
sprpriority = 2

[State 2004, Anim]
type = ChangeAnim
trigger1 = Parent, StateNo = 181
value = 7054
persistent = 0


;---------------------------------------------------------------------------
;Flare 
[Statedef 2010]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 2010
poweradd = -1000
sprpriority = 2

[State 2010, NHB]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 2010, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 7000
ID = 7000
name = "Super Charge"
postype = p1
pos = 0,0
ownpal = 1
persistent = 0
supermovetime = 9999

[State 2011, Explosion]
type = Helper
trigger1 = !Time
name = "Flare"
ID = 2010
stateno = 2012
pos = 17, -35
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0
supermovetime = 9999

[State 2010, Super Pause]
type = superpause
trigger1 = time = 1
time = 45
movetime = 45
anim = -1
sound = S7010,2
p2defmul = 1
darken = 0

[State 2010, End]
type = ChangeState
trigger1 = Time > 1 && !NumHelper(7000)
value = 2011
ctrl = 0

;Flare Summoning
[Statedef 2011]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 2011
sprpriority = 2
facep2 = 1

[State 2011, End]
type = ChangeState
triggerall = Time > 80
trigger1 = Command != "holdfwd"
trigger1 = Command != "holdback"
trigger1 = Command != "holdup"
trigger1 = Command != "holddown"
trigger2 = !NumHelper(2010)
value = 0
ctrl = 1

;The Flare (pre-explosion)
[Statedef 2012]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 7200
sprpriority = 3
facep2 = 1
velset = 0,0

[State 2012, VarRandom]
type = VarRandom
trigger1 = 1
v = 0
range = -50,50
     
[State 2012, VarRandom]
type = VarRandom
trigger1 = 1
v = 1
range = -50,50

[State 2012, Helper]
type = Helper
trigger1 = ((GameTime%5) = 0)
helpertype = Normal
name = "PerseEffect"
id = 2014
pos = var(0),var(1)
postype = p1
facing = 1
stateno = 2014
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999
ignorehitpause = 1

[State 2012, Boom]
type = ChangeState
trigger1 = Parent, StateNo = 2011
trigger1 = Parent, AnimElem = 3
value = 2013
ignorehitpause = 1

[State 2012, Fail]
type = DestroySelf
trigger1 = Parent, StateNo != 2010
trigger1 = Parent, StateNo != 2011
ignorehitpause = 1

;The Flare
[Statedef 2013]
type    = A
movetype= A
physics = N
poweradd= 0
ctrl = 0
anim = 7060
sprpriority = 3
velset = 0.8,0

[State 2013, PosAdd]
type = Turn
trigger1 = !Time && PrevStateNo != 2013
trigger1 = Facing != Parent, Facing
ignorehitpause = 1

[State 2013, PosAdd]
type = VelSet
trigger1 = MoveContact
X = 0 
ignorehitpause = 1

[State 2013, PosAdd]
type = PosAdd
trigger1 = Parent, Command = "holdup"
trigger1 = Parent, Command != "holddown"
Y = -1.4
ignorehitpause = 1

[State 2013, PosAdd]
type = PosAdd
trigger1 = Parent, Command != "holdup"
trigger1 = Parent, Command = "holddown"
Y = 1.4
ignorehitpause = 1

[State 2013, Snd]
type = PlaySnd
trigger1 = !Var(0)
value = S6,0
channel = 0

[State 2013, RealTime]
trigger1 = !Time && PrevStateNo != 2013
type = VarSet
v = 0
value = -1
persistent = 0
ignorehitpause = 1

[State 2013, Var]
trigger1 = 1
type = VarAdd
v = 0
value = 1
ignorehitpause = 1

[State 2013, Override]
type = HitOverride
trigger1 = 1
attr = ,AA, AP
slot = 0
stateno = 2023
time = 1
ignorehitpause = 1

[State 2013, Override]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 2013, Override]
type = NotHitBy
trigger1 = 1
value = , AT
time = 1
ignorehitpause = 1

[State 2013, Trans]
type = VarSet
trigger1 = 1
FV = 0
value = Sin(Pi * Var(0) / 20.0)
ignorehitpause = 1

[State 2013, Trans]
type = AngleDraw
trigger1 = (Var(0) % 4) = 0
trigger2 = (Var(0) % 4) = 1
scale = IfElse(FVar(0) > 0, Var(0)/50.0 + 1 * FVar(0), 0.5 + Var(0)/200.0), IfElse(FVar(0) < 0, Var(0)/50.0 + 1 * -FVar(0), 0.5 + Var(0)/200.0)
ignorehitpause = 1

[State 2013, Scale]
type = AngleDraw
triggerall = Var(0) > 40
trigger1 = (Var(0) % 4) = 2
trigger2 = (Var(0) % 4) = 3
scale = (Var(0) - 40) / 33.0, (Var(0) - 40) / 33.0
ignorehitpause = 1

[State 2013, Trans]
type = AssertSpecial
triggerall = Var(0) <= 40
trigger1 = (Var(0) % 4) = 2
trigger2 = (Var(0) % 4) = 3
flag = invisible
ignorehitpause = 1

[State 2013, Trans]
type = Trans
trigger1 = Var(0) = [0, 16]
trans = addalpha
alpha = 16 * Var(0), 256 - 8 * Var(0)
ignorehitpause = 1

[State 2013, Trans]
type = Trans
trigger1 = Var(0) = [17, 70]
trans = addalpha
alpha = 256, 128
ignorehitpause = 1

[State 2013, HitDef]
type = HitDef
trigger1 = Var(0) % 20 = 0
attr = S, HP
damage = 31,3
animtype = Hard
air.type = Low
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0,19
sparkno = -1
hitsound = S7020,5
guardsound = 5,0
ground.type = Low
ground.velocity = 0, 0
ground.hittime = 5
ground.slidetime = 5
guard.velocity = -1
air.velocity = 0,0
airguard.velocity = 0, 0
air.hittime = 5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.4
air.fall = 1
fall = 1
fall.recover = 0
fall.recovertime = 120
fall.animtype = Medium
getpower = 0, 0
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
palfx.color = 0
palfx.add = 144, 64, 7
palfx.mul = 256, 256, 256
palfx.time = 20
ignorehitpause = 1
numhits = IfElse(Var(0) > 0, 0, 1)

[State 2013,2]
type = Explod
trigger1 = NumExplod(2010) < 9
trigger1 = Var(0) % 2 = 0
trigger1 = Var(0) <= 70
anim = 7003
ID = 2010
pos = Random % 50 - 25, Random % 50 - 25
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 4,4
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

;End
[State 2013, Trans]
type = Trans
trigger1 = Var(0) = [70, 86]
trans = addalpha
alpha = 256 - 16 * (Var(0) - 70), 128 + 8 * (Var(0) - 70)

[State 2013, End]
type = DestroySelf
trigger1 = Var(0) >= 86

;Flare Particle
[Statedef 2014]
type    = A
movetype= I
physics = N
ctrl = 0
anim = 7061
sprpriority = 3
facep2 = 1
velset = 0,0

[State 2014, End]
type = DestroySelf
trigger1 = !(Parent, StateNo)
trigger2 = Parent, StateNo != 2012

[state 2014, dist x]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[state 2014, dist x]
type = VarSet
trigger1 = 1
FV = 0
value = ParentDist X

[state 2014, dist x]
type = VarSet
trigger1 = 1
FV = 1
value = ParentDist Y

[state 2014, dist x]
type = VarSet
trigger1 = 1
FV = 2
value = Exp(0.5 * ln(FVar(0)*FVar(0) + FVar(1) * FVar(1)))

[State 2014, vel]
type = Velset
trigger1 = 1
x = Fvar(0)/Fvar(2) * 3.23
y = FVar(1)/Fvar(2) * 3.23

[State 2014, PosAdd]
type = AngleDraw
trigger1 = 1
scale = FVar(2)/60.0, FVar(2)/60.0

[State 2014, DestroySelf]
type = DestroySelf
trigger1 = FVar(2) < 3  || (Time > 10)


;---------------------------------------------------------------------------
;Time Egg
[Statedef 2020]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= -1000
ctrl = 0
anim = 2020
sprpriority = 2
facep2 = 1
velset = 0,0

[State 2000, NHB]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 2110, Super Pause]
type = Explod
trigger1 = AnimElem = 2
removetime = -1
ID = 2000
anim = 7055
pos = 5, -25
ownpal = 1
sprpriority = 3
shadow = -1
removeongethit = 1
supermovetime = 99999
ignorehitpause = 1

[State 2000, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 7000
ID = 7000
name = "Super Charge"
postype = p1
pos = 0,0
ownpal = 1
persistent = 0
supermovetime = 9999

[State 2000, Super Pause]
type = superpause
trigger1 = time = 1
time = 45
movetime = 45
anim = -1
sound = S7010,2
p2defmul = 1
darken = 0

[State 2000, End]
type = ChangeState
trigger1 = Time > 1 && !NumHelper(7000)
value = 2021
ctrl = 1

; Time Egg - Opening
[Statedef 2021]
type    = S
movetype= A
physics = N
juggle  = 3
poweradd= 0
ctrl = 0
anim = 2021
sprpriority = 1

[State 2021, Hit]
type = HitDef
trigger1 = !Time
attr = A, HT 
hitflag = MA-
priority = 4, Miss
sparkno = -1
p1stateno = 2022
p2stateno = 2023
guard.dist = 0
damage = 20, 3 
animtype = Hard
p1facing = 1
pausetime = 5, 0
ground.velocity = 0,0
ground.cornerpush.veloff = 0
fall = 1
fall.recovertime = 120
air.type = Low
getpower = 0,0
givepower = 36, 36
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
envshake.time = 4
envshake.freq = 120
envshake.ampl = 3
air.fall = 0
fall.recover = 0
p1sprpriority = 1
p2sprpriority = 1

;Time Egg - Success
[Statedef 2022]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 2022
sprpriority = 1
poweradd = 0
velset = 0,0

[State 2023, End]
type = ChangeState
trigger1 = Time > 200
value = 0
ctrl = 1

; Time Egg - Hit
[Statedef 2023]
type = A
movetype = H
physics = N
sprpriority = 1

[State 2023, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 2023

[State 2023, Y Adjustment]
type = PosSet
trigger1 = !Time
Y = Const(size.mid.pos.y)

[State 2023, Go Small]
type = AngleDraw
trigger1 = Time <= 60
scale = 1 - Time * 0.016, 1 - Time * 0.016

[State 2023, Go Small]
type = AssertSpecial
trigger1 = Time > 60
flag = invisible






;---------------------------------------------------------------------------

;SKS - start
[Statedef 2100]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= -3000
ctrl = 0
anim = 2107
sprpriority = 2
facep2 = 1
velset = 0,0

[State 2100, NHB]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 2100, PalFx]
type = PalFX
trigger1 = (Time % 8 = 0) && AnimElemNo(0) < 5
time = 2
add = 200, 200, 200
mul = 256, 256, 256

[State 2100, Offset]
type = OffSet
trigger1 = Time % 2 = 0
X = (random % 4) - 2
Y = (random % 4) - 2

[State 2100, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 7000
ID = 7000
name = "Super Charge"
postype = p1
pos = 0,0
ownpal = 1
persistent = 0
supermovetime = 9999

[State 2100, Super Pause]
type = SuperPause
trigger1 = Time = 1
time = 60
movetime = 60
anim = -1
sound = S7010,2
p2defmul = 1
darken = 0

[State 2100, End]
type = ChangeState
trigger1 = Time > 1 && !NumHelper(7000)
value = 2101
ctrl = 0

;SKS - Advancing
[Statedef 2101]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 2100
sprpriority = 2
facep2 = 1

[State 2102, End]
type = PlaySnd
trigger1 = !Time
value = 7050,1
channel = 2

[State 2101, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 2
timegap = 7
framegap = 5
length = 15
paladd = 0, 0, 0
palmul = 0.75, 0.75, 0.75
palcontrast = 160, 32, 32
palpostbright = 0, 0, 0
trans = add1

[State 2101, AfterImage]
type = AfterImageTime
trigger1 = 1
time = 2

[State 2101, vel]
type = VelSet
trigger1 = 1
X  = 4.5

[State 2101, Miss]
type = HitDef
trigger1 = !Time
attr = S, HT
hitflag = 

[State 2101, Hit]
type = HitDef
trigger1 = Time
trigger1 = P2Dist x >= 0 && P2BodyDist x <= 20
attr = S, HT
hitflag = M-
priority = 6, Miss
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p2sprpriority = 1
p1stateno = 2102
fall = 1 
fall.recover = 0

;SKS - Hitting
[Statedef 2102]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 2101
sprpriority = 2
facep2 = 1
velset = 0,0

[State 2102, Throw]
type = TargetState
trigger1 = !time
value = 2105

[State 2102, Bind]
type = TargetBind
trigger1 = animelemtime(2) >= 0 && animelemtime(17) < 0
pos = 10,0

[State 2102, Assert]
type = AssertSpecial
trigger1 = animelemtime(2) >= 0 && animelemtime(17) < 0
flag = nobardisplay
flag2 = noFG

[State 2102, spr]
type = SprPriority
trigger1 = AnimElemTime(1) >= 89
value = 1

[State 2102, Bind]
type = TargetBind
trigger1 = 1
pos = 15, 0

[State 2102, hitadd]
type = HitAdd
trigger1 = AnimElem = 2  || AnimElem = 3  || AnimElem = 4  || AnimElem = 5  || AnimElem = 6  || AnimElem = 7  || AnimElem = 8 || Animelem = 9
trigger2 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = 1

[State 2102, hitdamage]
type = TargetLifeAdd
trigger1 = AnimElem = 2  || AnimElem = 3  || AnimElem = 4  || AnimElem = 5  || AnimElem = 6  || AnimElem = 7  || AnimElem = 8 || Animelem = 9
trigger2 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = - 20
kill = (AnimElemNo(0) > 15)

[State 2102, givepower]
type = TargetPowerAdd
trigger1 = AnimElem = 2  || AnimElem = 3  || AnimElem = 4  || AnimElem = 5  || AnimElem = 6  || AnimElem = 7  || AnimElem = 8 || Animelem = 9
trigger2 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = 36

[State 2102, HitSound]
type = PlaySnd
trigger1 = AnimElem = 2  || AnimElem = 3  || AnimElem = 4  || AnimElem = 5  || AnimElem = 6  || AnimElem = 7  || AnimElem = 8 || Animelem = 9
trigger2 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = 7020,0
;channel = 2

[State 2023, Shake]
type = EnvShake
trigger1 = AnimElem = 2  || AnimElem = 3  || AnimElem = 4  || AnimElem = 5  || AnimElem = 6  || AnimElem = 7  || AnimElem = 8 || Animelem = 9
trigger2 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15 || AnimElem = 16
time = 5
freq = 120
ampl = 10

[State 2102, End]
type = PlaySnd
trigger1 = AnimElem = 12
value = 7050,2
channel = 2

[State 2102, Pause]
type = null;Pause
trigger1 = AnimElemTime(1) = [33,103]
time = 2
movetime = 2

[State 2102, fadeout]
type = AllPalFX
trigger1 = AnimElemTime(2) = -16
time = 16
sinadd = -255, -255, -255, 64

[State 2102, black]
type = EnvColor
trigger1 = animelemtime(2) >= 0 && animelemtime(17) < 0
time = 4
value = 0, 0, 0

[State 2102, Sparks]
type = Explod
trigger1 = AnimElem = 2  || AnimElem = 3  || AnimElem = 4  || AnimElem = 5  || AnimElem = 6  || AnimElem = 7  || AnimElem = 8 || Animelem = 9
trigger2 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15 || AnimElem = 16
anim = 7000 + (random % 2)
ID = 7001
sprpriority = 5
postype = p2
pos = (Random % 40) - 20, (target, const(size.mid.pos.y)) + (Random % 40) - 20
facing = -1
ownpal = 1
ontop = 1
removetime = -2
pausemovetime = 300
supermovetime = 300

[State 2102, Shake]
type = EnvShake
trigger1 = AnimElem = 2  || AnimElem = 3  || AnimElem = 4  || AnimElem = 5  || AnimElem = 6  || AnimElem = 7  || AnimElem = 8 || Animelem = 9
trigger2 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15 || AnimElem = 16
time = 6
freq = 120
ampl = -4

[State 2102, End]
type = TargetState
trigger1 = AnimElemTime(16) >= 0 && numtarget
value = 2106
persistent = 0

[State 2102, End]
type = ChangeState
trigger1 = animelemtime(16) >= 0 && WinKO
value = 300

[State 2102, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;SKS - Flame BG
[Statedef 2103]
anim = 2103
physics = N
velset = 0, 0

[State 7610, Kanji]
type = explod
trigger1 = !time
anim = 2102
ID = 2102
sprpriority = -5
postype = left
pos = 0.5 *  gamewidth, 0.5 * gameheight
scale = 1 * (1.3333333 * gameheight / gamewidth), 1 * (1.3333333 * gameheight / gamewidth)
bindtime = -1

[State 7610, Shrink]
type = modifyexplod
trigger1 = time < 6
ID = 2102
scale = (6.5 - time) * (1.3333333 * gameheight / gamewidth), (6.5 - time) * (1.3333333 * gameheight / gamewidth)

[State 7610, Shrink]
type = modifyexplod
trigger1 = time >= 6
ID = 2102
scale = 1.5 * (1.3333333 * gameheight / gamewidth), 1.5 * (1.3333333 * gameheight / gamewidth)

[State 7610, Assert]
type = assertspecial
trigger1 = time < 120
flag = nomusic

[State 7610, Assert]
type = assertspecial
trigger1 = 1
flag = nobardisplay
ignorehitpause = 1

[State 7610, Assert]
type = assertspecial
trigger1 = time < 120
flag = noFG
ignorehitpause = 1

[State 7610, black]
type = bgpalfx
trigger1 = time < 120
time = 2
add = -255, -255, -255

[State 7610, black]
type = bgpalfx
trigger1 = time = 120
time = 60
add = -255, -255, -255
sinadd = 255, 255, 255, 240

[State 7610, Fade]
type = palfx
trigger1 = time = 120
time = 60
sinadd = -255, -255, -255, 240

[State 2103, pos]
type=PosAdd
trigger1=1
x= 0.5 *  gamewidth - Screenpos x
y= gameheight - Screenpos y

[State 2103, Size]
type = AngleDraw
trigger1 = 1
scale = (gamewidth/320), (gameheight/240)

[State 2103, trans]
type = Trans
trigger1= 1
trans = AddAlpha
alpha = ceil(200*sin(pi*time/(45.0))), 128 + floor(28*sin(pi*time/45.0))

[State 7610, Safety]
type = removeexplod
trigger1 = time >= 180

[State 2080, trans]
type=Destroyself
trigger1=time>=180

;SKS - Got hit
[Statedef 2105]
type = S
movetype = H
physics = S

[State 2105, Exit]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 2105, Anim]
trigger1 = !Time
type = ChangeAnim2
value = 2105
ignorehitpause = 1

;SKS - Lying
[Statedef 2106]
type = L
movetype = H
physics = C

[State 2106, Anim]
trigger1 = !Time
type = ChangeAnim2
value = 2106
ignorehitpause = 1

[State 2106, End]
type = SelfState
trigger1 = !Alive
value = 5150

[State 2106, End]
type = SelfState
trigger1 = Time >= 76 && Alive
value = 5120

;Protect Activation
[Statedef 2110]
type = S
movetype = I
physics = S
anim = 2110
ctrl = 0
velset = 0,0
sprpriority = 1
facep2 = 1

[State 2010, NHB]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

[State 2110, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 7000
ID = 7000
name = "Super Charge"
postype = p1
pos = 0,0
ownpal = 1
persistent = 0
supermovetime = 9999

[State 2110, Super Pause]
type = SuperPause
trigger1 = Time = 1
time = 60
movetime = 60
anim = -1
pos = 0, -20
sound = S7010,2
p2defmul = 1
darken = 0

[State 2110, Super Pause]
type = Explod
trigger1 = AnimElem = 9
removetime = -2
anim = 7100
pos = 0, -20
ownpal = 1
sprpriority = 3
removeongethit = 1
supermovetime = 99999


[State 2110, VarSet]
type = VarSet
trigger1 = (!AnimTime)
v = 21
value = 1

[State 2110, End]
type = ChangeState
trigger1 = Time > 1 && !NumHelper(7000) && Var(21) > 0
value = 0
ctrl = 1

