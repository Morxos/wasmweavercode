(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2334881461 (mut f64) (f64.const -4.909300461145532e+18))
(func $run (export "run")
    (local f64 f32 f64 i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2334881461
    global.get $global_2334881461
    f64.min
    local.set 0
    (f32.const 4385689305088.0)
    local.set 1
    local.get 0
    (i64.const 83214)
    i64.eqz
    drop
    local.tee 2
    block (param f64) (result f32)
        ;;FLAG_2
        drop
        (i32.const -44246)
        i32.popcnt
        (f32.const -9.162015915526375e-17)
        local.set 1
        f32.reinterpret_i32
    end

    ;;FLAG_1
    i32.reinterpret_f32
    local.set 3
    global.get $global_2334881461
    local.set 0
)

)