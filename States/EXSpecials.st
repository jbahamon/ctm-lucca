;===========================================================================
; Alternate Special Moves
;===========================================================================

;Witch Twist
[Statedef 11000]
type = S
physics = N
movetype = I
anim = 11000
ctrl = 0
poweradd = 72 * !var(21)
sprpriority = 1
facep2 = 0
juggle  = 12

[State N, Sound]
type = VelMul
trigger1 = AnimElemNo(0) < 5
X = 0.89

[State N, Sound]
type = NotHitBy
trigger1 = AnimElemNo(0) < 5
value = , AA, AP
persistent = 0

[State N, Sound]
type = NotHitBy
trigger1 = AnimElemNo(0) < 5
value = , AA, AP
persistent = 0

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 5
X = 0

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 6
Y = -6

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 5
value = S8000,15
channel =  0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 7309
ID = 11000
pos = 0, -35
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 6
trigger2 = AnimElem = 10
anim = 7302
ID = 11000
pos = 3, -30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1



[State 200, Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 7302
ID = 11000
pos = -3, -30
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = -1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1




[State 1000, End]
type = VelAdd
trigger1 = AnimElemNo(0) = [6,11]
Y = 6.0/24.0

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 12
Y = 0

[State 1000, End]
type = VelAdd
trigger1 = AnimElemNo(0) = 12
Y = 0.1

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(10) >= 6
trigger2 = AnimElemTime(9) > 0 && MoveHit
var(25) = 1
persistent = 0
ignorehitpause = 1

[State 1250, Hit]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
attr = A, SA
damage = 12, 7
animtype = DiagUp
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
sparkno = s7001
sparkxy = -10, -10
hitsound = s7020,0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 32
ground.velocity = 0, -2
air.type = Low
air.velocity = 0, -2
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 0
forcenofall = 1
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = 0, -0.1
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.add = 96, 96, 96
palfx.mul = 256,256,256 
palfx.time = 8
ID = 11000

[State 1031, Measure]
type = VarSet
trigger1 = NumTarget(11000)
trigger1 = MoveHit
fvar(1) = Facing * (Target(11000), Pos X - Pos X)
ignorehitpause = 1
persistent = 0

[State 801, Bind]
type = VarSet
trigger1 = NumTarget(11000)
trigger1 = MoveHit
fvar(2) = (-25 - Target(11000), Const(size.mid.pos.y))
ignorehitpause = 1
persistent = 0

[State 801, Bind]
type = PlayerPush
trigger1 = 1
value = 0;IfElse(AnimElemNo(0) < 12, 0, 1)
ignorehitpause = 1


[State 801, Bind]
type = TargetBind
trigger1 = NumTarget(11000)
trigger1 = MoveHit
ID = (11000)
pos = fvar(1), fvar(2)
ignorehitpause = 1


[State 1000, End]
type = StateTypeSet
trigger1 = AnimElem = 5
physics = N
statetype = A
movetype = A

[State 1000, End]
type = StateTypeSet
trigger1 = AnimElem = 12
movetype = I

[State 1000, End]
type = RemoveExplod
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
ID = 11000
ignorehitpause = 1

[State 1000, End]
type = changestate
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
value = 52
ctrl = 1


;Witch Strike
[Statedef 11005]
type = A
physics = N
movetype = A
anim = 11005
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(21)
sprpriority = 1
facep2 = 0
juggle  = 12


[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,2
channel =  0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7309
ID = 11005
pos = 0, -35
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
anim = 7302
ID = 11005
pos = 3, -30
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 7302
ID = 11005
pos = -3, -30
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = -1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 11005, VelSet]
type = PosSet
trigger1 = !Time
trigger1 = Pos Y >= 0
Y = -5
persistent = 0
ignorehitpause = 1

[State 11005, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 7
Y = -6


[State 1000, End]
type = VelSet
trigger1 = AnimElemTime(1) < 7
Y = 0


[State 1000, End]
type = VelAdd
trigger1 = AnimElemTime(1) >= 7
trigger1 = AnimElemNo(0) < 8
Y = 6.0/24.0

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 8
Y = 0

[State 1000, End]
type = VelAdd
trigger1 = AnimElemNo(0) = 8
Y = 0.2

[State 1000, End]
type = StateTypeSet
trigger1 = AnimElem = 8
movetype = I

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(8) >= 6
trigger2 = AnimElemTime(6) > 0 && MoveHit
var(25) = 1
persistent = 0
ignorehitpause = 1

[State 1250, Hit]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
attr = A, SA
damage = 12, 7
animtype = DiagUp
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
sparkno = s7001
sparkxy = -10, -10
hitsound = s7020,0
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 32
ground.velocity = 0, -0.1
air.type = Low
air.velocity = 0, -0.1
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 24, 42)), (!Var(0)) * IfElse(Var(21) > 0, 0, 12)
givepower = 12, 12
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 0
forcenofall = 1
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = 0, -0.1
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.add = 96, 96, 96
palfx.mul = 256,256,256 
palfx.time = 8
ID = 11005

[State 1031, Measure]
type = VarSet
trigger1 = NumTarget(11005)
fvar(1) = Facing * (Target(11005), Pos X - Pos X)
ignorehitpause = 1
persistent = 0

[State 801, Bind]
type = VarSet
trigger1 = NumTarget(11005)
fvar(2) = (-25 - Target(11005), Const(size.mid.pos.y))
ignorehitpause = 1
persistent = 0

[State 801, Bind]
type = PlayerPush
trigger1 = 1
value = 0;IfElse(AnimElemNo(0) >= 2 && AnimElemNo(0) <= 7, 0, 1)
ignorehitpause = 1

[State 801, Bind]
type = TargetBind
trigger1 = NumTarget(11005)
ID = (11005)
pos = fvar(1), fvar(2)
ignorehitpause = 1

[State 1000, End]
type = changestate
trigger1 = AnimElemTime(8) > 10
value = 50
ctrl = 1

[State 1000, End]
type = RemoveExplod
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
ID = 11005
ignorehitpause = 1

[State 1000, End]
type = PosSet
trigger1 = Time != 0
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
Y = 0

[State 1000, End]
type = changestate
trigger1 = Time != 0
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
value = 52
ctrl = 1

;Heel Tornado
[Statedef 11010]
type = S
physics = N
movetype = A
anim = 11010
ctrl = 0
poweradd = 72 * !var(21)
sprpriority = 1
facep2 = 1
juggle  = 12


[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,15
channel =  0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 7
trigger2 = AnimElem = 11
trigger3 = AnimElem = 15
anim = 7308
ID = 15002
pos = -15, -20
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 4
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1


[State 200, Explod]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
anim = 7308
ID = 15002
pos = 15, -15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 4
scale = 1,1
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1


[State 15033, Hit]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
trigger4 = AnimElem = 16
attr = S, SA
animtype  = Medium
damage    = 7, 1
guardflag = MA
hitflag = MAF
pausetime = 0,12
sparkno = S7400
sparkxy = -6 + Random % 6, -15 + Random % 6
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0
air.velocity = 0,0
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 3, 7)), IfElse(Var(21) > 0, 0, 1)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
envshake.ampl = 4
envshake.time = 8
envshake.freq = 120


[State 15033, Hit]
type = HitDef
trigger1 = AnimElem = 18
attr = S, SA
animtype  = Medium
damage    = 7, 1
guardflag = MA
hitflag = MAF
pausetime = 0,12
sparkno = S7400
sparkxy = -6 + Random % 6, -15 + Random % 6
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -0.1, -8
air.velocity = -0.1, -8
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 3, 7)), IfElse(Var(21) > 0, 0, 1)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
envshake.ampl = 8
envshake.time = 12
envshake.freq = 120

[State 1000, End]
type = VelMul
trigger1 = !Time
X = 0.5
Y = 0

[State 2000, Vel]
type = VelSet
triggerall = Anim = 11010
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
x = -0.5

[State 2000, Vel]
type = VelSet
triggerall = Anim = 11010
trigger1 = command != "holdback"
trigger1 = command = "holdfwd"
x = 0.5

[State 2000, Vel]
type = VelMul
triggerall = Anim = 11010
trigger1 = command != "holdback"
trigger1 = command != "holdfwd"
x = 0.9

[State 1000, End]
type = VarSet
trigger1 = !Time
v = 0
value = 0

[State 1000, End]
type = VarSet
trigger1 = command = "rlsc"
v = 0
value = 1

[State 1000, End]
type = ChangeAnim
triggerall = Anim = 11010
triggerall = AnimElemNo(0) < 18
trigger1 = AnimElemNo(0) > 12
trigger1 = Var(0)
value = 11010
elem = 18
persistent = 0


[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = Anim = 11011
trigger2 = Anim = 11010 && AnimElemNo(0) = 18 && MoveHit
var(25) = 1
persistent = 0
ignorehitpause = 1

[State 1000, End]
type = ChangeAnim
triggerall = Anim = 11010
trigger1 = !animtime
value = 11011


[State 200, 2]
type = StateTypeSet
trigger1 = Anim = 11010
movetype = I

[State 1000, End]
type = ChangeState
triggerall = Anim = 11011
trigger1 = !animtime
value = 0
ctrl = 1


;Stiletto
[Statedef 11020]
type = S
physics = S
movetype = A
anim = 11020
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(21)
sprpriority = 1
facep2 = 0
juggle  = 12

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7310
ID = 11020
pos = 23, -10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,2
channel =  0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = MoveHit
var(25) = 1
persistent = 0

[State 1250, Hit]
type = HitDef
trigger1 = !Time
attr = S, SA
damage = 38, 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
sparkno = s7001
sparkxy = -10, -10
hitsound = s7020,0
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -1,0
air.type = Low
air.velocity = -3, -2
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 0
forcenofall = 1
air.juggle = 18
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = -2, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.add = 96, 96, 96
palfx.mul = 256,256,256 
palfx.time = 8

[State 1000, End]
type = VelSet
trigger1 = AnimElemTime(2) = [-2,2]
X = (AnimElemTime(2) + 2) * 2.2

[State 200, 2]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 1000, End]
type = RemoveExplod
trigger1 = !AnimTime
ID = 11020
ignorehitpause = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;Stiletto (Air)
[Statedef 11021]
type = A
physics = N
movetype = A
anim = 11020
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(21)
sprpriority = 1
facep2 = 0
juggle  = 12

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7310
ID = 11021
pos = 23, -10
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,2
channel =  0
ignorehitpause = 1

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 2
X = 6

[State 1000, End]
type = VelAdd
trigger1 = 1
Y = 0.05

[State 1000, End]
type = VelAdd
trigger1 = Vel X >= 0.25
X = -0.25

[State 1000, End]
type = VelSet
trigger1 = Vel X < 0.25
X = 0

[State 1000, End]
type = RemoveExplod
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
ID = 11021
ignorehitpause = 1

[State 1000, End]
type = PosSet
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
Y = 0

[State 1000, End]
type = changestate
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
value = 52
ctrl = 1

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 3
X = 0
Y = 0

[State 15002, ComboVar]
type = VarSet
trigger1 = MoveHit
var(25) = 1
persistent = 0

[State 1250, Hit]
type = HitDef
trigger1 = !Time
attr = A, SA
damage = 38, 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
sparkno = s7001
sparkxy = -10, -10
hitsound = s7020,0
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -1,0
air.type = Low
air.velocity = -3, -2
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 0
forcenofall = 1
air.juggle = 18
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = -2, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.add = 96, 96, 96
palfx.mul = 256,256,256 
palfx.time = 8

[State 1000, End]
type = RemoveExplod
trigger1 = !AnimTime
ID = 11021
ignorehitpause = 1

[State 200, 2]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

;Heel Slide
[Statedef 11030]
type = S
physics = N
movetype = A
anim = 11030
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(21)
sprpriority = 1
facep2 = 0
juggle  = 12


[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7310
ID = 11020
pos = 23, -0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8000,12
channel =  0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 0 && MoveContact
var(25) = 1
persistent = 0

[State 1250, Hit]
type = HitDef
trigger1 = !Time
attr = S, SA
damage = 22, 5
animtype = Hard
guardflag = L
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
sparkno = s7001
sparkxy = -10, 0
hitsound = s7020,0
guardsound = s2, 0
ground.type = Low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -1,0
air.type = Low
air.velocity = -3, -2
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 0
forcenofall = 1
air.juggle = 18
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = -2, 0
forcestand = 1
airguard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.add = 96, 96, 96
palfx.mul = 256,256,256 
palfx.time = 8

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 3
X = 7

[State 1000, End]
type = VelAdd
trigger1 = Vel X > 0.3
X = - 0.2 * IfElse(AnimElemNo(0) = 4, 2, 1)


[State 1000, End]
type = VelSet
trigger1 = Vel X <= 0.3
X = 0

[State 1000, End]
type = VarSet
trigger1 = !Time
v = 0
value = 0

[State 1000, End]
type = VarSet
trigger1 = command = "rlsc"
v = 0
value = 1


[State 200, 2]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

[State 1000, End]
type = changestate
trigger1 = AnimElem = 5
trigger1 = !Var(0)
value = 11031
ctrl = 0


;Heel Slide Backflip
[Statedef 11031]
type = S
physics = S
movetype = A
anim = 11031
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(21)
sprpriority = 1
facep2 = 0
juggle  = 12


[State 200, Explod]
type = Explod
trigger1 = !Time
anim = 7302
ID = 15002
pos = 5, -36
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = -1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 4
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1


[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7308
ID = 15002
pos = -15, -20
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = -1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 4
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7302
ID = 15002
pos = -5, 0
postype = p1  ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = 4
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 0 
trigger2 = NumTarget
var(25) = 1
persistent = 0

[State 1250, Hit]
type = HitDef
trigger1 = !Time
attr = S, SA
damage = 22, 3
animtype = DiagUp
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
sparkno = s7001
sparkxy = -10, -10
hitsound = s7020,0
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0,-5
air.type = Low
air.velocity = 0, -5
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 0
forcenofall = 1
air.juggle = 18
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = 0, -3
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.add = 96, 96, 96
palfx.mul = 256,256,256 
palfx.time = 8

[State 200, 2]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;After Burner Kick (Up)
[Statedef 11035]
type = A
physics = N
movetype = A
anim = 11035
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(21)
sprpriority = 1
facep2 = 0
juggle  = 12

[State 1000, End]
type = PosSet
triggerall = !Time
trigger1 = Pos Y >= 0
Y = -5
persistent = 0
ignorehitpause = 1

[State 200, Explod]
type = Helper
trigger1 = AnimElem = 2
stateno = 11037
ID = 11035
pos = 20, -20
postype = p1  ;p2,front,back,left,right
facing = 1
sprpriority = 3
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
ignorehitpause = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8001,6
channel =  0
ignorehitpause = 1

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 2
X = 3.5
Y = -4.5
ignorehitpause = 1

[State 1000, End]
type = VelAdd
trigger1 = AnimElemNo(0) = 3
X = -3.5/13
Y = 4.5/13
ignorehitpause = 1

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 4
X = 0
Y = 0
ignorehitpause = 1

[State 1000, End]
type = VelAdd
trigger1 = AnimElemNo(0) > 3
Y = 0.2


[State 1000, End]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) > 0
trigger1 = MoveContact
var(25) = 1
persistent = 0
ignorehitpause = 1

[State 1250, Hit]
type = HitDef
trigger1 = !MoveContact
attr = A, SA
damage = 38, 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
sparkno = s7001
sparkxy = -10, -10
hitsound = s7020,0
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 32
ground.velocity = 0.1, -0.1
air.type = Low
air.velocity = 0.1, -0.1
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 0
forcenofall = 1
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = 0, -0.1
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.add = 96, 96, 96
palfx.mul = 256,256,256 
palfx.time = 8
ID = 11035

[State 1031, Measure]
type = VarSet
trigger1 = NumTarget(11035)
fvar(1) = Facing * (Target(11035), Pos X - Pos X)
ignorehitpause = 1
persistent = 0

[State 801, Bind]
type = VarSet
trigger1 = NumTarget(11035)
fvar(2) = (-25 - Target(11035), Const(size.mid.pos.y))
ignorehitpause = 1
persistent = 0

[State 801, Bind]
type = PlayerPush
trigger1 = 1
value = AnimElemNo(0) = [2,3]
ignorehitpause = 1

[State 801, Bind]
type = TargetBind
trigger1 = NumTarget(11035)
ID = (11035)
pos = fvar(1), fvar(2)
ignorehitpause = 1

[State 1000, End]
type = changestate
trigger1 = AnimElemTime(4) > 10
value = 50
ctrl = 1

[State 1000, End]
type = PosSet
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
Y = 0

[State 1000, End]
type = changestate
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
value = 52
ctrl = 1


;After Burner Kick (Down)
[Statedef 11036]
type = A
physics = N
movetype = A
anim = 11036
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(21)
sprpriority = 1
facep2 = 0
juggle  = 12


[State 200, Explod]
type = Helper
trigger1 = AnimElem = 2
stateno = 11038
ID = 11036
pos = 20, 0
postype = p1  ;p2,front,back,left,right
facing = 1
sprpriority = 3
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
ignorehitpause = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,2
channel =  0
ignorehitpause = 1

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 2
X = 4.5
Y = 3.5

[State 1000, End]
type = VelAdd
trigger1 = AnimElemNo(0) = 3
X = -4.5/13
Y = -3.5/13

[State 1000, End]
type = VelSet
trigger1 = AnimElem = 4
X = 0
Y = 0

[State 1000, End]
type = VelAdd
trigger1 = AnimElemNo(0) > 3
Y = 0.2


[State 1000, End]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I


[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = PrevStateNo != [15000, 15999]
trigger1 = AnimElemTime(3) > 0
trigger1 = MoveContact
var(25) = 1
persistent = 0
ignorehitpause = 1

[State 1250, Hit]
type = HitDef
trigger1 = !MoveContact
attr = A, SA
damage = 38, 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 7, 7
sparkno = s7001
sparkxy = -10, 10
hitsound = s7020,0
guardsound = s2, 0
ground.type = Low
ground.slidetime = 16
ground.hittime = 32
ground.velocity = -0.5, -0.7
air.type = Low
air.velocity = -0.5, -0.7
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = 0
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 0
forcenofall = 1
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = 0, -0.1
forcestand = 1
airguard.cornerpush.veloff = 0
palfx.add = 96, 96, 96
palfx.mul = 256,256,256 
palfx.time = 8

[State 1000, End]
type = changestate
trigger1 = AnimElemTime(4) > 10
value = 50
ctrl = 1

[State 1000, End]
type = changestate
trigger1 = Vel Y > 0 && Vel Y > -Pos Y
value = 52
ctrl = 1

;After Burner Effect (Up)
[Statedef 11037]
type = A
physics = N
movetype = I
anim = 7310
ctrl = 0
velset = 0, 0
poweradd = 0
sprpriority = 3
facep2 = 0
juggle  = 0

[State 11037, Turn]
type = Turn
trigger1 = Facing != Root, Facing
ignorehitpause = 1

[State 11037, Pos]
type = PosSet
trigger1 = 1
X = Root, Pos X + 20*Facing
Y = Root, Pos Y - 20
ignorehitpause = 1

[State 11037, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256, 64
ignorehitpause = 1

[State 11037, Angle]
type = AngleDraw
trigger1 = 1
value = 30
ignorehitpause = 1

[State 11037, End]
type = DestroySelf
trigger1 = Root, StateNo != 11035
trigger2 = !AnimTime
trigger3 = Root, AnimElemNo(0) = 4
ignorehitpause = 1


;After Burner Effect (Down)
[Statedef 11038]
type = A
physics = N
movetype = I
anim = 7310
ctrl = 0
velset = 0, 0
poweradd = 0
sprpriority = 3
facep2 = 0
juggle  = 0

[State 11037, Turn]
type = Turn
trigger1 = Facing != Root, Facing
ignorehitpause = 1

[State 11037, Pos]
type = PosSet
trigger1 = 1
X = Root, Pos X + 15*Facing
Y = Root, Pos Y + 5
ignorehitpause = 1

[State 11037, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256, 64
ignorehitpause = 1

[State 11037, Angle]
type = AngleDraw
trigger1 = 1
value = -30
ignorehitpause = 1

[State 11037, End]
type = DestroySelf
trigger1 = Root, StateNo != 11036
trigger2 = !AnimTime
trigger3 = Root, AnimElemNo(0) = 4
ignorehitpause = 1

;Tetsuzanko
[Statedef 11100]
type = S
physics = S
movetype = A
anim = 11100
ctrl = 0
velset = 0, 0
juggle = 18
poweradd = 0
sprpriority = 2
facep2 = 1

[State 1000, Hadouken]
type = PowerAdd
trigger1 = !Time
trigger1 = !(Var(0) := 0)
trigger1 = Power >= 500
trigger1 = Var(0) := 1
value = -500
ignorehitpause = 1

[State 1000, Hadouken]
type = PowerAdd
trigger1 = !Time
trigger1 = !Var(0)
value = 72 * !var(21)
ignorehitpause = 1

[State 1000, Hadouken]
type = VelSet
trigger1 = animelem = 3
X = 6

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,2
channel =  0

[State 1250, Hit]
type = HitDef
trigger1 = !Time
attr = S, SA
damage = 38, 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 7
sparkno = s7001
sparkxy = -10, -25
hitsound = s7020,3
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -2, -4.5
air.type = Low
air.velocity = -2, -4.5
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -8
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 1
fall.recover = 0
air.juggle = 18
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.add = 96, 96, 96
palfx.mul = 256,256,256 
palfx.time = 8

[State 1000, Hadouken]
type = helper
trigger1 = Var(0)
trigger1 = AnimElem = 4
helpertype = normal
stateno = 11105
ID = 11100
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -30
ownpal = 1


[State 200, 2]
type = StateTypeSet
trigger1 = AnimElem = 7
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Tetsuzanko (Air)
[Statedef 11101]
type = A
physics = N
movetype = A
anim = 11100
ctrl = 0
velset = 0, 0
juggle = 18
poweradd = 0
sprpriority = 2
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,2
channel =  0

[State 1000, Hadouken]
type = PowerAdd
trigger1 = !Time
trigger1 = !(Var(0) := 0)
trigger1 = Power >= 500
trigger1 = Var(0) := 1
value = -500
ignorehitpause = 1

[State 1000, Hadouken]
type = PowerAdd
trigger1 = !Time
trigger1 = !Var(0)
value = 72 * !var(21)
ignorehitpause = 1

[State 1000, Hadouken]
type = VelSet
trigger1 = animelem = 3
X = 6

[State 1000, Hadouken]
type = VelMul
trigger1 = 1
X = 0.89
Y = 0.85
ignorehitpause = 1


[State 1250, Hit]
type = HitDef
trigger1 = !Time
attr = A, SA
damage = 38, 7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 7
sparkno = s7001
sparkxy = -10, -25
hitsound = s7020,3
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -2, -4.5
air.type = Low
air.velocity = -2, -4.5
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -8
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 1
fall.recover = 0
air.juggle = 18
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.add = 96, 96, 96
palfx.mul = 256,256,256 
palfx.time = 8

[State 1000, Hadouken]
type = helper
trigger1 = Var(0)
trigger1 = AnimElem = 4
helpertype = normal
stateno = 11105
ID = 11100
name = "Madama Butterfly's Hand"
postype = p1
pos = -5, -30
ownpal = 1

[State 1000, End]
type = VelSet
trigger1 = Pos Y > 0
Y = 0
ignorehitpause = 1

[State 1000, End]
type = PosSet
trigger1 = Pos Y > 0
Y = 0
ignorehitpause = 1


[State 1000, Hadouken]
type = VarSet
trigger1 = !Time
v = 1
value = 0
persistent = 0

[State 2010, NHB]
type = PlaySnd
triggerall = !Var(1)
trigger1 = MoveHit 
trigger1 = Var(1) := 1
trigger1 = Random < 200
trigger2 = NumHelper(11100)
trigger2 = Helper(11100), MoveHit
trigger2 = Var(1) := 1
trigger2 = Random < 200
value = S8000,30
;channel =  0
persistent = 0


[State 200, 2]
type = StateTypeSet
trigger1 = AnimElem = 7
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 0

; Madama Butterfly's Hand
[Statedef 11105]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 0
juggle  = 18

[State 2101, Scale]
type = PalFX
trigger1 = !Time
time = -1
add = -64, -64, -64
sinadd = 64, 64, 64, 30

[State 1001, Dampen]
Type = ParentVarset
Trigger1 = MoveHit && NumTarget
trigger1 = !(target, time) && target, movetype = H
fvar(39) = parent, Fvar(39)*0.85
persistent = 0
ignorehitpause = 1

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 11006
ignorehitpause = 1

[State 1005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 11105

[State 1005, Vel]
type = velset
trigger1 = 1
Y = 0
X = 0

[State 1005, Hit]
type = hitdef
trigger1 = !Time
priority = 4, Hit
attr = S, SA
damage = ceil(80 * root, fvar(39)), 4
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4 * (var(2) < 3), 6
sparkno = -1
sparkxy = -10, 0
hitsound = S7050,2
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -3, -2
ground.cornerpush.veloff = 0
air.velocity = -3, -4
guard.velocity = -5
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
p1sprpriority = 0
p2sprpriority = -1
airguard.ctrltime = 16
airguard.velocity = -3, 0
forcestand = 0
air.juggle = 12

[State 1005, End]
type = changestate
trigger1 = AnimElemTime(6) >= 5
value = 11106

; Madama Butterfly's Hand Fade
[Statedef 11106]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1006, NHB]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 11004, Shake]
type = SprPriority
trigger1 = 1
value = 0
ignorehitpause = 1

[State 11004, Shake]
type = VarSet
trigger1 = !Time
v = 0
value = AnimElemNo(0)
ignorehitpause = 1

[State 11004, Shake]
type = ChangeAnim
trigger1 = 1
value = 11106
elem = Var(0)
ignorehitpause = 1

[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - Time * 16, Time * 16
ignorehitpause = 1

[State 1006, End]
type = destroyself
trigger1 = Time > 16

; Heel Stomp
[Statedef 11150]
type = S
physics = S
movetype = A
anim = 11150
ctrl = 0
velset = 0, 0
juggle = 18
poweradd = 0
sprpriority = 2
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,9
channel =  0

[State 1000, Hadouken]
type = PowerAdd
trigger1 = !Time
trigger1 = !(Var(0) := 0)
trigger1 = Power >= 500
trigger1 = Var(0) := 1
value = -500
ignorehitpause = 1

[State 1000, Hadouken]
type = PowerAdd
trigger1 = !Time
trigger1 = !Var(0)
value = 72 * !var(21)
ignorehitpause = 1

[State 220, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 7015
ID = 11150
pos = 10, 0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 1250, Hit]
type = HitDef
trigger1 = !Time
attr = S, SA
damage = 38, 7
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 7
sparkno = s7001
sparkxy = -10, -25
hitsound = s7020,3
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -2, -4.5
air.type = Low
air.velocity = -2, -4.5
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -8
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 1
fall.recover = 0
air.juggle = 18
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.add = 144, 64, 7
palfx.mul = 256,256,256 
palfx.time = 8

[State 1000, Hadouken]
type = helper
trigger1 = Var(0)
trigger1 = AnimElem = 4
helpertype = normal
stateno = 11155
ID = 11150
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 20, 0
ownpal = 1

[State 200, 2]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

; Heel Stomp (Air)
[Statedef 11151]
type = A
physics = N
movetype = A
anim = 11150
ctrl = 0
juggle = 18
poweradd = 0
sprpriority = 2
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,9
channel =  0

[State 11151, VelMul]
type = VelMul
trigger1 = 1
X = 0.86
Y = 0.86
ignorehitpause = 1

[State 1000, Hadouken]
type = PowerAdd
trigger1 = !Time
trigger1 = !(Var(0) := 0)
trigger1 = Power >= 500
trigger1 = Var(0) := 1
value = -500
ignorehitpause = 1

[State 1000, Hadouken]
type = PowerAdd
trigger1 = !Time
trigger1 = !Var(0)
value = 72 * !var(21)
ignorehitpause = 1

[State 220, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 7015
ID = 11150
pos = 10, 0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1250, Hit]
type = HitDef
trigger1 = !Time
attr = A, SA
damage = 38, 7
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 7
sparkno = s7001
sparkxy = -10, -25
hitsound = s7020,3
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -2, -4.5
air.type = Low
air.velocity = -2, -4.5
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.velocity = -8
guard.cornerpush.veloff = 0;-12.74
getpower = (!Var(0)) * IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 72, 144)), (!Var(0)) * IfElse(Var(21) > 0, 0, 36)
givepower = 36, 36
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
p2sprpriority = -1
fall = 1
fall.recover = 0
air.juggle = 18
fall.recovertime = 120
yaccel = 0.3
airguard.ctrltime = 16
airguard.velocity = -8, -1.5
forcestand = 1
airguard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
palfx.add = 144, 64, 7
palfx.mul = 256,256,256 
palfx.time = 8

[State 1000, Hadouken]
type = helper
trigger1 = Var(0)
trigger1 = AnimElem = 4
helpertype = normal
stateno = 11155
ID = 11150
name = "Madama Butterfly's Foot"
postype = p1
pos = 20, IfElse((Pos Y + 20) > 0, -Pos Y, 20)
ownpal = 1

[State 1000, End]
type = VelSet
trigger1 = Pos Y > 0
Y = 0
ignorehitpause = 1

[State 1000, End]
type = PosSet
trigger1 = Pos Y > 0
Y = 0
ignorehitpause = 1

[State 200, 2]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 0

; Madama Butterfly's Foot
[Statedef 11155]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 0
juggle  = 18

[State 2101, Scale]
type = PalFX
trigger1 = !Time
time = -1
add = -64, -64, -64
sinadd = 64, 64, 64, 30

[State 1001, Dampen]
Type = ParentVarset
Trigger1 = MoveHit && NumTarget
trigger1 = !(target, time) && target, movetype = H
fvar(39) = parent, Fvar(39)*0.85
persistent = 0
ignorehitpause = 1

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 11056
ignorehitpause = 1

[State 1005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 11155

[State 1005, Vel]
type = velset
trigger1 = 1
Y = 0
X = 0

[State 1005, Hit]
type = hitdef
trigger1 = !Time
priority = 4, Hit
attr = S, SA
damage = ceil(80 * root, fvar(39)), 4
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4 * (var(2) < 3), 6
sparkno = -1
sparkxy = -10, 0
hitsound = S7050,2
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -3, -2
ground.cornerpush.veloff = 0
air.velocity = -3, -4
guard.velocity = -5
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
p1sprpriority = 0
p2sprpriority = -1
airguard.ctrltime = 16
airguard.velocity = -3, 0
forcestand = 0
air.juggle = 12

[State 1005, End]
type = EnvShake
trigger1 = AnimElem = 7
ampl = 4
freq = 120
time = 8

[State 1005, End]
type = changestate
trigger1 = AnimElemTime(7) >= 5
value = 11156

; Madama Butterfly's Foot Fade
[Statedef 11156]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1006, NHB]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 11004, Shake]
type = SprPriority
trigger1 = 1
value = 0
ignorehitpause = 1

[State 11004, Shake]
type = VarSet
trigger1 = !Time
v = 0
value = AnimElemNo(0)
ignorehitpause = 1

[State 11004, Shake]
type = ChangeAnim
trigger1 = 1
value = 11156
elem = Var(0)
ignorehitpause = 1

[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - Time * 16, Time * 16
ignorehitpause = 1

[State 1006, End]
type = destroyself
trigger1 = Time > 16

;---------------------------------------------------------------------------
; Torture Attack
[Statedef 11200]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 11200
sprpriority = 1
facep2 = 1
poweradd = -500
velset = 0,0

[State 1030, Fail]
type = ChangeState
trigger1 = !AnimTime
value = 11299
ctrl = 0

[State 1030, Hit]
type = HitDef
trigger1 = !Time
attr = S, ST 
hitflag = M-
priority = 2, Miss
sparkno = -1
hitsound = s7010, 0
p1stateno = 11201
p2stateno = 11202
guard.dist = 0
ground.velocity = 0,0
fall = 1
fall.recover = 1
fall.recovertime = 120
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
envshake.ampl = 8
envshake.time = 4
envshake.freq = 120

; Success - Iron Maiden
[Statedef 11201]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 11204
sprpriority = 1
poweradd = 0
velset = 0,0


[State 801, Change]
type = ChangeState
triggerall = NumTarget
triggerall = !Time
triggerall = Random % 2 
triggerall = Target, AuthorName = "SilentProtagonist"
trigger1 = Target, Name = "Crono" || Target, Name = "Lucca" || Target, Name = "Marle"
trigger2 = Target, Name = "Robo" || Target, Name = "Magus" || Target, Name = "Frog"
trigger3 = Target, Name = "Ayla"
value = 11210
persistent = 0


[State 2010, NHB]
type = PlaySnd
trigger1 = Time = 1
value = S8002,4
channel =  0

[State 801, Bind]
type = ChangeAnim
trigger1 = Anim = 11204
trigger1 = !AnimTime
value = 11201

[State 1031, Measure]
type = TargetState
triggerall = !Time
trigger1 = Facing > 0 && ScreenPos X > 230
trigger2 = Facing < 0 && ScreenPos X < 90
value = 11203

[State 1031, Measure]
type = turn
triggerall = !Time
trigger1 = Facing > 0 && ScreenPos X > 230
trigger2 = Facing < 0 && ScreenPos X < 90

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(0) = (Target, Const(size.height))

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(1) = Facing * (Target, ScreenPos X - ScreenPos X)

[State 801, Bind]
type = TargetBind
trigger1 = 1
pos = fvar(1), 0

[State 801, Bind]
type = VarSet
trigger1 = !Time
fvar(2) = (20 - FVar(1)) /10.0

[State 801, Bind]
type = VarAdd
trigger1 = Time = [0,10]
fvar(1) = fvar(2)

[State 801, Bind]
type = VarAdd
trigger1 = Anim = 11201
trigger1 = AnimElemNo(0) = 4
fvar(1) = IfElse(fvar(1) < 70, 6, (100 - fvar(1))/30.0)

[State 801, Bind]
type = ChangeAnim
trigger1 = Anim = 11201
trigger1 = AnimElemNo(0) = 4
trigger1 = fvar(1) >= 80
value = 11203

[State 11205, Change]
type = EnvShake
triggerall = Anim = 11201
trigger1 = AnimElem = 4
ampl = 8
time = 4
freq = 120


[State 220, Explod]
type = Explod
triggerall = Anim = 11201
trigger1 = AnimElem = 3
anim = 7001
ID = 11150
pos = 17, -27
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 1030, Fail]
type = TargetState
trigger1 = Anim = 11203
value = 11297
persistent = 0

[State 1030, Fail]
type = TargetLifeAdd
triggerall = NumHelper(11200)
triggerall = Helper(11200), Anim = 11206
trigger1 = Helper(11200), AnimElem = 5
trigger2 = Helper(11200), AnimElem = 6
value = -62

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 11205
ID = 11200
name = "Iron Maiden"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 90, 0
ownpal = 1

[State 1030, Fail]
type = TargetState
trigger1 = NumHelper(11200)
trigger1 = Helper(11200), Anim = 11206
trigger1 = Helper(11200), AnimElem = 7
value = 11298
persistent = 0

[State 1030, Fail]
type = TargetDrop
trigger1 = NumTarget
trigger1 = Target, StateNo = 11298

[State 1030, Fail]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

; Get Hit
[Statedef 11202]
type = S
physics = N
movetype = H
velset = 0,0
sprpriority = 0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 11202

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Turning
[Statedef 11203]
type = A
physics = N
movetype = H
velset = 0,0

[State 11252, Turn]
type = Turn
trigger1 = !Time

[State 803, End]
type = ChangeState
trigger1 = !Time
value = 11202
ctrl = 0


; Iron Maiden
[Statedef 11205]
type = S
physics = N
movetype = I
anim = 11205
velset = 0,0
sprpriority = -1

[State 11205, Change]
type = Trans
trigger1 = Time = [0, 16]
trans = addalpha
alpha = Time * 16, 256 - Time * 16

[State 11205, Change]
type = AngleDraw
trigger1 = 0.5 + Root, FVar(0)/19.0 > 1
scale = Floor(0.5 + Root, FVar(0)/19.0), Floor(0.5 + Root, FVar(0)/19.0)

[State 11205, Change]
type = ChangeAnim
trigger1 = Parent, Anim = 11203
value = 11206
persistent = 0

[State 11205, Change]
type = EnvShake
triggerall = Anim = 11206
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
ampl = 8
time = 12
freq = 120


[State 11205, Change]
type = PlaySnd
triggerall = Anim = 11206
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
value = S7050,2


[State 1022, Explod]
type = Explod
triggerall = Anim = 11206
triggerall = AnimElemNo(0) = 9
trigger1 = NumExplod(11205) < 6
trigger1 = Time % 3 = 0
anim = 7002
ID = 11205
pos = (25 - (Random % 50)) * Floor(0.5 + Root, FVar(0)/19.0), - (Random % 60*Floor(0.5 + Root, FVar(0)/19.0))
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
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 0

[State 11205, Change]
type = Trans
trigger1 = Anim = 11206
trigger1 = AnimElemNo(0) = 9
trans = addalpha
alpha = 256 - 16 * AnimElemTime(9), AnimElemTime(9) * 16

[State 1022, Explod]
type = DestroySelf
trigger1 = Anim = 11206
trigger1 = !AnimTime

[State 1032, Shtuff]
type = PosFreeze
trigger1 = 1

; Success - Guillotine
[Statedef 11210]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 11210
sprpriority = -1
poweradd = 0
velset = 0,0


[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8002,5
channel =  0

[State 1031, Measure]
type = VarSet
triggerall = !Time
triggerall = Var(0) := 1
trigger1 = Facing > 0 && ScreenPos X > 240
trigger2 = Facing < 0 && ScreenPos X < 80
v = 0
value = -1

[State 801, Bind]
type = TargetState
trigger1 = NumTarget
trigger1 = !Time
value = IfElse(Var(0) < 0, 11213, 11211)

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(1) = Facing * (Target, ScreenPos X - ScreenPos X)

[State 801, Bind]
type = VarSet
trigger1 = !Time
fvar(2) = 0

[State 801, Bind]
type = TargetBind
trigger1 = NumTarget
pos = fvar(1), fvar(2)

[State 801, Bind]
type = VarSet
trigger1 = !Time
fvar(3) = - FVar(1) /10.0

[State 801, Bind]
type = VarSet
trigger1 = !Time
fvar(4) = (- FVar(2) - 20) /10.0

[State 801, Bind]
type = VarAdd
trigger1 = Anim = 11210
trigger1 = AnimElemNo(0) = 3
fvar(1) = fvar(3)

[State 11210, Lift]
type = VarAdd
trigger1 = Anim = 11210
trigger1 = AnimElemNo(0) = 3
fvar(2) = fvar(4)

[State 1031, Measure]
type = Turn
trigger1 = Anim = 11210
trigger1 = AnimElem = 4
trigger1 = Var(0) < 0

[State 11210, JumpX]
type = PosAdd
trigger1 = Anim = 11210
trigger1 = AnimElemNo(0) = 5
X = 1.1
Y = -6.8 + 0.4 * (AnimElemTime(5))

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 11215
ID = 11210
name = "Guillotine"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 60*Var(0), 0
facing = Var(0)
ownpal = 1

[State 801, Bind]
type = ChangeAnim
trigger1 = !AnimTime
value = 11211
persistent = 0

[State 801, Bind]
type = TargetState
trigger1 = NumTarget
trigger1 = Anim = 11211
trigger1 = AnimElem = 2 
value = 11212
persistent = 0

[State 801, Bind]
type = EnvShake
trigger1 = Anim = 11211
trigger1 = AnimElem = 2
ampl = 4
time = 8
freq = 120
persistent = 0

[State N, Sound]
type = PlaySnd
trigger1 = NumTarget
trigger1 = Anim = 11211
trigger1 = AnimElem = 2 
value = S7020,0
persistent = 0

[State 801, Bind]
type = EnvShake
trigger1 = Anim = 11211
trigger1 = AnimElem = 5
ampl = 8
time = 6
freq = 120

[State N, Sound]
type = PlaySnd
trigger1 = Anim = 11211
trigger1 = AnimElem = 5
value = S7020,0

[State 801, Bind]
type = ChangeAnim
trigger1 = Anim = 11211
trigger1 = Time > 200
value = 11212
persistent = 0

[State N, Sound]
type = PlaySnd
trigger1 = Anim = 11212
trigger1 = AnimElemTime(1) = 32
value = S7020,5

[State 801, Bind]
type = EnvShake
trigger1 = Anim = 11212
trigger1 = AnimElemTime(1) = 32
ampl = 12
time = 8
freq = 120

[State 801, Bind]
type = EnvShake
trigger1 = Anim = 11212
trigger1 = AnimElemTime(2) = 5
ampl = 12
time = 8
freq = 120

[State N, Sound]
type = PlaySnd
trigger1 = Anim = 11212
trigger1 = AnimElemTime(2) = 5
value = S7050,2

[State 801, Bind]
type = TargetState
trigger1 = NumTarget
trigger1 = Anim = 11212
trigger1 = AnimElemTime(2) = 5
value = 11298
persistent = 0

[State 801, Bind]
type = TargetDrop
trigger1 = NumTarget
trigger1 = Anim = 11212
trigger1 = AnimElemTime(2) = 5

[State 801, Bind]
type = PosAdd
trigger1 = Anim = 11212
trigger1 = AnimElemNo(0) = 2
X = -3
Y = -6 + AnimElemTime(2)*Const(movement.yaccel)

[State 801, Bind]
type = VarSet
triggerall = NumTarget
triggerall = NumHelper(11210)
trigger1 = Anim = 11211
trigger1 = AnimElem = 2
trigger2 = Anim = 11212
fvar(1) = (Helper(11210), Pos X - Pos X)*Facing

[State 801, Bind]
type = VarSet
triggerall = NumTarget
triggerall = NumHelper(11210)
trigger1 = Anim = 11211
trigger1 = AnimElem = 2
trigger2 = Anim = 11212
fvar(2) = (Helper(11210), Pos Y - Pos Y) - 42

[State 801, Bind]
type = ChangeState
trigger1 = Anim = 11212
trigger1 = Pos Y > -6 + AnimElemTime(2)*Const(movement.yaccel)
trigger1 = AnimElemTime(2)*Const(movement.yaccel) >= 6
value = 52


; Get Hit
[Statedef 11211]
type = S
physics = N
movetype = H
velset = 0,0
sprpriority = -1

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 11219

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

;GetHit - In the Guillotine
[Statedef 11212]
type = S
physics = N
movetype = H
velset = 0,0
sprpriority = -1

[State 1032, Anim]
type = ChangeAnim
trigger1 = Time = 1
value= 14500

[State 1032, Anim]
type = Sprpriority
trigger1 = Time = 1
value= 1

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Turning
[Statedef 11213]
type = A
physics = N
movetype = H
velset = 0,0

[State 11252, Turn]
type = Turn
trigger1 = !Time

[State 803, Safety]
type = ChangeState
trigger1 = !Time
value = 11211
ctrl = 0


; Guillotine
[Statedef 11215]
type = S
physics = N
movetype = I
anim = 11215
velset = 0,0
sprpriority = 1

[State 11205, Change]
type = Trans
trigger1 = Time = [0, 16]
trans = addalpha
alpha = Time * 16, 256 - Time * 16

[State 200, Bladae]
type = Explod
trigger1 = !Time
anim = 11217
ID = 11217
pos = 0, 0
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1


[State 200, Bladae]
type = ChangeAnim
trigger1 = Root, Anim = 11212
trigger1 = Root, AnimElemTime(1) <= 32
trigger1 = Anim != 11216
value = 11216
persistent = 0

[State 200, Bladae]
type = ChangeAnim
trigger1 = Root, Anim = 11212
trigger1 = Root, AnimElemTime(1) > 32
trigger1 = Anim != 11215
value = 11215
persistent = 0

[State 200, Bladae]
type = RemoveExplod
trigger1 = Root, Anim = 11212
trigger1 = Root, AnimElemTime(1) = 20
ID = 11217
persistent = 0

[State 200, Blade]
type = Explod
trigger1 = Root, Anim = 11212
trigger1 = Root, AnimElemTime(1) >= 20
trigger1 = !NumExplod(11217)
anim = 11218
ID = 11217
pos = 0, 0
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 1022, Explod]
type = Explod
triggerall = !Var(1)
triggerall = GameTime % 2 = 0
trigger1 = Var(0) > 0
anim = 7002
ID = 11218
pos = Floor(20 - (Random % 40)), - Floor(Random % 100)
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
shadow = 0,0,0
ownpal = 0
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 0


[State 200, Bladae]
type = RemoveExplod
trigger1 = Var(0) > 0
ID = 11217
persistent = 0

[State 200, Bladae]
type = Explod
trigger1 = Var(0) > 0
anim = 11214
ID = 11217
pos = 0, 0
facing = -1
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 11250, Var]
type = VarSet
trigger1 = !Time
V = 0
value = 0

[State 11205, Change]
type = Trans
trigger1 = Var(0) > 0
trans = addalpha
alpha = 256 - Var(0) * 16, Var(0) * 16

[State 11250, Var]
type = VarAdd
trigger1 = Root, Anim = 11212
trigger1 = Root, AnimElem = 2
trigger2 = Root, StateNo != 11210
trigger3 = Var(0) > 0
V = 0
value = 1

[State 1022, Explod]
type = DestroySelf
trigger1 = Var(0) >= 16

; Invisible Get Hit
[Statedef 11297]
type = A
physics = N
movetype = H
velset = 0,0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 7200

[State 1032, Anim]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible

; Gethit - Air
[Statedef 11298]
type = A
physics = N
movetype = H
velset = -3,-7

[State 803, Vel]
type = VelSet
trigger1 = !Time
y = -9
x = -2

[State 803, Vel]
type = VelAdd
trigger1 = 1
y = .56

[State 803, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 11297

[State 803, Vel]
type = ChangeAnim2
trigger1 = Vel Y > 0
value = 11298

[State 803, Life]
type = PosSet
trigger1 = (Vel y > 0) && (Pos y >= 0)
y = 0

[State 803, Hit Ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
ctrl = 0


;Torture Miss
[Statedef 11299]
type = C
physics = C
movetype = I
velset = 0,0
anim = 10
ctrl = 0

[State 1035, Pos]
type = PosSet
trigger1 = !Time
Y = 0

[State 1035, Pos]
type = ChangeState
trigger1 = Time > 12
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Torture Attack - Air
[Statedef 11300]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 11300
sprpriority = 1
facep2 = 1
poweradd = -500

[State 1030, Impulse]
type = VelSet
trigger1 = !Time
Y = 0
X = 2

[State 1030, Impulse]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I
statetype = A
physics = A
persistent = 0

[State 1030, Hit]
type = HitDef
trigger1 = Time = 10
attr = S, ST 
hitflag = MA-
priority = 2, Miss
sparkno = -1
hitsound = s7010, 0
p1stateno = IfElse(Random % 2, 11301, 11350)
p2stateno = 11302
guard.dist = 0
ground.velocity = 0,0
fall = 1
fall.recover = 1
fall.recovertime = 120
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

; Success - Pulley
[Statedef 11301]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 11301
sprpriority = 2
poweradd = 0
velset = 0,0

[State 1000, Hadouken]
type = PlayerPush
trigger1 = 1
value = 0

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8002,7
channel =  0


[State 1000, Hadouken]
type = helper
trigger1 = Time = 39
helpertype = normal
stateno = 11305
ID = 11300
name = "Pulley"
postype = p1
pos = 60, -70
pausemovetime = 9999999*(Var(24) > 0)
ownpal = 1

[State 11205, Change]
type = EnvShake
trigger1 = !Time
ampl = 4
time = 8
freq = 120

[State 1031, Measure]
type = Turn
triggerall = !Time
trigger1 = Facing > 0 && ScreenPos X > 240
trigger2 = Facing < 0 && ScreenPos X < 80

[State 1031, Measure]
type = PosSet
trigger1 = !Time
trigger1 = NumTarget
X = Target, Pos X - 15*Facing
Y = Target, Const(size.head.pos.y) + 20

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(1) = Facing * (Target, ScreenPos X - ScreenPos X)

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(2) = (Target, ScreenPos Y - ScreenPos Y)

[State 801, Bind]
type = PosAdd
triggerall = Time = [5, 32]
trigger1 = (fvar(1) := fvar(1) - 0.6)
trigger1 = (fvar(2) := fvar(2) - (-3 + (Time - 5)*0.18))
X = 0.6
Y = -3 + (Time - 5)*0.18

[State 1031, Measure]
type = TargetState
trigger1 = Time = 32
trigger1 = NumTarget
value = 11303

[State 1000, Hadouken]
type = helper
trigger1 = AnimElemTime(1) = 32
helpertype = normal
stateno = 11306
ID = 11301
name = "Chain 1"
pausemovetime = 9999999*(Var(24) > 0)
postype = p1
pos = 0,0;Floor(Target, Pos X - Pos X + Target, Const(size.mid.pos.x))*Facing, Floor(Target, Pos Y - Pos Y + Target, Const(size.mid.pos.y))
ownpal = 1


[State 1031, Measure]
type = null
trigger1 = Time = 32
trigger1 = NumTarget
trigger1 = !(fvar(1) := 0)
trigger1 = !(fvar(2) := 0)

[State 801, Bind]
type = PosAdd
triggerall = Time = [40, 52]
trigger1 = (fvar(1) := fvar(1) - 4.1)
trigger1 = (fvar(2) := fvar(2) + 3.8)
X = 4.1
Y = -3.8

[State 801, Bind]
type = PosAdd
triggerall = NumHelper(11300)
triggerall = Anim = 11302
triggerall = AnimElemTime(1) = [14, 25]
triggerall = NumTarget
trigger1 = (fvar(1) := fvar(1) - 0.9)
trigger1 = (fvar(2) := fvar(2) - 10)
X = 5
Y = 5

[State 801, Bind]
type = TargetBind
trigger1 = 1
pos = fvar(1), fvar(2)

[State 11205, Change]
type = ChangeAnim
triggerall = NumHelper(11300)
trigger1 = Time = 55
value = 11302
persistent = 0

[State 11205, Change]
type = EnvShake
trigger1 = Anim = 11302
trigger1 = AnimElemTime(1) = 25
ampl = 8
freq = 120
time = 12
persistent = 0

[State 11205, Change]
type = PlaySnd
trigger1 = Anim = 11302
trigger1 = AnimElemTime(1) = 25
value = S7020,5
persistent = 0

[State 11205, Change]
type = TargetLifeAdd
triggerall = NumTarget
trigger1 = Anim = 11302
trigger1 = AnimElemTime(1) = 25
value = -120
persistent = 0

[State 11205, Change]
type = VarSet
trigger1 = !Time
var(0) = 0

[State 11205, Change]
type = VarAdd
triggerall = NumTarget
trigger1 = Anim = 11302
trigger1 = AnimElemTime(1) = 25
trigger2 = Var(0) > 0
v = 0
value = 1

[State 11205, Change]
type = TargetState
triggerall = NumTarget
trigger1 = Var(0) > 20
value = 11398

[State 11205, Change]
type = TargetDrop
triggerall = NumTarget
trigger1 = Target, StateNo = 11398
persistent = 0

[State 11205, Change]
type = ChangeState
trigger1 = !NumTarget
value = 50
ctrl = 0
persistent = 0


; Get Hit
[Statedef 11302]
type = A
physics = N
movetype = H
velset = 0,0
sprpriority = 1
[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 11304

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Get Hit - Lift up
[Statedef 11303]
type = A
physics = N
movetype = H
velset = 0,0
sprpriority = 1

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 11308

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Pulley
[Statedef 11305]
type = A
physics = N
movetype = I
anim = 11305
sprpriority = 3
velset = 0,0

[State 11205, Change]
type = Trans
trigger1 = Time = [0, 16]
trans = addalpha
alpha = Time * 16, 256 - Time * 16

[State 1000, Hadouken]
type = helper
trigger1 = Parent, Anim = 11302
trigger1 = Parent, AnimElemTime(1) >= 14
helpertype = normal
stateno = 11308
ID = 11301
name = "Chain 2"
postype = p1
pausemovetime = 9999999*(Root, Var(24) > 0)
pos = 0, 0
ownpal = 1
persistent = 0

[State 11205, Change]
type = VarSet
trigger1 = !Time
var(0) = 0

[State 11205, Change]
type = Trans
trigger1 = Parent, StateNo != 11301
trigger1 = (var(0) := (var(0)+1))
trans = addalpha
alpha = 256 - 16 * Var(0), 16 * Var(0)


[State 1032, Shtuff]
type = DestroySelf
trigger1 = Var(0) >= 16

;Chain 1
[Statedef 11306]
type = A
physics = N
movetype = I
anim = 11306
sprpriority = 0
velset = 0,0

[State 11205, Scale]
type = AssertSpecial
trigger1 = Time = [0,8]
trigger2 = FVar(0) = 0
flag = invisible
flag2 = noshadow

[State 11205, Scale]
type = null
triggerall = Parent, Anim = 11301
trigger1 = (FVar(0) := (ScreenPos X - Parent, ScreenPos X) * Parent, Facing)
trigger1 = (FVar(1) := (ScreenPos Y - Parent, ScreenPos Y + 20))

[State 11205, Scale]
type = null
triggerall = Parent, Anim = 11301
trigger1 = (FVar(2) := Exp(0.5*Ln(FVar(0)*FVar(0) + FVar(1)*FVar(1) + 0.1)))

[State 11205, Scale]
type = AngleDraw
trigger1 = FVar(0) != 0
scale = 1, FVar(2)/64.0
value = -ATan(Fvar(1)/FVar(0)) * 180.0/Pi - 90.0

[State 1000, Hadouken]
type = helper
trigger1 = AnimElemTime(1) = 20 + IfElse(Root, Var(24), 10, 0)
helpertype = normal
stateno = 11307
ID = 11301
name = "Chain 1 short"
pausemovetime = 9999999*(Root, Var(24) > 0)
postype = p1
pos = -Floor(FVar(0)), -Floor(FVar(1))
ownpal = 1

[State 11205, Change]
type = DestroySelf
trigger1 = AnimElemTime(1) = 20 + IfElse(Root, Var(24), 10, 0)

;Chain 1 (shortening)
[Statedef 11307]
type = A
physics = N
movetype = I
anim = 11306
sprpriority = 0
velset = 0,0

[State 11205, Scale]
type = null
triggerall = !Time
trigger1 = (FVar(0) := Parent, FVar(0)) || 1
trigger1 = (FVar(1) := Parent, FVar(1)) || 1

[State 11205, Scale]
type = null
triggerall = !Time
trigger1 = (FVar(2) := Parent, FVar(2))

[State 11205, Scale]
type = null
triggerall = Root, Anim = 11302
triggerall = Root, AnimElemTime(1) = [14, 25]
trigger1 = (FVar(2) := (FVar(2) - 6.8 + IfElse(Root, Var(24), 0.8, 0)))

[State 11205, Scale]
type = AngleDraw
trigger1 = FVar(0) != 0
scale = 1, FVar(2)/64.0
value = -ATan(FVar(1)/FVar(0)) * 180.0/Pi + 90


[State 11205, Scale]
type = AngleDraw
trigger1 = FVar(0) = 0
scale = 1, 0

[State 11205, Change]
type = DestroySelf
trigger1 = Root, Anim = 11302
trigger1 = Root, AnimElemTime(1) > 25 
trigger2 = Root, StateNo != 11301

;Chain 2
[Statedef 11308]
type = A
physics = N
movetype = I
anim = 11306
sprpriority = 0
velset = 0,0

[State 11205, Scale]
type = AssertSpecial
trigger1 = Time = [0,2]
;trigger2 = FVar(0) = 0
flag = invisible
flag2 = noshadow

[State 11205, Scale]
type = null
triggerall = Root, Anim = 11302
trigger1 = (FVar(0) := ((ScreenPos X - Root, ScreenPos X)  * Root, Facing - 10)) 
trigger1 = (FVar(1) := (ScreenPos Y - Root, ScreenPos Y + 20))

[State 11205, Scale]
type = null
triggerall = Root, Anim = 11302
trigger1 = (FVar(2) := Exp(0.5*Ln(FVar(0)*FVar(0) + FVar(1)*FVar(1) + 0.1))) || 1
trigger1 = (FVar(3) := -ATan(FVar(1)/FVar(0)) * 180.0/Pi - 90.0)

[State 11205, Scale]
type = VarSet
trigger1 = Root, StateNo != 11301
fv = 3
value = FVar(3)*0.9 - 180*0.1

[State 11205, Scale]
type = AngleDraw
trigger1 = FVar(0) != 0
scale = 1, FVar(2)/64.0
value = FVar(3)

[State 11205, Change]
type = Trans
trigger1 = Root, StateNo != 11301
trigger1 = (var(0) := (var(0)+1))
trans = addalpha
alpha = 256 - 16 * Var(0), 16 * Var(0)

[State 1032, Shtuff]
type = DestroySelf
trigger1 = Var(0) >= 16

; Success - Chainsaw
[Statedef 11350]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 11301
sprpriority = -1
poweradd = 0
velset = 0,0


[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8002,6
channel =  0

[State 1000, Hadouken]
type = PlayerPush
trigger1 = 1
value = 0

[State 11205, Change]
type = EnvShake
trigger1 = !Time
ampl = 4
time = 8
freq = 120

[State 1031, Measure]
type = PosSet
trigger1 = !Time
trigger1 = NumTarget
X = Target, Pos X - 25*Facing
Y = Target, Const(size.head.pos.y) + 20

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(1) = Facing * (Target, ScreenPos X - ScreenPos X)

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(2) = (Target, ScreenPos Y - ScreenPos Y)

[State 801, Bind]
type = PosAdd
triggerall = Time = [5, 32]
trigger1 = (fvar(1) := fvar(1) - 0.2)
trigger1 = (fvar(2) := fvar(2) - (-3 + (Time - 5)*0.18))
X = 0.2
Y = -3 + (Time - 5)*0.18

[State 1031, Measure]
type = ChangeAnim
trigger1 = Time = 32
value = 11350

[State 1031, Measure]
type = TargetState
trigger1 = NumTarget
trigger1 = Anim = 11350
trigger1 = AnimElem = 2
value = IfElse(Target, Facing = Facing, 11351, 11352)
persistent = 0

[State 1031, Measure]
type = null
trigger1 = NumTarget
trigger1 = Target, StateNo = [11351, 11352]
;trigger1 = !(fvar(1) := 0)
trigger1 = !(fvar(2) := 0)

[State 200, Explod]
type = Explod
trigger1 = Anim = 11350
trigger1 = AnimElem = 1
anim = 11355
ID =  11355
pos = -4, -25
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = -2
ontop = 0
shadow = -1
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1


[State 200, Explod]
type = RemoveExplod
trigger1 = Anim = 11350
trigger1 = AnimElem = 2
ID = 11355

[State 200, Explod]
type = Explod
trigger1 = Anim = 11350
trigger1 = AnimElem = 2
anim = 11356
ID =  11356
pos = 10,-12
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 2
shadow = -1
ontop = 0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 801, Bind]
type = EnvShake
trigger1 = Anim = 11350
trigger1 = AnimElemNo(0) = 2
trigger1 = AnimElemTime(2) % 20 = 0
ampl = 12
freq = 120
time = 20

[State 11205, Change]
type = PlaySnd
trigger1 = Anim = 11350
trigger1 = AnimElemNo(0) = 2
trigger1 = AnimElemTime(2) % 5 = 0
value = S7020,2


[State 200, Explod]
type = Explod
trigger1 = Anim = 11350
trigger1 = AnimElemNo(0) = 2
trigger1 = AnimElemTime(2) < 70
trigger1 = NumExplod(11357) < 2
anim = 7001
ID =  11357
pos = 20, 12
random = 15,15
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1


[State 220, Explod]
type = Explod
trigger1 = Anim = 11350
trigger1 = AnimElem = 2
anim = 7022
ID = 11358
pos = 10, 24
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1,1
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1


[State 801, Bind]
type = TargetBind
trigger1 = 1
pos = fvar(1), fvar(2)

[State 11205, Change]
type = VarSet
trigger1 = !Time
var(0) = 0

[State 2022, End]
type = TargetState
trigger1 = Anim = 11350
trigger1 = !AnimTime
trigger1 = NumTarget
value = 11298

[State 2022, End]
type = TargetDrop
trigger1 = Anim = 11350
trigger1 = !AnimTime
trigger1 = NumTarget

[State 2022, End]
type = VelSet
trigger1 = Anim = 11350
trigger1 = !AnimTime
X = -3 
Y = -5

[State 2022, End]
type = ChangeState
trigger1 = Anim = 11350
trigger1 = !AnimTime
value = 50
ctrl = 0

; Get Hit - Saw'd, Turn
[Statedef 11351]
type = A
physics = N
movetype = H
velset = 0,0
sprpriority = 0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 11351

[State 1032, Anim]
type = Turn
trigger1 = !Time

[State 803, Safety]
type = ChangeState
trigger1 = !Time
value = 11352

; Get Hit - Saw'd
[Statedef 11352]
type = A
physics = N
movetype = H
velset = 0,0
sprpriority = 0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 11351

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0


; Gethit - Air
[Statedef 11398]
type = A
physics = N
movetype = H
velset = 0, 0

[State 803, Vel]
type = VelAdd
trigger1 = 1
y = .56

[State 803, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 11297

[State 803, Vel]
type = ChangeAnim2
trigger1 = Vel Y > 0
value = 11298

[State 803, Life]
type = PosSet
trigger1 = (Vel y > 0) && (Pos y >= 0)
y = 0

[State 803, Hit Ground]
type = SelfState
trigger1 = (Vel y > 0) && (Pos y >= 0)
value = 5100
ctrl = 0


; Panther Within
[Statedef 11400]
type    = S
physics = S
anim = 10100
velset = 0,0
sprpriority = 1

[State 2010, NHB]
type = PosSet
trigger1 = !Time
Y = 0

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,13
channel =  0

[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x) * 1.75

[State 801, Shot]
type = Helper
trigger1 = Time % 3 = 0
name = "Withering Flower"
ID = 100
stateno = 17300
postype = p1    ;p2,front,back,left,right
pos = -10 + Random % 10, 0
facing = 1
keyctrl = 0
ownpal = 1
pausemovetime = 9999999999 * (Var(24) > 0)


[State 1040, End]
type = PalFX
trigger1 = Time = [0,16]
add = 128 - 8 * Time, 64 - 4 * Time, 256 - 16 * Time
mul = 256,256,256
invertall = 0
time = 1
color = 256
ignorehitpause = 1

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd"
value = 0
ctrl = 1
