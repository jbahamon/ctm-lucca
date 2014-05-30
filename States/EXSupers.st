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
trigger1 = AnimElemTime(1) <= 8
add = 256 - 32 * AnimElemTime(1), 64 - 8 * AnimElemTime(1), 256 - 32 * AnimElemTime(1)
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
X = Cos(Var(2) * Pi / 180.0) * (Var(1)/100.0) * (24*Time - Time*Time)/2.0
Y = Sin(Var(2) * Pi / 180.0) * (Var(1)/100.0) * (24*Time - Time*Time)/2.0

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

