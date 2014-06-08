;===========================================================================
; Alternate Super Moves
;===========================================================================

; Bat Within
[Statedef 13000]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 13000
poweradd = -1000
sprpriority = 1
facep2 = 1

[State 3250, Super Pause]
type = superpause
trigger1 = Time = 2
time = 45
anim = -1
sound = s7, 0
p2defmul = 1
darken = 0

[State 3250, Super Pause FX]
type = helper
trigger1 = Time = 2
helpertype = normal
stateno = 7000
ID = 7000
name = "Super Charge"
postype = p1
pos = -34, -63
ownpal = 1
persistent = 0
supermovetime = 9999

[State 1020, Reversal]
type = ReversalDef
trigger1 = !Time
reversal.attr = SCA, AA
p1stateno = 13001
pausetime = 0, 0
sparkno = -1
hitsound = s6, 5
numhits = 0

[State 1020, HitOverride]
type = HitOverride
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(9) < 0
slot = 1
time = 1
stateno = 13001
attr = SCA, NP, SP, HP
ignorehitpause = 1

[State 1040, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; Bat Within (Success)
[Statedef 13001]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 7200
sprpriority = 1
facep2 = 1

[State 13001, Var]
type = VarSet
trigger1 = !Time
v = 24
value = 1000

[State 2000, Explosion]
type = Helper
trigger1 = !Time
name = "BG"
ID = 13000
stateno = 13003
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0
pausemovetime = 999999
supermovetime = 999999

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13002
ID = 13001
name = "Bat Within"
pausemovetime = 9999999
postype = p1
pos = Const(size.mid.pos.x), Const(size.mid.pos.y)
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13002
ID = 13001
name = "Bat Within"
pausemovetime = 9999999
postype = p1
pos = Const(size.mid.pos.x), Const(size.mid.pos.y)
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13002
ID = 13001
name = "Bat Within"
pausemovetime = 9999999
postype = p1
pos = Const(size.mid.pos.x), Const(size.mid.pos.y)
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13002
ID = 13001
name = "Bat Within"
pausemovetime = 9999999
postype = p1
pos = Const(size.mid.pos.x), Const(size.mid.pos.y)
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13002
ID = 13001
name = "Bat Within"
pausemovetime = 9999999
postype = p1
pos = Const(size.mid.pos.x), Const(size.mid.pos.y)
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13002
ID = 13001
name = "Bat Within"
pausemovetime = 9999999
postype = p1
pos = Const(size.mid.pos.x), Const(size.mid.pos.y)
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13002
ID = 13001
name = "Bat Within"
pausemovetime = 9999999
postype = p1
pos = Const(size.mid.pos.x), Const(size.mid.pos.y)
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13002
ID = 13001
name = "Bat Within"
pausemovetime = 9999999
postype = p1
pos = Const(size.mid.pos.x), Const(size.mid.pos.y)
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13002
ID = 13001
name = "Bat Within"
pausemovetime = 9999999
postype = p1
pos = Const(size.mid.pos.x), Const(size.mid.pos.y)
ownpal = 1

[State 7000, Pal Down]
type = AssertSpecial
trigger1 = Anim != 13001
flag = invisible
flag2 = noshadow
ignorehitpause = 1

[State 1040, End]
type = ChangeAnim
trigger1 = Anim != 13001
trigger1 = Time > 10 && !NumHelper(13001)
value = 13001

[State 1040, End]
type = PalFX
trigger1 = Anim = 13001
trigger1 = AnimElemTime(1) = [0,16]
add = 128 - 8 * AnimElemTime(1) , 64 - 4 * AnimElemTime(1) , 256 - 16 * AnimElemTime(1) 
mul = 256,256,256
invertall = 0
time = 1
color = 256
ignorehitpause = 1

[State 1040, End]
type = ChangeState
trigger1 = Anim = 13001 && !AnimTime
value = 0
ctrl = 1

; Bat Within's Bats
[Statedef 13002]
type = S
physics = N
movetype = I
anim = 13005
sprpriority = 4

[State 13002, Pos]
type = VarRandom
trigger1 = !Time
v = 0
range = 80,130


[State 13002, Pos]
type = VarRandom
trigger1 = !Time
v = 1
range = 80,130


[State 13002, Pos]
type = VarRandom
trigger1 = !Time
v = 2
range = -135, -45

[State 13002, Scale]
type = AngleDraw
trigger1 = 1
scale = Var(0)/100.0, Var(0)/100.0

[State 13002, Scale]
type = VelSet
trigger1 = 1
X = Cos(Var(2) * Pi / 180.0) * (Var(1)/100.0) * (24*Time - Time*Time)/1.5
Y = Sin(Var(2) * Pi / 180.0) * (Var(1)/100.0) * (24*Time - Time*Time)/1.5

[State 13002, Pos]
type = PosSet
trigger1 = 1
X = Root, Pos X + Const(size.mid.pos.x)
Y = Root, Pos Y + Const(size.mid.pos.y)

[State 7000, End]
type = DestroySelf
trigger1 = !Root, Var(24)
trigger2 = Time >=24

; Witch Time BG
[Statedef 13003]
type = S
physics = N
movetype = I
anim = 13006
sprpriority = 6

[State 13002, Scale]
type = AngleDraw
trigger1 = 1
scale = 5,5


[State 13002, Scale]
type = PosAdd
trigger1 = 1
X = (160 - ScreenPos X)
Y = 120 - ScreenPos Y

[State 13002, Scale]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 32, 256

[State 7000, Pal Down]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7000, Pal Down]
type = BGPalFX
trigger1 = Time = [0,16]
time = 1
add = Floor(200 * Time/16.0), Floor(120 * Time/16.0), Floor(230 * Time/16.0)
mul = 256 - 8 * Time, 256 - 8 * Time, 256 - 8 * Time

[State 7000, Pal Down]
type = BGPalFX
trigger1 = Time > 16
time = 1
add = 200, 120, 230
mul = 128, 128, 128


[State 7000, Pal Down]
type = BGPalFX
trigger1 = Root, Var(24) < 16
time = 1
add = Floor(200 * Root, Var(24)/16.0), Floor(120 * Root, Var(24)/16.0), Floor(230 * Root, Var(24)/16.0)
mul = 256 - 8 * Root, Var(24), 256 - 8 * Root, Var(24), 256 - 8 * Root, Var(24)


[State 7000, End]
type = DestroySelf
trigger1 = !Root, Var(24)


;---------------------------------------------------------------------------
;Phantasmaraneae Summon
[Statedef 13100]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 13100
poweradd = -1000
sprpriority = 2

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,0
channel =  0

[State 2010, NHB]
type = NotHitBy
trigger1 = Time > 5 && !NumHelper(13105)
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

[State 2010, Super Pause]
type = superpause
trigger1 = time = 5
time = 100
movetime = 100
anim = -1
p2defmul = 1
darken = 0

[State 1000, Hadouken]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 13101
ID = 13101
name = "Hair"
pausemovetime = 9999999*(Var(24) > 0)
postype = p1
pos = 0, -20
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 13102
ID = 13102
name = "Portal"
pausemovetime = 9999999*(Var(24) > 0)
postype = p1
pos = 0, -118
ownpal = 1

[State 13100, HelperPos]
type = VarSet
trigger1 = NumHelper(13102)
trigger1 = Helper(13102), Time = 32
fv = 0
value = (enemynear(numenemy>1&&!enemynear(0),alive), ScreenPos X - ScreenPos X)*Facing

[State 1000, Hadouken]
type = helper
trigger1 = NumHelper(13102)
trigger1 = Helper(13102), Time = 32
helpertype = normal
stateno = 13105
ID = 13105
name = "Phantasmaraneae"
pausemovetime = 9999999*(Var(24) > 0)
postype = p1
pos = FVar(0) + IfElse(FVar(0) > 0, -100, 100), 0
facing = IfElse(FVar(0) > 0, 1, -1)
ownpal = 1

[State 2010, NHB]
type = VarSet
trigger1 = !Time
var(0) = 0

[State 2010, NHB]
type = VarSet
trigger1 = NumHelper(13105)
trigger1 = Helper(13105), Time = 32
var(0) = 1

[State 2010, NHB]
type = ChangeState
trigger1 = NumHelper(13105)
trigger1 = Helper(13105), Time = 40
value = 0
ctrl = 1



; Hair
[Statedef 13101]
type = A
physics = N
movetype = I
ctrl = 0
anim = 13101
velset = 0, 0
sprpriority = -1

[State 1006, Trans]
type = trans
trigger1 = !prevstateno
trigger1 = Time < 32
trans = addalpha
alpha = Time * 8, 256 - Time * 8
ignorehitpause = 1

[State 1006, Trans]
type = AngleDraw
trigger1 = 1
scale = IfElse(Time < 32, Time*0.5/32.0, 0.5), IfElse(Time < 32, Time*0.7/32.0, 0.7)
ignorehitpause = 1

[State 1006, Trans]
type = VarSet
trigger1 = !Time
var(0) = 0
ignorehitpause = 1

[State 2101, Remove]
type = VarAdd
trigger1 = Root, Var(0) || !(Root, StateNo = 13100)
trigger2 = var(0) > 0
var(0) = 1

[State 1006, Trans]
type = trans
trigger1 = Var(0) > 0
trans = addalpha
alpha = 256 - Var(0) * 16, Var(0) * 16
ignorehitpause = 1

[State 2101, Remove]
type = DestroySelf
trigger1 = Var(0) > 16

; Portal
[Statedef 13102]
type = A
physics = N
movetype = I
ctrl = 0
anim = 7101
velset = 0, 0
sprpriority = -2

[State 220, Explod]
type = Explod
trigger1 = AnimElem = 14
anim = 13102
ID = 13102
pos = 0, 0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 0.33,1
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 2101, Scale]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2101, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.814, 0.36

[State 2101, Remove]
type = RemoveExplod
trigger1 = Root, Var(0) || !(Root, StateNo = 13100)
ID = 13102
persistent = 0

[State 220, Explod]
type = Explod
trigger1 = Root, Var(0) || !(Root, StateNo = 13100)
anim = 13104
ID = 13104
pos = 0, 0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 0.33,1
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 2101, Remove]
type = ChangeAnim
trigger1 = Root, Var(0) || !(Root, StateNo = 13100)
trigger1 = Anim != 7102 
value = 7102 
persistent = 0

[State 2101, Remove]
type = DestroySelf
trigger1 = !AnimTime
trigger1 = Anim = 7102 

; Portal 2
[Statedef 13103]
type = A
physics = N
movetype = I
ctrl = 0
anim = 7101
velset = 0, 0
sprpriority = -2

[State 220, Explod]
type = Explod
trigger1 = AnimElem = 14
anim = 13103
ID = 13103
pos = -1, 0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1, 0.75
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1
persistent = 0


[State 2101, Remove]
type = RemoveExplod
trigger1 = Parent, StateNo = 13107
ID = 13103
persistent = 0

[State 220, Explod]
type = Explod
trigger1 = Parent, StateNo = 13107
anim = 13107
ID = 13103
pos = -1, 0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 1, 0.75
sprpriority = -3
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 2101, Scale]
type = PosSet
trigger1 = 1
X = Parent, Pos X - 115*Facing
Y = Parent, Pos Y - 60

[State 2101, Scale]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 2101, Scale]
type = AngleDraw
trigger1 = 1
scale = 1.82, 0.35
value = 90

[State 2101, Scale]
type = ChangeAnim
trigger1 = Parent, StateNo = 13107
trigger1 = Anim != 7102 
value = 7102 
persistent = 0

[State 2101, Scale]
type = DestroySelf
trigger1 = Anim = 7102
trigger1 = !AnimTime

; Phantasmaraneae
[Statedef 13105]
type = S
physics = N
movetype = I
ctrl = 0
anim = 13105
velset = 0, 0
sprpriority = 3

[State 13105, Var]
type = Sprpriority
trigger1 = 1
value = 3
ignorehitpause = 1

[State 13105, Var]
type = VarSet
trigger1 = !Time
var(0) = IfElse(!prevstateno, 0, Var(0) + 1)
ignorehitpause = 1

[State 3055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(0) < 10, 13105, 13107)
ignorehitpause = 1
[State 3055, hitby]
type = nothitby
trigger1 = prevstateno = 13105
trigger1 = gethitvar(hittime)
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State 3055, hitby]
type = nothitby
trigger1 = 1
time = 1
value = , AT
ignorehitpause = 1

[State 13105, Var]
type = VarSet
trigger1 = !prevstateno
trigger1 = !Time
var(1) = 0
ignorehitpause = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Var(1)
helpertype = normal
stateno = 13103
ID = 13103
name = "Portal 2"
pausemovetime = 9999999*(Root, Var(24) > 0)
postype = p1
pos = -125, -60
ownpal = 1

[State 1006, Trans]
type = Offset
trigger1 = Var(1) = [32, 64]
X = Floor((-64 + Var(1))/2.0)*Facing
ignorehitpause = 1

[State 1006, Trans]
type = trans
trigger1 = Var(1) = [32, 64]
trans = addalpha
alpha = (Var(1) -32) * 8, 256 - (Var(1) -32) * 8
ignorehitpause = 1

[State 2101, Scale]
type = PalFX
trigger1 = !Time
time = -1
add = -32,-32,-32
sinadd = -32,-32,-32, 60

[State 2101, Scale]
type = AssertSpecial
trigger1 = Var(1) = [0,32]
flag = invisible
flag2 = noshadow

[State 1006, Trans]
type = trans
trigger1 = Var(1) = [32, 64]
trans = addalpha
alpha = (Var(1) -32) * 8, 256 - (Var(1) -32) * 8
ignorehitpause = 1

[State 1006, Trans]
type = VarAdd
trigger1 = 1
V = 1
value = 1

[State 1006, Trans]
type = ChangeState
trigger1 = Var(1) > 80
value = 13106
ignorehitpause = 1


; Phantasmaraneae - Attack
[Statedef 13106]
type = S
physics = N
movetype = A
ctrl = 0
anim = 13106
velset = 0, 0
sprpriority = 3

[State 13105, Var]
type = VarSet
trigger1 = !Time
var(0) = IfElse(prevstateno = 13105, 0, Var(0) + 1)
ignorehitpause = 1

[State 3055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(0) < 10, 13106, 13107)
ignorehitpause = 1
[State 3055, hitby]
type = nothitby
trigger1 = prevstateno = 13105
trigger1 = gethitvar(hittime)
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State 3055, hitby]
type = nothitby
trigger1 = 1
time = 1
value = , AT
ignorehitpause = 1

[State 13105, Var]
type = VarSet
trigger1 = !prevstateno
trigger1 = !Time
var(1) = 0
ignorehitpause = 1

[State 13105, Var]
type = VarSet
trigger1 = !prevstateno
trigger1 = !Time
var(2) = 0
ignorehitpause = 1

[State 2101, Scale]
type = PalFX
trigger1 = !Var(1)
time = -1
add = -32,-32,-32
sinadd = -32,-32,-32, 60

[State 2101, Bite Down]
type = HitDef
trigger1 = AnimElemNo(0) = 5
trigger1 = Var(2) = 0
trigger1 = (Var(2) := 1)
trigger2 = AnimElemNo(0) = 11
trigger2 = Var(2) = 1
trigger2 = (Var(2) := 2)
attr = S,HA
damage = Floor(Root, FVar(39) * 100)
animtype = Hard
hitflag = MAF
sparkno = -1
pausetime = 0, 30
ground.slidetime = 16
ground.hittime = 30
ground.velocity = IfElse(AnimElemNo(0) >= 11, -6, 0), IfElse(AnimElemNo(0) >= 11, -7, 0)
air.velocity = IfElse(AnimElemNo(0) >= 11, -6, 0), IfElse(AnimElemNo(0) >= 11, -8, 0)
ground.cornerpush.veloff = 0
guard.velocity = -7
guard.cornerpush.veloff = 0;
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 7
fall =  AnimElemNo(0) >= 11
fall.recover = 1
fall.recovertime = 120
air.fall = AnimElemNo(0) >= 11
palfx.add = 200,200,200
palfx.mul = 256,256,256
palfx.time = 12

[State 1006, Trans]
type = VarAdd
trigger1 = 1
V = 1
value = 1

[State 1006, Trans]
type = ChangeState
trigger1 = Anim = 13106
trigger1 = !AnimTime
value = 13107



; Phantasmaraneae
[Statedef 13107]
type = S
physics = N
movetype = I
ctrl = 0
anim = 13105
velset = 0, 0
sprpriority = 3

[State 13105, Var]
type = Sprpriority
trigger1 = 1
value = 3
ignorehitpause = 1

ignorehitpause = 1
[State 3055, hitby]
type = nothitby
trigger1 = 1
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State 1006, Trans]
type = Offset
trigger1 = Time = [0, 32]
X = Floor((-Time)/2.0)*Facing
ignorehitpause = 1

[State 1006, Trans]
type = trans
trigger1 = Time = [0,32]
trans = addalpha
alpha = 256 - Time * 8, Time * 8
ignorehitpause = 1


[State 1006, Trans]
type = DestroySelf
trigger1 = Time >= 32