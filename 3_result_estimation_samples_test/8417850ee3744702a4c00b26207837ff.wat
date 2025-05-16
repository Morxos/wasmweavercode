(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3289833433 (mut f64) (f64.const -2.342653051750193e+18))
(global $global_3648027126 (mut i64) (i64.const -4016392752636725435))
(global $global_3739018199 (mut f32) (f32.const 4.193984024936448e+18))
(func $run (export "run") (result i32)
    (local f64 f64 i32 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2444785720 (param i32)
        nop
        nop
        nop
        global.get $global_3289833433
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2444785720
        drop
    end
    global.get $global_3289833433
    global.set $global_3289833433
    local.get 0
    local.tee 1
    block (param f64) (result i64)
        f64.neg
        f32.demote_f64
        drop
        (i64.const 13350445)
        i64.extend32_s
    end

    global.set $global_3648027126
    nop
    global.get $global_3289833433
    f64.ceil
    f32.demote_f64
    f32.neg
    global.set $global_3739018199
    (f32.const 7.824806358414094e-10)
    (i32.const 25)
    block (param i32)
        local.set 2
        (f64.const 1.5292245990472035e+305)
        (i64.const -2418)
        i64.extend8_s
        f64.convert_i64_s
        f64.gt
        f64.convert_i32_s
        nop
        f64.floor
        f64.nearest
        i64.trunc_f64_u
        i64.extend32_s
        i64.eqz
        i64.extend_i32_s
        i64.eqz
        i64.extend_i32_s
        nop
        i32.wrap_i64
        f32.convert_i32_s
        f32.abs
        f32.nearest
        f64.promote_f32
        i64.trunc_f64_s
        (i32.const -814397239)
        i32.ctz
        f32.convert_i32_s
        f32.floor
        local.set 3
        i32.wrap_i64
        i64.extend_i32_u
        global.set $global_3648027126
    end

    (i32.const -90848172)
    (i32.const 81399)
    i32.eqz
    i32.shl
    f64.convert_i32_u
    f64.nearest
    f64.trunc
    f64.nearest
    local.set 0
    drop
    (i64.const -426)
    i32.wrap_i64
)

)