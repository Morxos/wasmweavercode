(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_3172873618 3 funcref)
(global $global_4237333762 i64 (i64.const 4327252323963646255))
(func $run (export "run")
    (local i64 i64 f32)
    (local $temp i32)
    local.get 0
    nop
    local.tee 1
    i64.extend32_s
    f32.convert_i64_u
    f32.abs
    i64.trunc_f32_u
    i64.ctz
    f32.convert_i64_s
    f32.sqrt
    ;;INSPECT
    f32.ceil
    local.get 0
    i64.popcnt
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.popcnt
    i64.eqz
    i32.extend8_s
    i64.extend_i32_s
    i32.wrap_i64
    f32.reinterpret_i32
    local.get 0
    global.get $global_4237333762
    i64.rem_s
    i32.wrap_i64
    table.get $tab_3172873618
    drop
    f32.mul
    local.set 2
)

)