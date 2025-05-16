(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4256770686 (mut i32) (i32.const -1056265387))
(func $run (export "run")
    (local f64 i32 i64 f64)
    (local $temp i32)
    local.get 0
    f64.trunc
    f64.neg
    f64.abs
    f32.demote_f64
    f32.abs
    f32.nearest
    f32.ceil
    local.get 0
    f64.abs
    f32.demote_f64
    f32.eq
    local.tee 1
    f64.convert_i32_s
    f32.demote_f64
    i32.reinterpret_f32
    (i64.const 3)
    local.tee 2
    i64.popcnt
    f32.convert_i64_s
    f64.promote_f32
    f64.sqrt
    local.tee 3
    f64.floor
    f64.sqrt
    f64.nearest
    f64.sqrt
    drop
    global.set $global_4256770686
    global.get $global_4256770686
    ;;INSPECT
    nop
    drop
)

)