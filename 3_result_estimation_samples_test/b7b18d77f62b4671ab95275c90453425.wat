(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3233587827 (mut f64) (f64.const -8.654022241318052e+18))
(global $global_2147102696 (mut f32) (f32.const -5.833180214967927e+18))
(func $run (export "run") (result f32)
    (local f64 i64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_4031765652 (param i32)
        block
            i32.const 9
            loop $b_loop_431457525 (param i32)
                (f64.const 5.880099805624125e+166)
                f64.floor
                drop
                global.get $global_3233587827
                local.set 0
                br 1
                (i64.const -78)
                i64.ctz
                local.set 1
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_431457525
                drop
            end
            (f32.const -0.0042375484481453896)
            i32.trunc_f32_s
            f64.convert_i32_u
            f64.nearest
            (i64.const 734358)
            f32.convert_i64_s
            global.set $global_2147102696
            f64.sqrt
            f64.floor
            local.set 0
        end

        (f32.const -2.8001228264833024e+16)
        local.set 2
        nop
        nop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4031765652
        drop
    end
    (i64.const 4361718)
    i64.popcnt
    i64.extend16_s
    f32.convert_i64_u
    (f32.const 4.1520012899551274e-19)
    local.set 2
)

)