(module
(type $sig_function_3020677780 (func (param i32)))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1634511041 (mut i32) (i32.const -1392427832))
(global $global_750926437 (mut f64) (f64.const -8.151076960359168e+18))
(func $function_3020677780 (export "function_3020677780") (param i32)
    (local f32 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3242859585 (param i32)
        nop
        (i64.const -87043290)
        f32.convert_i64_s
        i32.trunc_f32_s
        i32.popcnt
        i64.extend_i32_u
        f64.convert_i64_s
        i32.trunc_f64_u
        global.set $global_1634511041
        global.get $global_1634511041
        global.set $global_1634511041
        global.get $global_1634511041
        f32.convert_i32_u
        f64.promote_f32
        (i32.const 1419842735)
        i32.eqz
        i64.extend_i32_s
        (f64.const 2.701226994182742e-18)
        drop
        i64.clz
        f32.convert_i64_s
        nop
        local.set 1
        nop
        i32.trunc_f64_u
        nop
        global.set $global_1634511041
        global.get $global_1634511041
        br_if 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3242859585
        drop
    end
    (f64.const 1.8094095733371012e+102)
    f64.trunc
    drop
    local.get 0
    f32.reinterpret_i32
    f64.promote_f32
    drop
    block
        nop
        global.get $global_1634511041
        drop
        (i32.const 35903)
        global.set $global_1634511041
        (f64.const 1.6239964902389092e+35)
        nop
        f64.trunc
        global.set $global_750926437
        nop
        (i32.const 4)
        (f32.const -14765592150016.0)
        nop
        f32.ceil
        i64.trunc_f32_s
        f32.convert_i64_s
        global.get $global_1634511041
        i32.clz
        i32.ctz
        f32.reinterpret_i32
        f32.gt
        (f64.const 6.796918202099404e-211)
        global.set $global_750926437
        i32.rotl
        f64.convert_i32_s
        local.set 2
        (i32.const -1)
        br_if 0
    end

)
(func $run (export "run") (result i32)
    (local i64 f32)
    (local $temp i32)
    (i64.const -304944)
    (i64.const 145141)
    f64.convert_i64_u
    drop
    local.set 0
    (f64.const 1.1246910683274488e+268)
    f64.nearest
    block (param f64) (result f32)
        f64.floor
        drop
        (i64.const -61766)
        f64.convert_i64_s
        local.get 0
        i32.wrap_i64
        drop
        local.get 0
        i32.wrap_i64
        call $function_3020677780
        global.set $global_750926437
        (f64.const 5.3844248220900085e-154)
        global.get $global_1634511041
        f64.convert_i32_s
        global.set $global_750926437
        f64.sqrt
        i32.trunc_f64_s
        global.set $global_1634511041
        nop
        (f32.const 0.0)
    end

    local.tee 1
    i32.trunc_f32_s
)

)