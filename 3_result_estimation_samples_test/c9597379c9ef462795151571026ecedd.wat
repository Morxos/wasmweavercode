(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2151070682 (mut f64) (f64.const 1.0499457479115018e+18))
(global $global_1350209266 (mut i32) (i32.const -1016770590))
(func $run (export "run") (result f64)
    (local i32 f64)
    (local $temp i32)
    global.get $global_2151070682
    (i64.const 9)
    i64.eqz
    (f64.const 3.42253246632481e+44)
    (f64.const 8.955589899942552e-91)
    f64.gt
    i32.rotl
    i32.clz
    i32.clz
    local.tee 0
    local.get 0
    i32.eq
    global.set $global_1350209266
    i64.trunc_f64_u
    i64.extend32_s
    i64.popcnt
    i64.extend32_s
    i64.extend16_s
    f64.convert_i64_s
    local.tee 1
)

)