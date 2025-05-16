(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_311431716 (mut f64) (f64.const 1.5699622835354173e+18))
(global $global_661107998 (mut f32) (f32.const -5.774133142021472e+18))
(global $global_1872434567 (mut i64) (i64.const 7107327318518211823))
(func $run (export "run") (result f64)
    (local f64 i64 f32 i32)
    (local $temp i32)
    (f32.const 1.81911524099573e+22)
    (f64.const 5.044007303825666e-14)
    global.set $global_311431716
    f32.abs
    global.set $global_661107998
    local.get 0
    (i32.const -3815249)
    f64.convert_i32_u
    (i64.const 9)
    global.set $global_1872434567
    f64.lt
    if
        (i64.const 0)
        local.get 0
        i32.trunc_f64_s
        i32.clz
        local.get 0
        global.get $global_311431716
        f64.lt
        i32.le_u
        i32.extend8_s
        f64.convert_i32_u
        i64.trunc_f64_s
        i32.wrap_i64
        f32.convert_i32_u
        i64.trunc_f32_s
        i64.lt_u
        i32.clz
        f32.convert_i32_s
        i64.trunc_f32_s
        drop
    else
        (i64.const 3198336285847180965)
        f64.reinterpret_i64
        f64.neg
        local.set 0
        (i64.const -2)
        local.tee 1
        f32.convert_i64_s
        f64.promote_f32
        global.set $global_311431716
    end

    local.get 0
    global.set $global_311431716
    (f64.const 3.6601287086933534e+232)
    (f32.const -3.595470896126273e-17)
    f32.nearest
    f64.promote_f32
    f64.gt
    f32.reinterpret_i32
    local.set 2
    (i64.const 30569)
    (i32.const -131432150)
    local.set 3
    f64.convert_i64_s
    (i64.const -80739)
    i64.extend32_s
    (i64.const -1978147169204051530)
    i64.le_s
    i32.ctz
    br_if 0
)

)