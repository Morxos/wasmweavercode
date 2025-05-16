(module
(type $sig_function_1565656478 (func (param f64)))
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1201554014 (mut f64) (f64.const 3.8458222848243487e+18))
(global $global_1867769028 (mut i64) (i64.const -5656597122808520888))
(global $global_617082147 (mut i32) (i32.const -1741594969))
(func $function_1565656478 (export "function_1565656478") (param f64)
    (local $temp i32)
    (f64.const 1.8302553858109858e+102)
    nop
    f64.floor
    f64.trunc
    f64.neg
    global.get $global_1201554014
    f64.neg
    f64.ceil
    f64.mul
    f64.neg
    drop
)
(func $run (export "run") (result i64)
    (local f32 f64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2705983175 (param i32)
        (i32.const 6911139)
        (f64.const 4.2758436039694576e-49)
        global.set $global_1201554014
        if
            (i32.const 686)
            drop
            (f32.const 2.260455493787499e+32)
            global.get $global_1201554014
            f64.neg
            global.set $global_1201554014
            local.set 0
        else
            i32.const 9
            loop $b_loop_2828357870 (param i32)
                (f32.const -1.630947631490704e-21)
                i64.trunc_f32_s
                global.get $global_1201554014
                drop
                f64.reinterpret_i64
                drop
                local.get 0
                i32.trunc_f32_s
                i32.clz
                f32.convert_i32_u
                i64.trunc_f32_s
                f64.reinterpret_i64
                local.set 1
                (i64.const 5422909909618682802)
                global.set $global_1867769028
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2828357870
                drop
            end
            (i32.const 62168844)
            global.set $global_617082147
            global.get $global_1201554014
            i64.trunc_f64_u
            br 2
            f32.convert_i64_u
            i32.reinterpret_f32
            br_if 0
        end

        (f32.const -1.1202894818076819e-15)
        local.tee 2
        f32.abs
        i64.trunc_f32_s
        br 1
        f64.convert_i64_s
        call $function_1565656478
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2705983175
        drop
    end
    (f64.const 5.464136485216776e-141)
    call $function_1565656478
    (f64.const 6.735625355320102e+149)
    f64.trunc
    nop
    call $function_1565656478
    (f32.const -4.1975559313123245e-12)
    i64.trunc_f32_s
)

)