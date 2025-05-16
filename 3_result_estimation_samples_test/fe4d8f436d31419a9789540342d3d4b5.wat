(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_788293774 (mut i64) (i64.const -6222721799689056278))
(global $global_1705856106 (mut i32) (i32.const 1876393746))
(global $global_4227191861 (mut f64) (f64.const 7.120456879207688e+18))
(func $run (export "run") (result f32)
    (local f64 i32 f32)
    (local $temp i32)
    (i64.const 8171)
    global.set $global_788293774
    (f64.const 2.9744774029018416e-286)
    local.set 0
    (i64.const -9)
    i64.extend32_s
    i64.ctz
    global.set $global_788293774
    (i32.const -3)
    if
        (i64.const 0)
        f32.convert_i64_s
        f32.sqrt
        local.tee 2
        i32.reinterpret_f32
        (br_table 0)
    else
        (i32.const -264)
        local.tee 1
        global.set $global_1705856106
        local.get 0
        i32.trunc_f64_u
        i64.extend_i32_u
        (i32.const 371043594)
        i32.extend16_s
        global.set $global_1705856106
        i64.clz
        i32.wrap_i64
        br_if 0
        block
            i32.const 9
            loop $b_loop_4094559879 (param i32)
                (i64.const 7913)
                f32.convert_i64_u
                i64.trunc_f32_u
                f64.reinterpret_i64
                global.set $global_4227191861
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_4094559879
                drop
            end
            (i32.const -340431421)
            global.get $global_788293774
            nop
            drop
            br_if 0
        end

    end

    (i64.const 8728784710001519727)
    f64.reinterpret_i64
    f64.trunc
    (f64.const 5.455133920241573e+301)
    f64.gt
    i64.extend_i32_u
    f32.convert_i64_u
)

)