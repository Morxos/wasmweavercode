(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_520806220 (mut i64) (i64.const 2734136521923892169))
(global $global_2186798145 (mut f32) (f32.const 4.380131343518925e+17))
(func $run (export "run") (result i32)
    (local i64 i64 i64 f64 i32)
    (local $temp i32)
    (f64.const 5.331349125363949e+245)
    f64.floor
    drop
    block
        nop
        nop
        (i64.const 2725)
        local.set 0
        (i64.const 624)
        global.set $global_520806220
        (i32.const 630240)
        i32.clz
        br_if 0
    end

    (i32.const -29)
    if
        (i32.const 714310726)
        i32.ctz
        i32.popcnt
        nop
        local.get 0
        local.tee 1
        (i64.const 402853656936673682)
        block
            (i32.const -93140)
            i64.extend_i32_u
            global.set $global_520806220
            nop
            i32.const 9
            loop $b_loop_958555908 (param i32)
                (i32.const -6003)
                i64.extend_i32_s
                local.tee 2
                (i64.const -3419504693732894211)
                i64.gt_u
                global.get $global_520806220
                i64.extend16_s
                f64.convert_i64_u
                f64.ceil
                f64.abs
                local.set 3
                drop
                br 1
                br 1
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_958555908
                drop
            end
            block
                (f32.const -7.68068790435791)
                (f32.const 1.8455582334333998e-17)
                f32.eq
                f32.convert_i32_u
                global.set $global_2186798145
            end

            (i32.const 1847060282)
            block
                (i32.const -595)
                global.get $global_520806220
                f64.reinterpret_i64
                f64.floor
                i32.trunc_f64_s
                i32.shl
                (i64.const 3049707)
                i64.clz
                drop
                br_if 0
            end

            local.set 4
        end

        i64.le_u
        i32.shl
        f32.reinterpret_i32
        global.set $global_2186798145
    else
        local.get 0
        (i32.const 268)
        i64.extend_i32_u
        local.set 0
        global.set $global_520806220
    end

    (i32.const 4109213)
    f64.convert_i32_u
    f64.floor
    i32.trunc_f64_u
)

)