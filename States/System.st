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
value = 191 + (Random % 2)
ctrl = 0

;===========================================================================
; Intros
;===========================================================================

; Dactyl Intro
[Statedef 191]
type = A
physics = N
ctrl = 0
anim = 191
velset = 0,0
sprpriority = 1

[State 191, 0]
type = VarSet
trigger1 = !Time
fvar(0) = Pos X 

[State 191, 1] 
type = ScreenBound
trigger1 = 1
value = 0

[State 191, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 191

[State 191, Intro Time]
type = VarSet
trigger1 = !Time
var(1) = 0

[State 191, Intro Time]
type = VarAdd
trigger1 = Var(1) <= 100 && RoundState > 0 
var(1) = 1

[State 191, Start Pos]
type = PosSet
trigger1 = !Time
Y = -140
X = -110 * Facing

[State 191, Scale]
type = AngleDraw
trigger1 = Var(1) < 100
scale = (var(1))/100.0, (var(1))/100.0

[State 191, 1] ;Freeze animation until PreIntro is over
type = Helper
trigger1 = !Time
helpertype = normal ;player
name = "Dactyl"
ID = 1910
stateno = 1910
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1

[State 191, Go down]
type = PosSet
triggerall = NumHelper(1910)
trigger1 = Anim = 191
X = Helper(1910), Pos X
Y = (Helper(1910), Pos Y) - (25*Var(1)/100.0)

[State 191, Jump!]
type = ChangeAnim
triggerall = NumHelper(1910)
trigger1 = Helper(1910), Anim = 7112
trigger1 = Helper(1910), AnimElemTime(3) = 20
value = 42
persistent = 0

[State 191, Jump!]
type = VelSet
trigger1 = Anim = 42
X = ((fvar(0) - Pos X)/20.0)*Facing
Y = -4
persistent = 0

[State 192, Snd]
type = PlaySnd
trigger1 = anim = 42
value = S7000,2
persistent = 0

[State 191, Jump!]
type = VelAdd
trigger1 = Anim = 42
Y = 0.54

[State 191, Land]
type = VelSet
trigger1 = Anim = 42 && Pos Y >= 0
Y = 0
X = 0

[State 191, Land]
type = StateTypeSet
trigger1 = Anim = 42 && Pos Y >= 0
statetype = S
persistent = 0

[State 191, Land]
type = PosSet
trigger1 = Anim = 42 && Pos Y >= 0
Y = 0
X = fvar(0)
persistent = 0

[State 191, Land]
type = ChangeAnim
trigger1 = Anim = 42 && Pos Y >= 0
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
trigger1 = Anim = 0 && !NumHelper(1910)
value = 0

;Dactyl Zooming in
[Statedef 1910]
type = S
ctrl = 0
anim = 7111
velset = 0,0
sprpriority = 2

[State 1910, Vel]
type = PosSet
trigger1 = 1
X = -110*Facing

[State 1910, Vel]
type = VelSet
trigger1 = 1
Y = 1.4 * Parent, Var(1)/100.0

[State 1910, Scale]
type = AngleDraw
trigger1 = Parent, Var(1) < 100
scale = (Parent, Var(1))/100.0, (Parent, Var(1))/100.0

[State 1910, Snd]
type = PlaySnd
trigger1 = Anim = 7111 && (AnimElemTime(1) = 0 || !AnimTime)
value = S7000,0
volumescale = (Parent, Var(1))

[State 1910, Advance]
type = ChangeState
trigger1 = Parent, Var(1) >= 100
value = 1911

[State 1910, Takeoff]
type = DestroySelf
trigger1 = RoundState > 1

;Dactyl Landing and Leaving
[Statedef 1911]
type = S
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1911, Vel]
type = VelSet
trigger1 = !Time && !(var(0) := 0)
Y = 0.7

[State 1911, Snd]
type = PlaySnd
trigger1 = Anim = 7112 && (AnimElemTime(2) = 1)
value = S7050,2

[State 1911, Snd]
type = PlaySnd
trigger1 = Anim = 7111 && (AnimElemTime(1) = 0 || !AnimTime)
trigger2 = Anim = 7112 && (AnimElemTime(1) = 1)
trigger3 = Anim = 7113 && (AnimElemTime(1) = 0 || !AnimTime)
value = S7000,0

[State 1911, Vel]
type = VarSet
trigger1 = !Time
var(0) = 0

[State 1911, Vel]
type = ChangeAnim
trigger1 = Pos Y >= -30
value = 7112
persistent = 0

[State 1911, Vel]
type = VelSet
trigger1 = Pos Y >= -30
y = 0.4
persistent = 0

[State 1911, Vel]
type = VelSet
trigger1 = Pos Y >= 0
Y = 0

[State 1911, Vel]
type = PosSet
trigger1 = Pos Y >= 0
Y = 0

[State 1911, Takeoff]
type = ChangeAnim
trigger1 = parent, Anim = 0
value = 7113
persistent = 0

[State 1911, Takeoff]
type = ChangeAnim
trigger1 = Anim = 7113 && !AnimTime
value = 7111
persistent = 0

[State 1911, Takeoff]
type = VelSet
trigger1 = parent, Anim = 0
Y = -0.7
persistent = 0

[State 1911, Takeoff]
type = VelAdd
trigger1 = parent, Anim = 0
Y = -0.04

[State 1911, Takeoff]
type = DestroySelf
trigger1 = ScreenPos Y < -30
trigger2 = RoundState > 1

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

[State 191, Jump!]
type = VelSet
trigger1 = Anim = 192
X = ((fvar(0) - Pos X)/20.0)*Facing
Y = -3
persistent = 0

[State 192, Snd]
type = PlaySnd
trigger1 = Anim = 192
value = S7000,2
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
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 1920, SprPriority]
type = ChangeAnim
trigger1 = Parent, Anim = 0
value = 7106
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

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = S7030,0

[State 195, 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = S7010,1

[State 195, 1]
type = CtrlSet
trigger1 = Time = 40
value = 1

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;===========================================================================
; WinPoses
;===========================================================================

;SGS
[Statedef 300]
type = S
sprpriority = -1

[State 362, Anim]
type = ChangeAnim
trigger1 = PrevStateNo = 2102 && !AnimTime
value = 2104

[State 362, Kanji]
type = helper
trigger1 = !time && PrevStateNo = 2102 && !numhelper(2103)
helpertype = normal
stateno = 2103
ID = 2103
postype = left
ownpal = 1
persistent = 0

[State 362, win]
type = changestate
trigger1 = time >= 120 && roundstate = 3
value = ifelse(roundstate = 3, 180, 0)
ctrl = 1

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------