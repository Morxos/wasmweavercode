(module
(type $sig_function_2209527505 (func (param i64)))
(type $sig_function_3263944717 (func))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3792858789 (mut f32) (f32.const 2.6779111469833257e+18))
(global $global_376720883 (mut f64) (f64.const -6.863965807467016e+18))
(global $global_3304916649 (mut i64) (i64.const -5796695466417831726))
(global $global_4191927748 (mut i32) (i32.const 1203577143))
(func $function_2209527505 (export "function_2209527505") (param i64)
    (local f32)
    (local $temp i32)
    nop
    global.get $global_3792858789
    f32.abs
    local.set 1
    local.get 0
    i64.extend8_s
    local.set 0
    global.get $global_3792858789
    local.set 1
    local.get 0
    i64.extend16_s
    global.set $global_3304916649
)
(func $function_3263944717 (export "function_3263944717")
    (local i32 i64 f64 i32 i64)
    (local $temp i32)
    nop
    nop
    i32.const 9
    loop $b_loop_515273666 (param i32)
        block
            nop
            (f32.const -1.2648485205934895e-27)
            f32.nearest
            i32.trunc_f32_s
            local.set 0
            br 0
            (i64.const -329)
            (f64.const 2.3726713850552932e-163)
            global.set $global_376720883
            local.set 1
        end

        local.get 0
        local.set 0
        (i32.const -1376)
        i32.clz
        br_if 1
        global.get $global_3792858789
        global.set $global_3792858789
        local.get 0
        f64.convert_i32_u
        local.tee 2
        i32.trunc_f64_u
        br_if 1
        (i32.const 430023394)
        local.set 0
        (i32.const 4560212)
        f32.convert_i32_u
        f64.promote_f32
        i64.trunc_f64_u
        global.set $global_3304916649
        (i64.const 299417015)
        call $function_2209527505
        block
            (i32.const 21647825)
            global.set $global_4191927748
            (i64.const 7535)
            global.get $global_3792858789
            f32.sqrt
            i64.trunc_f32_s
            i64.add
            global.set $global_3304916649
            nop
            return
        end

        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_515273666
        drop
    end
    (i32.const -1099731281)
    (i32.const 5240)
    nop
    global.set $global_4191927748
    local.tee 3
    br_if 0
    (i64.const 2814317)
    (f32.const -873740.4375)
    i32.reinterpret_f32
    i64.extend_i32_u
    i64.rotl
    (i64.const 640546)
    i64.sub
    local.tee 4
    i64.clz
    i64.extend16_s
    f64.convert_i64_u
    f32.demote_f64
    i64.trunc_f32_u
    i64.popcnt
    i32.wrap_i64
    (i32.const -1266958227)
    i32.rotr
    br_if 0
)
(func $run (export "run") (result i32)
    (local f32 i64 f64)
    (local $temp i32)
    (f32.const 4.4411332931639837e+21)
    global.set $global_3792858789
    global.get $global_3792858789
    f32.nearest
    f32.trunc
    global.set $global_3792858789
    block
        local.get 0
        nop
        f32.ceil
        i64.trunc_f32_s
        nop
        i64.ctz
        local.set 1
    end

    global.get $global_3792858789
    call $function_3263944717
    f64.promote_f32
    local.tee 2
    f32.demote_f64
    global.set $global_3792858789
    (i32.const 412229605)
    nop
)

)