; Stand/Crouch Parry
[Statedef 17001]
type = U
movetype = I
physics = U
anim = IfElse(StateType = S, 17001, 17003)
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State 17001: AssertSpecial]
type = StateTypeSet
trigger1 = Anim = 17001
physics = S

[State 17001: AssertSpecial]
type = StateTypeSet
trigger1 = Anim = 17003
physics = C

[State 17001: AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 17001: CtrlSet]
type = PosFreeze
trigger1 = 1
    
[State 17001: CtrlSet]
type = CtrlSet
trigger1 = (Time > 10) ;&& (StateType = S)
value = 1
    
[State 17001: NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
    
[State 17001: Pause]
type = Pause
trigger1 = (!Time)
time = 18
movetime = 18
    
[State 17001: VarSet]
type = VarSet
trigger1 = (!Time)
var(24) = 1

[State 17001: PalFX]
type = PalFX
trigger1 = (!Time)
time = 8
add = 0,0,0
mul = 256,256,256
sinadd = 75,100,255,8
invertall = 0
color = 256

[State 17001: Explod]
type = Helper
trigger1 = (!Time)
StateNo = 17005
id = 17000
pos = (IfElse(StateType = S,7,6)),(IfElse(StateType = S,-14,-7))
postype = p1
facing = 1
supermovetime = 0
pausemovetime = 18
scale = 1,1
sprpriority = 3
ownpal = 1


[State 17001: ChangeState]
type = VarSet
trigger1 = (!AnimTime)
v = 23
value = 8

[State 17001: ChangeState]
type = ChangeState
trigger1 = (!AnimTime)
value = IfElse(StateType = S,0,11)

; Air Parry
[Statedef 17002]
type = A
movetype = I
physics = N
anim = 17002
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2
    
[State 17001: Explod]
type = Helper
trigger1 = (!Time)
StateNo = 17005
id = 17000
pos = 7, -16
postype = p1
facing = 1
supermovetime = 0
pausemovetime = 18
scale = 1,1
sprpriority = 3
ownpal = 1

[State 17002: CtrlSet]
type = CtrlSet
trigger1 = (Time > 4)
value = 1
    
[State 17002: NotHitBy]
type = NotHitBy
trigger1 = (Time < 18)
value = SCA
    
[State 17002: Pause]
type = Pause
trigger1 = (!Time)
time = 18
movetime = 18
    
[State 17002: VarSet]
type = VarSet
trigger1 = (!Time)
var(24) = 1

[State 17002: Null]
type = Null
trigger1 = (!Time)
trigger1 = (FVar(0) := Vel X) && (FVar(1) := Vel Y)

[State 17002: VelSet]
type = VelSet
trigger1 = (Time)
x = 0
y = 0
persistent = 0

[State 17002: VelSet]
type = VelSet
trigger1 = (Time > 18)
x = FVar(0)
y = FVar(1)
persistent = 0
    
[State 17002: VelAdd]
type = VelAdd
trigger1 = (Time > 18)
y = Const(movement.yaccel)

[State 17002: ChangeState]
type = ChangeState
trigger1 = (Pos Y >= -Vel Y) && (Vel Y > 0)
value = 52

; Air Parry Helper
[Statedef 17003]
type = A
movetype = I
physics = N
anim = 7200
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2


    
[State 17003: ParentVarSet]
type = AssertSpecial
trigger1 = 1
flag = invisible
flag2 = noshadow
ignorehitpause = 1

    
[State 17003: ParentVarSet]
type = ParentVarSet
trigger1 = (!Time)
var(23) = 8
ignorehitpause = 1
    
[State 17003: DestroySelf]
type = DestroySelf
trigger1 = (Parent, Command != "holdfwd")

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

; Forwards Dodge 
[Statedef 17100]
type = S
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

[State 17100: SprPriority]
type = SprPriority
trigger1 = (Vel X != 0)
value = -2

[State 17100: NotHitBy]
type = NotHitBy
trigger1 = (Time < 20)
value = , NA, SA, HA, NP, SP, HP

[State 17100: VelSet]
type = VelSet
trigger1 = (Time = 5)
x = 2.9

[State 17100: VelSet]
type = VelSet
trigger1 = (Time = 30)
x = 0

[State 17100: PlayerPush]
type = PlayerPush
trigger1 = (Vel X != 0)
value = 0

[State 17100: AfterImage]
type = AfterImage
trigger1 = (Vel X != 0)
time = 25
timegap = 2
framegap = 4
length = 15
paladd = 0, 0, 0
palmul = .50, .50, .50
palcontrast = 100,100,100
trans = add
persistent = 0

[State 17100: ChangeState]
type = ChangeState
trigger1 = (AnimTime = 0)
value = 0
ctrl = 1

; Backwards Dodge 
[Statedef 17101]
type = S
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
type = VelSet
trigger1 = (AnimElem = 9)
x = 0

[State 17100: PlayerPush]
type = PlayerPush
trigger1 = (Vel X != 0)
value = 0

[State 17100: AfterImage]
type = AfterImage
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
trigger1 = (Vel X != 0)
time = 3

[State 17100: ChangeState]
type = ChangeState
trigger1 = (AnimTime = 0)
value = 0
ctrl = 1