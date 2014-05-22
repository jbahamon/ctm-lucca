[Statedef 16001]
type = U
movetype = I
physics = U
anim = 0
velset = 0,0
ctrl = 0
poweradd = 0
juggle = 0
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2
[State ***1: ChangeState]
type = ChangeState
trigger1 = (!AnimTime)
value = IfElse(StateType = S,0,11)