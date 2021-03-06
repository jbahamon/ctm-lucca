; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below.
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------

[Command]
name = "qcfhcba"
command = ~D, F, D, B, a
time = 40
[Command]
name = "qcfhcbb"
command = ~D, F, D, B, b
time = 40
[Command]
name = "qcfhcbc"
command = ~D, F, D, B, c
time = 40
[Command]
name = "qcfhcba"
command = ~D, F, D, B, ~a
time = 40
[Command]
name = "qcfhcbb"
command = ~D, F, D, B, ~b
time = 40
[Command]
name = "qcfhcbc"
command = ~D, F, D, B, ~c
time = 40


[Command]
name = "qcbhcfa"
command = ~D, B, D, F, a
time = 40
[Command]
name = "qcbhcfb"
command = ~D, B, D, F, b
time = 40
[Command]
name = "qcbhcfc"
command = ~D, B, D, F, c
time = 40
[Command]
name = "qcbhcfa"
command = ~D, B, D, F, ~a
time = 40
[Command]
name = "qcbhcfb"
command = ~D, B, D, F, ~b
time = 40
[Command]
name = "qcbhcfc"
command = ~D, B, D, F, ~c
time = 40

; ---

[Command]
name = "2qcfa"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "2qcfb"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "2qcfc"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "2qcfa"
command = ~D, DF, F, D, DF, F, ~a
time = 30

[Command]
name = "2qcfb"
command = ~D, DF, F, D, DF, F, ~b
time = 30

[Command]
name = "2qcfc"
command = ~D, DF, F, D, DF, F, ~c
time = 30

;---

[Command]
name = "2qcba"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "2qcbb"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "2qcbc"
command = ~D, DB, B, D, DB, B, c
time = 30

[Command]
name = "2qcba"
command = ~D, DB, B, D, DB, B, ~a
time = 30

[Command]
name = "2qcbb"
command = ~D, DB, B, D, DB, B, ~b
time = 30

[Command]
name = "2qcbc"
command = ~D, DB, B, D, DB, B, ~c
time = 30


[Command]
name = "Witch Twist"
command = /F+a, b
time = 30


[Command]
name = "Witch Twist"
command = /a, b
time = 30


[Command]
name = "Heel Tornado"
command = /F+a, c
time = 30


[Command]
name = "Heel Tornado"
command = /a, c
time = 30

[Command]
name = "Panther Within"
command = /F, a, a
time = 30

[Command]
name = "Stiletto"
command = F, F, b
time = 30

[Command]
name = "Heel Slide"
command = F, F, c
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "qcba"
command =  ~D, DB, B, a
time=15

[Command]
name = "qcbb"
command = ~D, DB, B, b	
time=15

[Command]
name = "qcbc"
command = ~D, DB, B, c
time=15

[Command]
name = "qcba"
command =  ~D, DB, B, ~a
time=15

[Command]
name = "qcbb"
command = ~D, DB, B, ~b	
time=15

[Command]
name = "qcbc"
command = ~D, DB, B, ~c
time=15

;---

[Command]
name = "dba"
command = ~B, D, DB, ~a
time = 20

[Command]
name = "dba"
command = ~B, D, DB, a
time = 20

[Command]
name = "dbb"
command = ~B, D, DB, ~b
time = 20

[Command]
name = "dbb"
command = ~B, D, DB, b
time = 20

[Command]
name = "dbc"
command = ~B, D, DB, ~c
time = 20

[Command]
name = "dbc"
command = ~B, D, DB, c
time = 20

;---

[Command]
name = "dfa"
command = ~F, D, DF, ~a
time = 20

[Command]
name = "dfa"
command = ~F, D, DF, a
time = 20

[Command]
name = "dfb"
command = ~F, D, DF, ~b
time = 20

[Command]
name = "dfb"
command = ~F, D, DF, b
time = 20

[Command]
name = "dfc"
command = ~F, D, DF, ~c
time = 20

[Command]
name = "dfc"
command = ~F, D, DF, c
time = 20

[Command]
name = "qcfa"
command = ~D, DF, F, ~a
time = 15

[Command]
name = "qcfa"
command = ~D, DF, F, a
time = 15

[Command]
name = "qcfb"
command = ~D, DF, F, ~b
time = 15

[Command]
name = "qcfb"
command = ~D, DF, F, b
time = 15

[Command]
name = "qcfc"
command = ~D, DF, F, ~c
time = 15

[Command]
name = "qcfc"
command = ~D, DF, F, c
time = 15

[Command]
name = "BFb"
command = ~B, F, b
time = 15


[Command]
name = "BFc"
command = ~B, F, c
time = 15



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "2p"
command = b+c
time = 1

[Command]
name = "a+c"
command = a+c
time = 1

[Command]
name = "2p"
command = a+b
time = 1

;-| Dir + Button |---------------------------------------------------------

[Command]
name = "U+b"
command = /U, b
time = 1

[Command]
name = "U+c"
command = /U, c
time = 1

[Command]
name = "F+c"
command = /F,c
time = 1

[Command]
name = "B+c"
command = /B,c
time = 1

[Command]
name = "U+F+c"
command = /U+F, c
time = 1

[Command]
name = "U+B+c"
command = /U+B, c
time = 1


[Command]
name = "holdUb";Required (do not remove)
command = /U,b
time = 1

[Command]
name = "F+a"
command = /F, a
time = 1

[Command]
name = "U+F+a"
command = /U+F, a
time = 1

[Command]
name = "D+F+a"
command = /D+F, a
time = 1

[Command]
name = "B+a"
command = /B, a
time = 1

;-| Single Button |---------------------------------------------------------

[Command]
name = "holdc";Required (do not remove)
command = /c
time = 1

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "rlsfwd"
command = ~$F
time = 1
[Command]
name = "rlsback"
command = ~$B
time = 1
[Command]
name = "rlsup"
command = ~$U
time = 1
[Command]
name = "rlsdown"
command = ~$D
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1


[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================




;===========================================================================
; Super Moves
;===========================================================================

[State -1, Gate Summon]
type = ChangeState
value = 2100
triggerall = PalNo != 12
triggerall = Command = "qcfhcba" || Command = "qcfhcbb" || Command = "qcfhcbc"
triggerall = Var(21) > 0
trigger1 = statetype != A
trigger1 = ctrl || ((stateno = [200, 299]) && time <= 10)

[State -1, Gate Trap]
type = ChangeState
value = 2020
triggerall = PalNo != 12
triggerall = Command = "qcbhcfa" || Command = "qcbhcfb" || Command = "qcbhcfc"
triggerall = Power >= 1000
triggerall = !NumHelper(2020)
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Flare]
type = ChangeState
value = 2010
triggerall = PalNo != 12
triggerall = Command = "2qcfa" || Command = "2qcfb" || Command = "2qcfc" 
triggerall = Power >= 1000
triggerall = !NumHelper(2010)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200,299] ) && MoveHit
trigger3 = ( StateNo = [400,499] ) && MoveHit
;---------------------------------------------------------------------------
[State -1, Gato!]
type = ChangeState
value = 2000
triggerall = PalNo != 12
triggerall = Command = "2qcba" || Command = "2qcbb" || Command = "2qcbc" 
triggerall = Power >= 1000
triggerall = !NumHelper(2000)
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = ( StateNo = [200,299] ) && MoveHit
trigger3 = ( StateNo = [400,499] ) && MoveHit
;---------------------------------------------------------------------------

[State -1, Gomorrah/Baal]
type = ChangeState
value = IfElse(Var(59), 13400, 13300)
triggerall = PalNo = 12
triggerall = Command = "qcbhcfb" || Command = "qcbhcfc"
triggerall = Power >= 2000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Big Torture]
type = ChangeState
value = 13200
triggerall = PalNo = 12
triggerall = Command = "qcfhcbb" || Command = "qcfhcbc"
triggerall = Power >= 1000
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Infernal Demon Summon]
type = ChangeState
value = 13100
triggerall = PalNo = 12
triggerall = Command = "2qcfb" || Command = "2qcfc" 
triggerall = Power >= 2000
triggerall = !(NumHelper(13101) + NumHelper(13102) + NumHelper(13105))
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Witch Time]
type = ChangeState
value = 13000
triggerall = PalNo = 12
triggerall = Command = "2qcbb" || Command = "2qcbc" 
triggerall = Power >= 1000
triggerall = Var(24) <= 0
triggerall = !NumPartner
triggerall = NumEnemy = 1
triggerall = !(EnemyNear(0), Name = "Lucca" && EnemyNear(0), AuthorName = "SilentProtagonist" && EnemyNear(0), PalNo = 12 && EnemyNear(0), Var(24) > 0)
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Witch Time]
type = ChangeState
value = 13000
triggerall = PalNo = 12
triggerall = Command = "2qcbb" || Command = "2qcbc" 
triggerall = Power >= 1000
triggerall = Var(24) <= 0
triggerall = NumPartner
triggerall = NumEnemy = 1
triggerall = !(Partner, Name = "Lucca" && Partner, AuthorName = "SilentProtagonist" && Partner, PalNo = 12 && Partner, Var(24) > 0)
triggerall = !(EnemyNear(0), Name = "Lucca" && EnemyNear(0), AuthorName = "SilentProtagonist" && EnemyNear(0), PalNo = 12 && EnemyNear(0), Var(24) > 0)
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Witch Time]
type = ChangeState
value = 13000
triggerall = PalNo = 12
triggerall = Command = "2qcbb" || Command = "2qcbc" 
triggerall = Power >= 1000
triggerall = Var(24) <= 0
triggerall = !NumPartner
triggerall = NumEnemy = 2
triggerall = !(EnemyNear(0), Name = "Lucca" && EnemyNear(0), AuthorName = "SilentProtagonist" && EnemyNear(0), PalNo = 12 && EnemyNear(0), Var(24) > 0)
triggerall = !(EnemyNear(1), Name = "Lucca" && EnemyNear(1), AuthorName = "SilentProtagonist" && EnemyNear(1), PalNo = 12 && EnemyNear(1), Var(24) > 0)
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Witch Time]
type = ChangeState
value = 13000
triggerall = PalNo = 12
triggerall = Command = "2qcbb" || Command = "2qcbc" 
triggerall = Power >= 1000
triggerall = Var(24) <= 0
triggerall = NumPartner
triggerall = NumEnemy = 2
triggerall = !(Partner, Name = "Lucca" && Partner, AuthorName = "SilentProtagonist" && Partner, PalNo = 12 && Partner, Var(24) > 0)
triggerall = !(EnemyNear(0), Name = "Lucca" && EnemyNear(0), AuthorName = "SilentProtagonist" && EnemyNear(0), PalNo = 12 && EnemyNear(0), Var(24) > 0)
triggerall = !(EnemyNear(1), Name = "Lucca" && EnemyNear(1), AuthorName = "SilentProtagonist" && EnemyNear(1), PalNo = 12 && EnemyNear(1), Var(24) > 0)
trigger1 = statetype = S
trigger1 = ctrl



;===========================================================================
; Special Moves
;===========================================================================
[State -1, Robot Summon]
type = ChangeState
value = 1000
triggerall = PalNo != 12
triggerall = NumHelper(1000) < 3
triggerall = command = "qcba" || command = "qcbb" || command = "qcbc"
triggerall = roundstate = 2 && statetype != A 
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Fire Uppercut]
type = ChangeState
value = 1010
triggerall = PalNo != 12
triggerall = command = "dfa" || command = "dfb" || command = "dfc"
triggerall = roundstate = 2 && statetype != A 
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && movecontact
trigger3 = (stateno = [400, 499]) && movecontact
;---------------------------------------------------------------------------
[State -1, Napalm]
type = ChangeState
value = 1020
triggerall = PalNo != 12
triggerall = command = "qcfa" || command = "qcfb" || command = "qcfc"
triggerall = roundstate = 2 && !numhelper(1020)
trigger1 = ctrl
trigger2 = (stateno = [200, 299]) && movecontact
trigger3 = (stateno = [400, 499]) && movecontact
trigger4 = (stateno = [600, 699]) && movecontact
;---------------------------------------------------------------------------
[State -1, Hypno Wave]
type = ChangeState
value = 1030
triggerall = PalNo != 12
triggerall = Power >= 500
triggerall = !NumHelper(1030)
triggerall = Command = "dba" || Command = "dbb" || Command = "dbc" 
trigger1 = statetype != A
trigger1 = ctrl


;--------
;Panther Within
[State -1, Panther Within]
type = ChangeState
value = 11400
triggerall = PalNo = 12
trigger1 = command = "Panther Within"
trigger1 = statetype = S
trigger1 = ctrl || (StateNo = 17100 && Time < 10)


;--------------------------------------------------------------------------
[State -1, Torture Attack - Ground]
type = ChangeState
value = 11200
triggerall = Power >= 500
triggerall = PalNo = 12
triggerall = command = "qcbb" || command = "qcbc"
triggerall = roundstate = 2 && statetype != A 
trigger1 = ctrl

;--------------------------------------------------------------------------
[State -1, Torture Attack - Air]
type = ChangeState
value = 11300
triggerall = Power >= 500
triggerall = PalNo = 12
triggerall = command = "qcbb" || command = "qcbc"
triggerall = roundstate = 2 && statetype = A 
trigger1 = ctrl

;--------------------------------------------------------------------------
[State -1, Tetsuzanko]
type = ChangeState
value = 11100 + (statetype = A)
triggerall = PalNo = 12
triggerall = command = "BFb"
triggerall = roundstate = 2 && !numhelper(11100)
trigger1 = ctrl
trigger2 = (stateno = [15002, 15599]) && movecontact

;--------------------------------------------------------------------------
[State -1, Heel Stomp]
type = ChangeState
value = 11150 +  (statetype = A)
triggerall = PalNo = 12
triggerall = command = "BFc"
triggerall = roundstate = 2 && !numhelper(11150)
trigger1 = ctrl
trigger2 = (stateno = [15002, 15599]) && movecontact

;--------
;Witch Twist
[State -1, Witch Twist]
type = ChangeState
value = 11000
triggerall = PalNo = 12
trigger1 = command = "Witch Twist"
trigger1 = statetype = S
trigger1 = StateNo = [17100, 17101]
trigger1 = Time = [5,30]

;--------
;Witch Strike
[State -1, Witch Strike]	
type = ChangeState
value = 11005
triggerall = PalNo = 12
triggerall = command = "U+b"
trigger1 = Time < 30; || (command = "b" && Time < 5)
trigger1 = (StateNo = 50)
trigger1 = PrevStateNo = 40 || PrevStateNo = 45
trigger2 = StateNo = 11010 && Var(25)
trigger3 = StateNo = 11031 && Var(25)

[State -1, Witch Strike From Heel Slide]	
type = ChangeState
value = 11005
triggerall = PalNo = 12
triggerall = (command = "holdUb")
trigger1 = (StateNo = 11031)
trigger1 = Var(25)


;--------
;Heel Tornado
[State -1, Heel Tornado]	
type = ChangeState
value = 11010
triggerall = PalNo = 12
trigger1 = command = "Heel Tornado"
trigger1 = statetype = S
trigger1 = StateNo = [17100, 17101]
trigger1 = Time = [5,30]


;--------
;After Burner Kick (Up)
[State -1, After Burner Kick]	
type = ChangeState
value = 11035
triggerall = PalNo = 12
triggerall = Var(26) > 0
triggerall = Time < 30
triggerall = ((command = "U+c" || command = "U+F+c") && (((enemynear(numenemy>1&&!enemynear(0),alive), screenpos x) - ScreenPos X) * Facing) > 0) || ((command = "U+c" || command = "U+B+c") && (((enemynear(numenemy>1&&!enemynear(0),alive), screenpos x) - ScreenPos X) * Facing) < 0) 
trigger1 = (StateNo = 50); && Anim = 41)
trigger2 = StateNo = 11010 && Var(25)
trigger3 = StateNo = 11031 && Var(25)
trigger4 = StateNo = 11035 && Var(25)
trigger5 = Statetype = A && Ctrl
trigger6 = StateNo = 11005 && Var(25)
;--------
;After Burner Kick (Down)
[State -1, After Burner Kick]	
type = ChangeState
value = 11036
triggerall = PalNo = 12
triggerall = Var(26) > 0
triggerall = (command = "F+c" && (((enemynear(numenemy>1&&!enemynear(0),alive), screenpos x) - ScreenPos X) * Facing) > 0) || (command = "B+c" && (((enemynear(numenemy>1&&!enemynear(0),alive), screenpos x) - ScreenPos X) * Facing) < 0)
trigger1 = Ctrl && Statetype = A
trigger2 = (stateno = 11035) && Var(25)
trigger3 = (stateno = [15502,15800]) && Var(25)
trigger4 = StateNo = 11005 && Var(25)

;--------
;Stiletto
[State -1, Stiletto]	
type = ChangeState
value = 11020 + (Statetype = A)
triggerall = PalNo = 12
trigger1 = command = "Stiletto" 
trigger1 = statetype != C
trigger1 = Ctrl || StateNo = 100

;--------
;Heel Slide
[State -1, Heel Slide]	
type = ChangeState
value = 11030
triggerall = PalNo = 12
trigger1 = command = "Heel Slide" 
trigger1 = statetype = S
trigger1 = Ctrl || StateNo = 100

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
; Throws, Rolls, Etc
;===========================================================================

[State -1, Shockwave]
type = ChangeState
trigger1 = PalNo != 12
trigger1 = (command = "recovery" || command = "2p") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && ctrl && statetype = S && stateno != 100
value = 800

[State -1, Protect]
type = ChangeState
value = 2110
triggerall = Command = "a+c" && !(command = "holdfwd" || command = "holdback" || command = "holdup" || command = "holddown")
triggerall = Power >= 3000 || (PalNo = 12 && (Power >= 1000 || Var(21) != 0))
triggerall = Var(21) = 0 || PalNo = 12
trigger1 = StateType = S
trigger1 = ctrl 

[State -1, Forwards Dodge]
type = ChangeState
value = 17100
triggerall = command = "F+a" || command = "U+F+a" || command = "D+F+a" 
triggerall = PalNo = 12
trigger1 = ctrl

[State -1, Backwards Dodge]
type = ChangeState
value = 17101
triggerall = command = "B+a" || command = "a"
triggerall = PalNo = 12
trigger1 = ctrl

;===========================================================================
; EX Normal Moves
;===========================================================================


[State -1, Launch Punch]
type = ChangeState
value = 15202
triggerall = PalNo = 12
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


[State -1, Launch Kick]
type = ChangeState
value = 15203
triggerall = PalNo = 12
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl


[State -1, Standing Punch]
type = ChangeState
value = 15002
triggerall = PalNo = 12
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 11020) && Var(25)

[State -1, Standing Kick]
type = ChangeState
value = 15003
triggerall = PalNo = 12
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 11020) && Var(25)

[State -1, Air Punch]
type = ChangeState
value = 15502
triggerall = PalNo = 12
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 11021) && Var(25)
trigger3 = (stateno = [11035, 11036]) && Var(25)
trigger4 = (stateno = [11000, 11005]) && Var(25)

[State -1, Air Kick]
type = ChangeState
value = 15503
triggerall = PalNo = 12
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 11021) && Var(25)
trigger3 = (stateno = [11035, 11036]) && Var(25)
trigger4 = (stateno = [11000, 11005]) && Var(25)

[State 15002, Air Punch Combos]
type = ChangeState
trigger1 = StateNo = [15502, 15599]
trigger1 = StateType = A
trigger1 = Var(25) = 1
trigger1 = Command = "b"
trigger1 = AnimExist(15500 + 2 * (Anim - 15500))
value = 15500 + 2 * (Anim - 15500)

[State 15002, Air Kick Combos]
type = ChangeState
trigger1 = StateNo = [15502, 15599]
trigger1 = StateType = A
trigger1 = Var(25) = 1
trigger1 = Command = "c"
trigger1 = AnimExist(15500 + 2 * (Anim - 15500) + 1)
value = 15500 + 2 * (Anim - 15500) + 1
ignorehitpause = 1

[State 15002, Air to Ground Punch Combos]
type = ChangeState
trigger1 = StateNo = [15502, 15599]
trigger1 = StateType = S
trigger1 = Var(25)
trigger1 = Command = "b"
trigger1 = AnimExist(15000 + 2 * (Anim - 15500))
value = 15000 + 2 * (Anim - 15500)

[State 15002, Air to Ground Kick Combos]
type = ChangeState
trigger1 = StateNo = [15502, 15599]
trigger1 = StateType = S
trigger1 = Var(25) = 1
trigger1 = Command = "c"
trigger1 = AnimExist(15000 + 2 * (Anim - 15500) + 1)
value = 15000 + 2 * (Anim - 15500) + 1

[State 15002, Air Pause+Kick Combos]
type = ChangeState
trigger1 = StateNo = [15502, 15599]
trigger1 = Var(25) = 2
trigger1 = Command = "c"
trigger1 = AnimExist(15500 + 2 * (Anim - 15500) + 200 + 1)
value = 15500 + 2 * (Anim - 15500) + 200 + 1

[State 15002, Pause+Punch Combos]
type = ChangeState
trigger1 = StateNo = [15002, 15099]
trigger1 = Var(25) = 2
trigger1 = Command = "b"
trigger1 = AnimExist(15000 + 2 * (Anim - 15000) + 200)
value = 15000 + 2 * (Anim - 15000) + 200

[State 15002, Pause+Kick Combos]
type = ChangeState
trigger1 = StateNo = [15002, 15099]
trigger1 = Var(25) = 2
trigger1 = Command = "c"
trigger1 = AnimExist(15000 + 2 * (Anim - 15000) + 200 + 1)
value = 15000 + 2 * (Anim - 15000) + 200 + 1

[State 15002, Punch Combos]
type = ChangeState
trigger1 = StateNo = [15002, 15099]
trigger1 = Var(25) = 1
trigger1 = Command = "b"
trigger1 = AnimExist(15000 + 2 * (Anim - 15000))
value = 15000 + 2 * (Anim - 15000)

[State 15002, Kick Combos]
type = ChangeState
trigger1 = StateNo = [15002, 15099]
trigger1 = Var(25) = 1
trigger1 = Command = "c"
trigger1 = AnimExist(15000 + 2 * (Anim - 15000) + 1)
value = 15000 + 2 * (Anim - 15000) + 1

;===========================================================================
; Normal Moves
;===========================================================================
[State -1, Stand Light]
type = ChangeState
value = 200
triggerall = PalNo != 12
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (StateType != A) && (MoveContact) && (Var(21) > 0)
;---------------------------------------------------------------------------
[State -1, Stand Mid]
type = ChangeState
value = 210
triggerall = PalNo != 12
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) 
trigger2 = movecontact
trigger3 = (StateType != A) && (MoveContact) && (Var(21) > 0)

;---------------------------------------------------------------------------
[State -1, Stand Strong]
type = ChangeState
value = 220
triggerall = PalNo != 12
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = !NumProjID(220)
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210)
trigger2 = movecontact
trigger3 = (StateType != A) && (MoveContact) && (Var(21) > 0)

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light
[State -1, Crouching Light]
type = ChangeState
value = 400
triggerall = PalNo != 12
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200)
trigger2 = movecontact
trigger3 = (StateType != A) && (MoveContact) && (Var(21) > 0)

;---------------------------------------------------------------------------
;Crouching Mid
[State -1, Crouching Mid]
type = ChangeState
value = 410
triggerall = PalNo != 12
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) || (stateno = 210) || (stateno = 400) 
trigger2 = movecontact
trigger3 = (StateType != A) && (MoveContact) && (Var(21) > 0)

;---------------------------------------------------------------------------
;Crouching Strong
[State -1, Crouching Strong]
type = ChangeState
value = 420
triggerall = PalNo != 12
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410) || (stateno = 200) || (stateno = 210)
trigger2 = movecontact
trigger3 = (StateType != A) && (MoveContact) && (Var(21) > 0)

;---------------------------------------------------------------------------
;Jump Light
[State -1, Jump Light]
type = ChangeState
value = 600
triggerall = PalNo != 12
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger2 = AnimElemTime(0) >= 7
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Mid
[State -1, Jump Mid]
type = ChangeState
value = 610
triggerall = PalNo != 12
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking

;---------------------------------------------------------------------------
;Jump Strong
[State -1, Jump Strong]
type = ChangeState
value = 620
triggerall = PalNo != 12
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) || (stateno = 610)
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
