(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_314929048 (mut f64) (f64.const 9.181636371522865e+18))
(func $run (export "run")
    (local f64 i32 f32)
    (local $temp i32)
    global.get $global_314929048
    local.get 0
    f64.floor
    f64.sub
    f64.trunc
    nop
    f64.sqrt
    ;;INSPECT
    local.get 0
    f64.sub
    local.get 0
    f64.floor
    f32.demote_f64
    local.get 0
    f64.floor
    f64.sqrt
    global.get $global_314929048
    f64.floor
    local.get 0
    f64.sqrt
    f64.floor
    f64.ne
    i32.eqz
    i32.eqz
    i32.eqz
    i32.eqz
    i32.popcnt
    i32.extend16_s
    i32.clz
    i32.popcnt
    i32.clz
    local.set 1
    local.set 0
    local.set 2
    local.set 0
)

)