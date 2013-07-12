;===========================================================================
; Special Moves
;===========================================================================

;---------------------------------------------------------------------------
;Fire Uppercut
[Statedef 1010]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 1010
sprpriority = 1
poweradd = IfElse(Var(21) > 0, 0, 72)
facep2 = 1

[State 1010, Strength]
type = VarSet
trigger1 = !Time
var(0) = ifelse(command = "dfc", 2, ifelse(command = "dfb", 1, 0))

[State 1100, nothitby]
type = nothitby
trigger1 = animelemtime(1) < 6
value = SCA
time = 1
ignorehitpause = 1

[State 1100, JumpSnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S7000,1
ignorehitpause = 1

[State 1010, Jump]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
physics = N

[State 1010, Jump]
type = VelSet
trigger1 = AnimElem = 2
y = ifelse(var(0) = 2, -8, ifelse(var(0) = 1, -6, -4))

[State 1010, Gravity]
type = VelAdd
trigger1 = AnimElemNo(0) >= 2
y = .4

[State 1250, Hit]
type = HitDef
trigger1 = animelem = 2 
attr = A, SA
damage = IfElse(var(0) = 2, 67, IfElse(var(0) = 1, 57, 47)), 7
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14
sparkno = s7001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, IfElse(var(0) = 2, -8, IfElse(var(0) = 1, -6, -4))
air.type = Low
air.velocity = 0, IfElse(var(0) = 2, -8, IfElse(var(0) = 1, -6, -4))
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 1250, hitb]
type = HitDef
trigger1 = animelem = 4 && Vel Y < 0
attr = A, SA
damage = 47, 7
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 14, 14
sparkno = s7001
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, IfElse(var(0) = 2, -8, IfElse(var(0) = 1, -6, -4))
air.type = Low
air.velocity = 0, IfElse(var(0) = 2, -8, IfElse(var(0) = 1, -6, -4))
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 1010, HitDef]
type = HitDef
trigger1 = AnimElem = 8 && Vel Y < 0
attr = A, SA
damage = 62,7
animtype = Hard
guardflag = HA
hitflag = MA
priority = 6, Hit
pausetime = 16,16
sparkno = S7001
hitsound = S7040,3
guardsound = 5,0
ground.type = High
ground.velocity = ifelse(var(0) = 2, -2, ifelse(var(0) = 1, -3, -4)), ifelse(var(0) = 2, -4, ifelse(var(0) = 1, -3, -2))
guard.velocity = -2
ground.hittime = 16
guard.ctrltime = 16
airguard.velocity = -2, -1
air.hittime = 17
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 28, 14
givepower = 56,0
yaccel = 0.625
fall = 1
fall.recover = 0
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 8
envshake.freq = 120
envshake.ampl = 2
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 1040, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 50


;---------------------------------------------------------------------------
; Napalm
[Statedef 1020]
type    = S
movetype= A
physics = S
juggle  = 3
poweradd= 72
ctrl = 0
anim = 1020
sprpriority = 1
facep2 = 1
velset = 0,0

[State 1020, Strength]
type = VarSet
trigger1 = !Time
var(0) = ifelse(command = "qcfc", 2, ifelse(command = "qcfb", 1, 0))

[State 1020, Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = S7010,1

[State 1020, Grenade]
type = Helper
trigger1 = AnimElem = 3
name = "Napalm Grenade"
ID = 1020
stateno = 1021
pos = -2,-27
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0

[State 1020, Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = S7000,1

[State 1020, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; Napalm Grenade
[Statedef 1021]
type    = S
movetype= I
physics = S
juggle  = 3
ctrl = 0
anim = 7009
sprpriority = 3

[State 1021, Strength]
type = VarSet
trigger1 = !Time
trigger1 = !(var(1) := 0)
var(0) = parent, var(0)

[State 1021, HitOverride]
type = HitOverride
trigger1 = 1
time = -1
attr = , AA, AP
stateno = 1023
ignorehitpause = 1

[State 1021, HB]
type = NotHitBy
trigger1 = 1
time = -1
value = , AT
ignorehitpause = 1

[State 1021, PosSet]
type = PosSet
trigger1 = parent, AnimElemNo(0) = 3 && parent, StateNo = 1020
X = Parent, Pos X - 2
Y = Parent, Pos Y - 27
persistent = 0

[State 1021, Vel]
type = VelSet
trigger1 = parent, AnimElemTime(3) = 0 && parent, StateNo = 1020
x =  IfElse(var(0) = 2, 5.5, IfElse(var(0) = 1, 4, 5)) * Cos(IfElse(var(0) = 2, 0.5 ,IfElse(var(0) = 1, 0.78, 1.4)))
y = -IfElse(var(0) = 2, 5.5, IfElse(var(0) = 1, 4, 5)) * Sin(IfElse(var(0) = 2, 0.5 ,IfElse(var(0) = 1, 0.78, 1.4)))


[State 1021, DoneVar]
type = VarSet
trigger1 = parent, AnimElemTime(3) = 0 && parent, StateNo = 1020
var(1) = 1

[State 1021, Gravity]
type = VelAdd
trigger1 = var(1)
y = IfElse(var(0) = 0, 0.2, 0.2)

[State 1021, Air]
type = StateTypeSet
trigger1 = var(1)
statetype = S
movetype = A
physics = N
persistent = 0

[State 1021, HitDef]
type = HitDef
trigger1 = var(1)
attr = S, SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard
sparkno = S7000
damage = 72,0
sparkxy = -10, 0 
hitsound = S220,1
ground.type = High
ground.slidetime = 5
ground.hittime = 5
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 2
air.velocity = 0, 0
numhits = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 30
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
persistent = 0

[State 1021, ChangeState]
type = DestroySelf
trigger1 = (parent, StateNo != 1020 && !var(1)) 
ignorehitpause = 1

[State 1021, ChangeState]
type = VarSet
trigger1 = !Time
v = 2
value = 0
ignorehitpause = 1

[State 1021, ChangeState]
type = VarSet
trigger1 = MoveHit
v = 2
value = 1
ignorehitpause = 1

[State 1021, ChangeState]
type = ChangeState
trigger1 = MoveHit
trigger2 = Vel Y >= 0 && Pos Y > - Vel Y
value = 1022
ctrl = 0
ignorehitpause = 1

;Exploding by hitting enemy or ground
[Statedef 1022]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 7007
sprpriority = 3
velset = 0,0

[State 1022, Anim]
type = ChangeAnim
trigger1 = Var(2) && Pos Y < - 15
value = 7010
ignorehitpause = 1

[State 1022, Anim]
type = PosSet
trigger1 = Anim = 7007
Y = 0
ignorehitpause = 1

[State 1021, HitDef]
type = HitDef
trigger1 = !Time
attr = S, SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard
sparkno = -1
damage = 72,0
pausetime = 0, 20
hitsound = S220,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -2.5, -3
ground.cornerpush.veloff = 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 2
air.velocity =  -2.5, -3
air.fall = 1
fall.recover = 1
fall.recovertime = 30
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
getpower = 0, 0
givepower = 36, 36
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
persistent = 0

[State 1022, Explod]
type = Explod
trigger1 = NumExplod(1020) < 3
trigger1 = Time % 3
trigger1 = Time < 22
anim = 7008
ID = 1020
pos = 25 - Random % 50, 5 - Random % 30
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0, 0
accel = 0,0
removetime = -2
scale = 1 , 1
sprpriority = 4
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 0

[State 1022, PosSet]
type = VelSet
trigger1 = 1
y = 0
x = 0

[State 1021, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1021, Scale]
type = AngleDraw
trigger1 = 1
value = 1
scale = Time/33.0, Time/33.0
;ignorehitpause = 
;persistent = 

[State 801, Priority]
type = PlaySnd
trigger1 = !Time
value = S2,2
channel = 0

[State 1021, Trans]
type = Trans
trigger1 = Time = [0,20]
trans = add

[State 1021, Trans]
type = Trans
trigger1 = Time != [0,20]
trans = addalpha
alpha = 256 - 16 * (Time - 20), 256

[State 1021, End]
type = DestroySelf
trigger1 = Time >= 36

;Exploding by getting hit
[Statedef 1023]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 7010
sprpriority = 3
velset = 0,0

[State 1021, HitDef]
type = HitDef
trigger1 = !Time
attr = S, SP
hitflag = MAF        ;HLAFD+-
guardflag = MA         ;HLA
animtype = Hard
sparkno = S7001
damage = 72,0
sparkxy = -10,-15
hitsound = S220,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -5.52, 0
ground.cornerpush.veloff = 0
givepower = 36, 36
envshake.time = 14
envshake.freq = 120
envshake.ampl = 2
air.velocity = -4, -4
air.fall = 1
fall.recover = 1
fall.recovertime = 30
yaccel = 0.5
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
getpower = 0, 0
givepower = 36, 36
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
persistent = 0

[State 1022, Explod]
type = Explod
trigger1 = NumExplod(1020) < 3
trigger1 = Time % 3
trigger1 = Time < 22
anim = 7008
ID = 1020
pos = 25 - Random % 50, 5 - Random % 30
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0, 0
accel = 0,0
removetime = -2
scale = 1 , 1
sprpriority = 4
ontop = 0
shadow = -1
ownpal = 0
removeongethit = 0

[State 1022, PosSet]
type = VelSet
trigger1 = 1
y = 0
x = 0

[State 1021, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1021, Scale]
type = AngleDraw
trigger1 = 1
value = 1
scale = Time/33.0, Time/33.0
;ignorehitpause = 
;persistent = 

[State 801, Priority]
type = PlaySnd
trigger1 = !Time
value = S2,2
channel = 0

[State 1021, Trans]
type = Trans
trigger1 = Time = [0,20]
trans = add

[State 1021, Trans]
type = Trans
trigger1 = Time != [0,20]
trans = addalpha
alpha = 256 - 16 * (Time - 20), 256

[State 1021, End]
type = DestroySelf
trigger1 = Time >= 36

;---------------------------------------------------------------------------
; Hypno Wave
[Statedef 1030]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 1030
sprpriority = 1
facep2 = 1
velset = 0,0

[State 1030, Strength]
type = VarSet
trigger1 = !Time
var(0) = ifelse(command = "qcbc", 2, ifelse(command = "qcbb", 1, 0))

[State 1030, Jump]
type = PlaySnd
trigger1 = !Time
value = 7010,1

[State 1030, Jump]
type = VarSet
trigger1 = !Time
var(0) = 0

[State 1030, Wave]
type = Helper
trigger1 = AnimElem = 3
name = "Hypno Wave"
ID = 1030
stateno = 1031
pos = 0, -20
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0

[State 1030, End]
type = ChangeState
trigger1 = AnimElemNo(0) >= 4 && !NumHelper(1030)
value = 0
ctrl = 1

; The Hypno Wave itself
[Statedef 1031]
type    = S
movetype= I
physics = S
juggle  = 3
ctrl = 0
anim = 7011
sprpriority = 3

[State 1031, PosSet]
type = VarSet
trigger1 = !Time
trigger1 = PrevStateNo != 1032
trigger1 = !(var(1) := 0)
var(0) = parent, var(0)
ignorehitpause = 1

[State 1031, PosSet]
type = VarAdd
trigger1 = 1
v = 1
value = 1
ignorehitpause = 1

[State 7010, Appear]
type = trans
trigger1 = var(1) <= 16
trans = addalpha
alpha = 16 * var(1), 256 - 8 * var(1)
ignorehitpause = 1

[State 7010, Trans]
type = trans
trigger1 = var(1) >= 16
trans = addalpha
alpha = 256, 128
ignorehitpause = 1

[State 7010, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 1031, HitOverride]
type = HitOverride
trigger1 = 1
time = -1
attr = , AA, AP, AT
stateno = 1032
ignorehitpause = 1

[State 1031, HB]
type = NotHitBy
trigger1 = 1
time = -1
value = , NT, ST, HT
ignorehitpause = 1

[State 1031, PosSet]
type = PosSet
trigger1 = 1
X = Parent, Pos X
Y = Parent, Pos Y - 24

[State 1031, End]
type = ChangeState
trigger1 = Time = 120
value = 1032

; Hypno Wave End
[Statedef 1032]
type    = S
movetype= I
physics = N
ctrl = 0
anim = 7012
sprpriority = 3

[State 7010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 16 * Time, 128 + 8 * Time
ignorehitpause = 1

[State 1031, PosSet]
type = PosSet
trigger1 = 1
X = Parent, Pos X
Y = Parent, Pos Y - 24
ignorehitpause = 1

[State 7010, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 1031, End]
type = DestroySelf
trigger1 = Time >= 16
ignorehitpause = 1