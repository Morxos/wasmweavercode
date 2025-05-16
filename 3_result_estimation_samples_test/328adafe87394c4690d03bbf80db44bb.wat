(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_866111831 (mut i64) (i64.const 5130106013685027040))
(global $global_1412689867 (mut i32) (i32.const 1799653146))
(func $run (export "run") (result i32)
    (local $temp i32)
    (i32.const 2860919)
    f32.convert_i32_u
    i32.reinterpret_f32
    block
        (i32.const 542289287)
        i64.extend_i32_u
        global.set $global_866111831
        (i32.const -3)
        i32.extend8_s
        i32.ctz
        i32.popcnt
        global.set $global_1412689867
    end

    nop
    i32.extend16_s
)

)