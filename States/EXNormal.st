;===========================================================================
; Standing Moves
;===========================================================================

;---------------------------------------------------------------------------
; P
[Statedef 15002]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15002 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelAdd
trigger1 = AnimElem = 2
X = 1.5

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,4
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -20
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7302
ID = 15002
pos = 10, -8
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15002, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Light
damage    = 12
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = S7400
sparkxy = -10, -15
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 25
ground.velocity = .5
air.velocity = .5,-.5
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 0
var(25) = 1
persistent = 0

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(4) = 3
var(25) = 2
persistent = 0
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; K
[Statedef 15003]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15003 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelAdd
trigger1 = AnimElem = 2
X = 1.5


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,6
channel =  0


[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 30, -35
ownpal = 1


[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7308
ID = 15002
pos = 15, -15
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15002, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 15
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7400
sparkxy = -10, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = .5
air.velocity = .5,-.5
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 6
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1


[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(4) >= 2
var(25) = 2
ignorehitpause = 1


[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PP
[Statedef 15004]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15004 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,6
channel =  0


[State 2010, NHB]
type = VelAdd
trigger1 = AnimElem = 2
X = 2

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -30
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7304
ID = 15002
pos = 14, -6
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15004, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 12
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -12, -13
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 25
ground.velocity = .5
air.velocity = .5,-.5
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) = 0
var(25) = 1
ignorehitpause = 1
persistent = 0

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(4) >= 4
var(25) = 2
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PK
[Statedef 15005]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15005 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelAdd
trigger1 = AnimElem = 2
X = 2

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,12
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 30, -28
ownpal = 1


[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7308
ID = 15002
pos = 13, -13
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15005, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 15
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -18
hitsound   = S7020,1
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15005, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15005, ComboVar]
type = VarSet
trigger1 = AnimElem = 3
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15005, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; KK
[Statedef 15007]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15007 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelAdd
trigger1 = !Time
X = 2

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,5
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 30, -15
ownpal = 1


[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7308
ID = 15002
pos = 15, -15
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15002, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Light
damage    = 12
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7400
sparkxy = -10, -15
hitsound   = S7020,1
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = .5
air.velocity = .5,-.5
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 0
var(25) = 1
ignorehitpause = 1
persistent = 0

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(4) >= 0
var(25) = 2
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPP
[Statedef 15008]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15008 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,5
channel =  0

[State 2010, NHB]
type = VelAdd
trigger1 = AnimElem = 2
X = 2.5

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -7, -28
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7308
ID = 15002
pos = 17, -15
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15008, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 12
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -15
hitsound   = S7020,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = .5
air.velocity = .5,-.5
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(2) = 0
var(25) = 1
ignorehitpause = 1
persistent = 0

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 0
var(25) = 2
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPK
[Statedef 15009]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15009 ;Change animation (Def: no change)
velset = 0,0
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,2
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15155
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 15, 0
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7304
ID = 15002
pos = 14, 0
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15009, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Back
damage    = 15
guardflag = LA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -7
hitsound   = S7020,1
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 23
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = 0.1
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
p1sprpriority = 1
p2sprpriority = -1
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15009, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15009, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) = 6
trigger2 = MoveHit
var(25) = 1
persistent = 0
ignorehitpause = 1


[State 15009, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
var(25) = 2
persistent = 0
ignorehitpause = 1


[State 15009, ComboVar]
type = VarSet
trigger1 = AnimElemTime(4) >= 7
var(25) = 0
ignorehitpause = 1

[State 15009, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PKP
[Statedef 15010]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
velset = 0,0
anim = 15010 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelAdd
trigger1 = AnimElem = 3
X = 2

[State 15010, Punch]
type = PosSet
trigger1 = !Time
Y = 0
ignorehitpause = 0
persistent = 0

[State 15010, Punch]
type = ChangeAnim
trigger1 = !Time
trigger1 = PrevStateNo = 15505
value = 15010
elem = 2
persistent = 0


[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,8
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -26
ownpal = 1

[State 15010, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 12
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -18
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
p1sprpriority = 1
p2sprpriority = -1
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15010, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15010, ComboVar]
type = VarSet
trigger1 = AnimElem = 5
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; KKK
[Statedef 15015]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15015 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,0
channel =  0


[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 30, -25
ownpal = 1


[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
anim = 7308
ID = 15002
pos = 15, -15
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15002, Hit]
type = HitDef
trigger1 = !Time
trigger2 = AnimElem = 6
trigger3 = AnimElem = 11
attr = S, NA
animtype  = Hard
damage    = 6
guardflag = MA
hitflag = MAF
pausetime = 2,2
sparkno = S7401
sparkxy = -10, -15
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = IfElse(AnimElemNo(0) > 10, -3, .5), IfElse(AnimElemNo(0) > 10, -3, 0)
air.velocity = IfElse(AnimElemNo(0) > 10, -3, .5),-.5
forcenofall = AnimElemNo(0) < 10
fall = IfElse(AnimElemNo(0) > 10, 1, 0)
air.fall = IfElse(AnimElemNo(0) > 10, 1, 0)
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 6
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPPP
[Statedef 15016]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15016 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,2
channel =  0


[State 2010, NHB]
type = VelAdd
trigger1 = AnimElem = 2
X = 2.5

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -20
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7302
ID = 15002
pos = 15, -8
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15016, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 12
guardflag = HA
hitflag = MAF 
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = .5
air.velocity = .5,-.5
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
p1sprpriority = 1
p2sprpriority = -1
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15016, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15016, ComboVar]
type = VarSet
trigger1 = AnimElem = 2
var(25) = 1
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 2
var(25) = 2
persistent = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) = 12
var(25) = 0
ignorehitpause = 1


[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPPK
[Statedef 15017]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
velset = 0,0
anim = 15017 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,4
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 30, -15
ownpal = 1


[State 15017, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Hard
damage    = 15
guardflag = L
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, 0
hitsound   = S7020,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 30
air.hittime  = 40
ground.velocity = 0, -0.8
yaccel = 0.1
air.velocity =  0, -0.8
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
fall = 0
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7308
ID = 15002
pos = 15, -5
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15017, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15017, ComboVar]
type = VarSet
trigger1 = AnimElemTime(5) = 8
trigger2 = AnimElem = 5 && MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPKP
[Statedef 15018]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15018 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = VelSet
trigger1 = !Time
X = 2

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,2
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 15, 0
ownpal = 1

[State 15018, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 12
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15018, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15018, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPKK
[Statedef 15019]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
velset = 0,0
anim = 15019 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PosAdd
trigger1 = AnimElem = 2
X = 10

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,9
channel =  0

[State 15019, Stomp]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15155
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 20, 0
ownpal = 1

[State 15019, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Back
damage    = 15
guardflag = M
hitflag = MAF
pausetime = 20,20
sparkno = S7001
sparkxy = -5, -25
hitsound   = S7020,3
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 60
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = .05
forcenofall = 1
air.hittime  = 60
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15019, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15019, ComboVar]
type = VarSet
trigger1 = AnimElemTime(2) = 6
var(25) = 1
ignorehitpause = 1

[State 15019, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) = 4
var(25) = 2
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


; PPPPP
[Statedef 15032]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
velset = 0,0
anim = 15032 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,4
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElemNo(0) < 18
trigger1 = AnimElemNo(0) % 3 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -13 + (Random % 10), -35 + (Random % 15)
ownpal = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem  = 18
value = S8000,29
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 18
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -28
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 3 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
anim = 7308
ID = 15002
pos = 13, -13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = IfElse((AnimElemNo(0) - 2)% 4, 1, -1)
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

[State 15033, Hit]
type = HitDef
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 3 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
attr = S, NA
animtype  = Medium
damage    = 2
guardflag = M
hitflag = MAF
pausetime = 0,12
sparkno = S7400
sparkxy = -6 + Random % 6, -15 + Random % 6
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
forcenofall = 1
ground.cornerpush.veloff = 0;
p1sprpriority = 1
p2sprpriority = -1
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 3, 7)), IfElse(Var(21) > 0, 0, 1)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15033, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15033, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPPPK
[Statedef 15033]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15033 ;Change animation (Def: no change)
velset = 0,0
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,11
channel =  0


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 18
value = S8001,12
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 35 + (Random % 10), -42 + (Random % 26)
ownpal = 1

[State 15019, Stomp]
type = helper
trigger1 = AnimElem = 20
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 50, -20
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
anim = 7308
ID = 15002
pos = 13, -13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = IfElse((AnimElemNo(0) - 2)% 4, 1, -1)
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

[State 15033, Hit]
type = HitDef
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
attr = S, NA
animtype  = Medium
damage    = 2
guardflag = M
hitflag = MAF
pausetime = 0,12
sparkno = S7400
sparkxy = -6 + Random % 6, -15 + Random % 6
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
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

[State 15033, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15033, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPPKP
[Statedef 15034]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15034 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelAdd
trigger1 = AnimElem = 2
X = 2

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,2
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 10 , 0
ownpal = 1

[State 15018, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 12
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = 0.1
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
p1sprpriority = 1
p2sprpriority = -1
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15018, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15018, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPPKK
[Statedef 15035]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
velset = 0,0
anim = 15035 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,6
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 27, -18
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7308
ID = 15002
pos = 15, -5
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15035, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Hard
damage    = 15
guardflag = L
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, 0
hitsound   = S7020,2
guardsound = 6,0
ground.type = Trip
ground.slidetime = 0
ground.hittime  = 20
snap = 10,0
ground.velocity = 0, -2
air.velocity = 0, -2
yaccel = .15
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
fall = 0
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15035, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15035, ComboVar]
type = VarSet
trigger1 = AnimElem = 5
var(25) = 1
ignorehitpause = 1


[State 15035, ComboVar]
type = VarSet
trigger1 = AnimElemTime(5) = 12
var(25) = 2
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPKKK
[Statedef 15039]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15039 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelAdd
trigger1 = AnimElem = 2
X = 2


[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8001,3
channel =  0


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElemTime(2) = 10
value = S8001,10
channel =  0

[State 15019, Stomp]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 80, -40
ownpal = 1

[State 15039, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 15
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15039, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15039, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPPPPK
[Statedef 15065]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15065 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8000,15
channel =  0

[State 15019, Stomp]
type = helper
trigger1 = AnimElemNo(0) >= 5
trigger1 = Pos Y > -40
helpertype = normal
stateno = 15155
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 20, Floor(-pos y)
ownpal = 1
persistent = 0

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * 0.1

[State 1250, slow]
type = statetypeset
trigger1 = AnimElemNo(0) > 2
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = !Time
Y = -1
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = AnimElem = 5
Y = 6.5
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 7305
ID = 15002
pos = 10, -4
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15502, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 15
guardflag = HA
hitflag = MAFD
pausetime = 12,12
sparkno = S7401
sparkxy = -10, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = .5,-.5
p1sprpriority = 1
p2sprpriority = -1
fall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18

[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1


[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(0) = 0
ignorehitpause = 1


[State 15502, ComboVar]
type = VarAdd
trigger1 = StateType = S
var(0) = 1
ignorehitpause = 1

[State 15502, ComboVar]
type = ChangeAnim
trigger1 = Var(0) = 15
value = 121
ignorehitpause = 1

[State 15502, ComboVar]
type = ChangeState
trigger1 = Var(0) > 20
value = 0
ctrl = 1
ignorehitpause = 1

; PPPKKK
[Statedef 15071]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15071 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,13
channel =  0

[State 15019, Stomp]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 20, -40
ownpal = 1

[State 15071, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 15
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15071, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15071, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; Horizontal Punch 
[Statedef 15105]
type = S
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

[State 15105, StateVar]
type = VarSet
trigger1 = !Time
v = 5
value = IfElse((Root, StateNo = 15010 || (Root, StateNo = 15032 && Root, AnimElemNo(0) > 17) || (Root, StateNo = 15532 && Root, AnimElemNo(0) > 17)), 1, 0)
ignorehitpause = 1

[State 15105, Dommoge]
type = VarSet
trigger1 = !Time
fv = 0
value = IfElse(Var(5), 1, IfElse(Root, StateNo = 15032 || Root, StateNo = 15532, 0.2, 0.4))
ignorehitpause = 1



[State 1005, End]
type = VarSet
trigger1 = !Time
v = 0
value = Random % 2


[State 1005, End]
type = Sprpriority
trigger1 = 1
value = ifelse(var(0) > 0, 2, -2)


[State -3, Prevent Undergound Juggles]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-root, pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State 1001, Dampen]
Type = ParentVarset
trigger1 = Var(5)
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
stateno = 15106
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

[State 1005, Damage]
type = VarSet
trigger1 = !Time
v = 1
value = 60

[State 1005, Hit]
type = hitdef
trigger1 = !Time
priority = 4, Hit
attr = S, SA
damage = ceil(Var(1) * root, fvar(39) * fvar(0)), 4
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4 * (var(2) < 3), 6
hitsound = S7020,5
sparkno = -1
sparkxy = -10, 0
guard.sparkno = s7001
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = IfElse(Var(5), -3, 0.2),  IfElse(Var(5), -2, 0)
ground.cornerpush.veloff = 0
air.velocity = IfElse(Var(5), -3, 0.2), IfElse(Var(5), -4, 0)
guard.velocity = IfElse(Var(5), -5, -0.7)
fall = Var(5)
air.fall = Var(5)
fall.recover = !Var(5)
getpower = 0
givepower = 36, 36
envshake.time = Floor(18 * IfElse(Var(5), 1, 0.5))
envshake.freq = 120
envshake.ampl = Floor(6 * IfElse(Var(5), 1, 0.5))
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
value = 15106

; Horizontal Punch GetHit
[Statedef 15106]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority =0

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

[State 1006, NHB]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
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

; Vertical Punch 
[Statedef 15115]
type = S
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

[State -3, Prevent Undergound Juggles]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State 1001, Dampen]
Type = ParentVarset
Trigger1 = MoveHit && NumTarget
trigger1 = !(target, time) && target, movetype = H
fvar(39) = parent, Fvar(39)*0.85
persistent = 0
ignorehitpause = 1

[State 15105, StateVar]
type = VarSet
trigger1 = !Time
v = 5
value = Root, StateNo
ignorehitpause = 1


[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 15116
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
value = 11115

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
damage = ceil(50 * root, fvar(39)), 4
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4 * (var(2) < 3), 6
sparkno = -1
sparkxy = -10, 0
hitsound = S7020,5
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, -5
ground.cornerpush.veloff = 0
air.velocity = 0, -5
yaccel = 0.2
guard.velocity = -2
fall = 0
forcenofall = 1
air.fall = 0
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
value = 15116

; Vertical Punch GetHit
[Statedef 15116]
type = S
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
value = 11116
elem = Var(0)
ignorehitpause = 1

[State 1006, NHB]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
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

; Vertical Punch (Inv)
[Statedef 15125]
type = S
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

[State -3, Prevent Undergound Juggles]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State 1001, Dampen]
Type = ParentVarset
Trigger1 = MoveHit && NumTarget
trigger1 = !(target, time) && target, movetype = H
fvar(39) = parent, Fvar(39)*0.85
persistent = 0
ignorehitpause = 1

[State 15105, StateVar]
type = VarSet
trigger1 = !Time
v = 5
value = Root, StateNo
ignorehitpause = 1


[State 1005, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 15126
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
value = 11125

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
damage = ceil(50 * root, fvar(39)), 4
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4 * (var(2) < 3), 6
sparkno = -1
sparkxy = -10, 0
hitsound = S7020,5
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = 0, 5
ground.cornerpush.veloff = 0
air.velocity = 0, 5
guard.velocity = -2
fall = 1
forcenofall = 1
air.fall = 0
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
value = 15126

; Vertical Punch (Inv) GetHit
[Statedef 15126]
type = S
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
value = 11126
elem = Var(0)
ignorehitpause = 1

[State 1006, NHB]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
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


; Vertical Kick 
[Statedef 15155]
type = S
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

[State -3, Prevent Undergound Juggles]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State 15105, StateVar]
type = VarSet
trigger1 = !Time
v = 5
value = IfElse((Root, StateNo = 15565) || (Root, StateNo = 15065), 1, 0)
ignorehitpause = 1

[State 15105, Dommoge]
type = VarSet
trigger1 = !Time
fv = 0
value = IfElse(Var(5), 1, IfElse(Root, StateNo = 15032 || Root, StateNo = 15532, 0.2, 0.4))
ignorehitpause = 1

[State 1001, Dampen]
Type = ParentVarset
trigger1 = Var(5)
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
stateno = 15156
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
damage = ceil(60 * root, fvar(39) * fvar(0)), 4
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4, 6
sparkno = -1
sparkxy = -10, 0
hitsound = S7020,5
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime  = 35
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = IfElse(Var(5), 2, .05)
forcenofall = 1
air.hittime  = 35
guard.velocity = -3
fall = Var(5)
air.fall = Var(5)
getpower = 0
givepower = 36, 36
envshake.time = Floor(18 * IfElse(Var(5), 1, 0.5))
envshake.freq = 120
envshake.ampl = Floor(6 * IfElse(Var(5), 1, 0.5))
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
value = 15156

; Vertical Kick GetHit
[Statedef 15156]
type = S
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

[State 1006, NHB]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - Time * 16, Time * 16
ignorehitpause = 1

[State 1006, End]
type = DestroySelf
trigger1 = Time > 16

; Horizontal Kick
[Statedef 15165]
type = S
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

[State -3, Prevent Undergound Juggles]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1


[State 15105, StateVar]
type = VarSet
trigger1 = !Time
v = 5
value = 0
ignorehitpause = 1

[State 15105, StateVar]
type = VarSet
triggerall = !Time
trigger1 = Root, StateNo = 15039 
trigger2 = (Root, StateNo = 15033 && Root, AnimElemNo(0) > 18)
trigger3 = (Root, StateNo = 15533 && Root, AnimElemNo(0) > 18)
trigger4 = Root, StateNo = 15071 
trigger5 = Root, StateNo = 15571
trigger6 = Root, StateNo = 15209
trigger7 = (Root, StateNo = 15217 && Root, AnimElemNo(0) > 18)
trigger8 = (Root, StateNo = 15717 && Root, AnimElemNo(0) > 18)
v = 5
value = 1
ignorehitpause = 1

[State 15105, Dommoge]
type = VarSet
trigger1 = !Time
fv = 0
value = IfElse(Var(5), 1, IfElse(Root, StateNo = 15033 || Root, StateNo = 15533, 0.2, 0.4))
ignorehitpause = 1

[State 1001, Dampen]
Type = ParentVarset
trigger1 = Var(5)
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
stateno = 15166
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
value = 11165

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
damage = ceil(65 * root, fvar(39) * fvar(0)), 4
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4 * (var(2) < 3), 6
sparkno = -1
sparkxy = -10, 0
hitsound = S7020,5
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime = 16* IfElse(!Var(5), 2, 1)
ground.velocity = IfElse(Var(5), -3, 0.5), IfElse(Var(5), -2, -0.4)
ground.cornerpush.veloff = 0
air.velocity = IfElse(Var(5), -3, 0.5), IfElse(Var(5), -4, 0)
guard.velocity = IfElse(Var(5), -5, -0.7)
fall = Var(5)
air.fall = Var(5)
getpower = 0
givepower = 36, 36
envshake.time = Floor(18 * IfElse(Var(5), 1, 0.5))
envshake.freq = 120
envshake.ampl = Floor(6 * IfElse(Var(5), 1, 0.5))
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
trigger1 = AnimElemTime(7) >= 5
value = 15166

; Horizontal Kick GetHit
[Statedef 15166]
type = S
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

[State 1006, NHB]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 11004, Shake]
type = ChangeAnim
trigger1 = 1
value = 11166
elem = Var(0)
ignorehitpause = 1

[State 1006, NHB]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
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


; Vertical Kick (Inv)
[Statedef 15175]
type = S
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

[State -3, Prevent Undergound Juggles]
type= targetbind
trigger1= movehit=1
trigger1= numtarget=1 && numenemy
trigger1= (target,time<=1) && (target,ID=enemynear,ID); this is just to prevent Simul issues as usual
trigger1= !(target,hitshakeover) && (target, hitfall) && (target, pos y>0)
pos= ceil(p2dist x), ceil(-pos y); keeps P2 at the same horizontal distance, but resets his Y position
ignorehitpause= 1

[State 15105, StateVar]
type = VarSet
trigger1 = !Time
v = 5
value = IfElse((Root, StateNo = 15565) || (Root, StateNo = 15065), 1, 0)
ignorehitpause = 1

[State 15105, Dommoge]
type = VarSet
trigger1 = !Time
fv = 0
value = IfElse(Var(5), 1, IfElse(Root, StateNo = 15032 || Root, StateNo = 15532, 0.2, 0.4))
ignorehitpause = 1

[State 1001, Dampen]
Type = ParentVarset
trigger1 = Var(5)
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
stateno = 15176
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
value = 11175

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
damage = ceil(60 * root, fvar(39) * fvar(0)), 4
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4, 6
sparkno = -1
sparkxy = -10, 0
hitsound = S7020,5
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime  = 35
ground.velocity = 0, -5
air.velocity = 0, -5
yaccel = 0.2
forcenofall = 1
air.hittime  = 35
guard.velocity = -3
fall = 0
air.fall = 0
getpower = 0
givepower = 36, 36
envshake.time = Floor(18 * IfElse(Var(5), 1, 0.5))
envshake.freq = 120
envshake.ampl = Floor(6 * IfElse(Var(5), 1, 0.5))
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
value = 15176

; Vertical Kick Inv GetHit
[Statedef 15176]
type = S
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
value = 11176
elem = Var(0)
ignorehitpause = 1

[State 1006, NHB]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - Time * 16, Time * 16
ignorehitpause = 1

[State 1006, End]
type = DestroySelf
trigger1 = Time > 16

; -P
[Statedef 15202]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15202 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 10, 0
ownpal = 1

[State 1000, Push]
type = VelSet
trigger1 = animelem = 2
X = 2.5

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,4
channel =  0

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7302
ID = 15002
pos = 3, -38
postype = p1  ;p2,front,back,left,right
facing = 1
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

[State 15002, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Light
damage    = 12
guardflag = LA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0, -5
air.velocity = 0, -5
yaccel = 0.2
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = MoveHit
trigger1 = Command = "holdup"
value = 40
ctrl = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; -K
[Statedef 15203]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15203 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,6
channel =  0


[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15175
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 15, 0
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2 || !AnimTime
anim = 7308
ID = 15002
pos = 15, -15
postype = p1  ;p2,front,back,left,right
facing = 1
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
trigger1 = AnimElem = 3
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
trigger1 = AnimElem = 4
anim = 7308
ID = 15002
pos = -15,-30
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
trigger1 = AnimElem = 5
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


[State 15002, Hit]
type = HitDef
trigger1 = AnimElemTime(2) = 1
attr = S, NA
animtype  = Medium
damage    = 7
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7400
sparkxy = -10, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -4.2
air.velocity = 0, -4
yaccel = 0.25
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15002, ComboVar]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
movetype = A
physics = N
ignorehitpause = 1


[State 15002, ComboVar]
type = VelSet
trigger1 = AnimElem = 2
Y = -4
ignorehitpause = 1

[State 15002, ComboVar]
type = VelMul
trigger1 = Vel Y != 0
Y = 0.95

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !Time
var(0) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !Time
var(1) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !(Command = "holdc")
var(0) = 1
ignorehitpause = 1

[State 15502, ChangeAnim]
type = ChangeAnim 
trigger1 = !AnimTime
trigger1 = !Var(0)
trigger1 = Var(1) < 2
trigger1 = (Var(1) := (Var(1) + 1))
value = 15203
elem = 2


[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = MoveHit


; P-P
[Statedef 15204]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15204 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElemTime(2) = 3
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 10, 0
ownpal = 1

[State 1000, Push]
type = VelSet
trigger1 = animelem = 2
X = 2.5

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,4
channel =  0

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7302
ID = 15002
pos = 3, -38
postype = p1  ;p2,front,back,left,right
facing = 1
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

[State 15002, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Light
damage    = 12
guardflag = LA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0, -5
air.velocity = 0, -5
yaccel = 0.2
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = MoveHit
trigger1 = Command = "holdup"
value = 40
ctrl = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


; P-K
[Statedef 15205]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15205 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,6
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15175
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 15, 0
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2 || !AnimTime
anim = 7308
ID = 15002
pos = 15, -15
postype = p1  ;p2,front,back,left,right
facing = 1
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
trigger1 = AnimElem = 3
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
trigger1 = AnimElem = 4
anim = 7308
ID = 15002
pos = -15,-30
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
trigger1 = AnimElem = 5
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


[State 15002, Hit]
type = HitDef
trigger1 = AnimElemTime(2) = 1
attr = S, NA
animtype  = Medium
damage    = 7
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7400
sparkxy = -10, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -4.2
air.velocity = 0, -4
yaccel = 0.25
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15002, ComboVar]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
movetype = A
physics = N
ignorehitpause = 1


[State 15002, ComboVar]
type = VelSet
trigger1 = AnimElem = 2
Y = -4
ignorehitpause = 1

[State 15002, ComboVar]
type = VelMul
trigger1 = Vel Y != 0
Y = 0.95

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !Time
var(0) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !Time
var(1) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !(Command = "holdc")
var(0) = 1
ignorehitpause = 1

[State 15502, ChangeAnim]
type = ChangeAnim 
trigger1 = !AnimTime
trigger1 = !Var(0)
trigger1 = Var(1) < 2
trigger1 = (Var(1) := (Var(1) + 1))
value = 15203
elem = 2


[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = MoveHit

; K-P
[Statedef 15206]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15206 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 10, 0
ownpal = 1

[State 1000, Push]
type = VelSet
trigger1 = animelem = 2
X = 2.5

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,4
channel =  0

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7302
ID = 15002
pos = 3, -38
postype = p1  ;p2,front,back,left,right
facing = 1
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

[State 15002, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Light
damage    = 12
guardflag = LA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0, -5
air.velocity = 0, -5
yaccel = 0.2
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = MoveHit
trigger1 = Command = "holdup"
value = 40
ctrl = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PP-P
[Statedef 15208]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15208 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 15010, Punch]
type = helper
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15125
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 20, 0
ownpal = 1

[State 1000, Push]
type = VelSet
trigger1 = animelem = 2
X = 2.5

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,4
channel =  0

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7302
ID = 15002
pos = 3, -38
postype = p1  ;p2,front,back,left,right
facing = 1
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

[State 15002, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Light
damage    = 12
guardflag = LA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0, -5
air.velocity = 0, -5
yaccel = 0.2
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = MoveHit
trigger1 = Command = "holdup"
value = 40
ctrl = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


; PP-K
[Statedef 15209]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15209 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,5
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 30, -30
ownpal = 1


[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7308
ID = 15002
pos = 15, -15
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15002, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Light
damage    = 12
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7400
sparkxy = -10, -15
hitsound   = S7020,1
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -4
air.velocity = -4,-.5
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 6
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


; KK-P
[Statedef 15214]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15214 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,2
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 10, 0
ownpal = 1

[State 15018, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 12
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15018, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15018, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPP-P
[Statedef 15216]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15216 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,2
channel =  0

[State 2010, NHB]
type = VelSet
trigger1 = AnimElem = 2
X = 2

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 15, 0
ownpal = 1

[State 15018, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 12
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15018, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15018, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPP-K
[Statedef 15217]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15217 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,11
channel =  0

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 18
value = S8001,12
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 35 + (Random % 10), -42 + (Random % 26)
ownpal = 1

[State 15019, Stomp]
type = helper
trigger1 = AnimElem = 20
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 50, -40
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
anim = 7308
ID = 15002
pos = 13, -13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = IfElse((AnimElemNo(0) - 2)% 4, 1, -1)
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

[State 15033, Hit]
type = HitDef
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
attr = S, NA
animtype  = Medium
damage    = 2
guardflag = M
hitflag = MAF
pausetime = 0,12
sparkno = S7400
sparkxy = -6 + Random % 6, -15 + Random % 6
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 3, 7)), IfElse(Var(21) > 0, 0, 1)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15033, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15033, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPK-K
[Statedef 15219]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15219 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,6
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15175
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 15, 0
ownpal = 1


[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2 || !AnimTime
anim = 7308
ID = 15002
pos = 15, -15
postype = p1  ;p2,front,back,left,right
facing = 1
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
trigger1 = AnimElem = 3
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
trigger1 = AnimElem = 4
anim = 7308
ID = 15002
pos = -15,-30
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
trigger1 = AnimElem = 5
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


[State 15002, Hit]
type = HitDef
trigger1 = AnimElemTime(2) = 1
attr = S, NA
animtype  = Medium
damage    = 7
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7400
sparkxy = -10, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -4.2
air.velocity = 0, -4
yaccel = 0.25
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15002, ComboVar]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
movetype = A
physics = N
ignorehitpause = 1


[State 15002, ComboVar]
type = VelSet
trigger1 = AnimElem = 2
Y = -4
ignorehitpause = 1

[State 15002, ComboVar]
type = VelMul
trigger1 = Vel Y != 0
Y = 0.95

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !Time
var(0) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !Time
var(1) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !(Command = "holdc")
var(0) = 1
ignorehitpause = 1

[State 15502, ChangeAnim]
type = ChangeAnim 
trigger1 = !AnimTime
trigger1 = !Var(0)
trigger1 = Var(1) < 2
trigger1 = (Var(1) := (Var(1) + 1))
value = 15203
elem = 2


[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = MoveHit

; PPPP-P
[Statedef 15232]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15232 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 15010, Punch]
type = helper
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15125
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 20, 0
ownpal = 1

[State 1000, Push]
type = VelSet
trigger1 = animelem = 2
X = 2.5

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,4
channel =  0

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7302
ID = 15002
pos = 3, -38
postype = p1  ;p2,front,back,left,right
facing = 1
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

[State 15002, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Light
damage    = 12
guardflag = LA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0, -5
air.velocity = 0, -5
yaccel = 0.2
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = MoveHit
trigger1 = Command = "holdup"
value = 40
ctrl = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


; PPKK-P
[Statedef 15238]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15238 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 15010, Punch]
type = helper
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 10, 0
ownpal = 1

[State 1000, Push]
type = VelSet
trigger1 = animelem = 2
X = 2.5

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,4
channel =  0

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7302
ID = 15002
pos = 3, -38
postype = p1  ;p2,front,back,left,right
facing = 1
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

[State 15002, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Light
damage    = 12
guardflag = LA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 40
ground.velocity = 0, -5
air.velocity = 0, -5
yaccel = 0.2
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = MoveHit
trigger1 = Command = "holdup"
value = 40
ctrl = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; PPKK-K
[Statedef 15239]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15239 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,6
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15175
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 15, 0
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2 || !AnimTime
anim = 7308
ID = 15002
pos = 15, -15
postype = p1  ;p2,front,back,left,right
facing = 1
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
trigger1 = AnimElem = 3
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
trigger1 = AnimElem = 4
anim = 7308
ID = 15002
pos = -15,-30
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
trigger1 = AnimElem = 5
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


[State 15002, Hit]
type = HitDef
trigger1 = AnimElemTime(2) = 1
attr = S, NA
animtype  = Medium
damage    = 7
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7400
sparkxy = -10, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -4.2
air.velocity = 0, -4
yaccel = 0.25
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15002, ComboVar]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A
movetype = A
physics = N
ignorehitpause = 1


[State 15002, ComboVar]
type = VelSet
trigger1 = AnimElem = 2
Y = -4
ignorehitpause = 1

[State 15002, ComboVar]
type = VelMul
trigger1 = Vel Y != 0
Y = 0.95

[State 15002, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !Time
var(0) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !Time
var(1) = 0
ignorehitpause = 1

[State 15002, Time]
type = VarSet
trigger1 = !(Command = "holdc")
var(0) = 1
ignorehitpause = 1

[State 15502, ChangeAnim]
type = ChangeAnim 
trigger1 = !AnimTime
trigger1 = !Var(0)
trigger1 = Var(1) < 2
trigger1 = (Var(1) := (Var(1) + 1))
value = 15203
elem = 2


[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = MoveHit


; PPPKK-P
[Statedef 15270]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15270 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,2
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 10, 0
ownpal = 1

[State 15018, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 12
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15018, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15018, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


; AP
[Statedef 15502]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15502 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelMul
trigger1 = !Time
X = 0.5
Y = 0.1
persistent = 0

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,4
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -20
ownpal = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * IfElse(AnimElemNo(0) < 3 || MoveHit, 0.1, 0.5)
ignorehitpause = 1

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7302
ID = 15002
pos = 10, -8
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15502, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Light
damage    = 12
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = S7400
sparkxy = -10, -15
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -1, -0.1
air.velocity = -1,-0.1
yaccel = const(movement.yaccel) * 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
ID = 15502

[State 15502, ComboVar]
type = VarSet
trigger1 = NumTarget(15502)
fvar(0) = -(Pos Y - Target(15502), Pos Y)
ignorehitpause = 1
persistent = 0

[State 15516, ComboVar]
type = TargetBind
trigger1 = NumTarget(15502)
pos = Target(15502), Const(size.air.front) + 10, fvar(0)
ignorehitpause = 1
persistent = 0

[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15502, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 0
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1


[State 2010, NHB]
type = VelSet
trigger1 = MoveHit 
trigger2 = NumHelper(15000)
trigger2 = Helper(15000), MoveHit
X = 1
Y = -0.5 * (StateType = A)
ignorehitpause = 1
persistent = 0

[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = 1;!(StateType = A)

; AK
[Statedef 15503]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15503 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelMul
trigger1 = !Time
X = 0.3
Y = 0.3
persistent = 0

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,2
channel =  0


[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElemNo(0) >= 5
trigger1 = Pos Y > -40
helpertype = normal
stateno = 15155
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 20, Floor(-pos y)
ownpal = 1
persistent = 0

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * 0.1

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = !Time
Y = -1
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = AnimElem = 5
Y = 6.5
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 7305
ID = 15002
pos = 10, -4
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15502, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 15
guardflag = HA
hitflag = MAF
pausetime = 8,8
sparkno = S7401
sparkxy = -10, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5, 4
air.velocity = -.5, 4
fall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1


[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(0) = 0
ignorehitpause = 1


[State 15502, ComboVar]
type = VarAdd
trigger1 = StateType = S
var(0) = 1
ignorehitpause = 1

[State 15502, ComboVar]
type = ChangeAnim
trigger1 = Var(0) = 15
value = 121
ignorehitpause = 1

[State 15502, ComboVar]
type = ChangeState
trigger1 = Var(0) > 20
value = 0
ctrl = 1
ignorehitpause = 1


; APP
[Statedef 15504]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15504 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,6
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -30
ownpal = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * IfElse(AnimElemNo(0) < 3 || MoveHit, 0.1, 0.5)
ignorehitpause = 1

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7304
ID = 15002
pos = 14, -6
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15504, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 12
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -12, -13
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -0.5, -0.1
air.velocity = -0.5,-0.1
yaccel = const(movement.yaccel) * 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
ID = 15504

[State 15504, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15504, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15502, ComboVar]
type = VarSet
trigger1 = NumTarget(15504)
fvar(0) = -(Pos Y - Target(15504), Pos Y)
ignorehitpause = 1
persistent = 0

[State 15516, ComboVar]
type = TargetBind
trigger1 = NumTarget(15504)
pos = Target(15504), Const(size.air.front) + 10, fvar(0)
ignorehitpause = 1
persistent = 0

[State 2010, NHB]
type = VelSet
trigger1 = MoveHit 
trigger2 = NumHelper(15000)
trigger2 = Helper(15000), MoveHit
X = 1
Y = -0.5
ignorehitpause = 1
persistent = 0

[State 15504, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)

; APK
[Statedef 15505]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15505 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelMul
trigger1 = !Time
X = 0.3
Y = 0.3
persistent = 0

[State 2010, NHB]
type = TargetVelSet
trigger1 = !Time
trigger1 = NumTarget(15502)
ID = 15502
X = Target(15502), Vel X * 0.3
Y = Target(15502), Vel Y * 0.3
ignorehitpause = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,2
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 4
helpertype = normal
stateno = 15155
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 30, 25
ownpal = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * 0.1

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = !Time
Y = -1
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = AnimElem = 5
Y = 6.5
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 7305
ID = 15002
pos = 10, -4
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15502, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 15
guardflag = HA
hitflag = MAF
pausetime = 12,18
sparkno = S7401
sparkxy = -10, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5,5
air.velocity = -.5,5
fall = 0
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(0) = 0
ignorehitpause = 1


[State 15502, ComboVar]
type = VarAdd
trigger1 = StateType = S
var(0) = 1
ignorehitpause = 1

[State 15502, ComboVar]
type = ChangeAnim
trigger1 = Var(0) = 25
value = 121
ignorehitpause = 1

[State 15505, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15505, ComboVar]
type = VarSet
trigger1 = Var(0) = [0, 15]
var(25) = 1
ignorehitpause = 1

[State 15502, ComboVar]
type = ChangeState
trigger1 = Var(0) > 30
value = 0
ctrl = 1
ignorehitpause = 1


; APPP
[Statedef 15508]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15508 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,5
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -7, -28
ownpal = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * IfElse(AnimElemNo(0) < 3, 0.1, 0.5)

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7308
ID = 15002
pos = 17, -15
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15508, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 12
guardflag = MA
hitflag = MAF
pausetime = 12,18
sparkno = S7401
sparkxy = -5, -15
hitsound   = S7020,3
guardsound = 6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -0.3, -1
air.velocity = -0.3,-1
yaccel = const(movement.yaccel) * 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
ID = 15508

[State 15502, ComboVar]
type = VarSet
trigger1 = NumTarget(15508)
fvar(0) = -(Pos Y - Target(15508), Pos Y)
ignorehitpause = 1
persistent = 0

[State 15516, ComboVar]
type = TargetBind
trigger1 = NumTarget(15508)
pos = Target(15508), Const(size.air.front) + 10, fvar(0)
ignorehitpause = 1
persistent = 0

[State 15508, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15508, ComboVar]
type = VarSet
trigger1 = AnimElemTime(2) >= 0
var(25) = 1
ignorehitpause = 1

[State 15508, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 10
var(25) = 2
ignorehitpause = 1

[State 2010, NHB]
type = VelSet
trigger1 = MoveHit 
trigger2 = NumHelper(15000)
trigger2 = Helper(15000), MoveHit
X = 1
Y = -1 * (StateType = A)
ignorehitpause = 1
persistent = 0

[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)

; APPK
[Statedef 15509]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15509 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = TargetVelSet
trigger1 = !Time
trigger1 = NumTarget(15504)
ID = 15504
X = Target(15504), Vel X * 0.5
Y = Target(15504), Vel Y * 0.1
ignorehitpause = 1

[State 2010, NHB]
type = VelMul
trigger1 = !Time
X = 0.5
Y = 0.1
persistent = 0

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,2
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15155
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 30, 0
ownpal = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * 0.01

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 7304
ID = 15002
pos = 8, 3
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15509, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Back
damage    = 15
guardflag = LA
hitflag = MAF
pausetime = 12, 18
sparkno = S7401
sparkxy = -5, -7
hitsound   = S7020,1
guardsound = 6,0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 0, 1
air.hittime  = 20
air.velocity = 0, 1
yaccel = 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 2010, NHB]
type = VelSet
trigger1 = MoveHit 
trigger2 = NumHelper(15000)
trigger2 = Helper(15000), MoveHit
X = 0
Y = 0
ignorehitpause = 1
persistent = 0


[State 15509, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15509, ComboVar]
type = VarSet
trigger1 = AnimElem = 5
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15509, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = 1

; APPPP
[Statedef 15516]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15516 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,2
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -20
ownpal = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * 0.1

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 7302
ID = 15002
pos = 15, -8
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15516, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 12
guardflag = HA
hitflag = MAF 
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -0.1, -0.1
air.velocity = -0.1,-0.1
yaccel = const(movement.yaccel) * 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
ID = 15516

[State 15502, ComboVar]
type = VarSet
trigger1 = NumTarget(15516)
fvar(0) = -(Pos Y - Target(15516), Pos Y)
ignorehitpause = 1
persistent = 0

[State 15516, ComboVar]
type = TargetBind
trigger1 = NumTarget(15516)
pos = Target(15516), Const(size.air.front) + 10, fvar(0)
ignorehitpause = 1
persistent = 0

[State 15516, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15516, ComboVar]
type = VarSet
trigger1 = AnimElem = 3
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 2010, NHB]
type = VelSet
trigger1 = MoveHit 
trigger2 = NumHelper(15000)
trigger2 = Helper(15000), MoveHit
X = 0.1
Y = -0.1 * (StateType = A)
ignorehitpause = 1
persistent = 0

[State 15516, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)

; APPPK
[Statedef 15517]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15517 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
velset = 0,0
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = TargetVelSet
trigger1 = !Time
trigger1 = NumTarget(15508)
ID = 15508
X = -0.1
Y = 0
ignorehitpause = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,4
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 30, -15
ownpal = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * 0.05

[State 1250, slow]
type = statetypeset
trigger1 = (pos y > (-vel y) && vel y >= 0)
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 15517, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Hard
damage    = 15
guardflag = L
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, 0
hitsound   = S7020,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 30
air.hittime  = 40
ground.velocity = 0.1, -0.2
yaccel = 0.1
air.velocity =  0.1, -0.2
forcenofall = 1
fall = 0
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8
ID = 15519

[State 15502, ComboVar]
type = VarSet
trigger1 = NumTarget(15519)
fvar(0) = -(Pos Y - Target(15519), Pos Y)
ignorehitpause = 1
persistent = 0

[State 15516, ComboVar]
type = TargetBind
trigger1 = NumTarget(15519)
pos = Target(15519), Const(size.air.front) + 10, fvar(0)
ignorehitpause = 1
persistent = 0

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7308
ID = 15002
pos = 18, -15
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 2010, NHB]
type = VelSet
trigger1 = MoveHit 
trigger2 = NumHelper(15000)
trigger2 = Helper(15000), MoveHit
Y = 0
ignorehitpause = 1
persistent = 0


[State 15517, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15517, ComboVar]
type = VarSet
trigger1 = AnimElemTime(5) = 8
trigger2 = AnimElem = 5 && MoveHit
var(25) = 1
ignorehitpause = 1

[State 15517, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)

; APPKP
[Statedef 15518]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15518 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,2
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 10, Floor(-Pos Y)
ownpal = 1

[State 15518, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 12
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15518, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15518, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)


; APPKK
[Statedef 15519]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15519 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,2
channel =  0

[State 15019, Stomp]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15155
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 20, 0
ownpal = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel)  * IfElse(AnimElemNo(0) < 3 || MoveHit, 0, 0.5)

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = !Time
Y = -1
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = AnimElem = 5
Y = 6.5
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 7305
ID = 15002
pos = 10, -4
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15502, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 15
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -10, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5, 2
air.velocity = .5, 2
fall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1


[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(0) = 0
ignorehitpause = 1


[State 15502, ComboVar]
type = VarAdd
trigger1 = StateType = S
var(0) = 1
ignorehitpause = 1

[State 15502, ComboVar]
type = ChangeAnim
trigger1 = Var(0) = 15
value = 121
ignorehitpause = 1

[State 15502, ComboVar]
type = ChangeState
trigger1 = Var(0) > 20
value = 0
ctrl = 1
ignorehitpause = 1

; APPPPP
[Statedef 15532]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
velset = 0,0
anim = 15532 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,4
channel =  0

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 18
value = S8000,29
channel =  0


[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElemNo(0) < 18
trigger1 = AnimElemNo(0) % 3 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -13 + (Random % 10), -35 + (Random % 15)
ownpal = 1

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 18
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -15
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 3 = 2
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
anim = 7308
ID = 15002
pos = 13, -13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = IfElse((AnimElemNo(0) - 2)% 4, -1, 1)
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

[State 15033, Hit]
type = HitDef
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
attr = S, NA
animtype  = Medium
damage    = 1
guardflag = M
hitflag = MAF
pausetime = 0,12
sparkno = S7400
sparkxy = -6 + Random % 6, -15 + Random % 6
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
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
ID = 15532

[State 15502, ComboVar]
type = VarSet
trigger1 = NumTarget(15532)
fvar(0) = -(Pos Y - Target(15532), Pos Y)
ignorehitpause = 1
persistent = 0

[State 15516, ComboVar]
type = TargetBind
trigger1 = NumTarget(15532)
pos = Target(15532), Const(size.air.front) + 10, fvar(0)
ignorehitpause = 1
persistent = 0

[State 15033, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15033, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = 1;!(StateType = A)

; APPPPK
[Statedef 15533]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15533 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,11
channel =  0


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 18
value = S8000,12
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 35 + (Random % 10), -42 + (Random % 26)
ownpal = 1

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 15519, Stomp]
type = helper
trigger1 = AnimElem = 20
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 50, -20
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
anim = 7308
ID = 15002
pos = 13, -13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = IfElse((AnimElemNo(0) - 2)% 4, 1, -1)
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

[State 15533, Hit]
type = HitDef
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
attr = A, NA
animtype  = Medium
damage    = 1
guardflag = M
hitflag = MAF
pausetime = 0,12
sparkno = S7400
sparkxy = -6 + Random % 6, -15 + Random % 6
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
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

[State 15533, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15533, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)

; APPPKP
[Statedef 15534]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15534 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = PlaySnd
trigger1 = !Time
value = S8000,2
channel =  0

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15115
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 10, Floor(-Pos Y)
ownpal = 1

[State 15534, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 12
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = 0.1
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15518, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15518, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)

; APPPKK
[Statedef 15535]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15535 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 2010, NHB]
type = VelSet
trigger1 = !Time
Y = 0
ignorehitpause = 1
persistent = 0

[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 3
value = S8001,6
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElem = 3
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 27, -18
ownpal = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * 0.05

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7308
ID = 15002
pos = 18, -15
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15535, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Hard
damage    = 15
guardflag = L
hitflag = MAF
pausetime = 12,24
sparkno = S7401
sparkxy = -5, 0
hitsound   = S7020,2
guardsound = 6,0
ground.type = Trip
ground.slidetime = 0
ground.hittime  = 20
snap = 10,0
ground.velocity = 0, 0
air.velocity = 0, 0
yaccel = .2
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
fall = 0
p1sprpriority = 1
p2sprpriority = -1
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 2010, NHB]
type = VelSet
trigger1 = MoveHit 
trigger2 = NumHelper(15000)
trigger2 = Helper(15000), MoveHit
X = 0
Y = 0
ignorehitpause = 1
persistent = 0

[State 15535, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15535, ComboVar]
type = VarSet
trigger1 = AnimElemTime(5) = 8
trigger2 = AnimElem = 5 && MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)

; APPPPPK
[Statedef 15565]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15565 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8000,15
channel =  0

[State 15019, Stomp]
type = helper
trigger1 = AnimElem = 5
helpertype = normal
stateno = 15155
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 20, 0
ownpal = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * 0.1

[State 1250, slow]
type = statetypeset
trigger1 = AnimElemNo(0) > 2
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = !Time
Y = -1
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = AnimElem = 5
Y = 6.5
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 7305
ID = 15002
pos = 10, -4
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
pausemovetime = 9999999*(Var(24) > 0)
removeongethit = 1
ignorehitpause = 1

[State 15502, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 15
guardflag = HA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -10, -15
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = .5,-.5
fall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18

[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1


[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(0) = 0
ignorehitpause = 1


[State 15502, ComboVar]
type = VarAdd
trigger1 = StateType = S
var(0) = 1
ignorehitpause = 1

[State 15502, ComboVar]
type = ChangeAnim
trigger1 = Var(0) = 15
value = 121
ignorehitpause = 1

[State 15502, ComboVar]
type = ChangeState
trigger1 = Var(0) > 20
value = 0
ctrl = 1
ignorehitpause = 1

; APPPKKK
[Statedef 15571]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15571 ;Change animation (Def: no change)
velset = 0,0
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,13
channel =  0

[State 15519, Stomp]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 20, -40
ownpal = 1

[State 15571, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 15
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,0
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
forcenofall = 1
p1sprpriority = 1
p2sprpriority = -1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 48, 84)), IfElse(Var(21) > 0, 0, 24)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 15571, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15571, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15002, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)


; APPP-K
[Statedef 15717]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15717 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 2
value = S8001,11
channel =  0


[State 2010, NHB]
type = PlaySnd
trigger1 = AnimElem = 18
value = S8001,12
channel =  0

[State 15010, Punch]
type = helper
trigger1 = Var(21)
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 35 + (Random % 10), -42 + (Random % 26)
ownpal = 1

[State 1250, slow]
type = statetypeset
trigger1 = pos y > (-vel y) && vel y >= 0
statetype = S
physics = S
ignorehitpause = 1

[State 1250, slow]
type = velset
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 1250, slow]
type = posset 
trigger1 = statetype = S
Y = 0
ignorehitpause = 1

[State 15519, Stomp]
type = helper
trigger1 = AnimElem = 20
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 50, -20
ownpal = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
anim = 7308
ID = 15002
pos = 13, -13
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = IfElse((AnimElemNo(0) - 2)% 4, 1, -1)
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

[State 15533, Hit]
type = HitDef
trigger1 = AnimElemNo(0) < 19
trigger1 = AnimElemNo(0) % 2 = 0
trigger1 = AnimElemTime(AnimElemNo(0)) = 0
attr = A, NA
animtype  = Medium
damage    = 1
guardflag = M
hitflag = MAF
pausetime = 0,12
sparkno = S7400
sparkxy = -6 + Random % 6, -15 + Random % 6
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = -.5
air.velocity = -.5,-.5
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

[State 15533, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15533, ComboVar]
type = VarSet
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)
