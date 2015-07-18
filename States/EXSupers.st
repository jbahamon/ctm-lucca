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
sound = s8000,10
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
pausemovetime = 9999
supermovetime = 9999

[State 8520, Portrait]
type = Helper
trigger1 = Time = 2
stateno = 7001
name = "Super BG"
ID = 7001
sprpriority = -16
postype = back
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

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

[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S8000,IfElse(Random % 3, 6, IfElse(Random % 2, 14, 9))
channel =  0
persistent = 0

[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S8002,8
channel = 1
persistent = 0

[State 13001, Var]
type = VarSet
trigger1 = !Time
v = 24
value = 500

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

[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S8001,14
channel =  0
persistent = 0


[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S8001,15
channel =  1
loop = 1
persistent = 0


[State 13002, Scale]
type = AngleDraw
trigger1 = 1
scale = 5 * Root, Var(24)/500.0, 5 * Root, Var(24)/500.0

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



[State N, Sound]
type = StopSnd
trigger1 = !Root, Var(24)
channel =  1

[State 7000, End]
type = DestroySelf
trigger1 = !Root, Var(24)


;---------------------------------------------------------------------------
; Infernal Demon Summon
[Statedef 13100]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 13100
poweradd = -1000
sprpriority = 2


[State 2010, NHB]
type = VarSet
trigger1 = !Time
var(1) = IfElse(command = "2qcfb", 0, 1)
ignorehitpause = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,0 + Var(1) * 11
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
supermovetime = 999999

[State 8520, Portrait]
type = Helper
trigger1 = !Time
stateno = 7001
name = "Super BG"
ID = 7001
sprpriority = -16
postype = back
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

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

[State 1000, Phantasmaraneae]
type = helper
triggerall = Var(1) = 0
trigger1 = NumHelper(13102)
trigger1 = Helper(13102), Time = 32
helpertype = normal
stateno = 13105
ID = 13105
name = "Phantasmaraneae"
pausemovetime = 9999999*(Var(24) > 0)
postype = p1
pos = Floor(FVar(0) + IfElse(FVar(0) > 0, -120, 120)), 0
facing = IfElse(FVar(0) > 0, 1, -1)
ownpal = 1

[State 1000, Malphas]
type = helper
triggerall = Var(1) = 1
trigger1 = NumHelper(13102)
trigger1 = Helper(13102), Time = 32
helpertype = normal
stateno = 13110
ID = 13105
name = "Malphas"
pausemovetime = 9999999*(Var(24) > 0)
postype = p1
pos = Floor(FVar(0) + IfElse(FVar(0) > 0, -100, 100)), -70
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

[State 13101, Bind]
type = BindToRoot
trigger1 = 1
pos = 0, -20
ignorehitpause = 1

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
trigger1 = Root, Var(0) || !(Root, StateNo = 13100 || Root, StateNo = 13300)
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

[State 2101, Scale]
type = PlaySnd
trigger1 = !Time
value = 8002,1
ignorehitpause = 1

[State 13101, Bind]
type = BindToRoot
trigger1 = 1
pos = 0, -118
ignorehitpause = 1

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
trigger1 = Root, Var(0) || !(Root, StateNo = 13100 || Root, StateNo = 13300)
ID = 13102
persistent = 0

[State 220, Explod]
type = Explod
trigger1 = Root, Var(0) || !(Root, StateNo = 13100 || Root, StateNo = 13300)
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
supermovetime = 9999999
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 2101, Remove]
type = ChangeAnim
trigger1 = Root, Var(0) || !(Root, StateNo = 13100 || Root, StateNo = 13300)
trigger1 = Anim != 7102 
value = 7102 
persistent = 0

[State 2101, Remove]
type = DestroySelf
trigger1 = !AnimTime
trigger1 = Anim = 7102 

; Phantasmaraneae Portal
[Statedef 13103]
type = A
physics = N
movetype = I
ctrl = 0
anim = 7101
velset = 0, 0
sprpriority = -2

[State 13101, Bind]
type = BindToParent
trigger1 = 1
pos = -125, -60
ignorehitpause = 1

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
supermovetime = 9999999
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

[State N, Sound]
type = PlaySnd
trigger1 = Var(1) = 64
value = S8002,2
persistent = 0

[State 13105, Var]
type = ChangeAnim
trigger1 = !Time
trigger1 = !PrevStateNo
ignorehitpause = 1
value = 13105

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
add = -64,-64,-64
sinadd = -64,-64,-64, 60

[State 2101, Scale]
type = AssertSpecial
trigger1 = Var(1) = [0,32]
flag = invisible
flag2 = noshadow

[State 2101, Scale]
type = NotHitBy
trigger1 = Var(1) = [0,64]
value = SCA, AA, AP, AT
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
velset = 0, 0
sprpriority = 3

[State 13105, Var]
type = ChangeAnim
trigger1 = !Time
trigger1 = PrevStateNo = 13105
ignorehitpause = 1
value = 13106

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


[State 220, Explod]
type = Explod
trigger1 = AnimElemNo(0) = 5
trigger1 = Var(2) = 0
trigger2 = AnimElemNo(0) = 11
trigger2 = Var(2) = 1
anim = 13108
ID = 13108
pos = 120, -60
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 0.5, 0.5
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
ignorehitpause = 1


[State 220, Explod]
type = Explod
trigger1 = AnimElemNo(0) = 5
trigger1 = Var(2) = 0
trigger2 = AnimElemNo(0) = 11
trigger2 = Var(2) = 1
anim = 13108
ID = 13108
pos = 150, -90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale = 0.5, 0.5
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
ignorehitpause = 1


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
palfx.add = 144, 64, 7
palfx.mul = 256,256,256
palfx.time = 24

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


; Phantasmaraneae End
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


; Malphas
[Statedef 13110]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 13105, Var]
type = Sprpriority
trigger1 = 1
value = 0
ignorehitpause = 1

[State 13105, Var]
type = VarSet
trigger1 = !Time
var(0) = IfElse(!prevstateno, 0, Var(0) + 1)
ignorehitpause = 1

[State 13105, Var]
type = ChangeAnim
trigger1 = !Time
trigger1 = !PrevStateNo
ignorehitpause = 1
value = 13110

[State 3055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(0) < 10, 13110, 13112)
ignorehitpause = 1

[State 3055, hitby]
type = nothitby
trigger1 = prevstateno = 13110
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

[State 2101, Scale]
type = PlaySnd
trigger1 = Var(1) = 32
value = 8002,0
persistent = 0
ignorehitpause = 1

[State 2101, Scale]
type = NotHitBy
trigger1 = Var(1) = [0, 64]
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Var(1)
helpertype = normal
stateno = 13114
ID = 13114
name = "Malphas Portal"
pausemovetime = 9999999*(Root, Var(24) > 0)
postype = p1
pos = -125, 0
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
alpha = (Var(1) - 32) * 8, 256 - (Var(1) - 32) * 8
ignorehitpause = 1

[State 2101, Scale]
type = PalFX
trigger1 = 1
time = 1
add = Floor(-32*(1 + Sin(2*Pi*Time/60.0))), Floor(-32*(1 + Sin(2*Pi*Time/60.0))), Floor(-32*(1 + Sin(2*Pi*Time/60.0)))

[State 2101, Scale]
type = AssertSpecial
trigger1 = Var(1) = [0,32]
flag = invisible
flag2 = noshadow

[State 1006, Trans]
type = VarAdd
trigger1 = 1
V = 1
value = 1

[State 1006, Trans]
type = PosAdd
trigger1 = Var(1) < 100
Y = Cos(Time*0.25)

[State 200, Head]
type = Helper
trigger1 = !Time
stateno = 13111
ID = 13111
pos = 0, 10
postype = p1  ;p2,front,back,left,right
sprpriority = 1
ownpal = 0
pausemovetime = 9999999*(Root, Var(24) > 0)
ignorehitpause = 1

[State 200, Wing]
type = Helper
trigger1 = !Time
stateno = 13112
ID = 13112
pos = 10, 0
postype = p1  ;p2,front,back,left,right
sprpriority = 2
ownpal = 0
pausemovetime = 9999999*(Root, Var(24) > 0)
ignorehitpause = 1

[State 200, Co Wing]
type = Helper
trigger1 = !Time
stateno = 13113
ID = 13113
pos = 10, 0
postype = p1  ;p2,front,back,left,right
sprpriority = -1
ownpal = 0
pausemovetime = 9999999*(Root, Var(24) > 0)
ignorehitpause = 1

[State 13110, fef]
type = ChangeAnim
trigger1 = Var(1) = 60
trigger1 = Anim = 13110
value = 13114
ignorehitpause = 1

[State 13110, fef]
type = VelSet
trigger1 = Var(1) = [60, 84]
X = -1
Y = 0
ignorehitpause = 1

[State 13110, fef]
type = VarSet
trigger1 = !Time
trigger1 = !PrevStateNo
var(2) = 0
ignorehitpause = 1

[State 13110, fef]
type = VelSet
trigger1 = Var(1) = 85
X = 12
Y = 0
ignorehitpause = 1


[State 13110, fef]
type = VelMul
trigger1 = Var(1) >= 110
X = 0.9
Y = 0
ignorehitpause = 1


[State 13110, fef]
type = StateTypeSet
trigger1 = Anim = 13114
trigger1 = MoveType != A
movetype = A
ignorehitpause = 1

[State 2101, Bite Down]
type = HitDef
trigger1 = Anim = 13114
trigger1 = Var(1) > 85
trigger1 = Var(2) = 0
trigger1 = (Var(2) := 1)
trigger2 = Var(1) > 85
trigger2 = Var(1) < 110
trigger2 = !Time
attr = A,HA
damage = Floor(Root, FVar(39) * 200)
animtype = Hard
hitflag = MAF
sparkno = -1
pausetime = 0, 30
ground.slidetime = 16
ground.hittime = 30
ground.velocity =-6, -3
air.velocity = -6, -3
ground.cornerpush.veloff = 0
guard.velocity = -7
guard.cornerpush.veloff = 0;
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 7
fall =  1
fall.recover = 0
p2sprpriority = -2
fall.recovertime = 120
air.fall = 1
palfx.add = 128, 7, 200
palfx.mul = 256,256,256
palfx.time = 24
ignorehitpause = 1
persistent = 0

[State 3055, hitby]
type = nothitby
trigger1 = Var(1) > 110
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State 1006, Trans]
type = trans
trigger1 = Var(1) = [110, 142]
trans = addalpha
alpha = 256 - (Var(1) - 110) * 8, (Var(1) - 110) * 8
ignorehitpause = 1

[State 1006, Trans]
type = DestroySelf
trigger1 = Var(1) >= 142

; Malphas Head
[Statedef 13111]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
anim = 13111
sprpriority = 1

[State 1006, Trans]
type = trans
trigger1 = Parent, Var(1) = [110, 142]
trans = addalpha
alpha = 256 - (Parent, Var(1) - 110) * 8, (Parent, Var(1) - 110) * 8
ignorehitpause = 1

[State 1006, Trans]
type = DestroySelf
trigger1 = Parent, Var(1) >= 141

[State 13110, fef]
type = ChangeAnim
trigger1 = Parent, Anim = 13114
trigger1 = Anim = 13111
value = 13115
ignorehitpause = 1

[State 2101, Var]
type = VarSet
trigger1 = Parent, StateNo
var(1) = Parent, Var(1) + 1
ignorehitpause = 1

[State 2101, Trans]
type = trans
trigger1 = Var(1) = [32, 64]
trans = addalpha
alpha = (Var(1) - 32) * 8, 256 - (Var(1) - 32) * 8
ignorehitpause = 1

[State 2101, Scale]
type = AssertSpecial
trigger1 = Var(1) = [0,32]
flag = invisible
flag2 = noshadow

[State 2101, Scale]
type = BindToParent
trigger1 = 1
pos = 0, 10

[State 1006, Trans]
type = Offset
trigger1 = Var(1) = [32, 64]
X = Floor((-64 + Var(1))/2.0)*Facing
ignorehitpause = 1

;Malphas Wing
[Statedef 13112]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
anim = 13112
sprpriority = 2

[State 1006, Trans]
type = trans
trigger1 = Parent, Var(1) = [110, 142]
trans = addalpha
alpha = 256 - (Parent, Var(1) - 110) * 8, (Parent, Var(1) - 110) * 8
ignorehitpause = 1

[State 1006, Trans]
type = DestroySelf
trigger1 = Parent, Var(1) >= 141

[State 13110, fef]
type = ChangeAnim
trigger1 = Parent, Anim = 13114
trigger1 = Anim = 13112
value = 13116
ignorehitpause = 1

[State 2101, Var]
type = VarSet
trigger1 = Parent, StateNo
var(1) = Parent, Var(1)
ignorehitpause = 1

[State 2101, Trans]
type = trans
trigger1 = Var(1) = [32, 64]
trans = addalpha
alpha = (Var(1) - 32) * 8, 256 - (Var(1) - 32) * 8
ignorehitpause = 1

[State 2101, Scale]
type = AssertSpecial
trigger1 = Var(1) = [0,32]
flag = invisible
flag2 = noshadow

[State 2101, Scale]
type = BindToParent
trigger1 = 1
pos = 0, 0

[State 1006, Trans]
type = Offset
trigger1 = Var(1) = [32, 64]
X = Floor((-64 + Var(1))/2.0)*Facing
ignorehitpause = 1

; Malphas Co-Wing
[Statedef 13113]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
anim = 13113
sprpriority = -1

[State 1006, Trans]
type = trans
trigger1 = Parent, Var(1) = [110, 142]
trans = addalpha
alpha = 256 - (Parent, Var(1) - 110) * 8, (Parent, Var(1) - 110) * 8
ignorehitpause = 1

[State 1006, Trans]
type = DestroySelf
trigger1 = Parent, Var(1) >= 141

[State 13110, fef]
type = ChangeAnim
trigger1 = Parent, Anim = 13114
trigger1 = Anim = 13113
value = 13117
ignorehitpause = 1

[State 2101, Var]
type = VarSet
trigger1 = Parent, StateNo
var(1) = Parent, Var(1)
ignorehitpause = 1

[State 2101, Trans]
type = trans
trigger1 = Var(1) = [32, 64]
trans = addalpha
alpha = (Var(1) - 32) * 8, 256 - (Var(1) - 32) * 8
ignorehitpause = 1

[State 2101, Scale]
type = AssertSpecial
trigger1 = Var(1) = [0,32]
flag = invisible
flag2 = noshadow

[State 2101, Scale]
type = BindToParent
trigger1 = 1
pos = 5, 0

[State 1006, Trans]
type = Offset
trigger1 = Var(1) = [32, 64]
X = Floor((-64 + Var(1))/2.0)*Facing
ignorehitpause = 1


; Malphas Portal
[Statedef 13114]
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
trigger1 = Parent, Var(1) = 110
ID = 13103
persistent = 0

[State 220, Explod]
type = Explod
trigger1 = Parent, Var(1) = 110
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
trigger1 = Parent, Var(1) = 110 
value = 7102 
persistent = 0

[State 2101, Scale]
type = DestroySelf
trigger1 = Anim = 7102
trigger1 = !AnimTime
;---------------------------------------------------------------------------
; Torture Attack - Strong
[Statedef 13200]
type    = S
movetype= A
physics = S
juggle  = 3
ctrl = 0
anim = 13200
sprpriority = 1
facep2 = 1
poweradd = -1000
velset = 0,0

[State 3250, Super Pause]
type = superpause
trigger1 = Time = 2
time = 45
anim = -1
sound = s8001,13
movetime = 45
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
pausemovetime = 9999
supermovetime = 9999

[State 8520, Portrait]
type = Helper
trigger1 = Time = 2
stateno = 7001
name = "Super BG"
ID = 7001
sprpriority = -16
postype = back
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 1030, Fail]
type = ChangeState
trigger1 = !AnimTime
value = 13299
ctrl = 0

[State 1030, Hit]
type = HitDef
trigger1 = !Time
attr = S, ST 
hitflag = M-
priority = 2, Miss
sparkno = -1
hitsound = s7010, 0
p1stateno = 13201
p2stateno = 13202
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

; Success - Selector
[Statedef 13201]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 13201
sprpriority = 2
poweradd = 0
velset = 0,0

[State 13201, Var]
type = VarSet
trigger1 = NumTarget
trigger1 = !Time
v = 1
value = Random

[State 13201, Var]
type = VarSet
trigger1 = NumTarget
trigger1 = !Time
trigger1 = Target, Const(size.height) <= 50
v = 0
value = IfElse(Var(1) % 3 = 2, 13220, IfElse(Var(1) % 3 = 1, 13250, 13270))

[State 13201, Var]
type = VarSet
trigger1 = NumTarget
trigger1 = !Time
trigger1 = Target, Const(size.height) = [51, 120]
v = 0
value = IfElse(Var(1) % 2 = 1, 13220, 13270)


[State 13201, Var]
type = VarSet
trigger1 = NumTarget
trigger1 = !Time
trigger1 = Target, Const(size.height) > 120
v = 0
value = 13270

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(1) = Facing * (Target, ScreenPos X - ScreenPos X)

[State 801, Bind]
type = VarSet
trigger1 = !Time
fvar(2) = (Target, ScreenPos Y - ScreenPos Y)

[State 801, Bind]
type = TargetBind
trigger1 = NumTarget
pos = fvar(1), fvar(2)

[State 801, Safety]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 801, Safety]
type = ChangeState
trigger1 = NumTarget
value = Var(0)

; Get Hit
[Statedef 13202]
type = S
physics = N
movetype = H
velset = 0,0
sprpriority = 0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 13202

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Success - Vise
[Statedef 13220]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 13220
sprpriority = 2
poweradd = 0
velset = 0,0


[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8002,6
channel =  0

[State 1031, Measure]
type = turn
triggerall = !Time
trigger1 = Facing > 0 && ScreenPos X > 220
trigger2 = Facing < 0 && ScreenPos X < 100

[State 801, Bind]
type = TargetState
trigger1 = NumTarget
trigger1 = !Time
value = IfElse(Target, Facing = Facing, 13221, 13222)

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(4) = Target, Const(size.ground.front) +  Target, Const(size.ground.back)

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(0) = (FVar(4))/20.0

[State 1031, Measure]
type = VarSet
trigger1 = !Time
trigger1 = FVar(4)/2.0 > 30*FVar(0)
fvar(4) = 60*FVar(0)

[State 1031, Measure]
type = VarSet
trigger1 = !Time
trigger1 = FVar(0) < 1
fvar(0) = 1

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
fvar(3) = (40*FVar(0) + FVar(4)/2.0 - FVar(1)) /20.0

[State 801, Bind]
type = VarAdd
trigger1 = Time = [0,20]
fvar(1) = fvar(3)

[State 801, Bind]
type = VarSet
trigger1 = Time = [0,20]
fvar(2) = Time * (0.3 * (Time - 20.0) - FVar(0) * 20.0/20.0)

[State 801, Move]
type = VarAdd
trigger1 = Time = [70, 90]
fvar(1) = -(FVar(4)*0.1)/70.0


[State 801, Bind]
type = TargetLifeAdd
trigger1 = NumTarget
trigger1 = Time = 35
value = -40
kill = 0

[State 801, Bind]
type = TargetLifeAdd
trigger1 = NumTarget
trigger1 = Time = 110
value = -95
kill = 1


[State 801, Stop]
type = VarAdd
trigger1 = Time = [105, 110]
fvar(1) = -(FVar(4)*1.1)/10.0

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13225
ID = 13200
name = "Vise"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 0, -16
ownpal = 1

[State 1030, Fail]
type = TargetState
trigger1 = NumTarget
trigger1 = Time = 126
value = 13298
persistent = 0

[State 1030, Fail]
type = ChangeAnim
trigger1 = NumTarget
trigger1 = Target, StateNo = 13298
value = 13250
persistent = 0

[State 1030, Fail]
type = TargetDrop
trigger1 = NumTarget
trigger1 = Target, StateNo = 13298

[State 1030, Fail]
type = ChangeState
trigger1 = !NumTarget && Anim != 13250
trigger2 = Anim = 13250 && !AnimTime
value = 0
ctrl = 1

; Turning
[Statedef 13221]
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
value = 13222
ctrl = 0


; Get Hit
[Statedef 13222]
type = S
physics = N
movetype = H
velset = 0,0
sprpriority = 0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 13202

[State 1032, Anim]
type = AngleDraw
trigger1 = Time = [70, 105]
scale = (1 - 0.1*(Time - 70)/35.0), 1
value = 0

[State 801, Stop]
type = AngleDraw
trigger1 = Time = [105, 110]
scale = (0.9 - 0.9*(Time - 105)/5.0), 1
value = 0

[State 801, Stop]
type = AssertSpecial
trigger1 = Time >= 110
flag = invisible
flag2 = noshadow

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Vise
[Statedef 13225]
type = S
physics = N
movetype = I
anim = 13225
velset = 0,0
sprpriority = -2

[State 11255, Var]
type = VarSet
trigger1 = !Time
FV = 0
value = Root, FVar(0)

[State 11255, Bump]
type = VelSet
trigger1 = Time <= 16
Y = 1

[State 11255, Bump]
type = VelSet
trigger1 = Time >= 16
Y = 0

[State 200, Hand]
type = Helper
trigger1 = !Time
helpertype = normal
stateno = 13226
ID = 13200
name = "Vise Hand"
postype = p1
pos = Floor(90*FVar(0)), Floor(-20*FVar(0))
ownpal = 1
facing = -1
scale = FVar(0), FVar(0)
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
ignorehitpause = 1

[State 200, Hand]
type = Helper
trigger1 = !Time
helpertype = normal
stateno = 13227
ID = 13200
name = "Vise Hand"
postype = p1
pos = Floor(30*FVar(0)), Floor(-20*FVar(0))
ownpal = 1
facing = 1
scale = FVar(0), FVar(0)
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
ignorehitpause = 1

[State 200, Wheel]
type = Explod
trigger1 = !Time
anim = 13227
ID = 13227
pos = 0, 0
postype = p1  ;p2,front,back,left,right
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = FVar(0), FVar(0)
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
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
trigger1 = Root, Anim = 13250
trigger2 = Root, StateNo != 13220
trigger3 = Var(0) > 0
V = 0
value = 1

[State 1022, Explod]
type = RemoveExplod
trigger1 = Var(0) = 1
trigger2 = Var(0) = 16
ID = 13227

[State 200, Wheel]
type = Explod
trigger1 = Var(0) = 1
anim = 13227
ID = 13227
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
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1


[State 1022, Explod]
type = Explod
trigger1 = Var(0)
trigger1 = GameTime % 3 = 0
anim = 7002
ID = 13205
pos = Floor(100 - (Random % 100) * FVar(0)), - Floor(35 - (Random % 35) * FVar(0))
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

[State 1022, Explod]
type = DestroySelf
trigger1 = Var(0) >= 16

; Vise Hand
[Statedef 13226]
type = S
physics = N
movetype = I
anim = 13226
velset = 0,1
sprpriority = 1

[State 801, Move]
type = VelSet
trigger1 = Time = 16
Y = 0

[State 801, Move]
type = PosAdd
trigger1 = Time = [30,34]
X = (32*Parent, FVar(0) - Root, FVar(4))/4.0

[State 801, Bind]
type = EnvShake
trigger1 = Time = 34
trigger2 = Time = 110
ampl = 12
freq = 140
time = 12

[State N, Sound]
type = PlaySnd
trigger1 = Time = 34
trigger2 = Time = 110
value = S7020,5
channel = 1

[State 801, Move]
type = VelSet
trigger1 = Time = [70, 105]
X = (Root, FVar(4)*0.1)/35.0

[State 801, Stop]
type = VelSet
trigger1 = Time = [105, 110]
X = (Root, FVar(4)*0.9)/5.0

[State 801, Stop]
type = VelSet
trigger1 = Time = 110
X = 0

[State 11255, Var]
type = VarSet
trigger1 = !Time
FV = 0
value = Root, FVar(0)

[State 11205, Change]
type = AngleDraw
trigger1 = FVar(0) > 1
scale = FVar(0), FVar(0)

[State 11205, Change]
type = Trans
trigger1 = Time = [0, 16]
trans = addalpha
alpha = Time * 16, 256 - Time * 16

[State 11205, Change]
type = Trans
trigger1 = Parent, Var(0) > 0
trans = addalpha
alpha = 256 - Parent, Var(0) * 16, Parent, Var(0) * 16

[State 1022, Explod]
type = DestroySelf
trigger1 = Parent,Var(0) >= 16

; Vise Hand 2
[Statedef 13227]
type = S
physics = N
movetype = I
anim = 13226
velset = 0,1
sprpriority = 1

[State 801, Move]
type = VelSet
trigger1 = Time = 16
Y = 0

[State 11255, Var]
type = VarSet
trigger1 = !Time
FV = 0
value = Root, FVar(0)

[State 11205, Change]
type = AngleDraw
trigger1 = FVar(0) > 1
scale = FVar(0), FVar(0)

[State 11205, Change]
type = Trans
trigger1 = Time = [0, 16]
trans = addalpha
alpha = Time * 16, 256 - Time * 16

[State N, Sound]
type = PlaySnd
trigger1 = Parent, Var(0) > 0
value = S7050,2
channel = 1
persistent = 0

[State 11205, Change]
type = Trans
trigger1 = Parent, Var(0) > 0
trans = addalpha
alpha = 256 - Parent, Var(0) * 16, Parent, Var(0) * 16

[State 1022, Explod]
type = DestroySelf
trigger1 = Parent,Var(0) >= 16

; Success - Treadmill
[Statedef 13250]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 13204
sprpriority = 1
poweradd = 0
velset = 0,0

[State 801, Bind]
type = ChangeAnim
trigger1 = Anim = 13204
trigger1 = !AnimTime
value = 13201

[State 801, Bind]
type = VarAdd
trigger1 = Anim = 13201
trigger1 = AnimElemNo(0) = 4
trigger2 = Anim = 13203 
fvar(1) = IfElse(fvar(1) < 20, 3, (120 - fvar(1))/100.0)

[State 801, Bind]
type = ChangeAnim
trigger1 = Anim = 13201
trigger1 = AnimElemNo(0) = 4
trigger1 = fvar(1) >= 40
value = 13203

[State 801, Bind]
type = EnvShake
triggerall = NumTarget
trigger1 = Anim = 13203
trigger1 = fvar(1) >= 100
ampl = 12
freq = 140
time = 12
persistent = 0

[State 801, Bind]
type = TargetLifeAdd
triggerall = NumTarget
trigger1 = Anim = 13203
trigger1 = fvar(1) >= 100
value = -135
persistent = 0

[State 801, Bind]
type = TargetState
triggerall = NumTarget
trigger1 = Anim = 13203
trigger1 = fvar(1) >= 100
value = 13298
persistent = 0

[State 11205, Change]
type = EnvShake
triggerall = Anim = 13201
trigger1 = AnimElem = 4
ampl = 8
time = 4
freq = 120

[State 801, Bind]
type = TargetState
triggerall = NumTarget
trigger1 = Anim = 13201
trigger1 = AnimElem = 4
value = IfElse(Target, Facing = Facing, 13252, 13253)
persistent = 0

[State 1031, Measure]
type = turn
triggerall = !Time
trigger1 = Facing > 0 && ScreenPos X > 220
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
fvar(2) = (20 - FVar(1)) /20.0

[State 801, Bind]
type = VarAdd
trigger1 = Time = [0,20]
fvar(1) = fvar(2)

[State 1000, Hadouken]
type = helper
trigger1 = Time = 1
helpertype = normal
stateno = 13255
ID = 13250
name = "Treadmill"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 80, 9
ownpal = 1

[State 1030, Fail]
type = TargetDrop
trigger1 = NumTarget
trigger1 = Target, StateNo = 13298

[State 1030, Fail]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

; Get Hit
[Statedef 13251]
type = A
physics = N
movetype = H
velset = 0,0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 13202

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Turning
[Statedef 13252]
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
value = 13253
ctrl = 0

; Get Hit - Running
[Statedef 13253]
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
type = ChangeAnim2
trigger1 = !Time
value= 13202

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
[Statedef 13255]
type = S
physics = N
movetype = I
anim = 13258
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
anim = 13255
ID = 13255
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
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, FG Device]
type = Explod
trigger1 = !Time
anim = 13256
ID = 13256
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
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Grinder]
type = Explod
trigger1 = !Time
anim = 13257
ID = 13257
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
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Border]
type = Explod
trigger1 = !Time
anim = 13259
ID = 13259
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
pausemovetime = 9999999*(Root, Var(24) > 0)
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
trigger1 = Anim = 13206
trigger1 = AnimElemNo(0) = 9
trans = addalpha
alpha = 256 - 16 * AnimElemTime(9), AnimElemTime(9) * 16

[State 1022, Explod]
type = Explod
triggerall = Root, FVar(1) >= 100
trigger1 = NumExplod(13260) < 6
trigger1 = Time % 3 = 0
anim = 7002
ID = 13260
pos = Floor((50 - (Random % 50)) * FVar(0)), - 40 - Floor(Random % 60*FVar(0))
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
trigger1 = Root, Anim = 13250
trigger2 = Root, StateNo != 13250
trigger3 = Var(0) > 0
V = 0
value = 1

[State N, Sound]
type = PlaySnd
trigger1 = Var(0) > 0
value = S7050,2
channel = 1
persistent = 0

[State 11205, Change]
type = Trans
trigger1 = Var(0) > 0
trans = addalpha
alpha = 256 - Var(0) * 16, Var(0) * 16

[State 1022, Explod]
type = RemoveExplod
trigger1 = Var(0) = 1
trigger2 = Var(0) = 16
ID = 13255
[State 1022, Explod]
type = RemoveExplod
trigger1 = Var(0) = 1
trigger2 = Var(0) = 16
ID = 13256
[State 1022, Explod]
type = RemoveExplod
trigger1 = Var(0) = 1
trigger2 = Var(0) = 16
ID = 13257
[State 1022, Explod]
type = RemoveExplod
trigger1 = Var(0) = 1
trigger2 = Var(0) = 16
ID = 13259


[State 200, BG Device]
type = Explod
trigger1 = Var(0) = 1
anim = 13265
ID = 13255
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
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, FG Device]
type = Explod
trigger1 = Var(0) = 1
anim = 13266
ID = 13256
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
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Grinder]
type = Explod
trigger1 = Var(0) = 1
anim = 13267
ID = 13257
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
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 200, Border]
type = Explod
trigger1 = Var(0) = 1
anim = 13269
ID = 13259
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
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 1022, Explod]
type = DestroySelf
trigger1 = Var(0) >= 16

; Success - Wheel
[Statedef 13270]
type    = S
movetype= A
physics = N
juggle  = 3
ctrl = 0
anim = 13204
sprpriority = 1
poweradd = 0
velset = 0,0

[State 801, Bind]
type = ChangeAnim
trigger1 = Anim = 13204
trigger1 = !AnimTime
value = 13270

[State 1031, Measure]
type = turn
triggerall = !Time
trigger1 = Facing > 0 && ScreenPos X > 160
trigger2 = Facing < 0 && ScreenPos X < 160

[State 801, Bind]
type = TargetState
trigger1 = !Time
trigger1 = NumTarget
value = IfElse(Target, Facing = Facing, 13271, 13272)

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(1) = Facing * (Target, ScreenPos X - ScreenPos X)

[State 1031, Measure]
type = VarSet
trigger1 = !Time
fvar(2) = 0

[State 801, Bind]
type = VarSet
trigger1 = !Time
fvar(3) = (70 - FVar(1)) /10.0

[State 801, Bind]
type = VarAdd
trigger1 = Time = [0,10]
fvar(1) = fvar(3)

[State 801, Bind]
type = ChangeAnim
trigger1 = Anim = 13204
trigger1 = !AnimTime
value = 13270

[State 801, Bind]
type = VelSet
trigger1 = Anim = 13270
Y = -10
persistent = 0

[State 801, Bind]
type = VelAdd
trigger1 = Anim = 13270
trigger1 = AnimElemTime(1) < 10
Y = 1

[State 801, Bind]
type = VarAdd
trigger1 = Anim = 13270
trigger1 = AnimElemTime(1) < 10
fvar(2) = 9 - (AnimElemTime(1))

[State 801, Bind]
type = VelSet
trigger1 = Anim = 13270
trigger1 = AnimElemTime(1) = 10
Y = 0
persistent = 0

[State 1000, Hadouken]
type = helper
trigger1 = Anim = 13270
trigger1 = AnimElemTime(1) = 10
helpertype = normal
stateno = 13275
ID = 13270
name = "Wheel of Torture"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 0, -80
ownpal = 1

[State 801, Bind]
type = TargetState
trigger1 = NumTarget
trigger1 = NumHelper(13270)
trigger1 = Helper(13270), Var(0) = 8
trigger1 = (FVar(2) := - Pos Y) || 1
value = 13273
persistent = 0

[State N, Sound]
type = PlaySnd
trigger1 = !Time
value = S8001,4
channel = 0
persistent = 0

[State N, Sound]
type = PlaySnd
trigger1 = NumTarget
trigger1 = NumHelper(13270)
trigger1 = Helper(13270), Var(0) = 8
value = S8001,6
channel = 0
persistent = 0


[State 801, Bind]
type = ChangeAnim
trigger1 = NumTarget
trigger1 = Target, StateNo = 13273
trigger1 = Anim = 13270
value = 13271
persistent = 0


[State 11270, BindToWheel]
type = TargetLifeAdd
trigger1 = NumHelper(13270)
trigger1 = Helper(13270), Var(0) = 9
value = -1

[State 801, Bind]
type = TargetBind
trigger1 = !NumHelper(13270)
trigger2 = NumHelper(13270) && Helper(13270),Var(0) < 8
pos = fvar(1), fvar(2)

[State 801, Bind]
type = TargetBind
trigger1 = NumHelper(13270)
trigger1 = Helper(13270), Var(0) = [8, 9]
pos = (Helper(13270), Pos X - Pos X)*Facing, (Pos Y - Helper(13270), Pos Y) + 40

[State 11270, BindToWheel]
type = TargetState
trigger1 = NumHelper(13270)
trigger1 = Helper(13270), Var(0) = 10
value = 13274
persistent = 0

[State 11270, BindToWheel]
type = TargetBind 
trigger1 = NumHelper(13270)
trigger1 = Helper(13270), Var(0) = 10
pos = (Helper(13270), Pos X - Pos X)*Facing + 60 * Cos(-(Pi/180.0)* Helper(13270), FVar(2) + Pi/2.0), -(ScreenPos Y - Helper(13270), ScreenPos Y) - 60*Sin(-(Pi/180.0)* Helper(13270), FVar(2) - Pi/2.0)


[State N, Sound]
type = PlaySnd
trigger1 = NumTarget
trigger1 = Anim = 13271
trigger1 = AnimElem = 2
value = S8001,3
channel = 0
persistent = 0


[State N, Sound]
type = PlaySnd
trigger1 = NumHelper(13270)
trigger1 = Helper(13270), Var(0) = 10
value = S8001,10
channel = 0
persistent = 0


[State 11270, BindToWheel]
type = TargetLifeAdd
trigger1 = NumTarget
trigger1 = NumHelper(13270)
trigger1 = Helper(13270), Var(0) = 11
value = -78

[State 11270, BindToWheel]
type = TargetState
trigger1 = NumTarget
trigger1 = NumHelper(13270)
trigger1 = Helper(13270), Var(0) = 11
value = 13298

[State 11270, BindToWheel]
type = TargetDrop
trigger1 = NumHelper(13270)
trigger1 = Helper(13270), Var(0) = 11

[State 11270, BindToWheel]
type = VelSet
trigger1 = !NumTarget
trigger1 = Pos Y < 0
Y = -5
X = -3

[State 11270, BindToWheel]
type = ChangeState
trigger1 = !NumTarget
value = IfElse(Pos Y < 0, 50, 0)
ctrl = Pos Y >= 0

; Get Hit (Turn)
[Statedef 13271]
type = S
physics = N
movetype = H
velset = 0,0
sprpriority = 0

[State 1032, Anim]
type = Turn
trigger1 = !Time

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 13202

[State 1032, Anim]
type = ChangeState
trigger1 = !Time
value= 13272

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Get Hit
[Statedef 13272]
type = S
physics = N
movetype = H
velset = 0,0
sprpriority = 0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 13202

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Get Hit (Lying)
[Statedef 13273]
type = L
physics = N
movetype = H
velset = 0,0
sprpriority = 0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 13273

[State 1032, Anim]
type = PalFX
trigger1 = !Time
add = 200, 200, 200
mul = 256, 256, 256
time = 8

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Get Hit (Spinning)
[Statedef 13274]
type = A
physics = N
movetype = H
velset = 0,0
sprpriority = 0

[State 1032, Anim]
type = ChangeAnim2
trigger1 = !Time
value= 13273

[State 1032, Anim]
type = PalFX
trigger1 = !Time
add = 200, 200, 200
mul = 256, 256, 256
time = 8

[State 1032, Angle]
type = ScreenBound
trigger1 = 1
movecamera = 0,0

[State 1032, Angle]
type = AngleDraw
trigger1 = 1

[State 1032, Angle]
type = AngleSet
trigger1 = !Time
value = 13

[State 1032, Angle]
type = AngleAdd
trigger1 = 1
value = 13

[State 803, Safety]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5100
ctrl = 0

; Wheel
[Statedef 13275]
type = S
physics = N
movetype = I
anim = 13275
velset = 0,0
sprpriority = 2

[State 11205, Change]
type = Trans
trigger1 = Time = [0, 16]
trans = addalpha
alpha = Time * 16, 256 - Time * 16

[State 11205, PosAdd]
type = null
trigger1 = !Time
trigger1 = (fvar(0) := Pos X) || 1
trigger1 = (fvar(1) := Pos Y) 
trigger1 = !(var(0) := 0)
trigger1 = !(var(1) := 0)

[State 11205, PosAdd]
type = VarAdd
triggerall = Var(0) < 8
trigger1 = Root, Anim = 13270
trigger1 = Root, AnimElemNo(0) = 2
trigger2 = Var(0) > 0
var(0) = 1

[State 11205, PosAdd]
type = PosSet
trigger1 = Var(0) = [0, 8]
X = Floor(fvar(0) + 70*Cos(Pi/2 - Var(0) *Pi/16.0)*Facing)
Y = Floor(fvar(1) + 70*(1 - Sin(Pi/2 - Var(0) *Pi/16.0)))

[State 11205, PosAdd]
type = VarSet
trigger1 = Root, Anim != 13271
fv = 2
value = 90 - Var(0) *90/8.0

[State 11205, PosAdd]
type = AngleDraw
trigger1 = Var(0) != 0
value = FVar(2)

[State 11205, PosAdd]
type = VarSet
trigger1 = Root, Anim = 13271
trigger1 = Root, AnimElem = 4
var(0) = 9

[State 11205, PosAdd]
type = VarAdd
trigger1 = Var(0) > 8
fv = 2
value = -13

[State 11205, PosAdd]
type = EnvShake
trigger1 = Var(0) = 8
ampl = 12
freq = 120
time = 12
persistent = 0

[State 11205, PosAdd]
type = EnvShake
trigger1 = Var(0) = 9
time = 120
ampl = 8
freq = 120
persistent = 0

[State N, Sound]
type = PlaySnd
trigger1 = Var(0) = 9
trigger1 = NumExplod(13275) < 3
trigger1 = Time % 5 = 0
value = S7020,2
channel = 1

[State 200, Explod]
type = Explod
trigger1 = Var(0) = 9
trigger1 = NumExplod(13275) < 3
trigger1 = Time % 5 = 0
anim = 7001
ID =  13275
pos = 0, 40
random = 30,10
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
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 11205, PosAdd]
type = VarSet
trigger1 = Root, Anim = 13271
trigger1 = Root, AnimElem = 7
var(0) = 10


[State 11205, PosAdd]
type = VelSet
trigger1 = Var(0) = 10
X = 6
persistent = 0

[State 11205, PosAdd]
type = VelSet
trigger1 = Var(0) = 10
trigger1 = ScreenPos X < 40 || ScreenPos X > 280
trigger1 = Var(0) := 11
X = 0
persistent = 0

[State N, Sound]
type = PlaySnd
trigger1 = Var(0) = 11
value = S7050,2
channel = 1
persistent = 0

[State 1022, Explod]
type = Explod
trigger1 = Var(1) > 0
trigger1 = Time % 2 = 0
anim = 7002
ID = 13276
pos = Floor(50 - (Random % 100)), -Floor(50 - (Random % 100))
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

[State 1022, Explod]
type = VarAdd
trigger1 = Var(0) = 11
v = 1
value = 1

[State 13205, Change]
type = Trans
trigger1 = Var(1) > 0
trans = addalpha
alpha = 256 - Var(1) * 16, Var(1) * 16

[State 1022, Explod]
type = DestroySelf
trigger1 = Var(1) >= 16


; Invisible Get Hit
[Statedef 13297]
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
[Statedef 13298]
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
value = 13297

[State 803, Vel]
type = ChangeAnim2
trigger1 = Vel Y > 0
value = 13298

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
[Statedef 13299]
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
; Gomorrah Climax
[Statedef 13300]
type    = S
movetype= A
physics = S
ctrl = 0
anim = 13100
poweradd = -3000
sprpriority = 2

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,3
channel =  0

[State 2010, NHB]
type = NotHitBy
trigger1 = Time > 5 && !NumHelper(13305)
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
supermovetime = 999999

[State 8520, Portrait]
type = Helper
trigger1 = !Time
stateno = 7001
name = "Super BG"
ID = 7001
sprpriority = -16
postype = back
ownpal = 1
supermovetime = 99999
pausemovetime = 99999

[State 2010, Super Pause]
type = superpause
trigger1 = time = 5
time = 60
movetime = 60
anim = -1
p2defmul = 1
darken = 0


[State 1000, Hadouken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 13101
ID = 13101
name = "Hair"
pausemovetime = 9999999*(Var(24) > 0)
supermovetime = 9999999
postype = p1
pos = 0, -20
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 13102
ID = 13102
name = "Portal"
pausemovetime = 9999999*(Var(24) > 0)
supermovetime = 9999999
postype = p1
pos = 0, -118
ownpal = 1

[State 13100, HelperPos]
type = VarSet
trigger1 = NumHelper(13102)
trigger1 = Helper(13102), Time = 1
fv = 0
value = (enemynear(numenemy>1&&!enemynear(0),alive), ScreenPos X - ScreenPos X)*Facing


[State 13100, HelperPos]
type = VarSet
trigger1 = NumHelper(13102)
trigger1 = Helper(13102), Time = 1
fv = 1
value = Floor(EnemyNear(IfElse(EnemyNear(0), Alive, 0, 1)), Pos Y + EnemyNear(IfElse(EnemyNear(0), Alive, 0, 1)), Const(size.head.pos.y) - 40)

[State 1000, Gomorrah]
type = helper
trigger1 = NumHelper(13102)
trigger1 = Helper(13102), Time = 1
helpertype = normal
stateno = 13305
ID = 13305
name = "Gomorrah"
pausemovetime = 9999999*(Var(24) > 0)
supermovetime = 9999999
postype = p1
pos = Floor(FVar(0)), Floor(Fvar(1))
facing = IfElse(FVar(0) > 0, 1, -1)
ownpal = 1

[State 13100, HelperPos]
type = NotHitBy
trigger1 = NumHelper(13305)
trigger1 = Helper(13305), StateNo = 13305
value = SCA, AA, AP, AT
time = 1
ignorehitpause = 1

[State 2010, NHB]
type = VarSet
trigger1 = !Time
var(0) = 0

[State 2010, NHB]
type = VarSet
triggerall = NumHelper(13305)
trigger1 = Helper(13305), Time = 32
var(0) = 1

[State 1010, Strength]
type = VarSet
trigger1 = !Time
var(1) = ifelse(command = "qcbhcfb", 0, 1)

[State 1010, Strength]
type = VarSet
trigger1 = !Time
var(2) = 0

[State 1010, Strength]
type = VarSet
triggerall = NumHelper(13305) 
trigger1 = Helper(13305), StateNo = 13307
var(2) = 1

[State 2010, NHB]
type = VarSet
triggerall = NumHelper(13306) 
trigger1 = Helper(13306), StateNo = 13310
trigger1 = Helper(13306), NumHelper(13382) >= 8
trigger2 = Helper(13306), StateNo = 13310
trigger2 = Helper(13306), Time > 180
var(2) = 1

[State 1010, Strength]
type = ChangeState
trigger1 = Var(2) && NumHelper(13306)
trigger1 = Helper(13306), StateNo = 13308
value = 13301
ctrl = 0

;Climax Miss
[Statedef 13301]
type = C
physics = C
movetype = I
velset = 0,0
anim = 13301
ctrl = 0

[State 1035, Pos]
type = PosSet
trigger1 = !Time
Y = 0

[State 1035, Pos]
type = ChangeState
trigger1 = Time > 120
value = 0
ctrl = 1

; Gomorrah Body
[Statedef 13305]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 2000, Explosion]
type = Helper
trigger1 = !Time
name = "Gomorrah Head"
ID = 13306
stateno = 13306
postype = p1    ;p2,front,back,left,right
pos = 0, 0
facing = 1
keyctrl = 0
ownpal = 1
persistent = 0
supermovetime = 48

[State 13105, Var]
type = Sprpriority
trigger1 = 1
value = -2
ignorehitpause = 1

[State 13105, Var]
type = ChangeAnim
trigger1 = !Time
trigger1 = !PrevStateNo
ignorehitpause = 1
value = 13305

[State 3055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(0) < 10, 13305, 13307)
ignorehitpause = 1

[State 3055, hitby]
type = nothitby
trigger1 = 1
time = 1
value = , AT
ignorehitpause = 1

[State 3055, hitby]
type = nothitby
trigger1 = prevstateno = 13305
trigger1 = gethitvar(hittime)
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State 13105, Var]
type = VarSet
trigger1 = !prevstateno
trigger1 = !Time
var(1) = 0
ignorehitpause = 1

[State 1000, Portal]
type = helper
trigger1 = !Var(1)
helpertype = normal
stateno = 13350
ID = 13350
name = "Portal 2"
pausemovetime = 9999999*(Root, Var(24) > 0)
supermovetime = 9999999
postype = p1
pos = 0, -45
ownpal = 1

[State 1006, Trans]
type = Offset
trigger1 = Var(1) = [12, 28]
Y = Floor((-28 + Var(1))/2.0)
ignorehitpause = 1

[State 1006, Trans]
type = trans
trigger1 = Var(1) = [12, 28]
trans = addalpha
alpha = (Var(1) -12) * 16, 256 - (Var(1) -12) * 16
ignorehitpause = 1

[State 2101, Scale]
type = PalFX
trigger1 = !Time
time = -1
add = -48,-48,-48
sinadd = -32,-32,-32, 60

[State 2101, Scale]
type = AssertSpecial
trigger1 = Var(1) = [0,12]
flag = invisible
flag2 = noshadow

[State 2101, Scale]
type = NotHitBy
trigger1 = Var(1) = [0,44]
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 1006, Trans]
type = VarAdd
trigger1 = 1
V = 1
value = 1

[State 13305, End]
type = ChangeState
trigger1 = !NumHelper(13306)
trigger2 = NumHelper(13306) && Helper(13306), StateNo = 13308
trigger3 = Root, StateNo != 13300
value = 13307

; Gomorrah Head
[Statedef 13306]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 13105, Var]
type = SprPriority
trigger1 = Anim = 13306
ignorehitpause = 1
value = IfElse(AnimElemNo(0) = 1 || AnimElemNo(0) = 5, -1,1)

[State 1006, Trans]
type = Offset
trigger1 = Parent, Var(1) = [12, 28]
Y = Floor((-28 + Parent, Var(1))/2.0)
ignorehitpause = 1

[State 1006, Trans]
type = Trans
trigger1 = Parent, Var(1) < 12
trans = addalpha
alpha = 0, 256
ignorehitpause = 1

[State 1006, Trans]
type = trans
trigger1 = Parent, Var(1) = [12, 28]
trans = addalpha
alpha = (Parent, Var(1) -12) * 16, 256 - (Parent, Var(1) -12) * 16
ignorehitpause = 1

[State 13105, Var]
type = ChangeAnim
trigger1 = !Time
ignorehitpause = 1
value = 13306

[State 3055, hitby]
type = nothitby
trigger1 = 1
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State 13105, Var]
type = VarSet
trigger1 = !prevstateno
trigger1 = !Time
var(1) = 0
ignorehitpause = 1

[State 2101, Scale]
type = PalFX
trigger1 = Var(1) = 1
time = -1
add = -48,-48,-48
sinadd = -32,-32,-32, 60

[State 1006, Trans]
type = VarAdd
trigger1 = 1
V = 1
value = 1

[State 1006, Trans]
type = ChangeState
trigger1 = Anim = 13306
trigger1 = !AnimTime
trigger2 = Root, StateNo != 13300
value = IfElse(NumTarget(13306), 13310, 13308)

[State 13306, Shake]
type = EnvShake
trigger1 = AnimElem = 2
time = 6
freq = 120
ampl = 6
ignorehitpause = 1

[State N, Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8002,10
channel = 1

[State 3010, HitDef]
type = HitDef
trigger1 = !Time
attr = S,HT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MA-        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 20,0
;guard.pause,0
sparkno = -1
sparkxy = 0,0
hitsound = S7001,1
guardsound = S2,0
ground.type = High      ;Low,Trip,None
air.hittime = 20
ground.velocity = 0,0
air.velocity = 0,0
p1getp2facing = 0
down.bounce = 0
id = 13306
chainID = -1
nochainID = -1
hitonce = 1
kill = 0
numhits = 0

[State 3010, HitDef]
type = HitDef
trigger1 = AnimElemTime(2) = 9 && !NumTarget(13306)
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MA        ;HLAFD+-
guardflag = MA         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = light
damage = 200,0
pausetime = 18, 18
sparkno = -1
sparkxy = 0,0
hitsound = S7001,1
guardsound = S2,0
ground.type = High      ;Low,Trip,None
air.hittime = 20
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0,0
givepower = 36,36
ground.velocity = 0,0
air.velocity = 0,0
p1getp2facing = 0
id = 13307
chainID = -1
nochainID = 13306,13307
hitonce = 1
kill = 1
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
numhits = 0

[State 3010, Hit]
type = EnvShake
triggerall = NumTarget(13306)
trigger1 = MoveHit && (AnimElemTime(2) >= 1)
time = 8
freq = 120
ampl = 3
persistent = 0

[State 3010, Hit]
type = TargetLifeAdd
triggerall = NumTarget(13306)
trigger1 = MoveHit && (AnimElemTime(2) >= 1)
ID = 13306
value = -10
kill = 0
persistent = 0

[State 3010, pos]
type = Varset
trigger1 = NumTarget(13306)
fvar(0) = Target(13306), Pos X
persistent = 0

[State 3010, pos]
type = Varset
trigger1 = NumTarget(13306)
fvar(1) = Target(13306), Pos Y
persistent = 0

[State 3010, Hit]
type = TargetBind
trigger1 = NumTarget(13306)
ID = 13306
pos = Facing * (fvar(0) - Pos X), 40
ignorehitpause = 1

[State 3010, Hit]
type = TargetState
trigger1 = NumTarget(13306)
ID = 13306
value = 13320
ignorehitpause = 1
persistent = 1

[State 3010, Hit]
type = ChangeState
trigger1 = !AnimTime && !NumTarget(13306)
value = 13308
ignorehitpause = 1
persistent = 0 


; Gomorrah Body End
[Statedef 13307]
type = S
physics = N
movetype = I
ctrl = 0
anim = 13305
velset = 0, 0
sprpriority = -2

[State 3055, hitby]
type = nothitby
trigger1 = 1
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State 1006, Trans]
type = Offset
trigger1 = Time = [0, 32]
Y = Floor((-Time)/2.0)
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

; Gomorrah Head End
[Statedef 13308]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = -1
anim = 13308

[State 3055, hitby]
type = nothitby
trigger1 = 1
time = 1
value = SCA, AA, AT, AP
ignorehitpause = 1

[State 1006, Trans]
type = Offset
trigger1 = Time = [0, 32]
Y = Floor((-Time)/2.0)
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

; Head, Connected
[Statedef 13310]
movetype = A
velset = 0,0

[State 13320, Anim]
type = ChangeAnim
trigger1 = !Time 
value = 13310
elem = 4

[State N, Sound]
type = PlaySnd
trigger1 = Anim = 13310 && AnimElem = 2
value = S8002,9
channel = 1

[State 13105, Var]
type = SprPriority
trigger1 = Anim = 13310
ignorehitpause = 1
value = IfElse(AnimElemNo(0) = 1 || AnimElemNo(0) = 5, -1,1)

[State 3010, Hit]
type = TargetBind
trigger1 = NumTarget(13306)
ID = 13306
pos = Facing * (fvar(0) - Pos X), 40
ignorehitpause = 1


[State 1006, Safety]
type = ChangeAnim
trigger1 = Anim != 13311
trigger1 = Root, Var(2)
value = 13311


[State 1006, Safety]
type = TargetDrop
trigger1 = Anim = 13311
persistent = 0

[State 1006, Safety]
type = EnvShake
trigger1 = Anim = 13311
trigger1 = AnimElem = 4
time = 40
freq = 120
ampl = 6
ignorehitpause = 1
persistent = 0


[State 1006, Safety]
type = ChangeState
trigger1 = !NumTarget(13306) && Anim != 13311
trigger2 = Root, StateNo != 13300
trigger3 = Anim = 13311 && !AnimTime
value = 13308

[State 13306, Shake]
type = EnvShake
trigger1 = Anim = 13310 && AnimElem = 2
time = 3
freq = 120
ampl = 3
ignorehitpause = 1


[State N, Sound]
type = PlaySnd
trigger1 = Anim = 13311 && AnimElem = 4
value = S8002,3
channel = 1
persistent = 0

[State 13320, Anim]
type = TargetLifeAdd
trigger1 = NumTarget(13306)
trigger1 = Anim = 13310 && AnimElem = 2
value = -26
ID = 13306

[State 13320, Anim]
type = ChangeAnim
triggerall = !(Root, Var(2))
triggerall = Anim = 13310 && AnimElemNo(0) = 5
trigger1 = !Root, Var(1) && Root, Command = "rlsb" 
trigger2 = Root, Var(1) && Root, Command = "rlsc"
value = 13310
elem = 1

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13380
ID = 13380
name = "Prompt"
pausemovetime = 9999999*(Root, Var(24) > 0)
postype = p1
pos = 0, -45
ownpal = 1


;Opponent
[Statedef 13320]
movetype = H
velset = 0,0

[State 3020, Exit]
type = SelfState
trigger1 = !gethitvar(isbound)
value = 5050
	
[State 3020, anim]
type = ChangeAnim2
trigger1 = !Time
value = 13320
ignorehitpause = 1


; Gomorrah Portal
[Statedef 13350]
type = A
physics = N
movetype = I
ctrl = 0
anim = 13304
velset = 0, 0
sprpriority = -4

[State 220, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 13102
ID = 13103
pos = 0, 0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale =  0.75, 1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
supermovetime = 9999999
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 2101, Remove]
type = RemoveExplod
trigger1 = Parent, StateNo = 13307
trigger1 = Parent, Time = 10
trigger2 = Root, StateNo != 13300
ID = 13103
persistent = 0

[State 220, Explod]
type = Explod
trigger1 = Parent, StateNo = 13307
trigger1 = Parent, Time = 10
trigger2 = Root, StateNo != 13300
anim = 13104
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
scale = 0.75, 1
sprpriority = -5
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
supermovetime = 9999999
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
scale = 1.82, 0.35
value = 0

[State 2101, Scale]
type = ChangeAnim
trigger1 = Parent, StateNo = 13307
trigger1 = Parent, Time = 10
trigger2 = Root, StateNo != 13300
value = 7102 
persistent = 0

[State 2101, Scale]
type = DestroySelf
trigger1 = Anim = 7102
trigger1 = !AnimTime


; Input Prompt
[Statedef 13380]
type = A
physics = N
movetype = I
ctrl = 0
anim = 13380
velset = 0, 0
sprpriority = 4

[State 220, Explod]
type = Explod
trigger1 = !Time
anim = 13378
ID = 13378
pos = 0, 0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale =  0.35, 0.35
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 1000, Hadouken]
type = helper
trigger1 = !Time
helpertype = normal
stateno = 13381
ID = 13381
name = "Button"
pausemovetime = 9999999*(Root, Var(24) > 0)
postype = p1
facing = Facing
pos = 0, 0
ownpal = 1

[State 13320, Anim]
type = VarSet
trigger1 = !Time
value = 0
v = 0

[State 13320, Anim]
type = VarAdd
trigger1 = !Root, Var(1) && Root, Command = "rlsb" 
trigger2 = Root, Var(1) && Root, Command = "rlsc"
value = 1
v = 0

[State 13320, Anim]
type = Helper
triggerall = !(Root, Var(2))
triggerall = NumHelper(13382) < 8
trigger1 = (Var(0)/3.0 > NumHelper(13382))
helpertype = normal
stateno = 13382
ID = 13382
name = "Character"
pausemovetime = 9999999*(Root, Var(24) > 0)
postype = p1
pos = Floor(19 * Cos(Pi/4.0 * (NumHelper(13382) - 3))) * Facing, Floor(19  * Sin(Pi/4.0 * (NumHelper(13382)- 3)))
facing = Facing
ownpal = 1


[State 13320, Anim]
type = VarSet
trigger1 = !Time 
trigger2 = FVar(0) > 0.75
fv = 0
value = 0.75

[State 13320, Anim]
type = VarAdd
trigger1 = FVar(0) < 0.75
fv = 0
value = 0.03

[State 13320, Anim]
type = AngleDraw
trigger1 = 1
scale = FVar(0), FVar(0)

[State 13320, Anim]
type = Trans
trigger1 = Time < 16
trans = addalpha
alpha = 16 * Time, 256 - 16 * Time

[State 13320, Anim]
type = VarSet
trigger1 = !Root, Var(1) && Root, Command = "rlsb" 
trigger2 = Root, Var(1) && Root, Command = "rlsc"
fv = 0
value = 0.65

[State 13320, Anim]
type = PalFX
trigger1 = FVar(0) < 1
add = Floor(-(FVar(0) - 0.75)/0.1 * 32), 0, Floor(-(FVar(0) - 0.75)/0.1 * 64)
time = 1


[State 13381, fef]
type = AssertSpecial
trigger1 = 1
flag = noshadow 

[State 13381, fef]
type = VarSet
trigger1 = !Time
v = 1
value = 0

[State 13381, fef]
type = VarSet
trigger1 = Root, Var(2)
trigger2 = Root, StateNo != 13300
v = 1
value = 1
persistent = 0

[State 13381, fef]
type = VarAdd
trigger1 = Var(1)
v = 1
value = 1

[State 13381, End]
type = Trans
trigger1 = Var(1)
trans = addalpha
alpha = 256 - Var(1) * 16, Var(1) * 16

[State 13381, End]
type = DestroySelf
trigger1 = Var(1) >= 16


[State 220, Explod]
type = RemoveExplod
trigger1 = Var(1)
ID = 13378

[State 220, Explod]
type = Explod
trigger1 = Var(1)
anim = 13379
ID = 13379
pos = 0, 0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
scale =  0.35, 0.35
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 1
pausemovetime = 9999999*(Root, Var(24) > 0)
removeongethit = 1
ignorehitpause = 1
persistent = 0


; Button
[Statedef 13381]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 13320, Anim]
type = Trans
trigger1 = Time < 16
trans = addalpha
alpha = 16 * Time, 256 - 16 * Time

[State 13320, Anim]
type = ChangeAnim
trigger1 = !Time 
value = 13381 + (Root, Var(1))

[State 13320, Anim]
type = VarSet
trigger1 = !Time 
trigger2 = FVar(0) > 0.25
fv = 0
value = 0.25

[State 13320, Anim]
type = VarAdd
trigger1 = FVar(0) < 0.25
fv = 0
value = 0.03

[State 13320, Anim]
type = AngleDraw
trigger1 = 1
scale = FVar(0), FVar(0)

[State 13320, Anim]
type = VarSet
trigger1 = !Root, Var(1) && Root, Command = "rlsb" 
trigger2 = Root, Var(1) && Root, Command = "rlsc"
fv = 0
value = 0.15

[State 13320, Anim]
type = PalFX
trigger1 = FVar(0) < 0.25
add = Floor(-(FVar(0) - 0.25)/0.1 * 64), 0, Floor(-(FVar(0) - 0.25)/0.1 * 128)
time = 1

[State 13381, fef]
type = AssertSpecial
trigger1 = 1
flag = noshadow 

[State 13381, fef]
type = VarSet
trigger1 = !Time
v = 0
value = 0

[State 13381, fef]
type = VarSet
trigger1 = Root, Var(2)
trigger2 = Root, StateNo != 13300
v = 0
value = 1
persistent = 0

[State 13381, fef]
type = VarAdd
trigger1 = Var(0)
v = 0
value = 1

[State 13381, End]
type = Trans
trigger1 = Var(0)
trans = addalpha
alpha = 256 - Var(0) * 16, Var(0) * 16

[State 13381, End]
type = DestroySelf
trigger1 = Var(0) >= 16


; Characters
[Statedef 13382]
type = A
physics = N
movetype = I
ctrl = 0
anim = 13381
velset = 0, 0
sprpriority = 5

[State 13320, Anim]
type = ChangeAnim
trigger1 = !Time
value = 13369 + Parent, NumHelper(13382)


[State 13320, Anim]
type = AngleDraw
trigger1 = Time = [0, 8]
scale = 0.4 + 0.04 * (8 - Time), 0.4 + 0.02 * (8 - Time)


[State 13320, Anim]
type = Trans
trigger1 = Time = [0, 8]
trans = addalpha
alpha = Time * 32, 256 - Time * 32


[State 13320, Anim]
type = AngleDraw
trigger1 = Time > 8
scale = 0.4, 0.4

[State 13320, Anim]
type = Trans
trigger1 = Time > 8
trans = addalpha
alpha = 256, 0


[State 13381, fef]
type = AssertSpecial
trigger1 = 1
flag = noshadow 

[State 13381, fef]
type = VarSet
trigger1 = !Time
v = 0
value = 0

[State 13381, fef]
type = VarSet
trigger1 = Root, Var(2)
trigger2 = Root, StateNo != 13300
v = 0
value = 1
persistent = 0

[State 13381, fef]
type = VarAdd
trigger1 = Var(0)
v = 0
value = 1

[State 13381, End]
type = Trans
trigger1 = Var(0)
trans = addalpha
alpha = 256 - Var(0) * 16, Var(0) * 16

[State 13381, End]
type = DestroySelf
trigger1 = Var(0) >= 16

