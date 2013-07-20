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
givepower = 6, 42
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
pos = 0, -35
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
attr = SCA,AA, AP
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
sprpriority = 1
facep2 = 1
velset = 0,0

[State 2000, NHB]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA

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

[State 2021, Egg]
type = Helper
trigger1 = AnimElem = 2
name = "Time Egg"
ID = 2020
stateno = 2029
pos = 0, -20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0
supermovetime = 9999

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
pausetime = 0, 0
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

[State 2021, Miss]
type = ChangeAnim
trigger1 = Anim = 2021 
trigger1 = AnimElemNo(0) = 3 
trigger1 = !NumHelper(2020)
value = 2024

[State 2021, End]
type = ChangeState
trigger1 = Anim = 2024 
trigger1 = !AnimTime
value = 0
ctrl = 1

;Time Egg - Success
[Statedef 2022]
type    = S
movetype= A
physics = N
ctrl = 0
anim = 2022
sprpriority = 1
poweradd = 0
velset = 0,0

[State 7011, FollowPlayer]
type = EnvShake
trigger1 = !Time
freq = 80
ampl = 3
time = 31
ignorehitpause = 1

[State 7011, FollowPlayer]
type = VarSet
trigger1 = !Time
FV = 0
value = Target, ScreenPos X - ScreenPos X
ignorehitpause = 1

[State 7011, FollowPlayer]
type = VarSet
trigger1 = !Time
FV = 1
value = Target, ScreenPos Y - ScreenPos Y
ignorehitpause = 1

[State 7011, Time]
type = VarSet
trigger1 = !Time
V = 0
value = 0
ignorehitpause = 1

[State 2110, Super Pause]
type = Explod
trigger1 = Var(0) = 86
removetime = -2
ID = 2020
anim = 7072
postype = left
pos = Floor(GameWidth/2), 0
ownpal = 1
sprpriority = 3
ontop = 1
shadow = -1
removeongethit = 1
supermovetime = 99999
pausemovetime = 99999
ignorehitpause = 1

[State 2110, Super Pause]
type = EnvShake
trigger1 = Var(0) = 86
ampl = 4
freq = 120
time = 60
ignorehitpause = 1

[State 2110, Super Pause]
type = TargetLifeAdd
trigger1 = Var(0) = 106
value = -210
ignorehitpause = 1

[State 7011, Time]
type = VarAdd
trigger1 = !NumHelper(2020)
V = 0
value = 1
ignorehitpause = 1

[State 2102, fadeout]
type = AllPalFX
trigger1 = Var(0) = 60
time = 16
sinadd = -255, -255, -255, 64

[State 2102, fadeout]
type = EnvColor
trigger1 = Var(0) = [76, 150]
time = 1
value = 0, 0, 0 

[State 2102, fadeout]
type = Helper
trigger1 = Var(0) > 0
ID = 2021
name = "Eclipse"
stateno = 2028
postype = p1
pos = 0, -80
pausemovetime = 99999
sprpriority = 4
ownpal = 1
persistent = 0

[State 7011, FollowPlayer]
type = TargetState
trigger1 = Var(0) = 1
value = 2024
ignorehitpause = 1

[State 7011, FollowPlayer]
type = TargetBind
trigger1 = Var(0) = [0, 60]
time = 1
pos = Facing * FVar(0) * (1 - Var(0) /60.0), FVar(1) * (1 - Time/60.0) - Var(0) 
ignorehitpause = 1

[State 7011, FollowPlayer]
type = TargetBind
trigger1 = Var(0)  >= 60
pos = 30, -80
ignorehitpause = 1

[State 2102, fadeout]
type = AllPalFX
trigger1 = Var(0) = [150, 166]
time = 16
add = -255, -255, -255
sinadd = 255, 255, 255, 64

[State 2110, Super Pause]
type = Pause
trigger1 = Var(0) = 60
time = 126
movetime = 126
ignorehitpause = 1

[State 2023, End]
type = ChangeState
trigger1 = Var(0) > 186
value = 0
ctrl = 1
ignorehitpause = 1

; Time Egg - Hit
[Statedef 2023]
type = A
movetype = H
physics = N
sprpriority = 2

[State 2023, Anim]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 802, Exit]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 2023, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 2023
ignorehitpause = 1

; Time Egg - Minifying
[Statedef 2024]
type = A
movetype = H
physics = N
sprpriority = 2

[State 802, Exit]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050

[State 2023, Anim]
type = ScreenBound
trigger1 = 1
value = 0
ignorehitpause = 1

[State 2024, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 2023
ignorehitpause = 1

[State 2024, Go Small]
type = AngleDraw
trigger1 = Time <= 60
scale = 1 - Time * 0.016, 1 - Time * 0.016
ignorehitpause = 1

[State 2024, Go Small]
type = AssertSpecial
trigger1 = Time > 60
flag = invisible
ignorehitpause = 1

[State 2023, Anim]
type = ChangeAnim2
trigger1 = Time >= 60
trigger1 = Anim != 7200
value = 7200
ignorehitpause = 1

; Time Egg - Eclipse
[Statedef 2028]
type = A
movetype = I
physics = N
anim = 7073
velset = 0, 0
sprpriority = 4

[State 2028, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 2028, TransVar]
type = VarSet
trigger1 = !Time
V = 0
value = 0

[State 2028, TransVar]
type = VarAdd
trigger1 = 1
V = 0
value = 1
ignorehitpause = 1

[State 2028, TransVar]
type = Trans
trigger1 = Var(0) = [0, 32]
trans = addalpha
alpha = 8 * Var(0), 256
ignorehitpause = 1

[State 2028, TransVar]
type = Trans
trigger1 = Var(0) >= 32
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 2028, End]
type = DestroySelf
trigger1 = root, Var(0) >= 76
trigger2 = root, StateNo != 2022 ; Safety

; Time Egg - The Egg
[Statedef 2029]
type = A
movetype = I
physics = N
anim = 7070
velset = 0, -1.4
sprpriority = 3

[State 2029, End]
type = VelSet
trigger1 = Time >= 15
Y = 0.8 * Sin(pi * (Time - 15)/10.0)

[State 2029, Sparkles]
type = Explod
trigger1 = Time >= 34 && !(Parent, StateNo = 2022)
trigger2 = Time >= 56 && (Parent, StateNo = 2022)
anim = 7071
id = 2024
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
vel = (IfElse(Random <= 499,Random/305.0,Random/(-305.0))),(IfElse(Random <= 499,Random/305.0,Random/(-305.0)))
accel = 0,0
random = 0,0
removetime = -2
supermovetime = 0
pausemovetime = 9999
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0

[State 2029, End]
type = DestroySelf
trigger1 = Time >= 42 && !(Parent, StateNo = 2022)
trigger2 = Time >= 64 && (Parent, StateNo = 2022)
 
;---------------------------------------------------------------------------

;Gate Key Summon
[Statedef 2100]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 2000
poweradd = -3000
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
ID = 2100
anim = 7100
pos = 5, -25
ownpal = 1
sprpriority = 3
shadow = -1
removeongethit = 1
supermovetime = 99999
ignorehitpause = 1

[State 2000, Explosion]
type = Helper
trigger1 = AnimElem = 2
name = "Gate"
ID = 2100
stateno = 2101
pos = Facing * Floor(EnemyNear(IfElse(EnemyNear(0), Alive, 0, 1)), Pos X - Pos X), Floor(EnemyNear(IfElse(EnemyNear(0), Alive, 0, 1)), Pos Y + EnemyNear(IfElse(EnemyNear(0), Alive, 0, 1)), Const(size.head.pos.y) - 70)
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
ID = 2100
ignorehitpause = 1

[State 2100, End]
type = ChangeState
trigger1 = Time > 1 && !NumHelper(7000)
value = 0
ctrl = 1

; Gate
[Statedef 2101]
type    = A
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 7101
sprpriority = -1

[State 2101, Scale]
type = AngleDraw
trigger1 = 1
scale = 2, 1

[State 2000, Explosion]
type = Helper
trigger1 = AnimElem = 25
name = "Tyranno"
ID = 2102
stateno = 2102
postype = p1    ;p2,front,back,left,right
pos = 0, 0
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0
supermovetime = 999999

[State 2101, End]
type = ChangeAnim
trigger1 = Anim = 7101
trigger1 = !NumHelper(2102)
trigger1 = AnimElem = 26
value = 7102

[State 2101, End]
type = DestroySelf
trigger1 = Anim = 7102
trigger1 = !AnimTime

; Tyranno
[Statedef 2102]
type    = A
movetype= A
physics = N
poweradd= 0
ctrl = 0
anim = 7104
sprpriority = 0
velset = 0, 2.7

[State 2101, Trans]
type = Trans
trigger1 = Time = [0, 16]
trans = addalpha
alpha = 16 * Time, 256 - 16 * Time
ignorehitpause = 1

[State 2101, End]
type = VelSet
trigger1 = Anim = 7104
trigger1 = Time > 13
Y = 0

[State 2101, Bite Down]
type = HitDef
trigger1 = NumHelper(2103)
trigger1 = Helper(2103), AnimElem = 2
attr = A,SA
damage = 280
animtype = Hard
hitflag = MAF
hitsound = S7002,3
guardflag = HA
pausetime = 14,14
sparkno = -1
ground.type = High
ground.slidetime = 0
ground.hittime = 7
ground.velocity = 0
air.velocity = 0,0
air.fall = 1
fall = 1
palfx.add = 200,200,200
palfx.mul = 256,256,256
palfx.time = 12

[State 2000, Explosion]
type = Helper
trigger1 = !Time
name = "Tyranno Head"
ID = 2103
stateno = 2103
postype = p1    ;p2,front,back,left,right
pos = 0, 0
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0
supermovetime = 999999

[State 2101, End]
type = ChangeAnim
triggerall = Anim = 7104
trigger1 = NumHelper(2103)
trigger1 = Helper(2103), AnimElemTime(3) >= 20
trigger2 = MoveReversed
value = 7105

[State 2101, Trans]
type = Trans
trigger1 = Anim = 7105
trigger1 = AnimElemTime(1) = [0, 16]
trans = addalpha
alpha = 256 - 16 *  AnimElemTime(1), 16 *  AnimElemTime(1)

[State 2101, up]
type = VelSet
trigger1 = Anim = 7105
Y = -2.7

[State 2101, End]
type = DestroySelf
trigger1 = Anim = 7105
trigger1 = AnimElemTime(1) > 16

;Tyranno Head
[Statedef 2103]
type    = A
movetype= I
physics = N
poweradd= 0
ctrl = 0
anim = 7103
sprpriority = 3

[State 2101, Trans]
type = EnvShake
trigger1 = AnimElem = 2
ampl = 6
freq = 120
time = 12

[State 2101, Trans]
type = Trans
trigger1 = Time = [0, 16]
trans = addalpha
alpha = 16 * Time, 256 - 16 * Time

[State 2101, End]
type = PosSet
trigger1 = 1
X = Parent, Pos X
Y = Parent, Pos Y

[State 2101, Trans]
type = Trans
trigger1 = Parent, Anim = 7105
trigger1 = Parent, AnimElemTime(1) = [0, 16]
trans = addalpha
alpha = 256 - 16 * Parent, AnimElemTime(1), 16 *  Parent, AnimElemTime(1)

[State 2101, End]
type = DestroySelf
trigger1 = Parent, Anim = 7105
trigger1 = Parent, AnimElemTime(1) > 16
trigger2 = !(Parent, StateNo)
trigger3 = !(NumHelper(2102))

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
anim = 7110
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