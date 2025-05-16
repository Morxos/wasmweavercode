(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_4044250590 (mut i64) (i64.const 5710847167065747716))
(global $global_3443409572 (mut i32) (i32.const 1296276978))
(func $run (export "run") (result f64)
    (local i64)
    (local $temp i32)
    block
        (f64.const 5.252044354607874e-184)
        i32.trunc_f64_u
        i64.extend_i32_s
        i64.ctz
        global.set $global_4044250590
    end

    (i32.const 78529669)
    global.set $global_3443409572
    local.get 0
    nop
    f64.reinterpret_i64
)

)