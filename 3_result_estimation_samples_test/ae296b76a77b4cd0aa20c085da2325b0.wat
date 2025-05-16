(module
(type $sig_function_1236412131 (func (param f32) (result f64)))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2607715188 f64 (f64.const 6.347098076948259e+18))
(global $global_644766148 (mut i64) (i64.const -8072449391691055264))
(global $global_833982755 (mut f64) (f64.const 3.4209075240123003e+18))
(func $function_1236412131 (export "function_1236412131") (param f32) (result f64)
    (local i64)
    (local $temp i32)
    (f32.const -9.844279171228739e+29)
    (f64.const 8.452009296301775e-47)
    (f64.const 7.311040402785733e+263)
    (f32.const -6.039997352631313e-19)
    i64.trunc_f32_s
    drop
    f64.gt
    i32.clz
    f64.convert_i32_u
    i64.trunc_f64_s
    global.get $global_2607715188
    global.set $global_833982755
    local.tee 1
    f32.convert_i64_u
    local.set 0
    (i64.const -6011925)
    i32.wrap_i64
    drop
    f64.promote_f32
    f64.ceil
)
(func $run (export "run") (result i32)
    (local f32 f64 i64)
    (local $temp i32)
    global.get $global_2607715188
    drop
    (f64.const 7.457841157108589e-54)
    (f64.const 1.50371127695738e+298)
    block
        local.get 0
        block
            (i64.const -88)
            global.set $global_644766148
            local.get 0
            f64.promote_f32
            f64.trunc
            f64.ceil
            f32.demote_f64
            f32.nearest
            i32.trunc_f32_u
            i64.extend_i32_s
            f64.convert_i64_s
            local.set 1
        end

        (i32.const 824)
        i64.extend_i32_u
        block (param i64)
            (i32.const 3130435)
            i64.extend_i32_u
            i64.le_s
            f32.convert_i32_s
            f32.sqrt
            call $function_1236412131
            drop
        end

        i64.trunc_f32_s
        nop
        i64.extend8_s
        local.set 2
    end

    f64.gt
)

)