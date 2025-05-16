(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2010914936 (mut f64) (f64.const 7.938425966203599e+18))
(global $global_2568892580 (mut i32) (i32.const -923690677))
(func $run (export "run") (result i64)
    (local i64 f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_326847031 (param i32)
        local.get 0
        i64.clz
        i64.extend32_s
        local.set 0
        (f32.const -6.378514525038825e+33)
        local.set 1
        (i32.const 26)
        local.set 2
        (i64.const -62)
        f64.convert_i64_s
        global.set $global_2010914936
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_326847031
        drop
    end
    global.get $global_2010914936
    i32.trunc_f64_s
    i64.extend_i32_u
    i64.clz
    i64.extend16_s
    i64.popcnt
    (i32.const -379310047)
    f64.convert_i32_s
    i32.trunc_f64_s
    nop
    f64.convert_i32_u
    i64.trunc_f64_u
    i64.lt_u
    (i64.const -1429977552729868446)
    f32.convert_i64_s
    i32.reinterpret_f32
    i32.extend16_s
    i32.shl
    global.set $global_2568892580
    (i64.const 637100)
)

)