(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_44387003 (mut i64) (i64.const 5748668590915733647))
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_711113780 (param i32)
        (f32.const -5.4804667900436645e+26)
        drop
        (f64.const 6.961848473934108e+116)
        f64.trunc
        (i64.const 3160338)
        i64.eqz
        local.tee 0
        i32.extend8_s
        i32.extend16_s
        f32.convert_i32_s
        drop
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_711113780
        drop
    end
    (f32.const -1.2445505967827605e+30)
    drop
    (i32.const 1842099396)
    f64.convert_i32_s
    global.get $global_44387003
    f64.reinterpret_i64
    f64.gt
    local.get 0
    i32.shl
    (f64.const 1.4793992275671278e-143)
    i32.trunc_f64_s
    (i32.const 904)
    i32.rotr
    f64.convert_i32_s
    i32.trunc_f64_u
    (f32.const -2.7722683171305107e-07)
    nop
    f32.ceil
    i32.trunc_f32_u
    i32.shl
    i32.rotr
)

)