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
pos = 10, -30
ownpal = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

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
pos = 20, 0
ownpal = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

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
p1stateno = 11201
p2stateno = 11202
guard.dist = 0
ground.velocity = 0,0
fall = 1
fall.recover = 1
fall.recovertime = 120

; Torture Attack - Iron Maiden
[Statedef 11201]
type    = A
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 11201
sprpriority = 1
poweradd = 0
velset = 0,0

[State 1031, Measure]
type = null;VarSet
triggerall = !Time
trigger1 = Facing > 0 && ScreenPos X > 280
trigger2 = Facing < 0 && ScreenPos X < 40
Var(0) = IfElse(Facing > 0, ScreenPos X - 280, ScreenPos X)

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
type = TargetDrop
trigger1 = NumTarget
trigger1 = Target, StateNo = 11298

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
movetype = H
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


;Torture Attack Miss
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