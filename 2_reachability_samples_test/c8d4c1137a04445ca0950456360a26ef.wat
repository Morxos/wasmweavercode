(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1425242257 (mut f32) (f32.const -2.7347553140237926e+17))
(global $global_891138694 (mut i64) (i64.const -8417430593553665606))
(global $global_3093576849 (mut i32) (i32.const 430933089))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (i32.const 85843811)
    f64.convert_i32_s
    block
        block
            ;;FLAG_1
            block
                ;;FLAG_2
                nop
                global.get $global_1425242257
                f32.trunc
                (i32.const -434)
                local.set 0
                i32.reinterpret_f32
                (i64.const -1997233659184764200)
                i64.extend8_s
                global.set $global_891138694
                (br_table 3 2 0 1)
                ;;FLAG_3
            end

            (i32.const -327185)
            f32.convert_i32_u
            i32.trunc_f32_u
            i32.clz
            if
                ;;FLAG_4
                (i64.const 3)
                drop
                (f32.const -46923161600.0)
                f32.nearest
                f32.trunc
                f32.neg
                (f32.const 2437330321276928.0)
                f32.gt
                (br_table 0 1 2 3)
            else
                nop
                global.get $global_1425242257
                f32.trunc
                i32.reinterpret_f32
                i32.extend16_s
                i32.extend16_s
                nop
                global.set $global_3093576849
                br 0
            end

            return
        end

        ;;FLAG_0
        local.get 0
        (i32.const -647131)
        local.set 0
        local.set 0
    end

    i64.trunc_f64_s
    global.set $global_891138694
    br 0
)

)