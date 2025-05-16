(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1338597441 (mut f64) (f64.const -7.590032956556554e+17))
(global $global_473967276 (mut i32) (i32.const 701667819))
(func $run (export "run") (result i64)
    (local i64 f64 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3387715680 (param i32)
        (f64.const 9.613603556423993e+126)
        drop
        (i64.const 2778)
        (f64.const 4.893113018559913e+262)
        drop
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3387715680
        drop
    end
    (i32.const -88230735)
    f64.convert_i32_u
    i32.trunc_f64_u
    i32.clz
    f64.convert_i32_s
    global.set $global_1338597441
    local.get 0
    (i32.const -80712121)
    br_if 0
    f64.reinterpret_i64
    (f64.const 1.9007354192134223e-188)
    f64.ge
    (f64.const 1.0630569762693754e-06)
    local.tee 1
    f64.floor
    global.get $global_1338597441
    f64.ge
    i32.shl
    if
        (i32.const -27)
        (f64.const 9.875178420819355e-177)
        global.set $global_1338597441
        global.set $global_473967276
        nop
    else
        (i64.const -3)
        i32.wrap_i64
        local.set 2
        (i64.const -42529)
        f32.convert_i64_s
        f32.nearest
        local.get 0
        f64.reinterpret_i64
        f64.neg
        global.set $global_1338597441
        drop
        (i64.const -6847706)
        drop
        br 0
        nop
    end

    local.get 0
)

)