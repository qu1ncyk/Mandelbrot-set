(module
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $f64_f64_=>_i32 (func (param f64 f64) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $f64_=>_none (func (param f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_f64_=>_f64 (func (param i32 f64) (result f64)))
 (type $i32_i32_f64_f64_f64_i32_i32_i32_i32_=>_i32 (func (param i32 i32 f64 f64 f64 i32 i32 i32 i32) (result i32)))
 (import "index" "print" (func $assembly/index/print (param f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1600))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1100) "<")
 (data (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1164) "<")
 (data (i32.const 1176) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1260) ",")
 (data (i32.const 1272) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1308) "<")
 (data (i32.const 1320) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1372) "\1c")
 (data (i32.const 1388) "\03\00\00\00\ff\ff\ff")
 (data (i32.const 1404) "<")
 (data (i32.const 1416) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1500) "<")
 (data (i32.const 1512) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1600) "\08\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 1628) "A\00\00\00\02\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00B\00\00\00\00\00\00\00\02\t")
 (export "print" (func $assembly/index/print))
 (export "generate" (func $assembly/index/generate))
 (export "__new" (func $~lib/rt/tcms/__new))
 (export "__pin" (func $~lib/rt/tcms/__pin))
 (export "__unpin" (func $~lib/rt/tcms/__unpin))
 (export "__collect" (func $~lib/rt/tcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1184
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1184
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $4
  if
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1184
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $4
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1184
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 1680
  i32.const 0
  i32.store
  i32.const 3248
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 1680
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $1
      local.get $0
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 1680
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 1680
  i32.const 3252
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 1680
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1184
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 125
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1184
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   i32.const 4
   local.get $4
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 1
   i32.const 27
   local.get $5
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   local.get $5
   i32.add
   local.get $5
   local.get $5
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1184
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $5
  i32.lt_u
  if
   i32.const 0
   i32.const 1184
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $3
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1184
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   local.get $5
   i32.or
   i32.store
   local.get $5
   local.get $2
   i32.const 4
   i32.add
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/tcms/fromSpace
  local.tee $0
  i32.load offset=8
  local.set $1
  local.get $2
  global.get $~lib/rt/tcms/white
  local.get $0
  i32.or
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/tcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/tcms/total
  local.get $2
  i32.const 20
  i32.add
 )
 (func $assembly/index/Range#constructor (param $0 f64) (param $1 f64) (result i32)
  (local $2 i32)
  i32.const 16
  i32.const 4
  call $~lib/rt/tcms/__new
  local.tee $2
  f64.const 0
  f64.store
  local.get $2
  f64.const 0
  f64.store offset=8
  local.get $2
  local.get $0
  f64.store
  local.get $2
  local.get $1
  f64.store offset=8
  local.get $2
 )
 (func $assembly/complex/Complex#constructor (param $0 f64) (param $1 f64) (result i32)
  (local $2 i32)
  i32.const 16
  i32.const 5
  call $~lib/rt/tcms/__new
  local.tee $2
  f64.const 0
  f64.store
  local.get $2
  f64.const 0
  f64.store offset=8
  local.get $2
  local.get $0
  f64.store
  local.get $2
  local.get $1
  f64.store offset=8
  local.get $2
 )
 (func $assembly/hue2rgb/f (param $0 i32) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  f64.const 1
  f64.const 0
  block $__inlined_func$~lib/math/NativeMath.mod (result f64)
   local.get $0
   f64.convert_i32_u
   local.get $1
   f64.const 60
   f64.div
   f64.add
   local.tee $1
   i64.reinterpret_f64
   local.tee $4
   i64.const 52
   i64.shr_u
   i64.const 2047
   i64.and
   local.tee $3
   i64.const 2047
   i64.eq
   if
    local.get $1
    f64.const 6
    f64.mul
    local.tee $1
    local.get $1
    f64.div
    br $__inlined_func$~lib/math/NativeMath.mod
   end
   local.get $4
   i64.const 1
   i64.shl
   local.tee $2
   i64.const -9209861237972664320
   i64.le_u
   if
    local.get $1
    local.get $2
    i64.const -9209861237972664320
    i64.ne
    f64.convert_i32_u
    f64.mul
    br $__inlined_func$~lib/math/NativeMath.mod
   end
   local.get $3
   i64.eqz
   if (result i64)
    local.get $4
    i64.const 1
    local.get $3
    local.get $4
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $3
    i64.sub
    i64.shl
   else
    local.get $4
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $2
   loop $while-continue|0
    local.get $3
    i64.const 1025
    i64.gt_s
    if
     local.get $2
     i64.const 6755399441055744
     i64.ge_u
     if (result i64)
      local.get $1
      f64.const 0
      f64.mul
      local.get $2
      i64.const 6755399441055744
      i64.eq
      br_if $__inlined_func$~lib/math/NativeMath.mod
      drop
      local.get $2
      i64.const 6755399441055744
      i64.sub
     else
      local.get $2
     end
     i64.const 1
     i64.shl
     local.set $2
     local.get $3
     i64.const 1
     i64.sub
     local.set $3
     br $while-continue|0
    end
   end
   local.get $3
   local.get $2
   i64.const 6755399441055744
   i64.ge_u
   if
    local.get $1
    f64.const 0
    f64.mul
    local.get $2
    i64.const 6755399441055744
    i64.eq
    br_if $__inlined_func$~lib/math/NativeMath.mod
    drop
    local.get $2
    i64.const 6755399441055744
    i64.sub
    local.set $2
   end
   local.get $2
   i64.const 11
   i64.shl
   i64.clz
   local.tee $3
   i64.sub
   local.set $5
   local.get $4
   i64.const 63
   i64.shr_u
   i64.const 63
   i64.shl
   local.get $2
   local.get $3
   i64.shl
   local.tee $2
   i64.const 4503599627370496
   i64.sub
   local.get $5
   i64.const 52
   i64.shl
   i64.or
   local.get $2
   i64.const 1
   local.get $5
   i64.sub
   i64.shr_u
   local.get $5
   i64.const 0
   i64.gt_s
   select
   i64.or
   f64.reinterpret_i64
  end
  local.tee $1
  f64.const 4
  local.get $1
  f64.sub
  f64.min
  f64.const 1
  f64.min
  f64.max
  f64.sub
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  local.set $5
  loop $while-continue|0
   local.get $1
   i32.const 3
   i32.and
   i32.const 0
   local.get $5
   select
   if
    local.get $0
    local.tee $2
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    local.get $3
    i32.load8_u
    i32.store8
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $while-continue|1
    local.get $5
    i32.const 16
    i32.ge_u
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     local.get $1
     i32.load offset=4
     i32.store offset=4
     local.get $0
     local.get $1
     i32.load offset=8
     i32.store offset=8
     local.get $0
     local.get $1
     i32.load offset=12
     i32.store offset=12
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $5
     i32.const 16
     i32.sub
     local.set $5
     br $while-continue|1
    end
   end
   local.get $5
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    local.get $1
    i32.load offset=4
    i32.store offset=4
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $5
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $5
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $5
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $5
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       i32.const 1
       i32.sub
       br_table $case0|2 $case1|2 $case2|2 $break|2
      end
      local.get $1
      i32.load
      local.set $4
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      local.get $1
      i32.load8_u offset=1
      i32.store8 offset=1
      local.get $0
      i32.const 2
      i32.add
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 2
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $3
      i32.load8_u
      i32.store8
      local.get $5
      i32.const 3
      i32.sub
      local.set $5
      loop $while-continue|3
       local.get $5
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.load offset=1
        local.tee $2
        i32.const 8
        i32.shl
        local.get $4
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        local.get $1
        i32.load offset=5
        local.tee $3
        i32.const 8
        i32.shl
        local.get $2
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=4
        local.get $0
        local.get $1
        i32.load offset=9
        local.tee $2
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=8
        local.get $0
        local.get $1
        i32.load offset=13
        local.tee $4
        i32.const 8
        i32.shl
        local.get $2
        i32.const 24
        i32.shr_u
        i32.or
        i32.store offset=12
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $5
        i32.const 16
        i32.sub
        local.set $5
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $4
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $2
     i32.const 2
     i32.add
     local.set $0
     local.get $1
     local.tee $3
     i32.const 2
     i32.add
     local.set $1
     local.get $2
     local.get $3
     i32.load8_u offset=1
     i32.store8 offset=1
     local.get $5
     i32.const 2
     i32.sub
     local.set $5
     loop $while-continue|4
      local.get $5
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.load offset=2
       local.tee $2
       i32.const 16
       i32.shl
       local.get $4
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       local.get $1
       i32.load offset=6
       local.tee $3
       i32.const 16
       i32.shl
       local.get $2
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=4
       local.get $0
       local.get $1
       i32.load offset=10
       local.tee $2
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=8
       local.get $0
       local.get $1
       i32.load offset=14
       local.tee $4
       i32.const 16
       i32.shl
       local.get $2
       i32.const 16
       i32.shr_u
       i32.or
       i32.store offset=12
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $5
       i32.const 16
       i32.sub
       local.set $5
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $4
    local.get $0
    local.tee $2
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $3
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    local.get $3
    i32.load8_u
    i32.store8
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    loop $while-continue|5
     local.get $5
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.load offset=3
      local.tee $2
      i32.const 24
      i32.shl
      local.get $4
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      local.get $1
      i32.load offset=7
      local.tee $3
      i32.const 24
      i32.shl
      local.get $2
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=4
      local.get $0
      local.get $1
      i32.load offset=11
      local.tee $2
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=8
      local.get $0
      local.get $1
      i32.load offset=15
      local.tee $4
      i32.const 24
      i32.shl
      local.get $2
      i32.const 8
      i32.shr_u
      i32.or
      i32.store offset=12
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $5
      i32.const 16
      i32.sub
      local.set $5
      br $while-continue|5
     end
    end
   end
  end
  local.get $5
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $2
   i32.load8_u
   i32.store8
   local.get $2
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $2
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $5
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $2
   i32.load8_u
   i32.store8
   local.get $2
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $2
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $5
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.get $1
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.tee $0
   local.get $1
   i32.const 2
   i32.add
   local.tee $2
   i32.load8_u
   i32.store8
   local.get $2
   i32.const 2
   i32.add
   local.set $1
   local.get $0
   local.get $2
   i32.load8_u offset=1
   i32.store8 offset=1
   local.get $0
   i32.const 2
   i32.add
   local.set $0
  end
  local.get $5
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $2
   i32.const 2
   i32.add
   local.set $0
   local.get $1
   local.tee $3
   i32.const 2
   i32.add
   local.set $1
   local.get $2
   local.get $3
   i32.load8_u offset=1
   i32.store8 offset=1
  end
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/rt/__newArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3
  i32.const 0
  call $~lib/rt/tcms/__new
  local.set $4
  local.get $0
  if
   block $~lib/util/memory/memmove|inlined.0
    i32.const 3
    local.set $5
    local.get $4
    local.tee $1
    local.get $0
    i32.eq
    br_if $~lib/util/memory/memmove|inlined.0
    local.get $0
    local.get $1
    i32.sub
    i32.const 3
    i32.sub
    i32.const -6
    i32.le_u
    if
     local.get $1
     local.get $0
     call $~lib/util/memory/memcpy
     br $~lib/util/memory/memmove|inlined.0
    end
    local.get $0
    local.get $1
    i32.gt_u
    if
     local.get $0
     i32.const 7
     i32.and
     local.get $1
     i32.const 7
     i32.and
     i32.eq
     if
      loop $while-continue|0
       local.get $1
       i32.const 7
       i32.and
       if
        local.get $5
        i32.eqz
        br_if $~lib/util/memory/memmove|inlined.0
        local.get $5
        i32.const 1
        i32.sub
        local.set $5
        local.get $1
        local.tee $2
        i32.const 1
        i32.add
        local.set $1
        local.get $0
        local.tee $3
        i32.const 1
        i32.add
        local.set $0
        local.get $2
        local.get $3
        i32.load8_u
        i32.store8
        br $while-continue|0
       end
      end
      loop $while-continue|1
       local.get $5
       i32.const 8
       i32.ge_u
       if
        local.get $1
        local.get $0
        i64.load
        i64.store
        local.get $5
        i32.const 8
        i32.sub
        local.set $5
        local.get $1
        i32.const 8
        i32.add
        local.set $1
        local.get $0
        i32.const 8
        i32.add
        local.set $0
        br $while-continue|1
       end
      end
     end
     loop $while-continue|2
      local.get $5
      if
       local.get $1
       local.tee $2
       i32.const 1
       i32.add
       local.set $1
       local.get $0
       local.tee $3
       i32.const 1
       i32.add
       local.set $0
       local.get $2
       local.get $3
       i32.load8_u
       i32.store8
       local.get $5
       i32.const 1
       i32.sub
       local.set $5
       br $while-continue|2
      end
     end
    else
     local.get $0
     i32.const 7
     i32.and
     local.get $1
     i32.const 7
     i32.and
     i32.eq
     if
      loop $while-continue|3
       local.get $1
       local.get $5
       i32.add
       i32.const 7
       i32.and
       if
        local.get $5
        i32.eqz
        br_if $~lib/util/memory/memmove|inlined.0
        local.get $5
        i32.const 1
        i32.sub
        local.tee $5
        local.get $1
        i32.add
        local.get $0
        local.get $5
        i32.add
        i32.load8_u
        i32.store8
        br $while-continue|3
       end
      end
      loop $while-continue|4
       local.get $5
       i32.const 8
       i32.ge_u
       if
        local.get $5
        i32.const 8
        i32.sub
        local.tee $5
        local.get $1
        i32.add
        local.get $0
        local.get $5
        i32.add
        i64.load
        i64.store
        br $while-continue|4
       end
      end
     end
     loop $while-continue|5
      local.get $5
      if
       local.get $5
       i32.const 1
       i32.sub
       local.tee $5
       local.get $1
       i32.add
       local.get $0
       local.get $5
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|5
      end
     end
    end
   end
  end
  i32.const 16
  i32.const 6
  call $~lib/rt/tcms/__new
  local.tee $0
  local.get $4
  i32.store
  local.get $0
  local.get $4
  i32.store offset=4
  local.get $0
  i32.const 3
  i32.store offset=8
  local.get $0
  i32.const 3
  i32.store offset=12
  local.get $0
 )
 (func $assembly/index/generate (param $0 i32) (param $1 i32) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (result i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  f64.const -0.5
  local.get $2
  f64.div
  local.tee $15
  local.get $3
  f64.add
  f64.const 0.5
  local.get $2
  f64.div
  local.tee $2
  local.get $3
  f64.add
  call $assembly/index/Range#constructor
  local.set $17
  local.get $15
  local.get $4
  f64.add
  local.get $2
  local.get $4
  f64.add
  call $assembly/index/Range#constructor
  local.set $16
  local.get $1
  local.get $7
  i32.const 255
  i32.and
  local.tee $9
  i32.div_u
  f64.convert_i32_u
  f64.ceil
  local.get $8
  f64.convert_i32_u
  f64.mul
  i32.trunc_f64_u
  local.set $12
  local.get $0
  local.get $9
  local.get $8
  i32.const 1
  i32.add
  i32.const 255
  i32.and
  i32.gt_u
  if (result i32)
   local.get $1
   local.get $7
   i32.const 255
   i32.and
   i32.div_u
   f64.convert_i32_u
   f64.ceil
   local.get $8
   i32.const 1
   i32.add
   f64.convert_i32_u
   f64.mul
   i32.trunc_f64_u
  else
   local.get $1
  end
  local.tee $11
  local.get $12
  i32.sub
  i32.mul
  i32.const 2
  i32.shl
  local.set $9
  i32.const 12
  i32.const 3
  call $~lib/rt/tcms/__new
  local.tee $7
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tcms/__new
   local.set $7
  end
  local.get $7
  i32.const 0
  i32.store
  local.get $7
  i32.const 0
  i32.store offset=4
  local.get $7
  i32.const 0
  i32.store offset=8
  local.get $9
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1280
   i32.const 1328
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.const 0
  call $~lib/rt/tcms/__new
  local.tee $14
  local.set $10
  block $~lib/util/memory/memset|inlined.0
   local.get $9
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
   local.get $10
   i32.const 0
   i32.store8
   local.get $9
   local.get $10
   i32.add
   local.tee $8
   i32.const 1
   i32.sub
   i32.const 0
   i32.store8
   local.get $9
   i32.const 2
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $10
   i32.const 0
   i32.store8 offset=1
   local.get $10
   i32.const 0
   i32.store8 offset=2
   local.get $8
   i32.const 2
   i32.sub
   i32.const 0
   i32.store8
   local.get $8
   i32.const 3
   i32.sub
   i32.const 0
   i32.store8
   local.get $9
   i32.const 6
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $10
   i32.const 0
   i32.store8 offset=3
   local.get $8
   i32.const 4
   i32.sub
   i32.const 0
   i32.store8
   local.get $9
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $10
   i32.const 0
   local.get $10
   i32.sub
   i32.const 3
   i32.and
   local.tee $8
   i32.add
   local.tee $13
   i32.const 0
   i32.store
   local.get $13
   local.get $9
   local.get $8
   i32.sub
   i32.const -4
   i32.and
   local.tee $10
   i32.add
   local.tee $8
   i32.const 4
   i32.sub
   i32.const 0
   i32.store
   local.get $10
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $13
   i32.const 0
   i32.store offset=4
   local.get $13
   i32.const 0
   i32.store offset=8
   local.get $8
   i32.const 12
   i32.sub
   i32.const 0
   i32.store
   local.get $8
   i32.const 8
   i32.sub
   i32.const 0
   i32.store
   local.get $10
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $13
   i32.const 0
   i32.store offset=12
   local.get $13
   i32.const 0
   i32.store offset=16
   local.get $13
   i32.const 0
   i32.store offset=20
   local.get $13
   i32.const 0
   i32.store offset=24
   local.get $8
   i32.const 28
   i32.sub
   i32.const 0
   i32.store
   local.get $8
   i32.const 24
   i32.sub
   i32.const 0
   i32.store
   local.get $8
   i32.const 20
   i32.sub
   i32.const 0
   i32.store
   local.get $8
   i32.const 16
   i32.sub
   i32.const 0
   i32.store
   local.get $13
   local.get $13
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $8
   i32.add
   local.set $13
   local.get $10
   local.get $8
   i32.sub
   local.set $8
   loop $while-continue|0
    local.get $8
    i32.const 32
    i32.ge_u
    if
     local.get $13
     i64.const 0
     i64.store
     local.get $13
     i64.const 0
     i64.store offset=8
     local.get $13
     i64.const 0
     i64.store offset=16
     local.get $13
     i64.const 0
     i64.store offset=24
     local.get $8
     i32.const 32
     i32.sub
     local.set $8
     local.get $13
     i32.const 32
     i32.add
     local.set $13
     br $while-continue|0
    end
   end
  end
  local.get $7
  local.get $14
  i32.store
  local.get $7
  local.get $14
  i32.store offset=4
  local.get $7
  local.get $9
  i32.store offset=8
  local.get $7
  local.set $10
  local.get $12
  local.set $7
  loop $for-loop|0
   local.get $7
   local.get $11
   i32.lt_u
   if
    local.get $16
    f64.load
    local.tee $2
    local.get $1
    local.get $7
    i32.sub
    f64.convert_i32_u
    local.get $16
    f64.load offset=8
    local.get $2
    f64.sub
    f64.mul
    local.get $1
    f64.convert_i32_u
    f64.div
    f64.add
    local.set $4
    i32.const 0
    local.set $18
    loop $for-loop|1
     local.get $0
     local.get $18
     i32.gt_u
     if
      local.get $18
      local.get $0
      local.get $7
      local.get $12
      i32.sub
      i32.mul
      i32.add
      i32.const 2
      i32.shl
      local.set $13
      local.get $17
      f64.load
      local.tee $2
      local.get $18
      f64.convert_i32_u
      local.get $17
      f64.load offset=8
      local.get $2
      f64.sub
      f64.mul
      local.get $0
      f64.convert_i32_u
      f64.div
      f64.add
      local.get $4
      call $assembly/complex/Complex#constructor
      local.tee $9
      f64.load
      local.get $9
      f64.load offset=8
      call $assembly/complex/Complex#constructor
      local.set $14
      i32.const 0
      local.set $8
      block $__inlined_func$assembly/complex/Complex#goesToInfinity
       loop $for-loop|01
        local.get $6
        local.get $8
        i32.gt_s
        if
         local.get $14
         local.get $14
         f64.load
         local.tee $3
         local.get $3
         f64.mul
         local.get $14
         f64.load offset=8
         local.tee $2
         local.get $2
         f64.mul
         f64.sub
         f64.store
         local.get $14
         local.get $3
         local.get $3
         f64.add
         local.get $2
         f64.mul
         f64.store offset=8
         local.get $14
         local.get $14
         f64.load
         local.get $9
         f64.load
         f64.add
         f64.store
         local.get $14
         local.get $14
         f64.load offset=8
         local.get $9
         f64.load offset=8
         f64.add
         f64.store offset=8
         local.get $14
         f64.load
         f64.const 2
         f64.gt
         if (result i32)
          i32.const 1
         else
          local.get $14
          f64.load
          f64.const -2
          f64.lt
         end
         if (result i32)
          i32.const 1
         else
          local.get $14
          f64.load offset=8
          f64.const 2
          f64.gt
         end
         if (result i32)
          i32.const 1
         else
          local.get $14
          f64.load offset=8
          f64.const -2
          f64.lt
         end
         br_if $__inlined_func$assembly/complex/Complex#goesToInfinity
         local.get $8
         i32.const 1
         i32.add
         local.set $8
         br $for-loop|01
        end
       end
       i32.const -1
       local.set $8
      end
      local.get $8
      local.tee $9
      i32.const -1
      i32.eq
      if
       local.get $13
       local.get $10
       i32.load offset=4
       i32.add
       i32.const 0
       i32.store8
       local.get $10
       i32.load offset=4
       local.get $13
       i32.const 1
       i32.add
       i32.add
       i32.const 0
       i32.store8
       local.get $10
       i32.load offset=4
       local.get $13
       i32.const 2
       i32.add
       i32.add
       i32.const 0
       i32.store8
      else
       local.get $5
       if
        i32.const 0
        call $~lib/rt/__newArray
        local.tee $8
        i32.load offset=4
        drop
        i32.const 5
        local.get $9
        f64.convert_i32_s
        local.get $6
        f64.convert_i32_s
        f64.div
        f64.const 300
        f64.mul
        f32.demote_f64
        f64.promote_f32
        local.tee $2
        call $assembly/hue2rgb/f
        f64.const 255
        f64.mul
        i32.trunc_f64_u
        local.set $9
        local.get $8
        i32.load offset=4
        local.get $9
        i32.store8
        i32.const 3
        local.get $2
        call $assembly/hue2rgb/f
        f64.const 255
        f64.mul
        i32.trunc_f64_u
        local.set $9
        local.get $8
        i32.load offset=4
        local.get $9
        i32.store8 offset=1
        i32.const 1
        local.get $2
        call $assembly/hue2rgb/f
        f64.const 255
        f64.mul
        i32.trunc_f64_u
        local.set $9
        local.get $8
        i32.load offset=4
        local.get $9
        i32.store8 offset=2
       else
        i32.const 1392
        call $~lib/rt/__newArray
        local.set $8
       end
       local.get $13
       local.get $10
       i32.load offset=4
       i32.add
       local.get $8
       i32.load offset=4
       i32.load8_u
       local.tee $9
       i32.const 255
       local.get $9
       i32.sub
       i32.const 31
       i32.shr_s
       i32.or
       local.get $9
       i32.const 31
       i32.shr_u
       i32.const -1
       i32.xor
       i32.and
       i32.store8
       local.get $10
       i32.load offset=4
       local.get $13
       i32.const 1
       i32.add
       i32.add
       i32.const 255
       local.get $8
       i32.load offset=4
       i32.load8_u offset=1
       local.tee $9
       i32.sub
       i32.const 31
       i32.shr_s
       local.get $9
       i32.or
       local.get $9
       i32.const 31
       i32.shr_u
       i32.const -1
       i32.xor
       i32.and
       i32.store8
       local.get $10
       i32.load offset=4
       local.get $13
       i32.const 2
       i32.add
       i32.add
       i32.const 255
       local.get $8
       i32.load offset=4
       i32.load8_u offset=2
       local.tee $8
       i32.sub
       i32.const 31
       i32.shr_s
       local.get $8
       i32.or
       local.get $8
       i32.const 31
       i32.shr_u
       i32.const -1
       i32.xor
       i32.and
       i32.store8
      end
      local.get $10
      i32.load offset=4
      local.get $13
      i32.const 3
      i32.add
      i32.add
      i32.const 255
      i32.store8
      local.get $18
      i32.const 1
      i32.add
      local.set $18
      br $for-loop|1
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  local.get $10
 )
 (func $~lib/rt/tcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   i32.const 0
   local.get $0
   i32.const 1668
   i32.lt_u
   local.get $0
   i32.load offset=8
   select
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 101
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 105
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $1
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 1424
    i32.const 1120
    i32.const 181
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/tcms/Object#unlink
   global.get $~lib/rt/tcms/pinSpace
   local.tee $3
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/tcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 1520
   i32.const 1120
   i32.const 195
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tcms/Object#unlink
  global.get $~lib/rt/tcms/fromSpace
  local.tee $0
  i32.load offset=8
  local.set $2
  local.get $1
  global.get $~lib/rt/tcms/white
  local.get $0
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $2
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tcms/__collect
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 1280
  call $byn-split-outlined-A$~lib/rt/tcms/__visit
  i32.const 1056
  call $byn-split-outlined-A$~lib/rt/tcms/__visit
  i32.const 1424
  call $byn-split-outlined-A$~lib/rt/tcms/__visit
  i32.const 1520
  call $byn-split-outlined-A$~lib/rt/tcms/__visit
  global.get $~lib/rt/tcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 213
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
  global.get $~lib/rt/tcms/white
  i32.eqz
  local.set $3
  global.get $~lib/rt/tcms/toSpace
  local.tee $2
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|1
   local.get $0
   local.get $2
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    local.get $3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 223
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|1
   end
  end
  global.get $~lib/rt/tcms/fromSpace
  local.tee $5
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|2
   local.get $0
   local.get $5
   i32.ne
   if
    global.get $~lib/rt/tcms/white
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 232
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.get $0
    i32.const 1668
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/tcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/tcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 1668
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $0
      i32.const 4
      i32.sub
      local.set $4
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $4
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1184
       i32.const 559
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $4
      local.get $4
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $4
      call $~lib/rt/tlsf/insertBlock
     end
    end
    local.set $0
    br $while-continue|2
   end
  end
  local.get $5
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $5
  i32.store offset=8
  local.get $2
  global.set $~lib/rt/tcms/fromSpace
  local.get $5
  global.set $~lib/rt/tcms/toSpace
  local.get $3
  global.set $~lib/rt/tcms/white
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  block $folding-inner1
   block $folding-inner0
    block $invalid
     block $assembly/complex/Complex
      block $assembly/index/Range
       block $~lib/string/String
        block $~lib/arraybuffer/ArrayBuffer
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $folding-inner0 $assembly/index/Range $assembly/complex/Complex $folding-inner1 $folding-inner1 $invalid
        end
        return
       end
       return
      end
      return
     end
     return
    end
    unreachable
   end
   local.get $0
   i32.load
   local.tee $0
   if
    local.get $0
    call $byn-split-outlined-A$~lib/rt/tcms/__visit
   end
   return
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/tcms/__visit
  end
 )
 (func $~start
  i32.const 1236
  i32.const 1232
  i32.store
  i32.const 1240
  i32.const 1232
  i32.store
  i32.const 1232
  global.set $~lib/rt/tcms/fromSpace
  i32.const 1476
  i32.const 1472
  i32.store
  i32.const 1480
  i32.const 1472
  i32.store
  i32.const 1472
  global.set $~lib/rt/tcms/pinSpace
  i32.const 1572
  i32.const 1568
  i32.store
  i32.const 1576
  i32.const 1568
  i32.store
  i32.const 1568
  global.set $~lib/rt/tcms/toSpace
 )
 (func $byn-split-outlined-A$~lib/rt/tcms/__visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $1
   call $~lib/rt/tcms/Object#unlink
   global.get $~lib/rt/tcms/toSpace
   local.tee $0
   i32.load offset=8
   local.set $2
   local.get $1
   global.get $~lib/rt/tcms/white
   i32.eqz
   local.get $0
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
)
