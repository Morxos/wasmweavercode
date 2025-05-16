(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1722452662 (mut i64) (i64.const 6409931849785421963))
(global $global_219356154 (mut f32) (f32.const 1.899526321189421e+18))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i64.const -122)
        local.tee 0
        i64.extend32_s
        i64.extend32_s
        global.set $global_1722452662
    end

    ;;FLAG_1
    global.get $global_1722452662
    f64.reinterpret_i64
    f64.nearest
    i64.reinterpret_f64
    local.get 0
    i64.gt_s
    i64.extend_i32_u
    i64.ctz
    (f32.const 0.0)
    local.set 1
    f32.convert_i64_u
    global.set $global_219356154
    local.get 0
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_2
    br 0
)

)