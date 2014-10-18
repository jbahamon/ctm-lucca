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
trigger1 = NumHelper(17000) && Helper(17000), StateNo = 17007
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

[State N, Sound]
type = PlaySnd
trigger1 = NumHelper(17100) && Helper(17100), StateNo = 17103
value = S8000,IfElse(Random % 3 = 0, 6, IfElse(Random % 2, 14, 9))
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

[State N, Sound]
type = PlaySnd
trigger1 = NumHelper(17100) && Helper(17100), StateNo = 17103
value = S8000,IfElse(Random % 3, 6, IfElse(Random % 2, 14, 9))
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
value = 500

[State 17003]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7000, End]
type = DestroySelf
trigger1 = !Time