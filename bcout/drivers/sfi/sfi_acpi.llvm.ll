; ModuleID = '../bcout/drivers/sfi/sfi_acpi.llvm.bc'
source_filename = "drivers/sfi/sfi_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.sfi_table_key = type { i8*, i8*, i8* }
%struct.acpi_table_xsdt = type <{ %struct.acpi_table_header, [1 x i64] }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.sfi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8] }
%struct.sfi_table_attr = type { %struct.bin_attribute, [8 x i8] }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.file = type opaque
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.37, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.18, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.sched_statistics = type {}
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, %struct.sched_rt_entity* }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, %struct.sched_dl_entity* }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type opaque
%struct.key = type opaque
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type opaque
%struct.sighand_struct = type opaque
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.17, i32, [12 x i8] }
%union.anon.17 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.18 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.19, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.32 = type { %struct.atomic_t }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.33, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.36 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i64, i64 }
%union.anon.36 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.37 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }

@.str = private unnamed_addr constant [5 x i8] c"XSDT\00", align 1
@__const.sfi_acpi_init.xsdt_key = private unnamed_addr constant %struct.sfi_table_key { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* null, i8* null }, align 8
@xsdt_va = internal global %struct.acpi_table_xsdt* null, section ".data..read_mostly", align 8, !dbg !0
@sfi_disabled = external dso_local global i32, align 4

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sfi_acpi_init() #0 section ".init.text" !dbg !1575 {
entry:
  %xsdt_key = alloca %struct.sfi_table_key, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key* %xsdt_key, metadata !1578, metadata !DIExpression()), !dbg !1584
  %0 = bitcast %struct.sfi_table_key* %xsdt_key to i8*, !dbg !1584
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.sfi_table_key* @__const.sfi_acpi_init.xsdt_key to i8*), i64 24, i1 false), !dbg !1584
  %call = call i32 @sfi_table_parse(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null, i8* null, i32 (%struct.sfi_table_header*)* @sfi_acpi_parse_xsdt) #6, !dbg !1585
  %call1 = call %struct.sfi_table_header* @sfi_get_table(%struct.sfi_table_key* %xsdt_key) #6, !dbg !1586
  %1 = bitcast %struct.sfi_table_header* %call1 to %struct.acpi_table_xsdt*, !dbg !1587
  store %struct.acpi_table_xsdt* %1, %struct.acpi_table_xsdt** @xsdt_va, align 8, !dbg !1588
  ret i32 0, !dbg !1589
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @sfi_table_parse(i8*, i8*, i8*, i32 (%struct.sfi_table_header*)*) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @sfi_acpi_parse_xsdt(%struct.sfi_table_header* %th) #0 section ".init.text" !dbg !1590 {
entry:
  %retval = alloca i32, align 4
  %th.addr = alloca %struct.sfi_table_header*, align 8
  %key = alloca %struct.sfi_table_key, align 8
  %tbl_cnt = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i8*, align 8
  store %struct.sfi_table_header* %th, %struct.sfi_table_header** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %th.addr, metadata !1593, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key* %key, metadata !1595, metadata !DIExpression()), !dbg !1596
  %0 = bitcast %struct.sfi_table_key* %key to i8*, !dbg !1596
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 24, i1 false), !dbg !1596
  call void @llvm.dbg.declare(metadata i32* %tbl_cnt, metadata !1597, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1599, metadata !DIExpression()), !dbg !1600
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !1601, metadata !DIExpression()), !dbg !1602
  %1 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !1603
  %2 = bitcast %struct.sfi_table_header* %1 to %struct.acpi_table_xsdt*, !dbg !1604
  store %struct.acpi_table_xsdt* %2, %struct.acpi_table_xsdt** @xsdt_va, align 8, !dbg !1605
  %3 = load %struct.acpi_table_xsdt*, %struct.acpi_table_xsdt** @xsdt_va, align 8, !dbg !1606
  %header = getelementptr inbounds %struct.acpi_table_xsdt, %struct.acpi_table_xsdt* %3, i32 0, i32 0, !dbg !1606
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 1, !dbg !1606
  %4 = load i32, i32* %length, align 1, !dbg !1606
  %conv = zext i32 %4 to i64, !dbg !1606
  %sub = sub i64 %conv, 36, !dbg !1606
  %div = udiv i64 %sub, 8, !dbg !1606
  %conv1 = trunc i64 %div to i32, !dbg !1606
  store i32 %conv1, i32* %tbl_cnt, align 4, !dbg !1607
  store i32 0, i32* %i, align 4, !dbg !1608
  br label %for.cond, !dbg !1610

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !1611
  %6 = load i32, i32* %tbl_cnt, align 4, !dbg !1613
  %cmp = icmp slt i32 %5, %6, !dbg !1614
  br i1 %cmp, label %for.body, label %for.end, !dbg !1615

for.body:                                         ; preds = %for.cond
  %7 = load %struct.acpi_table_xsdt*, %struct.acpi_table_xsdt** @xsdt_va, align 8, !dbg !1616
  %table_offset_entry = getelementptr inbounds %struct.acpi_table_xsdt, %struct.acpi_table_xsdt* %7, i32 0, i32 1, !dbg !1618
  %8 = load i32, i32* %i, align 4, !dbg !1619
  %idxprom = sext i32 %8 to i64, !dbg !1616
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %table_offset_entry, i64 0, i64 %idxprom, !dbg !1616
  %9 = load i64, i64* %arrayidx, align 1, !dbg !1616
  %call = call %struct.sfi_table_header* @sfi_check_table(i64 %9, %struct.sfi_table_key* %key) #6, !dbg !1620
  %10 = bitcast %struct.sfi_table_header* %call to i8*, !dbg !1620
  store i8* %10, i8** %ret, align 8, !dbg !1621
  %11 = load i8*, i8** %ret, align 8, !dbg !1622
  %call3 = call zeroext i1 @IS_ERR(i8* %11) #6, !dbg !1624
  br i1 %call3, label %if.then, label %if.end, !dbg !1625

if.then:                                          ; preds = %for.body
  call void @disable_sfi() #6, !dbg !1626
  store i32 -1, i32* %retval, align 4, !dbg !1628
  br label %return, !dbg !1628

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !1629

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !1630
  %inc = add i32 %12, 1, !dbg !1630
  store i32 %inc, i32* %i, align 4, !dbg !1630
  br label %for.cond, !dbg !1631, !llvm.loop !1632

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !1634
  br label %return, !dbg !1634

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !1635
  ret i32 %13, !dbg !1635
}

; Function Attrs: noredzone
declare dso_local %struct.sfi_table_header* @sfi_get_table(%struct.sfi_table_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @sfi_acpi_table_parse(i8* %signature, i8* %oem_id, i8* %oem_table_id, i32 (%struct.acpi_table_header*)* %handler) #4 !dbg !1636 {
entry:
  %retval = alloca i32, align 4
  %signature.addr = alloca i8*, align 8
  %oem_id.addr = alloca i8*, align 8
  %oem_table_id.addr = alloca i8*, align 8
  %handler.addr = alloca i32 (%struct.acpi_table_header*)*, align 8
  %table = alloca %struct.acpi_table_header*, align 8
  %key = alloca %struct.sfi_table_key, align 8
  %ret = alloca i32, align 4
  store i8* %signature, i8** %signature.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %signature.addr, metadata !1642, metadata !DIExpression()), !dbg !1643
  store i8* %oem_id, i8** %oem_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %oem_id.addr, metadata !1644, metadata !DIExpression()), !dbg !1645
  store i8* %oem_table_id, i8** %oem_table_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %oem_table_id.addr, metadata !1646, metadata !DIExpression()), !dbg !1647
  store i32 (%struct.acpi_table_header*)* %handler, i32 (%struct.acpi_table_header*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.acpi_table_header*)** %handler.addr, metadata !1648, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table, metadata !1650, metadata !DIExpression()), !dbg !1651
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %table, align 8, !dbg !1651
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key* %key, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1654, metadata !DIExpression()), !dbg !1655
  store i32 0, i32* %ret, align 4, !dbg !1655
  %0 = load i32, i32* @sfi_disabled, align 4, !dbg !1656
  %tobool = icmp ne i32 %0, 0, !dbg !1656
  br i1 %tobool, label %if.then, label %if.end, !dbg !1658

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !1659
  br label %return, !dbg !1659

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %signature.addr, align 8, !dbg !1660
  %sig = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 0, !dbg !1661
  store i8* %1, i8** %sig, align 8, !dbg !1662
  %2 = load i8*, i8** %oem_id.addr, align 8, !dbg !1663
  %oem_id1 = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 1, !dbg !1664
  store i8* %2, i8** %oem_id1, align 8, !dbg !1665
  %3 = load i8*, i8** %oem_table_id.addr, align 8, !dbg !1666
  %oem_table_id2 = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 2, !dbg !1667
  store i8* %3, i8** %oem_table_id2, align 8, !dbg !1668
  %call = call %struct.acpi_table_header* @sfi_acpi_get_table(%struct.sfi_table_key* %key) #6, !dbg !1669
  store %struct.acpi_table_header* %call, %struct.acpi_table_header** %table, align 8, !dbg !1670
  %4 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1671
  %tobool3 = icmp ne %struct.acpi_table_header* %4, null, !dbg !1671
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1673

if.then4:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !1674
  br label %return, !dbg !1674

if.end5:                                          ; preds = %if.end
  %5 = load i32 (%struct.acpi_table_header*)*, i32 (%struct.acpi_table_header*)** %handler.addr, align 8, !dbg !1675
  %6 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1676
  %call6 = call i32 %5(%struct.acpi_table_header* %6) #6, !dbg !1675
  store i32 %call6, i32* %ret, align 4, !dbg !1677
  %7 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table, align 8, !dbg !1678
  call void @sfi_acpi_put_table(%struct.acpi_table_header* %7) #6, !dbg !1679
  %8 = load i32, i32* %ret, align 4, !dbg !1680
  store i32 %8, i32* %retval, align 4, !dbg !1681
  br label %return, !dbg !1681

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !1682
  ret i32 %9, !dbg !1682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_table_header* @sfi_acpi_get_table(%struct.sfi_table_key* %key) #4 !dbg !1683 {
entry:
  %retval = alloca %struct.acpi_table_header*, align 8
  %key.addr = alloca %struct.sfi_table_key*, align 8
  %tbl_cnt = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i8*, align 8
  store %struct.sfi_table_key* %key, %struct.sfi_table_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key** %key.addr, metadata !1687, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.declare(metadata i32* %tbl_cnt, metadata !1689, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1691, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.declare(metadata i8** %ret, metadata !1693, metadata !DIExpression()), !dbg !1694
  %0 = load %struct.acpi_table_xsdt*, %struct.acpi_table_xsdt** @xsdt_va, align 8, !dbg !1695
  %header = getelementptr inbounds %struct.acpi_table_xsdt, %struct.acpi_table_xsdt* %0, i32 0, i32 0, !dbg !1695
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 1, !dbg !1695
  %1 = load i32, i32* %length, align 1, !dbg !1695
  %conv = zext i32 %1 to i64, !dbg !1695
  %sub = sub i64 %conv, 36, !dbg !1695
  %div = udiv i64 %sub, 8, !dbg !1695
  %conv1 = trunc i64 %div to i32, !dbg !1695
  store i32 %conv1, i32* %tbl_cnt, align 4, !dbg !1696
  store i32 0, i32* %i, align 4, !dbg !1697
  br label %for.cond, !dbg !1699

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !1700
  %3 = load i32, i32* %tbl_cnt, align 4, !dbg !1702
  %cmp = icmp ult i32 %2, %3, !dbg !1703
  br i1 %cmp, label %for.body, label %for.end, !dbg !1704

for.body:                                         ; preds = %for.cond
  %4 = load %struct.acpi_table_xsdt*, %struct.acpi_table_xsdt** @xsdt_va, align 8, !dbg !1705
  %table_offset_entry = getelementptr inbounds %struct.acpi_table_xsdt, %struct.acpi_table_xsdt* %4, i32 0, i32 1, !dbg !1707
  %5 = load i32, i32* %i, align 4, !dbg !1708
  %idxprom = zext i32 %5 to i64, !dbg !1705
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %table_offset_entry, i64 0, i64 %idxprom, !dbg !1705
  %6 = load i64, i64* %arrayidx, align 1, !dbg !1705
  %7 = load %struct.sfi_table_key*, %struct.sfi_table_key** %key.addr, align 8, !dbg !1709
  %call = call %struct.sfi_table_header* @sfi_check_table(i64 %6, %struct.sfi_table_key* %7) #6, !dbg !1710
  %8 = bitcast %struct.sfi_table_header* %call to i8*, !dbg !1710
  store i8* %8, i8** %ret, align 8, !dbg !1711
  %9 = load i8*, i8** %ret, align 8, !dbg !1712
  %call3 = call zeroext i1 @IS_ERR(i8* %9) #6, !dbg !1714
  br i1 %call3, label %if.end, label %land.lhs.true, !dbg !1715

land.lhs.true:                                    ; preds = %for.body
  %10 = load i8*, i8** %ret, align 8, !dbg !1716
  %tobool = icmp ne i8* %10, null, !dbg !1716
  br i1 %tobool, label %if.then, label %if.end, !dbg !1717

if.then:                                          ; preds = %land.lhs.true
  %11 = load i8*, i8** %ret, align 8, !dbg !1718
  %12 = bitcast i8* %11 to %struct.sfi_table_header*, !dbg !1718
  %call4 = call %struct.acpi_table_header* @sfi_to_acpi_th(%struct.sfi_table_header* %12) #6, !dbg !1719
  store %struct.acpi_table_header* %call4, %struct.acpi_table_header** %retval, align 8, !dbg !1720
  br label %return, !dbg !1720

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !1721

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !dbg !1722
  %inc = add i32 %13, 1, !dbg !1722
  store i32 %inc, i32* %i, align 4, !dbg !1722
  br label %for.cond, !dbg !1723, !llvm.loop !1724

for.end:                                          ; preds = %for.cond
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %retval, align 8, !dbg !1726
  br label %return, !dbg !1726

return:                                           ; preds = %for.end, %if.then
  %14 = load %struct.acpi_table_header*, %struct.acpi_table_header** %retval, align 8, !dbg !1727
  ret %struct.acpi_table_header* %14, !dbg !1727
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sfi_acpi_put_table(%struct.acpi_table_header* %table) #4 !dbg !1728 {
entry:
  %table.addr = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_header* %table, %struct.acpi_table_header** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %table.addr, metadata !1731, metadata !DIExpression()), !dbg !1732
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %table.addr, align 8, !dbg !1733
  %call = call %struct.sfi_table_header* @acpi_to_sfi_th(%struct.acpi_table_header* %0) #6, !dbg !1734
  call void @sfi_put_table(%struct.sfi_table_header* %call) #6, !dbg !1735
  ret void, !dbg !1736
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @sfi_acpi_sysfs_init() #0 section ".init.text" !dbg !1737 {
entry:
  %tbl_cnt = alloca i32, align 4
  %i = alloca i32, align 4
  %tbl_attr = alloca %struct.sfi_table_attr*, align 8
  call void @llvm.dbg.declare(metadata i32* %tbl_cnt, metadata !1740, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1742, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.declare(metadata %struct.sfi_table_attr** %tbl_attr, metadata !1744, metadata !DIExpression()), !dbg !1745
  %0 = load %struct.acpi_table_xsdt*, %struct.acpi_table_xsdt** @xsdt_va, align 8, !dbg !1746
  %header = getelementptr inbounds %struct.acpi_table_xsdt, %struct.acpi_table_xsdt* %0, i32 0, i32 0, !dbg !1746
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %header, i32 0, i32 1, !dbg !1746
  %1 = load i32, i32* %length, align 1, !dbg !1746
  %conv = zext i32 %1 to i64, !dbg !1746
  %sub = sub i64 %conv, 36, !dbg !1746
  %div = udiv i64 %sub, 8, !dbg !1746
  %conv1 = trunc i64 %div to i32, !dbg !1746
  store i32 %conv1, i32* %tbl_cnt, align 4, !dbg !1747
  store i32 0, i32* %i, align 4, !dbg !1748
  br label %for.cond, !dbg !1750

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !1751
  %3 = load i32, i32* %tbl_cnt, align 4, !dbg !1753
  %cmp = icmp ult i32 %2, %3, !dbg !1754
  br i1 %cmp, label %for.body, label %for.end, !dbg !1755

for.body:                                         ; preds = %for.cond
  %4 = load %struct.acpi_table_xsdt*, %struct.acpi_table_xsdt** @xsdt_va, align 8, !dbg !1756
  %table_offset_entry = getelementptr inbounds %struct.acpi_table_xsdt, %struct.acpi_table_xsdt* %4, i32 0, i32 1, !dbg !1758
  %5 = load i32, i32* %i, align 4, !dbg !1759
  %idxprom = zext i32 %5 to i64, !dbg !1756
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %table_offset_entry, i64 0, i64 %idxprom, !dbg !1756
  %6 = load i64, i64* %arrayidx, align 1, !dbg !1756
  %call = call %struct.sfi_table_attr* @sfi_sysfs_install_table(i64 %6) #7, !dbg !1760
  store %struct.sfi_table_attr* %call, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !1761
  %7 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !1762
  %attr = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %7, i32 0, i32 0, !dbg !1763
  %read = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %attr, i32 0, i32 3, !dbg !1764
  store i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @sfi_acpi_table_show, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)** %read, align 8, !dbg !1765
  br label %for.inc, !dbg !1766

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !1767
  %inc = add i32 %8, 1, !dbg !1767
  store i32 %inc, i32* %i, align 4, !dbg !1767
  br label %for.cond, !dbg !1768, !llvm.loop !1769

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1771
}

; Function Attrs: cold noredzone
declare dso_local %struct.sfi_table_attr* @sfi_sysfs_install_table(i64) #5 section ".init.text"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @sfi_acpi_table_show(%struct.file* %filp, %struct.kobject* %kobj, %struct.bin_attribute* %bin_attr, i8* %buf, i64 %offset, i64 %count) #4 !dbg !1772 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca %struct.file*, align 8
  %kobj.addr = alloca %struct.kobject*, align 8
  %bin_attr.addr = alloca %struct.bin_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %tbl_attr = alloca %struct.sfi_table_attr*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.sfi_table_attr*, align 8
  %th = alloca %struct.acpi_table_header*, align 8
  %key = alloca %struct.sfi_table_key, align 8
  %cnt = alloca i64, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !1773, metadata !DIExpression()), !dbg !1774
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !1775, metadata !DIExpression()), !dbg !1776
  store %struct.bin_attribute* %bin_attr, %struct.bin_attribute** %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.bin_attribute** %bin_attr.addr, metadata !1777, metadata !DIExpression()), !dbg !1778
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !1779, metadata !DIExpression()), !dbg !1780
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !1781, metadata !DIExpression()), !dbg !1782
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !1783, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.declare(metadata %struct.sfi_table_attr** %tbl_attr, metadata !1785, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !1787, metadata !DIExpression()), !dbg !1789
  %0 = load %struct.bin_attribute*, %struct.bin_attribute** %bin_attr.addr, align 8, !dbg !1789
  %1 = bitcast %struct.bin_attribute* %0 to i8*, !dbg !1789
  store i8* %1, i8** %__mptr, align 8, !dbg !1789
  br label %do.body, !dbg !1789

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1790

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !1789
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !1789
  %3 = bitcast i8* %add.ptr to %struct.sfi_table_attr*, !dbg !1789
  store %struct.sfi_table_attr* %3, %struct.sfi_table_attr** %tmp, align 8, !dbg !1790
  %4 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tmp, align 8, !dbg !1789
  store %struct.sfi_table_attr* %4, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !1786
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %th, metadata !1792, metadata !DIExpression()), !dbg !1793
  store %struct.acpi_table_header* null, %struct.acpi_table_header** %th, align 8, !dbg !1793
  call void @llvm.dbg.declare(metadata %struct.sfi_table_key* %key, metadata !1794, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.declare(metadata i64* %cnt, metadata !1796, metadata !DIExpression()), !dbg !1797
  %5 = load %struct.sfi_table_attr*, %struct.sfi_table_attr** %tbl_attr, align 8, !dbg !1798
  %name = getelementptr inbounds %struct.sfi_table_attr, %struct.sfi_table_attr* %5, i32 0, i32 1, !dbg !1799
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %name, i64 0, i64 0, !dbg !1798
  %sig = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 0, !dbg !1800
  store i8* %arraydecay, i8** %sig, align 8, !dbg !1801
  %oem_id = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 1, !dbg !1802
  store i8* null, i8** %oem_id, align 8, !dbg !1803
  %oem_table_id = getelementptr inbounds %struct.sfi_table_key, %struct.sfi_table_key* %key, i32 0, i32 2, !dbg !1804
  store i8* null, i8** %oem_table_id, align 8, !dbg !1805
  %call = call %struct.acpi_table_header* @sfi_acpi_get_table(%struct.sfi_table_key* %key) #6, !dbg !1806
  store %struct.acpi_table_header* %call, %struct.acpi_table_header** %th, align 8, !dbg !1807
  %6 = load %struct.acpi_table_header*, %struct.acpi_table_header** %th, align 8, !dbg !1808
  %tobool = icmp ne %struct.acpi_table_header* %6, null, !dbg !1808
  br i1 %tobool, label %if.end, label %if.then, !dbg !1810

if.then:                                          ; preds = %do.end
  store i64 0, i64* %retval, align 8, !dbg !1811
  br label %return, !dbg !1811

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !1812
  %8 = load i64, i64* %count.addr, align 8, !dbg !1813
  %9 = load %struct.acpi_table_header*, %struct.acpi_table_header** %th, align 8, !dbg !1814
  %10 = bitcast %struct.acpi_table_header* %9 to i8*, !dbg !1814
  %11 = load %struct.acpi_table_header*, %struct.acpi_table_header** %th, align 8, !dbg !1815
  %length = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 1, !dbg !1816
  %12 = load i32, i32* %length, align 1, !dbg !1816
  %conv = zext i32 %12 to i64, !dbg !1815
  %call1 = call i64 @memory_read_from_buffer(i8* %7, i64 %8, i64* %offset.addr, i8* %10, i64 %conv) #6, !dbg !1817
  store i64 %call1, i64* %cnt, align 8, !dbg !1818
  %13 = load %struct.acpi_table_header*, %struct.acpi_table_header** %th, align 8, !dbg !1819
  call void @sfi_acpi_put_table(%struct.acpi_table_header* %13) #6, !dbg !1820
  %14 = load i64, i64* %cnt, align 8, !dbg !1821
  store i64 %14, i64* %retval, align 8, !dbg !1822
  br label %return, !dbg !1822

return:                                           ; preds = %if.end, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !1823
  ret i64 %15, !dbg !1823
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local %struct.sfi_table_header* @sfi_check_table(i64, %struct.sfi_table_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #4 !dbg !1824 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !1828, metadata !DIExpression()), !dbg !1829
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !1830
  %1 = ptrtoint i8* %0 to i64, !dbg !1830
  %2 = inttoptr i64 %1 to i8*, !dbg !1830
  %3 = ptrtoint i8* %2 to i64, !dbg !1830
  %cmp = icmp uge i64 %3, -4095, !dbg !1830
  %lnot = xor i1 %cmp, true, !dbg !1830
  %lnot1 = xor i1 %lnot, true, !dbg !1830
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1830
  %conv = sext i32 %lnot.ext to i64, !dbg !1830
  %tobool = icmp ne i64 %conv, 0, !dbg !1830
  ret i1 %tobool, !dbg !1831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @disable_sfi() #4 !dbg !1832 {
entry:
  store i32 1, i32* @sfi_disabled, align 4, !dbg !1833
  ret void, !dbg !1834
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.acpi_table_header* @sfi_to_acpi_th(%struct.sfi_table_header* %th) #4 !dbg !1835 {
entry:
  %th.addr = alloca %struct.sfi_table_header*, align 8
  store %struct.sfi_table_header* %th, %struct.sfi_table_header** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.sfi_table_header** %th.addr, metadata !1838, metadata !DIExpression()), !dbg !1839
  %0 = load %struct.sfi_table_header*, %struct.sfi_table_header** %th.addr, align 8, !dbg !1840
  %1 = bitcast %struct.sfi_table_header* %0 to %struct.acpi_table_header*, !dbg !1841
  ret %struct.acpi_table_header* %1, !dbg !1842
}

; Function Attrs: noredzone
declare dso_local void @sfi_put_table(%struct.sfi_table_header*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.sfi_table_header* @acpi_to_sfi_th(%struct.acpi_table_header* %th) #4 !dbg !1843 {
entry:
  %th.addr = alloca %struct.acpi_table_header*, align 8
  store %struct.acpi_table_header* %th, %struct.acpi_table_header** %th.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_table_header** %th.addr, metadata !1846, metadata !DIExpression()), !dbg !1847
  %0 = load %struct.acpi_table_header*, %struct.acpi_table_header** %th.addr, align 8, !dbg !1848
  %1 = bitcast %struct.acpi_table_header* %0 to %struct.sfi_table_header*, !dbg !1849
  ret %struct.sfi_table_header* %1, !dbg !1850
}

; Function Attrs: noredzone
declare dso_local i64 @memory_read_from_buffer(i8*, i64, i64*, i8*, i64) #3

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1570, !1571, !1572, !1573}
!llvm.ident = !{!1574}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xsdt_va", scope: !2, file: !3, line: 74, type: !24, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !1569, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/sfi/sfi_acpi.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !13, line: 65, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !18, line: 16, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!23 = !{!24, !64, !65, !66, !67, !77}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_xsdt", file: !26, line: 148, size: 352, elements: !27)
!26 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !57}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !25, file: !26, line: 149, baseType: !29, size: 288)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !26, line: 68, size: 288, elements: !30)
!30 = !{!31, !36, !41, !45, !46, !50, !54, !55, !56}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !29, file: !26, line: 69, baseType: !32, size: 32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !34)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !{!35}
!35 = !DISubrange(count: 4)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !29, file: !26, line: 70, baseType: !37, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !38, line: 21, baseType: !39)
!38 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !40, line: 27, baseType: !7)
!40 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!41 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !29, file: !26, line: 71, baseType: !42, size: 8, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !38, line: 17, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !40, line: 21, baseType: !44)
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !29, file: !26, line: 72, baseType: !42, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !29, file: !26, line: 73, baseType: !47, size: 48, offset: 80)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 48, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 6)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !29, file: !26, line: 74, baseType: !51, size: 64, offset: 128)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 8)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !29, file: !26, line: 75, baseType: !37, size: 32, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !29, file: !26, line: 76, baseType: !32, size: 32, offset: 224)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !29, file: !26, line: 77, baseType: !37, size: 32, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "table_offset_entry", scope: !25, file: !26, line: 150, baseType: !58, size: 64, offset: 288)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !62)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !38, line: 23, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !40, line: 31, baseType: !61)
!61 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !{!63}
!63 = !DISubrange(count: 1)
!64 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sfi_table_header", file: !69, line: 95, size: 192, elements: !70)
!69 = !DIFile(filename: "./include/linux/sfi.h", directory: "/home/lizy2001/genbc/linux")
!70 = !{!71, !72, !73, !74, !75, !76}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !68, file: !69, line: 96, baseType: !32, size: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !68, file: !69, line: 97, baseType: !37, size: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !68, file: !69, line: 98, baseType: !42, size: 8, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !68, file: !69, line: 99, baseType: !42, size: 8, offset: 72)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !68, file: !69, line: 100, baseType: !47, size: 48, offset: 80)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !68, file: !69, line: 101, baseType: !51, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sfi_table_attr", file: !79, line: 68, size: 512, elements: !80)
!79 = !DIFile(filename: "drivers/sfi/sfi_core.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !1568}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !78, file: !79, line: 69, baseType: !82, size: 448)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !83, line: 168, size: 448, elements: !84)
!83 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!84 = !{!85, !95, !100, !101, !1563, !1564}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !82, file: !83, line: 169, baseType: !86, size: 128)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !83, line: 30, size: 128, elements: !87)
!87 = !{!88, !91}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !86, file: !83, line: 31, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !86, file: !83, line: 32, baseType: !92, size: 16, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !93, line: 19, baseType: !94)
!93 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!94 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !82, file: !83, line: 170, baseType: !96, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !93, line: 55, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !98, line: 72, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !98, line: 16, baseType: !64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !82, file: !83, line: 171, baseType: !65, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !82, file: !83, line: 172, baseType: !102, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!105, !109, !112, !224, !172, !440, !96}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !93, line: 60, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !98, line: 73, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !98, line: 15, baseType: !108)
!108 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !111, line: 526, flags: DIFlagFwdDecl)
!111 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !114, line: 64, size: 512, elements: !115)
!114 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!115 = !{!116, !117, !123, !124, !185, !286, !1553, !1558, !1559, !1560, !1561, !1562}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !114, line: 65, baseType: !89, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !113, file: !114, line: 66, baseType: !118, size: 128, offset: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !93, line: 178, size: 128, elements: !119)
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !93, line: 179, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !118, file: !93, line: 179, baseType: !121, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !113, file: !114, line: 67, baseType: !112, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !113, file: !114, line: 68, baseType: !125, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !114, line: 192, size: 704, elements: !127)
!127 = !{!128, !129, !145, !146}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !126, file: !114, line: 193, baseType: !118, size: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !126, file: !114, line: 194, baseType: !130, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !131, line: 83, baseType: !132)
!131 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !131, line: 71, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, scope: !132, file: !131, line: 72, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !131, line: 72, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !135, file: !131, line: 73, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !131, line: 20, elements: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !138, file: !131, line: 21, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !142, line: 25, baseType: !143)
!142 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 25, elements: !144)
!144 = !{}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !126, file: !114, line: 195, baseType: !113, size: 512, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !126, file: !114, line: 196, baseType: !147, size: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !114, line: 156, size: 192, elements: !150)
!150 = !{!151, !157, !162}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !149, file: !114, line: 157, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !125, !112}
!156 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !114, line: 158, baseType: !158, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!89, !125, !112}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !149, file: !114, line: 159, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!156, !125, !112, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !114, line: 148, size: 20736, elements: !169)
!169 = !{!170, !175, !179, !180, !184}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !168, file: !114, line: 149, baseType: !171, size: 192)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 192, elements: !173)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!173 = !{!174}
!174 = !DISubrange(count: 3)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !168, file: !114, line: 150, baseType: !176, size: 4096, offset: 192)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 4096, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !168, file: !114, line: 151, baseType: !156, size: 32, offset: 4288)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !168, file: !114, line: 152, baseType: !181, size: 16384, offset: 4320)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 16384, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 2048)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !168, file: !114, line: 153, baseType: !156, size: 32, offset: 20704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !113, file: !114, line: 69, baseType: !186, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !114, line: 138, size: 448, elements: !188)
!188 = !{!189, !193, !207, !209, !228, !263, !267}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !187, file: !114, line: 139, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !112}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !187, file: !114, line: 140, baseType: !194, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !83, line: 230, size: 128, elements: !197)
!197 = !{!198, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !196, file: !83, line: 231, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!105, !112, !202, !172}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !196, file: !83, line: 232, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!105, !112, !202, !89, !96}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !187, file: !114, line: 141, baseType: !208, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !187, file: !114, line: 142, baseType: !210, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !83, line: 84, size: 320, elements: !214)
!214 = !{!215, !216, !220, !225, !226}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !83, line: 85, baseType: !89, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !213, file: !83, line: 86, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!92, !112, !202, !156}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !213, file: !83, line: 88, baseType: !221, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!92, !112, !224, !156}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !213, file: !83, line: 90, baseType: !208, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !213, file: !83, line: 91, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !187, file: !114, line: 143, baseType: !229, size: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !112}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !235)
!235 = !{!236, !237, !243, !247, !255, !259}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !234, file: !6, line: 40, baseType: !5, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !234, file: !6, line: 41, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !93, line: 30, baseType: !242)
!242 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !234, file: !6, line: 42, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!65}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !234, file: !6, line: 43, baseType: !248, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!251, !253}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !234, file: !6, line: 44, baseType: !256, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!251}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !234, file: !6, line: 45, baseType: !260, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !65}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !187, file: !114, line: 144, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!251, !112}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !187, file: !114, line: 145, baseType: !268, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{null, !112, !271, !279}
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !273, line: 23, baseType: !274)
!273 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 21, size: 32, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !274, file: !273, line: 22, baseType: !277, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !93, line: 32, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !98, line: 49, baseType: !7)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !273, line: 28, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 26, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !281, file: !273, line: 27, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !93, line: 33, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !98, line: 50, baseType: !7)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !113, file: !114, line: 70, baseType: !287, size: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !289, line: 123, size: 1024, elements: !290)
!289 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!290 = !{!291, !296, !297, !298, !299, !307, !308, !309, !1546, !1547, !1548, !1549, !1550}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !288, file: !289, line: 124, baseType: !292, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !93, line: 168, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 166, size: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !293, file: !93, line: 167, baseType: !156, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !288, file: !289, line: 125, baseType: !292, size: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !288, file: !289, line: 135, baseType: !287, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !288, file: !289, line: 136, baseType: !89, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !288, file: !289, line: 138, baseType: !300, size: 192, align: 64, offset: 192)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !301, line: 24, size: 192, align: 64, elements: !302)
!301 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!302 = !{!303, !304, !306}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !300, file: !301, line: 25, baseType: !64, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !300, file: !301, line: 26, baseType: !305, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !300, file: !301, line: 27, baseType: !305, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !288, file: !289, line: 140, baseType: !251, size: 64, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !288, file: !289, line: 141, baseType: !7, size: 32, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_member, scope: !288, file: !289, line: 142, baseType: !310, size: 256, offset: 512)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !288, file: !289, line: 142, size: 256, elements: !311)
!311 = !{!312, !376, !380}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !310, file: !289, line: 143, baseType: !313, size: 192)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !289, line: 91, size: 192, elements: !314)
!314 = !{!315, !316, !320}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !313, file: !289, line: 92, baseType: !64, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !313, file: !289, line: 94, baseType: !317, size: 64, offset: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !301, line: 31, size: 64, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !317, file: !301, line: 32, baseType: !305, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !313, file: !289, line: 100, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !289, line: 180, size: 704, elements: !323)
!323 = !{!324, !325, !326, !340, !341, !342, !368, !369}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !322, file: !289, line: 182, baseType: !287, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !289, line: 183, baseType: !7, size: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !322, file: !289, line: 186, baseType: !327, size: 192, offset: 128)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !328, line: 19, size: 192, elements: !329)
!328 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!329 = !{!330, !338, !339}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !327, file: !328, line: 20, baseType: !331, size: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !332, line: 292, size: 128, elements: !333)
!332 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334, !335, !337}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !331, file: !332, line: 293, baseType: !130)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !331, file: !332, line: 295, baseType: !336, size: 32)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !93, line: 148, baseType: !7)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !331, file: !332, line: 296, baseType: !65, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !327, file: !328, line: 21, baseType: !7, size: 32, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !327, file: !328, line: 22, baseType: !7, size: 32, offset: 160)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !322, file: !289, line: 187, baseType: !37, size: 32, offset: 320)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !322, file: !289, line: 188, baseType: !37, size: 32, offset: 352)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !322, file: !289, line: 189, baseType: !343, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !289, line: 168, size: 320, elements: !345)
!345 = !{!346, !352, !356, !360, !364}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !344, file: !289, line: 169, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!156, !350, !321}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !111, line: 539, flags: DIFlagFwdDecl)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !344, file: !289, line: 171, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!156, !287, !89, !92}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !344, file: !289, line: 173, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!156, !287}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !344, file: !289, line: 174, baseType: !361, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!156, !287, !287, !89}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !344, file: !289, line: 176, baseType: !365, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!156, !350, !287, !321}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !322, file: !289, line: 192, baseType: !118, size: 128, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !322, file: !289, line: 194, baseType: !370, size: 128, offset: 576)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !371, line: 40, baseType: !372)
!371 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !371, line: 36, size: 128, elements: !373)
!373 = !{!374, !375}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !372, file: !371, line: 37, baseType: !130)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !372, file: !371, line: 38, baseType: !118, size: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !310, file: !289, line: 144, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !289, line: 103, size: 64, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !377, file: !289, line: 104, baseType: !287, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !310, file: !289, line: 145, baseType: !381, size: 256)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !289, line: 107, size: 256, elements: !382)
!382 = !{!383, !1541, !1544, !1545}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !381, file: !289, line: 108, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !289, line: 217, size: 768, elements: !387)
!387 = !{!388, !427, !431, !435, !442, !446, !450, !454, !455, !456, !457, !465}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !386, file: !289, line: 222, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!156, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !289, line: 197, size: 1088, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !415, !416, !417, !418, !419, !420, !421, !422}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !393, file: !289, line: 199, baseType: !287, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !393, file: !289, line: 200, baseType: !109, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !393, file: !289, line: 201, baseType: !350, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !393, file: !289, line: 202, baseType: !65, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !393, file: !289, line: 205, baseType: !400, size: 192, offset: 256)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !401, line: 53, size: 192, elements: !402)
!401 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!402 = !{!403, !413, !414}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !400, file: !401, line: 54, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !405, line: 13, baseType: !406)
!405 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !93, line: 175, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 173, size: 64, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !407, file: !93, line: 174, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !38, line: 22, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !40, line: 30, baseType: !412)
!412 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !400, file: !401, line: 55, baseType: !130, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !400, file: !401, line: 59, baseType: !118, size: 128, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !393, file: !289, line: 206, baseType: !400, size: 192, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !393, file: !289, line: 207, baseType: !156, size: 32, offset: 640)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !393, file: !289, line: 208, baseType: !118, size: 128, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !393, file: !289, line: 209, baseType: !172, size: 64, offset: 832)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !393, file: !289, line: 211, baseType: !96, size: 64, offset: 896)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !393, file: !289, line: 212, baseType: !241, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !393, file: !289, line: 213, baseType: !241, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !393, file: !289, line: 214, baseType: !423, size: 64, offset: 1024)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !426, line: 356, flags: DIFlagFwdDecl)
!426 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!427 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !386, file: !289, line: 223, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !392}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !386, file: !289, line: 236, baseType: !432, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!156, !350, !65}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !386, file: !289, line: 238, baseType: !436, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!65, !350, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !93, line: 46, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !98, line: 88, baseType: !412)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !386, file: !289, line: 239, baseType: !443, size: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!65, !350, !65, !439}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !386, file: !289, line: 240, baseType: !447, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !350, !65}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !386, file: !289, line: 242, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!105, !392, !172, !96, !440}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !386, file: !289, line: 252, baseType: !96, size: 64, offset: 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !386, file: !289, line: 259, baseType: !241, size: 8, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !386, file: !289, line: 260, baseType: !451, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !386, file: !289, line: 263, baseType: !458, size: 64, offset: 640)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !392, !463}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !462, line: 52, baseType: !7)
!462 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !289, line: 27, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !386, file: !289, line: 266, baseType: !466, size: 64, offset: 704)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!156, !392, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !426, line: 305, size: 1472, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !1518, !1524, !1525, !1530, !1531, !1534, !1535, !1536, !1537, !1538, !1539}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !470, file: !426, line: 308, baseType: !64, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !470, file: !426, line: 309, baseType: !64, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !470, file: !426, line: 313, baseType: !469, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !470, file: !426, line: 313, baseType: !469, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !470, file: !426, line: 315, baseType: !300, size: 192, align: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !470, file: !426, line: 323, baseType: !64, size: 64, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !470, file: !426, line: 327, baseType: !479, size: 64, offset: 512)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !426, line: 388, size: 7296, elements: !481)
!481 = !{!482, !1514}
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !426, line: 389, baseType: !483, size: 7296)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !480, file: !426, line: 389, size: 7296, elements: !484)
!484 = !{!485, !486, !487, !488, !492, !493, !494, !495, !496, !504, !505, !506, !507, !508, !509, !510, !511, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !546, !552, !555, !597, !598, !1485, !1486, !1489, !1492, !1493, !1496, !1497, !1498, !1501, !1513}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !483, file: !426, line: 390, baseType: !469, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !483, file: !426, line: 391, baseType: !317, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !483, file: !426, line: 392, baseType: !59, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !483, file: !426, line: 394, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!64, !109, !64, !64, !64, !64}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !483, file: !426, line: 398, baseType: !64, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !483, file: !426, line: 399, baseType: !64, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !483, file: !426, line: 405, baseType: !64, size: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !483, file: !426, line: 406, baseType: !64, size: 64, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !483, file: !426, line: 407, baseType: !497, size: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !111, line: 286, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 286, size: 64, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !499, file: !111, line: 286, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !503, line: 18, baseType: !64)
!503 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!504 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !483, file: !426, line: 416, baseType: !292, size: 32, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !483, file: !426, line: 428, baseType: !292, size: 32, offset: 608)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !483, file: !426, line: 437, baseType: !292, size: 32, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !483, file: !426, line: 447, baseType: !292, size: 32, offset: 672)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !483, file: !426, line: 450, baseType: !404, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !483, file: !426, line: 452, baseType: !156, size: 32, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !483, file: !426, line: 454, baseType: !130, offset: 800)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !483, file: !426, line: 457, baseType: !512, size: 256, offset: 832)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !513, line: 35, size: 256, elements: !514)
!513 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!514 = !{!515, !516, !517, !519}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !512, file: !513, line: 36, baseType: !404, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !512, file: !513, line: 42, baseType: !404, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !512, file: !513, line: 46, baseType: !518, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !131, line: 29, baseType: !138)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !512, file: !513, line: 47, baseType: !118, size: 128, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !483, file: !426, line: 459, baseType: !118, size: 128, offset: 1088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !483, file: !426, line: 466, baseType: !64, size: 64, offset: 1216)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !483, file: !426, line: 467, baseType: !64, size: 64, offset: 1280)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !483, file: !426, line: 469, baseType: !64, size: 64, offset: 1344)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !483, file: !426, line: 470, baseType: !64, size: 64, offset: 1408)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !483, file: !426, line: 471, baseType: !406, size: 64, offset: 1472)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !483, file: !426, line: 472, baseType: !64, size: 64, offset: 1536)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !483, file: !426, line: 473, baseType: !64, size: 64, offset: 1600)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !483, file: !426, line: 474, baseType: !64, size: 64, offset: 1664)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !483, file: !426, line: 475, baseType: !64, size: 64, offset: 1728)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !483, file: !426, line: 477, baseType: !130, offset: 1792)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !483, file: !426, line: 478, baseType: !64, size: 64, offset: 1792)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !483, file: !426, line: 478, baseType: !64, size: 64, offset: 1856)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !483, file: !426, line: 478, baseType: !64, size: 64, offset: 1920)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !483, file: !426, line: 478, baseType: !64, size: 64, offset: 1984)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !483, file: !426, line: 479, baseType: !64, size: 64, offset: 2048)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !483, file: !426, line: 479, baseType: !64, size: 64, offset: 2112)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !483, file: !426, line: 479, baseType: !64, size: 64, offset: 2176)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !483, file: !426, line: 480, baseType: !64, size: 64, offset: 2240)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !483, file: !426, line: 480, baseType: !64, size: 64, offset: 2304)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !483, file: !426, line: 480, baseType: !64, size: 64, offset: 2368)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !483, file: !426, line: 480, baseType: !64, size: 64, offset: 2432)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !483, file: !426, line: 482, baseType: !543, size: 2816, offset: 2496)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2816, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 44)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !483, file: !426, line: 488, baseType: !547, size: 256, offset: 5312)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !548, line: 60, size: 256, elements: !549)
!548 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!549 = !{!550}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !547, file: !548, line: 61, baseType: !551, size: 256)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 256, elements: !34)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !483, file: !426, line: 490, baseType: !553, size: 64, offset: 5568)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !426, line: 490, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !483, file: !426, line: 493, baseType: !556, size: 896, offset: 5632)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !557, line: 53, baseType: !558)
!557 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !557, line: 13, size: 896, elements: !559)
!559 = !{!560, !561, !562, !563, !566, !567, !568, !569, !589, !590, !593}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !558, file: !557, line: 18, baseType: !59, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !558, file: !557, line: 28, baseType: !406, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !558, file: !557, line: 31, baseType: !512, size: 256, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !558, file: !557, line: 32, baseType: !564, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !557, line: 32, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !558, file: !557, line: 37, baseType: !94, size: 16, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !558, file: !557, line: 40, baseType: !400, size: 192, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !558, file: !557, line: 41, baseType: !65, size: 64, offset: 704)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !558, file: !557, line: 42, baseType: !570, size: 64, offset: 768)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !573, line: 13, size: 896, elements: !574)
!573 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!574 = !{!575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !572, file: !573, line: 14, baseType: !65, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !572, file: !573, line: 15, baseType: !64, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !572, file: !573, line: 17, baseType: !64, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !572, file: !573, line: 17, baseType: !64, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !572, file: !573, line: 19, baseType: !108, size: 64, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !572, file: !573, line: 21, baseType: !108, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !572, file: !573, line: 22, baseType: !108, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !572, file: !573, line: 23, baseType: !108, size: 64, offset: 448)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !572, file: !573, line: 24, baseType: !108, size: 64, offset: 512)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !572, file: !573, line: 25, baseType: !108, size: 64, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !572, file: !573, line: 26, baseType: !108, size: 64, offset: 640)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !572, file: !573, line: 27, baseType: !108, size: 64, offset: 704)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !572, file: !573, line: 28, baseType: !108, size: 64, offset: 768)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !572, file: !573, line: 29, baseType: !108, size: 64, offset: 832)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !558, file: !557, line: 44, baseType: !292, size: 32, offset: 832)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !558, file: !557, line: 50, baseType: !591, size: 16, offset: 864)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !38, line: 19, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !40, line: 24, baseType: !94)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !558, file: !557, line: 51, baseType: !594, size: 16, offset: 880)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !38, line: 18, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !40, line: 23, baseType: !596)
!596 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !426, line: 495, baseType: !64, size: 64, offset: 6528)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !483, file: !426, line: 497, baseType: !599, size: 64, offset: 6592)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !426, line: 381, size: 384, elements: !601)
!601 = !{!602, !603, !1484}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !600, file: !426, line: 382, baseType: !292, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !600, file: !426, line: 383, baseType: !604, size: 128, offset: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !426, line: 376, size: 128, elements: !605)
!605 = !{!606, !1482}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !604, file: !426, line: 377, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !609, line: 640, size: 48640, elements: !610)
!609 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!610 = !{!611, !617, !619, !620, !626, !627, !628, !629, !630, !631, !632, !633, !637, !655, !666, !756, !757, !758, !767, !768, !770, !771, !772, !773, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !852, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !902, !904, !905, !906, !918, !920, !921, !922, !923, !924, !930, !931, !932, !933, !934, !935, !936, !948, !953, !957, !958, !959, !962, !966, !969, !972, !975, !978, !981, !984, !987, !993, !994, !995, !1001, !1002, !1003, !1004, !1005, !1014, !1015, !1016, !1017, !1018, !1023, !1024, !1025, !1028, !1029, !1032, !1035, !1038, !1041, !1044, !1047, !1048, !1126, !1129, !1132, !1133, !1136, !1137, !1138, !1144, !1145, !1146, !1159, !1160, !1161, !1171, !1176, !1179, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !608, file: !609, line: 646, baseType: !612, size: 128)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !613, line: 56, size: 128, elements: !614)
!613 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!614 = !{!615, !616}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !613, line: 57, baseType: !64, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !612, file: !613, line: 58, baseType: !37, size: 32, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !608, file: !609, line: 649, baseType: !618, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !608, file: !609, line: 657, baseType: !65, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !608, file: !609, line: 658, baseType: !621, size: 32, offset: 256)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !622, line: 113, baseType: !623)
!622 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !622, line: 111, size: 32, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !623, file: !622, line: 112, baseType: !292, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !609, line: 660, baseType: !7, size: 32, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !608, file: !609, line: 661, baseType: !7, size: 32, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !608, file: !609, line: 684, baseType: !156, size: 32, offset: 352)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !608, file: !609, line: 686, baseType: !156, size: 32, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !608, file: !609, line: 687, baseType: !156, size: 32, offset: 416)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !608, file: !609, line: 688, baseType: !156, size: 32, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !608, file: !609, line: 689, baseType: !7, size: 32, offset: 480)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !608, file: !609, line: 691, baseType: !634, size: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!636 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !609, line: 691, flags: DIFlagFwdDecl)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !608, file: !609, line: 692, baseType: !638, size: 832, offset: 576)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !609, line: 451, size: 832, elements: !639)
!639 = !{!640, !645, !646, !647, !648, !649, !650, !651, !652, !653}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !638, file: !609, line: 453, baseType: !641, size: 128)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !609, line: 325, size: 128, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !641, file: !609, line: 326, baseType: !64, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !641, file: !609, line: 327, baseType: !37, size: 32, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !638, file: !609, line: 454, baseType: !300, size: 192, align: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !638, file: !609, line: 455, baseType: !118, size: 128, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !638, file: !609, line: 456, baseType: !7, size: 32, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !638, file: !609, line: 458, baseType: !59, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !638, file: !609, line: 459, baseType: !59, size: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !638, file: !609, line: 460, baseType: !59, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !638, file: !609, line: 461, baseType: !59, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !638, file: !609, line: 463, baseType: !59, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !638, file: !609, line: 465, baseType: !654, offset: 832)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !609, line: 415, elements: !144)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !608, file: !609, line: 693, baseType: !656, size: 384, offset: 1408)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !609, line: 489, size: 384, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !656, file: !609, line: 490, baseType: !118, size: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !656, file: !609, line: 491, baseType: !64, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !656, file: !609, line: 492, baseType: !64, size: 64, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !656, file: !609, line: 493, baseType: !7, size: 32, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !656, file: !609, line: 494, baseType: !94, size: 16, offset: 288)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !656, file: !609, line: 495, baseType: !94, size: 16, offset: 304)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !656, file: !609, line: 497, baseType: !665, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !608, file: !609, line: 697, baseType: !667, size: 1792, offset: 1792)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !609, line: 507, size: 1792, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !753, !754}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !667, file: !609, line: 508, baseType: !300, size: 192, align: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !667, file: !609, line: 515, baseType: !59, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !667, file: !609, line: 516, baseType: !59, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !667, file: !609, line: 517, baseType: !59, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !667, file: !609, line: 518, baseType: !59, size: 64, offset: 384)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !667, file: !609, line: 519, baseType: !59, size: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !667, file: !609, line: 526, baseType: !410, size: 64, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !667, file: !609, line: 527, baseType: !59, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !667, file: !609, line: 528, baseType: !7, size: 32, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !667, file: !609, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !667, file: !609, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !667, file: !609, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !667, file: !609, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !667, file: !609, line: 563, baseType: !683, size: 512, offset: 704)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !13, line: 118, size: 512, elements: !684)
!684 = !{!685, !693, !694, !699, !749, !750, !751, !752}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !683, file: !13, line: 119, baseType: !686, size: 256)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !687, line: 9, size: 256, elements: !688)
!687 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !686, file: !687, line: 10, baseType: !300, size: 192, align: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !686, file: !687, line: 11, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !692, line: 29, baseType: !410)
!692 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!693 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !683, file: !13, line: 120, baseType: !691, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !683, file: !13, line: 121, baseType: !695, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!12, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !683, file: !13, line: 122, baseType: !700, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !13, line: 159, size: 512, align: 512, elements: !702)
!702 = !{!703, !721, !722, !725, !735, !736, !744, !748}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !701, file: !13, line: 160, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !13, line: 214, size: 4608, align: 512, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !705, file: !13, line: 215, baseType: !518)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !705, file: !13, line: 216, baseType: !7, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !705, file: !13, line: 217, baseType: !7, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !705, file: !13, line: 218, baseType: !7, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !705, file: !13, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !705, file: !13, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !705, file: !13, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !705, file: !13, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !705, file: !13, line: 233, baseType: !691, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !705, file: !13, line: 234, baseType: !698, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !705, file: !13, line: 235, baseType: !691, size: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !705, file: !13, line: 236, baseType: !698, size: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !705, file: !13, line: 237, baseType: !720, size: 4096, offset: 512)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !701, size: 4096, elements: !52)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !701, file: !13, line: 161, baseType: !7, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !701, file: !13, line: 162, baseType: !723, size: 32, offset: 96)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !93, line: 27, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !98, line: 96, baseType: !156)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !701, file: !13, line: 163, baseType: !726, size: 32, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !727, line: 276, baseType: !728)
!727 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !727, line: 276, size: 32, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !728, file: !727, line: 276, baseType: !731, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !727, line: 70, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !727, line: 65, size: 32, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !732, file: !727, line: 66, baseType: !7, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !701, file: !13, line: 164, baseType: !698, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !701, file: !13, line: 165, baseType: !737, size: 128, offset: 256)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !687, line: 14, size: 128, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !737, file: !687, line: 15, baseType: !740, size: 128)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !301, line: 125, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !740, file: !301, line: 126, baseType: !317, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !740, file: !301, line: 127, baseType: !305, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !701, file: !13, line: 166, baseType: !745, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!691}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !701, file: !13, line: 167, baseType: !691, size: 64, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !683, file: !13, line: 123, baseType: !42, size: 8, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !683, file: !13, line: 124, baseType: !42, size: 8, offset: 456)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !683, file: !13, line: 125, baseType: !42, size: 8, offset: 464)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !683, file: !13, line: 126, baseType: !42, size: 8, offset: 472)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !667, file: !609, line: 572, baseType: !683, size: 512, offset: 1216)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !667, file: !609, line: 580, baseType: !755, size: 64, offset: 1728)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !608, file: !609, line: 721, baseType: !7, size: 32, offset: 3584)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !608, file: !609, line: 722, baseType: !156, size: 32, offset: 3616)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !608, file: !609, line: 723, baseType: !759, size: 64, offset: 3648)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !762, line: 17, baseType: !763)
!762 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !762, line: 17, size: 64, elements: !764)
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !763, file: !762, line: 17, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !62)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !608, file: !609, line: 724, baseType: !761, size: 64, offset: 3712)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !608, file: !609, line: 749, baseType: !769, offset: 3776)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !609, line: 290, elements: !144)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !608, file: !609, line: 751, baseType: !118, size: 128, offset: 3776)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !608, file: !609, line: 757, baseType: !479, size: 64, offset: 3904)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !608, file: !609, line: 758, baseType: !479, size: 64, offset: 3968)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !608, file: !609, line: 761, baseType: !774, size: 320, offset: 4032)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !548, line: 34, size: 320, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !774, file: !548, line: 35, baseType: !59, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !774, file: !548, line: 36, baseType: !778, size: 256, offset: 64)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 256, elements: !34)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !608, file: !609, line: 766, baseType: !156, size: 32, offset: 4352)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !608, file: !609, line: 767, baseType: !156, size: 32, offset: 4384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !608, file: !609, line: 768, baseType: !156, size: 32, offset: 4416)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !608, file: !609, line: 770, baseType: !156, size: 32, offset: 4448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !608, file: !609, line: 772, baseType: !64, size: 64, offset: 4480)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !608, file: !609, line: 775, baseType: !7, size: 32, offset: 4544)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !608, file: !609, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !608, file: !609, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !608, file: !609, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !608, file: !609, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !608, file: !609, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !608, file: !609, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !608, file: !609, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !608, file: !609, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !608, file: !609, line: 831, baseType: !64, size: 64, offset: 4672)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !608, file: !609, line: 833, baseType: !795, size: 384, offset: 4736)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !18, line: 25, size: 384, elements: !796)
!796 = !{!797, !802}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !795, file: !18, line: 26, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!108, !801}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !18, line: 27, baseType: !803, size: 320, offset: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !18, line: 27, size: 320, elements: !804)
!804 = !{!805, !815, !842}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !803, file: !18, line: 36, baseType: !806, size: 320)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !18, line: 29, size: 320, elements: !807)
!807 = !{!808, !810, !811, !812, !813, !814}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !806, file: !18, line: 30, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !806, file: !18, line: 31, baseType: !37, size: 32, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !806, file: !18, line: 32, baseType: !37, size: 32, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !806, file: !18, line: 33, baseType: !37, size: 32, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !806, file: !18, line: 34, baseType: !59, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !806, file: !18, line: 35, baseType: !809, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !803, file: !18, line: 46, baseType: !816, size: 192)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !18, line: 38, size: 192, elements: !817)
!817 = !{!818, !819, !820, !841}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !816, file: !18, line: 39, baseType: !723, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !18, line: 40, baseType: !17, size: 32, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !18, line: 41, baseType: !821, size: 64, offset: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !18, line: 41, size: 64, elements: !822)
!822 = !{!823, !831}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !821, file: !18, line: 42, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !826, line: 7, size: 128, elements: !827)
!826 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!827 = !{!828, !830}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !825, file: !826, line: 8, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !98, line: 93, baseType: !412)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !825, file: !826, line: 9, baseType: !412, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !821, file: !18, line: 43, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !834, line: 7, size: 64, elements: !835)
!834 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!835 = !{!836, !840}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !833, file: !834, line: 8, baseType: !837, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !834, line: 5, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !38, line: 20, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !40, line: 26, baseType: !156)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !833, file: !834, line: 9, baseType: !838, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !816, file: !18, line: 45, baseType: !59, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !803, file: !18, line: 54, baseType: !843, size: 256)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !18, line: 48, size: 256, elements: !844)
!844 = !{!845, !848, !849, !850, !851}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !843, file: !18, line: 49, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !18, line: 14, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !843, file: !18, line: 50, baseType: !156, size: 32, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !843, file: !18, line: 51, baseType: !156, size: 32, offset: 96)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !843, file: !18, line: 52, baseType: !64, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !843, file: !18, line: 53, baseType: !64, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !608, file: !609, line: 835, baseType: !853, size: 32, offset: 5120)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !93, line: 22, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !98, line: 28, baseType: !156)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !608, file: !609, line: 836, baseType: !853, size: 32, offset: 5152)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !608, file: !609, line: 840, baseType: !64, size: 64, offset: 5184)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !608, file: !609, line: 849, baseType: !607, size: 64, offset: 5248)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !608, file: !609, line: 852, baseType: !607, size: 64, offset: 5312)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !608, file: !609, line: 857, baseType: !118, size: 128, offset: 5376)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !608, file: !609, line: 858, baseType: !118, size: 128, offset: 5504)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !608, file: !609, line: 859, baseType: !607, size: 64, offset: 5632)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !608, file: !609, line: 867, baseType: !118, size: 128, offset: 5696)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !608, file: !609, line: 868, baseType: !118, size: 128, offset: 5824)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !608, file: !609, line: 871, baseType: !865, size: 64, offset: 5952)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !867, line: 59, size: 768, elements: !868)
!867 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!868 = !{!869, !870, !871, !872, !883, !884, !885, !894}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !866, file: !867, line: 61, baseType: !621, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !866, file: !867, line: 62, baseType: !7, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !866, file: !867, line: 63, baseType: !130, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !866, file: !867, line: 65, baseType: !873, size: 256, offset: 64)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 256, elements: !34)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !93, line: 182, size: 64, elements: !875)
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !874, file: !93, line: 183, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !93, line: 186, size: 128, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !93, line: 187, baseType: !877, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !878, file: !93, line: 187, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !866, file: !867, line: 66, baseType: !874, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !866, file: !867, line: 68, baseType: !370, size: 128, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !866, file: !867, line: 69, baseType: !886, size: 128, align: 64, offset: 512)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !93, line: 216, size: 128, align: 64, elements: !887)
!887 = !{!888, !890}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !886, file: !93, line: 217, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !886, file: !93, line: 218, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !889}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !866, file: !867, line: 70, baseType: !895, size: 128, offset: 640)
!895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 128, elements: !62)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !867, line: 54, size: 128, elements: !897)
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !896, file: !867, line: 55, baseType: !156, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !896, file: !867, line: 56, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !867, line: 56, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !608, file: !609, line: 872, baseType: !903, size: 512, offset: 6016)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 512, elements: !34)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !608, file: !609, line: 873, baseType: !118, size: 128, offset: 6528)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !608, file: !609, line: 874, baseType: !118, size: 128, offset: 6656)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !608, file: !609, line: 876, baseType: !907, size: 64, offset: 6784)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !909, line: 26, size: 192, elements: !910)
!909 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !908, file: !909, line: 27, baseType: !7, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !908, file: !909, line: 28, baseType: !913, size: 128, offset: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !914, line: 43, size: 128, elements: !915)
!914 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !913, file: !914, line: 44, baseType: !518)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !913, file: !914, line: 45, baseType: !118, size: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !608, file: !609, line: 879, baseType: !919, size: 64, offset: 6848)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !608, file: !609, line: 882, baseType: !919, size: 64, offset: 6912)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !608, file: !609, line: 884, baseType: !59, size: 64, offset: 6976)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !608, file: !609, line: 885, baseType: !59, size: 64, offset: 7040)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !608, file: !609, line: 890, baseType: !59, size: 64, offset: 7104)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !608, file: !609, line: 891, baseType: !925, size: 128, offset: 7168)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !609, line: 242, size: 128, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !925, file: !609, line: 244, baseType: !59, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !925, file: !609, line: 245, baseType: !59, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !925, file: !609, line: 246, baseType: !518, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !608, file: !609, line: 900, baseType: !64, size: 64, offset: 7296)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !608, file: !609, line: 901, baseType: !64, size: 64, offset: 7360)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !608, file: !609, line: 904, baseType: !59, size: 64, offset: 7424)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !608, file: !609, line: 907, baseType: !59, size: 64, offset: 7488)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !608, file: !609, line: 910, baseType: !64, size: 64, offset: 7552)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !608, file: !609, line: 911, baseType: !64, size: 64, offset: 7616)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !608, file: !609, line: 914, baseType: !937, size: 640, offset: 7680)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !938, line: 123, size: 640, elements: !939)
!938 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!939 = !{!940, !946, !947}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !937, file: !938, line: 124, baseType: !941, size: 576)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !942, size: 576, elements: !173)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !938, line: 108, size: 192, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !942, file: !938, line: 109, baseType: !59, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !942, file: !938, line: 110, baseType: !737, size: 128, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !937, file: !938, line: 125, baseType: !7, size: 32, offset: 576)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !937, file: !938, line: 126, baseType: !7, size: 32, offset: 608)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !608, file: !609, line: 917, baseType: !949, size: 192, offset: 8320)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !938, line: 134, size: 192, elements: !950)
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !949, file: !938, line: 135, baseType: !886, size: 128, align: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !949, file: !938, line: 136, baseType: !7, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !608, file: !609, line: 923, baseType: !954, size: 64, offset: 8512)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !956)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !609, line: 923, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !608, file: !609, line: 926, baseType: !954, size: 64, offset: 8576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !608, file: !609, line: 929, baseType: !954, size: 64, offset: 8640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !608, file: !609, line: 933, baseType: !960, size: 64, offset: 8704)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !609, line: 933, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !608, file: !609, line: 943, baseType: !963, size: 128, offset: 8768)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 16)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !608, file: !609, line: 945, baseType: !967, size: 64, offset: 8896)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !609, line: 49, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !608, file: !609, line: 956, baseType: !970, size: 64, offset: 8960)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !609, line: 45, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !608, file: !609, line: 959, baseType: !973, size: 64, offset: 9024)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !609, line: 959, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !608, file: !609, line: 962, baseType: !976, size: 64, offset: 9088)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !609, line: 66, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !608, file: !609, line: 966, baseType: !979, size: 64, offset: 9152)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !609, line: 50, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !608, file: !609, line: 969, baseType: !982, size: 64, offset: 9216)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !938, line: 223, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !608, file: !609, line: 970, baseType: !985, size: 64, offset: 9280)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !609, line: 62, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !608, file: !609, line: 971, baseType: !988, size: 64, offset: 9344)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !989, line: 25, baseType: !990)
!989 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !989, line: 23, size: 64, elements: !991)
!991 = !{!992}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !990, file: !989, line: 24, baseType: !766, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !608, file: !609, line: 972, baseType: !988, size: 64, offset: 9408)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !608, file: !609, line: 974, baseType: !988, size: 64, offset: 9472)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !608, file: !609, line: 975, baseType: !996, size: 192, offset: 9536)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !997, line: 30, size: 192, elements: !998)
!997 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !996, file: !997, line: 31, baseType: !118, size: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !996, file: !997, line: 32, baseType: !988, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !608, file: !609, line: 976, baseType: !64, size: 64, offset: 9728)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !608, file: !609, line: 977, baseType: !96, size: 64, offset: 9792)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !608, file: !609, line: 978, baseType: !7, size: 32, offset: 9856)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !608, file: !609, line: 980, baseType: !889, size: 64, offset: 9920)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !608, file: !609, line: 989, baseType: !1006, size: 128, offset: 9984)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1007, line: 35, size: 128, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1006, file: !1007, line: 36, baseType: !156, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1006, file: !1007, line: 37, baseType: !292, size: 32, offset: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1006, file: !1007, line: 38, baseType: !1012, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1007, line: 23, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !608, file: !609, line: 992, baseType: !59, size: 64, offset: 10112)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !608, file: !609, line: 993, baseType: !59, size: 64, offset: 10176)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !608, file: !609, line: 996, baseType: !130, offset: 10240)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !608, file: !609, line: 999, baseType: !518, offset: 10240)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !608, file: !609, line: 1001, baseType: !1019, size: 64, offset: 10240)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !609, line: 636, size: 64, elements: !1020)
!1020 = !{!1021}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1019, file: !609, line: 637, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !608, file: !609, line: 1005, baseType: !740, size: 128, offset: 10304)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !608, file: !609, line: 1007, baseType: !607, size: 64, offset: 10432)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !608, file: !609, line: 1009, baseType: !1026, size: 64, offset: 10496)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !609, line: 1009, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !608, file: !609, line: 1043, baseType: !65, size: 64, offset: 10560)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !608, file: !609, line: 1046, baseType: !1030, size: 64, offset: 10624)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !609, line: 41, flags: DIFlagFwdDecl)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !608, file: !609, line: 1050, baseType: !1033, size: 64, offset: 10688)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !609, line: 42, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !608, file: !609, line: 1054, baseType: !1036, size: 64, offset: 10752)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !609, line: 55, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !608, file: !609, line: 1056, baseType: !1039, size: 64, offset: 10816)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !609, line: 40, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !608, file: !609, line: 1058, baseType: !1042, size: 64, offset: 10880)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !609, line: 47, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !608, file: !609, line: 1061, baseType: !1045, size: 64, offset: 10944)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !609, line: 43, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !608, file: !609, line: 1064, baseType: !64, size: 64, offset: 11008)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !608, file: !609, line: 1065, baseType: !1049, size: 64, offset: 11072)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !997, line: 14, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !997, line: 12, size: 384, elements: !1052)
!1052 = !{!1053}
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1051, file: !997, line: 13, baseType: !1054, size: 384)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1051, file: !997, line: 13, size: 384, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1054, file: !997, line: 13, baseType: !156, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1054, file: !997, line: 13, baseType: !156, size: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1054, file: !997, line: 13, baseType: !156, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1054, file: !997, line: 13, baseType: !1060, size: 256, offset: 128)
!1060 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1061, line: 32, size: 256, elements: !1062)
!1061 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1062 = !{!1063, !1068, !1081, !1087, !1096, !1115, !1120}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1060, file: !1061, line: 37, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !1061, line: 34, size: 64, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1064, file: !1061, line: 35, baseType: !854, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1064, file: !1061, line: 36, baseType: !278, size: 32, offset: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1060, file: !1061, line: 45, baseType: !1069, size: 192)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !1061, line: 40, size: 192, elements: !1070)
!1070 = !{!1071, !1073, !1074, !1080}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1069, file: !1061, line: 41, baseType: !1072, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !98, line: 95, baseType: !156)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1069, file: !1061, line: 42, baseType: !156, size: 32, offset: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1069, file: !1061, line: 43, baseType: !1075, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1061, line: 11, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1061, line: 8, size: 64, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1076, file: !1061, line: 9, baseType: !156, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1076, file: !1061, line: 10, baseType: !65, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1069, file: !1061, line: 44, baseType: !156, size: 32, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1060, file: !1061, line: 52, baseType: !1082, size: 128)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !1061, line: 48, size: 128, elements: !1083)
!1083 = !{!1084, !1085, !1086}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1082, file: !1061, line: 49, baseType: !854, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1082, file: !1061, line: 50, baseType: !278, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1082, file: !1061, line: 51, baseType: !1075, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1060, file: !1061, line: 61, baseType: !1088, size: 256)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !1061, line: 55, size: 256, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1095}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1088, file: !1061, line: 56, baseType: !854, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1088, file: !1061, line: 57, baseType: !278, size: 32, offset: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1088, file: !1061, line: 58, baseType: !156, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1088, file: !1061, line: 59, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !98, line: 94, baseType: !107)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1088, file: !1061, line: 60, baseType: !1094, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1060, file: !1061, line: 95, baseType: !1097, size: 256)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !1061, line: 64, size: 256, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1097, file: !1061, line: 65, baseType: !65, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1097, file: !1061, line: 77, baseType: !1101, size: 192, offset: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1097, file: !1061, line: 77, size: 192, elements: !1102)
!1102 = !{!1103, !1104, !1110}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1101, file: !1061, line: 82, baseType: !596, size: 16)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1101, file: !1061, line: 88, baseType: !1105, size: 192)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1101, file: !1061, line: 84, size: 192, elements: !1106)
!1106 = !{!1107, !1108, !1109}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1105, file: !1061, line: 85, baseType: !51, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1105, file: !1061, line: 86, baseType: !65, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1105, file: !1061, line: 87, baseType: !65, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1101, file: !1061, line: 93, baseType: !1111, size: 96)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1101, file: !1061, line: 90, size: 96, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1111, file: !1061, line: 91, baseType: !51, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1111, file: !1061, line: 92, baseType: !39, size: 32, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1060, file: !1061, line: 101, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !1061, line: 98, size: 128, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1116, file: !1061, line: 99, baseType: !108, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1116, file: !1061, line: 100, baseType: !156, size: 32, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1060, file: !1061, line: 108, baseType: !1121, size: 128)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !1061, line: 104, size: 128, elements: !1122)
!1122 = !{!1123, !1124, !1125}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1121, file: !1061, line: 105, baseType: !65, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1121, file: !1061, line: 106, baseType: !156, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1121, file: !1061, line: 107, baseType: !7, size: 32, offset: 96)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !608, file: !609, line: 1067, baseType: !1127, offset: 11136)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1128, line: 12, elements: !144)
!1128 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !608, file: !609, line: 1099, baseType: !1130, size: 64, offset: 11136)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !609, line: 56, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !608, file: !609, line: 1103, baseType: !118, size: 128, offset: 11200)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !608, file: !609, line: 1104, baseType: !1134, size: 64, offset: 11328)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !609, line: 46, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !608, file: !609, line: 1105, baseType: !400, size: 192, offset: 11392)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !608, file: !609, line: 1106, baseType: !7, size: 32, offset: 11584)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !608, file: !609, line: 1109, baseType: !1139, size: 128, offset: 11648)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1140, size: 128, elements: !1142)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !609, line: 51, flags: DIFlagFwdDecl)
!1142 = !{!1143}
!1143 = !DISubrange(count: 2)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !608, file: !609, line: 1110, baseType: !400, size: 192, offset: 11776)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !608, file: !609, line: 1111, baseType: !118, size: 128, offset: 11968)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !608, file: !609, line: 1173, baseType: !1147, size: 64, offset: 12096)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1149, line: 62, size: 256, align: 256, elements: !1150)
!1149 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1150 = !{!1151, !1152, !1153, !1158}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1148, file: !1149, line: 75, baseType: !39, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1148, file: !1149, line: 90, baseType: !39, size: 32, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1148, file: !1149, line: 124, baseType: !1154, size: 64, offset: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1148, file: !1149, line: 109, size: 64, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1154, file: !1149, line: 110, baseType: !60, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1154, file: !1149, line: 112, baseType: !60, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1148, file: !1149, line: 144, baseType: !39, size: 32, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !608, file: !609, line: 1174, baseType: !37, size: 32, offset: 12160)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !608, file: !609, line: 1179, baseType: !64, size: 64, offset: 12224)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !608, file: !609, line: 1182, baseType: !1162, size: 128, offset: 12288)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !548, line: 76, size: 128, elements: !1163)
!1163 = !{!1164, !1169, !1170}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1162, file: !548, line: 85, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1166, line: 7, size: 64, elements: !1167)
!1166 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1167 = !{!1168}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1165, file: !1166, line: 12, baseType: !763, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1162, file: !548, line: 88, baseType: !241, size: 8, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1162, file: !548, line: 95, baseType: !241, size: 8, offset: 72)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !608, file: !609, line: 1184, baseType: !1172, size: 128, offset: 12416)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !609, line: 1184, size: 128, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1172, file: !609, line: 1185, baseType: !621, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1172, file: !609, line: 1186, baseType: !886, size: 128, align: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !608, file: !609, line: 1190, baseType: !1177, size: 64, offset: 12544)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !609, line: 53, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !608, file: !609, line: 1192, baseType: !1180, size: 128, offset: 12608)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !548, line: 64, size: 128, elements: !1181)
!1181 = !{!1182, !1275, !1276}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1180, file: !548, line: 65, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !426, line: 68, size: 512, align: 128, elements: !1185)
!1185 = !{!1186, !1187, !1267, !1274}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1184, file: !426, line: 69, baseType: !64, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !426, line: 77, baseType: !1188, size: 320, offset: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !426, line: 77, size: 320, elements: !1189)
!1189 = !{!1190, !1199, !1204, !1232, !1240, !1246, !1259, !1266}
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !426, line: 78, baseType: !1191, size: 320)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !426, line: 78, size: 320, elements: !1192)
!1192 = !{!1193, !1194, !1197, !1198}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1191, file: !426, line: 84, baseType: !118, size: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1191, file: !426, line: 86, baseType: !1195, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !426, line: 26, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1191, file: !426, line: 87, baseType: !64, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1191, file: !426, line: 94, baseType: !64, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !426, line: 96, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !426, line: 96, size: 64, elements: !1201)
!1201 = !{!1202}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1200, file: !426, line: 101, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !93, line: 143, baseType: !59)
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !426, line: 103, baseType: !1205, size: 320)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !426, line: 103, size: 320, elements: !1206)
!1206 = !{!1207, !1217, !1220, !1221}
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !426, line: 104, baseType: !1208, size: 128)
!1208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !426, line: 104, size: 128, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1208, file: !426, line: 105, baseType: !118, size: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !426, line: 106, baseType: !1212, size: 128)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1208, file: !426, line: 106, size: 128, elements: !1213)
!1213 = !{!1214, !1215, !1216}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1212, file: !426, line: 107, baseType: !1183, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1212, file: !426, line: 109, baseType: !156, size: 32, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1212, file: !426, line: 110, baseType: !156, size: 32, offset: 96)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1205, file: !426, line: 117, baseType: !1218, size: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !426, line: 117, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1205, file: !426, line: 119, baseType: !65, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !426, line: 120, baseType: !1222, size: 64, offset: 256)
!1222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !426, line: 120, size: 64, elements: !1223)
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1222, file: !426, line: 121, baseType: !65, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1222, file: !426, line: 122, baseType: !64, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !426, line: 123, baseType: !1227, size: 32)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1222, file: !426, line: 123, size: 32, elements: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1227, file: !426, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1227, file: !426, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1227, file: !426, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !426, line: 130, baseType: !1233, size: 192)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !426, line: 130, size: 192, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1233, file: !426, line: 131, baseType: !64, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1233, file: !426, line: 134, baseType: !44, size: 8, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1233, file: !426, line: 135, baseType: !44, size: 8, offset: 72)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1233, file: !426, line: 136, baseType: !292, size: 32, offset: 96)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1233, file: !426, line: 137, baseType: !7, size: 32, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !426, line: 139, baseType: !1241, size: 256)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !426, line: 139, size: 256, elements: !1242)
!1242 = !{!1243, !1244, !1245}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1241, file: !426, line: 140, baseType: !64, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1241, file: !426, line: 141, baseType: !292, size: 32, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1241, file: !426, line: 143, baseType: !118, size: 128, offset: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !426, line: 145, baseType: !1247, size: 256)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !426, line: 145, size: 256, elements: !1248)
!1248 = !{!1249, !1250, !1252, !1253, !1258}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1247, file: !426, line: 146, baseType: !64, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1247, file: !426, line: 147, baseType: !1251, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !111, line: 509, baseType: !1183)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1247, file: !426, line: 148, baseType: !64, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !426, line: 149, baseType: !1254, size: 64, offset: 192)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !426, line: 149, size: 64, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1254, file: !426, line: 150, baseType: !479, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1254, file: !426, line: 151, baseType: !292, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1247, file: !426, line: 156, baseType: !130, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !426, line: 159, baseType: !1260, size: 128)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !426, line: 159, size: 128, elements: !1261)
!1261 = !{!1262, !1265}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1260, file: !426, line: 161, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !426, line: 161, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1260, file: !426, line: 162, baseType: !65, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1188, file: !426, line: 176, baseType: !886, size: 128, align: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !426, line: 179, baseType: !1268, size: 32, offset: 384)
!1268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !426, line: 179, size: 32, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1268, file: !426, line: 184, baseType: !292, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1268, file: !426, line: 192, baseType: !7, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1268, file: !426, line: 194, baseType: !7, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1268, file: !426, line: 195, baseType: !156, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1184, file: !426, line: 199, baseType: !292, size: 32, offset: 416)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1180, file: !548, line: 67, baseType: !39, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1180, file: !548, line: 68, baseType: !39, size: 32, offset: 96)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !608, file: !609, line: 1206, baseType: !156, size: 32, offset: 12736)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !608, file: !609, line: 1207, baseType: !156, size: 32, offset: 12768)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !608, file: !609, line: 1209, baseType: !64, size: 64, offset: 12800)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !608, file: !609, line: 1219, baseType: !59, size: 64, offset: 12864)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !608, file: !609, line: 1220, baseType: !59, size: 64, offset: 12928)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !608, file: !609, line: 1317, baseType: !156, size: 32, offset: 12992)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !608, file: !609, line: 1319, baseType: !607, size: 64, offset: 13056)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !608, file: !609, line: 1322, baseType: !1285, size: 64, offset: 13120)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1287, line: 56, size: 512, elements: !1288)
!1287 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1295, !1296, !1298}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1286, file: !1287, line: 57, baseType: !1285, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1286, file: !1287, line: 58, baseType: !65, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1286, file: !1287, line: 59, baseType: !64, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1286, file: !1287, line: 60, baseType: !64, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1286, file: !1287, line: 61, baseType: !1294, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1286, file: !1287, line: 62, baseType: !7, size: 32, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1286, file: !1287, line: 63, baseType: !1297, size: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !93, line: 153, baseType: !59)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1286, file: !1287, line: 64, baseType: !251, size: 64, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !608, file: !609, line: 1326, baseType: !621, size: 32, offset: 13184)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !608, file: !609, line: 1342, baseType: !65, size: 64, offset: 13248)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !608, file: !609, line: 1343, baseType: !60, size: 64, offset: 13312)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !608, file: !609, line: 1344, baseType: !59, size: 64, offset: 13376)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !608, file: !609, line: 1345, baseType: !60, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !608, file: !609, line: 1346, baseType: !60, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !608, file: !609, line: 1347, baseType: !60, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !608, file: !609, line: 1348, baseType: !886, size: 128, align: 64, offset: 13504)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !608, file: !609, line: 1358, baseType: !1308, size: 34816, offset: 13824)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1309, line: 485, size: 34816, elements: !1310)
!1309 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1340, !1341, !1342, !1343, !1344, !1345, !1348, !1349, !1350}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1308, file: !1309, line: 487, baseType: !1312, size: 192)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1313, size: 192, elements: !173)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1314, line: 16, size: 64, elements: !1315)
!1314 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1313, file: !1314, line: 17, baseType: !591, size: 16)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1313, file: !1314, line: 18, baseType: !591, size: 16, offset: 16)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1313, file: !1314, line: 19, baseType: !591, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1313, file: !1314, line: 19, baseType: !591, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1313, file: !1314, line: 19, baseType: !591, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1313, file: !1314, line: 19, baseType: !591, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1313, file: !1314, line: 19, baseType: !591, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1313, file: !1314, line: 20, baseType: !591, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1313, file: !1314, line: 20, baseType: !591, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1313, file: !1314, line: 20, baseType: !591, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1313, file: !1314, line: 20, baseType: !591, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1313, file: !1314, line: 20, baseType: !591, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1313, file: !1314, line: 20, baseType: !591, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1308, file: !1309, line: 491, baseType: !64, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1308, file: !1309, line: 495, baseType: !94, size: 16, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1308, file: !1309, line: 496, baseType: !94, size: 16, offset: 272)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1308, file: !1309, line: 497, baseType: !94, size: 16, offset: 288)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1308, file: !1309, line: 498, baseType: !94, size: 16, offset: 304)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1308, file: !1309, line: 502, baseType: !64, size: 64, offset: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1308, file: !1309, line: 503, baseType: !64, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1308, file: !1309, line: 514, baseType: !1337, size: 256, offset: 448)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1338, size: 256, elements: !34)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1309, line: 483, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1308, file: !1309, line: 516, baseType: !64, size: 64, offset: 704)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1308, file: !1309, line: 518, baseType: !64, size: 64, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1308, file: !1309, line: 520, baseType: !64, size: 64, offset: 832)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1308, file: !1309, line: 521, baseType: !64, size: 64, offset: 896)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1308, file: !1309, line: 522, baseType: !64, size: 64, offset: 960)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1308, file: !1309, line: 528, baseType: !1346, size: 64, offset: 1024)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1309, line: 10, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1308, file: !1309, line: 535, baseType: !64, size: 64, offset: 1088)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1308, file: !1309, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1308, file: !1309, line: 540, baseType: !1351, size: 33280, offset: 1536)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1352, line: 317, size: 33280, elements: !1353)
!1352 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !{!1354, !1355, !1356}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1351, file: !1352, line: 330, baseType: !7, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1351, file: !1352, line: 337, baseType: !64, size: 64, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1351, file: !1352, line: 348, baseType: !1357, size: 32768, offset: 512)
!1357 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1352, line: 304, size: 32768, elements: !1358)
!1358 = !{!1359, !1374, !1413, !1463, !1478}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1357, file: !1352, line: 305, baseType: !1360, size: 896)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1352, line: 12, size: 896, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1373}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1360, file: !1352, line: 13, baseType: !37, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1360, file: !1352, line: 14, baseType: !37, size: 32, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1360, file: !1352, line: 15, baseType: !37, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1360, file: !1352, line: 16, baseType: !37, size: 32, offset: 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1360, file: !1352, line: 17, baseType: !37, size: 32, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1360, file: !1352, line: 18, baseType: !37, size: 32, offset: 160)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1360, file: !1352, line: 19, baseType: !37, size: 32, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1360, file: !1352, line: 22, baseType: !1370, size: 640, offset: 224)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 640, elements: !1371)
!1371 = !{!1372}
!1372 = !DISubrange(count: 20)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1360, file: !1352, line: 25, baseType: !37, size: 32, offset: 864)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1357, file: !1352, line: 306, baseType: !1375, size: 4096, align: 128)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1352, line: 34, size: 4096, align: 128, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1396, !1397, !1398, !1402, !1404, !1408}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1375, file: !1352, line: 35, baseType: !591, size: 16)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1375, file: !1352, line: 36, baseType: !591, size: 16, offset: 16)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1375, file: !1352, line: 37, baseType: !591, size: 16, offset: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1375, file: !1352, line: 38, baseType: !591, size: 16, offset: 48)
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !1352, line: 39, baseType: !1382, size: 128, offset: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1375, file: !1352, line: 39, size: 128, elements: !1383)
!1383 = !{!1384, !1389}
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1352, line: 40, baseType: !1385, size: 128)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1352, line: 40, size: 128, elements: !1386)
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1385, file: !1352, line: 41, baseType: !59, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1385, file: !1352, line: 42, baseType: !59, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1352, line: 44, baseType: !1390, size: 128)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1352, line: 44, size: 128, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1390, file: !1352, line: 45, baseType: !37, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1390, file: !1352, line: 46, baseType: !37, size: 32, offset: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1390, file: !1352, line: 47, baseType: !37, size: 32, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1390, file: !1352, line: 48, baseType: !37, size: 32, offset: 96)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1375, file: !1352, line: 51, baseType: !37, size: 32, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1375, file: !1352, line: 52, baseType: !37, size: 32, offset: 224)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1375, file: !1352, line: 55, baseType: !1399, size: 1024, offset: 256)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 1024, elements: !1400)
!1400 = !{!1401}
!1401 = !DISubrange(count: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1375, file: !1352, line: 58, baseType: !1403, size: 2048, offset: 1280)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !177)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1375, file: !1352, line: 60, baseType: !1405, size: 384, offset: 3328)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 384, elements: !1406)
!1406 = !{!1407}
!1407 = !DISubrange(count: 12)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1375, file: !1352, line: 62, baseType: !1409, size: 384, offset: 3712)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1375, file: !1352, line: 62, size: 384, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1409, file: !1352, line: 63, baseType: !1405, size: 384)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1409, file: !1352, line: 64, baseType: !1405, size: 384)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1357, file: !1352, line: 307, baseType: !1414, size: 1088)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1352, line: 79, size: 1088, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1462}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1414, file: !1352, line: 80, baseType: !37, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1414, file: !1352, line: 81, baseType: !37, size: 32, offset: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1414, file: !1352, line: 82, baseType: !37, size: 32, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1414, file: !1352, line: 83, baseType: !37, size: 32, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1414, file: !1352, line: 84, baseType: !37, size: 32, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1414, file: !1352, line: 85, baseType: !37, size: 32, offset: 160)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1414, file: !1352, line: 86, baseType: !37, size: 32, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1414, file: !1352, line: 88, baseType: !1370, size: 640, offset: 224)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1414, file: !1352, line: 89, baseType: !42, size: 8, offset: 864)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1414, file: !1352, line: 90, baseType: !42, size: 8, offset: 872)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1414, file: !1352, line: 91, baseType: !42, size: 8, offset: 880)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1414, file: !1352, line: 92, baseType: !42, size: 8, offset: 888)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1414, file: !1352, line: 93, baseType: !42, size: 8, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1414, file: !1352, line: 94, baseType: !42, size: 8, offset: 904)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1414, file: !1352, line: 95, baseType: !1431, size: 64, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1433, line: 11, size: 128, elements: !1434)
!1433 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1432, file: !1433, line: 12, baseType: !108, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1432, file: !1433, line: 13, baseType: !1437, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1439, line: 56, size: 1344, elements: !1440)
!1439 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1438, file: !1439, line: 61, baseType: !64, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1438, file: !1439, line: 62, baseType: !64, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1438, file: !1439, line: 63, baseType: !64, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1438, file: !1439, line: 64, baseType: !64, size: 64, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1438, file: !1439, line: 65, baseType: !64, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1438, file: !1439, line: 66, baseType: !64, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1438, file: !1439, line: 68, baseType: !64, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1438, file: !1439, line: 69, baseType: !64, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1438, file: !1439, line: 70, baseType: !64, size: 64, offset: 512)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1438, file: !1439, line: 71, baseType: !64, size: 64, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1438, file: !1439, line: 72, baseType: !64, size: 64, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1438, file: !1439, line: 73, baseType: !64, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1438, file: !1439, line: 74, baseType: !64, size: 64, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1438, file: !1439, line: 75, baseType: !64, size: 64, offset: 832)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1438, file: !1439, line: 76, baseType: !64, size: 64, offset: 896)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1438, file: !1439, line: 81, baseType: !64, size: 64, offset: 960)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1438, file: !1439, line: 83, baseType: !64, size: 64, offset: 1024)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1438, file: !1439, line: 84, baseType: !64, size: 64, offset: 1088)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1438, file: !1439, line: 85, baseType: !64, size: 64, offset: 1152)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1438, file: !1439, line: 86, baseType: !64, size: 64, offset: 1216)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1438, file: !1439, line: 87, baseType: !64, size: 64, offset: 1280)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1414, file: !1352, line: 96, baseType: !37, size: 32, offset: 1024)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1357, file: !1352, line: 308, baseType: !1464, size: 4608, align: 512)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1352, line: 289, size: 4608, align: 512, elements: !1465)
!1465 = !{!1466, !1467, !1474}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1464, file: !1352, line: 290, baseType: !1375, size: 4096, align: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1464, file: !1352, line: 291, baseType: !1468, size: 512, offset: 4096)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1352, line: 268, size: 512, elements: !1469)
!1469 = !{!1470, !1471, !1472}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1468, file: !1352, line: 269, baseType: !59, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1468, file: !1352, line: 270, baseType: !59, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1468, file: !1352, line: 271, baseType: !1473, size: 384, offset: 128)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 384, elements: !48)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1464, file: !1352, line: 292, baseType: !1475, offset: 4608)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, elements: !1476)
!1476 = !{!1477}
!1477 = !DISubrange(count: 0)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1357, file: !1352, line: 309, baseType: !1479, size: 32768)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32768, elements: !1480)
!1480 = !{!1481}
!1481 = !DISubrange(count: 4096)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !604, file: !426, line: 378, baseType: !1483, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !600, file: !426, line: 384, baseType: !908, size: 192, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !483, file: !426, line: 500, baseType: !130, offset: 6656)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !483, file: !426, line: 501, baseType: !1487, size: 64, offset: 6656)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !426, line: 387, flags: DIFlagFwdDecl)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !483, file: !426, line: 516, baseType: !1490, size: 64, offset: 6720)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !426, line: 516, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !483, file: !426, line: 519, baseType: !109, size: 64, offset: 6784)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !483, file: !426, line: 521, baseType: !1494, size: 64, offset: 6848)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !426, line: 521, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !483, file: !426, line: 545, baseType: !292, size: 32, offset: 6912)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !483, file: !426, line: 548, baseType: !241, size: 8, offset: 6944)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !483, file: !426, line: 550, baseType: !1499, offset: 6952)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1500, line: 142, elements: !144)
!1500 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !483, file: !426, line: 554, baseType: !1502, size: 256, offset: 6976)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1503, line: 102, size: 256, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1504 = !{!1505, !1506, !1507}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1502, file: !1503, line: 103, baseType: !404, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1502, file: !1503, line: 104, baseType: !118, size: 128, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1502, file: !1503, line: 105, baseType: !1508, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1503, line: 21, baseType: !1509)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !1512}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !483, file: !426, line: 557, baseType: !37, size: 32, offset: 7232)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !480, file: !426, line: 565, baseType: !1515, offset: 7296)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, elements: !1516)
!1516 = !{!1517}
!1517 = !DISubrange(count: -1)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !470, file: !426, line: 333, baseType: !1519, size: 64, offset: 576)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !111, line: 284, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !111, line: 284, size: 64, elements: !1521)
!1521 = !{!1522}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1520, file: !111, line: 284, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !503, line: 19, baseType: !64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !470, file: !426, line: 334, baseType: !64, size: 64, offset: 640)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !470, file: !426, line: 343, baseType: !1526, size: 256, offset: 704)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !426, line: 340, size: 256, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1526, file: !426, line: 341, baseType: !300, size: 192, align: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1526, file: !426, line: 342, baseType: !64, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !470, file: !426, line: 351, baseType: !118, size: 128, offset: 960)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !470, file: !426, line: 353, baseType: !1532, size: 64, offset: 1088)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !426, line: 353, flags: DIFlagFwdDecl)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !470, file: !426, line: 356, baseType: !423, size: 64, offset: 1152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !470, file: !426, line: 359, baseType: !64, size: 64, offset: 1216)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !470, file: !426, line: 361, baseType: !109, size: 64, offset: 1280)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !470, file: !426, line: 362, baseType: !65, size: 64, offset: 1344)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !470, file: !426, line: 365, baseType: !404, size: 64, offset: 1408)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !470, file: !426, line: 373, baseType: !1540, offset: 1472)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !426, line: 296, elements: !144)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !381, file: !289, line: 109, baseType: !1542, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !289, line: 31, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !381, file: !289, line: 110, baseType: !440, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !381, file: !289, line: 111, baseType: !287, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !288, file: !289, line: 148, baseType: !65, size: 64, offset: 768)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !288, file: !289, line: 154, baseType: !59, size: 64, offset: 832)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !289, line: 156, baseType: !94, size: 16, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !288, file: !289, line: 157, baseType: !92, size: 16, offset: 912)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !288, file: !289, line: 158, baseType: !1551, size: 64, offset: 960)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !289, line: 32, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !113, file: !114, line: 71, baseType: !1554, size: 32, offset: 448)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1555, line: 19, size: 32, elements: !1556)
!1555 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1556 = !{!1557}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1554, file: !1555, line: 20, baseType: !621, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !113, file: !114, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !113, file: !114, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !113, file: !114, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !113, file: !114, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !113, file: !114, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !82, file: !83, line: 174, baseType: !102, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !82, file: !83, line: 176, baseType: !1565, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!156, !109, !112, !224, !469}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !78, file: !79, line: 70, baseType: !51, size: 64, offset: 448)
!1569 = !{!0}
!1570 = !{i32 7, !"Dwarf Version", i32 4}
!1571 = !{i32 2, !"Debug Info Version", i32 3}
!1572 = !{i32 1, !"wchar_size", i32 2}
!1573 = !{i32 1, !"Code Model", i32 2}
!1574 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!1575 = distinct !DISubprogram(name: "sfi_acpi_init", scope: !3, file: !3, line: 116, type: !1576, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!156}
!1578 = !DILocalVariable(name: "xsdt_key", scope: !1575, file: !3, line: 118, type: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sfi_table_key", file: !79, line: 61, size: 192, elements: !1580)
!1580 = !{!1581, !1582, !1583}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1579, file: !79, line: 62, baseType: !172, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !1579, file: !79, line: 63, baseType: !172, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !1579, file: !79, line: 64, baseType: !172, size: 64, offset: 128)
!1584 = !DILocation(line: 118, column: 23, scope: !1575)
!1585 = !DILocation(line: 120, column: 2, scope: !1575)
!1586 = !DILocation(line: 123, column: 38, scope: !1575)
!1587 = !DILocation(line: 123, column: 12, scope: !1575)
!1588 = !DILocation(line: 123, column: 10, scope: !1575)
!1589 = !DILocation(line: 124, column: 2, scope: !1575)
!1590 = distinct !DISubprogram(name: "sfi_acpi_parse_xsdt", scope: !3, file: !3, line: 97, type: !1591, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!156, !67}
!1593 = !DILocalVariable(name: "th", arg: 1, scope: !1590, file: !3, line: 97, type: !67)
!1594 = !DILocation(line: 97, column: 64, scope: !1590)
!1595 = !DILocalVariable(name: "key", scope: !1590, file: !3, line: 99, type: !1579)
!1596 = !DILocation(line: 99, column: 23, scope: !1590)
!1597 = !DILocalVariable(name: "tbl_cnt", scope: !1590, file: !3, line: 100, type: !156)
!1598 = !DILocation(line: 100, column: 6, scope: !1590)
!1599 = !DILocalVariable(name: "i", scope: !1590, file: !3, line: 100, type: !156)
!1600 = !DILocation(line: 100, column: 15, scope: !1590)
!1601 = !DILocalVariable(name: "ret", scope: !1590, file: !3, line: 101, type: !65)
!1602 = !DILocation(line: 101, column: 8, scope: !1590)
!1603 = !DILocation(line: 103, column: 38, scope: !1590)
!1604 = !DILocation(line: 103, column: 12, scope: !1590)
!1605 = !DILocation(line: 103, column: 10, scope: !1590)
!1606 = !DILocation(line: 104, column: 12, scope: !1590)
!1607 = !DILocation(line: 104, column: 10, scope: !1590)
!1608 = !DILocation(line: 105, column: 9, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 105, column: 2)
!1610 = !DILocation(line: 105, column: 7, scope: !1609)
!1611 = !DILocation(line: 105, column: 14, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 105, column: 2)
!1613 = !DILocation(line: 105, column: 18, scope: !1612)
!1614 = !DILocation(line: 105, column: 16, scope: !1612)
!1615 = !DILocation(line: 105, column: 2, scope: !1609)
!1616 = !DILocation(line: 106, column: 25, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 105, column: 32)
!1618 = !DILocation(line: 106, column: 34, scope: !1617)
!1619 = !DILocation(line: 106, column: 53, scope: !1617)
!1620 = !DILocation(line: 106, column: 9, scope: !1617)
!1621 = !DILocation(line: 106, column: 7, scope: !1617)
!1622 = !DILocation(line: 107, column: 14, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 107, column: 7)
!1624 = !DILocation(line: 107, column: 7, scope: !1623)
!1625 = !DILocation(line: 107, column: 7, scope: !1617)
!1626 = !DILocation(line: 108, column: 4, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 107, column: 20)
!1628 = !DILocation(line: 109, column: 4, scope: !1627)
!1629 = !DILocation(line: 111, column: 2, scope: !1617)
!1630 = !DILocation(line: 105, column: 28, scope: !1612)
!1631 = !DILocation(line: 105, column: 2, scope: !1612)
!1632 = distinct !{!1632, !1615, !1633}
!1633 = !DILocation(line: 111, column: 2, scope: !1609)
!1634 = !DILocation(line: 113, column: 2, scope: !1590)
!1635 = !DILocation(line: 114, column: 1, scope: !1590)
!1636 = distinct !DISubprogram(name: "sfi_acpi_table_parse", scope: !3, file: !3, line: 152, type: !1637, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!156, !172, !172, !172, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!156, !66}
!1642 = !DILocalVariable(name: "signature", arg: 1, scope: !1636, file: !3, line: 152, type: !172)
!1643 = !DILocation(line: 152, column: 32, scope: !1636)
!1644 = !DILocalVariable(name: "oem_id", arg: 2, scope: !1636, file: !3, line: 152, type: !172)
!1645 = !DILocation(line: 152, column: 49, scope: !1636)
!1646 = !DILocalVariable(name: "oem_table_id", arg: 3, scope: !1636, file: !3, line: 152, type: !172)
!1647 = !DILocation(line: 152, column: 63, scope: !1636)
!1648 = !DILocalVariable(name: "handler", arg: 4, scope: !1636, file: !3, line: 153, type: !1639)
!1649 = !DILocation(line: 153, column: 9, scope: !1636)
!1650 = !DILocalVariable(name: "table", scope: !1636, file: !3, line: 155, type: !66)
!1651 = !DILocation(line: 155, column: 28, scope: !1636)
!1652 = !DILocalVariable(name: "key", scope: !1636, file: !3, line: 156, type: !1579)
!1653 = !DILocation(line: 156, column: 23, scope: !1636)
!1654 = !DILocalVariable(name: "ret", scope: !1636, file: !3, line: 157, type: !156)
!1655 = !DILocation(line: 157, column: 6, scope: !1636)
!1656 = !DILocation(line: 159, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 159, column: 6)
!1658 = !DILocation(line: 159, column: 6, scope: !1636)
!1659 = !DILocation(line: 160, column: 3, scope: !1657)
!1660 = !DILocation(line: 162, column: 12, scope: !1636)
!1661 = !DILocation(line: 162, column: 6, scope: !1636)
!1662 = !DILocation(line: 162, column: 10, scope: !1636)
!1663 = !DILocation(line: 163, column: 15, scope: !1636)
!1664 = !DILocation(line: 163, column: 6, scope: !1636)
!1665 = !DILocation(line: 163, column: 13, scope: !1636)
!1666 = !DILocation(line: 164, column: 21, scope: !1636)
!1667 = !DILocation(line: 164, column: 6, scope: !1636)
!1668 = !DILocation(line: 164, column: 19, scope: !1636)
!1669 = !DILocation(line: 166, column: 10, scope: !1636)
!1670 = !DILocation(line: 166, column: 8, scope: !1636)
!1671 = !DILocation(line: 167, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 167, column: 6)
!1673 = !DILocation(line: 167, column: 6, scope: !1636)
!1674 = !DILocation(line: 168, column: 3, scope: !1672)
!1675 = !DILocation(line: 170, column: 8, scope: !1636)
!1676 = !DILocation(line: 170, column: 16, scope: !1636)
!1677 = !DILocation(line: 170, column: 6, scope: !1636)
!1678 = !DILocation(line: 171, column: 21, scope: !1636)
!1679 = !DILocation(line: 171, column: 2, scope: !1636)
!1680 = !DILocation(line: 172, column: 9, scope: !1636)
!1681 = !DILocation(line: 172, column: 2, scope: !1636)
!1682 = !DILocation(line: 173, column: 1, scope: !1636)
!1683 = distinct !DISubprogram(name: "sfi_acpi_get_table", scope: !3, file: !3, line: 127, type: !1684, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!66, !1686}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1687 = !DILocalVariable(name: "key", arg: 1, scope: !1683, file: !3, line: 127, type: !1686)
!1688 = !DILocation(line: 127, column: 75, scope: !1683)
!1689 = !DILocalVariable(name: "tbl_cnt", scope: !1683, file: !3, line: 129, type: !37)
!1690 = !DILocation(line: 129, column: 6, scope: !1683)
!1691 = !DILocalVariable(name: "i", scope: !1683, file: !3, line: 129, type: !37)
!1692 = !DILocation(line: 129, column: 15, scope: !1683)
!1693 = !DILocalVariable(name: "ret", scope: !1683, file: !3, line: 130, type: !65)
!1694 = !DILocation(line: 130, column: 8, scope: !1683)
!1695 = !DILocation(line: 132, column: 12, scope: !1683)
!1696 = !DILocation(line: 132, column: 10, scope: !1683)
!1697 = !DILocation(line: 133, column: 9, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 133, column: 2)
!1699 = !DILocation(line: 133, column: 7, scope: !1698)
!1700 = !DILocation(line: 133, column: 14, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 133, column: 2)
!1702 = !DILocation(line: 133, column: 18, scope: !1701)
!1703 = !DILocation(line: 133, column: 16, scope: !1701)
!1704 = !DILocation(line: 133, column: 2, scope: !1698)
!1705 = !DILocation(line: 134, column: 25, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1701, file: !3, line: 133, column: 32)
!1707 = !DILocation(line: 134, column: 34, scope: !1706)
!1708 = !DILocation(line: 134, column: 53, scope: !1706)
!1709 = !DILocation(line: 134, column: 57, scope: !1706)
!1710 = !DILocation(line: 134, column: 9, scope: !1706)
!1711 = !DILocation(line: 134, column: 7, scope: !1706)
!1712 = !DILocation(line: 135, column: 15, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 135, column: 7)
!1714 = !DILocation(line: 135, column: 8, scope: !1713)
!1715 = !DILocation(line: 135, column: 20, scope: !1713)
!1716 = !DILocation(line: 135, column: 23, scope: !1713)
!1717 = !DILocation(line: 135, column: 7, scope: !1706)
!1718 = !DILocation(line: 136, column: 26, scope: !1713)
!1719 = !DILocation(line: 136, column: 11, scope: !1713)
!1720 = !DILocation(line: 136, column: 4, scope: !1713)
!1721 = !DILocation(line: 137, column: 2, scope: !1706)
!1722 = !DILocation(line: 133, column: 28, scope: !1701)
!1723 = !DILocation(line: 133, column: 2, scope: !1701)
!1724 = distinct !{!1724, !1704, !1725}
!1725 = !DILocation(line: 137, column: 2, scope: !1698)
!1726 = !DILocation(line: 139, column: 2, scope: !1683)
!1727 = !DILocation(line: 140, column: 1, scope: !1683)
!1728 = distinct !DISubprogram(name: "sfi_acpi_put_table", scope: !3, file: !3, line: 142, type: !1729, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !66}
!1731 = !DILocalVariable(name: "table", arg: 1, scope: !1728, file: !3, line: 142, type: !66)
!1732 = !DILocation(line: 142, column: 58, scope: !1728)
!1733 = !DILocation(line: 144, column: 31, scope: !1728)
!1734 = !DILocation(line: 144, column: 16, scope: !1728)
!1735 = !DILocation(line: 144, column: 2, scope: !1728)
!1736 = !DILocation(line: 145, column: 1, scope: !1728)
!1737 = distinct !DISubprogram(name: "sfi_acpi_sysfs_init", scope: !3, file: !3, line: 201, type: !1738, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null}
!1740 = !DILocalVariable(name: "tbl_cnt", scope: !1737, file: !3, line: 203, type: !37)
!1741 = !DILocation(line: 203, column: 6, scope: !1737)
!1742 = !DILocalVariable(name: "i", scope: !1737, file: !3, line: 203, type: !37)
!1743 = !DILocation(line: 203, column: 15, scope: !1737)
!1744 = !DILocalVariable(name: "tbl_attr", scope: !1737, file: !3, line: 204, type: !77)
!1745 = !DILocation(line: 204, column: 25, scope: !1737)
!1746 = !DILocation(line: 206, column: 12, scope: !1737)
!1747 = !DILocation(line: 206, column: 10, scope: !1737)
!1748 = !DILocation(line: 207, column: 9, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 207, column: 2)
!1750 = !DILocation(line: 207, column: 7, scope: !1749)
!1751 = !DILocation(line: 207, column: 14, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 207, column: 2)
!1753 = !DILocation(line: 207, column: 18, scope: !1752)
!1754 = !DILocation(line: 207, column: 16, scope: !1752)
!1755 = !DILocation(line: 207, column: 2, scope: !1749)
!1756 = !DILocation(line: 209, column: 28, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 207, column: 32)
!1758 = !DILocation(line: 209, column: 37, scope: !1757)
!1759 = !DILocation(line: 209, column: 56, scope: !1757)
!1760 = !DILocation(line: 209, column: 4, scope: !1757)
!1761 = !DILocation(line: 208, column: 12, scope: !1757)
!1762 = !DILocation(line: 210, column: 3, scope: !1757)
!1763 = !DILocation(line: 210, column: 13, scope: !1757)
!1764 = !DILocation(line: 210, column: 18, scope: !1757)
!1765 = !DILocation(line: 210, column: 23, scope: !1757)
!1766 = !DILocation(line: 211, column: 2, scope: !1757)
!1767 = !DILocation(line: 207, column: 28, scope: !1752)
!1768 = !DILocation(line: 207, column: 2, scope: !1752)
!1769 = distinct !{!1769, !1755, !1770}
!1770 = !DILocation(line: 211, column: 2, scope: !1749)
!1771 = !DILocation(line: 213, column: 2, scope: !1737)
!1772 = distinct !DISubprogram(name: "sfi_acpi_table_show", scope: !3, file: !3, line: 175, type: !103, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1773 = !DILocalVariable(name: "filp", arg: 1, scope: !1772, file: !3, line: 175, type: !109)
!1774 = !DILocation(line: 175, column: 49, scope: !1772)
!1775 = !DILocalVariable(name: "kobj", arg: 2, scope: !1772, file: !3, line: 175, type: !112)
!1776 = !DILocation(line: 175, column: 71, scope: !1772)
!1777 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !1772, file: !3, line: 176, type: !224)
!1778 = !DILocation(line: 176, column: 33, scope: !1772)
!1779 = !DILocalVariable(name: "buf", arg: 4, scope: !1772, file: !3, line: 176, type: !172)
!1780 = !DILocation(line: 176, column: 49, scope: !1772)
!1781 = !DILocalVariable(name: "offset", arg: 5, scope: !1772, file: !3, line: 177, type: !440)
!1782 = !DILocation(line: 177, column: 18, scope: !1772)
!1783 = !DILocalVariable(name: "count", arg: 6, scope: !1772, file: !3, line: 177, type: !96)
!1784 = !DILocation(line: 177, column: 33, scope: !1772)
!1785 = !DILocalVariable(name: "tbl_attr", scope: !1772, file: !3, line: 179, type: !77)
!1786 = !DILocation(line: 179, column: 25, scope: !1772)
!1787 = !DILocalVariable(name: "__mptr", scope: !1788, file: !3, line: 180, type: !65)
!1788 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 180, column: 6)
!1789 = !DILocation(line: 180, column: 6, scope: !1788)
!1790 = !DILocation(line: 180, column: 6, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 180, column: 6)
!1792 = !DILocalVariable(name: "th", scope: !1772, file: !3, line: 181, type: !66)
!1793 = !DILocation(line: 181, column: 28, scope: !1772)
!1794 = !DILocalVariable(name: "key", scope: !1772, file: !3, line: 182, type: !1579)
!1795 = !DILocation(line: 182, column: 23, scope: !1772)
!1796 = !DILocalVariable(name: "cnt", scope: !1772, file: !3, line: 183, type: !105)
!1797 = !DILocation(line: 183, column: 10, scope: !1772)
!1798 = !DILocation(line: 185, column: 12, scope: !1772)
!1799 = !DILocation(line: 185, column: 22, scope: !1772)
!1800 = !DILocation(line: 185, column: 6, scope: !1772)
!1801 = !DILocation(line: 185, column: 10, scope: !1772)
!1802 = !DILocation(line: 186, column: 6, scope: !1772)
!1803 = !DILocation(line: 186, column: 13, scope: !1772)
!1804 = !DILocation(line: 187, column: 6, scope: !1772)
!1805 = !DILocation(line: 187, column: 19, scope: !1772)
!1806 = !DILocation(line: 189, column: 7, scope: !1772)
!1807 = !DILocation(line: 189, column: 5, scope: !1772)
!1808 = !DILocation(line: 190, column: 7, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 190, column: 6)
!1810 = !DILocation(line: 190, column: 6, scope: !1772)
!1811 = !DILocation(line: 191, column: 3, scope: !1809)
!1812 = !DILocation(line: 193, column: 33, scope: !1772)
!1813 = !DILocation(line: 193, column: 38, scope: !1772)
!1814 = !DILocation(line: 194, column: 6, scope: !1772)
!1815 = !DILocation(line: 194, column: 10, scope: !1772)
!1816 = !DILocation(line: 194, column: 14, scope: !1772)
!1817 = !DILocation(line: 193, column: 9, scope: !1772)
!1818 = !DILocation(line: 193, column: 6, scope: !1772)
!1819 = !DILocation(line: 195, column: 21, scope: !1772)
!1820 = !DILocation(line: 195, column: 2, scope: !1772)
!1821 = !DILocation(line: 197, column: 9, scope: !1772)
!1822 = !DILocation(line: 197, column: 2, scope: !1772)
!1823 = !DILocation(line: 198, column: 1, scope: !1772)
!1824 = distinct !DISubprogram(name: "IS_ERR", scope: !1825, file: !1825, line: 34, type: !1826, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1825 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!241, !251}
!1828 = !DILocalVariable(name: "ptr", arg: 1, scope: !1824, file: !1825, line: 34, type: !251)
!1829 = !DILocation(line: 34, column: 60, scope: !1824)
!1830 = !DILocation(line: 36, column: 9, scope: !1824)
!1831 = !DILocation(line: 36, column: 2, scope: !1824)
!1832 = distinct !DISubprogram(name: "disable_sfi", scope: !69, file: !69, line: 184, type: !1738, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1833 = !DILocation(line: 186, column: 15, scope: !1832)
!1834 = !DILocation(line: 187, column: 1, scope: !1832)
!1835 = distinct !DISubprogram(name: "sfi_to_acpi_th", scope: !3, file: !3, line: 86, type: !1836, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!66, !67}
!1838 = !DILocalVariable(name: "th", arg: 1, scope: !1835, file: !3, line: 87, type: !67)
!1839 = !DILocation(line: 87, column: 30, scope: !1835)
!1840 = !DILocation(line: 89, column: 37, scope: !1835)
!1841 = !DILocation(line: 89, column: 9, scope: !1835)
!1842 = !DILocation(line: 89, column: 2, scope: !1835)
!1843 = distinct !DISubprogram(name: "acpi_to_sfi_th", scope: !3, file: !3, line: 80, type: !1844, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !144)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!67, !66}
!1846 = !DILocalVariable(name: "th", arg: 1, scope: !1843, file: !3, line: 81, type: !66)
!1847 = !DILocation(line: 81, column: 31, scope: !1843)
!1848 = !DILocation(line: 83, column: 36, scope: !1843)
!1849 = !DILocation(line: 83, column: 9, scope: !1843)
!1850 = !DILocation(line: 83, column: 2, scope: !1843)
