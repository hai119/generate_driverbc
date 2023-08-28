; ModuleID = '../bcout/drivers/acpi/acpica/utaddress.llvm.bc'
source_filename = "drivers/acpi/acpica/utaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_address_range = type { %struct.acpi_address_range*, %struct.acpi_namespace_node*, i64, i64 }
%struct.acpi_namespace_node = type { %union.acpi_operand_object*, i8, i8, i16, %union.acpi_name_union, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i16 }
%union.acpi_operand_object = type { %struct.acpi_object_mutex }
%struct.acpi_object_mutex = type { %union.acpi_operand_object*, i8, i8, i16, i8, i8, i16, i8*, i64, %struct.acpi_thread_state*, %union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8 }
%struct.acpi_thread_state = type { i8*, i8, i8, i16, i16, i8, %struct.acpi_walk_state*, %union.acpi_operand_object*, i64 }
%struct.acpi_walk_state = type { %struct.acpi_walk_state*, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8*, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x %union.acpi_operand_object*], %union.acpi_operand_object**, i8*, %union.acpi_operand_object**, %union.acpi_generic_state*, %struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, %union.acpi_parse_object*, %union.acpi_operand_object*, %struct.acpi_namespace_node*, i8*, %union.acpi_parse_object*, %struct.acpi_opcode_info*, %union.acpi_parse_object*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_operand_object*, %union.acpi_generic_state*, %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.acpi_thread_state*, i32 (%struct.acpi_walk_state*, %union.acpi_parse_object**)*, {}* }
%struct.acpi_parse_state = type { i8*, i8*, i8*, i8*, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_generic_state*, %union.acpi_parse_object*, i32 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%union.acpi_generic_state = type { %struct.acpi_result_values }
%struct.acpi_result_values = type { i8*, i8, i8, i16, i16, [8 x %union.acpi_operand_object*] }
%union.acpi_parse_object = type { %struct.acpi_parse_obj_asl }
%struct.acpi_parse_obj_asl = type { %union.acpi_parse_object*, i8, i8, i16, i8*, %union.acpi_parse_object*, %struct.acpi_namespace_node*, %union.acpi_parse_value, i8, %union.acpi_parse_object*, %union.acpi_parse_object*, i8*, i8, i8*, i8*, i8*, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, [20 x i8] }
%union.acpi_parse_value = type { i64 }
%union.acpi_name_union = type { i32 }
%struct.kmem_cache = type opaque
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.0, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.2 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.2 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.23, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i32 }
%struct.sched_class = type opaque
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, %struct.sched_statistics }
%struct.load_weight = type { i64, i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
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
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.4, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.4 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.15 }
%struct.anon.15 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.22, i32, [12 x i8] }
%union.anon.22 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.23 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.24, %union.anon.37, %struct.atomic_t, [8 x i8] }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.37 = type { %struct.atomic_t }
%struct.vm_struct = type opaque
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque

@acpi_gbl_address_range_list = external dso_local global [2 x %struct.acpi_address_range*], align 16
@_acpi_module_name = internal constant [10 x i8] c"utaddress\00", align 1, !dbg !0
@.str = private unnamed_addr constant [90 x i8] c"%s range 0x%8.8X%8.8X-0x%8.8X%8.8X conflicts with OpRegion 0x%8.8X%8.8X-0x%8.8X%8.8X (%s)\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_add_address_range(i8 zeroext %space_id, i64 %address, i32 %length, %struct.acpi_namespace_node* %region_node) #0 !dbg !44 {
entry:
  %retval = alloca i32, align 4
  %space_id.addr = alloca i8, align 1
  %address.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %region_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %range_info = alloca %struct.acpi_address_range*, align 8
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !808, metadata !DIExpression()), !dbg !809
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !810, metadata !DIExpression()), !dbg !811
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !812, metadata !DIExpression()), !dbg !813
  store %struct.acpi_namespace_node* %region_node, %struct.acpi_namespace_node** %region_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %region_node.addr, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata %struct.acpi_address_range** %range_info, metadata !816, metadata !DIExpression()), !dbg !824
  %0 = load i8, i8* %space_id.addr, align 1, !dbg !825
  %conv = zext i8 %0 to i32, !dbg !825
  %cmp = icmp ne i32 %conv, 0, !dbg !827
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !828

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %space_id.addr, align 1, !dbg !829
  %conv2 = zext i8 %1 to i32, !dbg !829
  %cmp3 = icmp ne i32 %conv2, 1, !dbg !830
  br i1 %cmp3, label %if.then, label %if.end, !dbg !831

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !832
  br label %return, !dbg !832

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call i8* @acpi_os_allocate(i64 32) #8, !dbg !834
  %2 = bitcast i8* %call to %struct.acpi_address_range*, !dbg !834
  store %struct.acpi_address_range* %2, %struct.acpi_address_range** %range_info, align 8, !dbg !835
  %3 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !836
  %tobool = icmp ne %struct.acpi_address_range* %3, null, !dbg !836
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !838

if.then5:                                         ; preds = %if.end
  store i32 4, i32* %retval, align 4, !dbg !839
  br label %return, !dbg !839

if.end6:                                          ; preds = %if.end
  %4 = load i64, i64* %address.addr, align 8, !dbg !841
  %5 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !842
  %start_address = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %5, i32 0, i32 2, !dbg !843
  store i64 %4, i64* %start_address, align 8, !dbg !844
  %6 = load i64, i64* %address.addr, align 8, !dbg !845
  %7 = load i32, i32* %length.addr, align 4, !dbg !846
  %conv7 = zext i32 %7 to i64, !dbg !846
  %add = add i64 %6, %conv7, !dbg !847
  %sub = sub i64 %add, 1, !dbg !848
  %8 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !849
  %end_address = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %8, i32 0, i32 3, !dbg !850
  store i64 %sub, i64* %end_address, align 8, !dbg !851
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node.addr, align 8, !dbg !852
  %10 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !853
  %region_node8 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %10, i32 0, i32 1, !dbg !854
  store %struct.acpi_namespace_node* %9, %struct.acpi_namespace_node** %region_node8, align 8, !dbg !855
  %11 = load i8, i8* %space_id.addr, align 1, !dbg !856
  %idxprom = zext i8 %11 to i64, !dbg !857
  %arrayidx = getelementptr [2 x %struct.acpi_address_range*], [2 x %struct.acpi_address_range*]* @acpi_gbl_address_range_list, i64 0, i64 %idxprom, !dbg !857
  %12 = load %struct.acpi_address_range*, %struct.acpi_address_range** %arrayidx, align 8, !dbg !857
  %13 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !858
  %next = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %13, i32 0, i32 0, !dbg !859
  store %struct.acpi_address_range* %12, %struct.acpi_address_range** %next, align 8, !dbg !860
  %14 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !861
  %15 = load i8, i8* %space_id.addr, align 1, !dbg !862
  %idxprom9 = zext i8 %15 to i64, !dbg !863
  %arrayidx10 = getelementptr [2 x %struct.acpi_address_range*], [2 x %struct.acpi_address_range*]* @acpi_gbl_address_range_list, i64 0, i64 %idxprom9, !dbg !863
  store %struct.acpi_address_range* %14, %struct.acpi_address_range** %arrayidx10, align 8, !dbg !864
  store i32 0, i32* %retval, align 4, !dbg !865
  br label %return, !dbg !865

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !866
  ret i32 %16, !dbg !866
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !867 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !871, metadata !DIExpression()), !dbg !882
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !890, metadata !DIExpression()), !dbg !891
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !892, metadata !DIExpression()), !dbg !893
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !894, metadata !DIExpression()), !dbg !895
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !896, metadata !DIExpression()), !dbg !900
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !902, metadata !DIExpression()), !dbg !906
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !908, metadata !DIExpression()), !dbg !912
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !917, metadata !DIExpression()), !dbg !918
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !919, metadata !DIExpression()), !dbg !920
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !921, metadata !DIExpression()), !dbg !922
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !923, metadata !DIExpression()), !dbg !924
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !925, metadata !DIExpression()), !dbg !926
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !927, metadata !DIExpression()), !dbg !928
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !929, metadata !DIExpression()), !dbg !930
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !931, metadata !DIExpression()), !dbg !932
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !933, metadata !DIExpression()), !dbg !939
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !943, metadata !DIExpression()), !dbg !944
  %0 = load i64, i64* %size.addr, align 8, !dbg !945
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !946, metadata !DIExpression()), !dbg !947
  br label %do.body, !dbg !947

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !948, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !952, metadata !DIExpression()), !dbg !951
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !951
  %conv = zext i1 %cmp to i32, !dbg !951
  store i32 1, i32* %tmp, align 4, !dbg !951
  %1 = load i32, i32* %tmp, align 4, !dbg !951
  %call = call i64 @arch_local_save_flags() #8, !dbg !953
  store i64 %call, i64* %_flags, align 8, !dbg !953
  br label %do.end, !dbg !953

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !954, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !957, metadata !DIExpression()), !dbg !956
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !956
  %conv6 = zext i1 %cmp5 to i32, !dbg !956
  store i32 1, i32* %tmp7, align 4, !dbg !956
  %2 = load i32, i32* %tmp7, align 4, !dbg !956
  %3 = load i64, i64* %_flags, align 8, !dbg !958
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !959
  %and.i = and i64 %4, 512, !dbg !960
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !961
  %lnot.i = xor i1 %tobool.i, true, !dbg !961
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !961
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !958
  %5 = load i32, i32* %tmp8, align 4, !dbg !958
  store i32 %5, i32* %tmp1, align 4, !dbg !953
  %6 = load i32, i32* %tmp1, align 4, !dbg !947
  %tobool = icmp ne i32 %6, 0, !dbg !962
  %7 = zext i1 %tobool to i64, !dbg !962
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !962
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !963
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #7, !dbg !964
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !965

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !966
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !967
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !968

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !969
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !970
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !971
  %call.i.i = call i32 @get_order(i64 %13) #9, !dbg !972
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !926
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !973
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !974
  %16 = load i32, i32* %order.i.i, align 4, !dbg !975
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !976
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !977
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !978
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #10, !dbg !979
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !979
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !979
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !979
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !979
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !980
  br label %kmalloc.exit, !dbg !980

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !981
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !982
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !982
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !984

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !985
  br label %kmalloc_index.exit.i, !dbg !985

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !986
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !988
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !989

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !990
  br label %kmalloc_index.exit.i, !dbg !990

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !991
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !993
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !994

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !995
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !996
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !997

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !998
  br label %kmalloc_index.exit.i, !dbg !998

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !999
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !1001
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !1002

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1003
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !1004
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !1005

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !1006
  br label %kmalloc_index.exit.i, !dbg !1006

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1007
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !1009
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !1010

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !1011
  br label %kmalloc_index.exit.i, !dbg !1011

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1012
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !1014
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !1015

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !1016
  br label %kmalloc_index.exit.i, !dbg !1016

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1017
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !1019
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !1020

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !1021
  br label %kmalloc_index.exit.i, !dbg !1021

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1022
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !1024
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !1025

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !1026
  br label %kmalloc_index.exit.i, !dbg !1026

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1027
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !1029
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !1030

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !1031
  br label %kmalloc_index.exit.i, !dbg !1031

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1032
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !1034
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !1035

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !1036
  br label %kmalloc_index.exit.i, !dbg !1036

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1037
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !1039
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !1040

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !1041
  br label %kmalloc_index.exit.i, !dbg !1041

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1042
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !1044
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !1045

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !1046
  br label %kmalloc_index.exit.i, !dbg !1046

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1047
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !1049
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !1050

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !1051
  br label %kmalloc_index.exit.i, !dbg !1051

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1052
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !1054
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !1055

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !1056
  br label %kmalloc_index.exit.i, !dbg !1056

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1057
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !1059
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !1060

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !1061
  br label %kmalloc_index.exit.i, !dbg !1061

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1062
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !1064
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !1065

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !1066
  br label %kmalloc_index.exit.i, !dbg !1066

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1067
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !1069
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !1070

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !1071
  br label %kmalloc_index.exit.i, !dbg !1071

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1072
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !1074
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !1075

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !1076
  br label %kmalloc_index.exit.i, !dbg !1076

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1077
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !1079
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !1080

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !1081
  br label %kmalloc_index.exit.i, !dbg !1081

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1082
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !1084
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !1085

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !1086
  br label %kmalloc_index.exit.i, !dbg !1086

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1087
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !1089
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !1090

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !1091
  br label %kmalloc_index.exit.i, !dbg !1091

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1092
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !1094
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !1095

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !1096
  br label %kmalloc_index.exit.i, !dbg !1096

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1097
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !1099
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !1100

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !1101
  br label %kmalloc_index.exit.i, !dbg !1101

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1102
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !1104
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !1105

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !1106
  br label %kmalloc_index.exit.i, !dbg !1106

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1107
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !1109
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !1110

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !1111
  br label %kmalloc_index.exit.i, !dbg !1111

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1112
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !1114
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !1115

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !1116
  br label %kmalloc_index.exit.i, !dbg !1116

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1117
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !1119
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !1120

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !1121
  br label %kmalloc_index.exit.i, !dbg !1121

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !1122
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !1124
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !1125

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !1126
  br label %kmalloc_index.exit.i, !dbg !1126

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !1127, !srcloc !1130
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !1131, !srcloc !1134
  unreachable, !dbg !1135

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !1136
  store i32 %51, i32* %index.i, align 4, !dbg !1137
  %52 = load i32, i32* %index.i, align 4, !dbg !1138
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !1138
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !1140

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !1141
  br label %kmalloc.exit, !dbg !1141

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !1142
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1143
  %and.i.i = and i32 %54, 17, !dbg !1143
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !1143
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !1143
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !1143
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !1143
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !1145

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !1146
  br label %kmalloc_type.exit.i, !dbg !1146

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !1147
  %and2.i.i = and i32 %55, 1, !dbg !1148
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !1147
  %56 = zext i1 %tobool3.i.i to i64, !dbg !1147
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !1147
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !1149
  br label %kmalloc_type.exit.i, !dbg !1149

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !1150
  %idxprom.i = zext i32 %57 to i64, !dbg !1151
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !1151
  %58 = load i32, i32* %index.i, align 4, !dbg !1152
  %idxprom6.i = zext i32 %58 to i64, !dbg !1151
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !1151
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !1151
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !1153
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !1154
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1155
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1156
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #10, !dbg !1157
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !1157
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !1157
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !1157
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !1157
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !895
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !1158
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !1159
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !1160
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !1161
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #10, !dbg !1162
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !1163
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !1164
  store i8* %68, i8** %retval.i, align 8, !dbg !1165
  br label %kmalloc.exit, !dbg !1165

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !1166
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !1167
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #10, !dbg !1168
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !1168
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !1168
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !1168
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !1168
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !1169
  br label %kmalloc.exit, !dbg !1169

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !1170
  ret i8* %71, !dbg !1171
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_remove_address_range(i8 zeroext %space_id, %struct.acpi_namespace_node* %region_node) #0 !dbg !1172 {
entry:
  %space_id.addr = alloca i8, align 1
  %region_node.addr = alloca %struct.acpi_namespace_node*, align 8
  %range_info = alloca %struct.acpi_address_range*, align 8
  %prev = alloca %struct.acpi_address_range*, align 8
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !1175, metadata !DIExpression()), !dbg !1176
  store %struct.acpi_namespace_node* %region_node, %struct.acpi_namespace_node** %region_node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_namespace_node** %region_node.addr, metadata !1177, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.declare(metadata %struct.acpi_address_range** %range_info, metadata !1179, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.declare(metadata %struct.acpi_address_range** %prev, metadata !1181, metadata !DIExpression()), !dbg !1182
  %0 = load i8, i8* %space_id.addr, align 1, !dbg !1183
  %conv = zext i8 %0 to i32, !dbg !1183
  %cmp = icmp ne i32 %conv, 0, !dbg !1185
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1186

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %space_id.addr, align 1, !dbg !1187
  %conv2 = zext i8 %1 to i32, !dbg !1187
  %cmp3 = icmp ne i32 %conv2, 1, !dbg !1188
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1189

if.then:                                          ; preds = %land.lhs.true
  br label %return, !dbg !1190

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8, i8* %space_id.addr, align 1, !dbg !1192
  %idxprom = zext i8 %2 to i64, !dbg !1193
  %arrayidx = getelementptr [2 x %struct.acpi_address_range*], [2 x %struct.acpi_address_range*]* @acpi_gbl_address_range_list, i64 0, i64 %idxprom, !dbg !1193
  %3 = load %struct.acpi_address_range*, %struct.acpi_address_range** %arrayidx, align 8, !dbg !1193
  store %struct.acpi_address_range* %3, %struct.acpi_address_range** %prev, align 8, !dbg !1194
  store %struct.acpi_address_range* %3, %struct.acpi_address_range** %range_info, align 8, !dbg !1195
  br label %while.cond, !dbg !1196

while.cond:                                       ; preds = %if.end17, %if.end
  %4 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1197
  %tobool = icmp ne %struct.acpi_address_range* %4, null, !dbg !1196
  br i1 %tobool, label %while.body, label %while.end, !dbg !1196

while.body:                                       ; preds = %while.cond
  %5 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1198
  %region_node5 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %5, i32 0, i32 1, !dbg !1201
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node5, align 8, !dbg !1201
  %7 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node.addr, align 8, !dbg !1202
  %cmp6 = icmp eq %struct.acpi_namespace_node* %6, %7, !dbg !1203
  br i1 %cmp6, label %if.then8, label %if.end17, !dbg !1204

if.then8:                                         ; preds = %while.body
  %8 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1205
  %9 = load %struct.acpi_address_range*, %struct.acpi_address_range** %prev, align 8, !dbg !1208
  %cmp9 = icmp eq %struct.acpi_address_range* %8, %9, !dbg !1209
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !1210

if.then11:                                        ; preds = %if.then8
  %10 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1211
  %next = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %10, i32 0, i32 0, !dbg !1213
  %11 = load %struct.acpi_address_range*, %struct.acpi_address_range** %next, align 8, !dbg !1213
  %12 = load i8, i8* %space_id.addr, align 1, !dbg !1214
  %idxprom12 = zext i8 %12 to i64, !dbg !1215
  %arrayidx13 = getelementptr [2 x %struct.acpi_address_range*], [2 x %struct.acpi_address_range*]* @acpi_gbl_address_range_list, i64 0, i64 %idxprom12, !dbg !1215
  store %struct.acpi_address_range* %11, %struct.acpi_address_range** %arrayidx13, align 8, !dbg !1216
  br label %if.end16, !dbg !1217

if.else:                                          ; preds = %if.then8
  %13 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1218
  %next14 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %13, i32 0, i32 0, !dbg !1220
  %14 = load %struct.acpi_address_range*, %struct.acpi_address_range** %next14, align 8, !dbg !1220
  %15 = load %struct.acpi_address_range*, %struct.acpi_address_range** %prev, align 8, !dbg !1221
  %next15 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %15, i32 0, i32 0, !dbg !1222
  store %struct.acpi_address_range* %14, %struct.acpi_address_range** %next15, align 8, !dbg !1223
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %16 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1224
  %17 = bitcast %struct.acpi_address_range* %16 to i8*, !dbg !1224
  call void @acpi_os_free(i8* %17) #8, !dbg !1224
  br label %return, !dbg !1225

if.end17:                                         ; preds = %while.body
  %18 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1226
  store %struct.acpi_address_range* %18, %struct.acpi_address_range** %prev, align 8, !dbg !1227
  %19 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1228
  %next18 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %19, i32 0, i32 0, !dbg !1229
  %20 = load %struct.acpi_address_range*, %struct.acpi_address_range** %next18, align 8, !dbg !1229
  store %struct.acpi_address_range* %20, %struct.acpi_address_range** %range_info, align 8, !dbg !1230
  br label %while.cond, !dbg !1196, !llvm.loop !1231

while.end:                                        ; preds = %while.cond
  br label %return, !dbg !1233

return:                                           ; preds = %while.end, %if.end16, %if.then
  ret void, !dbg !1234
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !1235 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !1238, metadata !DIExpression()), !dbg !1239
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !1240
  call void @kfree(i8* %0) #8, !dbg !1241
  ret void, !dbg !1242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_ut_check_address_range(i8 zeroext %space_id, i64 %address, i32 %length, i8 zeroext %warn) #0 !dbg !1243 {
entry:
  %retval = alloca i32, align 4
  %space_id.addr = alloca i8, align 1
  %address.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  %warn.addr = alloca i8, align 1
  %range_info = alloca %struct.acpi_address_range*, align 8
  %end_address = alloca i64, align 8
  %pathname = alloca i8*, align 8
  %overlap_count = alloca i32, align 4
  store i8 %space_id, i8* %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %space_id.addr, metadata !1246, metadata !DIExpression()), !dbg !1247
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !1248, metadata !DIExpression()), !dbg !1249
  store i32 %length, i32* %length.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !1250, metadata !DIExpression()), !dbg !1251
  store i8 %warn, i8* %warn.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %warn.addr, metadata !1252, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.declare(metadata %struct.acpi_address_range** %range_info, metadata !1254, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.declare(metadata i64* %end_address, metadata !1256, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.declare(metadata i8** %pathname, metadata !1258, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.declare(metadata i32* %overlap_count, metadata !1260, metadata !DIExpression()), !dbg !1261
  store i32 0, i32* %overlap_count, align 4, !dbg !1261
  %0 = load i8, i8* %space_id.addr, align 1, !dbg !1262
  %conv = zext i8 %0 to i32, !dbg !1262
  %cmp = icmp ne i32 %conv, 0, !dbg !1264
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1265

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %space_id.addr, align 1, !dbg !1266
  %conv2 = zext i8 %1 to i32, !dbg !1266
  %cmp3 = icmp ne i32 %conv2, 1, !dbg !1267
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1268

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !1269
  br label %return, !dbg !1269

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8, i8* %space_id.addr, align 1, !dbg !1271
  %idxprom = zext i8 %2 to i64, !dbg !1272
  %arrayidx = getelementptr [2 x %struct.acpi_address_range*], [2 x %struct.acpi_address_range*]* @acpi_gbl_address_range_list, i64 0, i64 %idxprom, !dbg !1272
  %3 = load %struct.acpi_address_range*, %struct.acpi_address_range** %arrayidx, align 8, !dbg !1272
  store %struct.acpi_address_range* %3, %struct.acpi_address_range** %range_info, align 8, !dbg !1273
  %4 = load i64, i64* %address.addr, align 8, !dbg !1274
  %5 = load i32, i32* %length.addr, align 4, !dbg !1275
  %conv5 = zext i32 %5 to i64, !dbg !1275
  %add = add i64 %4, %conv5, !dbg !1276
  %sub = sub i64 %add, 1, !dbg !1277
  store i64 %sub, i64* %end_address, align 8, !dbg !1278
  br label %while.cond, !dbg !1279

while.cond:                                       ; preds = %if.end32, %if.end
  %6 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1280
  %tobool = icmp ne %struct.acpi_address_range* %6, null, !dbg !1279
  br i1 %tobool, label %while.body, label %while.end, !dbg !1279

while.body:                                       ; preds = %while.cond
  %7 = load i64, i64* %address.addr, align 8, !dbg !1281
  %8 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1284
  %end_address6 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %8, i32 0, i32 3, !dbg !1285
  %9 = load i64, i64* %end_address6, align 8, !dbg !1285
  %cmp7 = icmp ule i64 %7, %9, !dbg !1286
  br i1 %cmp7, label %land.lhs.true9, label %if.end32, !dbg !1287

land.lhs.true9:                                   ; preds = %while.body
  %10 = load i64, i64* %end_address, align 8, !dbg !1288
  %11 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1289
  %start_address = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %11, i32 0, i32 2, !dbg !1290
  %12 = load i64, i64* %start_address, align 8, !dbg !1290
  %cmp10 = icmp uge i64 %10, %12, !dbg !1291
  br i1 %cmp10, label %if.then12, label %if.end32, !dbg !1292

if.then12:                                        ; preds = %land.lhs.true9
  %13 = load i32, i32* %overlap_count, align 4, !dbg !1293
  %inc = add i32 %13, 1, !dbg !1293
  store i32 %inc, i32* %overlap_count, align 4, !dbg !1293
  %14 = load i8, i8* %warn.addr, align 1, !dbg !1295
  %tobool13 = icmp ne i8 %14, 0, !dbg !1295
  br i1 %tobool13, label %if.then14, label %if.end31, !dbg !1297

if.then14:                                        ; preds = %if.then12
  %15 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1298
  %region_node = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %15, i32 0, i32 1, !dbg !1300
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %region_node, align 8, !dbg !1300
  %call = call i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node* %16, i8 zeroext 1) #8, !dbg !1301
  store i8* %call, i8** %pathname, align 8, !dbg !1302
  %17 = load i8, i8* %space_id.addr, align 1, !dbg !1303
  %call15 = call i8* @acpi_ut_get_region_name(i8 zeroext %17) #8, !dbg !1303
  %18 = load i64, i64* %address.addr, align 8, !dbg !1303
  %shr = lshr i64 %18, 32, !dbg !1303
  %conv16 = trunc i64 %shr to i32, !dbg !1303
  %19 = load i64, i64* %address.addr, align 8, !dbg !1303
  %conv17 = trunc i64 %19 to i32, !dbg !1303
  %20 = load i64, i64* %end_address, align 8, !dbg !1303
  %shr18 = lshr i64 %20, 32, !dbg !1303
  %conv19 = trunc i64 %shr18 to i32, !dbg !1303
  %21 = load i64, i64* %end_address, align 8, !dbg !1303
  %conv20 = trunc i64 %21 to i32, !dbg !1303
  %22 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1303
  %start_address21 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %22, i32 0, i32 2, !dbg !1303
  %23 = load i64, i64* %start_address21, align 8, !dbg !1303
  %shr22 = lshr i64 %23, 32, !dbg !1303
  %conv23 = trunc i64 %shr22 to i32, !dbg !1303
  %24 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1303
  %start_address24 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %24, i32 0, i32 2, !dbg !1303
  %25 = load i64, i64* %start_address24, align 8, !dbg !1303
  %conv25 = trunc i64 %25 to i32, !dbg !1303
  %26 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1303
  %end_address26 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %26, i32 0, i32 3, !dbg !1303
  %27 = load i64, i64* %end_address26, align 8, !dbg !1303
  %shr27 = lshr i64 %27, 32, !dbg !1303
  %conv28 = trunc i64 %shr27 to i32, !dbg !1303
  %28 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1303
  %end_address29 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %28, i32 0, i32 3, !dbg !1303
  %29 = load i64, i64* %end_address29, align 8, !dbg !1303
  %conv30 = trunc i64 %29 to i32, !dbg !1303
  %30 = load i8*, i8** %pathname, align 8, !dbg !1303
  call void (i8*, i32, i8*, ...) @acpi_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @_acpi_module_name, i64 0, i64 0), i32 204, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i8* %call15, i32 %conv16, i32 %conv17, i32 %conv19, i32 %conv20, i32 %conv23, i32 %conv25, i32 %conv28, i32 %conv30, i8* %30) #8, !dbg !1303
  %31 = load i8*, i8** %pathname, align 8, !dbg !1304
  call void @acpi_os_free(i8* %31) #8, !dbg !1304
  br label %if.end31, !dbg !1305

if.end31:                                         ; preds = %if.then14, %if.then12
  br label %if.end32, !dbg !1306

if.end32:                                         ; preds = %if.end31, %land.lhs.true9, %while.body
  %32 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1307
  %next = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %32, i32 0, i32 0, !dbg !1308
  %33 = load %struct.acpi_address_range*, %struct.acpi_address_range** %next, align 8, !dbg !1308
  store %struct.acpi_address_range* %33, %struct.acpi_address_range** %range_info, align 8, !dbg !1309
  br label %while.cond, !dbg !1279, !llvm.loop !1310

while.end:                                        ; preds = %while.cond
  %34 = load i32, i32* %overlap_count, align 4, !dbg !1312
  store i32 %34, i32* %retval, align 4, !dbg !1312
  br label %return, !dbg !1312

return:                                           ; preds = %while.end, %if.then
  %35 = load i32, i32* %retval, align 4, !dbg !1313
  ret i32 %35, !dbg !1313
}

; Function Attrs: noredzone
declare dso_local i8* @acpi_ns_get_normalized_pathname(%struct.acpi_namespace_node*, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local void @acpi_warning(i8*, i32, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @acpi_ut_get_region_name(i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @acpi_ut_delete_address_lists() #0 !dbg !1314 {
entry:
  %next = alloca %struct.acpi_address_range*, align 8
  %range_info = alloca %struct.acpi_address_range*, align 8
  %i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct.acpi_address_range** %next, metadata !1317, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.declare(metadata %struct.acpi_address_range** %range_info, metadata !1319, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1321, metadata !DIExpression()), !dbg !1322
  store i32 0, i32* %i, align 4, !dbg !1323
  br label %for.cond, !dbg !1325

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1326
  %cmp = icmp slt i32 %0, 2, !dbg !1328
  br i1 %cmp, label %for.body, label %for.end, !dbg !1329

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !1330
  %idxprom = sext i32 %1 to i64, !dbg !1332
  %arrayidx = getelementptr [2 x %struct.acpi_address_range*], [2 x %struct.acpi_address_range*]* @acpi_gbl_address_range_list, i64 0, i64 %idxprom, !dbg !1332
  %2 = load %struct.acpi_address_range*, %struct.acpi_address_range** %arrayidx, align 8, !dbg !1332
  store %struct.acpi_address_range* %2, %struct.acpi_address_range** %next, align 8, !dbg !1333
  br label %while.cond, !dbg !1334

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load %struct.acpi_address_range*, %struct.acpi_address_range** %next, align 8, !dbg !1335
  %tobool = icmp ne %struct.acpi_address_range* %3, null, !dbg !1334
  br i1 %tobool, label %while.body, label %while.end, !dbg !1334

while.body:                                       ; preds = %while.cond
  %4 = load %struct.acpi_address_range*, %struct.acpi_address_range** %next, align 8, !dbg !1336
  store %struct.acpi_address_range* %4, %struct.acpi_address_range** %range_info, align 8, !dbg !1338
  %5 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1339
  %next1 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %5, i32 0, i32 0, !dbg !1340
  %6 = load %struct.acpi_address_range*, %struct.acpi_address_range** %next1, align 8, !dbg !1340
  store %struct.acpi_address_range* %6, %struct.acpi_address_range** %next, align 8, !dbg !1341
  %7 = load %struct.acpi_address_range*, %struct.acpi_address_range** %range_info, align 8, !dbg !1342
  %8 = bitcast %struct.acpi_address_range* %7 to i8*, !dbg !1342
  call void @acpi_os_free(i8* %8) #8, !dbg !1342
  br label %while.cond, !dbg !1334, !llvm.loop !1343

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %i, align 4, !dbg !1345
  %idxprom2 = sext i32 %9 to i64, !dbg !1346
  %arrayidx3 = getelementptr [2 x %struct.acpi_address_range*], [2 x %struct.acpi_address_range*]* @acpi_gbl_address_range_list, i64 0, i64 %idxprom2, !dbg !1346
  store %struct.acpi_address_range* null, %struct.acpi_address_range** %arrayidx3, align 8, !dbg !1347
  br label %for.inc, !dbg !1348

for.inc:                                          ; preds = %while.end
  %10 = load i32, i32* %i, align 4, !dbg !1349
  %inc = add i32 %10, 1, !dbg !1349
  store i32 %inc, i32* %i, align 4, !dbg !1349
  br label %for.cond, !dbg !1350, !llvm.loop !1351

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1353
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !1354 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1358, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1361, metadata !DIExpression()), !dbg !1360
  %0 = load i64, i64* %__edi, align 8, !dbg !1360
  store i64 %0, i64* %__edi, align 8, !dbg !1360
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1362, metadata !DIExpression()), !dbg !1360
  %1 = load i64, i64* %__esi, align 8, !dbg !1360
  store i64 %1, i64* %__esi, align 8, !dbg !1360
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1363, metadata !DIExpression()), !dbg !1360
  %2 = load i64, i64* %__edx, align 8, !dbg !1360
  store i64 %2, i64* %__edx, align 8, !dbg !1360
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1364, metadata !DIExpression()), !dbg !1360
  %3 = load i64, i64* %__ecx, align 8, !dbg !1360
  store i64 %3, i64* %__ecx, align 8, !dbg !1360
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1365, metadata !DIExpression()), !dbg !1360
  %4 = load i64, i64* %__eax, align 8, !dbg !1360
  store i64 %4, i64* %__eax, align 8, !dbg !1360
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !1360
  %6 = call i64 @llvm.read_register.i64(metadata !38), !dbg !1366
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !1366, !srcloc !1369
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !1366
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !1366
  store i64 %asmresult, i64* %__eax, align 8, !dbg !1366
  call void @llvm.write_register.i64(metadata !38, i64 %asmresult1), !dbg !1366
  %8 = load i64, i64* %__eax, align 8, !dbg !1366
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1370, metadata !DIExpression()), !dbg !1372
  store i64 -1, i64* %__mask, align 8, !dbg !1372
  %9 = load i64, i64* %__mask, align 8, !dbg !1372
  store i64 %9, i64* %tmp, align 8, !dbg !1372
  %10 = load i64, i64* %tmp, align 8, !dbg !1372
  %and = and i64 %8, %10, !dbg !1366
  store i64 %and, i64* %__ret, align 8, !dbg !1366
  %11 = load i64, i64* %__ret, align 8, !dbg !1360
  store i64 %11, i64* %tmp2, align 8, !dbg !1373
  %12 = load i64, i64* %tmp2, align 8, !dbg !1360
  ret i64 %12, !dbg !1374
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !1375 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1377, metadata !DIExpression()), !dbg !1382
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1384, metadata !DIExpression()), !dbg !1385
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1386, metadata !DIExpression()), !dbg !1387
  %0 = load i64, i64* %size.addr, align 8, !dbg !1388
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1390
  br i1 %1, label %if.then, label %if.end447, !dbg !1391

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !1392
  %tobool = icmp ne i64 %2, 0, !dbg !1392
  br i1 %tobool, label %if.end, label %if.then1, !dbg !1395

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !1396
  br label %return, !dbg !1396

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !1397
  %cmp = icmp ult i64 %3, 4096, !dbg !1399
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1400

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !1401
  br label %return, !dbg !1401

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub = sub i64 %4, 1, !dbg !1402
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1402
  br i1 %5, label %cond.true, label %cond.false442, !dbg !1402

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub4 = sub i64 %6, 1, !dbg !1402
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !1402
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !1402

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub6 = sub i64 %8, 1, !dbg !1402
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !1402
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !1402

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !1402

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub9 = sub i64 %9, 1, !dbg !1402
  %and = and i64 %sub9, -9223372036854775808, !dbg !1402
  %tobool10 = icmp ne i64 %and, 0, !dbg !1402
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !1402

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !1402

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub13 = sub i64 %10, 1, !dbg !1402
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !1402
  %tobool15 = icmp ne i64 %and14, 0, !dbg !1402
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !1402

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !1402

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub18 = sub i64 %11, 1, !dbg !1402
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !1402
  %tobool20 = icmp ne i64 %and19, 0, !dbg !1402
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !1402

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !1402

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub23 = sub i64 %12, 1, !dbg !1402
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !1402
  %tobool25 = icmp ne i64 %and24, 0, !dbg !1402
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !1402

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !1402

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub28 = sub i64 %13, 1, !dbg !1402
  %and29 = and i64 %sub28, 576460752303423488, !dbg !1402
  %tobool30 = icmp ne i64 %and29, 0, !dbg !1402
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !1402

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !1402

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub33 = sub i64 %14, 1, !dbg !1402
  %and34 = and i64 %sub33, 288230376151711744, !dbg !1402
  %tobool35 = icmp ne i64 %and34, 0, !dbg !1402
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !1402

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !1402

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub38 = sub i64 %15, 1, !dbg !1402
  %and39 = and i64 %sub38, 144115188075855872, !dbg !1402
  %tobool40 = icmp ne i64 %and39, 0, !dbg !1402
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !1402

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !1402

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub43 = sub i64 %16, 1, !dbg !1402
  %and44 = and i64 %sub43, 72057594037927936, !dbg !1402
  %tobool45 = icmp ne i64 %and44, 0, !dbg !1402
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !1402

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !1402

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub48 = sub i64 %17, 1, !dbg !1402
  %and49 = and i64 %sub48, 36028797018963968, !dbg !1402
  %tobool50 = icmp ne i64 %and49, 0, !dbg !1402
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !1402

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !1402

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub53 = sub i64 %18, 1, !dbg !1402
  %and54 = and i64 %sub53, 18014398509481984, !dbg !1402
  %tobool55 = icmp ne i64 %and54, 0, !dbg !1402
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !1402

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !1402

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub58 = sub i64 %19, 1, !dbg !1402
  %and59 = and i64 %sub58, 9007199254740992, !dbg !1402
  %tobool60 = icmp ne i64 %and59, 0, !dbg !1402
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !1402

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !1402

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub63 = sub i64 %20, 1, !dbg !1402
  %and64 = and i64 %sub63, 4503599627370496, !dbg !1402
  %tobool65 = icmp ne i64 %and64, 0, !dbg !1402
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !1402

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !1402

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub68 = sub i64 %21, 1, !dbg !1402
  %and69 = and i64 %sub68, 2251799813685248, !dbg !1402
  %tobool70 = icmp ne i64 %and69, 0, !dbg !1402
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !1402

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !1402

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub73 = sub i64 %22, 1, !dbg !1402
  %and74 = and i64 %sub73, 1125899906842624, !dbg !1402
  %tobool75 = icmp ne i64 %and74, 0, !dbg !1402
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !1402

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !1402

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub78 = sub i64 %23, 1, !dbg !1402
  %and79 = and i64 %sub78, 562949953421312, !dbg !1402
  %tobool80 = icmp ne i64 %and79, 0, !dbg !1402
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !1402

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !1402

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub83 = sub i64 %24, 1, !dbg !1402
  %and84 = and i64 %sub83, 281474976710656, !dbg !1402
  %tobool85 = icmp ne i64 %and84, 0, !dbg !1402
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !1402

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !1402

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub88 = sub i64 %25, 1, !dbg !1402
  %and89 = and i64 %sub88, 140737488355328, !dbg !1402
  %tobool90 = icmp ne i64 %and89, 0, !dbg !1402
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !1402

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !1402

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub93 = sub i64 %26, 1, !dbg !1402
  %and94 = and i64 %sub93, 70368744177664, !dbg !1402
  %tobool95 = icmp ne i64 %and94, 0, !dbg !1402
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !1402

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !1402

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub98 = sub i64 %27, 1, !dbg !1402
  %and99 = and i64 %sub98, 35184372088832, !dbg !1402
  %tobool100 = icmp ne i64 %and99, 0, !dbg !1402
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !1402

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !1402

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub103 = sub i64 %28, 1, !dbg !1402
  %and104 = and i64 %sub103, 17592186044416, !dbg !1402
  %tobool105 = icmp ne i64 %and104, 0, !dbg !1402
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !1402

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !1402

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub108 = sub i64 %29, 1, !dbg !1402
  %and109 = and i64 %sub108, 8796093022208, !dbg !1402
  %tobool110 = icmp ne i64 %and109, 0, !dbg !1402
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !1402

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !1402

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub113 = sub i64 %30, 1, !dbg !1402
  %and114 = and i64 %sub113, 4398046511104, !dbg !1402
  %tobool115 = icmp ne i64 %and114, 0, !dbg !1402
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !1402

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !1402

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub118 = sub i64 %31, 1, !dbg !1402
  %and119 = and i64 %sub118, 2199023255552, !dbg !1402
  %tobool120 = icmp ne i64 %and119, 0, !dbg !1402
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1402

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !1402

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub123 = sub i64 %32, 1, !dbg !1402
  %and124 = and i64 %sub123, 1099511627776, !dbg !1402
  %tobool125 = icmp ne i64 %and124, 0, !dbg !1402
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !1402

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !1402

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub128 = sub i64 %33, 1, !dbg !1402
  %and129 = and i64 %sub128, 549755813888, !dbg !1402
  %tobool130 = icmp ne i64 %and129, 0, !dbg !1402
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !1402

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !1402

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub133 = sub i64 %34, 1, !dbg !1402
  %and134 = and i64 %sub133, 274877906944, !dbg !1402
  %tobool135 = icmp ne i64 %and134, 0, !dbg !1402
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !1402

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !1402

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub138 = sub i64 %35, 1, !dbg !1402
  %and139 = and i64 %sub138, 137438953472, !dbg !1402
  %tobool140 = icmp ne i64 %and139, 0, !dbg !1402
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !1402

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !1402

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub143 = sub i64 %36, 1, !dbg !1402
  %and144 = and i64 %sub143, 68719476736, !dbg !1402
  %tobool145 = icmp ne i64 %and144, 0, !dbg !1402
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !1402

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !1402

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub148 = sub i64 %37, 1, !dbg !1402
  %and149 = and i64 %sub148, 34359738368, !dbg !1402
  %tobool150 = icmp ne i64 %and149, 0, !dbg !1402
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !1402

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !1402

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub153 = sub i64 %38, 1, !dbg !1402
  %and154 = and i64 %sub153, 17179869184, !dbg !1402
  %tobool155 = icmp ne i64 %and154, 0, !dbg !1402
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !1402

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !1402

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub158 = sub i64 %39, 1, !dbg !1402
  %and159 = and i64 %sub158, 8589934592, !dbg !1402
  %tobool160 = icmp ne i64 %and159, 0, !dbg !1402
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !1402

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !1402

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub163 = sub i64 %40, 1, !dbg !1402
  %and164 = and i64 %sub163, 4294967296, !dbg !1402
  %tobool165 = icmp ne i64 %and164, 0, !dbg !1402
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !1402

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !1402

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub168 = sub i64 %41, 1, !dbg !1402
  %and169 = and i64 %sub168, 2147483648, !dbg !1402
  %tobool170 = icmp ne i64 %and169, 0, !dbg !1402
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !1402

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !1402

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub173 = sub i64 %42, 1, !dbg !1402
  %and174 = and i64 %sub173, 1073741824, !dbg !1402
  %tobool175 = icmp ne i64 %and174, 0, !dbg !1402
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !1402

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !1402

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub178 = sub i64 %43, 1, !dbg !1402
  %and179 = and i64 %sub178, 536870912, !dbg !1402
  %tobool180 = icmp ne i64 %and179, 0, !dbg !1402
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !1402

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !1402

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub183 = sub i64 %44, 1, !dbg !1402
  %and184 = and i64 %sub183, 268435456, !dbg !1402
  %tobool185 = icmp ne i64 %and184, 0, !dbg !1402
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !1402

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !1402

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub188 = sub i64 %45, 1, !dbg !1402
  %and189 = and i64 %sub188, 134217728, !dbg !1402
  %tobool190 = icmp ne i64 %and189, 0, !dbg !1402
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !1402

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !1402

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub193 = sub i64 %46, 1, !dbg !1402
  %and194 = and i64 %sub193, 67108864, !dbg !1402
  %tobool195 = icmp ne i64 %and194, 0, !dbg !1402
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !1402

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !1402

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub198 = sub i64 %47, 1, !dbg !1402
  %and199 = and i64 %sub198, 33554432, !dbg !1402
  %tobool200 = icmp ne i64 %and199, 0, !dbg !1402
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !1402

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !1402

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub203 = sub i64 %48, 1, !dbg !1402
  %and204 = and i64 %sub203, 16777216, !dbg !1402
  %tobool205 = icmp ne i64 %and204, 0, !dbg !1402
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !1402

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !1402

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub208 = sub i64 %49, 1, !dbg !1402
  %and209 = and i64 %sub208, 8388608, !dbg !1402
  %tobool210 = icmp ne i64 %and209, 0, !dbg !1402
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !1402

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !1402

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub213 = sub i64 %50, 1, !dbg !1402
  %and214 = and i64 %sub213, 4194304, !dbg !1402
  %tobool215 = icmp ne i64 %and214, 0, !dbg !1402
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !1402

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !1402

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub218 = sub i64 %51, 1, !dbg !1402
  %and219 = and i64 %sub218, 2097152, !dbg !1402
  %tobool220 = icmp ne i64 %and219, 0, !dbg !1402
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !1402

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !1402

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub223 = sub i64 %52, 1, !dbg !1402
  %and224 = and i64 %sub223, 1048576, !dbg !1402
  %tobool225 = icmp ne i64 %and224, 0, !dbg !1402
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !1402

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !1402

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub228 = sub i64 %53, 1, !dbg !1402
  %and229 = and i64 %sub228, 524288, !dbg !1402
  %tobool230 = icmp ne i64 %and229, 0, !dbg !1402
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !1402

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !1402

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub233 = sub i64 %54, 1, !dbg !1402
  %and234 = and i64 %sub233, 262144, !dbg !1402
  %tobool235 = icmp ne i64 %and234, 0, !dbg !1402
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !1402

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !1402

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub238 = sub i64 %55, 1, !dbg !1402
  %and239 = and i64 %sub238, 131072, !dbg !1402
  %tobool240 = icmp ne i64 %and239, 0, !dbg !1402
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !1402

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !1402

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub243 = sub i64 %56, 1, !dbg !1402
  %and244 = and i64 %sub243, 65536, !dbg !1402
  %tobool245 = icmp ne i64 %and244, 0, !dbg !1402
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !1402

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !1402

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub248 = sub i64 %57, 1, !dbg !1402
  %and249 = and i64 %sub248, 32768, !dbg !1402
  %tobool250 = icmp ne i64 %and249, 0, !dbg !1402
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !1402

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !1402

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub253 = sub i64 %58, 1, !dbg !1402
  %and254 = and i64 %sub253, 16384, !dbg !1402
  %tobool255 = icmp ne i64 %and254, 0, !dbg !1402
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !1402

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !1402

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub258 = sub i64 %59, 1, !dbg !1402
  %and259 = and i64 %sub258, 8192, !dbg !1402
  %tobool260 = icmp ne i64 %and259, 0, !dbg !1402
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !1402

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !1402

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub263 = sub i64 %60, 1, !dbg !1402
  %and264 = and i64 %sub263, 4096, !dbg !1402
  %tobool265 = icmp ne i64 %and264, 0, !dbg !1402
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !1402

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !1402

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub268 = sub i64 %61, 1, !dbg !1402
  %and269 = and i64 %sub268, 2048, !dbg !1402
  %tobool270 = icmp ne i64 %and269, 0, !dbg !1402
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !1402

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !1402

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub273 = sub i64 %62, 1, !dbg !1402
  %and274 = and i64 %sub273, 1024, !dbg !1402
  %tobool275 = icmp ne i64 %and274, 0, !dbg !1402
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !1402

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !1402

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub278 = sub i64 %63, 1, !dbg !1402
  %and279 = and i64 %sub278, 512, !dbg !1402
  %tobool280 = icmp ne i64 %and279, 0, !dbg !1402
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !1402

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !1402

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub283 = sub i64 %64, 1, !dbg !1402
  %and284 = and i64 %sub283, 256, !dbg !1402
  %tobool285 = icmp ne i64 %and284, 0, !dbg !1402
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !1402

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !1402

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub288 = sub i64 %65, 1, !dbg !1402
  %and289 = and i64 %sub288, 128, !dbg !1402
  %tobool290 = icmp ne i64 %and289, 0, !dbg !1402
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !1402

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !1402

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub293 = sub i64 %66, 1, !dbg !1402
  %and294 = and i64 %sub293, 64, !dbg !1402
  %tobool295 = icmp ne i64 %and294, 0, !dbg !1402
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !1402

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !1402

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub298 = sub i64 %67, 1, !dbg !1402
  %and299 = and i64 %sub298, 32, !dbg !1402
  %tobool300 = icmp ne i64 %and299, 0, !dbg !1402
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !1402

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !1402

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub303 = sub i64 %68, 1, !dbg !1402
  %and304 = and i64 %sub303, 16, !dbg !1402
  %tobool305 = icmp ne i64 %and304, 0, !dbg !1402
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !1402

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !1402

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub308 = sub i64 %69, 1, !dbg !1402
  %and309 = and i64 %sub308, 8, !dbg !1402
  %tobool310 = icmp ne i64 %and309, 0, !dbg !1402
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !1402

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !1402

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub313 = sub i64 %70, 1, !dbg !1402
  %and314 = and i64 %sub313, 4, !dbg !1402
  %tobool315 = icmp ne i64 %and314, 0, !dbg !1402
  %71 = zext i1 %tobool315 to i64, !dbg !1402
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !1402
  br label %cond.end, !dbg !1402

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !1402
  br label %cond.end317, !dbg !1402

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !1402
  br label %cond.end319, !dbg !1402

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !1402
  br label %cond.end321, !dbg !1402

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !1402
  br label %cond.end323, !dbg !1402

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !1402
  br label %cond.end325, !dbg !1402

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !1402
  br label %cond.end327, !dbg !1402

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !1402
  br label %cond.end329, !dbg !1402

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !1402
  br label %cond.end331, !dbg !1402

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !1402
  br label %cond.end333, !dbg !1402

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !1402
  br label %cond.end335, !dbg !1402

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !1402
  br label %cond.end337, !dbg !1402

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !1402
  br label %cond.end339, !dbg !1402

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !1402
  br label %cond.end341, !dbg !1402

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !1402
  br label %cond.end343, !dbg !1402

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !1402
  br label %cond.end345, !dbg !1402

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !1402
  br label %cond.end347, !dbg !1402

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !1402
  br label %cond.end349, !dbg !1402

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !1402
  br label %cond.end351, !dbg !1402

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !1402
  br label %cond.end353, !dbg !1402

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !1402
  br label %cond.end355, !dbg !1402

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !1402
  br label %cond.end357, !dbg !1402

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !1402
  br label %cond.end359, !dbg !1402

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !1402
  br label %cond.end361, !dbg !1402

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !1402
  br label %cond.end363, !dbg !1402

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !1402
  br label %cond.end365, !dbg !1402

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !1402
  br label %cond.end367, !dbg !1402

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !1402
  br label %cond.end369, !dbg !1402

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !1402
  br label %cond.end371, !dbg !1402

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !1402
  br label %cond.end373, !dbg !1402

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !1402
  br label %cond.end375, !dbg !1402

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !1402
  br label %cond.end377, !dbg !1402

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !1402
  br label %cond.end379, !dbg !1402

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !1402
  br label %cond.end381, !dbg !1402

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !1402
  br label %cond.end383, !dbg !1402

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !1402
  br label %cond.end385, !dbg !1402

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !1402
  br label %cond.end387, !dbg !1402

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !1402
  br label %cond.end389, !dbg !1402

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !1402
  br label %cond.end391, !dbg !1402

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !1402
  br label %cond.end393, !dbg !1402

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !1402
  br label %cond.end395, !dbg !1402

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !1402
  br label %cond.end397, !dbg !1402

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !1402
  br label %cond.end399, !dbg !1402

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !1402
  br label %cond.end401, !dbg !1402

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !1402
  br label %cond.end403, !dbg !1402

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !1402
  br label %cond.end405, !dbg !1402

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !1402
  br label %cond.end407, !dbg !1402

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !1402
  br label %cond.end409, !dbg !1402

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !1402
  br label %cond.end411, !dbg !1402

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !1402
  br label %cond.end413, !dbg !1402

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !1402
  br label %cond.end415, !dbg !1402

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !1402
  br label %cond.end417, !dbg !1402

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !1402
  br label %cond.end419, !dbg !1402

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !1402
  br label %cond.end421, !dbg !1402

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !1402
  br label %cond.end423, !dbg !1402

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !1402
  br label %cond.end425, !dbg !1402

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !1402
  br label %cond.end427, !dbg !1402

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !1402
  br label %cond.end429, !dbg !1402

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !1402
  br label %cond.end431, !dbg !1402

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !1402
  br label %cond.end433, !dbg !1402

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !1402
  br label %cond.end435, !dbg !1402

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !1402
  br label %cond.end437, !dbg !1402

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !1402
  br label %cond.end440, !dbg !1402

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !1402

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !1402
  br label %cond.end444, !dbg !1402

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !1402
  %sub443 = sub i64 %72, 1, !dbg !1402
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !1402
  br label %cond.end444, !dbg !1402

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !1402
  %sub446 = sub i32 %cond445, 12, !dbg !1403
  %add = add i32 %sub446, 1, !dbg !1404
  store i32 %add, i32* %retval, align 4, !dbg !1405
  br label %return, !dbg !1405

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !1406
  %dec = add i64 %73, -1, !dbg !1406
  store i64 %dec, i64* %size.addr, align 8, !dbg !1406
  %74 = load i64, i64* %size.addr, align 8, !dbg !1407
  %shr = lshr i64 %74, 12, !dbg !1407
  store i64 %shr, i64* %size.addr, align 8, !dbg !1407
  %75 = load i64, i64* %size.addr, align 8, !dbg !1408
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1385
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !1409
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !1410
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !1409, !srcloc !1411
  store i32 %78, i32* %bitpos.i, align 4, !dbg !1409
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !1412
  %add.i = add i32 %79, 1, !dbg !1413
  store i32 %add.i, i32* %retval, align 4, !dbg !1414
  br label %return, !dbg !1414

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !1415
  ret i32 %80, !dbg !1415
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !1416 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !1377, metadata !DIExpression()), !dbg !1420
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !1384, metadata !DIExpression()), !dbg !1422
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1423, metadata !DIExpression()), !dbg !1424
  %0 = load i64, i64* %n.addr, align 8, !dbg !1425
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !1422
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !1426
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !1427
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !1426, !srcloc !1411
  store i32 %3, i32* %bitpos.i, align 4, !dbg !1426
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !1428
  %add.i = add i32 %4, 1, !dbg !1429
  %sub = sub i32 %add.i, 1, !dbg !1430
  ret i32 %sub, !dbg !1431
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !1432 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !1438, metadata !DIExpression()), !dbg !1439
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !1440, metadata !DIExpression()), !dbg !1441
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1442, metadata !DIExpression()), !dbg !1443
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !1444, metadata !DIExpression()), !dbg !1445
  %0 = load i8*, i8** %object.addr, align 8, !dbg !1446
  ret i8* %0, !dbg !1447
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 15, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !32, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utaddress.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !6, line: 305, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!13 = !{!14, !21, !24, !22, !25, !28, !30, !31}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !15, line: 805, baseType: !16)
!15 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !15, line: 421, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !17, line: 21, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !19, line: 27, baseType: !7)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !15, line: 127, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !17, line: 23, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !19, line: 31, baseType: !27)
!27 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !29, line: 148, baseType: !7)
!29 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !{!0}
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 80, elements: !36)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !{!37}
!37 = !DISubrange(count: 10)
!38 = !{!"rsp"}
!39 = !{i32 7, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!44 = distinct !DISubprogram(name: "acpi_ut_add_address_range", scope: !3, file: !3, line: 41, type: !45, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!45 = !DISubroutineType(types: !46)
!46 = !{!21, !14, !47, !22, !48}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !15, line: 129, baseType: !25)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !50, line: 133, size: 384, elements: !51)
!50 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/lizy2001/genbc/linux")
!51 = !{!52, !794, !795, !796, !797, !803, !804, !805, !806}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !49, file: !50, line: 134, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !55, line: 367, size: 576, elements: !56)
!55 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !68, !81, !92, !106, !120, !129, !446, !463, !477, !490, !568, !580, !594, !604, !622, !644, !663, !682, !701, !714, !740, !757, !770, !784, !793}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !54, file: !55, line: 368, baseType: !58, size: 128)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !55, line: 73, size: 128, elements: !59)
!59 = !{!60, !61, !62, !63, !67}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !58, file: !55, line: 74, baseType: !53, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !58, file: !55, line: 74, baseType: !16, size: 8, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !55, line: 74, baseType: !16, size: 8, offset: 72)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !58, file: !55, line: 74, baseType: !64, size: 16, offset: 80)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !17, line: 19, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !19, line: 24, baseType: !66)
!66 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !58, file: !55, line: 74, baseType: !16, size: 8, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !54, file: !55, line: 369, baseType: !69, size: 192)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !55, line: 76, size: 192, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !80}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !69, file: !55, line: 77, baseType: !53, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !55, line: 77, baseType: !16, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !55, line: 77, baseType: !16, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !69, file: !55, line: 77, baseType: !64, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !55, line: 77, baseType: !16, size: 8, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !69, file: !55, line: 77, baseType: !77, size: 24, offset: 104)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 24, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 3)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !69, file: !55, line: 78, baseType: !25, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !54, file: !55, line: 370, baseType: !82, size: 256)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !55, line: 93, size: 256, elements: !83)
!83 = !{!84, !85, !86, !87, !88, !89, !91}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !82, file: !55, line: 94, baseType: !53, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !82, file: !55, line: 94, baseType: !16, size: 8, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !55, line: 94, baseType: !16, size: 8, offset: 72)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !82, file: !55, line: 94, baseType: !64, size: 16, offset: 80)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !82, file: !55, line: 94, baseType: !16, size: 8, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !82, file: !55, line: 94, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !82, file: !55, line: 94, baseType: !22, size: 32, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !54, file: !55, line: 371, baseType: !93, size: 384)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !55, line: 97, size: 384, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !100, !102, !103, !104, !105}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !93, file: !55, line: 98, baseType: !53, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !93, file: !55, line: 98, baseType: !16, size: 8, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !55, line: 98, baseType: !16, size: 8, offset: 72)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !93, file: !55, line: 98, baseType: !64, size: 16, offset: 80)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !55, line: 98, baseType: !16, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !93, file: !55, line: 98, baseType: !101, size: 64, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !93, file: !55, line: 98, baseType: !22, size: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !93, file: !55, line: 99, baseType: !22, size: 32, offset: 224)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !93, file: !55, line: 100, baseType: !101, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !93, file: !55, line: 101, baseType: !48, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !54, file: !55, line: 372, baseType: !107, size: 384)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !55, line: 104, size: 384, elements: !108)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !117, !118, !119}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !107, file: !55, line: 105, baseType: !53, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !107, file: !55, line: 105, baseType: !16, size: 8, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !107, file: !55, line: 105, baseType: !16, size: 8, offset: 72)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !107, file: !55, line: 105, baseType: !64, size: 16, offset: 80)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !107, file: !55, line: 105, baseType: !16, size: 8, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !107, file: !55, line: 105, baseType: !48, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !107, file: !55, line: 106, baseType: !116, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !107, file: !55, line: 107, baseType: !101, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !107, file: !55, line: 108, baseType: !22, size: 32, offset: 320)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !107, file: !55, line: 109, baseType: !22, size: 32, offset: 352)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !54, file: !55, line: 373, baseType: !121, size: 192)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !55, line: 118, size: 192, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !121, file: !55, line: 119, baseType: !53, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !121, file: !55, line: 119, baseType: !16, size: 8, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !121, file: !55, line: 119, baseType: !16, size: 8, offset: 72)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !121, file: !55, line: 119, baseType: !64, size: 16, offset: 80)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !55, line: 119, baseType: !16, size: 8, offset: 96)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !121, file: !55, line: 119, baseType: !30, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !54, file: !55, line: 374, baseType: !130, size: 448)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !55, line: 143, size: 448, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !443, !444, !445}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !55, line: 144, baseType: !53, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !55, line: 144, baseType: !16, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !55, line: 144, baseType: !16, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !55, line: 144, baseType: !64, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !55, line: 144, baseType: !16, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !130, file: !55, line: 144, baseType: !16, size: 8, offset: 104)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !130, file: !55, line: 145, baseType: !16, size: 8, offset: 112)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !130, file: !55, line: 146, baseType: !16, size: 8, offset: 120)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !130, file: !55, line: 147, baseType: !53, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !130, file: !55, line: 148, baseType: !53, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !130, file: !55, line: 149, baseType: !101, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !130, file: !55, line: 153, baseType: !144, size: 64, offset: 320)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !55, line: 150, size: 64, elements: !145)
!145 = !{!146, !442}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !144, file: !55, line: 151, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !50, line: 248, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!21, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !153, line: 37, size: 9024, elements: !154)
!153 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/lizy2001/genbc/linux")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !388, !389, !390, !391, !392, !396, !398, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !425, !426, !427, !428, !429, !430, !431, !432, !434, !440}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !153, line: 38, baseType: !151, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !152, file: !153, line: 39, baseType: !16, size: 8, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !152, file: !153, line: 40, baseType: !16, size: 8, offset: 72)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !152, file: !153, line: 41, baseType: !64, size: 16, offset: 80)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !152, file: !153, line: 42, baseType: !16, size: 8, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !152, file: !153, line: 43, baseType: !16, size: 8, offset: 104)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !152, file: !153, line: 44, baseType: !16, size: 8, offset: 112)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !152, file: !153, line: 45, baseType: !163, size: 16, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !15, line: 445, baseType: !64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !152, file: !153, line: 46, baseType: !16, size: 8, offset: 144)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !152, file: !153, line: 47, baseType: !16, size: 8, offset: 152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !152, file: !153, line: 48, baseType: !16, size: 8, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !152, file: !153, line: 49, baseType: !16, size: 8, offset: 168)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !152, file: !153, line: 50, baseType: !16, size: 8, offset: 176)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !152, file: !153, line: 51, baseType: !16, size: 8, offset: 184)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !152, file: !153, line: 52, baseType: !16, size: 8, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !152, file: !153, line: 53, baseType: !16, size: 8, offset: 200)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !152, file: !153, line: 54, baseType: !101, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !152, file: !153, line: 55, baseType: !22, size: 32, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !152, file: !153, line: 56, baseType: !22, size: 32, offset: 352)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !152, file: !153, line: 57, baseType: !22, size: 32, offset: 384)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !152, file: !153, line: 58, baseType: !22, size: 32, offset: 416)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !152, file: !153, line: 60, baseType: !178, size: 640, offset: 448)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !50, line: 893, size: 640, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185, !269, !270, !386, !387}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !178, file: !50, line: 894, baseType: !101, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !178, file: !50, line: 895, baseType: !101, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !178, file: !50, line: 896, baseType: !101, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !178, file: !50, line: 897, baseType: !101, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !178, file: !50, line: 898, baseType: !101, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !178, file: !50, line: 899, baseType: !186, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !50, line: 875, size: 1600, elements: !188)
!188 = !{!189, !209, !225}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !187, file: !50, line: 876, baseType: !190, size: 448)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !50, line: 828, size: 448, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !208}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !190, file: !50, line: 829, baseType: !186, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !190, file: !50, line: 829, baseType: !16, size: 8, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !190, file: !50, line: 829, baseType: !16, size: 8, offset: 72)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !190, file: !50, line: 829, baseType: !64, size: 16, offset: 80)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !190, file: !50, line: 829, baseType: !101, size: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !50, line: 829, baseType: !186, size: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !190, file: !50, line: 829, baseType: !48, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !190, file: !50, line: 829, baseType: !200, size: 64, offset: 320)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !50, line: 716, size: 64, elements: !201)
!201 = !{!202, !203, !204, !205, !206, !207}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !200, file: !50, line: 717, baseType: !25, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !200, file: !50, line: 718, baseType: !22, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !200, file: !50, line: 719, baseType: !90, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !200, file: !50, line: 720, baseType: !101, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !50, line: 721, baseType: !90, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !200, file: !50, line: 722, baseType: !186, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !190, file: !50, line: 829, baseType: !16, size: 8, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !187, file: !50, line: 877, baseType: !210, size: 640)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !50, line: 835, size: 640, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !210, file: !50, line: 836, baseType: !186, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !210, file: !50, line: 836, baseType: !16, size: 8, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !50, line: 836, baseType: !16, size: 8, offset: 72)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !210, file: !50, line: 836, baseType: !64, size: 16, offset: 80)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !210, file: !50, line: 836, baseType: !101, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !50, line: 836, baseType: !186, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !210, file: !50, line: 836, baseType: !48, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !210, file: !50, line: 836, baseType: !200, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !210, file: !50, line: 836, baseType: !16, size: 8, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !210, file: !50, line: 836, baseType: !90, size: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !210, file: !50, line: 837, baseType: !101, size: 64, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !210, file: !50, line: 838, baseType: !22, size: 32, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !50, line: 839, baseType: !22, size: 32, offset: 608)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !187, file: !50, line: 878, baseType: !226, size: 1600)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !50, line: 846, size: 1600, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !226, file: !50, line: 847, baseType: !186, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !226, file: !50, line: 847, baseType: !16, size: 8, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !226, file: !50, line: 847, baseType: !16, size: 8, offset: 72)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !226, file: !50, line: 847, baseType: !64, size: 16, offset: 80)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !226, file: !50, line: 847, baseType: !101, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !50, line: 847, baseType: !186, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !50, line: 847, baseType: !48, size: 64, offset: 256)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !226, file: !50, line: 847, baseType: !200, size: 64, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !226, file: !50, line: 847, baseType: !16, size: 8, offset: 384)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !226, file: !50, line: 847, baseType: !186, size: 64, offset: 448)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !226, file: !50, line: 848, baseType: !186, size: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !226, file: !50, line: 849, baseType: !90, size: 64, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !226, file: !50, line: 850, baseType: !16, size: 8, offset: 640)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !226, file: !50, line: 851, baseType: !90, size: 64, offset: 704)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !226, file: !50, line: 852, baseType: !90, size: 64, offset: 768)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !226, file: !50, line: 853, baseType: !90, size: 64, offset: 832)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !226, file: !50, line: 854, baseType: !245, size: 32, offset: 896)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 4)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !226, file: !50, line: 855, baseType: !22, size: 32, offset: 928)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !226, file: !50, line: 856, baseType: !22, size: 32, offset: 960)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !226, file: !50, line: 857, baseType: !22, size: 32, offset: 992)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !226, file: !50, line: 858, baseType: !22, size: 32, offset: 1024)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !226, file: !50, line: 859, baseType: !22, size: 32, offset: 1056)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !226, file: !50, line: 860, baseType: !22, size: 32, offset: 1088)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !226, file: !50, line: 861, baseType: !22, size: 32, offset: 1120)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !226, file: !50, line: 862, baseType: !22, size: 32, offset: 1152)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !226, file: !50, line: 863, baseType: !22, size: 32, offset: 1184)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !226, file: !50, line: 864, baseType: !22, size: 32, offset: 1216)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !226, file: !50, line: 865, baseType: !22, size: 32, offset: 1248)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !226, file: !50, line: 866, baseType: !22, size: 32, offset: 1280)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !226, file: !50, line: 867, baseType: !22, size: 32, offset: 1312)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !226, file: !50, line: 868, baseType: !64, size: 16, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !226, file: !50, line: 869, baseType: !16, size: 8, offset: 1360)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !226, file: !50, line: 870, baseType: !16, size: 8, offset: 1368)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !226, file: !50, line: 871, baseType: !16, size: 8, offset: 1376)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !226, file: !50, line: 872, baseType: !266, size: 160, offset: 1384)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 20)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !178, file: !50, line: 900, baseType: !48, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !178, file: !50, line: 901, baseType: !271, size: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !50, line: 663, size: 640, elements: !273)
!273 = !{!274, !282, !295, !304, !313, !326, !340, !352, !364}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !272, file: !50, line: 664, baseType: !275, size: 128)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !50, line: 567, size: 128, elements: !276)
!276 = !{!277, !278, !279, !280, !281}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !50, line: 568, baseType: !30, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !275, file: !50, line: 568, baseType: !16, size: 8, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !50, line: 568, baseType: !16, size: 8, offset: 72)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !275, file: !50, line: 568, baseType: !64, size: 16, offset: 80)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !50, line: 568, baseType: !64, size: 16, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !272, file: !50, line: 665, baseType: !283, size: 384)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !50, line: 593, size: 384, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !50, line: 594, baseType: !30, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !50, line: 594, baseType: !16, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !50, line: 594, baseType: !16, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !50, line: 594, baseType: !64, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !283, file: !50, line: 594, baseType: !64, size: 16, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !283, file: !50, line: 594, baseType: !64, size: 16, offset: 112)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !283, file: !50, line: 595, baseType: !186, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !283, file: !50, line: 596, baseType: !101, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !283, file: !50, line: 597, baseType: !101, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !283, file: !50, line: 598, baseType: !25, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !272, file: !50, line: 666, baseType: !296, size: 192)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !50, line: 573, size: 192, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !296, file: !50, line: 574, baseType: !30, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !296, file: !50, line: 574, baseType: !16, size: 8, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !50, line: 574, baseType: !16, size: 8, offset: 72)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !296, file: !50, line: 574, baseType: !64, size: 16, offset: 80)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !296, file: !50, line: 574, baseType: !64, size: 16, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !296, file: !50, line: 574, baseType: !53, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !272, file: !50, line: 667, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !50, line: 604, size: 192, elements: !306)
!306 = !{!307, !308, !309, !310, !311, !312}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !305, file: !50, line: 605, baseType: !30, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !305, file: !50, line: 605, baseType: !16, size: 8, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !50, line: 605, baseType: !16, size: 8, offset: 72)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !305, file: !50, line: 605, baseType: !64, size: 16, offset: 80)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !305, file: !50, line: 605, baseType: !64, size: 16, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !305, file: !50, line: 605, baseType: !48, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !272, file: !50, line: 668, baseType: !314, size: 448)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !50, line: 608, size: 448, elements: !315)
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324, !325}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !50, line: 609, baseType: !30, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !314, file: !50, line: 609, baseType: !16, size: 8, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !50, line: 609, baseType: !16, size: 8, offset: 72)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !314, file: !50, line: 609, baseType: !64, size: 16, offset: 80)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !314, file: !50, line: 609, baseType: !64, size: 16, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !314, file: !50, line: 609, baseType: !22, size: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !314, file: !50, line: 610, baseType: !186, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !314, file: !50, line: 611, baseType: !101, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !314, file: !50, line: 612, baseType: !101, size: 64, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !314, file: !50, line: 613, baseType: !22, size: 32, offset: 384)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !272, file: !50, line: 669, baseType: !327, size: 512)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !50, line: 580, size: 512, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !327, file: !50, line: 581, baseType: !30, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !327, file: !50, line: 581, baseType: !16, size: 8, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !327, file: !50, line: 581, baseType: !16, size: 8, offset: 72)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !327, file: !50, line: 581, baseType: !64, size: 16, offset: 80)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !327, file: !50, line: 581, baseType: !64, size: 16, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !327, file: !50, line: 581, baseType: !22, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !327, file: !50, line: 582, baseType: !53, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !327, file: !50, line: 583, baseType: !53, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !327, file: !50, line: 584, baseType: !151, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !327, file: !50, line: 585, baseType: !30, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !327, file: !50, line: 586, baseType: !22, size: 32, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !272, file: !50, line: 670, baseType: !341, size: 320)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !50, line: 620, size: 320, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !50, line: 621, baseType: !30, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !341, file: !50, line: 621, baseType: !16, size: 8, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !50, line: 621, baseType: !16, size: 8, offset: 72)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !341, file: !50, line: 621, baseType: !64, size: 16, offset: 80)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !341, file: !50, line: 621, baseType: !64, size: 16, offset: 96)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !341, file: !50, line: 621, baseType: !16, size: 8, offset: 112)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !341, file: !50, line: 622, baseType: !151, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !341, file: !50, line: 623, baseType: !53, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !341, file: !50, line: 624, baseType: !25, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !272, file: !50, line: 671, baseType: !353, size: 640)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !50, line: 631, size: 640, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !50, line: 632, baseType: !30, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !50, line: 632, baseType: !16, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !50, line: 632, baseType: !16, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !50, line: 632, baseType: !64, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !50, line: 632, baseType: !64, size: 16, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !353, file: !50, line: 633, baseType: !361, size: 512, offset: 128)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 8)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !272, file: !50, line: 672, baseType: !365, size: 320)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !50, line: 654, size: 320, elements: !366)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !50, line: 655, baseType: !30, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !365, file: !50, line: 655, baseType: !16, size: 8, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !365, file: !50, line: 655, baseType: !16, size: 8, offset: 72)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !365, file: !50, line: 655, baseType: !64, size: 16, offset: 80)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !365, file: !50, line: 655, baseType: !64, size: 16, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !365, file: !50, line: 655, baseType: !16, size: 8, offset: 112)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !365, file: !50, line: 656, baseType: !48, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !365, file: !50, line: 657, baseType: !53, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !365, file: !50, line: 658, baseType: !376, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !50, line: 645, size: 128, elements: !378)
!378 = !{!379, !385}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !377, file: !50, line: 646, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !15, line: 1052, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384, !22, !30}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !15, line: 424, baseType: !30)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !377, file: !50, line: 647, baseType: !30, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !178, file: !50, line: 902, baseType: !186, size: 64, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !178, file: !50, line: 903, baseType: !22, size: 32, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !152, file: !153, line: 61, baseType: !22, size: 32, offset: 1088)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !152, file: !153, line: 62, baseType: !22, size: 32, offset: 1120)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !152, file: !153, line: 63, baseType: !64, size: 16, offset: 1152)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !152, file: !153, line: 64, baseType: !16, size: 8, offset: 1168)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !152, file: !153, line: 66, baseType: !393, size: 2688, offset: 1216)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2688, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 7)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !152, file: !153, line: 67, baseType: !397, size: 3072, offset: 3904)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 3072, elements: !362)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !152, file: !153, line: 68, baseType: !399, size: 576, offset: 6976)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 576, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 9)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !152, file: !153, line: 69, baseType: !116, size: 64, offset: 7552)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !152, file: !153, line: 71, baseType: !101, size: 64, offset: 7616)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !152, file: !153, line: 72, baseType: !116, size: 64, offset: 7680)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !152, file: !153, line: 73, baseType: !271, size: 64, offset: 7744)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !152, file: !153, line: 74, baseType: !48, size: 64, offset: 7808)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !152, file: !153, line: 75, baseType: !53, size: 64, offset: 7872)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !152, file: !153, line: 76, baseType: !48, size: 64, offset: 7936)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !152, file: !153, line: 77, baseType: !186, size: 64, offset: 8000)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !152, file: !153, line: 78, baseType: !53, size: 64, offset: 8064)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !152, file: !153, line: 79, baseType: !48, size: 64, offset: 8128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !152, file: !153, line: 80, baseType: !90, size: 64, offset: 8192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !152, file: !153, line: 81, baseType: !186, size: 64, offset: 8256)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !152, file: !153, line: 82, baseType: !415, size: 64, offset: 8320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !50, line: 702, size: 128, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !417, file: !50, line: 706, baseType: !22, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !417, file: !50, line: 707, baseType: !22, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !417, file: !50, line: 708, baseType: !64, size: 16, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !417, file: !50, line: 709, baseType: !16, size: 8, offset: 80)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !417, file: !50, line: 710, baseType: !16, size: 8, offset: 88)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !50, line: 711, baseType: !16, size: 8, offset: 96)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !152, file: !153, line: 83, baseType: !186, size: 64, offset: 8384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !152, file: !153, line: 84, baseType: !53, size: 64, offset: 8448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !152, file: !153, line: 85, baseType: !271, size: 64, offset: 8512)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !152, file: !153, line: 86, baseType: !53, size: 64, offset: 8576)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !152, file: !153, line: 87, baseType: !271, size: 64, offset: 8640)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !152, file: !153, line: 88, baseType: !186, size: 64, offset: 8704)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !152, file: !153, line: 89, baseType: !186, size: 64, offset: 8768)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !152, file: !153, line: 90, baseType: !433, size: 64, offset: 8832)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !152, file: !153, line: 91, baseType: !435, size: 64, offset: 8896)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !50, line: 637, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!21, !151, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !152, file: !153, line: 92, baseType: !441, size: 64, offset: 8960)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !50, line: 641, baseType: !148)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !144, file: !55, line: 152, baseType: !53, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !130, file: !55, line: 155, baseType: !22, size: 32, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !130, file: !55, line: 156, baseType: !163, size: 16, offset: 416)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !130, file: !55, line: 157, baseType: !16, size: 8, offset: 432)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !54, file: !55, line: 375, baseType: !447, size: 576)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !55, line: 122, size: 576, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !447, file: !55, line: 123, baseType: !53, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !447, file: !55, line: 123, baseType: !16, size: 8, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !447, file: !55, line: 123, baseType: !16, size: 8, offset: 72)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !447, file: !55, line: 123, baseType: !64, size: 16, offset: 80)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !55, line: 123, baseType: !16, size: 8, offset: 96)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !447, file: !55, line: 123, baseType: !16, size: 8, offset: 104)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !447, file: !55, line: 124, baseType: !64, size: 16, offset: 112)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !447, file: !55, line: 125, baseType: !30, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !447, file: !55, line: 126, baseType: !25, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !447, file: !55, line: 127, baseType: !433, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !447, file: !55, line: 128, baseType: !53, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !447, file: !55, line: 129, baseType: !53, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !447, file: !55, line: 130, baseType: !48, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !447, file: !55, line: 131, baseType: !16, size: 8, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !54, file: !55, line: 376, baseType: !464, size: 448)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !55, line: 134, size: 448, elements: !465)
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !464, file: !55, line: 135, baseType: !53, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !464, file: !55, line: 135, baseType: !16, size: 8, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !464, file: !55, line: 135, baseType: !16, size: 8, offset: 72)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !464, file: !55, line: 135, baseType: !64, size: 16, offset: 80)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !464, file: !55, line: 135, baseType: !16, size: 8, offset: 96)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !464, file: !55, line: 135, baseType: !16, size: 8, offset: 104)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !464, file: !55, line: 136, baseType: !48, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !464, file: !55, line: 137, baseType: !53, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !55, line: 138, baseType: !53, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !464, file: !55, line: 139, baseType: !47, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !464, file: !55, line: 140, baseType: !22, size: 32, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !54, file: !55, line: 377, baseType: !478, size: 320)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !55, line: 184, size: 320, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !489}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !478, file: !55, line: 185, baseType: !53, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !478, file: !55, line: 185, baseType: !16, size: 8, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !55, line: 185, baseType: !16, size: 8, offset: 72)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !478, file: !55, line: 185, baseType: !64, size: 16, offset: 80)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !478, file: !55, line: 185, baseType: !16, size: 8, offset: 96)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !478, file: !55, line: 185, baseType: !486, size: 128, offset: 128)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 2)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !478, file: !55, line: 185, baseType: !53, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !54, file: !55, line: 378, baseType: !491, size: 384)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !55, line: 187, size: 384, elements: !492)
!492 = !{!493, !494, !495, !496, !497, !498, !499, !500}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !491, file: !55, line: 188, baseType: !53, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !491, file: !55, line: 188, baseType: !16, size: 8, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !491, file: !55, line: 188, baseType: !16, size: 8, offset: 72)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !491, file: !55, line: 188, baseType: !64, size: 16, offset: 80)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !491, file: !55, line: 188, baseType: !16, size: 8, offset: 96)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !491, file: !55, line: 189, baseType: !486, size: 128, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !491, file: !55, line: 189, baseType: !53, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !491, file: !55, line: 189, baseType: !501, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !50, line: 480, size: 576, elements: !503)
!503 = !{!504, !505, !506, !507, !515, !530, !562, !563, !564, !565, !566, !567}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !50, line: 481, baseType: !48, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !502, file: !50, line: 482, baseType: !501, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !502, file: !50, line: 483, baseType: !501, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !502, file: !50, line: 484, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !50, line: 497, size: 256, elements: !510)
!510 = !{!511, !512, !513, !514}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !50, line: 498, baseType: !508, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !50, line: 499, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !509, file: !50, line: 500, baseType: !501, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !509, file: !50, line: 501, baseType: !22, size: 32, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !502, file: !50, line: 485, baseType: !516, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !50, line: 466, size: 320, elements: !518)
!518 = !{!519, !524, !525, !526, !527, !528, !529}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !517, file: !50, line: 467, baseType: !520, size: 128)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !50, line: 459, size: 128, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !520, file: !50, line: 460, baseType: !16, size: 8)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !520, file: !50, line: 461, baseType: !25, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !517, file: !50, line: 468, baseType: !520, size: 128, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !517, file: !50, line: 469, baseType: !64, size: 16, offset: 256)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !517, file: !50, line: 470, baseType: !16, size: 8, offset: 272)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !517, file: !50, line: 471, baseType: !16, size: 8, offset: 280)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !517, file: !50, line: 472, baseType: !16, size: 8, offset: 288)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !517, file: !50, line: 473, baseType: !16, size: 8, offset: 296)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !502, file: !50, line: 486, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !50, line: 448, size: 192, elements: !533)
!533 = !{!534, !557, !558, !559, !560, !561}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !532, file: !50, line: 449, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !50, line: 438, size: 64, elements: !536)
!536 = !{!537, !538, !551}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !535, file: !50, line: 439, baseType: !48, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !535, file: !50, line: 440, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !50, line: 419, size: 256, elements: !541)
!541 = !{!542, !547, !548, !549, !550}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !540, file: !50, line: 420, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !15, line: 1049, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!22, !384, !22, !30}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !540, file: !50, line: 421, baseType: !30, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !540, file: !50, line: 422, baseType: !48, size: 64, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !540, file: !50, line: 423, baseType: !16, size: 8, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !540, file: !50, line: 424, baseType: !16, size: 8, offset: 200)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !535, file: !50, line: 441, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !50, line: 429, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !553, file: !50, line: 430, baseType: !48, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !50, line: 431, baseType: !552, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !532, file: !50, line: 450, baseType: !516, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !50, line: 451, baseType: !16, size: 8, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !532, file: !50, line: 452, baseType: !16, size: 8, offset: 136)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !532, file: !50, line: 453, baseType: !16, size: 8, offset: 144)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !532, file: !50, line: 454, baseType: !16, size: 8, offset: 152)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !502, file: !50, line: 487, baseType: !25, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !502, file: !50, line: 488, baseType: !22, size: 32, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !502, file: !50, line: 489, baseType: !64, size: 16, offset: 480)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !502, file: !50, line: 490, baseType: !64, size: 16, offset: 496)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !502, file: !50, line: 491, baseType: !16, size: 8, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !502, file: !50, line: 492, baseType: !16, size: 8, offset: 520)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !54, file: !55, line: 379, baseType: !569, size: 384)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !55, line: 192, size: 384, elements: !570)
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !569, file: !55, line: 193, baseType: !53, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !569, file: !55, line: 193, baseType: !16, size: 8, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !569, file: !55, line: 193, baseType: !16, size: 8, offset: 72)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !569, file: !55, line: 193, baseType: !64, size: 16, offset: 80)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !569, file: !55, line: 193, baseType: !16, size: 8, offset: 96)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !569, file: !55, line: 193, baseType: !486, size: 128, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !569, file: !55, line: 193, baseType: !53, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !569, file: !55, line: 193, baseType: !22, size: 32, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !569, file: !55, line: 194, baseType: !22, size: 32, offset: 352)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !54, file: !55, line: 380, baseType: !581, size: 384)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !55, line: 197, size: 384, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591, !592}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !55, line: 198, baseType: !53, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !55, line: 198, baseType: !16, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !55, line: 198, baseType: !16, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !55, line: 198, baseType: !64, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !55, line: 198, baseType: !16, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !581, file: !55, line: 200, baseType: !16, size: 8, offset: 104)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !581, file: !55, line: 201, baseType: !16, size: 8, offset: 112)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !581, file: !55, line: 202, baseType: !486, size: 128, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !581, file: !55, line: 202, baseType: !53, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !581, file: !55, line: 202, baseType: !593, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !15, line: 128, baseType: !25)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !54, file: !55, line: 381, baseType: !595, size: 320)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !55, line: 205, size: 320, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !595, file: !55, line: 206, baseType: !53, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !595, file: !55, line: 206, baseType: !16, size: 8, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !595, file: !55, line: 206, baseType: !16, size: 8, offset: 72)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !595, file: !55, line: 206, baseType: !64, size: 16, offset: 80)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !595, file: !55, line: 206, baseType: !16, size: 8, offset: 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !595, file: !55, line: 206, baseType: !486, size: 128, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !595, file: !55, line: 206, baseType: !53, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !54, file: !55, line: 382, baseType: !605, size: 384)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !55, line: 233, size: 384, elements: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !605, file: !55, line: 234, baseType: !53, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !605, file: !55, line: 234, baseType: !16, size: 8, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !605, file: !55, line: 234, baseType: !16, size: 8, offset: 72)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !605, file: !55, line: 234, baseType: !64, size: 16, offset: 80)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !605, file: !55, line: 234, baseType: !16, size: 8, offset: 96)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !605, file: !55, line: 234, baseType: !16, size: 8, offset: 104)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !605, file: !55, line: 234, baseType: !16, size: 8, offset: 112)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !605, file: !55, line: 234, baseType: !16, size: 8, offset: 120)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !605, file: !55, line: 234, baseType: !48, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !605, file: !55, line: 234, baseType: !22, size: 32, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !605, file: !55, line: 234, baseType: !22, size: 32, offset: 224)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !605, file: !55, line: 234, baseType: !22, size: 32, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !605, file: !55, line: 234, baseType: !16, size: 8, offset: 288)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !605, file: !55, line: 234, baseType: !16, size: 8, offset: 296)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !605, file: !55, line: 234, baseType: !53, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !54, file: !55, line: 383, baseType: !623, size: 576)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !55, line: 237, size: 576, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !55, line: 238, baseType: !53, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !55, line: 238, baseType: !16, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !55, line: 238, baseType: !16, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !55, line: 238, baseType: !64, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !55, line: 238, baseType: !16, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !623, file: !55, line: 238, baseType: !16, size: 8, offset: 104)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !623, file: !55, line: 238, baseType: !16, size: 8, offset: 112)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !623, file: !55, line: 238, baseType: !16, size: 8, offset: 120)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !623, file: !55, line: 238, baseType: !48, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !623, file: !55, line: 238, baseType: !22, size: 32, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !623, file: !55, line: 238, baseType: !22, size: 32, offset: 224)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !623, file: !55, line: 238, baseType: !22, size: 32, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !623, file: !55, line: 238, baseType: !16, size: 8, offset: 288)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !623, file: !55, line: 238, baseType: !16, size: 8, offset: 296)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !623, file: !55, line: 238, baseType: !64, size: 16, offset: 304)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !623, file: !55, line: 239, baseType: !53, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !623, file: !55, line: 240, baseType: !101, size: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !623, file: !55, line: 241, baseType: !64, size: 16, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !623, file: !55, line: 242, baseType: !101, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !54, file: !55, line: 384, baseType: !645, size: 384)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !55, line: 262, size: 384, elements: !646)
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !645, file: !55, line: 263, baseType: !53, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !645, file: !55, line: 263, baseType: !16, size: 8, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !55, line: 263, baseType: !16, size: 8, offset: 72)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !645, file: !55, line: 263, baseType: !64, size: 16, offset: 80)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !645, file: !55, line: 263, baseType: !16, size: 8, offset: 96)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !645, file: !55, line: 263, baseType: !16, size: 8, offset: 104)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !645, file: !55, line: 263, baseType: !16, size: 8, offset: 112)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !645, file: !55, line: 263, baseType: !16, size: 8, offset: 120)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !645, file: !55, line: 263, baseType: !48, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !645, file: !55, line: 263, baseType: !22, size: 32, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !645, file: !55, line: 263, baseType: !22, size: 32, offset: 224)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !645, file: !55, line: 263, baseType: !22, size: 32, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !645, file: !55, line: 263, baseType: !16, size: 8, offset: 288)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !645, file: !55, line: 263, baseType: !16, size: 8, offset: 296)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !645, file: !55, line: 263, baseType: !16, size: 8, offset: 304)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !645, file: !55, line: 264, baseType: !53, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !54, file: !55, line: 385, baseType: !664, size: 448)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !55, line: 245, size: 448, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !664, file: !55, line: 246, baseType: !53, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !664, file: !55, line: 246, baseType: !16, size: 8, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !55, line: 246, baseType: !16, size: 8, offset: 72)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !664, file: !55, line: 246, baseType: !64, size: 16, offset: 80)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !55, line: 246, baseType: !16, size: 8, offset: 96)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !664, file: !55, line: 246, baseType: !16, size: 8, offset: 104)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !664, file: !55, line: 246, baseType: !16, size: 8, offset: 112)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !664, file: !55, line: 246, baseType: !16, size: 8, offset: 120)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !664, file: !55, line: 246, baseType: !48, size: 64, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !664, file: !55, line: 246, baseType: !22, size: 32, offset: 192)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !664, file: !55, line: 246, baseType: !22, size: 32, offset: 224)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !664, file: !55, line: 246, baseType: !22, size: 32, offset: 256)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !664, file: !55, line: 246, baseType: !16, size: 8, offset: 288)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !664, file: !55, line: 246, baseType: !16, size: 8, offset: 296)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !664, file: !55, line: 246, baseType: !53, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !664, file: !55, line: 247, baseType: !53, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !54, file: !55, line: 386, baseType: !683, size: 448)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !55, line: 250, size: 448, elements: !684)
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !683, file: !55, line: 251, baseType: !53, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !683, file: !55, line: 251, baseType: !16, size: 8, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !683, file: !55, line: 251, baseType: !16, size: 8, offset: 72)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !683, file: !55, line: 251, baseType: !64, size: 16, offset: 80)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !683, file: !55, line: 251, baseType: !16, size: 8, offset: 96)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !683, file: !55, line: 251, baseType: !16, size: 8, offset: 104)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !683, file: !55, line: 251, baseType: !16, size: 8, offset: 112)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !683, file: !55, line: 251, baseType: !16, size: 8, offset: 120)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !683, file: !55, line: 251, baseType: !48, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !683, file: !55, line: 251, baseType: !22, size: 32, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !683, file: !55, line: 251, baseType: !22, size: 32, offset: 224)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !683, file: !55, line: 251, baseType: !22, size: 32, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !683, file: !55, line: 251, baseType: !16, size: 8, offset: 288)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !683, file: !55, line: 251, baseType: !16, size: 8, offset: 296)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !683, file: !55, line: 256, baseType: !53, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !683, file: !55, line: 257, baseType: !53, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !54, file: !55, line: 387, baseType: !702, size: 512)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !55, line: 273, size: 512, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !702, file: !55, line: 274, baseType: !53, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !55, line: 274, baseType: !16, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !55, line: 274, baseType: !16, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !702, file: !55, line: 274, baseType: !64, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !55, line: 274, baseType: !16, size: 8, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !702, file: !55, line: 274, baseType: !48, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !702, file: !55, line: 275, baseType: !22, size: 32, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !702, file: !55, line: 276, baseType: !380, size: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !702, file: !55, line: 277, baseType: !30, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !55, line: 278, baseType: !486, size: 128, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !54, file: !55, line: 388, baseType: !715, size: 512)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !55, line: 281, size: 512, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !730, !731, !732, !738, !739}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !55, line: 282, baseType: !53, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !55, line: 282, baseType: !16, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !55, line: 282, baseType: !16, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !55, line: 282, baseType: !64, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !55, line: 282, baseType: !16, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !715, file: !55, line: 282, baseType: !16, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !715, file: !55, line: 283, baseType: !16, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !715, file: !55, line: 284, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !15, line: 1084, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!21, !22, !47, !22, !729, !30, !30}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !55, line: 285, baseType: !48, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !715, file: !55, line: 286, baseType: !30, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !715, file: !55, line: 287, baseType: !733, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !15, line: 1102, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!21, !384, !22, !30, !737}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !715, file: !55, line: 288, baseType: !53, size: 64, offset: 384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !55, line: 289, baseType: !53, size: 64, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !54, file: !55, line: 389, baseType: !741, size: 512)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !55, line: 307, size: 512, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !741, file: !55, line: 308, baseType: !53, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !741, file: !55, line: 308, baseType: !16, size: 8, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !741, file: !55, line: 308, baseType: !16, size: 8, offset: 72)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !741, file: !55, line: 308, baseType: !64, size: 16, offset: 80)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !55, line: 308, baseType: !16, size: 8, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !741, file: !55, line: 308, baseType: !16, size: 8, offset: 104)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !741, file: !55, line: 309, baseType: !16, size: 8, offset: 112)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !741, file: !55, line: 310, baseType: !16, size: 8, offset: 120)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !741, file: !55, line: 311, baseType: !30, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !55, line: 312, baseType: !48, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !741, file: !55, line: 313, baseType: !116, size: 64, offset: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !741, file: !55, line: 314, baseType: !101, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !741, file: !55, line: 315, baseType: !101, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !741, file: !55, line: 316, baseType: !22, size: 32, offset: 448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !54, file: !55, line: 390, baseType: !758, size: 448)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !55, line: 340, size: 448, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !758, file: !55, line: 341, baseType: !53, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !758, file: !55, line: 341, baseType: !16, size: 8, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !758, file: !55, line: 341, baseType: !16, size: 8, offset: 72)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !758, file: !55, line: 341, baseType: !64, size: 16, offset: 80)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !758, file: !55, line: 341, baseType: !16, size: 8, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !758, file: !55, line: 341, baseType: !48, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !758, file: !55, line: 342, baseType: !48, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !758, file: !55, line: 343, baseType: !30, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !758, file: !55, line: 344, baseType: !101, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !758, file: !55, line: 345, baseType: !22, size: 32, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !54, file: !55, line: 391, baseType: !771, size: 256)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !55, line: 350, size: 256, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778, !783}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !771, file: !55, line: 351, baseType: !53, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !771, file: !55, line: 351, baseType: !16, size: 8, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !771, file: !55, line: 351, baseType: !16, size: 8, offset: 72)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !771, file: !55, line: 351, baseType: !64, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !55, line: 351, baseType: !16, size: 8, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !771, file: !55, line: 351, baseType: !779, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !15, line: 1055, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !384, !30}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !771, file: !55, line: 352, baseType: !30, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !54, file: !55, line: 392, baseType: !785, size: 192)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !55, line: 357, size: 192, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !785, file: !55, line: 358, baseType: !53, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !785, file: !55, line: 358, baseType: !16, size: 8, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !785, file: !55, line: 358, baseType: !16, size: 8, offset: 72)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !785, file: !55, line: 358, baseType: !64, size: 16, offset: 80)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !55, line: 358, baseType: !16, size: 8, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !785, file: !55, line: 358, baseType: !53, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !54, file: !55, line: 399, baseType: !49, size: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !49, file: !50, line: 135, baseType: !16, size: 8, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !50, line: 136, baseType: !16, size: 8, offset: 72)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !49, file: !50, line: 137, baseType: !64, size: 16, offset: 80)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !49, file: !50, line: 138, baseType: !798, size: 32, offset: 96)
!798 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !799, line: 327, size: 32, elements: !800)
!799 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/lizy2001/genbc/linux")
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !798, file: !799, line: 328, baseType: !22, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !798, file: !799, line: 329, baseType: !245, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !49, file: !50, line: 139, baseType: !48, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !49, file: !50, line: 140, baseType: !48, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !49, file: !50, line: 141, baseType: !48, size: 64, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !49, file: !50, line: 142, baseType: !163, size: 16, offset: 320)
!807 = !{}
!808 = !DILocalVariable(name: "space_id", arg: 1, scope: !44, file: !3, line: 41, type: !14)
!809 = !DILocation(line: 41, column: 47, scope: !44)
!810 = !DILocalVariable(name: "address", arg: 2, scope: !44, file: !3, line: 42, type: !47)
!811 = !DILocation(line: 42, column: 28, scope: !44)
!812 = !DILocalVariable(name: "length", arg: 3, scope: !44, file: !3, line: 43, type: !22)
!813 = !DILocation(line: 43, column: 10, scope: !44)
!814 = !DILocalVariable(name: "region_node", arg: 4, scope: !44, file: !3, line: 43, type: !48)
!815 = !DILocation(line: 43, column: 46, scope: !44)
!816 = !DILocalVariable(name: "range_info", scope: !44, file: !3, line: 45, type: !817)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address_range", file: !50, line: 686, size: 256, elements: !819)
!819 = !{!820, !821, !822, !823}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !818, file: !50, line: 687, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "region_node", scope: !818, file: !50, line: 688, baseType: !48, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "start_address", scope: !818, file: !50, line: 689, baseType: !47, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "end_address", scope: !818, file: !50, line: 690, baseType: !47, size: 64, offset: 192)
!824 = !DILocation(line: 45, column: 29, scope: !44)
!825 = !DILocation(line: 49, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !44, file: !3, line: 49, column: 6)
!827 = !DILocation(line: 49, column: 16, scope: !826)
!828 = !DILocation(line: 49, column: 49, scope: !826)
!829 = !DILocation(line: 50, column: 7, scope: !826)
!830 = !DILocation(line: 50, column: 16, scope: !826)
!831 = !DILocation(line: 49, column: 6, scope: !44)
!832 = !DILocation(line: 51, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !826, file: !3, line: 50, column: 46)
!834 = !DILocation(line: 56, column: 15, scope: !44)
!835 = !DILocation(line: 56, column: 13, scope: !44)
!836 = !DILocation(line: 57, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !44, file: !3, line: 57, column: 6)
!838 = !DILocation(line: 57, column: 6, scope: !44)
!839 = !DILocation(line: 58, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !837, file: !3, line: 57, column: 19)
!841 = !DILocation(line: 61, column: 30, scope: !44)
!842 = !DILocation(line: 61, column: 2, scope: !44)
!843 = !DILocation(line: 61, column: 14, scope: !44)
!844 = !DILocation(line: 61, column: 28, scope: !44)
!845 = !DILocation(line: 62, column: 29, scope: !44)
!846 = !DILocation(line: 62, column: 39, scope: !44)
!847 = !DILocation(line: 62, column: 37, scope: !44)
!848 = !DILocation(line: 62, column: 46, scope: !44)
!849 = !DILocation(line: 62, column: 2, scope: !44)
!850 = !DILocation(line: 62, column: 14, scope: !44)
!851 = !DILocation(line: 62, column: 26, scope: !44)
!852 = !DILocation(line: 63, column: 28, scope: !44)
!853 = !DILocation(line: 63, column: 2, scope: !44)
!854 = !DILocation(line: 63, column: 14, scope: !44)
!855 = !DILocation(line: 63, column: 26, scope: !44)
!856 = !DILocation(line: 65, column: 49, scope: !44)
!857 = !DILocation(line: 65, column: 21, scope: !44)
!858 = !DILocation(line: 65, column: 2, scope: !44)
!859 = !DILocation(line: 65, column: 14, scope: !44)
!860 = !DILocation(line: 65, column: 19, scope: !44)
!861 = !DILocation(line: 66, column: 42, scope: !44)
!862 = !DILocation(line: 66, column: 30, scope: !44)
!863 = !DILocation(line: 66, column: 2, scope: !44)
!864 = !DILocation(line: 66, column: 40, scope: !44)
!865 = !DILocation(line: 74, column: 2, scope: !44)
!866 = !DILocation(line: 75, column: 1, scope: !44)
!867 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !868, file: !868, line: 50, type: !869, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!868 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!869 = !DISubroutineType(types: !870)
!870 = !{!30, !24}
!871 = !DILocalVariable(name: "s", arg: 1, scope: !872, file: !6, line: 445, type: !875)
!872 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !6, file: !6, line: 445, type: !873, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!873 = !DISubroutineType(types: !874)
!874 = !{!30, !875, !28, !878}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !877, line: 117, flags: DIFlagFwdDecl)
!877 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 55, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !880, line: 72, baseType: !881)
!880 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !880, line: 16, baseType: !31)
!882 = !DILocation(line: 445, column: 72, scope: !872, inlinedAt: !883)
!883 = distinct !DILocation(line: 552, column: 10, scope: !884, inlinedAt: !889)
!884 = distinct !DILexicalBlock(scope: !885, file: !6, line: 540, column: 34)
!885 = distinct !DILexicalBlock(scope: !886, file: !6, line: 540, column: 6)
!886 = distinct !DISubprogram(name: "kmalloc", scope: !6, file: !6, line: 538, type: !887, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!887 = !DISubroutineType(types: !888)
!888 = !{!30, !878, !28}
!889 = distinct !DILocation(line: 52, column: 9, scope: !867)
!890 = !DILocalVariable(name: "flags", arg: 2, scope: !872, file: !6, line: 446, type: !28)
!891 = !DILocation(line: 446, column: 9, scope: !872, inlinedAt: !883)
!892 = !DILocalVariable(name: "size", arg: 3, scope: !872, file: !6, line: 446, type: !878)
!893 = !DILocation(line: 446, column: 23, scope: !872, inlinedAt: !883)
!894 = !DILocalVariable(name: "ret", scope: !872, file: !6, line: 448, type: !30)
!895 = !DILocation(line: 448, column: 8, scope: !872, inlinedAt: !883)
!896 = !DILocalVariable(name: "flags", arg: 1, scope: !897, file: !6, line: 318, type: !28)
!897 = distinct !DISubprogram(name: "kmalloc_type", scope: !6, file: !6, line: 318, type: !898, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!898 = !DISubroutineType(types: !899)
!899 = !{!5, !28}
!900 = !DILocation(line: 318, column: 67, scope: !897, inlinedAt: !901)
!901 = distinct !DILocation(line: 553, column: 20, scope: !884, inlinedAt: !889)
!902 = !DILocalVariable(name: "size", arg: 1, scope: !903, file: !6, line: 346, type: !878)
!903 = distinct !DISubprogram(name: "kmalloc_index", scope: !6, file: !6, line: 346, type: !904, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!904 = !DISubroutineType(types: !905)
!905 = !{!7, !878}
!906 = !DILocation(line: 346, column: 58, scope: !903, inlinedAt: !907)
!907 = distinct !DILocation(line: 547, column: 11, scope: !884, inlinedAt: !889)
!908 = !DILocalVariable(name: "size", arg: 1, scope: !909, file: !6, line: 472, type: !878)
!909 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !6, file: !6, line: 472, type: !910, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!910 = !DISubroutineType(types: !911)
!911 = !{!30, !878, !28, !7}
!912 = !DILocation(line: 472, column: 28, scope: !909, inlinedAt: !913)
!913 = distinct !DILocation(line: 481, column: 9, scope: !914, inlinedAt: !915)
!914 = distinct !DISubprogram(name: "kmalloc_large", scope: !6, file: !6, line: 478, type: !887, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!915 = distinct !DILocation(line: 545, column: 11, scope: !916, inlinedAt: !889)
!916 = distinct !DILexicalBlock(scope: !884, file: !6, line: 544, column: 7)
!917 = !DILocalVariable(name: "flags", arg: 2, scope: !909, file: !6, line: 472, type: !28)
!918 = !DILocation(line: 472, column: 40, scope: !909, inlinedAt: !913)
!919 = !DILocalVariable(name: "order", arg: 3, scope: !909, file: !6, line: 472, type: !7)
!920 = !DILocation(line: 472, column: 60, scope: !909, inlinedAt: !913)
!921 = !DILocalVariable(name: "size", arg: 1, scope: !914, file: !6, line: 478, type: !878)
!922 = !DILocation(line: 478, column: 51, scope: !914, inlinedAt: !915)
!923 = !DILocalVariable(name: "flags", arg: 2, scope: !914, file: !6, line: 478, type: !28)
!924 = !DILocation(line: 478, column: 63, scope: !914, inlinedAt: !915)
!925 = !DILocalVariable(name: "order", scope: !914, file: !6, line: 480, type: !7)
!926 = !DILocation(line: 480, column: 15, scope: !914, inlinedAt: !915)
!927 = !DILocalVariable(name: "size", arg: 1, scope: !886, file: !6, line: 538, type: !878)
!928 = !DILocation(line: 538, column: 45, scope: !886, inlinedAt: !889)
!929 = !DILocalVariable(name: "flags", arg: 2, scope: !886, file: !6, line: 538, type: !28)
!930 = !DILocation(line: 538, column: 57, scope: !886, inlinedAt: !889)
!931 = !DILocalVariable(name: "index", scope: !884, file: !6, line: 542, type: !7)
!932 = !DILocation(line: 542, column: 16, scope: !884, inlinedAt: !889)
!933 = !DILocalVariable(name: "flags", arg: 1, scope: !934, file: !935, line: 162, type: !31)
!934 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !935, file: !935, line: 162, type: !936, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!935 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!936 = !DISubroutineType(types: !937)
!937 = !{!938, !31}
!938 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!939 = !DILocation(line: 162, column: 67, scope: !934, inlinedAt: !940)
!940 = distinct !DILocation(line: 52, column: 23, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !868, line: 52, column: 23)
!942 = distinct !DILexicalBlock(scope: !867, file: !868, line: 52, column: 23)
!943 = !DILocalVariable(name: "size", arg: 1, scope: !867, file: !868, line: 50, type: !24)
!944 = !DILocation(line: 50, column: 48, scope: !867)
!945 = !DILocation(line: 52, column: 17, scope: !867)
!946 = !DILocalVariable(name: "_flags", scope: !942, file: !868, line: 52, type: !31)
!947 = !DILocation(line: 52, column: 23, scope: !942)
!948 = !DILocalVariable(name: "__dummy", scope: !949, file: !868, line: 52, type: !31)
!949 = distinct !DILexicalBlock(scope: !950, file: !868, line: 52, column: 23)
!950 = distinct !DILexicalBlock(scope: !942, file: !868, line: 52, column: 23)
!951 = !DILocation(line: 52, column: 23, scope: !949)
!952 = !DILocalVariable(name: "__dummy2", scope: !949, file: !868, line: 52, type: !31)
!953 = !DILocation(line: 52, column: 23, scope: !950)
!954 = !DILocalVariable(name: "__dummy", scope: !955, file: !868, line: 52, type: !31)
!955 = distinct !DILexicalBlock(scope: !941, file: !868, line: 52, column: 23)
!956 = !DILocation(line: 52, column: 23, scope: !955)
!957 = !DILocalVariable(name: "__dummy2", scope: !955, file: !868, line: 52, type: !31)
!958 = !DILocation(line: 52, column: 23, scope: !941)
!959 = !DILocation(line: 164, column: 11, scope: !934, inlinedAt: !940)
!960 = !DILocation(line: 164, column: 17, scope: !934, inlinedAt: !940)
!961 = !DILocation(line: 164, column: 9, scope: !934, inlinedAt: !940)
!962 = !DILocation(line: 52, column: 23, scope: !867)
!963 = !DILocation(line: 540, column: 27, scope: !885, inlinedAt: !889)
!964 = !DILocation(line: 540, column: 6, scope: !885, inlinedAt: !889)
!965 = !DILocation(line: 540, column: 6, scope: !886, inlinedAt: !889)
!966 = !DILocation(line: 544, column: 7, scope: !916, inlinedAt: !889)
!967 = !DILocation(line: 544, column: 12, scope: !916, inlinedAt: !889)
!968 = !DILocation(line: 544, column: 7, scope: !884, inlinedAt: !889)
!969 = !DILocation(line: 545, column: 25, scope: !916, inlinedAt: !889)
!970 = !DILocation(line: 545, column: 31, scope: !916, inlinedAt: !889)
!971 = !DILocation(line: 480, column: 33, scope: !914, inlinedAt: !915)
!972 = !DILocation(line: 480, column: 23, scope: !914, inlinedAt: !915)
!973 = !DILocation(line: 481, column: 29, scope: !914, inlinedAt: !915)
!974 = !DILocation(line: 481, column: 35, scope: !914, inlinedAt: !915)
!975 = !DILocation(line: 481, column: 42, scope: !914, inlinedAt: !915)
!976 = !DILocation(line: 474, column: 23, scope: !909, inlinedAt: !913)
!977 = !DILocation(line: 474, column: 29, scope: !909, inlinedAt: !913)
!978 = !DILocation(line: 474, column: 36, scope: !909, inlinedAt: !913)
!979 = !DILocation(line: 474, column: 9, scope: !909, inlinedAt: !913)
!980 = !DILocation(line: 545, column: 4, scope: !916, inlinedAt: !889)
!981 = !DILocation(line: 547, column: 25, scope: !884, inlinedAt: !889)
!982 = !DILocation(line: 348, column: 7, scope: !983, inlinedAt: !907)
!983 = distinct !DILexicalBlock(scope: !903, file: !6, line: 348, column: 6)
!984 = !DILocation(line: 348, column: 6, scope: !903, inlinedAt: !907)
!985 = !DILocation(line: 349, column: 3, scope: !983, inlinedAt: !907)
!986 = !DILocation(line: 351, column: 6, scope: !987, inlinedAt: !907)
!987 = distinct !DILexicalBlock(scope: !903, file: !6, line: 351, column: 6)
!988 = !DILocation(line: 351, column: 11, scope: !987, inlinedAt: !907)
!989 = !DILocation(line: 351, column: 6, scope: !903, inlinedAt: !907)
!990 = !DILocation(line: 352, column: 3, scope: !987, inlinedAt: !907)
!991 = !DILocation(line: 354, column: 32, scope: !992, inlinedAt: !907)
!992 = distinct !DILexicalBlock(scope: !903, file: !6, line: 354, column: 6)
!993 = !DILocation(line: 354, column: 37, scope: !992, inlinedAt: !907)
!994 = !DILocation(line: 354, column: 42, scope: !992, inlinedAt: !907)
!995 = !DILocation(line: 354, column: 45, scope: !992, inlinedAt: !907)
!996 = !DILocation(line: 354, column: 50, scope: !992, inlinedAt: !907)
!997 = !DILocation(line: 354, column: 6, scope: !903, inlinedAt: !907)
!998 = !DILocation(line: 355, column: 3, scope: !992, inlinedAt: !907)
!999 = !DILocation(line: 356, column: 32, scope: !1000, inlinedAt: !907)
!1000 = distinct !DILexicalBlock(scope: !903, file: !6, line: 356, column: 6)
!1001 = !DILocation(line: 356, column: 37, scope: !1000, inlinedAt: !907)
!1002 = !DILocation(line: 356, column: 43, scope: !1000, inlinedAt: !907)
!1003 = !DILocation(line: 356, column: 46, scope: !1000, inlinedAt: !907)
!1004 = !DILocation(line: 356, column: 51, scope: !1000, inlinedAt: !907)
!1005 = !DILocation(line: 356, column: 6, scope: !903, inlinedAt: !907)
!1006 = !DILocation(line: 357, column: 3, scope: !1000, inlinedAt: !907)
!1007 = !DILocation(line: 358, column: 6, scope: !1008, inlinedAt: !907)
!1008 = distinct !DILexicalBlock(scope: !903, file: !6, line: 358, column: 6)
!1009 = !DILocation(line: 358, column: 11, scope: !1008, inlinedAt: !907)
!1010 = !DILocation(line: 358, column: 6, scope: !903, inlinedAt: !907)
!1011 = !DILocation(line: 358, column: 26, scope: !1008, inlinedAt: !907)
!1012 = !DILocation(line: 359, column: 6, scope: !1013, inlinedAt: !907)
!1013 = distinct !DILexicalBlock(scope: !903, file: !6, line: 359, column: 6)
!1014 = !DILocation(line: 359, column: 11, scope: !1013, inlinedAt: !907)
!1015 = !DILocation(line: 359, column: 6, scope: !903, inlinedAt: !907)
!1016 = !DILocation(line: 359, column: 26, scope: !1013, inlinedAt: !907)
!1017 = !DILocation(line: 360, column: 6, scope: !1018, inlinedAt: !907)
!1018 = distinct !DILexicalBlock(scope: !903, file: !6, line: 360, column: 6)
!1019 = !DILocation(line: 360, column: 11, scope: !1018, inlinedAt: !907)
!1020 = !DILocation(line: 360, column: 6, scope: !903, inlinedAt: !907)
!1021 = !DILocation(line: 360, column: 26, scope: !1018, inlinedAt: !907)
!1022 = !DILocation(line: 361, column: 6, scope: !1023, inlinedAt: !907)
!1023 = distinct !DILexicalBlock(scope: !903, file: !6, line: 361, column: 6)
!1024 = !DILocation(line: 361, column: 11, scope: !1023, inlinedAt: !907)
!1025 = !DILocation(line: 361, column: 6, scope: !903, inlinedAt: !907)
!1026 = !DILocation(line: 361, column: 26, scope: !1023, inlinedAt: !907)
!1027 = !DILocation(line: 362, column: 6, scope: !1028, inlinedAt: !907)
!1028 = distinct !DILexicalBlock(scope: !903, file: !6, line: 362, column: 6)
!1029 = !DILocation(line: 362, column: 11, scope: !1028, inlinedAt: !907)
!1030 = !DILocation(line: 362, column: 6, scope: !903, inlinedAt: !907)
!1031 = !DILocation(line: 362, column: 26, scope: !1028, inlinedAt: !907)
!1032 = !DILocation(line: 363, column: 6, scope: !1033, inlinedAt: !907)
!1033 = distinct !DILexicalBlock(scope: !903, file: !6, line: 363, column: 6)
!1034 = !DILocation(line: 363, column: 11, scope: !1033, inlinedAt: !907)
!1035 = !DILocation(line: 363, column: 6, scope: !903, inlinedAt: !907)
!1036 = !DILocation(line: 363, column: 26, scope: !1033, inlinedAt: !907)
!1037 = !DILocation(line: 364, column: 6, scope: !1038, inlinedAt: !907)
!1038 = distinct !DILexicalBlock(scope: !903, file: !6, line: 364, column: 6)
!1039 = !DILocation(line: 364, column: 11, scope: !1038, inlinedAt: !907)
!1040 = !DILocation(line: 364, column: 6, scope: !903, inlinedAt: !907)
!1041 = !DILocation(line: 364, column: 26, scope: !1038, inlinedAt: !907)
!1042 = !DILocation(line: 365, column: 6, scope: !1043, inlinedAt: !907)
!1043 = distinct !DILexicalBlock(scope: !903, file: !6, line: 365, column: 6)
!1044 = !DILocation(line: 365, column: 11, scope: !1043, inlinedAt: !907)
!1045 = !DILocation(line: 365, column: 6, scope: !903, inlinedAt: !907)
!1046 = !DILocation(line: 365, column: 26, scope: !1043, inlinedAt: !907)
!1047 = !DILocation(line: 366, column: 6, scope: !1048, inlinedAt: !907)
!1048 = distinct !DILexicalBlock(scope: !903, file: !6, line: 366, column: 6)
!1049 = !DILocation(line: 366, column: 11, scope: !1048, inlinedAt: !907)
!1050 = !DILocation(line: 366, column: 6, scope: !903, inlinedAt: !907)
!1051 = !DILocation(line: 366, column: 26, scope: !1048, inlinedAt: !907)
!1052 = !DILocation(line: 367, column: 6, scope: !1053, inlinedAt: !907)
!1053 = distinct !DILexicalBlock(scope: !903, file: !6, line: 367, column: 6)
!1054 = !DILocation(line: 367, column: 11, scope: !1053, inlinedAt: !907)
!1055 = !DILocation(line: 367, column: 6, scope: !903, inlinedAt: !907)
!1056 = !DILocation(line: 367, column: 26, scope: !1053, inlinedAt: !907)
!1057 = !DILocation(line: 368, column: 6, scope: !1058, inlinedAt: !907)
!1058 = distinct !DILexicalBlock(scope: !903, file: !6, line: 368, column: 6)
!1059 = !DILocation(line: 368, column: 11, scope: !1058, inlinedAt: !907)
!1060 = !DILocation(line: 368, column: 6, scope: !903, inlinedAt: !907)
!1061 = !DILocation(line: 368, column: 26, scope: !1058, inlinedAt: !907)
!1062 = !DILocation(line: 369, column: 6, scope: !1063, inlinedAt: !907)
!1063 = distinct !DILexicalBlock(scope: !903, file: !6, line: 369, column: 6)
!1064 = !DILocation(line: 369, column: 11, scope: !1063, inlinedAt: !907)
!1065 = !DILocation(line: 369, column: 6, scope: !903, inlinedAt: !907)
!1066 = !DILocation(line: 369, column: 26, scope: !1063, inlinedAt: !907)
!1067 = !DILocation(line: 370, column: 6, scope: !1068, inlinedAt: !907)
!1068 = distinct !DILexicalBlock(scope: !903, file: !6, line: 370, column: 6)
!1069 = !DILocation(line: 370, column: 11, scope: !1068, inlinedAt: !907)
!1070 = !DILocation(line: 370, column: 6, scope: !903, inlinedAt: !907)
!1071 = !DILocation(line: 370, column: 26, scope: !1068, inlinedAt: !907)
!1072 = !DILocation(line: 371, column: 6, scope: !1073, inlinedAt: !907)
!1073 = distinct !DILexicalBlock(scope: !903, file: !6, line: 371, column: 6)
!1074 = !DILocation(line: 371, column: 11, scope: !1073, inlinedAt: !907)
!1075 = !DILocation(line: 371, column: 6, scope: !903, inlinedAt: !907)
!1076 = !DILocation(line: 371, column: 26, scope: !1073, inlinedAt: !907)
!1077 = !DILocation(line: 372, column: 6, scope: !1078, inlinedAt: !907)
!1078 = distinct !DILexicalBlock(scope: !903, file: !6, line: 372, column: 6)
!1079 = !DILocation(line: 372, column: 11, scope: !1078, inlinedAt: !907)
!1080 = !DILocation(line: 372, column: 6, scope: !903, inlinedAt: !907)
!1081 = !DILocation(line: 372, column: 26, scope: !1078, inlinedAt: !907)
!1082 = !DILocation(line: 373, column: 6, scope: !1083, inlinedAt: !907)
!1083 = distinct !DILexicalBlock(scope: !903, file: !6, line: 373, column: 6)
!1084 = !DILocation(line: 373, column: 11, scope: !1083, inlinedAt: !907)
!1085 = !DILocation(line: 373, column: 6, scope: !903, inlinedAt: !907)
!1086 = !DILocation(line: 373, column: 26, scope: !1083, inlinedAt: !907)
!1087 = !DILocation(line: 374, column: 6, scope: !1088, inlinedAt: !907)
!1088 = distinct !DILexicalBlock(scope: !903, file: !6, line: 374, column: 6)
!1089 = !DILocation(line: 374, column: 11, scope: !1088, inlinedAt: !907)
!1090 = !DILocation(line: 374, column: 6, scope: !903, inlinedAt: !907)
!1091 = !DILocation(line: 374, column: 26, scope: !1088, inlinedAt: !907)
!1092 = !DILocation(line: 375, column: 6, scope: !1093, inlinedAt: !907)
!1093 = distinct !DILexicalBlock(scope: !903, file: !6, line: 375, column: 6)
!1094 = !DILocation(line: 375, column: 11, scope: !1093, inlinedAt: !907)
!1095 = !DILocation(line: 375, column: 6, scope: !903, inlinedAt: !907)
!1096 = !DILocation(line: 375, column: 27, scope: !1093, inlinedAt: !907)
!1097 = !DILocation(line: 376, column: 6, scope: !1098, inlinedAt: !907)
!1098 = distinct !DILexicalBlock(scope: !903, file: !6, line: 376, column: 6)
!1099 = !DILocation(line: 376, column: 11, scope: !1098, inlinedAt: !907)
!1100 = !DILocation(line: 376, column: 6, scope: !903, inlinedAt: !907)
!1101 = !DILocation(line: 376, column: 32, scope: !1098, inlinedAt: !907)
!1102 = !DILocation(line: 377, column: 6, scope: !1103, inlinedAt: !907)
!1103 = distinct !DILexicalBlock(scope: !903, file: !6, line: 377, column: 6)
!1104 = !DILocation(line: 377, column: 11, scope: !1103, inlinedAt: !907)
!1105 = !DILocation(line: 377, column: 6, scope: !903, inlinedAt: !907)
!1106 = !DILocation(line: 377, column: 32, scope: !1103, inlinedAt: !907)
!1107 = !DILocation(line: 378, column: 6, scope: !1108, inlinedAt: !907)
!1108 = distinct !DILexicalBlock(scope: !903, file: !6, line: 378, column: 6)
!1109 = !DILocation(line: 378, column: 11, scope: !1108, inlinedAt: !907)
!1110 = !DILocation(line: 378, column: 6, scope: !903, inlinedAt: !907)
!1111 = !DILocation(line: 378, column: 32, scope: !1108, inlinedAt: !907)
!1112 = !DILocation(line: 379, column: 6, scope: !1113, inlinedAt: !907)
!1113 = distinct !DILexicalBlock(scope: !903, file: !6, line: 379, column: 6)
!1114 = !DILocation(line: 379, column: 11, scope: !1113, inlinedAt: !907)
!1115 = !DILocation(line: 379, column: 6, scope: !903, inlinedAt: !907)
!1116 = !DILocation(line: 379, column: 33, scope: !1113, inlinedAt: !907)
!1117 = !DILocation(line: 380, column: 6, scope: !1118, inlinedAt: !907)
!1118 = distinct !DILexicalBlock(scope: !903, file: !6, line: 380, column: 6)
!1119 = !DILocation(line: 380, column: 11, scope: !1118, inlinedAt: !907)
!1120 = !DILocation(line: 380, column: 6, scope: !903, inlinedAt: !907)
!1121 = !DILocation(line: 380, column: 33, scope: !1118, inlinedAt: !907)
!1122 = !DILocation(line: 381, column: 6, scope: !1123, inlinedAt: !907)
!1123 = distinct !DILexicalBlock(scope: !903, file: !6, line: 381, column: 6)
!1124 = !DILocation(line: 381, column: 11, scope: !1123, inlinedAt: !907)
!1125 = !DILocation(line: 381, column: 6, scope: !903, inlinedAt: !907)
!1126 = !DILocation(line: 381, column: 33, scope: !1123, inlinedAt: !907)
!1127 = !DILocation(line: 382, column: 2, scope: !1128, inlinedAt: !907)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !6, line: 382, column: 2)
!1129 = distinct !DILexicalBlock(scope: !903, file: !6, line: 382, column: 2)
!1130 = !{i32 -2144112361, i32 -2144112332, i32 -2144112286, i32 -2144112228, i32 -2144112174, i32 -2144112120, i32 -2144112065, i32 -2144112034}
!1131 = !DILocation(line: 382, column: 2, scope: !1132, inlinedAt: !907)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !6, line: 382, column: 2)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !6, line: 382, column: 2)
!1134 = !{i32 -2144111591, i32 -2144111584, i32 -2144111530, i32 -2144111499, i32 -2144111469}
!1135 = !DILocation(line: 382, column: 2, scope: !1133, inlinedAt: !907)
!1136 = !DILocation(line: 386, column: 1, scope: !903, inlinedAt: !907)
!1137 = !DILocation(line: 547, column: 9, scope: !884, inlinedAt: !889)
!1138 = !DILocation(line: 549, column: 8, scope: !1139, inlinedAt: !889)
!1139 = distinct !DILexicalBlock(scope: !884, file: !6, line: 549, column: 7)
!1140 = !DILocation(line: 549, column: 7, scope: !884, inlinedAt: !889)
!1141 = !DILocation(line: 550, column: 4, scope: !1139, inlinedAt: !889)
!1142 = !DILocation(line: 553, column: 33, scope: !884, inlinedAt: !889)
!1143 = !DILocation(line: 325, column: 6, scope: !1144, inlinedAt: !901)
!1144 = distinct !DILexicalBlock(scope: !897, file: !6, line: 325, column: 6)
!1145 = !DILocation(line: 325, column: 6, scope: !897, inlinedAt: !901)
!1146 = !DILocation(line: 326, column: 3, scope: !1144, inlinedAt: !901)
!1147 = !DILocation(line: 332, column: 9, scope: !897, inlinedAt: !901)
!1148 = !DILocation(line: 332, column: 15, scope: !897, inlinedAt: !901)
!1149 = !DILocation(line: 332, column: 2, scope: !897, inlinedAt: !901)
!1150 = !DILocation(line: 336, column: 1, scope: !897, inlinedAt: !901)
!1151 = !DILocation(line: 553, column: 5, scope: !884, inlinedAt: !889)
!1152 = !DILocation(line: 553, column: 41, scope: !884, inlinedAt: !889)
!1153 = !DILocation(line: 554, column: 5, scope: !884, inlinedAt: !889)
!1154 = !DILocation(line: 554, column: 12, scope: !884, inlinedAt: !889)
!1155 = !DILocation(line: 448, column: 31, scope: !872, inlinedAt: !883)
!1156 = !DILocation(line: 448, column: 34, scope: !872, inlinedAt: !883)
!1157 = !DILocation(line: 448, column: 14, scope: !872, inlinedAt: !883)
!1158 = !DILocation(line: 450, column: 22, scope: !872, inlinedAt: !883)
!1159 = !DILocation(line: 450, column: 25, scope: !872, inlinedAt: !883)
!1160 = !DILocation(line: 450, column: 30, scope: !872, inlinedAt: !883)
!1161 = !DILocation(line: 450, column: 36, scope: !872, inlinedAt: !883)
!1162 = !DILocation(line: 450, column: 8, scope: !872, inlinedAt: !883)
!1163 = !DILocation(line: 450, column: 6, scope: !872, inlinedAt: !883)
!1164 = !DILocation(line: 451, column: 9, scope: !872, inlinedAt: !883)
!1165 = !DILocation(line: 552, column: 3, scope: !884, inlinedAt: !889)
!1166 = !DILocation(line: 557, column: 19, scope: !886, inlinedAt: !889)
!1167 = !DILocation(line: 557, column: 25, scope: !886, inlinedAt: !889)
!1168 = !DILocation(line: 557, column: 9, scope: !886, inlinedAt: !889)
!1169 = !DILocation(line: 557, column: 2, scope: !886, inlinedAt: !889)
!1170 = !DILocation(line: 558, column: 1, scope: !886, inlinedAt: !889)
!1171 = !DILocation(line: 52, column: 2, scope: !867)
!1172 = distinct !DISubprogram(name: "acpi_ut_remove_address_range", scope: !3, file: !3, line: 95, type: !1173, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !14, !48}
!1175 = !DILocalVariable(name: "space_id", arg: 1, scope: !1172, file: !3, line: 95, type: !14)
!1176 = !DILocation(line: 95, column: 50, scope: !1172)
!1177 = !DILocalVariable(name: "region_node", arg: 2, scope: !1172, file: !3, line: 96, type: !48)
!1178 = !DILocation(line: 96, column: 37, scope: !1172)
!1179 = !DILocalVariable(name: "range_info", scope: !1172, file: !3, line: 98, type: !817)
!1180 = !DILocation(line: 98, column: 29, scope: !1172)
!1181 = !DILocalVariable(name: "prev", scope: !1172, file: !3, line: 99, type: !817)
!1182 = !DILocation(line: 99, column: 29, scope: !1172)
!1183 = !DILocation(line: 103, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 103, column: 6)
!1185 = !DILocation(line: 103, column: 16, scope: !1184)
!1186 = !DILocation(line: 103, column: 49, scope: !1184)
!1187 = !DILocation(line: 104, column: 7, scope: !1184)
!1188 = !DILocation(line: 104, column: 16, scope: !1184)
!1189 = !DILocation(line: 103, column: 6, scope: !1172)
!1190 = !DILocation(line: 105, column: 3, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 104, column: 46)
!1192 = !DILocation(line: 110, column: 50, scope: !1172)
!1193 = !DILocation(line: 110, column: 22, scope: !1172)
!1194 = !DILocation(line: 110, column: 20, scope: !1172)
!1195 = !DILocation(line: 110, column: 13, scope: !1172)
!1196 = !DILocation(line: 111, column: 2, scope: !1172)
!1197 = !DILocation(line: 111, column: 9, scope: !1172)
!1198 = !DILocation(line: 112, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 112, column: 7)
!1200 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 111, column: 21)
!1201 = !DILocation(line: 112, column: 19, scope: !1199)
!1202 = !DILocation(line: 112, column: 34, scope: !1199)
!1203 = !DILocation(line: 112, column: 31, scope: !1199)
!1204 = !DILocation(line: 112, column: 7, scope: !1200)
!1205 = !DILocation(line: 113, column: 8, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 113, column: 8)
!1207 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 112, column: 47)
!1208 = !DILocation(line: 113, column: 22, scope: !1206)
!1209 = !DILocation(line: 113, column: 19, scope: !1206)
!1210 = !DILocation(line: 113, column: 8, scope: !1207)
!1211 = !DILocation(line: 115, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 113, column: 28)
!1213 = !DILocation(line: 115, column: 21, scope: !1212)
!1214 = !DILocation(line: 114, column: 33, scope: !1212)
!1215 = !DILocation(line: 114, column: 5, scope: !1212)
!1216 = !DILocation(line: 114, column: 43, scope: !1212)
!1217 = !DILocation(line: 116, column: 4, scope: !1212)
!1218 = !DILocation(line: 117, column: 18, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 116, column: 11)
!1220 = !DILocation(line: 117, column: 30, scope: !1219)
!1221 = !DILocation(line: 117, column: 5, scope: !1219)
!1222 = !DILocation(line: 117, column: 11, scope: !1219)
!1223 = !DILocation(line: 117, column: 16, scope: !1219)
!1224 = !DILocation(line: 129, column: 4, scope: !1207)
!1225 = !DILocation(line: 130, column: 4, scope: !1207)
!1226 = !DILocation(line: 133, column: 10, scope: !1200)
!1227 = !DILocation(line: 133, column: 8, scope: !1200)
!1228 = !DILocation(line: 134, column: 16, scope: !1200)
!1229 = !DILocation(line: 134, column: 28, scope: !1200)
!1230 = !DILocation(line: 134, column: 14, scope: !1200)
!1231 = distinct !{!1231, !1196, !1232}
!1232 = !DILocation(line: 135, column: 2, scope: !1172)
!1233 = !DILocation(line: 137, column: 2, scope: !1172)
!1234 = !DILocation(line: 138, column: 1, scope: !1172)
!1235 = distinct !DISubprogram(name: "acpi_os_free", scope: !868, file: !868, line: 60, type: !1236, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !30}
!1238 = !DILocalVariable(name: "memory", arg: 1, scope: !1235, file: !868, line: 60, type: !30)
!1239 = !DILocation(line: 60, column: 39, scope: !1235)
!1240 = !DILocation(line: 62, column: 8, scope: !1235)
!1241 = !DILocation(line: 62, column: 2, scope: !1235)
!1242 = !DILocation(line: 63, column: 1, scope: !1235)
!1243 = distinct !DISubprogram(name: "acpi_ut_check_address_range", scope: !3, file: !3, line: 161, type: !1244, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!22, !14, !47, !22, !16}
!1246 = !DILocalVariable(name: "space_id", arg: 1, scope: !1243, file: !3, line: 161, type: !14)
!1247 = !DILocation(line: 161, column: 49, scope: !1243)
!1248 = !DILocalVariable(name: "address", arg: 2, scope: !1243, file: !3, line: 162, type: !47)
!1249 = !DILocation(line: 162, column: 30, scope: !1243)
!1250 = !DILocalVariable(name: "length", arg: 3, scope: !1243, file: !3, line: 162, type: !22)
!1251 = !DILocation(line: 162, column: 43, scope: !1243)
!1252 = !DILocalVariable(name: "warn", arg: 4, scope: !1243, file: !3, line: 162, type: !16)
!1253 = !DILocation(line: 162, column: 54, scope: !1243)
!1254 = !DILocalVariable(name: "range_info", scope: !1243, file: !3, line: 164, type: !817)
!1255 = !DILocation(line: 164, column: 29, scope: !1243)
!1256 = !DILocalVariable(name: "end_address", scope: !1243, file: !3, line: 165, type: !47)
!1257 = !DILocation(line: 165, column: 24, scope: !1243)
!1258 = !DILocalVariable(name: "pathname", scope: !1243, file: !3, line: 166, type: !90)
!1259 = !DILocation(line: 166, column: 8, scope: !1243)
!1260 = !DILocalVariable(name: "overlap_count", scope: !1243, file: !3, line: 167, type: !22)
!1261 = !DILocation(line: 167, column: 6, scope: !1243)
!1262 = !DILocation(line: 171, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 171, column: 6)
!1264 = !DILocation(line: 171, column: 16, scope: !1263)
!1265 = !DILocation(line: 171, column: 49, scope: !1263)
!1266 = !DILocation(line: 172, column: 7, scope: !1263)
!1267 = !DILocation(line: 172, column: 16, scope: !1263)
!1268 = !DILocation(line: 171, column: 6, scope: !1243)
!1269 = !DILocation(line: 173, column: 3, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 172, column: 46)
!1271 = !DILocation(line: 176, column: 43, scope: !1243)
!1272 = !DILocation(line: 176, column: 15, scope: !1243)
!1273 = !DILocation(line: 176, column: 13, scope: !1243)
!1274 = !DILocation(line: 177, column: 16, scope: !1243)
!1275 = !DILocation(line: 177, column: 26, scope: !1243)
!1276 = !DILocation(line: 177, column: 24, scope: !1243)
!1277 = !DILocation(line: 177, column: 33, scope: !1243)
!1278 = !DILocation(line: 177, column: 14, scope: !1243)
!1279 = !DILocation(line: 181, column: 2, scope: !1243)
!1280 = !DILocation(line: 181, column: 9, scope: !1243)
!1281 = !DILocation(line: 192, column: 8, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 192, column: 7)
!1283 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 181, column: 21)
!1284 = !DILocation(line: 192, column: 19, scope: !1282)
!1285 = !DILocation(line: 192, column: 31, scope: !1282)
!1286 = !DILocation(line: 192, column: 16, scope: !1282)
!1287 = !DILocation(line: 192, column: 44, scope: !1282)
!1288 = !DILocation(line: 193, column: 8, scope: !1282)
!1289 = !DILocation(line: 193, column: 23, scope: !1282)
!1290 = !DILocation(line: 193, column: 35, scope: !1282)
!1291 = !DILocation(line: 193, column: 20, scope: !1282)
!1292 = !DILocation(line: 192, column: 7, scope: !1283)
!1293 = !DILocation(line: 197, column: 17, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 193, column: 51)
!1295 = !DILocation(line: 198, column: 8, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 198, column: 8)
!1297 = !DILocation(line: 198, column: 8, scope: !1294)
!1298 = !DILocation(line: 200, column: 41, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 198, column: 14)
!1300 = !DILocation(line: 201, column: 13, scope: !1299)
!1301 = !DILocation(line: 200, column: 9, scope: !1299)
!1302 = !DILocation(line: 199, column: 14, scope: !1299)
!1303 = !DILocation(line: 204, column: 5, scope: !1299)
!1304 = !DILocation(line: 214, column: 5, scope: !1299)
!1305 = !DILocation(line: 215, column: 4, scope: !1299)
!1306 = !DILocation(line: 216, column: 3, scope: !1294)
!1307 = !DILocation(line: 218, column: 16, scope: !1283)
!1308 = !DILocation(line: 218, column: 28, scope: !1283)
!1309 = !DILocation(line: 218, column: 14, scope: !1283)
!1310 = distinct !{!1310, !1279, !1311}
!1311 = !DILocation(line: 219, column: 2, scope: !1243)
!1312 = !DILocation(line: 221, column: 2, scope: !1243)
!1313 = !DILocation(line: 222, column: 1, scope: !1243)
!1314 = distinct !DISubprogram(name: "acpi_ut_delete_address_lists", scope: !3, file: !3, line: 237, type: !1315, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{null}
!1317 = !DILocalVariable(name: "next", scope: !1314, file: !3, line: 239, type: !817)
!1318 = !DILocation(line: 239, column: 29, scope: !1314)
!1319 = !DILocalVariable(name: "range_info", scope: !1314, file: !3, line: 240, type: !817)
!1320 = !DILocation(line: 240, column: 29, scope: !1314)
!1321 = !DILocalVariable(name: "i", scope: !1314, file: !3, line: 241, type: !938)
!1322 = !DILocation(line: 241, column: 6, scope: !1314)
!1323 = !DILocation(line: 245, column: 9, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 245, column: 2)
!1325 = !DILocation(line: 245, column: 7, scope: !1324)
!1326 = !DILocation(line: 245, column: 14, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 245, column: 2)
!1328 = !DILocation(line: 245, column: 16, scope: !1327)
!1329 = !DILocation(line: 245, column: 2, scope: !1324)
!1330 = !DILocation(line: 246, column: 38, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 245, column: 47)
!1332 = !DILocation(line: 246, column: 10, scope: !1331)
!1333 = !DILocation(line: 246, column: 8, scope: !1331)
!1334 = !DILocation(line: 248, column: 3, scope: !1331)
!1335 = !DILocation(line: 248, column: 10, scope: !1331)
!1336 = !DILocation(line: 249, column: 17, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 248, column: 16)
!1338 = !DILocation(line: 249, column: 15, scope: !1337)
!1339 = !DILocation(line: 250, column: 11, scope: !1337)
!1340 = !DILocation(line: 250, column: 23, scope: !1337)
!1341 = !DILocation(line: 250, column: 9, scope: !1337)
!1342 = !DILocation(line: 251, column: 4, scope: !1337)
!1343 = distinct !{!1343, !1334, !1344}
!1344 = !DILocation(line: 252, column: 3, scope: !1331)
!1345 = !DILocation(line: 254, column: 31, scope: !1331)
!1346 = !DILocation(line: 254, column: 3, scope: !1331)
!1347 = !DILocation(line: 254, column: 34, scope: !1331)
!1348 = !DILocation(line: 255, column: 2, scope: !1331)
!1349 = !DILocation(line: 245, column: 43, scope: !1327)
!1350 = !DILocation(line: 245, column: 2, scope: !1327)
!1351 = distinct !{!1351, !1329, !1352}
!1352 = !DILocation(line: 255, column: 2, scope: !1324)
!1353 = !DILocation(line: 256, column: 1, scope: !1314)
!1354 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1355, file: !1355, line: 646, type: !1356, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1355 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!31}
!1358 = !DILocalVariable(name: "__ret", scope: !1359, file: !1355, line: 648, type: !31)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !1355, line: 648, column: 9)
!1360 = !DILocation(line: 648, column: 9, scope: !1359)
!1361 = !DILocalVariable(name: "__edi", scope: !1359, file: !1355, line: 648, type: !31)
!1362 = !DILocalVariable(name: "__esi", scope: !1359, file: !1355, line: 648, type: !31)
!1363 = !DILocalVariable(name: "__edx", scope: !1359, file: !1355, line: 648, type: !31)
!1364 = !DILocalVariable(name: "__ecx", scope: !1359, file: !1355, line: 648, type: !31)
!1365 = !DILocalVariable(name: "__eax", scope: !1359, file: !1355, line: 648, type: !31)
!1366 = !DILocation(line: 648, column: 9, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !1355, line: 648, column: 9)
!1368 = distinct !DILexicalBlock(scope: !1359, file: !1355, line: 648, column: 9)
!1369 = !{i32 -2145785967, i32 -2145783652, i32 -2145783418, i32 -2145783367, i32 -2145783339, i32 -2145783314, i32 -2145783630, i32 -2145783617, i32 -2145783179, i32 -2145783060, i32 -2145783525, i32 -2145783498, i32 -2145783470, i32 -2145783440}
!1370 = !DILocalVariable(name: "__mask", scope: !1371, file: !1355, line: 648, type: !31)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !1355, line: 648, column: 9)
!1372 = !DILocation(line: 648, column: 9, scope: !1371)
!1373 = !DILocation(line: 648, column: 9, scope: !1368)
!1374 = !DILocation(line: 648, column: 2, scope: !1354)
!1375 = distinct !DISubprogram(name: "get_order", scope: !1376, file: !1376, line: 29, type: !936, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1376 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!1377 = !DILocalVariable(name: "x", arg: 1, scope: !1378, file: !1379, line: 366, type: !26)
!1378 = distinct !DISubprogram(name: "fls64", scope: !1379, file: !1379, line: 366, type: !1380, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1379 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!938, !26}
!1382 = !DILocation(line: 366, column: 40, scope: !1378, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 46, column: 9, scope: !1375)
!1384 = !DILocalVariable(name: "bitpos", scope: !1378, file: !1379, line: 368, type: !938)
!1385 = !DILocation(line: 368, column: 6, scope: !1378, inlinedAt: !1383)
!1386 = !DILocalVariable(name: "size", arg: 1, scope: !1375, file: !1376, line: 29, type: !31)
!1387 = !DILocation(line: 29, column: 63, scope: !1375)
!1388 = !DILocation(line: 31, column: 27, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1375, file: !1376, line: 31, column: 6)
!1390 = !DILocation(line: 31, column: 6, scope: !1389)
!1391 = !DILocation(line: 31, column: 6, scope: !1375)
!1392 = !DILocation(line: 32, column: 8, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !1376, line: 32, column: 7)
!1394 = distinct !DILexicalBlock(scope: !1389, file: !1376, line: 31, column: 34)
!1395 = !DILocation(line: 32, column: 7, scope: !1394)
!1396 = !DILocation(line: 33, column: 4, scope: !1393)
!1397 = !DILocation(line: 35, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1394, file: !1376, line: 35, column: 7)
!1399 = !DILocation(line: 35, column: 12, scope: !1398)
!1400 = !DILocation(line: 35, column: 7, scope: !1394)
!1401 = !DILocation(line: 36, column: 4, scope: !1398)
!1402 = !DILocation(line: 38, column: 10, scope: !1394)
!1403 = !DILocation(line: 38, column: 28, scope: !1394)
!1404 = !DILocation(line: 38, column: 41, scope: !1394)
!1405 = !DILocation(line: 38, column: 3, scope: !1394)
!1406 = !DILocation(line: 41, column: 6, scope: !1375)
!1407 = !DILocation(line: 42, column: 7, scope: !1375)
!1408 = !DILocation(line: 46, column: 15, scope: !1375)
!1409 = !DILocation(line: 374, column: 2, scope: !1378, inlinedAt: !1383)
!1410 = !DILocation(line: 376, column: 14, scope: !1378, inlinedAt: !1383)
!1411 = !{i32 658841}
!1412 = !DILocation(line: 377, column: 9, scope: !1378, inlinedAt: !1383)
!1413 = !DILocation(line: 377, column: 16, scope: !1378, inlinedAt: !1383)
!1414 = !DILocation(line: 46, column: 2, scope: !1375)
!1415 = !DILocation(line: 48, column: 1, scope: !1375)
!1416 = distinct !DISubprogram(name: "__ilog2_u64", scope: !1417, file: !1417, line: 30, type: !1418, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1417 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!938, !25}
!1420 = !DILocation(line: 366, column: 40, scope: !1378, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 32, column: 9, scope: !1416)
!1422 = !DILocation(line: 368, column: 6, scope: !1378, inlinedAt: !1421)
!1423 = !DILocalVariable(name: "n", arg: 1, scope: !1416, file: !1417, line: 30, type: !25)
!1424 = !DILocation(line: 30, column: 21, scope: !1416)
!1425 = !DILocation(line: 32, column: 15, scope: !1416)
!1426 = !DILocation(line: 374, column: 2, scope: !1378, inlinedAt: !1421)
!1427 = !DILocation(line: 376, column: 14, scope: !1378, inlinedAt: !1421)
!1428 = !DILocation(line: 377, column: 9, scope: !1378, inlinedAt: !1421)
!1429 = !DILocation(line: 377, column: 16, scope: !1378, inlinedAt: !1421)
!1430 = !DILocation(line: 32, column: 18, scope: !1416)
!1431 = !DILocation(line: 32, column: 2, scope: !1416)
!1432 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1433, file: !1433, line: 137, type: !1434, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !807)
!1433 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!30, !875, !1436, !878, !28}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1438 = !DILocalVariable(name: "s", arg: 1, scope: !1432, file: !1433, line: 137, type: !875)
!1439 = !DILocation(line: 137, column: 54, scope: !1432)
!1440 = !DILocalVariable(name: "object", arg: 2, scope: !1432, file: !1433, line: 137, type: !1436)
!1441 = !DILocation(line: 137, column: 69, scope: !1432)
!1442 = !DILocalVariable(name: "size", arg: 3, scope: !1432, file: !1433, line: 138, type: !878)
!1443 = !DILocation(line: 138, column: 12, scope: !1432)
!1444 = !DILocalVariable(name: "flags", arg: 4, scope: !1432, file: !1433, line: 138, type: !28)
!1445 = !DILocation(line: 138, column: 24, scope: !1432)
!1446 = !DILocation(line: 140, column: 17, scope: !1432)
!1447 = !DILocation(line: 140, column: 2, scope: !1432)
