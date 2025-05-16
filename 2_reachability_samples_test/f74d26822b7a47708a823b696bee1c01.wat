(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_648905626 f32 (f32.const 8.477264199527956e+17))
(global $global_1371139025 (mut f32) (f32.const -5.676533892870308e+17))
(func $run (export "run")
    (local f64 i64 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (f64.const 7.536411137892792e+243)
        (i32.const -97)
        f64.convert_i32_u
        local.tee 0
        f64.ceil
        f64.le
        local.get 0
        i64.trunc_f64_s
        i32.wrap_i64
        i32.or
        i64.extend_i32_s
        (i64.const 582670932)
        i64.div_u
        (i64.const 289064137)
        i64.rem_u
        local.tee 1
        global.get $global_648905626
        f32.nearest
        i32.reinterpret_f32
        local.set 2
        i64.eqz
        drop
        (f32.const -191.5463409423828)
        global.set $global_1371139025
    end

    ;;FLAG_1
    (f64.const 7.2283110947459485e-264)
    i64.trunc_f64_s
    i64.clz
    i64.extend16_s
    i64.extend16_s
    i64.eqz
    (br_table 0)
    ;;FLAG_2
)

)