(module
(type $sig_function_2181046994 (func))
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_4256062024 f64 (f64.const 2.717782843709645e+16))
(global $global_1965617691 (mut f64) (f64.const 8.46536549598387e+18))
(global $global_2628677701 (mut f32) (f32.const -1.2343720890419118e+18))
(func $function_2181046994 (export "function_2181046994")
    (local i32)
    (local $temp i32)
    (i32.const -7082593)
    i32.extend16_s
    i32.ctz
    i32.clz
    global.get $global_4256062024
    i64.reinterpret_f64
    f64.convert_i64_u
    i64.reinterpret_f64
    (i32.const 0)
    i32.clz
    i32.clz
    f32.convert_i32_u
    f32.sqrt
    i32.trunc_f32_s
    drop
    i64.clz
    i64.extend32_s
    i64.extend16_s
    i64.extend32_s
    i64.ctz
    i64.eqz
    f32.convert_i32_s
    f64.promote_f32
    f64.sqrt
    i32.trunc_f64_s
    i32.shl
    local.set 0
    br 0
)
(func $run (export "run") (result f64)
    (local f32 f64 f32)
    (local $temp i32)
    nop
    local.get 0
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.abs
    i32.reinterpret_f32
    drop
    (i64.const 76229)
    i32.const 9
    loop $b_loop_1403392821 (param i32)
        block
            i32.const 9
            loop $b_loop_2956336080 (param i32)
                (f64.const 4.5924703586573507e+272)
                f64.ceil
                f64.ceil
                global.get $global_4256062024
                local.set 1
                nop
                drop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2956336080
                drop
            end
            nop
            (f64.const 4.4377322737685135e+48)
            f64.neg
            f64.ceil
            (f32.const -9440051.0)
            local.set 0
            f32.demote_f64
            drop
            (f64.const 1.1942508771472733e+91)
            (f64.const 1.7554210035517004e+138)
            f64.le
            br_if 0
        end

        nop
        (f64.const 0.0)
        (i64.const 893611)
        drop
        i32.trunc_f64_u
        i64.extend_i32_u
        drop
        block
            (i32.const -47)
            i64.extend_i32_u
            i64.clz
            call $function_2181046994
            f64.convert_i64_s
            br 2
            f32.demote_f64
            i32.reinterpret_f32
            i32.extend8_s
            br_if 0
        end

        nop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1403392821
        drop
    end
    (i32.const 444)
    i32.ctz
    drop
    i64.clz
    i32.const 9
    loop $b_loop_4019926146 (param i32)
        (i32.const 4964527)
        i32.eqz
        f64.convert_i32_u
        i64.trunc_f64_u
        nop
        i64.extend16_s
        i64.ctz
        (i32.const 2596848)
        i32.popcnt
        global.get $global_4256062024
        f64.floor
        f64.trunc
        i64.reinterpret_f64
        i64.eqz
        i32.shl
        (i32.const 0)
        i32.rotr
        i64.extend_i32_s
        i64.le_s
        i64.extend_i32_u
        i64.extend16_s
        f64.reinterpret_i64
        (i32.const 263937)
        drop
        local.get 0
        i32.reinterpret_f32
        br_if 1
        drop
        call $function_2181046994
        local.get 0
        f32.nearest
        (f32.const -0.14766547083854675)
        f32.min
        local.tee 2
        local.get 0
        f32.min
        f32.floor
        i32.reinterpret_f32
        i64.extend_i32_s
        global.get $global_4256062024
        global.set $global_1965617691
        f32.convert_i64_s
        f64.promote_f32
        br 1
        f32.demote_f64
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4019926146
        drop
    end
    f32.convert_i64_s
    global.set $global_2628677701
    global.get $global_4256062024
)

)