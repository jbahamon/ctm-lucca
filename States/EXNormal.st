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
damage    = 10
guardflag = MA
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
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18


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

; PP
[Statedef 15004]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15004 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
damage    = 10
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
ground.velocity = .5
air.velocity = .5,-.5
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15004, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15004, ComboVar]
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

; PK
[Statedef 15005]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15005 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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

; PPP
[Statedef 15008]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15008 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
damage    = 10
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = .5
air.velocity = .5,-.5
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15008, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15008, ComboVar]
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

; PPK
[Statedef 15009]
type    = S                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = S                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15009 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1


[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7304
ID = 15002
pos = 12, 3
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
hitsound   = S7020,2
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
trigger1 = AnimElem = 4
trigger2 = MoveHit
var(25) = 1
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15010 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 15010, Punch]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15105
ID = 15000
name = "Madama Butterfly's Hand"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = -5, -30
ownpal = 1

[State 15010, Hit]
type = HitDef
trigger1 = !Time
attr = S, NA
animtype  = Medium
damage    = 10
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
trigger1 = AnimElem = 4
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15016 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
damage    = 10
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
trigger1 = AnimElem = 3
trigger2 = MoveHit
var(25) = 1
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15017 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
fall = 0
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7308
ID = 15002
pos = -15, -5
postype = p1  ;p2,front,back,left,right
facing = -1
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15018 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
damage    = 10
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,2
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15019 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
hitsound   = S7020,2
guardsound = 6,0
ground.type = High
ground.slidetime = 0
ground.hittime  = 60
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = .05
forcenofall = 1
air.hittime  = 60
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
trigger1 = AnimElem = 3
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15033 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15034 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
damage    = 10
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,2
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15035 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 200, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 7308
ID = 15002
pos = -15, -5
postype = p1  ;p2,front,back,left,right
facing = -1
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
ground.velocity = 0, -4
air.velocity = 0, -4
yaccel = .2
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
fall = 0
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
trigger1 = AnimElemTime(5) = 8
trigger2 = AnimElem = 5 && MoveHit
var(25) = 1
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15039 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 15019, Stomp]
type = helper
trigger1 = AnimElem = 2
helpertype = normal
stateno = 15165
ID = 15000
name = "Madama Butterfly's Foot"
postype = p1
pausemovetime = 9999999*(Var(24) > 0)
pos = 50, -40
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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

[State 15105, StateVar]
type = VarSet
trigger1 = !Time
v = 0
value = Root, StateNo
ignorehitpause = 1

[State 1001, Dampen]
Type = ParentVarset
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
value = 40

[State 1005, Hit]
type = hitdef
trigger1 = !Time
priority = 4, Hit
attr = S, SA
damage = ceil(Var(1) * root, fvar(39)), 4
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
value = 15106

; Horizontal Punch GetHit
[Statedef 15106]
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

; Vertical Punch 
[Statedef 15115]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 0
juggle  = 18

[State 1001, Dampen]
Type = ParentVarset
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

[State 1001, Dampen]
Type = ParentVarset
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
damage = ceil(40 * root, fvar(39)), 4
animtype = Back
hitflag = MAF
guardflag = M
pausetime = 4, 6
sparkno = -1
sparkxy = -10, 0
guard.sparkno = s7001
guardsound = s2, 0
ground.type = High
ground.slidetime = 16
ground.hittime  = 35
ground.velocity = 0, -1
air.velocity = 0, -1
yaccel = .05
forcenofall = 1
air.hittime  = 35
guard.velocity = -3
fall = 0
air.fall = 0
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

[State 1001, Dampen]
Type = ParentVarset
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
damage = ceil(50 * root, fvar(39)), 4
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

[State 11004, Shake]
type = ChangeAnim
trigger1 = 1
value = 11166
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

; AP
[Statedef 15502]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15502 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
damage    = 10
guardflag = MA
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
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18

[State 15502, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15502, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 6
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15502, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)

; APP
[Statedef 15504]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15504 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

[State 1250, slow]
type = veladd
trigger1 = statetype = A
y = const(movement.yaccel) * 0.075

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
damage    = 10
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
ground.velocity = .5
air.velocity = .5,-.5
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15505 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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

[State 15505, Hit]
type = HitDef
trigger1 = !Time
attr = A, NA
animtype  = Medium
damage    = 15
guardflag = HA
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15505, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15505, ComboVar]
type = VarSet
trigger1 = AnimElem = 3
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

[State 15505, ChangeAnim]
type = ChangeState
trigger1 = !AnimTime
value = IfElse(StateType = A, 50, 0)
ctrl = !(StateType = A)

; APPP
[Statedef 15508]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
;Commonly-used controllers:
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15508 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
damage    = 10
guardflag = MA
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -15
hitsound   = S7020,2
guardsound = 6,0
ground.type = Low
ground.slidetime = 0
ground.hittime  = 20
ground.velocity = .5
air.velocity = .5,-.5
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8


[State 15508, ComboVar]
type = VarSet
trigger1 = !Time
var(25) = 0
ignorehitpause = 1

[State 15508, ComboVar]
type = VarSet
trigger1 = AnimElemTime(3) >= 6
trigger2 = MoveHit
var(25) = 1
ignorehitpause = 1

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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15509 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -7
hitsound   = S7020,2
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

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
ctrl = !(StateType = A)

; APPPP
[Statedef 15516]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15516 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
damage    = 10
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15517 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
ground.velocity = 0, -0.8
yaccel = 0.1
air.velocity =  0, -0.8
forcenofall = 1
fall = 0
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15518 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
damage    = 10
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,2
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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

; APPPPK
[Statedef 15533]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15533 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15534 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
damage    = 10
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = S7401
sparkxy = -5, -25
hitsound   = S7020,2
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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15535 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
pausetime = 12,12
sparkno = S7401
sparkxy = -5, 0
hitsound   = S7020,2
guardsound = 6,0
ground.type = Trip
ground.slidetime = 0
ground.hittime  = 20
snap = 10,0
ground.velocity = 0, -4
air.velocity = 0, -4
yaccel = .2
forcenofall = 1
ground.cornerpush.veloff = 0;
air.cornerpush.veloff = 0;
fall = 0
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
givepower = 18, 18
palfx.add = 200, 200, 200
palfx.mul = 256, 256, 256
palfx.time = 8

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

; APPPKKK
[Statedef 15571]
type    = A                      ;State-type: S-stand, C-crouch, A-air, L-liedown
movetype= A                      ;Move-type: A-attack, I-idle, H-gethit
physics = N                      ;Physics: S-stand, C-crouch, A-air
juggle  = 3                      ;Number of air juggle points move takes
velset = 0,0                     ;Set velocity (x,y) (Def: no change)
ctrl = 0                         ;Set ctrl (Def: no change)
anim = 15571 ;Change animation (Def: no change)
poweradd = 0                     ;Power to add (Def: 0)
sprpriority = 1                  ;Set p1's sprite layering priority to 2 (in front)
facep2 = 1

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
getpower = IfElse(Var(21) > 0, 0, ifelse(p2movetype = H, 36, 72)), IfElse(Var(21) > 0, 0, 18)
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