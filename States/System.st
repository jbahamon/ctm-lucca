;---------------------------------------------------------------------------
; Initialize (at the start of the round)
[Statedef 5900]
type = S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = roundsexisted = 0
value = 0

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = roundsexisted = 0
fvalue = 0

[State 5900, 3] ;Change Portal palette
type = RemapPal
trigger1 = PalNo = 12
source = 7000,16
dest = 7012,16

[State 5900, 3] ;Change Gomorrah palette
type = RemapPal
trigger1 = PalNo = 12
source = 7000,10
dest = 7001,10

[State 5900, 3] ;Change palette
type = null;
trigger1 = PalNo = 12
source = 7000,2
dest = 7000,22

[State 5900, 3] ;Change SFX palette
type = RemapPal
trigger1 = PalNo = 12
source = 7000,21
dest = 7000,(23 + Var(59))


[State 5900, 3] ;Change Own palette
type = RemapPal
trigger1 = PalNo = 12
source = 1,1
dest = 1,(palno + Var(59))

[State 5900, 4] ;Intro for round 1
type = ChangeState
trigger1 = roundno = 1
value = 190

[State 5900, 5] ;All other rounds
type = ChangeState
trigger1 = 1
value = 0

;---------------------------------------------------------------------------
; Run forward
[Statedef 100]
type    = S
physics = S
anim = 100
sprpriority = 1


[State 100, 1]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x) * IfElse(PalNo = 12, 1.3, 1)

[State 100, 2] ;Prevent run from canceling into walk
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, 3] ;Prevent from turning
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, 4]
type = ChangeState
trigger1 = command != "holdfwd"
value = 0

; Lose by Time Over
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
; CNS difficulty: basic
[Statedef 180]
type = S

[State 180, winquote]
type = VictoryQuote
trigger1 = !Time
value = (Random % 5) + 1

[State 181, Lavos]
type = VictoryQuote
triggerall = numenemy 
trigger1 = (Enemy, Name = "Inner Lavos")
trigger2 = (Enemy, Name = "Lavos Core")
trigger3 = (Enemy, Name = "Lavos")
value = 6

[State 180, Frog]
type = VictoryQuote
triggerall = numenemy 
trigger1 = (Enemy, Name = "Frog")
value = 7

[State 180, Lucca]
type = VictoryQuote
triggerall = numenemy 
trigger1 = (Enemy, Name = "Lucca")
trigger1 = (Enemy, AuthorName = "Kyo Kusanagi")
value = 8

[State 180, Crono]
type = VictoryQuote
triggerall = numenemy 
trigger1 = (Enemy, Name = "Crono")
trigger1 = (Enemy, AuthorName = "Kyo Kusanagi")
value = 9

[State 180, Marle]
type = VictoryQuote
triggerall = numenemy 
trigger1 = (Enemy, Name = "Marle 2")
trigger1 = (Enemy, AuthorName = "Kyo Kusanagi")
value = 10

[State 181, Ayla]
type = VictoryQuote
triggerall = numenemy 
trigger1 = (Enemy, Name = "Ayla")
trigger1 = (Enemy, AuthorName = "Silent Protagonist")
value = 11

[State 181, Ayla]
type = VictoryQuote
triggerall = numenemy 
trigger1 = (Enemy, Name = "Robo")
trigger1 = (Enemy, AuthorName = "Silent Protagonist")
value = 12 + Random % 2

[State 180, 1]
type = ChangeState
trigger1 = prevstateno = 300
value = 300

[State 180, 1]
type = ChangeState
trigger1 = !Time
value = 181

;---------------------------------------------------------------------------
; Win pose 1 
; CNS difficulty: basic
[Statedef 181]
type = S
ctrl = 0
anim = 181
velset = 0,0

[State 1100, JumpSnd]
type = ChangeAnim
trigger1 = PalNo = 12
trigger1 = !Time
value = 17305
ignorehitpause = 1

[State 1100, JumpSnd]
type = PlaySnd
trigger1 = PalNo = 12
trigger1 = !Time
value = S8002, 22 + (Random % 4)
channel =  0
persistent = 0


[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------

;Preintro
[Statedef 190]
type=S
ctrl=0
velset=0,0

[State 190, ComboReset]
type = VarSet
trigger1 = !Time
var(21) = 0

[State 190, 0]
type = ChangeState
trigger1 = Time
value = IfElse(PalNo = 12, 191 + (Random % 2)*17000, 191 + (Random % 2))
ctrl = 0

;===========================================================================
; Intros
;===========================================================================

;Weapon Intro
[Statedef 191]
type = S
ctrl = 0
anim = 191
velset = 0,0


[State 17191, Mode]
type = null;VarSet
triggerall = !RoundsExisted
trigger1 = !Time
v = 59
value = 1

[State 192, Spawn Modeh]
type = Helper
trigger1 = !Time
trigger1 = !RoundsExisted
trigger1 = PalNo = 12
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
triggerall = PalNo = 12
triggerall = !RoundsExisted
trigger1 = command = "rlsup"
trigger2 = command = "rlsdown"
v = 59
value = 1 - Var(59)

[State 5900, 3] ;Change SFX palette
type = RemapPal
triggerall = PalNo = 12
triggerall = !RoundsExisted
trigger1 = command = "rlsup"
trigger2 = command = "rlsdown"
source = 7000,21
dest = 7000,(23 + Var(59))


[State 5900, 3] ;Change Own palette
type = RemapPal
trigger1 = PalNo = 12
source = 1,1
dest = 1,(palno + Var(59))

[State 191, 2]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = PalNo != 12
value = S7000,1

[State 191, 2]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1 = PalNo = 12
value = S8002, 14  + IfElse(Random > 750, Random % 3, -2)

[State 191, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 192, 3] ;Change to stand state when done
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Gate
[Statedef 192]
type = A
physics = N
movetype = I
ctrl = 0
anim = 7200
sprpriority = 1

[State 191, 2]
type = AssertSpecial
trigger1 = Anim = 7200
flag = NoShadow

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, StartPos]
type = VarSet
trigger1 = !Time
fvar(0) = Pos X

[State 192, StartPos]
type = PosAdd
trigger1 = !Time
X = -40
Y = - 20

[State 192, Spawn Reptites]
type = Helper
trigger1 = Anim = 7200
trigger1 = !NumHelper(1920)
helpertype = normal ;player
name = "Gate"
ID = 1920
stateno = 1920
postype = p1
pos = 0, -35
facing = 1
keyctrl = 0
ownpal = 1

[State 192, StartPos]
type = ChangeAnim
trigger1 = NumHelper(1920)
trigger1 = Helper(1920), Time = 60
value = 192

[State 2110, Buttan]
type = Explod
trigger1 = Anim = 192
ID = 192
anim = 7100
bindtime = -1
pos = 7, -30
ownpal = 1
removetime = 22
sprpriority = 3
shadow = -1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 191, Jump!]
type = VelSet
trigger1 = Anim = 192
X = ((fvar(0) - Pos X)/20.0)*Facing
Y = -3
persistent = 0

[State 192, Snd]
type = PlaySnd
trigger1 = Anim = 192
value = S7010,5
persistent = 0

[State 191, Jump!]
type = VelAdd
trigger1 = Anim = 192
Y = 0.34

[State 191, Land]
type = VelSet
trigger1 = Anim = 192 && Pos Y >= 0
Y = 0
X = 0

[State 192, Land]
type = StateTypeSet
trigger1 = Anim = 192 && !AnimTime
statetype = S
persistent = 0

[State 191, Land]
type = StateTypeSet
trigger1 = Anim = 192 && Pos Y >= 0
statetype = S
persistent = 0

[State 191, Land]
type = PosSet
trigger1 = Anim = 192 && Pos Y >= 0
Y = 0
X = fvar(0)
persistent = 0

[State 191, Land]
type = ChangeAnim
trigger1 = Anim = 192 && Pos Y >= 0
value = 47
persistent = 0

[State 191, Land]
type = ChangeAnim
trigger1 = Anim = 47 && !AnimTime
value = 0
persistent = 0

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, 3] ;Change to stand state when done
type = ChangeState
trigger1 = Anim = 0 && !NumHelper(1920)
value = 0

; Gate
[Statedef 1920]
type = S
physics = N
ctrl = 0
anim = 7101
velset = 0,0
sprpriority = -1

[State 1920, Random Start]
type = PlaySnd
trigger1 = !Time
value = S7030,1
channel = 0

[State 1920, Random Start]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = NoShadow

[State 1920, SprPriority]
type = ChangeAnim
trigger1 = Parent, Anim = 0
value = 7106
persistent = 0

[State 1920, Random Start]
type = PlaySnd
trigger1 = Anim = 7106
value = S7030,1
channel = 0
persistent = 0

[State 1920, End]
type = DestroySelf
trigger1 = Anim = 7106
trigger1 = !AnimTime
trigger2 = RoundState > 1


;---------------------------------------------------------------------------
; Taunt
[Statedef 195]
type = S
ctrl = 0
anim = 195
velset = 0,0
movetype = I
physics = S
sprpriority = 1

[State 2110, Buttan]
type = Explod
trigger1 = PalNo != 12
trigger1 = AnimElem = 2
removetime = -1
ID = 195
anim = IfElse(Random % 2 > 0, 30 * (Random % 2) + 7070, 7111 + (Random % 8))
bindtime = -1
pos = 5, -25
ownpal = 1
sprpriority = 3
shadow = -1
removeongethit = 1
supermovetime = 99999
ignorehitpause = 1
persistent = 0

[State 1100, JumpSnd]
type = PlaySnd
trigger1 = PalNo != 12
trigger1 = AnimElem = 2
value = S7030,0
ignorehitpause = 1

[State 1100, JumpSnd]
type = ChangeAnim
trigger1 = PalNo = 12
trigger1 = !Time
value = 17305
ignorehitpause = 1

[State 1100, JumpSnd]
type = PlaySnd
trigger1 = PalNo = 12
trigger1 = !Time
value = S8002,IfElse(Random % 2, 11, 13)
channel =  0
persistent = 0
ignorehitpause = 1

[State 2000, End]
type = RemoveExplod
trigger1 = !AnimTime
ID = 195
ignorehitpause = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------