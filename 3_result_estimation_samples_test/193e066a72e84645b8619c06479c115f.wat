(module
(type $sig_function_3388119785 (func (param i64) (result f64)))
(type $sig_function_3206675614 (func (param f64 i32)))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1925411089 (mut i32) (i32.const -229760367))
(global $global_1710097088 (mut i64) (i64.const -1797162214072955030))
(global $global_285268992 (mut funcref) (ref.null func))
(global $global_276352198 (mut f64) (f64.const 1.6985707330357596e+18))
(global $global_3613897736 (mut f32) (f32.const 7.708925611477041e+18))
(func $function_3388119785 (export "function_3388119785") (param i64) (result f64)
    (local i32 i64 f64 f32)
    (local $temp i32)
    nop
    global.get $global_1925411089
    global.get $global_1925411089
    i32.shl
    f64.convert_i32_u
    i32.trunc_f64_s
    local.set 1
    local.get 0
    local.tee 2
    i64.extend16_s
    local.set 0
    (f32.const -9.246164633131676e+29)
    i32.reinterpret_f32
    f32.convert_i32_s
    i64.trunc_f32_s
    global.set $global_1710097088
    global.get $global_1925411089
    f32.convert_i32_u
    local.get 0
    local.get 0
    i64.rotr
    local.set 0
    i64.trunc_f32_s
    f64.convert_i64_u
    global.get $global_1925411089
    f32.convert_i32_u
    f32.sqrt
    (i64.const -1084100685302737062)
    f64.reinterpret_i64
    f64.neg
    f64.trunc
    f64.ceil
    f64.floor
    f64.trunc
    f64.floor
    local.set 3
    (i32.const -264981379)
    i64.extend_i32_u
    f64.reinterpret_i64
    local.set 3
    nop
    i64.trunc_f32_s
    f64.reinterpret_i64
    f64.ge
    drop
    (i32.const 84)
    f32.convert_i32_u
    local.set 4
    (i32.const 4)
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.ctz
    nop
    f64.reinterpret_i64
)
(func $function_3206675614 (export "function_3206675614") (param f64 i32)
    (local f64)
    (local $temp i32)
    local.get 0
    block
        block
            global.get $global_1925411089
            global.get $global_1925411089
            i32.div_u
            i32.extend16_s
            (f64.const 0.0)
            i32.trunc_f64_u
            i32.le_u
            local.get 0
            f64.abs
            nop
            f64.trunc
            f64.abs
            f64.abs
            f64.abs
            f64.neg
            f64.abs
            (f64.const 7.534812954496967e+179)
            f64.sub
            drop
            i32.clz
            i32.clz
            br_if 0
            global.get $global_1925411089
            i32.extend16_s
            i64.extend_i32_s
            f64.convert_i64_u
            i32.trunc_f64_u
            global.get $global_1925411089
            i32.rem_s
            drop
            global.get $global_1925411089
            i32.eqz
            drop
            (i64.const 89086464)
            i64.popcnt
            f64.convert_i64_u
            i32.trunc_f64_s
            local.set 1
        end

        global.get $global_1925411089
        i32.const 9
        loop $b_loop_1712729713 (param i32)
            nop
            global.get $global_1925411089
            f64.convert_i32_u
            nop
            nop
            local.tee 2
            ref.func $function_3388119785
            global.set $global_285268992
            f64.floor
            nop
            global.set $global_276352198
            return
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1712729713
            drop
        end
        local.set 1
        (f32.const 2.832957820400019e+22)
        f32.nearest
        global.set $global_3613897736
        return
        (f32.const -2.6424524986592636e-21)
        nop
        f64.promote_f32
        drop
        nop
    end

    i64.reinterpret_f64
    drop
    global.get $global_1925411089
    global.set $global_1925411089
)
(func $run (export "run") (result i32)
    (local f64 i64 f64)
    (local $temp i32)
    (f64.const 3.4359685964468493e-105)
    global.get $global_1925411089
    local.get 0
    block (param f64)
        i32.const 9
        loop $b_loop_1051621347 (param i32)
            global.get $global_1925411089
            global.set $global_1925411089
            nop
            (i64.const 748)
            local.set 1
            br 1
            (i64.const 346784706)
            call $function_3388119785
            (i64.const 44283)
            f64.reinterpret_i64
            local.tee 2
            f64.eq
            br_if 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1051621347
            drop
        end
        i32.trunc_f64_u
        i64.extend_i32_s
        drop
        ref.func $function_3388119785
        global.set $global_285268992
    end

    i32.clz
    i32.extend16_s
    call $function_3206675614
    global.get $global_1925411089
)

)