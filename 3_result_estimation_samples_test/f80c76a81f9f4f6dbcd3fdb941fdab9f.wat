(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3011645879 f32 (f32.const -2.1290286202056868e+18))
(global $global_83671528 (mut f32) (f32.const 5.476861481754558e+18))
(func $run (export "run") (result i32)
    (local i32 i32 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2630768321 (param i32)
        local.get 0
        local.set 0
        global.get $global_3011645879
        drop
        (i32.const -71)
        i64.extend_i32_s
        f64.convert_i64_s
        global.get $global_3011645879
        i64.trunc_f32_s
        (i64.const -198263)
        i64.rotr
        f64.convert_i64_s
        block (param f64) (result i64)
            (i32.const 68714)
            i32.clz
            i32.clz
            i32.clz
            drop
            i64.trunc_f64_u
        end

        f64.convert_i64_s
        f64.max
        f64.neg
        (i64.const 9)
        i64.extend32_s
        f32.convert_i64_s
        i32.reinterpret_f32
        f32.convert_i32_u
        global.set $global_83671528
        f64.nearest
        f64.neg
        (i32.const 9702)
        f32.reinterpret_i32
        f32.abs
        f64.promote_f32
        (i64.const -2788885)
        i64.ctz
        i64.eqz
        i32.extend16_s
        local.tee 1
        f32.convert_i32_s
        global.set $global_83671528
        f64.eq
        local.get 0
        (br_table 1)
        local.get 0
        i32.rotl
        i32.extend8_s
        br 1
        f32.reinterpret_i32
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2630768321
        drop
    end
    (i32.const 0)
    i32.clz
    nop
    i32.clz
)

)