;===========================================================================
; Alternate Special Moves
;===========================================================================

;Tombstone
[Statedef 11000]
type = S
physics = S
movetype = A
anim = 11000
ctrl = 0
velset = 0, 0
poweradd = 72 * !var(21)
sprpriority = 1
facep2 = 1
juggle  = 12

[State 1000, Strength]
type = varset
trigger1 = !time 
var(0) = ifelse(command = "qcfc", 1, 0)

[State 1000, Hadouken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 11005
ID = 11000
name = "Tombstone"
pausemovetime = 9999999*(Var(24) > 0)
postype = p1
pos = 30 + 30 * Var(0), -50
ownpal = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

; Tombstone
[Statedef 11005]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1006, Trans]
type = trans
trigger1 = !prevstateno
trigger1 = AnimElemNo(0) = 1
trans = addalpha
alpha = Time * 32, 256 - Time * 32
ignorehitpause = 1

[State 1001, Dampen]
Type = ParentVarset
Trigger1 = MoveHit
trigger1 = !(target, time) && target, movetype = H
fvar(39) = parent, Fvar(39)*0.85
persistent = 0
ignorehitpause = 1

[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 4, 11005, 11006)
ignorehitpause = 1

[State 1005, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, Strength]
type = varset
trigger1 = !time && !prevstateno
var(10) = 5

[State 1005, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 11005

[State 1005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 1005, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1

[State 1005, Vel]
type = velset
trigger1 = 1
Y = ifelse((time < 1 && var(2) > 1), 0.8, 4)
X = 0

[State 1005, Hit]
type = hitdef
trigger1 = 1
priority = 4, Hit
attr = S, SP
damage = ceil(30 * root, fvar(39)), 4
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4 * (var(2) < 3), 6
sparkno = -1
sparkxy = -10, 0
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, ifelse(var(2) < 2, 0, 3)
ground.cornerpush.veloff = 0
air.velocity = 0, 4
guard.velocity = -10.52*0.7
fall = (var(2) >= 2)
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
p1sprpriority = 4
airguard.ctrltime = 16
airguard.velocity = 0, 1.2
forcestand = 1

[State 1005, End]
type = changestate
trigger1 = movecontact
value = ifelse(var(2) < 2, 11005, 11006)


[State 1005, End]
type = changestate
trigger1 = Pos Y >= Vel Y && Vel Y > 0
value = 11006


; Tombstone End
[Statedef 11006]
type = A
physics = N
movetype = I
anim = 11006
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - Time * 16, Time * 16
ignorehitpause = 1

[State 11004, Shake]
type = EnvShake
trigger1 = !Time
trigger1 = Pos Y >= 0
ampl = 4
time = 12
freq = 120

[State 11004, Pos]
type = PosSet
trigger1 = !Time
trigger1 = Pos Y >= 0
Y = 0

[State 1006, End]
type = destroyself
trigger1 = Time > 16

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
hitsound = s7050,2
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
stateno = 11105
ID = 11100
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -30
ownpal = 1

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
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 7
sparkno = s7001
sparkxy = -10, -25
hitsound = s7050,2
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

[State 1001, Dampen]
Type = ParentVarset
Trigger1 = MoveHit
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
hitsound = s7050,2
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
hitsound = s7050,2
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

[State 1001, Dampen]
Type = ParentVarset
Trigger1 = MoveHit
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
p1stateno = 11250;11201
p2stateno = 11202
guard.dist = 0
ground.velocity = 0,0
fall = 1
fall.recover = 1
fall.recovertime = 120
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

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

[State 801, Bind]
type = ChangeAnim
trigger1 = Anim = 11204
trigger1 = !AnimTime
value = 11201

[State 1031, Measure]
type = turn
triggerall = !Time
trigger1 = Facing > 0 && ScreenPos X > 240
trigger2 = Facing < 0 && ScreenPos X < 80

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
fvar(1) = IfElse(fvar(1) < 70, 6, (90 - fvar(1))/30.0)

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
pos = 80, 0
ownpal = 1

[State 1030, Fail]
type = TargetState
trigger1 = NumHelper(11200)
trigger1 = Helper(11200), Anim = 11206
trigger1 = Helper(11200), AnimElem = 7
value = 11298
persistent = 0

[State 1030, Fail]
type = ChangeAnim
trigger1 = NumTarget
trigger1 = Target, StateNo = 11298
value = 11250
persistent = 0

[State 1030, Fail]
type = TargetDrop
trigger1 = NumTarget
trigger1 = Target, StateNo = 11298

[State 1030, Fail]
type = ChangeState
trigger1 = !NumTarget && Anim != 11250
trigger2 = Anim = 11250 && !AnimTime
value = 0
ctrl = 1

; Get Hit
[Statedef 11202]
type = S
physics = N
movetype = H
velset = 0,0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 11202

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Iron Maiden
[Statedef 11205]
type = S
physics = N
movetype = I
anim = 11205
velset = 0,0

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

[State 1022, Explod]
type = Explod
triggerall = Anim = 11206
triggerall = AnimElemNo(0) = 9
trigger1 = NumExplod(11205) < 6
trigger1 = GameTime % 3 = 0
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

; Success - Treadmill
[Statedef 11250]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 11204
sprpriority = 1
poweradd = 0
velset = 0,0

[State 801, Bind]
type = ChangeAnim
trigger1 = Anim = 11204
trigger1 = !AnimTime
value = 11201

[State 801, Bind]
type = VarAdd
trigger1 = Anim = 11201
trigger1 = AnimElemNo(0) = 4
trigger2 = anim = 11203 
fvar(1) = IfElse(fvar(1) < 20, 3, (120 - fvar(1))/100.0)

[State 801, Bind]
type = ChangeAnim
trigger1 = Anim = 11201
trigger1 = AnimElemNo(0) = 4
trigger1 = fvar(1) >= 40
value = 11203

[State 801, Bind]
type = EnvShake
triggerall = NumTarget
trigger1 = Anim = 11203
trigger1 = fvar(1) >= 100
ampl = 12
freq = 140
time = 12
persistent = 0

[State 801, Bind]
type = TargetLifeAdd
triggerall = NumTarget
trigger1 = Anim = 11203
trigger1 = fvar(1) >= 100
value = -124
persistent = 0

[State 801, Bind]
type = TargetState
triggerall = NumTarget
trigger1 = Anim = 11203
trigger1 = fvar(1) >= 100
value = 11298
persistent = 0

[State 11205, Change]
type = EnvShake
triggerall = Anim = 11201
trigger1 = AnimElem = 4
ampl = 8
time = 4
freq = 120


[State 801, Bind]
type = TargetState
triggerall = NumTarget
trigger1 = Anim = 11201
trigger1 = AnimElem = 4
value = IfElse(Target, Facing = Facing, 11252, 11253)
persistent = 0

[State 1031, Measure]
type = turn
triggerall = !Time
trigger1 = Facing > 0 && ScreenPos X > 140
trigger2 = Facing < 0 && ScreenPos X < 100

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

[State 1000, Hadouken]
type = helper
trigger1 = Time = 1
helpertype = normal
stateno = 11255
ID = 11250
name = "Treadmill"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 80, 9
ownpal = 1

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
[Statedef 11251]
type = S
physics = N
movetype = H
velset = 0,0

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
[Statedef 11252]
type = S
physics = N
movetype = H
velset = 0,0

[State 11252, Turn]
type = Turn
trigger1 = !Time

[State 803, Safety]
type = ChangeState
trigger1 = !Time
value = 11253
ctrl = 0

; Get Hit - Running
[Statedef 11253]
type = A
physics = N
movetype = H
velset = 0,0

[State 1032, Anim]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1

[State 1032, Anim]
type = ChangeAnim
trigger1 = !Time
value= 11202

[State 1032, Anim]
type = ChangeAnim
trigger1 = Time = 8
trigger1 = SelfAnimExist(100)
value= 100

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Treadmill
[Statedef 11255]
type = S
physics = N
movetype = I
anim = 11258
velset = 0,0
sprpriority = -2

[State 11255, Var]
type = VarSet
trigger1 = !Time
FV = 0
value = 1

[State 11255, Bump]
type = VelSet
trigger1 = Time <= 16
Y = 1

[State 11255, Bump]
type = VelSet
trigger1 = Time >= 16
Y = 0

[State 11255, Bump]
type = EnvShake
trigger1 = Time = 16
ampl = 6
freq = 120
time = 4

[State 200, BG Device]
type = Explod
trigger1 = !Time
anim = 11255
ID = 11255
pos = 0, 0
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = FVar(0), FVar(0)
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, FG Device]
type = Explod
trigger1 = !Time
anim = 11256
ID = 11256
pos = 0, 0
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = FVar(0), FVar(0)
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Grinder]
type = Explod
trigger1 = !Time
anim = 11257
ID = 11257
pos = 0, 0
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = FVar(0), FVar(0)
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Border]
type = Explod
trigger1 = !Time
anim = 11259
ID = 11259
pos = 0, 0
postype = p1  ;p2,front,back,left,right
bindtime = -1
facing = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = FVar(0), FVar(0)
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 11205, Change]
type = Trans
trigger1 = Time = [0, 16]
trans = addalpha
alpha = Time * 16, 256 - Time * 16

[State 11205, Change]
type = AngleDraw
trigger1 = FVar(0) > 1
scale = FVar(0), FVar(0)

[State 11205, Change]
type = Trans
trigger1 = Anim = 11206
trigger1 = AnimElemNo(0) = 9
trans = addalpha
alpha = 256 - 16 * AnimElemTime(9), AnimElemTime(9) * 16

[State 1022, Explod]
type = Explod
triggerall = Root, FVar(1) >= 90
trigger1 = NumExplod(11256) < 6
trigger1 = GameTime % 3 = 0
anim = 7002
ID = 11260
pos = Floor((25 - (Random % 50)) * FVar(0)), - Floor(Random % 60*FVar(0))
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

[State 11250, Var]
type = VarSet
trigger1 = !Time
V = 0
value = 0

[State 11250, Var]
type = VarAdd
trigger1 = Root, Anim = 11250
trigger2 = Root, StateNo != 11250
trigger3 = Var(0) > 0
V = 0
value = 1

[State 11205, Change]
type = Trans
trigger1 = Var(0) > 0
trans = addalpha
alpha = 256 - Var(0) * 16, Var(0) * 16

[State 1022, Explod]
type = RemoveExplod
trigger1 = Var(0) = 1
trigger2 = Var(0) = 16
ID = 11255
[State 1022, Explod]
type = RemoveExplod
trigger1 = Var(0) = 1
trigger2 = Var(0) = 16
ID = 11256
[State 1022, Explod]
type = RemoveExplod
trigger1 = Var(0) = 1
trigger2 = Var(0) = 16
ID = 11257
[State 1022, Explod]
type = RemoveExplod
trigger1 = Var(0) = 1
trigger2 = Var(0) = 16
ID = 11259


[State 200, BG Device]
type = Explod
trigger1 = Var(0) = 1
anim = 11265
ID = 11255
pos = 0, 0
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = FVar(0), FVar(0)
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, FG Device]
type = Explod
trigger1 = Var(0) = 1
anim = 11266
ID = 11256
pos = 0, 0
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = FVar(0), FVar(0)
sprpriority = 2
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Grinder]
type = Explod
trigger1 = Var(0) = 1
anim = 11267
ID = 11257
pos = 0, 0
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = FVar(0), FVar(0)
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Border]
type = Explod
trigger1 = Var(0) = 1
anim = 11269
ID = 11259
pos = 0, 0
postype = p1  ;p2,front,back,left,right
bindtime = -1
facing = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = FVar(0), FVar(0)
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1


[State 1022, Explod]
type = DestroySelf
trigger1 = Var(0) >= 16

; Invisible Get Hit
[Statedef 11297]
type = S
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
physics = A
juggle  = 3
ctrl = 0
anim = 11300
sprpriority = 1
facep2 = 1
poweradd = -500

[State 1030, Impulse]
type = VelSet
trigger1 = !Time
Y = -2
X = 2

[State 1030, Low Gravity]
type = VelAdd
trigger1 = 1
Y = -0.3*Const(movement.yaccel)

[State 1030, Hit]
type = HitDef
trigger1 = Time = 10
attr = S, ST 
hitflag = MA-
priority = 2, Miss
sparkno = -1
hitsound = s7010, 0
p1stateno = 11301
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
trigger1 = 1
scale = 1, FVar(2)/64.0
value = -ATan(FVar(1)/FVar(0)) * 180.0/Pi + 90

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
