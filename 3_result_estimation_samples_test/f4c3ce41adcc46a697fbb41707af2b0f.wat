(module
(type $sig_function_4075237174 (func))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_4226851913 (mut i64) (i64.const 3452517713456104602))
(global $global_1632147857 (mut f64) (f64.const -4.836824625734212e+18))
(global $global_2106303267 (mut f32) (f32.const -7.144993244416311e+18))
(func $function_4075237174 (export "function_4075237174")
    (local i64)
    (local $temp i32)
    (i32.const 937)
    i32.clz
    global.get $global_4226851913
    i64.ctz
    i64.extend16_s
    local.set 0
    br_if 0
    (i64.const 40902480)
    f64.convert_i64_u
    (i32.const 1174746317)
    i32.ctz
    f32.reinterpret_i32
    i64.trunc_f32_s
    local.set 0
    i32.trunc_f64_u
    i32.ctz
    i32.ctz
    i32.extend8_s
    br_if 0
)
(func $run (export "run") (result i32)
    (local i32 funcref)
    (local $temp i32)
    i32.const 9
    loop $b_loop_4113063357 (param i32)
        i32.const 9
        loop $b_loop_618314332 (param i32)
            nop
            (i64.const 497636)
            i64.extend8_s
            global.set $global_4226851913
            nop
            (f32.const 3.2468172340571375e+21)
            (i32.const 65)
            (i32.const 0)
            i32.rotl
            i32.ctz
            i32.clz
            global.get $global_4226851913
            i64.extend32_s
            i64.extend16_s
            i64.ctz
            global.set $global_4226851913
            i32.extend16_s
            i64.extend_i32_u
            i64.extend32_s
            i64.eqz
            f32.convert_i32_u
            (f32.const -59.84540557861328)
            f32.eq
            call $function_4075237174
            i64.extend_i32_s
            f64.convert_i64_s
            global.set $global_1632147857
            global.set $global_2106303267
            global.get $global_4226851913
            i64.extend8_s
            f64.convert_i64_s
            i32.trunc_f64_u
            f32.reinterpret_i32
            f32.abs
            (i32.const -6761055)
            local.tee 0
            i32.eqz
            f32.convert_i32_u
            f32.eq
            br 2
            drop
            local.get 0
            i64.extend_i32_u
            i64.clz
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_618314332
            drop
        end
        (f64.const 3.8399566222881944e+156)
        drop
        (i64.const 26480233)
        i64.extend8_s
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4113063357
        drop
    end
    ref.func $function_4075237174
    local.set 1
    nop
    (i64.const 11826)
    f64.reinterpret_i64
    i32.trunc_f64_s
    local.get 0
    i32.extend8_s
    i32.shl
    global.get $global_4226851913
    f64.convert_i64_s
    i64.reinterpret_f64
    drop
    i32.popcnt
)

)