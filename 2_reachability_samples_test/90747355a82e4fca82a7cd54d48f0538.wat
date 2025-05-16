(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_269945118 f32 (f32.const 3.9933355223731405e+18))
(global $global_161396176 (mut f32) (f32.const -3.684042076846031e+18))
(global $global_915607511 (mut i32) (i32.const 201142029))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    global.get $global_269945118
    i32.reinterpret_f32
    f64.convert_i32_u
    i32.trunc_f64_s
    block
        nop
        local.get 0
        i64.ctz
        local.set 0
        block
            ;;FLAG_3
            (i32.const -1972317470)
            f32.reinterpret_i32
            local.set 1
            local.get 0
            f64.reinterpret_i64
            f64.floor
            f64.ceil
            f64.trunc
            global.get $global_269945118
            (i32.const -4956)
            global.get $global_269945118
            global.set $global_161396176
            global.set $global_915607511
            f32.nearest
            f32.trunc
            global.set $global_161396176
            i64.trunc_f64_s
            (f32.const 147.37742614746094)
            i64.trunc_f32_u
            i64.rem_s
            i64.extend16_s
            f64.reinterpret_i64
            i32.trunc_f64_u
            (br_table 1 0 2)
            ;;FLAG_4
        end

        ;;FLAG_2
        nop
    end

    ;;FLAG_0
    (br_table 0)
    ;;FLAG_1
)

)