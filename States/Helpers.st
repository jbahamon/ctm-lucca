;===========================================================================
; Helpers and other States
;===========================================================================

;SuperPause Helper
[Statedef 7000]
type = A
velset = 0, 0
anim = 7200
sprpriority = 5

[State 7000, Var]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 8520, Assert]
type = assertspecial
trigger1 = Time < 100
flag = nobardisplay

[State 7000, Var]
type = AssertSpecial
trigger1 = Anim = 7200
flag = invisible

[State 7000, Var]
type = VarSet
trigger1 = !Time
var(0) = (Parent, StateNo = 2100)

[State 7000, Var]
type = VarSet
trigger1 = !Time
trigger1 = var(1) := (Root, PalNo = 12)
var(1) = IfElse(Root, StateNo = 13000, 30, IfElse(Root, StateNo = 13100, 100 , IfElse(Root, StateNo = 13200, 30, 30)))

[State 7000, Pal Down]
type = BGPalFX
trigger1 = time <= 10 && !Var(1)
time = 1
mul = 256 , 256 -floor(25.6 * time), 256 -floor(25.6 * time)
color = 256 -floor(25.6 * time)

[State 7000, Pal Down]
type = BGPalFX
trigger1 = time <= 10 && Var(1)
time = 1
mul = 256 - floor(6.4 * time),256 - floor(6.4 * time),256 - floor(6.4 * time)
color = 256 -floor(25.6 * time)


[State 7000, Pal Static]
type = BGPalFX
trigger1 = (time = [11, 39]) && !Var(1)
time = 1
mul = 256 , 0, 0
color = 0


[State 7000, Pal Static]
type = BGPalFX
trigger1 = (Time = [11, Var(1)]) && Var(1)
time = 1
mul = 192, 192, 192
color = 0


[State 7000, Pal Up]
type = BGPalFX
trigger1 = time >= 40
trigger1 = !Var(1) 
time = 1
mul = 256, ceil(51.2 * (time - 40)), ceil(51.2 * (time - 40))
color = floor(51.2 * (time - 40))

[State 7000, Pal Up]
type = BGPalFX
trigger1 = time = [Var(1),(Var(1) + 10)]
trigger1 = Var(1) 
time = 1
mul = 192+ ceil(6.4 * (time - Var(1))),192+ ceil(6.4 * (time - Var(1))),192+ ceil(6.4 * (time - Var(1)))
color = floor(25.6 * (time - Var(1)))

[State 7000, Pal None]
type = BGPalFX
trigger1 = (Time > (Var(1) + 10)) && Var(1)
time = 1
add = 0,0,0
mul = 256, 256, 256

[State 7000, End]
type = DestroySelf
trigger1 = Time >= IfElse(!Var(1), 45, (Var(1) + 10))


[State 7000, End]
type = DestroySelf
trigger1 = Root, StateNo = 13001

;Pulsing Portrait
[Statedef 7001]
type = A
movetype = I
physics = N
velset = 0,0
anim = 13999
sprpriority = 999

[State 8520, Pos]
type = VarSet
trigger1 = !Time
v = 1
value = IfElse(Root, StateNo = 13000, 1, IfElse(Root, StateNo = 13100, 2, IfElse(Root, StateNo = 13200, 3, 4)))

[State 8520, Pos]
type = ChangeAnim
trigger1 = !Time
value = IfElse(Var(1) = 1, 13998, IfElse(Var(1) = 2, 13997, IfElse(Var(1) = 3, 13999, 13995)))

[State 8520, Pos]
type = VarSet
trigger1 = !Time
trigger1 = Root, StateNo = 13300
v = 1
value = 4

[State 8520, Pos]
type = ChangeAnim
trigger1 = !Time
trigger1 = Root, StateNo = 13300
value = 13994


[State 8520, Pos]
type = ChangeAnim
trigger1 = !Time
trigger1 = Root, StateNo = 13400
value = 13989

[State 8520, Pos]
type = ChangeAnim
trigger1 = !Time
trigger1 = Root, StateNo = 13100 && Root, Var(1)
value = 13996

[State 8520, Pos]
type = ChangeAnim
trigger1 = !Time
trigger1 = Root, Var(59)
trigger1 = Anim = [13996, 13997]
value = Anim - 4

[State 8520, Pos]
type = ChangeAnim
trigger1 = !Time
trigger1 = Root, Var(59)
trigger1 = Anim = [13998, 13999]
value = Anim - 8

[State 8520, Pos]
type = ChangeAnim
trigger1 = !Time
trigger1 = Root, Var(59)
trigger1 = Anim = 13995
value = 13991


[State 8520, Pos]
type = Turn
trigger1 = facing != 1

[State 8520, Pos]
type = PosAdd
trigger1 = 1
X = 160 - ScreenPos X
Y = Ceil((1.3333333 * gameheight / gamewidth) * 120) - ScreenPos Y

[State 8520, Scale]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 8520, Scale]
type = VarSet
trigger1 = !Time
var(0) = 24 + 70 * (Var(1) = 2)

[State 8520, Trans]
type = Trans
trigger1 = Time < 8
trans = addalpha
alpha = Time * 32, 256

[State 8520, Trans]
type = Trans
trigger1 = Time = [8, Var(0)]
trans = addalpha
alpha = 256, 256

[State 8520, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.5 + IfElse(Time > Var(0), (Time - Var(0))/10.0, 0), 0.5 + IfElse(Time > Var(0), (Time - Var(0))/10.0, 0)

[State 8520, Scale]
type = Trans
trigger1 = Time >= Var(0)
trans = addalpha
alpha = 256 - 16 * (Time - Var(0)), 256

[State 8520, Safety]
type = DestroySelf
trigger1 = Time >= (Var(0) + 16)

[State 7000, End]
type = DestroySelf
trigger1 = Var(1) = 1
trigger1 = Root, StateNo = 13001

;Protect Super Armor
[Statedef 11777]
Type = A
MoveType = H
Physics = N
ctrl=0
sprpriority = 3

[State 3510, Elem]
Type = ChangeAnim
trigger1 = root, selfanimexist(Root, Anim)
trigger1 = ifelse((root, movetype = H), (root, stateno = [5000, 5300]), 1)
trigger1 = Anim != Root, Anim || AnimElemNo(0) != Root, AnimElemNo(0)
Value = Root, Anim
Elem = Root, AnimElemNo(0)
ignorehitpause = 1

[State 775, customstatesanim]
type = AssertSpecial
trigger1 = root, movetype = H && (root, stateno != [5000, 5300])
trigger2 = !root, selfanimexist(root, anim)
flag = invisible
ignorehitpause = 1
[State 11777: Pal]
type = RemapPal
trigger1 = !Time
source = 1, 1
dest = 2, (Parent, palno)

[State 11777]
Type=VarSet
Trigger1=var(15)=0
Trigger2=fvar(15)=0
fvar(15)=1

[State 11777]
Type=VarSet
Trigger1=var(15)=0
var(16)=0

[State 11777]
Type=VarAdd
Trigger1=var(15)>0
var(15)=-1

[State 11777]
Type=VarSet
Trigger1=time=0
var(15)=27

[State 11777]
Type=VarAdd
Trigger1=time=0
var(16)=GetHitVar(Damage)

[State 11777]
Type=VarSet
Trigger1=time=0
Trigger1=var(16)>=125
Trigger1=GetHitVar(Damage)>=20
fvar(15)=fvar(15)*0.8

[State 11777]
Type=VarSet
Trigger1=fvar(15)<0.05
fvar(15)=0.05

[State 6965]
Type=Assertspecial
Trigger1=1
flag=noshadow
ignorehitpause=1

[State 6965]
Type=Trans
Trigger1=1
trans = addalpha
alpha = floor(128 * (1 + Sin(Pi *(GameTime)/30.0))), 256 - floor(128 * (1 + Sin(Pi *(GameTime)/30.0)))
ignorehitpause=1

[State 6965]
type=AssertSpecial
trigger1 = Parent, StateNo = 2020 || Parent, StateNo = 2010 || Parent, StateNo = 2000
flag = Invisible
ignorehitpause=1

[State 6965, HitOverride]
Type = NotHitBy
Trigger1 = 1
value = , AT
Time = 1
ignorehitpause=1

[State 6965, HitOverride]
Type = HitOverride
Trigger1 = 1
Attr = SCA, AA, AP
StateNo = 11777
Time = 1
ForceAir = 0
ignorehitpause=1

[State 6965, BindToRoot]
Type = BindToRoot
Trigger1 = 1
Time = 1
Facing = 1
ignorehitpause=1

[State 6966, VarSet]
Type = VarSet
Trigger1 = Time = 0
FV = 1
Value = GetHitVar(Damage)*fvar(15)
ignorehitpause=1

[State 6966, ParentVarAdd]
Type = ParentVarAdd
Trigger1 = Time = 0
fV = 29
Value = fVar(1)
ignorehitpause=1

[State 6965, DestroySelf] ; The opposite of the conditions for creating the helper, this is for when the armor needs to be removed.
Type = DestroySelf
Trigger1 = !(Root, Var(21))
ignorehitpause=1


;Umbran Climax Effect
[Statedef 11778]
Type = A
MoveType = H
Physics = N
ctrl=0
sprpriority = 3

[State 3510, Elem]
Type = ChangeAnim
trigger1 = root, selfanimexist(Root, Anim)
trigger1 = ifelse((root, movetype = H), (root, stateno = [5000, 5300]), 1)
trigger1 = Anim != Root, Anim || AnimElemNo(0) != Root, AnimElemNo(0)
Value = Root, Anim
Elem = Root, AnimElemNo(0)
ignorehitpause = 1

[State 775, customstatesanim]
type = AssertSpecial
trigger1 = root, movetype = H && (root, stateno != [5000, 5300])
trigger2 = !root, selfanimexist(root, anim)
flag = invisible
ignorehitpause = 1

[State 11777: Pal]
type = RemapPal
trigger1 = !Time
source = 1, 1
dest = 2, (Parent, palno) + Parent, Var(59)

[State 6965]
Type=Assertspecial
Trigger1=1
flag=noshadow
ignorehitpause=1

[State 6965]
Type=Trans
Trigger1=1
trans = addalpha
alpha = floor(128 * (1 + Sin(Pi *(GameTime)/10.0))), 256 - floor(128 * (1 + Sin(Pi *(GameTime)/10.0)))
ignorehitpause=1

[State 6965, HitOverride]
Type = NotHitBy
Trigger1 = 1
value = SCA, AA, AP, AT
Time = 1
ignorehitpause=1

[State 6965, BindToRoot]
Type = BindToRoot
Trigger1 = 1
Time = 1
Facing = 1
ignorehitpause=1

[State 6965, DestroySelf] ; The opposite of the conditions for creating the helper, this is for when the armor needs to be removed.
Type = DestroySelf
Trigger1 = !(Root, Var(21))
ignorehitpause=1


;Running flowers
[Statedef 17300]
type = S
movetype = I
physics = N
anim = 17300
velset = 0,0
sprpriority = 3

[State 17300, Turn]
type = Turn
trigger1 = !Time
trigger1 = Random % 2

[State 17300, Turn]
type = VarSet
trigger1 = !Time
var(0) = 6 + (Random % 4)

[State 17300, Anim]
type = ChangeAnim
trigger1 = !Time
value = 17300 + Random % 3

[State 17300, Scale]
type = AngleDraw
trigger1 = Time = [0, Var(0) + 1]
scale = 1, (Time + 1.0)/Var(0)

[State 17300, Fade]
type = Trans
trigger1 = Time = [Var(0) + 1, Var(0) + 9]
trans = addalpha
alpha = 256 - 32 * (Time - 5), 32 * (Time - 5)

[State 17300, End]
type = DestroySelf
trigger1 = Time >= (Var(0) + 10)

