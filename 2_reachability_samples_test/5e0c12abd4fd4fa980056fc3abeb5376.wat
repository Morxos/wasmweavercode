(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3805445921 (mut i64) (i64.const 775350971205488821))
(global $global_3596713035 (mut i32) (i32.const -402950219))
(func $run (export "run")
    (local i32 i64 i64 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        block
            (f32.const 1.2391888335829301e+36)
            (i32.const 6975071)
            local.set 0
            f32.sqrt
            (i32.const -76)
            (f64.const 6.184828893929517e+283)
            drop
            f32.reinterpret_i32
            f32.ne
            i32.ctz
            i64.extend_i32_u
            i64.extend8_s
            i64.ctz
            i64.extend8_s
            local.tee 1
            i64.ctz
            i64.clz
            i64.extend8_s
            f64.reinterpret_i64
            f64.nearest
            i64.trunc_f64_u
            i64.extend8_s
            nop
            i64.ctz
            i64.ctz
            global.set $global_3805445921
        end

        ;;FLAG_4
        local.get 0
        local.get 0
        i32.shr_s
        i64.extend_i32_u
        local.tee 2
        (f32.const -1.3414033960470277e-17)
        (i64.const 8)
        i32.wrap_i64
        i64.extend_i32_u
        i32.wrap_i64
        f32.reinterpret_i32
        f32.add
        local.set 3
        f64.reinterpret_i64
        f64.abs
        i64.trunc_f64_u
        i64.clz
        i64.eqz
        (br_table 1 0)
    end

    ;;FLAG_1
    (i32.const 64538)
    global.set $global_3596713035
    nop
    (f32.const 0.4798281192779541)
    i32.trunc_f32_u
    i32.eqz
    (br_table 0)
    ;;FLAG_2
)

)