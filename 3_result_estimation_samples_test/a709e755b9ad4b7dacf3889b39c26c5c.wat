(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3222528296 (mut f64) (f64.const 1.2240612209645302e+18))
(func $run (export "run") (result f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2364352211 (param i32)
        (f64.const 2.0283210555371576e+26)
        f64.ceil
        global.set $global_3222528296
        (i32.const 256493924)
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2364352211
        drop
    end
    (i32.const 6)
    f64.convert_i32_u
    f64.sqrt
    (i64.const 27152)
    i64.extend8_s
    i64.extend32_s
    f32.convert_i64_u
    f32.abs
    f32.sqrt
    i32.reinterpret_f32
    i32.clz
    f32.reinterpret_i32
    f64.promote_f32
    global.get $global_3222528296
    f64.gt
    i32.eqz
    i64.extend_i32_s
    f32.convert_i64_u
    i32.reinterpret_f32
    drop
    global.get $global_3222528296
    f64.eq
    f32.convert_i32_s
)

)