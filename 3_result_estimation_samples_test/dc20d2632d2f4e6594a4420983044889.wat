(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2333709876 (mut i32) (i32.const 2145278885))
(global $global_2049623110 (mut f32) (f32.const 6.950912949439431e+18))
(func $run (export "run") (result i32)
    (local i32 f32)
    (local $temp i32)
    (i32.const 1823831122)
    global.set $global_2333709876
    block
        (f32.const 8.86727632537421e+28)
        global.set $global_2049623110
        (f32.const -30798606336.0)
        local.get 0
        i32.clz
        drop
        f32.floor
        local.set 1
    end

    (i64.const 527841914685751607)
    i64.extend8_s
    i64.ctz
    f64.convert_i64_s
    f64.sqrt
    i64.trunc_f64_s
    i64.extend8_s
    f32.convert_i64_u
    f32.abs
    f64.promote_f32
    f64.nearest
    f64.nearest
    f64.nearest
    f32.demote_f64
    local.set 1
    (i32.const 7)
)

)