(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1042098247 i64 (i64.const 2937612484735146404))
(global $global_2775635733 (mut i32) (i32.const -2135494174))
(func $run (export "run")
    (local f32 i64 i64 f64 i32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    global.get $global_1042098247
    i64.ctz
    local.tee 1
    f64.reinterpret_i64
    i64.trunc_f64_s
    local.tee 2
    f64.reinterpret_i64
    local.tee 3
    i32.trunc_f64_s
    i32.popcnt
    local.set 4
    f32.nearest
    local.get 0
    f32.le
    global.set $global_2775635733
    local.get 0
    f32.nearest
    f32.ceil
    (f32.const 63982870528.0)
    f32.ne
    (br_table 0)
    ;;FLAG_1
    global.get $global_1042098247
    drop
)

)