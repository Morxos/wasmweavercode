(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3770133607 (mut i64) (i64.const 3042287451704548386))
(func $run (export "run")
    (local f32 i32 i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (i64.const 166)
        i64.popcnt
        i64.clz
        global.set $global_3770133607
        (f32.const 1.6151248950051446e+28)
        local.tee 0
        (i64.const -7505444)
        i64.eqz
        local.set 1
        i32.reinterpret_f32
        (br_table 1 0)
        ;;FLAG_3
    end

    ;;FLAG_1
    (i32.const -8)
    local.get 0
    (f64.const 1.4485205977110382e-120)
    i64.trunc_f64_u
    local.tee 2
    i64.eqz
    f32.convert_i32_u
    f32.ne
    i32.shr_s
    i32.clz
    local.set 1
)

)