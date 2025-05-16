(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3034913180 (mut i64) (i64.const 7562887865345738884))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    local.get 0
    i64.extend32_s
    f32.convert_i64_u
    ;;INSPECT
    f32.ceil
    f32.neg
    f32.sqrt
    f32.trunc
    f32.trunc
    i32.reinterpret_f32
    i32.eqz
    f32.convert_i32_s
    f32.ceil
    i64.trunc_f32_u
    i64.rotr
    i64.popcnt
    global.get $global_3034913180
    i64.rem_s
    i64.eqz
    local.tee 1
    f32.convert_i32_u
    f32.sqrt
    f32.sqrt
    i32.reinterpret_f32
    local.set 1
)

)