(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_431460759 (mut i32) (i32.const -1079375891))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    block
        ;;FLAG_1
        local.get 0
        i32.extend16_s
        nop
        nop
        global.set $global_431460759
        block
            block
                ;;FLAG_4
                (f64.const 7.789965087306965e+300)
                f64.trunc
                drop
                (f32.const -5.809151310716551e-35)
                nop
                f32.nearest
                i32.reinterpret_f32
                global.set $global_431460759
                local.get 0
                local.set 0
            end

            ;;FLAG_2
            nop
            (f32.const 2.218297849181564e-23)
            i32.trunc_f32_u
            local.set 0
            global.get $global_431460759
            (br_table 2 1 0)
            ;;FLAG_3
            local.get 0
            i32.clz
            (br_table 0 2 1)
        end

    end

    global.get $global_431460759
    nop
    i32.clz
    f64.convert_i32_s
    i64.trunc_f64_u
    i64.extend8_s
    local.tee 1
    f32.convert_i64_u
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_0
)

)