;====================< PARRY >====================
; Stand Parry
[Statedef 17001]
type = S
physics = S
movetype = I
anim = 17001
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S7020,0
channel =  1
persistent = 0

[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S8000, 7
channel =  0
persistent = 0

[State 760, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 760, Pause]
type = pause
trigger1 = !time
time = 18
movetime = 18
endcmdbuftime = 18
pausebg = 0

[State 760, Stop]
type = posfreeze
trigger1 = 1
value = 1
[State 760, No walking]
type = varset
trigger1 = 1
var(23) = 7

[State 760, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15

[State 17001: Explod]
type = Helper
trigger1 = (!Time)
StateNo = 17005
id = 17000
pos = 7, -14
postype = p1
facing = 1
supermovetime = 0
pausemovetime = 18
scale = 1,1
sprpriority = 3
ownpal = 1

[State 760, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0


[State 2010, NHB]
type = PlaySnd
trigger1 = NumHelper(17000) 
trigger1 = Helper(17000), StateNo = 17007
value = S8000,3
channel =  0

[State 760, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


; Crouch Parry
[Statedef 17002]
type = C
physics = C
movetype = I
anim = 17002
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S7020,0
channel =  1
persistent = 0

[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S8000, 7
channel =  0
persistent = 0

[State 761, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 761, Pause]
type = pause
trigger1 = !time
time = 18
movetime = 18
endcmdbuftime = 18
pausebg = 0

[State 761, Stop]
type = posfreeze
trigger1 = 1
value = 1
[State 761, No walking]
type = varset
trigger1 = 1
var(23) = 7

[State 761, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15

[State 17001: Explod]
type = Helper
trigger1 = (!Time)
StateNo = 17005
id = 17000
pos = 7, -10
postype = p1
facing = 1
supermovetime = 0
pausemovetime = 18
scale = 1,1
sprpriority = 3
ownpal = 1

[State 761, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[State 761, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


; Air Parry
[Statedef 17003]
type = A
physics = N
movetype = I
anim = 17003
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S7020,0
channel =  1
persistent = 0

[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S8000, 7
channel =  0
persistent = 0

[State 762, HB]
type = hitby
trigger1 = 1
value = SCA, AT
time = 1
[State 762, Pause]
type = pause
trigger1 = !time
time = 18
movetime = 18
endcmdbuftime = 18
pausebg = 0
[State 762, Stop]
type = posfreeze
trigger1 = 1
value = 1

[State 762, Flash]
type = palfx
trigger1 = !time
add = 0, 64, 255
sinadd = 0, -64, -255, 60
time = 15

[State 17001: Explod]
type = Helper
trigger1 = (!Time)
StateNo = 17005
id = 17000
pos = 7, -17
postype = p1
facing = 1
supermovetime = 0
pausemovetime = 18
scale = 1,1
sprpriority = 3
ownpal = 1

[State 762, Shake]
type = envshake
trigger1 = !time
time = 0
ampl = 0

[State 762, End]
type = changestate
trigger1 = !animtime
value = 17004
ctrl = 1

; Air Parry End
[Statedef 17004]
type = A
physics = N
movetype = I
anim = 17004
ctrl = 1

[State 763, Vel]
type = velset
trigger1 = !time
x = ifelse(vel x > 2, 2, ifelse(vel x < -2, -2, vel x))
y = ifelse(vel y < -2, vel y, -2)
[State 763, Accel]
type = gravity
trigger1 = 1
[State 763, Land]
type = changestate
trigger1 = pos y > -vel y && Vel Y > 0
value = 52


; Moon of Mahaa-Khalaa Sigil
[Statedef 17005]
type = S
physics = N
movetype = I
anim = 17005
sprpriority = 6
    
[State 17003: ParentVarSet]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7000, Pal Down]
type = AngleDraw
trigger1 = 1
scale = 0.5, 0.9

[State 7000, Pal Down]
type = Trans
trigger1 = Time = [0, 4]
trans = addalpha
alpha = 64 * Time, 256

[State 7000, Pal Down]
type = Trans
trigger1 = Time = [4, 14]
trans = addalpha
alpha = 256, 256

[State 7000, Pal Down]
type = Trans
trigger1 = Time = [14, 18]
trans = addalpha
alpha = 256 - 64 * (Time - 14), 256

[State 7000, Pal Down]
type = PalFX
trigger1 = 1
time = 1
color = Floor(128 + 128*Cos(Time/30.0))


[State 7000, End]
type = DestroySelf
trigger1 = Time >= 18

; Parry Reversal
[Statedef 17006]
type = A
physics = N
movetype = I
anim = ifelse(root, statetype = C, 17007, ifelse(root, statetype = A, 17008, 17006))
velset = 0, 0
ctrl = 0

[State 760, Stop]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 765, NHB]
type = nothitby
trigger1 = 1
value = SCA

[State 765, Bind]
type = bindtoroot
trigger1 = 1
time = -1

[State 765, Anim]
type = changeanim
triggerall = !time
trigger1 = root, command = "down"
value = 17007

[State 765, Anim]
type = changeanim
triggerall = !time
trigger1 = root, command = "fwd"
value = ifelse((root, statetype = A), 17008, 17006)

[State 765, Anim]
type = changeanim
trigger1 = anim = 17006 || anim = 17008
value = ifelse((root, statetype = A), 17008, 17006)

[State 765, Disable]
type = varset
trigger1 = time >= ifelse((root, statetype = A), 7, 8)
trigger2 = facing != (root, facing)
trigger3 = !(root, ctrl)
trigger3 = (root, stateno != [17001, 17003]) && (root, stateno != 5120)
var(0) = 1
[State 765, Disable]
type = varset
trigger1 = (root, command = "holdback")
trigger2 = time < 4 && (root, command = "holdfwd" + root, command = "holddown") > 1
trigger3 = time >= 4 && (root, command = "holdfwd" || root, command = "holddown")
trigger4 = time >= 1 && (((anim = 17006 || anim = 17008) && root, command = "fwd") || (anim = 17007 && root, command = "down"))
var(0) = 1

[State 765, Disable]
type = changeanim
trigger1 = var(0) = 1
value = 7200

[State 765, Standing /air]
type = reversaldef
trigger1 = !var(0) && (anim = 17006 || anim = 17008)
trigger1 = (root, stateno != 5120) || !(root, animtime)
reversal.attr = SCA, AA
p1stateno = 17007
pausetime = 0, 0
sparkno = -1
numhits = 0

[State 765, Crouching]
type = reversaldef
trigger1 = !var(0) && anim = 17007
reversal.attr = SC, AA
p1stateno = 17007
pausetime = 0, 0
sparkno = -1
numhits = 0

[State 765, Disable]
type = reversaldef
trigger1 = var(0) = 1
reversal.attr = 
pausetime = 0, 0
sparkno = -1
numhits = 0

[State 765, End]
type = destroyself
trigger1 = time >= 18
trigger2 = (root, movetype != I)
trigger3 = !(root, ctrl) && (root, stateno != [17001, 17003]) && (root, stateno != 5120)
trigger4 = (root, stateno = [17001, 17003]) && (root, time <= 1)


; Parry Success
[Statedef 17007]
movetype = I
ctrl = 0

[State 7000, End]
type = PowerAdd
trigger1 = !Time && !(Root, Var(21))
value = 250

[State 760, Stop]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 766, Disable]
type = varset
trigger1 = 1
var(0) = 1

[State 766, End]
type = destroyself
trigger1 = root, stateno = [17001, 17003]
trigger2 = time >= 2

; Forwards Dodge 
[Statedef 17100]
type = U
movetype = I
physics = N
anim = 17100
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0


[State -3, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = S7010, 5


[State -3, Landing Sound]
type = VarSet
trigger1 = !Time
v = 0
value = Random % 5


[State N, Sound]
type = PlaySnd
trigger1 = Var(0) < 3
trigger1 = NumHelper(17100) 
trigger1 = Helper(17100), StateNo = 17103
value = S8000,IfElse(Var(0) = 0, 6, IfElse(Var(0) = 1, 14, 9))
channel =  0
persistent = 0



[State N, Sound]
type = PlaySnd
trigger1 = Var(0) >= 3
trigger1 = NumHelper(17100) 
trigger1 = Helper(17100), StateNo = 17103
value = S8002,IfElse(Var(0) = 3, 11, 13)
channel =  0
persistent = 0

[State 17001: Explod]
type = Helper
trigger1 = (!Time) && !(Var(24))
StateNo = 17102
id = 17100
pos = 0, 0
postype = p1
facing = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 3
ownpal = 1

[State 17100: SprPriority]
type = StateTypeSet
trigger1 = !Time
trigger1 = StateType = C
statetype = S

[State 17100: SprPriority]
type = SprPriority
trigger1 = (Vel X != 0)
value = -2

[State 17100: NotHitBy]
type = NotHitBy
trigger1 = (AnimElemNo(0) = [2,7])
value = , NA, SA, HA, NP, SP, HP

[State 17100: VelSet]
type = VelAdd
trigger1 = (AnimElem = 2)
trigger1 = StateType = A
Y = -7

[State 17100: VelSet]
type = VelSet
trigger1 = (AnimElem = 2)
x = 2.9

[State 17100: VelSet]
type = VelSet
trigger1 = (AnimElem = 9)
x = 0

[State 17100: PlayerPush]
type = PlayerPush
trigger1 = (Vel X != 0)
value = 0

[State 17100: AfterImage]
type = AfterImage
trigger1 = Var(24) <= 0
trigger1 = (AnimElem = 2)
persistent = 0
length = 8
palbright = 0, 0, 0
palcolor = 256
paladd = 0, 0, 0
palmul = .50, .50, .50
palcontrast = 100,100,100
trans = add
timegap  = 2
framegap = 2
time = 2; only 2 ticks!!!
ignorehitpause = 1
persistent = 0

[State 17100: AfterImage]
type = AfterImageTime
trigger1 = Var(24) <= 0
trigger1 = (Vel X != 0)
time = 3

[State 17100: ChangeState]
type = ChangeState
trigger1 = StateType = A && Pos Y > Vel Y && Vel Y > 0
value = 52
ctrl = 1

[State 17100: ChangeState]
type = Gravity
trigger1 = StateType = A

[State 17100: ChangeState]
type = ChangeState
trigger1 = StateType = A && !AnimTime
value = 50
ctrl = 1

[State 17100: ChangeState]
type = ChangeState
trigger1 = StateType != A && !AnimTime
value = 0
ctrl = 1

; Backwards Dodge 
[Statedef 17101]
type = U
movetype = I
physics = N
anim = 17101
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 0


[State -3, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = S7010, 5

[State -3, Landing Sound]
type = VarSet
trigger1 = !Time
v = 0
value = Random % 5


[State N, Sound]
type = PlaySnd
trigger1 = Var(0) < 3
trigger1 = NumHelper(17100) 
trigger1 = Helper(17100), StateNo = 17103
value = S8000,IfElse(Var(0) = 0, 6, IfElse(Var(0) = 1, 14, 9))
channel =  0
persistent = 0


[State N, Sound]
type = PlaySnd
trigger1 = Var(0) >= 3
trigger1 = NumHelper(17100) 
trigger1 = Helper(17100), StateNo = 17103
value = S8002,IfElse(Var(0) = 3, 11, 13)
channel =  0
persistent = 0


[State 17001: Explod]
type = Helper
trigger1 = (!Time) && !(Var(24))
StateNo = 17102
id = 17100
pos = 0, 0
postype = p1
facing = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 3
ownpal = 1

[State 17100: SprPriority]
type = SprPriority
trigger1 = (Vel X != 0)
value = -2

[State 17100: NotHitBy]
type = NotHitBy
trigger1 = (AnimElemNo(0) = [2,7])
value = , NA, SA, HA, NP, SP, HP

[State 17100: VelSet]
type = VelSet
trigger1 = (AnimElem = 2)
x = -2.9

[State 17100: VelSet]
type = VelAdd
trigger1 = (AnimElem = 2)
trigger1 = StateType = A
Y = -7

[State 17100: VelSet]
type = VelSet
trigger1 = (AnimElem = 9)
x = 0

[State 17100: PlayerPush]
type = PlayerPush
trigger1 = (Vel X != 0)
value = 0

[State 17100: AfterImage]
type = AfterImage
trigger1 = Var(24) <= 0
trigger1 = (AnimElem = 2)
persistent = 0
length = 8
palbright = 0, 0, 0
palcolor = 256
paladd = 0, 0, 0
palmul = .50, .50, .50
palcontrast = 100,100,100
trans = add
timegap  = 2
framegap = 2
time = 2; only 2 ticks!!!
ignorehitpause = 1
persistent = 0

[State 17100: AfterImage]
type = AfterImageTime
trigger1 = Var(24) <= 0
trigger1 = (Vel X != 0)
time = 3

[State 17100: ChangeState]
type = ChangeState
trigger1 = StateType = A && Pos Y > Vel Y && Vel Y > 0
value = 52
ctrl = 1

[State 17100: ChangeState]
type = Gravity
trigger1 = StateType = A

[State 17100: ChangeState]
type = ChangeState
trigger1 = StateType = A && !AnimTime
value = 50
ctrl = 1

[State 17100: ChangeState]
type = ChangeState
trigger1 = StateType != A && !AnimTime
value = 0
ctrl = 1

; Dodge Helper
[Statedef 17102]
type = S
physics = N
movetype = I
anim = 17102
sprpriority = 6

    
[State 17003, NHB]
type = PosAdd
trigger1 = 1
X = (Root, Pos X - Pos X)*Facing/5.0
Y = (Root, Pos Y - Pos Y)/5.0
ignorehitpause = 1
    
[State 17003, NHB]
type = NotHitBy
trigger1 = 1
time = -1
value = , AT
ignorehitpause = 1

[State 17003, HitOverride]
type = HitOverride
trigger1 = 1
time = -1
attr = SCA, AA, AP
stateno = 17103
ignorehitpause = 1

[State 17003]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7000, End]
type = DestroySelf
trigger1 = Time >= 15
ignorehitpause = 1


; Dodge Helper Success
[Statedef 17103]
type = S
physics = N
movetype = I
anim = 7200
sprpriority = 6
    
[State 17003, NHB]
type = NotHitBy
trigger1 = 1
time = -1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 7000, End]
type = PowerAdd
trigger1 = !Time && !(Root, Var(21))
value = 250

[State 17003]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7000, End]
type = DestroySelf
trigger1 = !Time


;Outfit Intro
[Statedef 17191]
type = S
ctrl = 0
anim = 10191
velset = 0,0
sprpriority = 0

[State 17191, Mode]
type = null;VarSet
triggerall = !RoundsExisted
trigger1 = !Time
v = 59
value = 1

[State 192, Spawn Modeh]
type = Helper
trigger1 = !RoundsExisted
trigger1 = !Time
helpertype = normal ;player
name = "Mode"
ID = 17200
stateno = 17200
postype = p1
pos = 0, 10
facing = facing
keyctrl = 0
ownpal = 1

[State 17191, Mode]
type = VarSet
triggerall = !RoundsExisted
trigger1 = command = "rlsup"
trigger2 = command = "rlsdown"
v = 59
value = 1 - Var(59)

[State 5900, 3] ;Change SFX palette
type = RemapPal
triggerall = !RoundsExisted
trigger1 = command = "rlsup"
trigger2 = command = "rlsdown"
source = 7000,21
dest = 7000,(23 + Var(59))


[State 5900, 3] ;Change Own palette
type = RemapPal
triggerall = !RoundsExisted
trigger1 = command = "rlsup"
trigger2 = command = "rlsdown"
source = 1,1
dest = 1,(palno + Var(59))

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = VarSet
trigger1 = !Time
v = 0
value = Random % 2


[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = ChangeAnim
trigger1 = !Time
trigger1 = Var(0)
value = 10181
elem = 2

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, StartPos]
type = VarSet
trigger1 = !Time
fvar(0) = Pos X

[State 192, Spawn Affinities]
type = Helper
trigger1 = !Time
helpertype = normal ;player
name = "Affinity"
ID = 17191
stateno = 17192
postype = p1
pos = - 40 - 40, -2
facing = 1
keyctrl = 0
ownpal = 1

[State 192, Spawn Affinities]
type = Helper
trigger1 = Time = 1
helpertype = normal ;player
name = "Affinity"
ID = 17191
stateno = 17192
postype = p1
pos = 30 + 40, -1
facing = -1
keyctrl = 0
ownpal = 1

[State 192, Spawn Affinities]
type = Helper
trigger1 = Time = 2
helpertype = normal ;player
name = "Affinity"
ID = 17191
stateno = 17192
postype = p1
pos = -20 - 40, 0
facing = 1
keyctrl = 0
ownpal = 1



[State 1920, Random Start]
type = Turn
trigger1 = Time = 210
trigger2 = Time = 60
trigger3 = Time = 120
trigger4 = Time = 180

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = ChangeAnim
triggerall = Anim = 10181
trigger1 = Time = 60
trigger2 = Time = 120
trigger3 = Time = 180
value = IfElse(Time = 180, 10182, 10181)


[State 1920, Random Start]
type = PlaySnd
trigger1 = Time = 60
value = 8002,17
channel = 0
persistent = 0


[State 1920, Random Start]
type = ChangeAnim
trigger1 = Time = 210
value = 10196
persistent = 0

[State 1920, Random Start]
type = PlaySnd
trigger1 = Time = 210
value = 8001,6
channel = 0
persistent = 0


[State 2110, Buttan]
type = Explod
trigger1 = Time = 210
ID = 17191
anim = IfElse(Var(0), 10183, 10192)
bindtime = 1
pos = 7, -20
ownpal = 1
vel = 1, -2
accel = 0, 0.1
removetime = 22
sprpriority = 3
shadow = -1
removeongethit = 1
ignorehitpause = 1
persistent = 0



[State 1920, Random Start]
type = PlaySnd
trigger1 = Time = 240
trigger1 = Var(0)
value = 8003,18
channel = 0
volumescale = 128
persistent = 0


[State 1920, Random Start]
type = PlaySnd
trigger1 = Time = 240
trigger1 = Var(0)
value = 8003,18
channel = 0
volumescale = 64
persistent = 0


[State 192, Land]
type = ChangeState
trigger1 = Time = 240 && !Var(0)
trigger2 = Time = 420 && Var(0)
value = 0
persistent = 0

; Affinity
[Statedef 17192]
type = S
physics = N
ctrl = 0
anim = 10193
velset = 0,0
sprpriority = 0

[State 1920, Random Start]
type = VarSet
trigger1 = !Time
v = 0
value = (Root, Time)
persistent = 0

[State 1920, Random Start]
type = VelSet
trigger1 = !Time
X = 30.0/(IfElse(Var(0) = 1, 50.0, IfElse(Var(0) = 2, 110.0, 180.0)))
persistent = 0


[State 1920, Random Start]
type = VelSet
trigger1 = (Root, Time > 50 && Var(0) = 1)
trigger2 = (Root, Time > 110 && Var(0) = 2)
trigger3 = (Root, Time > 170 && Var(0) = 3)
X = 0
persistent = 0

[State 1920, Random Start]
type = ChangeAnim
trigger1 = (Root, Time > 50 && Var(0) = 1)
trigger2 = (Root, Time > 110 && Var(0) = 2)
trigger3 = (Root, Time > 170 && Var(0) = 3)
value = 10194
persistent = 0

[State 1920, Random Start]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 1920, SprPriority]
type = SprPriority
trigger1 = 1
value = 2*Var(0) - 1

[State 1920, SprPriority]
type = ChangeAnim
trigger1 = (Parent, Anim > 10195) && Anim = 10194
value = 10195
persistent = 0

[State 1920, SprPriority]
type = VelSet
trigger1 = Anim = 10195
X = -(Random/1000.0) * 4 - 2
Y = - (Random/1000.0) * 4 - 2
persistent = 0

[State 1920, Shake]
type = PalFx
trigger1 = Anim = 10195
add = 200, 200, 200
mul = 256, 256, 256
time = 4
persistent = 0

[State 1920, Shake]
type = EnvShake
trigger1 = Anim = 10195
time = 3
freq = 120
ampl = 2
persistent = 0

[State 1920, Shake]
type = PlaySnd
trigger1 = Anim = 10195
value = 7020,1
persistent = 0

[State 1920, Rotate]
type = PosAdd
trigger1 = Anim = 10195
Y = -15
persistent = 0

[State 1920, Var]
type = VarSet
trigger1 = !Time
var(1) = -Facing

[State 1920, Angle]
type = AngleSet
trigger1 = !Time
value = 0

[State 1920, Rotate]
type = AngleAdd
trigger1 = Anim =10195
value = (18 + (random % 3))* var(1)

[State 1920, Rotate]
type = AngleDraw
trigger1 = Anim = 10195

[State 1920, Trans]
type = Trans
trigger1 = Anim = 10195 && AnimElemTime(1) > 10
trans = addalpha
alpha = 256 - (AnimElemTime(1)-10)*8, (AnimElemTime(1)-10)*8

[State 1920, End]
type = DestroySelf
trigger1 = Anim = 10195
trigger1 = AnimElemTime(1) >= 42
trigger2 = RoundState > 1



; Logo
[Statedef 17200]
type = S
physics = N
ctrl = 0
anim = 10200
velset = 0,0
sprpriority = 7

[State 1920, End]
type = ChangeAnim
trigger1 = (Anim - 10200) != Root, Var(59)
value = 10200 + Root, Var(59)


[State 1920, End]
type = Trans
trigger1 = 1
trans = add

[State 1920, End]
type = AngleDraw
trigger1 = 1
scale = 0.25, 0.25

[State 1920, End]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1920, End]
type = ChangeState
trigger1 = RoundState > 1
trigger2 = Root, StateNo != 17191
trigger2 = Root, StateNo != 191
value = 17201

; Logo, End
[Statedef 17201]
type = S
physics = N
ctrl = 0
velset = 0,0
sprpriority = 7

[State 1920, End]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1920, End]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256 - Time * 16, 256


[State 1920, End]
type = AngleDraw
trigger1 = 1
scale = 0.25 + Time * 0.01, 0.25 + Time * 0.01


[State 1920, End]
type = DestroySelf
trigger1 = Time >= 16

