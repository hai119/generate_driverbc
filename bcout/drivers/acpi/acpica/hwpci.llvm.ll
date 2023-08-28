; ModuleID = '../bcout/drivers/acpi/acpica/hwpci.llvm.bc'
source_filename = "drivers/acpi/acpica/hwpci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.1 }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64 }
%union.anon.1 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.22, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.2, [0 x i64] }
%struct.anon.2 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.3, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.3 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
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
%struct.kernel_siginfo = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.14 }
%struct.anon.14 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.21, i32, [12 x i8] }
%union.anon.21 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.22 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.23, %union.anon.36, %struct.atomic_t, [8 x i8] }
%union.anon.23 = type { %struct.anon.24 }
%struct.anon.24 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.36 = type { %struct.atomic_t }
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
%struct.acpi_pci_id = type { i16, i16, i16, i16 }
%struct.acpi_pci_device = type { i8*, %struct.acpi_pci_device* }
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

@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_hw_derive_pci_id(%struct.acpi_pci_id* %pci_id, i8* %root_pci_device, i8* %pci_region) #0 !dbg !35 {
entry:
  %retval = alloca i32, align 4
  %pci_id.addr = alloca %struct.acpi_pci_id*, align 8
  %root_pci_device.addr = alloca i8*, align 8
  %pci_region.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %list_head = alloca %struct.acpi_pci_device*, align 8
  store %struct.acpi_pci_id* %pci_id, %struct.acpi_pci_id** %pci_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_id** %pci_id.addr, metadata !47, metadata !DIExpression()), !dbg !48
  store i8* %root_pci_device, i8** %root_pci_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %root_pci_device.addr, metadata !49, metadata !DIExpression()), !dbg !50
  store i8* %pci_region, i8** %pci_region.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pci_region.addr, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %status, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_device** %list_head, metadata !55, metadata !DIExpression()), !dbg !61
  %0 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !62
  %tobool = icmp ne %struct.acpi_pci_id* %0, null, !dbg !62
  br i1 %tobool, label %if.end, label %if.then, !dbg !64

if.then:                                          ; preds = %entry
  store i32 4097, i32* %retval, align 4, !dbg !65
  br label %return, !dbg !65

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %root_pci_device.addr, align 8, !dbg !67
  %2 = load i8*, i8** %pci_region.addr, align 8, !dbg !68
  %call = call i32 @acpi_hw_build_pci_list(i8* %1, i8* %2, %struct.acpi_pci_device** %list_head) #8, !dbg !69
  store i32 %call, i32* %status, align 4, !dbg !70
  %3 = load i32, i32* %status, align 4, !dbg !71
  %tobool1 = icmp ne i32 %3, 0, !dbg !71
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !73

if.then2:                                         ; preds = %if.end
  %4 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !74
  %5 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %list_head, align 8, !dbg !76
  %call3 = call i32 @acpi_hw_process_pci_list(%struct.acpi_pci_id* %4, %struct.acpi_pci_device* %5) #8, !dbg !77
  store i32 %call3, i32* %status, align 4, !dbg !78
  %6 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %list_head, align 8, !dbg !79
  call void @acpi_hw_delete_pci_list(%struct.acpi_pci_device* %6) #8, !dbg !80
  br label %if.end4, !dbg !81

if.end4:                                          ; preds = %if.then2, %if.end
  %7 = load i32, i32* %status, align 4, !dbg !82
  store i32 %7, i32* %retval, align 4, !dbg !82
  br label %return, !dbg !82

return:                                           ; preds = %if.end4, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !83
  ret i32 %8, !dbg !83
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hw_build_pci_list(i8* %root_pci_device, i8* %pci_region, %struct.acpi_pci_device** %return_list_head) #0 !dbg !84 {
entry:
  %retval = alloca i32, align 4
  %root_pci_device.addr = alloca i8*, align 8
  %pci_region.addr = alloca i8*, align 8
  %return_list_head.addr = alloca %struct.acpi_pci_device**, align 8
  %current_device = alloca i8*, align 8
  %parent_device = alloca i8*, align 8
  %status = alloca i32, align 4
  %list_element = alloca %struct.acpi_pci_device*, align 8
  store i8* %root_pci_device, i8** %root_pci_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %root_pci_device.addr, metadata !88, metadata !DIExpression()), !dbg !89
  store i8* %pci_region, i8** %pci_region.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pci_region.addr, metadata !90, metadata !DIExpression()), !dbg !91
  store %struct.acpi_pci_device** %return_list_head, %struct.acpi_pci_device*** %return_list_head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_device*** %return_list_head.addr, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i8** %current_device, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i8** %parent_device, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %status, metadata !98, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_device** %list_element, metadata !100, metadata !DIExpression()), !dbg !101
  %0 = load %struct.acpi_pci_device**, %struct.acpi_pci_device*** %return_list_head.addr, align 8, !dbg !102
  store %struct.acpi_pci_device* null, %struct.acpi_pci_device** %0, align 8, !dbg !103
  %1 = load i8*, i8** %pci_region.addr, align 8, !dbg !104
  store i8* %1, i8** %current_device, align 8, !dbg !105
  br label %while.body, !dbg !106

while.body:                                       ; preds = %entry, %if.end6
  %2 = load i8*, i8** %current_device, align 8, !dbg !107
  %call = call i32 @acpi_get_parent(i8* %2, i8** %parent_device) #8, !dbg !109
  store i32 %call, i32* %status, align 4, !dbg !110
  %3 = load i32, i32* %status, align 4, !dbg !111
  %tobool = icmp ne i32 %3, 0, !dbg !111
  br i1 %tobool, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %while.body
  %4 = load %struct.acpi_pci_device**, %struct.acpi_pci_device*** %return_list_head.addr, align 8, !dbg !114
  %5 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %4, align 8, !dbg !116
  call void @acpi_hw_delete_pci_list(%struct.acpi_pci_device* %5) #8, !dbg !117
  %6 = load i32, i32* %status, align 4, !dbg !118
  store i32 %6, i32* %retval, align 4, !dbg !119
  br label %return, !dbg !119

if.end:                                           ; preds = %while.body
  %7 = load i8*, i8** %parent_device, align 8, !dbg !120
  %8 = load i8*, i8** %root_pci_device.addr, align 8, !dbg !122
  %cmp = icmp eq i8* %7, %8, !dbg !123
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !124

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !125
  br label %return, !dbg !125

if.end2:                                          ; preds = %if.end
  %call3 = call i8* @acpi_os_allocate(i64 16) #8, !dbg !127
  %9 = bitcast i8* %call3 to %struct.acpi_pci_device*, !dbg !127
  store %struct.acpi_pci_device* %9, %struct.acpi_pci_device** %list_element, align 8, !dbg !128
  %10 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %list_element, align 8, !dbg !129
  %tobool4 = icmp ne %struct.acpi_pci_device* %10, null, !dbg !129
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !131

if.then5:                                         ; preds = %if.end2
  %11 = load %struct.acpi_pci_device**, %struct.acpi_pci_device*** %return_list_head.addr, align 8, !dbg !132
  %12 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %11, align 8, !dbg !134
  call void @acpi_hw_delete_pci_list(%struct.acpi_pci_device* %12) #8, !dbg !135
  store i32 4, i32* %retval, align 4, !dbg !136
  br label %return, !dbg !136

if.end6:                                          ; preds = %if.end2
  %13 = load %struct.acpi_pci_device**, %struct.acpi_pci_device*** %return_list_head.addr, align 8, !dbg !137
  %14 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %13, align 8, !dbg !138
  %15 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %list_element, align 8, !dbg !139
  %next = getelementptr inbounds %struct.acpi_pci_device, %struct.acpi_pci_device* %15, i32 0, i32 1, !dbg !140
  store %struct.acpi_pci_device* %14, %struct.acpi_pci_device** %next, align 8, !dbg !141
  %16 = load i8*, i8** %parent_device, align 8, !dbg !142
  %17 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %list_element, align 8, !dbg !143
  %device = getelementptr inbounds %struct.acpi_pci_device, %struct.acpi_pci_device* %17, i32 0, i32 0, !dbg !144
  store i8* %16, i8** %device, align 8, !dbg !145
  %18 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %list_element, align 8, !dbg !146
  %19 = load %struct.acpi_pci_device**, %struct.acpi_pci_device*** %return_list_head.addr, align 8, !dbg !147
  store %struct.acpi_pci_device* %18, %struct.acpi_pci_device** %19, align 8, !dbg !148
  %20 = load i8*, i8** %parent_device, align 8, !dbg !149
  store i8* %20, i8** %current_device, align 8, !dbg !150
  br label %while.body, !dbg !106, !llvm.loop !151

return:                                           ; preds = %if.then5, %if.then1, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !153
  ret i32 %21, !dbg !153
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hw_process_pci_list(%struct.acpi_pci_id* %pci_id, %struct.acpi_pci_device* %list_head) #0 !dbg !154 {
entry:
  %retval = alloca i32, align 4
  %pci_id.addr = alloca %struct.acpi_pci_id*, align 8
  %list_head.addr = alloca %struct.acpi_pci_device*, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_pci_device*, align 8
  %bus_number = alloca i16, align 2
  %is_bridge = alloca i8, align 1
  store %struct.acpi_pci_id* %pci_id, %struct.acpi_pci_id** %pci_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_id** %pci_id.addr, metadata !157, metadata !DIExpression()), !dbg !158
  store %struct.acpi_pci_device* %list_head, %struct.acpi_pci_device** %list_head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_device** %list_head.addr, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %status, metadata !161, metadata !DIExpression()), !dbg !162
  store i32 0, i32* %status, align 4, !dbg !162
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_device** %info, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i16* %bus_number, metadata !165, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.declare(metadata i8* %is_bridge, metadata !167, metadata !DIExpression()), !dbg !171
  store i8 1, i8* %is_bridge, align 1, !dbg !171
  %0 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !172
  %bus = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %0, i32 0, i32 1, !dbg !173
  %1 = load i16, i16* %bus, align 2, !dbg !173
  store i16 %1, i16* %bus_number, align 2, !dbg !174
  %2 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %list_head.addr, align 8, !dbg !175
  store %struct.acpi_pci_device* %2, %struct.acpi_pci_device** %info, align 8, !dbg !176
  br label %while.cond, !dbg !177

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %info, align 8, !dbg !178
  %tobool = icmp ne %struct.acpi_pci_device* %3, null, !dbg !177
  br i1 %tobool, label %while.body, label %while.end, !dbg !177

while.body:                                       ; preds = %while.cond
  %4 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !179
  %5 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %info, align 8, !dbg !181
  %device = getelementptr inbounds %struct.acpi_pci_device, %struct.acpi_pci_device* %5, i32 0, i32 0, !dbg !182
  %6 = load i8*, i8** %device, align 8, !dbg !182
  %call = call i32 @acpi_hw_get_pci_device_info(%struct.acpi_pci_id* %4, i8* %6, i16* %bus_number, i8* %is_bridge) #8, !dbg !183
  store i32 %call, i32* %status, align 4, !dbg !184
  %7 = load i32, i32* %status, align 4, !dbg !185
  %tobool1 = icmp ne i32 %7, 0, !dbg !185
  br i1 %tobool1, label %if.then, label %if.end, !dbg !187

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %status, align 4, !dbg !188
  store i32 %8, i32* %retval, align 4, !dbg !190
  br label %return, !dbg !190

if.end:                                           ; preds = %while.body
  %9 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %info, align 8, !dbg !191
  %next = getelementptr inbounds %struct.acpi_pci_device, %struct.acpi_pci_device* %9, i32 0, i32 1, !dbg !192
  %10 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %next, align 8, !dbg !192
  store %struct.acpi_pci_device* %10, %struct.acpi_pci_device** %info, align 8, !dbg !193
  br label %while.cond, !dbg !177, !llvm.loop !194

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !196
  br label %return, !dbg !196

return:                                           ; preds = %while.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !197
  ret i32 %11, !dbg !197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_hw_delete_pci_list(%struct.acpi_pci_device* %list_head) #0 !dbg !198 {
entry:
  %list_head.addr = alloca %struct.acpi_pci_device*, align 8
  %next = alloca %struct.acpi_pci_device*, align 8
  %previous = alloca %struct.acpi_pci_device*, align 8
  store %struct.acpi_pci_device* %list_head, %struct.acpi_pci_device** %list_head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_device** %list_head.addr, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_device** %next, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_device** %previous, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %list_head.addr, align 8, !dbg !207
  store %struct.acpi_pci_device* %0, %struct.acpi_pci_device** %next, align 8, !dbg !208
  br label %while.cond, !dbg !209

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %next, align 8, !dbg !210
  %tobool = icmp ne %struct.acpi_pci_device* %1, null, !dbg !209
  br i1 %tobool, label %while.body, label %while.end, !dbg !209

while.body:                                       ; preds = %while.cond
  %2 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %next, align 8, !dbg !211
  store %struct.acpi_pci_device* %2, %struct.acpi_pci_device** %previous, align 8, !dbg !213
  %3 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %previous, align 8, !dbg !214
  %next1 = getelementptr inbounds %struct.acpi_pci_device, %struct.acpi_pci_device* %3, i32 0, i32 1, !dbg !215
  %4 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %next1, align 8, !dbg !215
  store %struct.acpi_pci_device* %4, %struct.acpi_pci_device** %next, align 8, !dbg !216
  %5 = load %struct.acpi_pci_device*, %struct.acpi_pci_device** %previous, align 8, !dbg !217
  %6 = bitcast %struct.acpi_pci_device* %5 to i8*, !dbg !217
  call void @acpi_os_free(i8* %6) #8, !dbg !217
  br label %while.cond, !dbg !209, !llvm.loop !218

while.end:                                        ; preds = %while.cond
  ret void, !dbg !220
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_parent(i8*, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @acpi_os_allocate(i64 %size) #0 !dbg !221 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !225, metadata !DIExpression()), !dbg !236
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !244, metadata !DIExpression()), !dbg !245
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !246, metadata !DIExpression()), !dbg !247
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !248, metadata !DIExpression()), !dbg !249
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !250, metadata !DIExpression()), !dbg !254
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !256, metadata !DIExpression()), !dbg !260
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !262, metadata !DIExpression()), !dbg !266
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !271, metadata !DIExpression()), !dbg !272
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !273, metadata !DIExpression()), !dbg !274
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !275, metadata !DIExpression()), !dbg !276
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !277, metadata !DIExpression()), !dbg !278
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !279, metadata !DIExpression()), !dbg !280
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !281, metadata !DIExpression()), !dbg !282
  %flags.addr.i11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i11, metadata !283, metadata !DIExpression()), !dbg !284
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !285, metadata !DIExpression()), !dbg !286
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !287, metadata !DIExpression()), !dbg !293
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
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i64, i64* %size.addr, align 8, !dbg !299
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !300, metadata !DIExpression()), !dbg !301
  br label %do.body, !dbg !301

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !302, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !306, metadata !DIExpression()), !dbg !305
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !305
  %conv = zext i1 %cmp to i32, !dbg !305
  store i32 1, i32* %tmp, align 4, !dbg !305
  %1 = load i32, i32* %tmp, align 4, !dbg !305
  %call = call i64 @arch_local_save_flags() #8, !dbg !307
  store i64 %call, i64* %_flags, align 8, !dbg !307
  br label %do.end, !dbg !307

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy3, metadata !308, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata i64* %__dummy24, metadata !311, metadata !DIExpression()), !dbg !310
  %cmp5 = icmp eq i64* %__dummy3, %__dummy24, !dbg !310
  %conv6 = zext i1 %cmp5 to i32, !dbg !310
  store i32 1, i32* %tmp7, align 4, !dbg !310
  %2 = load i32, i32* %tmp7, align 4, !dbg !310
  %3 = load i64, i64* %_flags, align 8, !dbg !312
  store i64 %3, i64* %flags.addr.i, align 8
  %4 = load i64, i64* %flags.addr.i, align 8, !dbg !313
  %and.i = and i64 %4, 512, !dbg !314
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !315
  %lnot.i = xor i1 %tobool.i, true, !dbg !315
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !315
  store i32 %lnot.ext.i, i32* %tmp8, align 4, !dbg !312
  %5 = load i32, i32* %tmp8, align 4, !dbg !312
  store i32 %5, i32* %tmp1, align 4, !dbg !307
  %6 = load i32, i32* %tmp1, align 4, !dbg !301
  %tobool = icmp ne i32 %6, 0, !dbg !316
  %7 = zext i1 %tobool to i64, !dbg !316
  %cond = select i1 %tobool, i32 2592, i32 3264, !dbg !316
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %cond, i32* %flags.addr.i11, align 4
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !317
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #7, !dbg !318
  br i1 %9, label %if.then.i, label %if.end9.i, !dbg !319

if.then.i:                                        ; preds = %do.end
  %10 = load i64, i64* %size.addr.i, align 8, !dbg !320
  %cmp.i = icmp ugt i64 %10, 8192, !dbg !321
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !322

if.then1.i:                                       ; preds = %if.then.i
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !323
  %12 = load i32, i32* %flags.addr.i11, align 4, !dbg !324
  store i64 %11, i64* %size.addr.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i, align 8, !dbg !325
  %call.i.i = call i32 @get_order(i64 %13) #9, !dbg !326
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !280
  %14 = load i64, i64* %size.addr.i.i, align 8, !dbg !327
  %15 = load i32, i32* %flags.addr.i.i, align 4, !dbg !328
  %16 = load i32, i32* %order.i.i, align 4, !dbg !329
  store i64 %14, i64* %size.addr.i.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i.i, align 4
  store i32 %16, i32* %order.addr.i.i.i, align 4
  %17 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !330
  %18 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !331
  %19 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !332
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %17, i32 %18, i32 %19) #10, !dbg !333
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !333
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !333
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !333
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !333
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !334
  br label %kmalloc.exit, !dbg !334

if.end.i:                                         ; preds = %if.then.i
  %20 = load i64, i64* %size.addr.i, align 8, !dbg !335
  store i64 %20, i64* %size.addr.i11.i, align 8
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !336
  %tobool.i.i = icmp ne i64 %21, 0, !dbg !336
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !338

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !339
  br label %kmalloc_index.exit.i, !dbg !339

if.end.i.i:                                       ; preds = %if.end.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !340
  %cmp.i.i = icmp ule i64 %22, 8, !dbg !342
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !343

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !344
  br label %kmalloc_index.exit.i, !dbg !344

if.end2.i.i:                                      ; preds = %if.end.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !345
  %cmp3.i.i = icmp ugt i64 %23, 64, !dbg !347
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !348

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !349
  %cmp4.i.i = icmp ule i64 %24, 96, !dbg !350
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !351

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !352
  br label %kmalloc_index.exit.i, !dbg !352

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !353
  %cmp7.i.i = icmp ugt i64 %25, 128, !dbg !355
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !356

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !357
  %cmp9.i.i = icmp ule i64 %26, 192, !dbg !358
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !359

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !360
  br label %kmalloc_index.exit.i, !dbg !360

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !361
  %cmp12.i.i = icmp ule i64 %27, 8, !dbg !363
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !364

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !365
  br label %kmalloc_index.exit.i, !dbg !365

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !366
  %cmp15.i.i = icmp ule i64 %28, 16, !dbg !368
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !369

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !370
  br label %kmalloc_index.exit.i, !dbg !370

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !371
  %cmp18.i.i = icmp ule i64 %29, 32, !dbg !373
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !374

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !375
  br label %kmalloc_index.exit.i, !dbg !375

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !376
  %cmp21.i.i = icmp ule i64 %30, 64, !dbg !378
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !379

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !380
  br label %kmalloc_index.exit.i, !dbg !380

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !381
  %cmp24.i.i = icmp ule i64 %31, 128, !dbg !383
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !384

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !385
  br label %kmalloc_index.exit.i, !dbg !385

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !386
  %cmp27.i.i = icmp ule i64 %32, 256, !dbg !388
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !389

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !390
  br label %kmalloc_index.exit.i, !dbg !390

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !391
  %cmp30.i.i = icmp ule i64 %33, 512, !dbg !393
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !394

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !395
  br label %kmalloc_index.exit.i, !dbg !395

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !396
  %cmp33.i.i = icmp ule i64 %34, 1024, !dbg !398
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !399

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !400
  br label %kmalloc_index.exit.i, !dbg !400

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !401
  %cmp36.i.i = icmp ule i64 %35, 2048, !dbg !403
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !404

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !405
  br label %kmalloc_index.exit.i, !dbg !405

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !406
  %cmp39.i.i = icmp ule i64 %36, 4096, !dbg !408
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !409

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !410
  br label %kmalloc_index.exit.i, !dbg !410

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !411
  %cmp42.i.i = icmp ule i64 %37, 8192, !dbg !413
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !414

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !415
  br label %kmalloc_index.exit.i, !dbg !415

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !416
  %cmp45.i.i = icmp ule i64 %38, 16384, !dbg !418
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !419

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !420
  br label %kmalloc_index.exit.i, !dbg !420

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !421
  %cmp48.i.i = icmp ule i64 %39, 32768, !dbg !423
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !424

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !425
  br label %kmalloc_index.exit.i, !dbg !425

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !426
  %cmp51.i.i = icmp ule i64 %40, 65536, !dbg !428
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !429

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !430
  br label %kmalloc_index.exit.i, !dbg !430

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !431
  %cmp54.i.i = icmp ule i64 %41, 131072, !dbg !433
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !434

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !435
  br label %kmalloc_index.exit.i, !dbg !435

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !436
  %cmp57.i.i = icmp ule i64 %42, 262144, !dbg !438
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !439

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !440
  br label %kmalloc_index.exit.i, !dbg !440

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !441
  %cmp60.i.i = icmp ule i64 %43, 524288, !dbg !443
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !444

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !445
  br label %kmalloc_index.exit.i, !dbg !445

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !446
  %cmp63.i.i = icmp ule i64 %44, 1048576, !dbg !448
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !449

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !450
  br label %kmalloc_index.exit.i, !dbg !450

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !451
  %cmp66.i.i = icmp ule i64 %45, 2097152, !dbg !453
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !454

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !455
  br label %kmalloc_index.exit.i, !dbg !455

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !456
  %cmp69.i.i = icmp ule i64 %46, 4194304, !dbg !458
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !459

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !460
  br label %kmalloc_index.exit.i, !dbg !460

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !461
  %cmp72.i.i = icmp ule i64 %47, 8388608, !dbg !463
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !464

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !465
  br label %kmalloc_index.exit.i, !dbg !465

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !466
  %cmp75.i.i = icmp ule i64 %48, 16777216, !dbg !468
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !469

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !470
  br label %kmalloc_index.exit.i, !dbg !470

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !471
  %cmp78.i.i = icmp ule i64 %49, 33554432, !dbg !473
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !474

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !475
  br label %kmalloc_index.exit.i, !dbg !475

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !476
  %cmp81.i.i = icmp ule i64 %50, 67108864, !dbg !478
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !479

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !480
  br label %kmalloc_index.exit.i, !dbg !480

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !481, !srcloc !484
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 142) #7, !dbg !485, !srcloc !488
  unreachable, !dbg !489

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %51 = load i32, i32* %retval.i.i, align 4, !dbg !490
  store i32 %51, i32* %index.i, align 4, !dbg !491
  %52 = load i32, i32* %index.i, align 4, !dbg !492
  %tobool.i12 = icmp ne i32 %52, 0, !dbg !492
  br i1 %tobool.i12, label %if.end4.i, label %if.then3.i, !dbg !494

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !495
  br label %kmalloc.exit, !dbg !495

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %53 = load i32, i32* %flags.addr.i11, align 4, !dbg !496
  store i32 %53, i32* %flags.addr.i13.i, align 4
  %54 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !497
  %and.i.i = and i32 %54, 17, !dbg !497
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !497
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !497
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !497
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !497
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !499

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !500
  br label %kmalloc_type.exit.i, !dbg !500

if.end.i16.i:                                     ; preds = %if.end4.i
  %55 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !501
  %and2.i.i = and i32 %55, 1, !dbg !502
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !501
  %56 = zext i1 %tobool3.i.i to i64, !dbg !501
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !501
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !503
  br label %kmalloc_type.exit.i, !dbg !503

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %57 = load i32, i32* %retval.i12.i, align 4, !dbg !504
  %idxprom.i = zext i32 %57 to i64, !dbg !505
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !505
  %58 = load i32, i32* %index.i, align 4, !dbg !506
  %idxprom6.i = zext i32 %58 to i64, !dbg !505
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !505
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !505
  %60 = load i32, i32* %flags.addr.i11, align 4, !dbg !507
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !508
  store %struct.kmem_cache* %59, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %60, i32* %flags.addr.i17.i, align 4
  store i64 %61, i64* %size.addr.i18.i, align 8
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !509
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !510
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %62, i32 %63) #10, !dbg !511
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !511
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !511
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !511
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !511
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !249
  %64 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !512
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !513
  %66 = load i64, i64* %size.addr.i18.i, align 8, !dbg !514
  %67 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !515
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %64, i8* %65, i64 %66, i32 %67) #10, !dbg !516
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !517
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !518
  store i8* %68, i8** %retval.i, align 8, !dbg !519
  br label %kmalloc.exit, !dbg !519

if.end9.i:                                        ; preds = %do.end
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !520
  %70 = load i32, i32* %flags.addr.i11, align 4, !dbg !521
  %call10.i = call noalias i8* @__kmalloc(i64 %69, i32 %70) #10, !dbg !522
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !522
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !522
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !522
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !522
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !523
  br label %kmalloc.exit, !dbg !523

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %71 = load i8*, i8** %retval.i, align 8, !dbg !524
  ret i8* %71, !dbg !525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !526 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !530, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !533, metadata !DIExpression()), !dbg !532
  %0 = load i64, i64* %__edi, align 8, !dbg !532
  store i64 %0, i64* %__edi, align 8, !dbg !532
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !534, metadata !DIExpression()), !dbg !532
  %1 = load i64, i64* %__esi, align 8, !dbg !532
  store i64 %1, i64* %__esi, align 8, !dbg !532
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !535, metadata !DIExpression()), !dbg !532
  %2 = load i64, i64* %__edx, align 8, !dbg !532
  store i64 %2, i64* %__edx, align 8, !dbg !532
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !536, metadata !DIExpression()), !dbg !532
  %3 = load i64, i64* %__ecx, align 8, !dbg !532
  store i64 %3, i64* %__ecx, align 8, !dbg !532
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !537, metadata !DIExpression()), !dbg !532
  %4 = load i64, i64* %__eax, align 8, !dbg !532
  store i64 %4, i64* %__eax, align 8, !dbg !532
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !532
  %6 = call i64 @llvm.read_register.i64(metadata !29), !dbg !538
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !538, !srcloc !541
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !538
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !538
  store i64 %asmresult, i64* %__eax, align 8, !dbg !538
  call void @llvm.write_register.i64(metadata !29, i64 %asmresult1), !dbg !538
  %8 = load i64, i64* %__eax, align 8, !dbg !538
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !542, metadata !DIExpression()), !dbg !544
  store i64 -1, i64* %__mask, align 8, !dbg !544
  %9 = load i64, i64* %__mask, align 8, !dbg !544
  store i64 %9, i64* %tmp, align 8, !dbg !544
  %10 = load i64, i64* %tmp, align 8, !dbg !544
  %and = and i64 %8, %10, !dbg !538
  store i64 %and, i64* %__ret, align 8, !dbg !538
  %11 = load i64, i64* %__ret, align 8, !dbg !532
  store i64 %11, i64* %tmp2, align 8, !dbg !545
  %12 = load i64, i64* %tmp2, align 8, !dbg !532
  ret i64 %12, !dbg !546
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !547 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !549, metadata !DIExpression()), !dbg !554
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !556, metadata !DIExpression()), !dbg !557
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !558, metadata !DIExpression()), !dbg !559
  %0 = load i64, i64* %size.addr, align 8, !dbg !560
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !562
  br i1 %1, label %if.then, label %if.end447, !dbg !563

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !564
  %tobool = icmp ne i64 %2, 0, !dbg !564
  br i1 %tobool, label %if.end, label %if.then1, !dbg !567

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !568
  br label %return, !dbg !568

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !569
  %cmp = icmp ult i64 %3, 4096, !dbg !571
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !572

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !573
  br label %return, !dbg !573

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub = sub i64 %4, 1, !dbg !574
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !574
  br i1 %5, label %cond.true, label %cond.false442, !dbg !574

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub4 = sub i64 %6, 1, !dbg !574
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !574
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !574

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub6 = sub i64 %8, 1, !dbg !574
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !574
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !574

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !574

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub9 = sub i64 %9, 1, !dbg !574
  %and = and i64 %sub9, -9223372036854775808, !dbg !574
  %tobool10 = icmp ne i64 %and, 0, !dbg !574
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !574

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !574

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub13 = sub i64 %10, 1, !dbg !574
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !574
  %tobool15 = icmp ne i64 %and14, 0, !dbg !574
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !574

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !574

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub18 = sub i64 %11, 1, !dbg !574
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !574
  %tobool20 = icmp ne i64 %and19, 0, !dbg !574
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !574

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !574

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub23 = sub i64 %12, 1, !dbg !574
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !574
  %tobool25 = icmp ne i64 %and24, 0, !dbg !574
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !574

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !574

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub28 = sub i64 %13, 1, !dbg !574
  %and29 = and i64 %sub28, 576460752303423488, !dbg !574
  %tobool30 = icmp ne i64 %and29, 0, !dbg !574
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !574

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !574

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub33 = sub i64 %14, 1, !dbg !574
  %and34 = and i64 %sub33, 288230376151711744, !dbg !574
  %tobool35 = icmp ne i64 %and34, 0, !dbg !574
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !574

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !574

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub38 = sub i64 %15, 1, !dbg !574
  %and39 = and i64 %sub38, 144115188075855872, !dbg !574
  %tobool40 = icmp ne i64 %and39, 0, !dbg !574
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !574

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !574

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub43 = sub i64 %16, 1, !dbg !574
  %and44 = and i64 %sub43, 72057594037927936, !dbg !574
  %tobool45 = icmp ne i64 %and44, 0, !dbg !574
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !574

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !574

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub48 = sub i64 %17, 1, !dbg !574
  %and49 = and i64 %sub48, 36028797018963968, !dbg !574
  %tobool50 = icmp ne i64 %and49, 0, !dbg !574
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !574

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !574

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub53 = sub i64 %18, 1, !dbg !574
  %and54 = and i64 %sub53, 18014398509481984, !dbg !574
  %tobool55 = icmp ne i64 %and54, 0, !dbg !574
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !574

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !574

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub58 = sub i64 %19, 1, !dbg !574
  %and59 = and i64 %sub58, 9007199254740992, !dbg !574
  %tobool60 = icmp ne i64 %and59, 0, !dbg !574
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !574

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !574

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub63 = sub i64 %20, 1, !dbg !574
  %and64 = and i64 %sub63, 4503599627370496, !dbg !574
  %tobool65 = icmp ne i64 %and64, 0, !dbg !574
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !574

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !574

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub68 = sub i64 %21, 1, !dbg !574
  %and69 = and i64 %sub68, 2251799813685248, !dbg !574
  %tobool70 = icmp ne i64 %and69, 0, !dbg !574
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !574

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !574

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub73 = sub i64 %22, 1, !dbg !574
  %and74 = and i64 %sub73, 1125899906842624, !dbg !574
  %tobool75 = icmp ne i64 %and74, 0, !dbg !574
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !574

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !574

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub78 = sub i64 %23, 1, !dbg !574
  %and79 = and i64 %sub78, 562949953421312, !dbg !574
  %tobool80 = icmp ne i64 %and79, 0, !dbg !574
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !574

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !574

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub83 = sub i64 %24, 1, !dbg !574
  %and84 = and i64 %sub83, 281474976710656, !dbg !574
  %tobool85 = icmp ne i64 %and84, 0, !dbg !574
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !574

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !574

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub88 = sub i64 %25, 1, !dbg !574
  %and89 = and i64 %sub88, 140737488355328, !dbg !574
  %tobool90 = icmp ne i64 %and89, 0, !dbg !574
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !574

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !574

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub93 = sub i64 %26, 1, !dbg !574
  %and94 = and i64 %sub93, 70368744177664, !dbg !574
  %tobool95 = icmp ne i64 %and94, 0, !dbg !574
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !574

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !574

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub98 = sub i64 %27, 1, !dbg !574
  %and99 = and i64 %sub98, 35184372088832, !dbg !574
  %tobool100 = icmp ne i64 %and99, 0, !dbg !574
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !574

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !574

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub103 = sub i64 %28, 1, !dbg !574
  %and104 = and i64 %sub103, 17592186044416, !dbg !574
  %tobool105 = icmp ne i64 %and104, 0, !dbg !574
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !574

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !574

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub108 = sub i64 %29, 1, !dbg !574
  %and109 = and i64 %sub108, 8796093022208, !dbg !574
  %tobool110 = icmp ne i64 %and109, 0, !dbg !574
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !574

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !574

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub113 = sub i64 %30, 1, !dbg !574
  %and114 = and i64 %sub113, 4398046511104, !dbg !574
  %tobool115 = icmp ne i64 %and114, 0, !dbg !574
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !574

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !574

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub118 = sub i64 %31, 1, !dbg !574
  %and119 = and i64 %sub118, 2199023255552, !dbg !574
  %tobool120 = icmp ne i64 %and119, 0, !dbg !574
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !574

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !574

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub123 = sub i64 %32, 1, !dbg !574
  %and124 = and i64 %sub123, 1099511627776, !dbg !574
  %tobool125 = icmp ne i64 %and124, 0, !dbg !574
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !574

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !574

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub128 = sub i64 %33, 1, !dbg !574
  %and129 = and i64 %sub128, 549755813888, !dbg !574
  %tobool130 = icmp ne i64 %and129, 0, !dbg !574
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !574

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !574

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub133 = sub i64 %34, 1, !dbg !574
  %and134 = and i64 %sub133, 274877906944, !dbg !574
  %tobool135 = icmp ne i64 %and134, 0, !dbg !574
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !574

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !574

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub138 = sub i64 %35, 1, !dbg !574
  %and139 = and i64 %sub138, 137438953472, !dbg !574
  %tobool140 = icmp ne i64 %and139, 0, !dbg !574
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !574

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !574

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub143 = sub i64 %36, 1, !dbg !574
  %and144 = and i64 %sub143, 68719476736, !dbg !574
  %tobool145 = icmp ne i64 %and144, 0, !dbg !574
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !574

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !574

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub148 = sub i64 %37, 1, !dbg !574
  %and149 = and i64 %sub148, 34359738368, !dbg !574
  %tobool150 = icmp ne i64 %and149, 0, !dbg !574
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !574

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !574

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub153 = sub i64 %38, 1, !dbg !574
  %and154 = and i64 %sub153, 17179869184, !dbg !574
  %tobool155 = icmp ne i64 %and154, 0, !dbg !574
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !574

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !574

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub158 = sub i64 %39, 1, !dbg !574
  %and159 = and i64 %sub158, 8589934592, !dbg !574
  %tobool160 = icmp ne i64 %and159, 0, !dbg !574
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !574

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !574

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub163 = sub i64 %40, 1, !dbg !574
  %and164 = and i64 %sub163, 4294967296, !dbg !574
  %tobool165 = icmp ne i64 %and164, 0, !dbg !574
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !574

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !574

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub168 = sub i64 %41, 1, !dbg !574
  %and169 = and i64 %sub168, 2147483648, !dbg !574
  %tobool170 = icmp ne i64 %and169, 0, !dbg !574
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !574

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !574

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub173 = sub i64 %42, 1, !dbg !574
  %and174 = and i64 %sub173, 1073741824, !dbg !574
  %tobool175 = icmp ne i64 %and174, 0, !dbg !574
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !574

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !574

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub178 = sub i64 %43, 1, !dbg !574
  %and179 = and i64 %sub178, 536870912, !dbg !574
  %tobool180 = icmp ne i64 %and179, 0, !dbg !574
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !574

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !574

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub183 = sub i64 %44, 1, !dbg !574
  %and184 = and i64 %sub183, 268435456, !dbg !574
  %tobool185 = icmp ne i64 %and184, 0, !dbg !574
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !574

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !574

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub188 = sub i64 %45, 1, !dbg !574
  %and189 = and i64 %sub188, 134217728, !dbg !574
  %tobool190 = icmp ne i64 %and189, 0, !dbg !574
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !574

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !574

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub193 = sub i64 %46, 1, !dbg !574
  %and194 = and i64 %sub193, 67108864, !dbg !574
  %tobool195 = icmp ne i64 %and194, 0, !dbg !574
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !574

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !574

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub198 = sub i64 %47, 1, !dbg !574
  %and199 = and i64 %sub198, 33554432, !dbg !574
  %tobool200 = icmp ne i64 %and199, 0, !dbg !574
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !574

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !574

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub203 = sub i64 %48, 1, !dbg !574
  %and204 = and i64 %sub203, 16777216, !dbg !574
  %tobool205 = icmp ne i64 %and204, 0, !dbg !574
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !574

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !574

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub208 = sub i64 %49, 1, !dbg !574
  %and209 = and i64 %sub208, 8388608, !dbg !574
  %tobool210 = icmp ne i64 %and209, 0, !dbg !574
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !574

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !574

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub213 = sub i64 %50, 1, !dbg !574
  %and214 = and i64 %sub213, 4194304, !dbg !574
  %tobool215 = icmp ne i64 %and214, 0, !dbg !574
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !574

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !574

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub218 = sub i64 %51, 1, !dbg !574
  %and219 = and i64 %sub218, 2097152, !dbg !574
  %tobool220 = icmp ne i64 %and219, 0, !dbg !574
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !574

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !574

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub223 = sub i64 %52, 1, !dbg !574
  %and224 = and i64 %sub223, 1048576, !dbg !574
  %tobool225 = icmp ne i64 %and224, 0, !dbg !574
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !574

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !574

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub228 = sub i64 %53, 1, !dbg !574
  %and229 = and i64 %sub228, 524288, !dbg !574
  %tobool230 = icmp ne i64 %and229, 0, !dbg !574
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !574

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !574

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub233 = sub i64 %54, 1, !dbg !574
  %and234 = and i64 %sub233, 262144, !dbg !574
  %tobool235 = icmp ne i64 %and234, 0, !dbg !574
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !574

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !574

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub238 = sub i64 %55, 1, !dbg !574
  %and239 = and i64 %sub238, 131072, !dbg !574
  %tobool240 = icmp ne i64 %and239, 0, !dbg !574
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !574

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !574

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub243 = sub i64 %56, 1, !dbg !574
  %and244 = and i64 %sub243, 65536, !dbg !574
  %tobool245 = icmp ne i64 %and244, 0, !dbg !574
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !574

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !574

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub248 = sub i64 %57, 1, !dbg !574
  %and249 = and i64 %sub248, 32768, !dbg !574
  %tobool250 = icmp ne i64 %and249, 0, !dbg !574
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !574

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !574

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub253 = sub i64 %58, 1, !dbg !574
  %and254 = and i64 %sub253, 16384, !dbg !574
  %tobool255 = icmp ne i64 %and254, 0, !dbg !574
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !574

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !574

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub258 = sub i64 %59, 1, !dbg !574
  %and259 = and i64 %sub258, 8192, !dbg !574
  %tobool260 = icmp ne i64 %and259, 0, !dbg !574
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !574

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !574

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub263 = sub i64 %60, 1, !dbg !574
  %and264 = and i64 %sub263, 4096, !dbg !574
  %tobool265 = icmp ne i64 %and264, 0, !dbg !574
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !574

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !574

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub268 = sub i64 %61, 1, !dbg !574
  %and269 = and i64 %sub268, 2048, !dbg !574
  %tobool270 = icmp ne i64 %and269, 0, !dbg !574
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !574

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !574

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub273 = sub i64 %62, 1, !dbg !574
  %and274 = and i64 %sub273, 1024, !dbg !574
  %tobool275 = icmp ne i64 %and274, 0, !dbg !574
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !574

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !574

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub278 = sub i64 %63, 1, !dbg !574
  %and279 = and i64 %sub278, 512, !dbg !574
  %tobool280 = icmp ne i64 %and279, 0, !dbg !574
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !574

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !574

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub283 = sub i64 %64, 1, !dbg !574
  %and284 = and i64 %sub283, 256, !dbg !574
  %tobool285 = icmp ne i64 %and284, 0, !dbg !574
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !574

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !574

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub288 = sub i64 %65, 1, !dbg !574
  %and289 = and i64 %sub288, 128, !dbg !574
  %tobool290 = icmp ne i64 %and289, 0, !dbg !574
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !574

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !574

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub293 = sub i64 %66, 1, !dbg !574
  %and294 = and i64 %sub293, 64, !dbg !574
  %tobool295 = icmp ne i64 %and294, 0, !dbg !574
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !574

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !574

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub298 = sub i64 %67, 1, !dbg !574
  %and299 = and i64 %sub298, 32, !dbg !574
  %tobool300 = icmp ne i64 %and299, 0, !dbg !574
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !574

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !574

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub303 = sub i64 %68, 1, !dbg !574
  %and304 = and i64 %sub303, 16, !dbg !574
  %tobool305 = icmp ne i64 %and304, 0, !dbg !574
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !574

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !574

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub308 = sub i64 %69, 1, !dbg !574
  %and309 = and i64 %sub308, 8, !dbg !574
  %tobool310 = icmp ne i64 %and309, 0, !dbg !574
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !574

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !574

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub313 = sub i64 %70, 1, !dbg !574
  %and314 = and i64 %sub313, 4, !dbg !574
  %tobool315 = icmp ne i64 %and314, 0, !dbg !574
  %71 = zext i1 %tobool315 to i64, !dbg !574
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !574
  br label %cond.end, !dbg !574

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !574
  br label %cond.end317, !dbg !574

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !574
  br label %cond.end319, !dbg !574

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !574
  br label %cond.end321, !dbg !574

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !574
  br label %cond.end323, !dbg !574

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !574
  br label %cond.end325, !dbg !574

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !574
  br label %cond.end327, !dbg !574

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !574
  br label %cond.end329, !dbg !574

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !574
  br label %cond.end331, !dbg !574

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !574
  br label %cond.end333, !dbg !574

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !574
  br label %cond.end335, !dbg !574

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !574
  br label %cond.end337, !dbg !574

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !574
  br label %cond.end339, !dbg !574

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !574
  br label %cond.end341, !dbg !574

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !574
  br label %cond.end343, !dbg !574

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !574
  br label %cond.end345, !dbg !574

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !574
  br label %cond.end347, !dbg !574

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !574
  br label %cond.end349, !dbg !574

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !574
  br label %cond.end351, !dbg !574

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !574
  br label %cond.end353, !dbg !574

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !574
  br label %cond.end355, !dbg !574

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !574
  br label %cond.end357, !dbg !574

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !574
  br label %cond.end359, !dbg !574

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !574
  br label %cond.end361, !dbg !574

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !574
  br label %cond.end363, !dbg !574

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !574
  br label %cond.end365, !dbg !574

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !574
  br label %cond.end367, !dbg !574

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !574
  br label %cond.end369, !dbg !574

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !574
  br label %cond.end371, !dbg !574

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !574
  br label %cond.end373, !dbg !574

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !574
  br label %cond.end375, !dbg !574

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !574
  br label %cond.end377, !dbg !574

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !574
  br label %cond.end379, !dbg !574

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !574
  br label %cond.end381, !dbg !574

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !574
  br label %cond.end383, !dbg !574

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !574
  br label %cond.end385, !dbg !574

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !574
  br label %cond.end387, !dbg !574

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !574
  br label %cond.end389, !dbg !574

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !574
  br label %cond.end391, !dbg !574

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !574
  br label %cond.end393, !dbg !574

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !574
  br label %cond.end395, !dbg !574

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !574
  br label %cond.end397, !dbg !574

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !574
  br label %cond.end399, !dbg !574

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !574
  br label %cond.end401, !dbg !574

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !574
  br label %cond.end403, !dbg !574

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !574
  br label %cond.end405, !dbg !574

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !574
  br label %cond.end407, !dbg !574

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !574
  br label %cond.end409, !dbg !574

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !574
  br label %cond.end411, !dbg !574

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !574
  br label %cond.end413, !dbg !574

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !574
  br label %cond.end415, !dbg !574

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !574
  br label %cond.end417, !dbg !574

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !574
  br label %cond.end419, !dbg !574

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !574
  br label %cond.end421, !dbg !574

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !574
  br label %cond.end423, !dbg !574

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !574
  br label %cond.end425, !dbg !574

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !574
  br label %cond.end427, !dbg !574

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !574
  br label %cond.end429, !dbg !574

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !574
  br label %cond.end431, !dbg !574

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !574
  br label %cond.end433, !dbg !574

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !574
  br label %cond.end435, !dbg !574

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !574
  br label %cond.end437, !dbg !574

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !574
  br label %cond.end440, !dbg !574

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !574

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !574
  br label %cond.end444, !dbg !574

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !574
  %sub443 = sub i64 %72, 1, !dbg !574
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !574
  br label %cond.end444, !dbg !574

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !574
  %sub446 = sub i32 %cond445, 12, !dbg !575
  %add = add i32 %sub446, 1, !dbg !576
  store i32 %add, i32* %retval, align 4, !dbg !577
  br label %return, !dbg !577

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !578
  %dec = add i64 %73, -1, !dbg !578
  store i64 %dec, i64* %size.addr, align 8, !dbg !578
  %74 = load i64, i64* %size.addr, align 8, !dbg !579
  %shr = lshr i64 %74, 12, !dbg !579
  store i64 %shr, i64* %size.addr, align 8, !dbg !579
  %75 = load i64, i64* %size.addr, align 8, !dbg !580
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !557
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !581
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !582
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !581, !srcloc !583
  store i32 %78, i32* %bitpos.i, align 4, !dbg !581
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !584
  %add.i = add i32 %79, 1, !dbg !585
  store i32 %add.i, i32* %retval, align 4, !dbg !586
  br label %return, !dbg !586

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !587
  ret i32 %80, !dbg !587
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !588 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !549, metadata !DIExpression()), !dbg !592
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !556, metadata !DIExpression()), !dbg !594
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !595, metadata !DIExpression()), !dbg !596
  %0 = load i64, i64* %n.addr, align 8, !dbg !597
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !594
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !598
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !599
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !598, !srcloc !583
  store i32 %3, i32* %bitpos.i, align 4, !dbg !598
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !600
  %add.i = add i32 %4, 1, !dbg !601
  %sub = sub i32 %add.i, 1, !dbg !602
  ret i32 %sub, !dbg !603
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !604 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !610, metadata !DIExpression()), !dbg !611
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !612, metadata !DIExpression()), !dbg !613
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !614, metadata !DIExpression()), !dbg !615
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !616, metadata !DIExpression()), !dbg !617
  %0 = load i8*, i8** %object.addr, align 8, !dbg !618
  ret i8* %0, !dbg !619
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_hw_get_pci_device_info(%struct.acpi_pci_id* %pci_id, i8* %pci_device, i16* %bus_number, i8* %is_bridge) #0 !dbg !620 {
entry:
  %retval = alloca i32, align 4
  %pci_id.addr = alloca %struct.acpi_pci_id*, align 8
  %pci_device.addr = alloca i8*, align 8
  %bus_number.addr = alloca i16*, align 8
  %is_bridge.addr = alloca i8*, align 8
  %status = alloca i32, align 4
  %object_type = alloca i32, align 4
  %return_value = alloca i64, align 8
  %pci_value = alloca i64, align 8
  store %struct.acpi_pci_id* %pci_id, %struct.acpi_pci_id** %pci_id.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_pci_id** %pci_id.addr, metadata !625, metadata !DIExpression()), !dbg !626
  store i8* %pci_device, i8** %pci_device.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %pci_device.addr, metadata !627, metadata !DIExpression()), !dbg !628
  store i16* %bus_number, i16** %bus_number.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %bus_number.addr, metadata !629, metadata !DIExpression()), !dbg !630
  store i8* %is_bridge, i8** %is_bridge.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %is_bridge.addr, metadata !631, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.declare(metadata i32* %status, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.declare(metadata i32* %object_type, metadata !635, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.declare(metadata i64* %return_value, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata i64* %pci_value, metadata !640, metadata !DIExpression()), !dbg !641
  %0 = load i8*, i8** %pci_device.addr, align 8, !dbg !642
  %call = call i32 @acpi_get_type(i8* %0, i32* %object_type) #8, !dbg !643
  store i32 %call, i32* %status, align 4, !dbg !644
  %1 = load i32, i32* %status, align 4, !dbg !645
  %tobool = icmp ne i32 %1, 0, !dbg !645
  br i1 %tobool, label %if.then, label %if.end, !dbg !647

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !648
  store i32 %2, i32* %retval, align 4, !dbg !650
  br label %return, !dbg !650

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %object_type, align 4, !dbg !651
  %cmp = icmp ne i32 %3, 6, !dbg !653
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !654

if.then1:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !655
  br label %return, !dbg !655

if.end2:                                          ; preds = %if.end
  %4 = load i8*, i8** %pci_device.addr, align 8, !dbg !657
  %5 = bitcast i8* %4 to %struct.acpi_namespace_node*, !dbg !657
  %call3 = call i32 @acpi_ut_evaluate_numeric_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_namespace_node* %5, i64* %return_value) #8, !dbg !658
  store i32 %call3, i32* %status, align 4, !dbg !659
  %6 = load i32, i32* %status, align 4, !dbg !660
  %tobool4 = icmp ne i32 %6, 0, !dbg !660
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !662

if.then5:                                         ; preds = %if.end2
  store i32 0, i32* %retval, align 4, !dbg !663
  br label %return, !dbg !663

if.end6:                                          ; preds = %if.end2
  %7 = load i64, i64* %return_value, align 8, !dbg !665
  %conv = trunc i64 %7 to i32, !dbg !665
  %shr = lshr i32 %conv, 16, !dbg !665
  %conv7 = trunc i32 %shr to i16, !dbg !665
  %8 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !666
  %device = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %8, i32 0, i32 2, !dbg !667
  store i16 %conv7, i16* %device, align 2, !dbg !668
  %9 = load i64, i64* %return_value, align 8, !dbg !669
  %conv8 = trunc i64 %9 to i32, !dbg !669
  %conv9 = trunc i32 %conv8 to i16, !dbg !669
  %10 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !670
  %function = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %10, i32 0, i32 3, !dbg !671
  store i16 %conv9, i16* %function, align 2, !dbg !672
  %11 = load i8*, i8** %is_bridge.addr, align 8, !dbg !673
  %12 = load i8, i8* %11, align 1, !dbg !675
  %tobool10 = icmp ne i8 %12, 0, !dbg !675
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !676

if.then11:                                        ; preds = %if.end6
  %13 = load i16*, i16** %bus_number.addr, align 8, !dbg !677
  %14 = load i16, i16* %13, align 2, !dbg !679
  %15 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !680
  %bus = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %15, i32 0, i32 1, !dbg !681
  store i16 %14, i16* %bus, align 2, !dbg !682
  br label %if.end12, !dbg !683

if.end12:                                         ; preds = %if.then11, %if.end6
  %16 = load i8*, i8** %is_bridge.addr, align 8, !dbg !684
  store i8 0, i8* %16, align 1, !dbg !685
  %17 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !686
  %call13 = call i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id* %17, i32 14, i64* %pci_value, i32 8) #8, !dbg !687
  store i32 %call13, i32* %status, align 4, !dbg !688
  %18 = load i32, i32* %status, align 4, !dbg !689
  %tobool14 = icmp ne i32 %18, 0, !dbg !689
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !691

if.then15:                                        ; preds = %if.end12
  %19 = load i32, i32* %status, align 4, !dbg !692
  store i32 %19, i32* %retval, align 4, !dbg !694
  br label %return, !dbg !694

if.end16:                                         ; preds = %if.end12
  %20 = load i64, i64* %pci_value, align 8, !dbg !695
  %and = and i64 %20, 127, !dbg !695
  store i64 %and, i64* %pci_value, align 8, !dbg !695
  %21 = load i64, i64* %pci_value, align 8, !dbg !696
  %cmp17 = icmp ne i64 %21, 1, !dbg !698
  br i1 %cmp17, label %land.lhs.true, label %if.end22, !dbg !699

land.lhs.true:                                    ; preds = %if.end16
  %22 = load i64, i64* %pci_value, align 8, !dbg !700
  %cmp19 = icmp ne i64 %22, 2, !dbg !701
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !702

if.then21:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !703
  br label %return, !dbg !703

if.end22:                                         ; preds = %land.lhs.true, %if.end16
  %23 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !705
  %call23 = call i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id* %23, i32 24, i64* %pci_value, i32 8) #8, !dbg !706
  store i32 %call23, i32* %status, align 4, !dbg !707
  %24 = load i32, i32* %status, align 4, !dbg !708
  %tobool24 = icmp ne i32 %24, 0, !dbg !708
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !710

if.then25:                                        ; preds = %if.end22
  %25 = load i32, i32* %status, align 4, !dbg !711
  store i32 %25, i32* %retval, align 4, !dbg !713
  br label %return, !dbg !713

if.end26:                                         ; preds = %if.end22
  %26 = load i8*, i8** %is_bridge.addr, align 8, !dbg !714
  store i8 1, i8* %26, align 1, !dbg !715
  %27 = load i64, i64* %pci_value, align 8, !dbg !716
  %conv27 = trunc i64 %27 to i16, !dbg !717
  %28 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !718
  %bus28 = getelementptr inbounds %struct.acpi_pci_id, %struct.acpi_pci_id* %28, i32 0, i32 1, !dbg !719
  store i16 %conv27, i16* %bus28, align 2, !dbg !720
  %29 = load %struct.acpi_pci_id*, %struct.acpi_pci_id** %pci_id.addr, align 8, !dbg !721
  %call29 = call i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id* %29, i32 25, i64* %pci_value, i32 8) #8, !dbg !722
  store i32 %call29, i32* %status, align 4, !dbg !723
  %30 = load i32, i32* %status, align 4, !dbg !724
  %tobool30 = icmp ne i32 %30, 0, !dbg !724
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !726

if.then31:                                        ; preds = %if.end26
  %31 = load i32, i32* %status, align 4, !dbg !727
  store i32 %31, i32* %retval, align 4, !dbg !729
  br label %return, !dbg !729

if.end32:                                         ; preds = %if.end26
  %32 = load i64, i64* %pci_value, align 8, !dbg !730
  %conv33 = trunc i64 %32 to i16, !dbg !731
  %33 = load i16*, i16** %bus_number.addr, align 8, !dbg !732
  store i16 %conv33, i16* %33, align 2, !dbg !733
  store i32 0, i32* %retval, align 4, !dbg !734
  br label %return, !dbg !734

return:                                           ; preds = %if.end32, %if.then31, %if.then25, %if.then21, %if.then15, %if.then5, %if.then1, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !735
  ret i32 %34, !dbg !735
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_type(i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_ut_evaluate_numeric_object(i8*, %struct.acpi_namespace_node*, i64*) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_os_read_pci_configuration(%struct.acpi_pci_id*, i32, i64*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @acpi_os_free(i8* %memory) #0 !dbg !736 {
entry:
  %memory.addr = alloca i8*, align 8
  store i8* %memory, i8** %memory.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %memory.addr, metadata !739, metadata !DIExpression()), !dbg !740
  %0 = load i8*, i8** %memory.addr, align 8, !dbg !741
  call void @kfree(i8* %0) #8, !dbg !742
  ret void, !dbg !743
}

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

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/hwpci.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4, line: 305, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!11 = !{!12, !18, !22, !24, !25, !26, !14, !19}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !13, line: 421, baseType: !14)
!13 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !15, line: 21, baseType: !16)
!15 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !17, line: 27, baseType: !5)
!17 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !13, line: 127, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !15, line: 23, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !17, line: 31, baseType: !21)
!21 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !23, line: 148, baseType: !5)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !15, line: 19, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !17, line: 24, baseType: !28)
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !{!"rsp"}
!30 = !{i32 7, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"Code Model", i32 2}
!34 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!35 = distinct !DISubprogram(name: "acpi_hw_derive_pci_id", scope: !1, file: !1, line: 86, type: !36, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !46)
!36 = !DISubroutineType(types: !37)
!37 = !{!12, !38, !45, !45}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_id", file: !13, line: 1197, size: 64, elements: !40)
!40 = !{!41, !42, !43, !44}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !39, file: !13, line: 1198, baseType: !26, size: 16)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !39, file: !13, line: 1199, baseType: !26, size: 16, offset: 16)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !39, file: !13, line: 1200, baseType: !26, size: 16, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !39, file: !13, line: 1201, baseType: !26, size: 16, offset: 48)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !13, line: 424, baseType: !24)
!46 = !{}
!47 = !DILocalVariable(name: "pci_id", arg: 1, scope: !35, file: !1, line: 86, type: !38)
!48 = !DILocation(line: 86, column: 43, scope: !35)
!49 = !DILocalVariable(name: "root_pci_device", arg: 2, scope: !35, file: !1, line: 87, type: !45)
!50 = !DILocation(line: 87, column: 21, scope: !35)
!51 = !DILocalVariable(name: "pci_region", arg: 3, scope: !35, file: !1, line: 87, type: !45)
!52 = !DILocation(line: 87, column: 50, scope: !35)
!53 = !DILocalVariable(name: "status", scope: !35, file: !1, line: 89, type: !12)
!54 = !DILocation(line: 89, column: 14, scope: !35)
!55 = !DILocalVariable(name: "list_head", scope: !35, file: !1, line: 90, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_device", file: !1, line: 22, size: 128, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !57, file: !1, line: 23, baseType: !45, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !1, line: 24, baseType: !56, size: 64, offset: 64)
!61 = !DILocation(line: 90, column: 26, scope: !35)
!62 = !DILocation(line: 94, column: 7, scope: !63)
!63 = distinct !DILexicalBlock(scope: !35, file: !1, line: 94, column: 6)
!64 = !DILocation(line: 94, column: 6, scope: !35)
!65 = !DILocation(line: 95, column: 3, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 94, column: 15)
!67 = !DILocation(line: 101, column: 29, scope: !35)
!68 = !DILocation(line: 101, column: 46, scope: !35)
!69 = !DILocation(line: 101, column: 6, scope: !35)
!70 = !DILocation(line: 100, column: 9, scope: !35)
!71 = !DILocation(line: 102, column: 6, scope: !72)
!72 = distinct !DILexicalBlock(scope: !35, file: !1, line: 102, column: 6)
!73 = !DILocation(line: 102, column: 6, scope: !35)
!74 = !DILocation(line: 106, column: 37, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 102, column: 28)
!76 = !DILocation(line: 106, column: 45, scope: !75)
!77 = !DILocation(line: 106, column: 12, scope: !75)
!78 = !DILocation(line: 106, column: 10, scope: !75)
!79 = !DILocation(line: 110, column: 27, scope: !75)
!80 = !DILocation(line: 110, column: 3, scope: !75)
!81 = !DILocation(line: 111, column: 2, scope: !75)
!82 = !DILocation(line: 113, column: 2, scope: !35)
!83 = !DILocation(line: 114, column: 1, scope: !35)
!84 = distinct !DISubprogram(name: "acpi_hw_build_pci_list", scope: !1, file: !1, line: 136, type: !85, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!85 = !DISubroutineType(types: !86)
!86 = !{!12, !45, !45, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!88 = !DILocalVariable(name: "root_pci_device", arg: 1, scope: !84, file: !1, line: 136, type: !45)
!89 = !DILocation(line: 136, column: 36, scope: !84)
!90 = !DILocalVariable(name: "pci_region", arg: 2, scope: !84, file: !1, line: 137, type: !45)
!91 = !DILocation(line: 137, column: 22, scope: !84)
!92 = !DILocalVariable(name: "return_list_head", arg: 3, scope: !84, file: !1, line: 138, type: !87)
!93 = !DILocation(line: 138, column: 35, scope: !84)
!94 = !DILocalVariable(name: "current_device", scope: !84, file: !1, line: 140, type: !45)
!95 = !DILocation(line: 140, column: 14, scope: !84)
!96 = !DILocalVariable(name: "parent_device", scope: !84, file: !1, line: 141, type: !45)
!97 = !DILocation(line: 141, column: 14, scope: !84)
!98 = !DILocalVariable(name: "status", scope: !84, file: !1, line: 142, type: !12)
!99 = !DILocation(line: 142, column: 14, scope: !84)
!100 = !DILocalVariable(name: "list_element", scope: !84, file: !1, line: 143, type: !56)
!101 = !DILocation(line: 143, column: 26, scope: !84)
!102 = !DILocation(line: 150, column: 3, scope: !84)
!103 = !DILocation(line: 150, column: 20, scope: !84)
!104 = !DILocation(line: 151, column: 19, scope: !84)
!105 = !DILocation(line: 151, column: 17, scope: !84)
!106 = !DILocation(line: 152, column: 2, scope: !84)
!107 = !DILocation(line: 153, column: 28, scope: !108)
!108 = distinct !DILexicalBlock(scope: !84, file: !1, line: 152, column: 12)
!109 = !DILocation(line: 153, column: 12, scope: !108)
!110 = !DILocation(line: 153, column: 10, scope: !108)
!111 = !DILocation(line: 154, column: 7, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 154, column: 7)
!113 = !DILocation(line: 154, column: 7, scope: !108)
!114 = !DILocation(line: 158, column: 29, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 154, column: 29)
!116 = !DILocation(line: 158, column: 28, scope: !115)
!117 = !DILocation(line: 158, column: 4, scope: !115)
!118 = !DILocation(line: 159, column: 12, scope: !115)
!119 = !DILocation(line: 159, column: 4, scope: !115)
!120 = !DILocation(line: 164, column: 7, scope: !121)
!121 = distinct !DILexicalBlock(scope: !108, file: !1, line: 164, column: 7)
!122 = !DILocation(line: 164, column: 24, scope: !121)
!123 = !DILocation(line: 164, column: 21, scope: !121)
!124 = !DILocation(line: 164, column: 7, scope: !108)
!125 = !DILocation(line: 165, column: 4, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 164, column: 41)
!127 = !DILocation(line: 168, column: 18, scope: !108)
!128 = !DILocation(line: 168, column: 16, scope: !108)
!129 = !DILocation(line: 169, column: 8, scope: !130)
!130 = distinct !DILexicalBlock(scope: !108, file: !1, line: 169, column: 7)
!131 = !DILocation(line: 169, column: 7, scope: !108)
!132 = !DILocation(line: 173, column: 29, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 169, column: 22)
!134 = !DILocation(line: 173, column: 28, scope: !133)
!135 = !DILocation(line: 173, column: 4, scope: !133)
!136 = !DILocation(line: 174, column: 4, scope: !133)
!137 = !DILocation(line: 179, column: 25, scope: !108)
!138 = !DILocation(line: 179, column: 24, scope: !108)
!139 = !DILocation(line: 179, column: 3, scope: !108)
!140 = !DILocation(line: 179, column: 17, scope: !108)
!141 = !DILocation(line: 179, column: 22, scope: !108)
!142 = !DILocation(line: 180, column: 26, scope: !108)
!143 = !DILocation(line: 180, column: 3, scope: !108)
!144 = !DILocation(line: 180, column: 17, scope: !108)
!145 = !DILocation(line: 180, column: 24, scope: !108)
!146 = !DILocation(line: 181, column: 23, scope: !108)
!147 = !DILocation(line: 181, column: 4, scope: !108)
!148 = !DILocation(line: 181, column: 21, scope: !108)
!149 = !DILocation(line: 183, column: 20, scope: !108)
!150 = !DILocation(line: 183, column: 18, scope: !108)
!151 = distinct !{!151, !106, !152}
!152 = !DILocation(line: 184, column: 2, scope: !84)
!153 = !DILocation(line: 185, column: 1, scope: !84)
!154 = distinct !DISubprogram(name: "acpi_hw_process_pci_list", scope: !1, file: !1, line: 205, type: !155, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!155 = !DISubroutineType(types: !156)
!156 = !{!12, !38, !56}
!157 = !DILocalVariable(name: "pci_id", arg: 1, scope: !154, file: !1, line: 205, type: !38)
!158 = !DILocation(line: 205, column: 46, scope: !154)
!159 = !DILocalVariable(name: "list_head", arg: 2, scope: !154, file: !1, line: 206, type: !56)
!160 = !DILocation(line: 206, column: 29, scope: !154)
!161 = !DILocalVariable(name: "status", scope: !154, file: !1, line: 208, type: !12)
!162 = !DILocation(line: 208, column: 14, scope: !154)
!163 = !DILocalVariable(name: "info", scope: !154, file: !1, line: 209, type: !56)
!164 = !DILocation(line: 209, column: 26, scope: !154)
!165 = !DILocalVariable(name: "bus_number", scope: !154, file: !1, line: 210, type: !26)
!166 = !DILocation(line: 210, column: 6, scope: !154)
!167 = !DILocalVariable(name: "is_bridge", scope: !154, file: !1, line: 211, type: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !15, line: 17, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !17, line: 21, baseType: !170)
!170 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!171 = !DILocation(line: 211, column: 5, scope: !154)
!172 = !DILocation(line: 220, column: 15, scope: !154)
!173 = !DILocation(line: 220, column: 23, scope: !154)
!174 = !DILocation(line: 220, column: 13, scope: !154)
!175 = !DILocation(line: 229, column: 9, scope: !154)
!176 = !DILocation(line: 229, column: 7, scope: !154)
!177 = !DILocation(line: 230, column: 2, scope: !154)
!178 = !DILocation(line: 230, column: 9, scope: !154)
!179 = !DILocation(line: 231, column: 40, scope: !180)
!180 = distinct !DILexicalBlock(scope: !154, file: !1, line: 230, column: 15)
!181 = !DILocation(line: 231, column: 48, scope: !180)
!182 = !DILocation(line: 231, column: 54, scope: !180)
!183 = !DILocation(line: 231, column: 12, scope: !180)
!184 = !DILocation(line: 231, column: 10, scope: !180)
!185 = !DILocation(line: 233, column: 7, scope: !186)
!186 = distinct !DILexicalBlock(scope: !180, file: !1, line: 233, column: 7)
!187 = !DILocation(line: 233, column: 7, scope: !180)
!188 = !DILocation(line: 234, column: 12, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 233, column: 29)
!190 = !DILocation(line: 234, column: 4, scope: !189)
!191 = !DILocation(line: 237, column: 10, scope: !180)
!192 = !DILocation(line: 237, column: 16, scope: !180)
!193 = !DILocation(line: 237, column: 8, scope: !180)
!194 = distinct !{!194, !177, !195}
!195 = !DILocation(line: 238, column: 2, scope: !154)
!196 = !DILocation(line: 246, column: 2, scope: !154)
!197 = !DILocation(line: 247, column: 1, scope: !154)
!198 = distinct !DISubprogram(name: "acpi_hw_delete_pci_list", scope: !1, file: !1, line: 262, type: !199, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !56}
!201 = !DILocalVariable(name: "list_head", arg: 1, scope: !198, file: !1, line: 262, type: !56)
!202 = !DILocation(line: 262, column: 61, scope: !198)
!203 = !DILocalVariable(name: "next", scope: !198, file: !1, line: 264, type: !56)
!204 = !DILocation(line: 264, column: 26, scope: !198)
!205 = !DILocalVariable(name: "previous", scope: !198, file: !1, line: 265, type: !56)
!206 = !DILocation(line: 265, column: 26, scope: !198)
!207 = !DILocation(line: 267, column: 9, scope: !198)
!208 = !DILocation(line: 267, column: 7, scope: !198)
!209 = !DILocation(line: 268, column: 2, scope: !198)
!210 = !DILocation(line: 268, column: 9, scope: !198)
!211 = !DILocation(line: 269, column: 14, scope: !212)
!212 = distinct !DILexicalBlock(scope: !198, file: !1, line: 268, column: 15)
!213 = !DILocation(line: 269, column: 12, scope: !212)
!214 = !DILocation(line: 270, column: 10, scope: !212)
!215 = !DILocation(line: 270, column: 20, scope: !212)
!216 = !DILocation(line: 270, column: 8, scope: !212)
!217 = !DILocation(line: 271, column: 3, scope: !212)
!218 = distinct !{!218, !209, !219}
!219 = !DILocation(line: 272, column: 2, scope: !198)
!220 = !DILocation(line: 273, column: 1, scope: !198)
!221 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !222, file: !222, line: 50, type: !223, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!222 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/lizy2001/genbc/linux")
!223 = !DISubroutineType(types: !224)
!224 = !{!24, !18}
!225 = !DILocalVariable(name: "s", arg: 1, scope: !226, file: !4, line: 445, type: !229)
!226 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !4, file: !4, line: 445, type: !227, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!227 = !DISubroutineType(types: !228)
!228 = !{!24, !229, !22, !232}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !231, line: 117, flags: DIFlagFwdDecl)
!231 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 55, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !234, line: 72, baseType: !235)
!234 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !234, line: 16, baseType: !25)
!236 = !DILocation(line: 445, column: 72, scope: !226, inlinedAt: !237)
!237 = distinct !DILocation(line: 552, column: 10, scope: !238, inlinedAt: !243)
!238 = distinct !DILexicalBlock(scope: !239, file: !4, line: 540, column: 34)
!239 = distinct !DILexicalBlock(scope: !240, file: !4, line: 540, column: 6)
!240 = distinct !DISubprogram(name: "kmalloc", scope: !4, file: !4, line: 538, type: !241, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!241 = !DISubroutineType(types: !242)
!242 = !{!24, !232, !22}
!243 = distinct !DILocation(line: 52, column: 9, scope: !221)
!244 = !DILocalVariable(name: "flags", arg: 2, scope: !226, file: !4, line: 446, type: !22)
!245 = !DILocation(line: 446, column: 9, scope: !226, inlinedAt: !237)
!246 = !DILocalVariable(name: "size", arg: 3, scope: !226, file: !4, line: 446, type: !232)
!247 = !DILocation(line: 446, column: 23, scope: !226, inlinedAt: !237)
!248 = !DILocalVariable(name: "ret", scope: !226, file: !4, line: 448, type: !24)
!249 = !DILocation(line: 448, column: 8, scope: !226, inlinedAt: !237)
!250 = !DILocalVariable(name: "flags", arg: 1, scope: !251, file: !4, line: 318, type: !22)
!251 = distinct !DISubprogram(name: "kmalloc_type", scope: !4, file: !4, line: 318, type: !252, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!252 = !DISubroutineType(types: !253)
!253 = !{!3, !22}
!254 = !DILocation(line: 318, column: 67, scope: !251, inlinedAt: !255)
!255 = distinct !DILocation(line: 553, column: 20, scope: !238, inlinedAt: !243)
!256 = !DILocalVariable(name: "size", arg: 1, scope: !257, file: !4, line: 346, type: !232)
!257 = distinct !DISubprogram(name: "kmalloc_index", scope: !4, file: !4, line: 346, type: !258, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!258 = !DISubroutineType(types: !259)
!259 = !{!5, !232}
!260 = !DILocation(line: 346, column: 58, scope: !257, inlinedAt: !261)
!261 = distinct !DILocation(line: 547, column: 11, scope: !238, inlinedAt: !243)
!262 = !DILocalVariable(name: "size", arg: 1, scope: !263, file: !4, line: 472, type: !232)
!263 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !4, file: !4, line: 472, type: !264, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!264 = !DISubroutineType(types: !265)
!265 = !{!24, !232, !22, !5}
!266 = !DILocation(line: 472, column: 28, scope: !263, inlinedAt: !267)
!267 = distinct !DILocation(line: 481, column: 9, scope: !268, inlinedAt: !269)
!268 = distinct !DISubprogram(name: "kmalloc_large", scope: !4, file: !4, line: 478, type: !241, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!269 = distinct !DILocation(line: 545, column: 11, scope: !270, inlinedAt: !243)
!270 = distinct !DILexicalBlock(scope: !238, file: !4, line: 544, column: 7)
!271 = !DILocalVariable(name: "flags", arg: 2, scope: !263, file: !4, line: 472, type: !22)
!272 = !DILocation(line: 472, column: 40, scope: !263, inlinedAt: !267)
!273 = !DILocalVariable(name: "order", arg: 3, scope: !263, file: !4, line: 472, type: !5)
!274 = !DILocation(line: 472, column: 60, scope: !263, inlinedAt: !267)
!275 = !DILocalVariable(name: "size", arg: 1, scope: !268, file: !4, line: 478, type: !232)
!276 = !DILocation(line: 478, column: 51, scope: !268, inlinedAt: !269)
!277 = !DILocalVariable(name: "flags", arg: 2, scope: !268, file: !4, line: 478, type: !22)
!278 = !DILocation(line: 478, column: 63, scope: !268, inlinedAt: !269)
!279 = !DILocalVariable(name: "order", scope: !268, file: !4, line: 480, type: !5)
!280 = !DILocation(line: 480, column: 15, scope: !268, inlinedAt: !269)
!281 = !DILocalVariable(name: "size", arg: 1, scope: !240, file: !4, line: 538, type: !232)
!282 = !DILocation(line: 538, column: 45, scope: !240, inlinedAt: !243)
!283 = !DILocalVariable(name: "flags", arg: 2, scope: !240, file: !4, line: 538, type: !22)
!284 = !DILocation(line: 538, column: 57, scope: !240, inlinedAt: !243)
!285 = !DILocalVariable(name: "index", scope: !238, file: !4, line: 542, type: !5)
!286 = !DILocation(line: 542, column: 16, scope: !238, inlinedAt: !243)
!287 = !DILocalVariable(name: "flags", arg: 1, scope: !288, file: !289, line: 162, type: !25)
!288 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !289, file: !289, line: 162, type: !290, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!289 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!290 = !DISubroutineType(types: !291)
!291 = !{!292, !25}
!292 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!293 = !DILocation(line: 162, column: 67, scope: !288, inlinedAt: !294)
!294 = distinct !DILocation(line: 52, column: 23, scope: !295)
!295 = distinct !DILexicalBlock(scope: !296, file: !222, line: 52, column: 23)
!296 = distinct !DILexicalBlock(scope: !221, file: !222, line: 52, column: 23)
!297 = !DILocalVariable(name: "size", arg: 1, scope: !221, file: !222, line: 50, type: !18)
!298 = !DILocation(line: 50, column: 48, scope: !221)
!299 = !DILocation(line: 52, column: 17, scope: !221)
!300 = !DILocalVariable(name: "_flags", scope: !296, file: !222, line: 52, type: !25)
!301 = !DILocation(line: 52, column: 23, scope: !296)
!302 = !DILocalVariable(name: "__dummy", scope: !303, file: !222, line: 52, type: !25)
!303 = distinct !DILexicalBlock(scope: !304, file: !222, line: 52, column: 23)
!304 = distinct !DILexicalBlock(scope: !296, file: !222, line: 52, column: 23)
!305 = !DILocation(line: 52, column: 23, scope: !303)
!306 = !DILocalVariable(name: "__dummy2", scope: !303, file: !222, line: 52, type: !25)
!307 = !DILocation(line: 52, column: 23, scope: !304)
!308 = !DILocalVariable(name: "__dummy", scope: !309, file: !222, line: 52, type: !25)
!309 = distinct !DILexicalBlock(scope: !295, file: !222, line: 52, column: 23)
!310 = !DILocation(line: 52, column: 23, scope: !309)
!311 = !DILocalVariable(name: "__dummy2", scope: !309, file: !222, line: 52, type: !25)
!312 = !DILocation(line: 52, column: 23, scope: !295)
!313 = !DILocation(line: 164, column: 11, scope: !288, inlinedAt: !294)
!314 = !DILocation(line: 164, column: 17, scope: !288, inlinedAt: !294)
!315 = !DILocation(line: 164, column: 9, scope: !288, inlinedAt: !294)
!316 = !DILocation(line: 52, column: 23, scope: !221)
!317 = !DILocation(line: 540, column: 27, scope: !239, inlinedAt: !243)
!318 = !DILocation(line: 540, column: 6, scope: !239, inlinedAt: !243)
!319 = !DILocation(line: 540, column: 6, scope: !240, inlinedAt: !243)
!320 = !DILocation(line: 544, column: 7, scope: !270, inlinedAt: !243)
!321 = !DILocation(line: 544, column: 12, scope: !270, inlinedAt: !243)
!322 = !DILocation(line: 544, column: 7, scope: !238, inlinedAt: !243)
!323 = !DILocation(line: 545, column: 25, scope: !270, inlinedAt: !243)
!324 = !DILocation(line: 545, column: 31, scope: !270, inlinedAt: !243)
!325 = !DILocation(line: 480, column: 33, scope: !268, inlinedAt: !269)
!326 = !DILocation(line: 480, column: 23, scope: !268, inlinedAt: !269)
!327 = !DILocation(line: 481, column: 29, scope: !268, inlinedAt: !269)
!328 = !DILocation(line: 481, column: 35, scope: !268, inlinedAt: !269)
!329 = !DILocation(line: 481, column: 42, scope: !268, inlinedAt: !269)
!330 = !DILocation(line: 474, column: 23, scope: !263, inlinedAt: !267)
!331 = !DILocation(line: 474, column: 29, scope: !263, inlinedAt: !267)
!332 = !DILocation(line: 474, column: 36, scope: !263, inlinedAt: !267)
!333 = !DILocation(line: 474, column: 9, scope: !263, inlinedAt: !267)
!334 = !DILocation(line: 545, column: 4, scope: !270, inlinedAt: !243)
!335 = !DILocation(line: 547, column: 25, scope: !238, inlinedAt: !243)
!336 = !DILocation(line: 348, column: 7, scope: !337, inlinedAt: !261)
!337 = distinct !DILexicalBlock(scope: !257, file: !4, line: 348, column: 6)
!338 = !DILocation(line: 348, column: 6, scope: !257, inlinedAt: !261)
!339 = !DILocation(line: 349, column: 3, scope: !337, inlinedAt: !261)
!340 = !DILocation(line: 351, column: 6, scope: !341, inlinedAt: !261)
!341 = distinct !DILexicalBlock(scope: !257, file: !4, line: 351, column: 6)
!342 = !DILocation(line: 351, column: 11, scope: !341, inlinedAt: !261)
!343 = !DILocation(line: 351, column: 6, scope: !257, inlinedAt: !261)
!344 = !DILocation(line: 352, column: 3, scope: !341, inlinedAt: !261)
!345 = !DILocation(line: 354, column: 32, scope: !346, inlinedAt: !261)
!346 = distinct !DILexicalBlock(scope: !257, file: !4, line: 354, column: 6)
!347 = !DILocation(line: 354, column: 37, scope: !346, inlinedAt: !261)
!348 = !DILocation(line: 354, column: 42, scope: !346, inlinedAt: !261)
!349 = !DILocation(line: 354, column: 45, scope: !346, inlinedAt: !261)
!350 = !DILocation(line: 354, column: 50, scope: !346, inlinedAt: !261)
!351 = !DILocation(line: 354, column: 6, scope: !257, inlinedAt: !261)
!352 = !DILocation(line: 355, column: 3, scope: !346, inlinedAt: !261)
!353 = !DILocation(line: 356, column: 32, scope: !354, inlinedAt: !261)
!354 = distinct !DILexicalBlock(scope: !257, file: !4, line: 356, column: 6)
!355 = !DILocation(line: 356, column: 37, scope: !354, inlinedAt: !261)
!356 = !DILocation(line: 356, column: 43, scope: !354, inlinedAt: !261)
!357 = !DILocation(line: 356, column: 46, scope: !354, inlinedAt: !261)
!358 = !DILocation(line: 356, column: 51, scope: !354, inlinedAt: !261)
!359 = !DILocation(line: 356, column: 6, scope: !257, inlinedAt: !261)
!360 = !DILocation(line: 357, column: 3, scope: !354, inlinedAt: !261)
!361 = !DILocation(line: 358, column: 6, scope: !362, inlinedAt: !261)
!362 = distinct !DILexicalBlock(scope: !257, file: !4, line: 358, column: 6)
!363 = !DILocation(line: 358, column: 11, scope: !362, inlinedAt: !261)
!364 = !DILocation(line: 358, column: 6, scope: !257, inlinedAt: !261)
!365 = !DILocation(line: 358, column: 26, scope: !362, inlinedAt: !261)
!366 = !DILocation(line: 359, column: 6, scope: !367, inlinedAt: !261)
!367 = distinct !DILexicalBlock(scope: !257, file: !4, line: 359, column: 6)
!368 = !DILocation(line: 359, column: 11, scope: !367, inlinedAt: !261)
!369 = !DILocation(line: 359, column: 6, scope: !257, inlinedAt: !261)
!370 = !DILocation(line: 359, column: 26, scope: !367, inlinedAt: !261)
!371 = !DILocation(line: 360, column: 6, scope: !372, inlinedAt: !261)
!372 = distinct !DILexicalBlock(scope: !257, file: !4, line: 360, column: 6)
!373 = !DILocation(line: 360, column: 11, scope: !372, inlinedAt: !261)
!374 = !DILocation(line: 360, column: 6, scope: !257, inlinedAt: !261)
!375 = !DILocation(line: 360, column: 26, scope: !372, inlinedAt: !261)
!376 = !DILocation(line: 361, column: 6, scope: !377, inlinedAt: !261)
!377 = distinct !DILexicalBlock(scope: !257, file: !4, line: 361, column: 6)
!378 = !DILocation(line: 361, column: 11, scope: !377, inlinedAt: !261)
!379 = !DILocation(line: 361, column: 6, scope: !257, inlinedAt: !261)
!380 = !DILocation(line: 361, column: 26, scope: !377, inlinedAt: !261)
!381 = !DILocation(line: 362, column: 6, scope: !382, inlinedAt: !261)
!382 = distinct !DILexicalBlock(scope: !257, file: !4, line: 362, column: 6)
!383 = !DILocation(line: 362, column: 11, scope: !382, inlinedAt: !261)
!384 = !DILocation(line: 362, column: 6, scope: !257, inlinedAt: !261)
!385 = !DILocation(line: 362, column: 26, scope: !382, inlinedAt: !261)
!386 = !DILocation(line: 363, column: 6, scope: !387, inlinedAt: !261)
!387 = distinct !DILexicalBlock(scope: !257, file: !4, line: 363, column: 6)
!388 = !DILocation(line: 363, column: 11, scope: !387, inlinedAt: !261)
!389 = !DILocation(line: 363, column: 6, scope: !257, inlinedAt: !261)
!390 = !DILocation(line: 363, column: 26, scope: !387, inlinedAt: !261)
!391 = !DILocation(line: 364, column: 6, scope: !392, inlinedAt: !261)
!392 = distinct !DILexicalBlock(scope: !257, file: !4, line: 364, column: 6)
!393 = !DILocation(line: 364, column: 11, scope: !392, inlinedAt: !261)
!394 = !DILocation(line: 364, column: 6, scope: !257, inlinedAt: !261)
!395 = !DILocation(line: 364, column: 26, scope: !392, inlinedAt: !261)
!396 = !DILocation(line: 365, column: 6, scope: !397, inlinedAt: !261)
!397 = distinct !DILexicalBlock(scope: !257, file: !4, line: 365, column: 6)
!398 = !DILocation(line: 365, column: 11, scope: !397, inlinedAt: !261)
!399 = !DILocation(line: 365, column: 6, scope: !257, inlinedAt: !261)
!400 = !DILocation(line: 365, column: 26, scope: !397, inlinedAt: !261)
!401 = !DILocation(line: 366, column: 6, scope: !402, inlinedAt: !261)
!402 = distinct !DILexicalBlock(scope: !257, file: !4, line: 366, column: 6)
!403 = !DILocation(line: 366, column: 11, scope: !402, inlinedAt: !261)
!404 = !DILocation(line: 366, column: 6, scope: !257, inlinedAt: !261)
!405 = !DILocation(line: 366, column: 26, scope: !402, inlinedAt: !261)
!406 = !DILocation(line: 367, column: 6, scope: !407, inlinedAt: !261)
!407 = distinct !DILexicalBlock(scope: !257, file: !4, line: 367, column: 6)
!408 = !DILocation(line: 367, column: 11, scope: !407, inlinedAt: !261)
!409 = !DILocation(line: 367, column: 6, scope: !257, inlinedAt: !261)
!410 = !DILocation(line: 367, column: 26, scope: !407, inlinedAt: !261)
!411 = !DILocation(line: 368, column: 6, scope: !412, inlinedAt: !261)
!412 = distinct !DILexicalBlock(scope: !257, file: !4, line: 368, column: 6)
!413 = !DILocation(line: 368, column: 11, scope: !412, inlinedAt: !261)
!414 = !DILocation(line: 368, column: 6, scope: !257, inlinedAt: !261)
!415 = !DILocation(line: 368, column: 26, scope: !412, inlinedAt: !261)
!416 = !DILocation(line: 369, column: 6, scope: !417, inlinedAt: !261)
!417 = distinct !DILexicalBlock(scope: !257, file: !4, line: 369, column: 6)
!418 = !DILocation(line: 369, column: 11, scope: !417, inlinedAt: !261)
!419 = !DILocation(line: 369, column: 6, scope: !257, inlinedAt: !261)
!420 = !DILocation(line: 369, column: 26, scope: !417, inlinedAt: !261)
!421 = !DILocation(line: 370, column: 6, scope: !422, inlinedAt: !261)
!422 = distinct !DILexicalBlock(scope: !257, file: !4, line: 370, column: 6)
!423 = !DILocation(line: 370, column: 11, scope: !422, inlinedAt: !261)
!424 = !DILocation(line: 370, column: 6, scope: !257, inlinedAt: !261)
!425 = !DILocation(line: 370, column: 26, scope: !422, inlinedAt: !261)
!426 = !DILocation(line: 371, column: 6, scope: !427, inlinedAt: !261)
!427 = distinct !DILexicalBlock(scope: !257, file: !4, line: 371, column: 6)
!428 = !DILocation(line: 371, column: 11, scope: !427, inlinedAt: !261)
!429 = !DILocation(line: 371, column: 6, scope: !257, inlinedAt: !261)
!430 = !DILocation(line: 371, column: 26, scope: !427, inlinedAt: !261)
!431 = !DILocation(line: 372, column: 6, scope: !432, inlinedAt: !261)
!432 = distinct !DILexicalBlock(scope: !257, file: !4, line: 372, column: 6)
!433 = !DILocation(line: 372, column: 11, scope: !432, inlinedAt: !261)
!434 = !DILocation(line: 372, column: 6, scope: !257, inlinedAt: !261)
!435 = !DILocation(line: 372, column: 26, scope: !432, inlinedAt: !261)
!436 = !DILocation(line: 373, column: 6, scope: !437, inlinedAt: !261)
!437 = distinct !DILexicalBlock(scope: !257, file: !4, line: 373, column: 6)
!438 = !DILocation(line: 373, column: 11, scope: !437, inlinedAt: !261)
!439 = !DILocation(line: 373, column: 6, scope: !257, inlinedAt: !261)
!440 = !DILocation(line: 373, column: 26, scope: !437, inlinedAt: !261)
!441 = !DILocation(line: 374, column: 6, scope: !442, inlinedAt: !261)
!442 = distinct !DILexicalBlock(scope: !257, file: !4, line: 374, column: 6)
!443 = !DILocation(line: 374, column: 11, scope: !442, inlinedAt: !261)
!444 = !DILocation(line: 374, column: 6, scope: !257, inlinedAt: !261)
!445 = !DILocation(line: 374, column: 26, scope: !442, inlinedAt: !261)
!446 = !DILocation(line: 375, column: 6, scope: !447, inlinedAt: !261)
!447 = distinct !DILexicalBlock(scope: !257, file: !4, line: 375, column: 6)
!448 = !DILocation(line: 375, column: 11, scope: !447, inlinedAt: !261)
!449 = !DILocation(line: 375, column: 6, scope: !257, inlinedAt: !261)
!450 = !DILocation(line: 375, column: 27, scope: !447, inlinedAt: !261)
!451 = !DILocation(line: 376, column: 6, scope: !452, inlinedAt: !261)
!452 = distinct !DILexicalBlock(scope: !257, file: !4, line: 376, column: 6)
!453 = !DILocation(line: 376, column: 11, scope: !452, inlinedAt: !261)
!454 = !DILocation(line: 376, column: 6, scope: !257, inlinedAt: !261)
!455 = !DILocation(line: 376, column: 32, scope: !452, inlinedAt: !261)
!456 = !DILocation(line: 377, column: 6, scope: !457, inlinedAt: !261)
!457 = distinct !DILexicalBlock(scope: !257, file: !4, line: 377, column: 6)
!458 = !DILocation(line: 377, column: 11, scope: !457, inlinedAt: !261)
!459 = !DILocation(line: 377, column: 6, scope: !257, inlinedAt: !261)
!460 = !DILocation(line: 377, column: 32, scope: !457, inlinedAt: !261)
!461 = !DILocation(line: 378, column: 6, scope: !462, inlinedAt: !261)
!462 = distinct !DILexicalBlock(scope: !257, file: !4, line: 378, column: 6)
!463 = !DILocation(line: 378, column: 11, scope: !462, inlinedAt: !261)
!464 = !DILocation(line: 378, column: 6, scope: !257, inlinedAt: !261)
!465 = !DILocation(line: 378, column: 32, scope: !462, inlinedAt: !261)
!466 = !DILocation(line: 379, column: 6, scope: !467, inlinedAt: !261)
!467 = distinct !DILexicalBlock(scope: !257, file: !4, line: 379, column: 6)
!468 = !DILocation(line: 379, column: 11, scope: !467, inlinedAt: !261)
!469 = !DILocation(line: 379, column: 6, scope: !257, inlinedAt: !261)
!470 = !DILocation(line: 379, column: 33, scope: !467, inlinedAt: !261)
!471 = !DILocation(line: 380, column: 6, scope: !472, inlinedAt: !261)
!472 = distinct !DILexicalBlock(scope: !257, file: !4, line: 380, column: 6)
!473 = !DILocation(line: 380, column: 11, scope: !472, inlinedAt: !261)
!474 = !DILocation(line: 380, column: 6, scope: !257, inlinedAt: !261)
!475 = !DILocation(line: 380, column: 33, scope: !472, inlinedAt: !261)
!476 = !DILocation(line: 381, column: 6, scope: !477, inlinedAt: !261)
!477 = distinct !DILexicalBlock(scope: !257, file: !4, line: 381, column: 6)
!478 = !DILocation(line: 381, column: 11, scope: !477, inlinedAt: !261)
!479 = !DILocation(line: 381, column: 6, scope: !257, inlinedAt: !261)
!480 = !DILocation(line: 381, column: 33, scope: !477, inlinedAt: !261)
!481 = !DILocation(line: 382, column: 2, scope: !482, inlinedAt: !261)
!482 = distinct !DILexicalBlock(scope: !483, file: !4, line: 382, column: 2)
!483 = distinct !DILexicalBlock(scope: !257, file: !4, line: 382, column: 2)
!484 = !{i32 -2144108197, i32 -2144108168, i32 -2144108122, i32 -2144108064, i32 -2144108010, i32 -2144107956, i32 -2144107901, i32 -2144107870}
!485 = !DILocation(line: 382, column: 2, scope: !486, inlinedAt: !261)
!486 = distinct !DILexicalBlock(scope: !487, file: !4, line: 382, column: 2)
!487 = distinct !DILexicalBlock(scope: !483, file: !4, line: 382, column: 2)
!488 = !{i32 -2144107427, i32 -2144107420, i32 -2144107366, i32 -2144107335, i32 -2144107305}
!489 = !DILocation(line: 382, column: 2, scope: !487, inlinedAt: !261)
!490 = !DILocation(line: 386, column: 1, scope: !257, inlinedAt: !261)
!491 = !DILocation(line: 547, column: 9, scope: !238, inlinedAt: !243)
!492 = !DILocation(line: 549, column: 8, scope: !493, inlinedAt: !243)
!493 = distinct !DILexicalBlock(scope: !238, file: !4, line: 549, column: 7)
!494 = !DILocation(line: 549, column: 7, scope: !238, inlinedAt: !243)
!495 = !DILocation(line: 550, column: 4, scope: !493, inlinedAt: !243)
!496 = !DILocation(line: 553, column: 33, scope: !238, inlinedAt: !243)
!497 = !DILocation(line: 325, column: 6, scope: !498, inlinedAt: !255)
!498 = distinct !DILexicalBlock(scope: !251, file: !4, line: 325, column: 6)
!499 = !DILocation(line: 325, column: 6, scope: !251, inlinedAt: !255)
!500 = !DILocation(line: 326, column: 3, scope: !498, inlinedAt: !255)
!501 = !DILocation(line: 332, column: 9, scope: !251, inlinedAt: !255)
!502 = !DILocation(line: 332, column: 15, scope: !251, inlinedAt: !255)
!503 = !DILocation(line: 332, column: 2, scope: !251, inlinedAt: !255)
!504 = !DILocation(line: 336, column: 1, scope: !251, inlinedAt: !255)
!505 = !DILocation(line: 553, column: 5, scope: !238, inlinedAt: !243)
!506 = !DILocation(line: 553, column: 41, scope: !238, inlinedAt: !243)
!507 = !DILocation(line: 554, column: 5, scope: !238, inlinedAt: !243)
!508 = !DILocation(line: 554, column: 12, scope: !238, inlinedAt: !243)
!509 = !DILocation(line: 448, column: 31, scope: !226, inlinedAt: !237)
!510 = !DILocation(line: 448, column: 34, scope: !226, inlinedAt: !237)
!511 = !DILocation(line: 448, column: 14, scope: !226, inlinedAt: !237)
!512 = !DILocation(line: 450, column: 22, scope: !226, inlinedAt: !237)
!513 = !DILocation(line: 450, column: 25, scope: !226, inlinedAt: !237)
!514 = !DILocation(line: 450, column: 30, scope: !226, inlinedAt: !237)
!515 = !DILocation(line: 450, column: 36, scope: !226, inlinedAt: !237)
!516 = !DILocation(line: 450, column: 8, scope: !226, inlinedAt: !237)
!517 = !DILocation(line: 450, column: 6, scope: !226, inlinedAt: !237)
!518 = !DILocation(line: 451, column: 9, scope: !226, inlinedAt: !237)
!519 = !DILocation(line: 552, column: 3, scope: !238, inlinedAt: !243)
!520 = !DILocation(line: 557, column: 19, scope: !240, inlinedAt: !243)
!521 = !DILocation(line: 557, column: 25, scope: !240, inlinedAt: !243)
!522 = !DILocation(line: 557, column: 9, scope: !240, inlinedAt: !243)
!523 = !DILocation(line: 557, column: 2, scope: !240, inlinedAt: !243)
!524 = !DILocation(line: 558, column: 1, scope: !240, inlinedAt: !243)
!525 = !DILocation(line: 52, column: 2, scope: !221)
!526 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !527, file: !527, line: 646, type: !528, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!527 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!528 = !DISubroutineType(types: !529)
!529 = !{!25}
!530 = !DILocalVariable(name: "__ret", scope: !531, file: !527, line: 648, type: !25)
!531 = distinct !DILexicalBlock(scope: !526, file: !527, line: 648, column: 9)
!532 = !DILocation(line: 648, column: 9, scope: !531)
!533 = !DILocalVariable(name: "__edi", scope: !531, file: !527, line: 648, type: !25)
!534 = !DILocalVariable(name: "__esi", scope: !531, file: !527, line: 648, type: !25)
!535 = !DILocalVariable(name: "__edx", scope: !531, file: !527, line: 648, type: !25)
!536 = !DILocalVariable(name: "__ecx", scope: !531, file: !527, line: 648, type: !25)
!537 = !DILocalVariable(name: "__eax", scope: !531, file: !527, line: 648, type: !25)
!538 = !DILocation(line: 648, column: 9, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !527, line: 648, column: 9)
!540 = distinct !DILexicalBlock(scope: !531, file: !527, line: 648, column: 9)
!541 = !{i32 -2145781803, i32 -2145779488, i32 -2145779254, i32 -2145779203, i32 -2145779175, i32 -2145779150, i32 -2145779466, i32 -2145779453, i32 -2145779015, i32 -2145778896, i32 -2145779361, i32 -2145779334, i32 -2145779306, i32 -2145779276}
!542 = !DILocalVariable(name: "__mask", scope: !543, file: !527, line: 648, type: !25)
!543 = distinct !DILexicalBlock(scope: !539, file: !527, line: 648, column: 9)
!544 = !DILocation(line: 648, column: 9, scope: !543)
!545 = !DILocation(line: 648, column: 9, scope: !540)
!546 = !DILocation(line: 648, column: 2, scope: !526)
!547 = distinct !DISubprogram(name: "get_order", scope: !548, file: !548, line: 29, type: !290, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!548 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!549 = !DILocalVariable(name: "x", arg: 1, scope: !550, file: !551, line: 366, type: !20)
!550 = distinct !DISubprogram(name: "fls64", scope: !551, file: !551, line: 366, type: !552, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!551 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!552 = !DISubroutineType(types: !553)
!553 = !{!292, !20}
!554 = !DILocation(line: 366, column: 40, scope: !550, inlinedAt: !555)
!555 = distinct !DILocation(line: 46, column: 9, scope: !547)
!556 = !DILocalVariable(name: "bitpos", scope: !550, file: !551, line: 368, type: !292)
!557 = !DILocation(line: 368, column: 6, scope: !550, inlinedAt: !555)
!558 = !DILocalVariable(name: "size", arg: 1, scope: !547, file: !548, line: 29, type: !25)
!559 = !DILocation(line: 29, column: 63, scope: !547)
!560 = !DILocation(line: 31, column: 27, scope: !561)
!561 = distinct !DILexicalBlock(scope: !547, file: !548, line: 31, column: 6)
!562 = !DILocation(line: 31, column: 6, scope: !561)
!563 = !DILocation(line: 31, column: 6, scope: !547)
!564 = !DILocation(line: 32, column: 8, scope: !565)
!565 = distinct !DILexicalBlock(scope: !566, file: !548, line: 32, column: 7)
!566 = distinct !DILexicalBlock(scope: !561, file: !548, line: 31, column: 34)
!567 = !DILocation(line: 32, column: 7, scope: !566)
!568 = !DILocation(line: 33, column: 4, scope: !565)
!569 = !DILocation(line: 35, column: 7, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !548, line: 35, column: 7)
!571 = !DILocation(line: 35, column: 12, scope: !570)
!572 = !DILocation(line: 35, column: 7, scope: !566)
!573 = !DILocation(line: 36, column: 4, scope: !570)
!574 = !DILocation(line: 38, column: 10, scope: !566)
!575 = !DILocation(line: 38, column: 28, scope: !566)
!576 = !DILocation(line: 38, column: 41, scope: !566)
!577 = !DILocation(line: 38, column: 3, scope: !566)
!578 = !DILocation(line: 41, column: 6, scope: !547)
!579 = !DILocation(line: 42, column: 7, scope: !547)
!580 = !DILocation(line: 46, column: 15, scope: !547)
!581 = !DILocation(line: 374, column: 2, scope: !550, inlinedAt: !555)
!582 = !DILocation(line: 376, column: 14, scope: !550, inlinedAt: !555)
!583 = !{i32 663005}
!584 = !DILocation(line: 377, column: 9, scope: !550, inlinedAt: !555)
!585 = !DILocation(line: 377, column: 16, scope: !550, inlinedAt: !555)
!586 = !DILocation(line: 46, column: 2, scope: !547)
!587 = !DILocation(line: 48, column: 1, scope: !547)
!588 = distinct !DISubprogram(name: "__ilog2_u64", scope: !589, file: !589, line: 30, type: !590, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!589 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!590 = !DISubroutineType(types: !591)
!591 = !{!292, !19}
!592 = !DILocation(line: 366, column: 40, scope: !550, inlinedAt: !593)
!593 = distinct !DILocation(line: 32, column: 9, scope: !588)
!594 = !DILocation(line: 368, column: 6, scope: !550, inlinedAt: !593)
!595 = !DILocalVariable(name: "n", arg: 1, scope: !588, file: !589, line: 30, type: !19)
!596 = !DILocation(line: 30, column: 21, scope: !588)
!597 = !DILocation(line: 32, column: 15, scope: !588)
!598 = !DILocation(line: 374, column: 2, scope: !550, inlinedAt: !593)
!599 = !DILocation(line: 376, column: 14, scope: !550, inlinedAt: !593)
!600 = !DILocation(line: 377, column: 9, scope: !550, inlinedAt: !593)
!601 = !DILocation(line: 377, column: 16, scope: !550, inlinedAt: !593)
!602 = !DILocation(line: 32, column: 18, scope: !588)
!603 = !DILocation(line: 32, column: 2, scope: !588)
!604 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !605, file: !605, line: 137, type: !606, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!605 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!606 = !DISubroutineType(types: !607)
!607 = !{!24, !229, !608, !232, !22}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!610 = !DILocalVariable(name: "s", arg: 1, scope: !604, file: !605, line: 137, type: !229)
!611 = !DILocation(line: 137, column: 54, scope: !604)
!612 = !DILocalVariable(name: "object", arg: 2, scope: !604, file: !605, line: 137, type: !608)
!613 = !DILocation(line: 137, column: 69, scope: !604)
!614 = !DILocalVariable(name: "size", arg: 3, scope: !604, file: !605, line: 138, type: !232)
!615 = !DILocation(line: 138, column: 12, scope: !604)
!616 = !DILocalVariable(name: "flags", arg: 4, scope: !604, file: !605, line: 138, type: !22)
!617 = !DILocation(line: 138, column: 24, scope: !604)
!618 = !DILocation(line: 140, column: 17, scope: !604)
!619 = !DILocation(line: 140, column: 2, scope: !604)
!620 = distinct !DISubprogram(name: "acpi_hw_get_pci_device_info", scope: !1, file: !1, line: 296, type: !621, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!621 = !DISubroutineType(types: !622)
!622 = !{!12, !38, !45, !623, !624}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!625 = !DILocalVariable(name: "pci_id", arg: 1, scope: !620, file: !1, line: 296, type: !38)
!626 = !DILocation(line: 296, column: 49, scope: !620)
!627 = !DILocalVariable(name: "pci_device", arg: 2, scope: !620, file: !1, line: 297, type: !45)
!628 = !DILocation(line: 297, column: 20, scope: !620)
!629 = !DILocalVariable(name: "bus_number", arg: 3, scope: !620, file: !1, line: 298, type: !623)
!630 = !DILocation(line: 298, column: 13, scope: !620)
!631 = !DILocalVariable(name: "is_bridge", arg: 4, scope: !620, file: !1, line: 298, type: !624)
!632 = !DILocation(line: 298, column: 29, scope: !620)
!633 = !DILocalVariable(name: "status", scope: !620, file: !1, line: 300, type: !12)
!634 = !DILocation(line: 300, column: 14, scope: !620)
!635 = !DILocalVariable(name: "object_type", scope: !620, file: !1, line: 301, type: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !13, line: 635, baseType: !14)
!637 = !DILocation(line: 301, column: 19, scope: !620)
!638 = !DILocalVariable(name: "return_value", scope: !620, file: !1, line: 302, type: !19)
!639 = !DILocation(line: 302, column: 6, scope: !620)
!640 = !DILocalVariable(name: "pci_value", scope: !620, file: !1, line: 303, type: !19)
!641 = !DILocation(line: 303, column: 6, scope: !620)
!642 = !DILocation(line: 307, column: 25, scope: !620)
!643 = !DILocation(line: 307, column: 11, scope: !620)
!644 = !DILocation(line: 307, column: 9, scope: !620)
!645 = !DILocation(line: 308, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !620, file: !1, line: 308, column: 6)
!647 = !DILocation(line: 308, column: 6, scope: !620)
!648 = !DILocation(line: 309, column: 11, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !1, line: 308, column: 28)
!650 = !DILocation(line: 309, column: 3, scope: !649)
!651 = !DILocation(line: 312, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !620, file: !1, line: 312, column: 6)
!653 = !DILocation(line: 312, column: 18, scope: !652)
!654 = !DILocation(line: 312, column: 6, scope: !620)
!655 = !DILocation(line: 313, column: 3, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !1, line: 312, column: 39)
!657 = !DILocation(line: 319, column: 8, scope: !620)
!658 = !DILocation(line: 318, column: 11, scope: !620)
!659 = !DILocation(line: 318, column: 9, scope: !620)
!660 = !DILocation(line: 320, column: 6, scope: !661)
!661 = distinct !DILexicalBlock(scope: !620, file: !1, line: 320, column: 6)
!662 = !DILocation(line: 320, column: 6, scope: !620)
!663 = !DILocation(line: 321, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !661, file: !1, line: 320, column: 28)
!665 = !DILocation(line: 328, column: 19, scope: !620)
!666 = !DILocation(line: 328, column: 2, scope: !620)
!667 = !DILocation(line: 328, column: 10, scope: !620)
!668 = !DILocation(line: 328, column: 17, scope: !620)
!669 = !DILocation(line: 329, column: 21, scope: !620)
!670 = !DILocation(line: 329, column: 2, scope: !620)
!671 = !DILocation(line: 329, column: 10, scope: !620)
!672 = !DILocation(line: 329, column: 19, scope: !620)
!673 = !DILocation(line: 335, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !620, file: !1, line: 335, column: 6)
!675 = !DILocation(line: 335, column: 6, scope: !674)
!676 = !DILocation(line: 335, column: 6, scope: !620)
!677 = !DILocation(line: 336, column: 18, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !1, line: 335, column: 18)
!679 = !DILocation(line: 336, column: 17, scope: !678)
!680 = !DILocation(line: 336, column: 3, scope: !678)
!681 = !DILocation(line: 336, column: 11, scope: !678)
!682 = !DILocation(line: 336, column: 15, scope: !678)
!683 = !DILocation(line: 337, column: 2, scope: !678)
!684 = !DILocation(line: 344, column: 3, scope: !620)
!685 = !DILocation(line: 344, column: 13, scope: !620)
!686 = !DILocation(line: 345, column: 42, scope: !620)
!687 = !DILocation(line: 345, column: 11, scope: !620)
!688 = !DILocation(line: 345, column: 9, scope: !620)
!689 = !DILocation(line: 348, column: 6, scope: !690)
!690 = distinct !DILexicalBlock(scope: !620, file: !1, line: 348, column: 6)
!691 = !DILocation(line: 348, column: 6, scope: !620)
!692 = !DILocation(line: 349, column: 11, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !1, line: 348, column: 28)
!694 = !DILocation(line: 349, column: 3, scope: !693)
!695 = !DILocation(line: 354, column: 12, scope: !620)
!696 = !DILocation(line: 356, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !620, file: !1, line: 356, column: 6)
!698 = !DILocation(line: 356, column: 17, scope: !697)
!699 = !DILocation(line: 356, column: 37, scope: !697)
!700 = !DILocation(line: 357, column: 7, scope: !697)
!701 = !DILocation(line: 357, column: 17, scope: !697)
!702 = !DILocation(line: 356, column: 6, scope: !620)
!703 = !DILocation(line: 358, column: 3, scope: !704)
!704 = distinct !DILexicalBlock(scope: !697, file: !1, line: 357, column: 46)
!705 = !DILocation(line: 363, column: 42, scope: !620)
!706 = !DILocation(line: 363, column: 11, scope: !620)
!707 = !DILocation(line: 363, column: 9, scope: !620)
!708 = !DILocation(line: 366, column: 6, scope: !709)
!709 = distinct !DILexicalBlock(scope: !620, file: !1, line: 366, column: 6)
!710 = !DILocation(line: 366, column: 6, scope: !620)
!711 = !DILocation(line: 367, column: 11, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !1, line: 366, column: 28)
!713 = !DILocation(line: 367, column: 3, scope: !712)
!714 = !DILocation(line: 370, column: 3, scope: !620)
!715 = !DILocation(line: 370, column: 13, scope: !620)
!716 = !DILocation(line: 371, column: 21, scope: !620)
!717 = !DILocation(line: 371, column: 16, scope: !620)
!718 = !DILocation(line: 371, column: 2, scope: !620)
!719 = !DILocation(line: 371, column: 10, scope: !620)
!720 = !DILocation(line: 371, column: 14, scope: !620)
!721 = !DILocation(line: 375, column: 42, scope: !620)
!722 = !DILocation(line: 375, column: 11, scope: !620)
!723 = !DILocation(line: 375, column: 9, scope: !620)
!724 = !DILocation(line: 378, column: 6, scope: !725)
!725 = distinct !DILexicalBlock(scope: !620, file: !1, line: 378, column: 6)
!726 = !DILocation(line: 378, column: 6, scope: !620)
!727 = !DILocation(line: 379, column: 11, scope: !728)
!728 = distinct !DILexicalBlock(scope: !725, file: !1, line: 378, column: 28)
!729 = !DILocation(line: 379, column: 3, scope: !728)
!730 = !DILocation(line: 382, column: 21, scope: !620)
!731 = !DILocation(line: 382, column: 16, scope: !620)
!732 = !DILocation(line: 382, column: 3, scope: !620)
!733 = !DILocation(line: 382, column: 14, scope: !620)
!734 = !DILocation(line: 383, column: 2, scope: !620)
!735 = !DILocation(line: 384, column: 1, scope: !620)
!736 = distinct !DISubprogram(name: "acpi_os_free", scope: !222, file: !222, line: 60, type: !737, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !46)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !24}
!739 = !DILocalVariable(name: "memory", arg: 1, scope: !736, file: !222, line: 60, type: !24)
!740 = !DILocation(line: 60, column: 39, scope: !736)
!741 = !DILocation(line: 62, column: 8, scope: !736)
!742 = !DILocation(line: 62, column: 2, scope: !736)
!743 = !DILocation(line: 63, column: 1, scope: !736)
