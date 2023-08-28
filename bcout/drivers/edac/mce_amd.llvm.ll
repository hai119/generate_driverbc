; ModuleID = '../bcout/drivers/edac/mce_amd.llvm.bc'
source_filename = "drivers/edac/mce_amd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcallearly.init\22, \22a\22\09"
module asm "__initcall_mce_amd_initearly:\09\09\09"
module asm ".long\09mce_amd_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.mce = type { i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i32, i64, i64, i64, i64, i32, i64 }
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon = type { i64, [72 x i8] }
%struct.amd_decoder_ops = type { i1 (i16, i8)*, i1 (i16, i8)*, i1 (i16, i8)* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
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
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
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
%struct.smca_bank = type { %struct.smca_hwid*, i32, i8 }
%struct.smca_hwid = type { i32, i32, i8 }
%struct.smca_mce_desc = type { i8**, i32 }

@decode_dram_ecc = internal global void (i32, %struct.mce*)* null, align 8, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"drivers/edac/mce_amd.c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SRC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"RES\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"OBS\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"GEN\00", align 1
@pp_msgs = dso_local constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)], align 16, !dbg !109
@__UNIQUE_ID___addressable_mce_amd_init162 = internal global i8* bitcast (i32 ()* @mce_amd_init to i8*), section ".discard.addressable", align 8, !dbg !118
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@xec_mask = internal global i8 15, align 1, !dbg !130
@fam_ops = internal global %struct.amd_decoder_ops zeroinitializer, align 8, !dbg !133
@mce_amd_init.__print_once = internal global i8 0, section ".data.once", align 1, !dbg !121
@.str.5 = private unnamed_addr constant [55 x i8] c"\014Decoding supported only on Scalable MCA processors.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"\014Huh? What family is it: 0x%x?!\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"\016MCE: In-kernel MCE decoding enabled.\0A\00", align 1
@amd_mce_dec_nb = internal global %struct.notifier_block { i32 (%struct.notifier_block*, i64, i8*)* @amd_decode_mce, %struct.notifier_block* null, i32 2 }, align 8, !dbg !163
@.str.8 = private unnamed_addr constant [27 x i8] c"\01cduring system linefill.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"\01cduring a linefill from L2.\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\01cParity error during data load.\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"\01cCopyback Parity/Victim error.\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"\01cTag Snoop error.\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"\01c in the write data buffers.\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\01c in the victim data buffers.\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"\01c: %s error in the L2 cache tags.\0A\00", align 1
@rrrr_msgs = internal constant [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)], align 16, !dbg !146
@.str.16 = private unnamed_addr constant [10 x i8] c"Wrong R4!\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"\01c%s error in a Page Descriptor Cache or Guest TLB.\0A\00", align 1
@tt_msgs = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0)], align 16, !dbg !151
@.str.18 = private unnamed_addr constant [44 x i8] c"\01c: %s/ECC error in data read from NB: %s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"\01c: %s error during data copyback.\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"\01c: %s parity/ECC error during data access from L2.\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"RD\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"WR\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"DRD\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"DWR\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"IRD\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"PRF\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"EV\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"SNP\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"INSN\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"RESV\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"\01cduring data scrub.\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"\01cduring L1 linefill from L2.\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"\01cData/Tag %s error.\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"\01cData/Tag parity error due to %s.\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"load/hw prf\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"\01cCopyback parity error on a tag miss.\0A\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"\01cTag parity error during snoop.\0A\00", align 1
@.str.40 = private unnamed_addr constant [31 x i8] c"\01cSystem read data error on a \00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"\01cTLB reload.\0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"\01cstore.\0A\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"\01cload.\0A\00", align 1
@.str.44 = private unnamed_addr constant [46 x i8] c"\01cData/tag array parity error for a tag hit.\0A\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"\01cTag error during snoop/victimization.\0A\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"\01cTag parity error from victim castout.\0A\00", align 1
@.str.47 = private unnamed_addr constant [37 x i8] c"\01cMicrocode patch RAM parity error.\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"\01cData Array access error.\0A\00", align 1
@.str.49 = private unnamed_addr constant [42 x i8] c"\01cUC error during a linefill from L2/NB.\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"\01cSTQ access error.\0A\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"\01cSCB access error.\0A\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"\01cTag error.\0A\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"\01cLDQ access error.\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"\01cSystem Read Data Error.\0A\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"\01c Internal error condition type %d.\0A\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"\01cHardware Assert.\0A\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"\01c%s.\0A\00", align 1
@f15h_mc1_mce_desc = internal constant [18 x i8*] [i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0)], align 16, !dbg !153
@.str.58 = private unnamed_addr constant [28 x i8] c"\01cDecoder %s parity error.\0A\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"UC during a demand linefill from L2\00", align 1
@.str.60 = private unnamed_addr constant [38 x i8] c"Parity error during data load from IC\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"Parity error for IC valid bit\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"Main tag parity error\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"Parity error in prediction queue\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"PFB data/address parity error\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"Parity error in the branch status reg\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"PFB promotion address error\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"Tag error during probe/victimization\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"Parity error for IC probe tag valid bit\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"PFB non-cacheable bit parity error\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"PFB valid bit parity error\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"Microcode Patch Buffer\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"uop queue\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"insn buffer\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"predecode buffer\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"fetch address FIFO\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"dispatch uop queue\00", align 1
@.str.77 = private unnamed_addr constant [31 x i8] c"\01cData parity TLB read error.\0A\00", align 1
@.str.78 = private unnamed_addr constant [38 x i8] c"\01cPoison data provided for TLB fill.\0A\00", align 1
@.str.79 = private unnamed_addr constant [40 x i8] c"\01cError during attempted NB data read.\0A\00", align 1
@f15h_mc2_mce_desc = internal constant [14 x i8*] [i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.93, i32 0, i32 0)], align 16, !dbg !158
@.str.80 = private unnamed_addr constant [29 x i8] c"Fill ECC error on data fills\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"Fill parity error on insn fills\00", align 1
@.str.82 = private unnamed_addr constant [37 x i8] c"Prefetcher request FIFO parity error\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"PRQ address parity error\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"PRQ data parity error\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"WCC Tag ECC error\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"WCC Data ECC error\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"WCB Data parity error\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"VB Data ECC or parity error\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"L2 Tag ECC error\00", align 1
@.str.90 = private unnamed_addr constant [22 x i8] c"Hard L2 Tag ECC error\00", align 1
@.str.91 = private unnamed_addr constant [24 x i8] c"Multiple hits on L2 tag\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"XAB parity error\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"PRB address parity error\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"\01c%cBUFF parity error.\0A\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"\01cECC error in L2 tag (%s).\0A\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"BankReq\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"Prb\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"Fill\00", align 1
@.str.99 = private unnamed_addr constant [36 x i8] c"\01cECC error in L2 data array (%s).\0A\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"Hit\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"Attr\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"Vict\00", align 1
@.str.103 = private unnamed_addr constant [43 x i8] c"\01cParity error in L2 attribute bits (%s).\0A\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"\010[Hardware Error]: %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [65 x i8] c"\010[Hardware Error]: CPU:%d (%x:%x:%x) MC%d_STATUS[%s|%s|%s|%s|%s\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"Over\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"UE\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"CE\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"MiscV\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"AddrV\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"PCC\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"\01c|%s\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"TCC\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"SyndV\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"\01c|%sECC\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.118 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"Deferred\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"Poison\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"Scrub\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"\01c]: 0x%016llx\0A\00", align 1
@.str.123 = private unnamed_addr constant [43 x i8] c"\010[Hardware Error]: Error Addr: 0x%016llx\0A\00", align 1
@.str.124 = private unnamed_addr constant [37 x i8] c"\010[Hardware Error]: PPIN: 0x%016llx\0A\00", align 1
@.str.125 = private unnamed_addr constant [36 x i8] c"\010[Hardware Error]: IPID: 0x%016llx\00", align 1
@.str.126 = private unnamed_addr constant [24 x i8] c"\01c, Syndrome: 0x%016llx\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@.str.128 = private unnamed_addr constant [31 x i8] c"\010[Hardware Error]: TSC: %llu\0A\00", align 1
@.str.129 = private unnamed_addr constant [20 x i8] c"System Fatal error.\00", align 1
@.str.130 = private unnamed_addr constant [41 x i8] c"Uncorrected, software restartable error.\00", align 1
@.str.131 = private unnamed_addr constant [41 x i8] c"Uncorrected, software containable error.\00", align 1
@.str.132 = private unnamed_addr constant [36 x i8] c"Deferred error, no action required.\00", align 1
@.str.133 = private unnamed_addr constant [37 x i8] c"Corrected error, no action required.\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@smca_banks = external dso_local global [64 x %struct.smca_bank], align 16
@.str.134 = private unnamed_addr constant [42 x i8] c"\010[Hardware Error]: Bank %d is reserved.\0A\00", align 1
@.str.135 = private unnamed_addr constant [43 x i8] c"\010[Hardware Error]: %s Ext. Error Code: %d\00", align 1
@smca_mce_descs = internal global [21 x %struct.smca_mce_desc] [%struct.smca_mce_desc { i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @smca_ls_mce_desc, i32 0, i32 0), i32 21 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([24 x i8*], [24 x i8*]* @smca_ls2_mce_desc, i32 0, i32 0), i32 24 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([19 x i8*], [19 x i8*]* @smca_if_mce_desc, i32 0, i32 0), i32 19 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @smca_l2_mce_desc, i32 0, i32 0), i32 4 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @smca_de_mce_desc, i32 0, i32 0), i32 10 }, %struct.smca_mce_desc zeroinitializer, %struct.smca_mce_desc { i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @smca_ex_mce_desc, i32 0, i32 0), i32 14 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @smca_fp_mce_desc, i32 0, i32 0), i32 7 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @smca_l3_mce_desc, i32 0, i32 0), i32 8 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @smca_cs_mce_desc, i32 0, i32 0), i32 9 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @smca_cs2_mce_desc, i32 0, i32 0), i32 14 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @smca_pie_mce_desc, i32 0, i32 0), i32 5 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @smca_umc_mce_desc, i32 0, i32 0), i32 8 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @smca_pb_mce_desc, i32 0, i32 0), i32 1 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @smca_psp_mce_desc, i32 0, i32 0), i32 1 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([18 x i8*], [18 x i8*]* @smca_psp2_mce_desc, i32 0, i32 0), i32 18 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @smca_smu_mce_desc, i32 0, i32 0), i32 1 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([12 x i8*], [12 x i8*]* @smca_smu2_mce_desc, i32 0, i32 0), i32 12 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @smca_mp5_mce_desc, i32 0, i32 0), i32 10 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @smca_nbio_mce_desc, i32 0, i32 0), i32 5 }, %struct.smca_mce_desc { i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @smca_pcie_mce_desc, i32 0, i32 0), i32 5 }], align 16, !dbg !176
@.str.136 = private unnamed_addr constant [9 x i8] c"\01c, %s.\0A\00", align 1
@smca_ls_mce_desc = internal constant [21 x i8*] [i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.137, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.138, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.139, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.140, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.142, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.143, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.144, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.145, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.146, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.147, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.148, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.149, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.150, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.151, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.152, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.153, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.154, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.155, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.141, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.156, i32 0, i32 0)], align 16, !dbg !186
@smca_ls2_mce_desc = internal constant [24 x i8*] [i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.157, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.159, i32 0, i32 0), i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.160, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.161, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.162, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.163, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.164, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.165, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.171, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.172, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.173, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.174, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.175, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.176, i32 0, i32 0), i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.177, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.178, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.180, i32 0, i32 0)], align 16, !dbg !189
@smca_if_mce_desc = internal constant [19 x i8*] [i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.181, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.184, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.185, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.186, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.189, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.190, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.191, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.192, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.193, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.194, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.195, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.196, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.197, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.198, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.199, i32 0, i32 0)], align 16, !dbg !194
@smca_l2_mce_desc = internal constant [4 x i8*] [i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.200, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.201, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.202, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.203, i32 0, i32 0)], align 16, !dbg !199
@smca_de_mce_desc = internal constant [10 x i8*] [i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.204, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.205, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.206, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.207, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.208, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.209, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.210, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.211, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.212, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.213, i32 0, i32 0)], align 16, !dbg !201
@smca_ex_mce_desc = internal constant [14 x i8*] [i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.214, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.215, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.216, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.217, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.218, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.219, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.220, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.221, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.222, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.223, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.224, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.225, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.226, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.227, i32 0, i32 0)], align 16, !dbg !206
@smca_fp_mce_desc = internal constant [7 x i8*] [i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.228, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.229, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.230, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.231, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.232, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.233, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.234, i32 0, i32 0)], align 16, !dbg !208
@smca_l3_mce_desc = internal constant [8 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.235, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.236, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.237, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.238, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.239, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.240, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.241, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.242, i32 0, i32 0)], align 16, !dbg !213
@smca_cs_mce_desc = internal constant [9 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.251, i32 0, i32 0)], align 16, !dbg !218
@smca_cs2_mce_desc = internal constant [14 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.243, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.244, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.245, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.246, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.247, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.248, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.249, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.250, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.252, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.253, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.251, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.254, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.255, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.256, i32 0, i32 0)], align 16, !dbg !220
@smca_pie_mce_desc = internal constant [5 x i8*] [i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.257, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.258, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.259, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.260, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.261, i32 0, i32 0)], align 16, !dbg !222
@smca_umc_mce_desc = internal constant [8 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.262, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.263, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.264, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.265, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.266, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.267, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.268, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.269, i32 0, i32 0)], align 16, !dbg !227
@smca_pb_mce_desc = internal constant [1 x i8*] [i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.270, i32 0, i32 0)], align 8, !dbg !229
@smca_psp_mce_desc = internal constant [1 x i8*] [i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.271, i32 0, i32 0)], align 8, !dbg !234
@smca_psp2_mce_desc = internal constant [18 x i8*] [i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.274, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.275, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.276, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.277, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.278, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.279, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.280, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.281, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.282, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.283, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.284, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.285, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.286, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.287, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.288, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.289, i32 0, i32 0)], align 16, !dbg !236
@smca_smu_mce_desc = internal constant [1 x i8*] [i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.290, i32 0, i32 0)], align 8, !dbg !238
@smca_smu2_mce_desc = internal constant [12 x i8*] [i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.298, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.289, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.299, i32 0, i32 0)], align 16, !dbg !240
@smca_mp5_mce_desc = internal constant [10 x i8*] [i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.272, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.273, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.291, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.292, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.293, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.294, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.295, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.296, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.297, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.298, i32 0, i32 0)], align 16, !dbg !245
@smca_nbio_mce_desc = internal constant [5 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.300, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.301, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.302, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.303, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.304, i32 0, i32 0)], align 16, !dbg !247
@smca_pcie_mce_desc = internal constant [5 x i8*] [i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.305, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.306, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.307, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.308, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.309, i32 0, i32 0)], align 16, !dbg !249
@.str.137 = private unnamed_addr constant [24 x i8] c"Load queue parity error\00", align 1
@.str.138 = private unnamed_addr constant [25 x i8] c"Store queue parity error\00", align 1
@.str.139 = private unnamed_addr constant [41 x i8] c"Miss address buffer payload parity error\00", align 1
@.str.140 = private unnamed_addr constant [25 x i8] c"Level 1 TLB parity error\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"DC Tag error type 5\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"DC Tag error type 6\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"DC Tag error type 1\00", align 1
@.str.144 = private unnamed_addr constant [22 x i8] c"Internal error type 1\00", align 1
@.str.145 = private unnamed_addr constant [22 x i8] c"Internal error type 2\00", align 1
@.str.146 = private unnamed_addr constant [32 x i8] c"System Read Data Error Thread 0\00", align 1
@.str.147 = private unnamed_addr constant [32 x i8] c"System Read Data Error Thread 1\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"DC Tag error type 2\00", align 1
@.str.149 = private unnamed_addr constant [44 x i8] c"DC Data error type 1 and poison consumption\00", align 1
@.str.150 = private unnamed_addr constant [21 x i8] c"DC Data error type 2\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"DC Data error type 3\00", align 1
@.str.152 = private unnamed_addr constant [20 x i8] c"DC Tag error type 4\00", align 1
@.str.153 = private unnamed_addr constant [25 x i8] c"Level 2 TLB parity error\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"PDC parity error\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"DC Tag error type 3\00", align 1
@.str.156 = private unnamed_addr constant [19 x i8] c"L2 Fill Data error\00", align 1
@.str.157 = private unnamed_addr constant [75 x i8] c"An ECC error was detected on a data cache read by a probe or victimization\00", align 1
@.str.158 = private unnamed_addr constant [70 x i8] c"An ECC error or L2 poison was detected on a data cache read by a load\00", align 1
@.str.159 = private unnamed_addr constant [71 x i8] c"An ECC error was detected on a data cache read-modify-write by a store\00", align 1
@.str.160 = private unnamed_addr constant [91 x i8] c"An ECC error or poison bit mismatch was detected on a tag read by a probe or victimization\00", align 1
@.str.161 = private unnamed_addr constant [73 x i8] c"An ECC error or poison bit mismatch was detected on a tag read by a load\00", align 1
@.str.162 = private unnamed_addr constant [74 x i8] c"An ECC error or poison bit mismatch was detected on a tag read by a store\00", align 1
@.str.163 = private unnamed_addr constant [52 x i8] c"An ECC error was detected on an EMEM read by a load\00", align 1
@.str.164 = private unnamed_addr constant [66 x i8] c"An ECC error was detected on an EMEM read-modify-write by a store\00", align 1
@.str.165 = private unnamed_addr constant [61 x i8] c"A parity error was detected in an L1 TLB entry by any access\00", align 1
@.str.166 = private unnamed_addr constant [61 x i8] c"A parity error was detected in an L2 TLB entry by any access\00", align 1
@.str.167 = private unnamed_addr constant [57 x i8] c"A parity error was detected in a PWC entry by any access\00", align 1
@.str.168 = private unnamed_addr constant [58 x i8] c"A parity error was detected in an STQ entry by any access\00", align 1
@.str.169 = private unnamed_addr constant [58 x i8] c"A parity error was detected in an LDQ entry by any access\00", align 1
@.str.170 = private unnamed_addr constant [57 x i8] c"A parity error was detected in a MAB entry by any access\00", align 1
@.str.171 = private unnamed_addr constant [70 x i8] c"A parity error was detected in an SCB entry state field by any access\00", align 1
@.str.172 = private unnamed_addr constant [72 x i8] c"A parity error was detected in an SCB entry address field by any access\00", align 1
@.str.173 = private unnamed_addr constant [69 x i8] c"A parity error was detected in an SCB entry data field by any access\00", align 1
@.str.174 = private unnamed_addr constant [57 x i8] c"A parity error was detected in a WCB entry by any access\00", align 1
@.str.175 = private unnamed_addr constant [59 x i8] c"A poisoned line was detected in an SCB entry by any access\00", align 1
@.str.176 = private unnamed_addr constant [82 x i8] c"A SystemReadDataError error was reported on read data returned from L2 for a load\00", align 1
@.str.177 = private unnamed_addr constant [88 x i8] c"A SystemReadDataError error was reported on read data returned from L2 for an SCB store\00", align 1
@.str.178 = private unnamed_addr constant [87 x i8] c"A SystemReadDataError error was reported on read data returned from L2 for a WCB store\00", align 1
@.str.179 = private unnamed_addr constant [40 x i8] c"A hardware assertion error was reported\00", align 1
@.str.180 = private unnamed_addr constant [87 x i8] c"A parity error was detected in an STLF, SCB EMEM entry or SRB store data by any access\00", align 1
@.str.181 = private unnamed_addr constant [42 x i8] c"Op Cache Microtag Probe Port Parity Error\00", align 1
@.str.182 = private unnamed_addr constant [40 x i8] c"IC Microtag or Full Tag Multi-hit Error\00", align 1
@.str.183 = private unnamed_addr constant [25 x i8] c"IC Full Tag Parity Error\00", align 1
@.str.184 = private unnamed_addr constant [27 x i8] c"IC Data Array Parity Error\00", align 1
@.str.185 = private unnamed_addr constant [39 x i8] c"Decoupling Queue PhysAddr Parity Error\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"L0 ITLB Parity Error\00", align 1
@.str.187 = private unnamed_addr constant [21 x i8] c"L1 ITLB Parity Error\00", align 1
@.str.188 = private unnamed_addr constant [21 x i8] c"L2 ITLB Parity Error\00", align 1
@.str.189 = private unnamed_addr constant [32 x i8] c"BPQ Thread 0 Snoop Parity Error\00", align 1
@.str.190 = private unnamed_addr constant [32 x i8] c"BPQ Thread 1 Snoop Parity Error\00", align 1
@.str.191 = private unnamed_addr constant [25 x i8] c"L1 BTB Multi-Match Error\00", align 1
@.str.192 = private unnamed_addr constant [25 x i8] c"L2 BTB Multi-Match Error\00", align 1
@.str.193 = private unnamed_addr constant [31 x i8] c"L2 Cache Response Poison Error\00", align 1
@.str.194 = private unnamed_addr constant [23 x i8] c"System Read Data Error\00", align 1
@.str.195 = private unnamed_addr constant [25 x i8] c"Hardware Assertion Error\00", align 1
@.str.196 = private unnamed_addr constant [17 x i8] c"L1-TLB Multi-Hit\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"L2-TLB Multi-Hit\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"BSR Parity Error\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"CT MCE\00", align 1
@.str.200 = private unnamed_addr constant [31 x i8] c"L2M Tag Multiple-Way-Hit error\00", align 1
@.str.201 = private unnamed_addr constant [33 x i8] c"L2M Tag or State Array ECC Error\00", align 1
@.str.202 = private unnamed_addr constant [25 x i8] c"L2M Data Array ECC Error\00", align 1
@.str.203 = private unnamed_addr constant [22 x i8] c"Hardware Assert Error\00", align 1
@.str.204 = private unnamed_addr constant [32 x i8] c"Micro-op cache tag parity error\00", align 1
@.str.205 = private unnamed_addr constant [33 x i8] c"Micro-op cache data parity error\00", align 1
@.str.206 = private unnamed_addr constant [32 x i8] c"Instruction buffer parity error\00", align 1
@.str.207 = private unnamed_addr constant [28 x i8] c"Micro-op queue parity error\00", align 1
@.str.208 = private unnamed_addr constant [40 x i8] c"Instruction dispatch queue parity error\00", align 1
@.str.209 = private unnamed_addr constant [32 x i8] c"Fetch address FIFO parity error\00", align 1
@.str.210 = private unnamed_addr constant [28 x i8] c"Patch RAM data parity error\00", align 1
@.str.211 = private unnamed_addr constant [33 x i8] c"Patch RAM sequencer parity error\00", align 1
@.str.212 = private unnamed_addr constant [29 x i8] c"Micro-op buffer parity error\00", align 1
@.str.213 = private unnamed_addr constant [29 x i8] c"Hardware Assertion MCA Error\00", align 1
@.str.214 = private unnamed_addr constant [23 x i8] c"Watchdog Timeout error\00", align 1
@.str.215 = private unnamed_addr constant [36 x i8] c"Physical register file parity error\00", align 1
@.str.216 = private unnamed_addr constant [32 x i8] c"Flag register file parity error\00", align 1
@.str.217 = private unnamed_addr constant [50 x i8] c"Immediate displacement register file parity error\00", align 1
@.str.218 = private unnamed_addr constant [39 x i8] c"Address generator payload parity error\00", align 1
@.str.219 = private unnamed_addr constant [24 x i8] c"EX payload parity error\00", align 1
@.str.220 = private unnamed_addr constant [30 x i8] c"Checkpoint queue parity error\00", align 1
@.str.221 = private unnamed_addr constant [35 x i8] c"Retire dispatch queue parity error\00", align 1
@.str.222 = private unnamed_addr constant [33 x i8] c"Retire status queue parity error\00", align 1
@.str.223 = private unnamed_addr constant [30 x i8] c"Scheduling queue parity error\00", align 1
@.str.224 = private unnamed_addr constant [33 x i8] c"Branch buffer queue parity error\00", align 1
@.str.225 = private unnamed_addr constant [25 x i8] c"Hardware Assertion error\00", align 1
@.str.226 = private unnamed_addr constant [22 x i8] c"Spec Map parity error\00", align 1
@.str.227 = private unnamed_addr constant [24 x i8] c"Retire Map parity error\00", align 1
@.str.228 = private unnamed_addr constant [42 x i8] c"Physical register file (PRF) parity error\00", align 1
@.str.229 = private unnamed_addr constant [27 x i8] c"Freelist (FL) parity error\00", align 1
@.str.230 = private unnamed_addr constant [28 x i8] c"Schedule queue parity error\00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c"NSQ parity error\00", align 1
@.str.232 = private unnamed_addr constant [31 x i8] c"Retire queue (RQ) parity error\00", align 1
@.str.233 = private unnamed_addr constant [40 x i8] c"Status register file (SRF) parity error\00", align 1
@.str.234 = private unnamed_addr constant [19 x i8] c"Hardware assertion\00", align 1
@.str.235 = private unnamed_addr constant [27 x i8] c"Shadow Tag Macro ECC Error\00", align 1
@.str.236 = private unnamed_addr constant [37 x i8] c"Shadow Tag Macro Multi-way-hit Error\00", align 1
@.str.237 = private unnamed_addr constant [18 x i8] c"L3M Tag ECC Error\00", align 1
@.str.238 = private unnamed_addr constant [28 x i8] c"L3M Tag Multi-way-hit Error\00", align 1
@.str.239 = private unnamed_addr constant [19 x i8] c"L3M Data ECC Error\00", align 1
@.str.240 = private unnamed_addr constant [48 x i8] c"SDP Parity Error or SystemReadDataError from XI\00", align 1
@.str.241 = private unnamed_addr constant [29 x i8] c"L3 Victim Queue Parity Error\00", align 1
@.str.242 = private unnamed_addr constant [22 x i8] c"L3 Hardware Assertion\00", align 1
@.str.243 = private unnamed_addr constant [16 x i8] c"Illegal Request\00", align 1
@.str.244 = private unnamed_addr constant [18 x i8] c"Address Violation\00", align 1
@.str.245 = private unnamed_addr constant [19 x i8] c"Security Violation\00", align 1
@.str.246 = private unnamed_addr constant [17 x i8] c"Illegal Response\00", align 1
@.str.247 = private unnamed_addr constant [20 x i8] c"Unexpected Response\00", align 1
@.str.248 = private unnamed_addr constant [30 x i8] c"Request or Probe Parity Error\00", align 1
@.str.249 = private unnamed_addr constant [27 x i8] c"Read Response Parity Error\00", align 1
@.str.250 = private unnamed_addr constant [28 x i8] c"Atomic Request Parity Error\00", align 1
@.str.251 = private unnamed_addr constant [23 x i8] c"Probe Filter ECC Error\00", align 1
@.str.252 = private unnamed_addr constant [47 x i8] c"SDP read response had no match in the CS queue\00", align 1
@.str.253 = private unnamed_addr constant [28 x i8] c"Probe Filter Protocol Error\00", align 1
@.str.254 = private unnamed_addr constant [48 x i8] c"SDP read response had an unexpected RETRY error\00", align 1
@.str.255 = private unnamed_addr constant [23 x i8] c"Counter overflow error\00", align 1
@.str.256 = private unnamed_addr constant [24 x i8] c"Counter underflow error\00", align 1
@.str.257 = private unnamed_addr constant [16 x i8] c"Hardware Assert\00", align 1
@.str.258 = private unnamed_addr constant [28 x i8] c"Register security violation\00", align 1
@.str.259 = private unnamed_addr constant [11 x i8] c"Link Error\00", align 1
@.str.260 = private unnamed_addr constant [24 x i8] c"Poison data consumption\00", align 1
@.str.261 = private unnamed_addr constant [40 x i8] c"A deferred error was detected in the DF\00", align 1
@.str.262 = private unnamed_addr constant [15 x i8] c"DRAM ECC error\00", align 1
@.str.263 = private unnamed_addr constant [18 x i8] c"Data poison error\00", align 1
@.str.264 = private unnamed_addr constant [17 x i8] c"SDP parity error\00", align 1
@.str.265 = private unnamed_addr constant [30 x i8] c"Advanced peripheral bus error\00", align 1
@.str.266 = private unnamed_addr constant [29 x i8] c"Address/Command parity error\00", align 1
@.str.267 = private unnamed_addr constant [21 x i8] c"Write data CRC error\00", align 1
@.str.268 = private unnamed_addr constant [19 x i8] c"DCQ SRAM ECC error\00", align 1
@.str.269 = private unnamed_addr constant [19 x i8] c"AES SRAM ECC error\00", align 1
@.str.270 = private unnamed_addr constant [46 x i8] c"An ECC error in the Parameter Block RAM array\00", align 1
@.str.271 = private unnamed_addr constant [45 x i8] c"An ECC or parity error in a PSP RAM instance\00", align 1
@.str.272 = private unnamed_addr constant [30 x i8] c"High SRAM ECC or parity error\00", align 1
@.str.273 = private unnamed_addr constant [29 x i8] c"Low SRAM ECC or parity error\00", align 1
@.str.274 = private unnamed_addr constant [45 x i8] c"Instruction Cache Bank 0 ECC or parity error\00", align 1
@.str.275 = private unnamed_addr constant [45 x i8] c"Instruction Cache Bank 1 ECC or parity error\00", align 1
@.str.276 = private unnamed_addr constant [35 x i8] c"Instruction Tag Ram 0 parity error\00", align 1
@.str.277 = private unnamed_addr constant [35 x i8] c"Instruction Tag Ram 1 parity error\00", align 1
@.str.278 = private unnamed_addr constant [38 x i8] c"Data Cache Bank 0 ECC or parity error\00", align 1
@.str.279 = private unnamed_addr constant [38 x i8] c"Data Cache Bank 1 ECC or parity error\00", align 1
@.str.280 = private unnamed_addr constant [38 x i8] c"Data Cache Bank 2 ECC or parity error\00", align 1
@.str.281 = private unnamed_addr constant [38 x i8] c"Data Cache Bank 3 ECC or parity error\00", align 1
@.str.282 = private unnamed_addr constant [29 x i8] c"Data Tag Bank 0 parity error\00", align 1
@.str.283 = private unnamed_addr constant [29 x i8] c"Data Tag Bank 1 parity error\00", align 1
@.str.284 = private unnamed_addr constant [29 x i8] c"Data Tag Bank 2 parity error\00", align 1
@.str.285 = private unnamed_addr constant [29 x i8] c"Data Tag Bank 3 parity error\00", align 1
@.str.286 = private unnamed_addr constant [28 x i8] c"Dirty Data Ram parity error\00", align 1
@.str.287 = private unnamed_addr constant [24 x i8] c"TLB Bank 0 parity error\00", align 1
@.str.288 = private unnamed_addr constant [24 x i8] c"TLB Bank 1 parity error\00", align 1
@.str.289 = private unnamed_addr constant [43 x i8] c"System Hub Read Buffer ECC or parity error\00", align 1
@.str.290 = private unnamed_addr constant [46 x i8] c"An ECC or parity error in an SMU RAM instance\00", align 1
@.str.291 = private unnamed_addr constant [38 x i8] c"Data Cache Bank A ECC or parity error\00", align 1
@.str.292 = private unnamed_addr constant [38 x i8] c"Data Cache Bank B ECC or parity error\00", align 1
@.str.293 = private unnamed_addr constant [42 x i8] c"Data Tag Cache Bank A ECC or parity error\00", align 1
@.str.294 = private unnamed_addr constant [42 x i8] c"Data Tag Cache Bank B ECC or parity error\00", align 1
@.str.295 = private unnamed_addr constant [45 x i8] c"Instruction Cache Bank A ECC or parity error\00", align 1
@.str.296 = private unnamed_addr constant [45 x i8] c"Instruction Cache Bank B ECC or parity error\00", align 1
@.str.297 = private unnamed_addr constant [49 x i8] c"Instruction Tag Cache Bank A ECC or parity error\00", align 1
@.str.298 = private unnamed_addr constant [49 x i8] c"Instruction Tag Cache Bank B ECC or parity error\00", align 1
@.str.299 = private unnamed_addr constant [18 x i8] c"PHY RAM ECC error\00", align 1
@.str.300 = private unnamed_addr constant [20 x i8] c"ECC or Parity error\00", align 1
@.str.301 = private unnamed_addr constant [11 x i8] c"PCIE error\00", align 1
@.str.302 = private unnamed_addr constant [19 x i8] c"SDP ErrEvent error\00", align 1
@.str.303 = private unnamed_addr constant [24 x i8] c"SDP Egress Poison Error\00", align 1
@.str.304 = private unnamed_addr constant [27 x i8] c"IOHC Internal Poison Error\00", align 1
@.str.305 = private unnamed_addr constant [25 x i8] c"CCIX PER Message logging\00", align 1
@.str.306 = private unnamed_addr constant [47 x i8] c"CCIX Read Response with Status: Non-Data Error\00", align 1
@.str.307 = private unnamed_addr constant [48 x i8] c"CCIX Write Response with Status: Non-Data Error\00", align 1
@.str.308 = private unnamed_addr constant [43 x i8] c"CCIX Read Response with Status: Data Error\00", align 1
@.str.309 = private unnamed_addr constant [45 x i8] c"CCIX Non-okay write response with data error\00", align 1
@.str.310 = private unnamed_addr constant [32 x i8] c"\010[Hardware Error]: MC0 Error: \00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"\01c%s TLB %s.\0A\00", align 1
@ll_msgs = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.316, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.317, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.318, i32 0, i32 0)], align 16, !dbg !251
@.str.312 = private unnamed_addr constant [12 x i8] c"locked miss\00", align 1
@.str.313 = private unnamed_addr constant [11 x i8] c"multimatch\00", align 1
@.str.314 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@.str.315 = private unnamed_addr constant [45 x i8] c"\010[Hardware Error]: Corrupted MC0 MCE info?\0A\00", align 1
@.str.316 = private unnamed_addr constant [3 x i8] c"L1\00", align 1
@.str.317 = private unnamed_addr constant [3 x i8] c"L2\00", align 1
@.str.318 = private unnamed_addr constant [7 x i8] c"L3/GEN\00", align 1
@.str.319 = private unnamed_addr constant [32 x i8] c"\010[Hardware Error]: MC1 Error: \00", align 1
@.str.320 = private unnamed_addr constant [13 x i8] c"parity error\00", align 1
@.str.321 = private unnamed_addr constant [14 x i8] c"\01cduring %s.\0A\00", align 1
@.str.322 = private unnamed_addr constant [16 x i8] c"system linefill\00", align 1
@.str.323 = private unnamed_addr constant [13 x i8] c"NB data read\00", align 1
@.str.324 = private unnamed_addr constant [45 x i8] c"\010[Hardware Error]: Corrupted MC1 MCE info?\0A\00", align 1
@.str.325 = private unnamed_addr constant [32 x i8] c"\010[Hardware Error]: MC2 Error: \00", align 1
@.str.326 = private unnamed_addr constant [45 x i8] c"\01c[Hardware Error]: Corrupted MC2 MCE info?\0A\00", align 1
@.str.327 = private unnamed_addr constant [78 x i8] c"\010You shouldn't be seeing MC3 MCE on this cpu family, please report on LKML.\0A\00", align 1
@.str.328 = private unnamed_addr constant [30 x i8] c"\010[Hardware Error]: MC3 Error\00", align 1
@.str.329 = private unnamed_addr constant [15 x i8] c"\01c during %s.\0A\00", align 1
@.str.330 = private unnamed_addr constant [45 x i8] c"\010[Hardware Error]: Corrupted MC3 MCE info?\0A\00", align 1
@.str.331 = private unnamed_addr constant [42 x i8] c"\010[Hardware Error]: MC4 Error (node %d): \00", align 1
@mc4_mce_desc = internal constant [19 x i8*] [i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.337, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.338, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.339, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.340, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.341, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.342, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.343, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.336, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.344, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.345, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.346, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.347, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.348, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.349, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.350, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.351, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.352, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.353, i32 0, i32 0)], align 16, !dbg !253
@.str.332 = private unnamed_addr constant [31 x i8] c"\01cGART Table Walk data error.\0A\00", align 1
@.str.333 = private unnamed_addr constant [42 x i8] c"\01cDMA Exclusion Vector Table Walk error.\0A\00", align 1
@.str.334 = private unnamed_addr constant [28 x i8] c"\01cCompute Unit Data Error.\0A\00", align 1
@.str.335 = private unnamed_addr constant [45 x i8] c"\010[Hardware Error]: Corrupted MC4 MCE info?\0A\00", align 1
@.str.336 = private unnamed_addr constant [34 x i8] c"DRAM ECC error detected on the NB\00", align 1
@.str.337 = private unnamed_addr constant [30 x i8] c"CRC error detected on HT link\00", align 1
@.str.338 = private unnamed_addr constant [52 x i8] c"Link-defined sync error packets detected on HT link\00", align 1
@.str.339 = private unnamed_addr constant [16 x i8] c"HT Master abort\00", align 1
@.str.340 = private unnamed_addr constant [16 x i8] c"HT Target abort\00", align 1
@.str.341 = private unnamed_addr constant [46 x i8] c"Invalid GART PTE entry during GART table walk\00", align 1
@.str.342 = private unnamed_addr constant [48 x i8] c"Unsupported atomic RMW received from an IO link\00", align 1
@.str.343 = private unnamed_addr constant [41 x i8] c"Watchdog timeout due to lack of progress\00", align 1
@.str.344 = private unnamed_addr constant [31 x i8] c"SVM DMA Exclusion Vector error\00", align 1
@.str.345 = private unnamed_addr constant [31 x i8] c"HT data error detected on link\00", align 1
@.str.346 = private unnamed_addr constant [40 x i8] c"Protocol error (link, L3, probe filter)\00", align 1
@.str.347 = private unnamed_addr constant [32 x i8] c"NB internal arrays parity error\00", align 1
@.str.348 = private unnamed_addr constant [35 x i8] c"DRAM addr/ctl signals parity error\00", align 1
@.str.349 = private unnamed_addr constant [27 x i8] c"IO link transmission error\00", align 1
@.str.350 = private unnamed_addr constant [24 x i8] c"L3 data cache ECC error\00", align 1
@.str.351 = private unnamed_addr constant [19 x i8] c"L3 cache tag error\00", align 1
@.str.352 = private unnamed_addr constant [25 x i8] c"L3 LRU parity bits error\00", align 1
@.str.353 = private unnamed_addr constant [40 x i8] c"ECC Error in the Probe Filter directory\00", align 1
@.str.354 = private unnamed_addr constant [32 x i8] c"\010[Hardware Error]: MC5 Error: \00", align 1
@mc5_mce_desc = internal constant [14 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.357, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.358, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.359, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.360, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.361, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.362, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.363, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.364, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.365, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.366, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.367, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.368, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.369, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.370, i32 0, i32 0)], align 16, !dbg !255
@.str.355 = private unnamed_addr constant [20 x i8] c"\01c%s parity error.\0A\00", align 1
@.str.356 = private unnamed_addr constant [45 x i8] c"\010[Hardware Error]: Corrupted MC5 MCE info?\0A\00", align 1
@.str.357 = private unnamed_addr constant [26 x i8] c"CPU Watchdog timer expire\00", align 1
@.str.358 = private unnamed_addr constant [22 x i8] c"Wakeup array dest tag\00", align 1
@.str.359 = private unnamed_addr constant [17 x i8] c"AG payload array\00", align 1
@.str.360 = private unnamed_addr constant [17 x i8] c"EX payload array\00", align 1
@.str.361 = private unnamed_addr constant [11 x i8] c"IDRF array\00", align 1
@.str.362 = private unnamed_addr constant [22 x i8] c"Retire dispatch queue\00", align 1
@.str.363 = private unnamed_addr constant [24 x i8] c"Mapper checkpoint array\00", align 1
@.str.364 = private unnamed_addr constant [32 x i8] c"Physical register file EX0 port\00", align 1
@.str.365 = private unnamed_addr constant [32 x i8] c"Physical register file EX1 port\00", align 1
@.str.366 = private unnamed_addr constant [32 x i8] c"Physical register file AG0 port\00", align 1
@.str.367 = private unnamed_addr constant [32 x i8] c"Physical register file AG1 port\00", align 1
@.str.368 = private unnamed_addr constant [19 x i8] c"Flag register file\00", align 1
@.str.369 = private unnamed_addr constant [18 x i8] c"DE error occurred\00", align 1
@.str.370 = private unnamed_addr constant [20 x i8] c"Retire status queue\00", align 1
@.str.371 = private unnamed_addr constant [32 x i8] c"\010[Hardware Error]: MC6 Error: \00", align 1
@mc6_mce_desc = internal constant [6 x i8*] [i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.373, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.374, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.375, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.376, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.377, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.378, i32 0, i32 0)], align 16, !dbg !257
@.str.372 = private unnamed_addr constant [45 x i8] c"\010[Hardware Error]: Corrupted MC6 MCE info?\0A\00", align 1
@.str.373 = private unnamed_addr constant [19 x i8] c"Hardware Assertion\00", align 1
@.str.374 = private unnamed_addr constant [10 x i8] c"Free List\00", align 1
@.str.375 = private unnamed_addr constant [23 x i8] c"Physical Register File\00", align 1
@.str.376 = private unnamed_addr constant [13 x i8] c"Retire Queue\00", align 1
@.str.377 = private unnamed_addr constant [16 x i8] c"Scheduler table\00", align 1
@.str.378 = private unnamed_addr constant [21 x i8] c"Status Register File\00", align 1
@.str.379 = private unnamed_addr constant [34 x i8] c"\010[Hardware Error]: internal: %s\0A\00", align 1
@uu_msgs = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.385, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0)], align 16, !dbg !262
@.str.380 = private unnamed_addr constant [36 x i8] c"\010[Hardware Error]: cache level: %s\00", align 1
@.str.381 = private unnamed_addr constant [15 x i8] c"\01c, mem/io: %s\00", align 1
@ii_msgs = internal constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.386, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.387, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)], align 16, !dbg !264
@.str.382 = private unnamed_addr constant [11 x i8] c"\01c, tx: %s\00", align 1
@.str.383 = private unnamed_addr constant [15 x i8] c"\01c, mem-tx: %s\00", align 1
@.str.384 = private unnamed_addr constant [23 x i8] c"\01c, part-proc: %s (%s)\00", align 1
@to_msgs = internal constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.388, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.389, i32 0, i32 0)], align 16, !dbg !266
@.str.385 = private unnamed_addr constant [4 x i8] c"HWA\00", align 1
@.str.386 = private unnamed_addr constant [4 x i8] c"MEM\00", align 1
@.str.387 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.388 = private unnamed_addr constant [11 x i8] c"no timeout\00", align 1
@.str.389 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_mce_amd_init162 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @amd_register_ecc_decoder(void (i32, %struct.mce*)* %f) #0 !dbg !280 {
entry:
  %f.addr = alloca void (i32, %struct.mce*)*, align 8
  store void (i32, %struct.mce*)* %f, void (i32, %struct.mce*)** %f.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32, %struct.mce*)** %f.addr, metadata !283, metadata !DIExpression()), !dbg !284
  %0 = load void (i32, %struct.mce*)*, void (i32, %struct.mce*)** %f.addr, align 8, !dbg !285
  store void (i32, %struct.mce*)* %0, void (i32, %struct.mce*)** @decode_dram_ecc, align 8, !dbg !286
  ret void, !dbg !287
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @amd_unregister_ecc_decoder(void (i32, %struct.mce*)* %f) #0 !dbg !288 {
entry:
  %f.addr = alloca void (i32, %struct.mce*)*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store void (i32, %struct.mce*)* %f, void (i32, %struct.mce*)** %f.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32, %struct.mce*)** %f.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load void (i32, %struct.mce*)*, void (i32, %struct.mce*)** @decode_dram_ecc, align 8, !dbg !291
  %tobool = icmp ne void (i32, %struct.mce*)* %0, null, !dbg !291
  br i1 %tobool, label %if.then, label %if.end21, !dbg !293

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !294, metadata !DIExpression()), !dbg !297
  %1 = load void (i32, %struct.mce*)*, void (i32, %struct.mce*)** @decode_dram_ecc, align 8, !dbg !297
  %2 = load void (i32, %struct.mce*)*, void (i32, %struct.mce*)** %f.addr, align 8, !dbg !297
  %cmp = icmp ne void (i32, %struct.mce*)* %1, %2, !dbg !297
  %lnot = xor i1 %cmp, true, !dbg !297
  %lnot1 = xor i1 %lnot, true, !dbg !297
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !297
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !297
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !298
  %tobool2 = icmp ne i32 %3, 0, !dbg !298
  %lnot3 = xor i1 %tobool2, true, !dbg !298
  %lnot5 = xor i1 %lnot3, true, !dbg !298
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !298
  %conv = sext i32 %lnot.ext6 to i64, !dbg !298
  %tobool7 = icmp ne i64 %conv, 0, !dbg !298
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !297

if.then8:                                         ; preds = %if.then
  br label %do.body, !dbg !298

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !300

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !302

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !300

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 24, i32 2305, i64 12) #7, !dbg !304, !srcloc !306
  br label %do.end11, !dbg !304

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 161) #7, !dbg !307, !srcloc !309
  br label %do.body12, !dbg !300

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !310

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !300

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !300

if.end:                                           ; preds = %do.end14, %if.then
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !297
  %tobool15 = icmp ne i32 %4, 0, !dbg !297
  %lnot16 = xor i1 %tobool15, true, !dbg !297
  %lnot18 = xor i1 %lnot16, true, !dbg !297
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !297
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !297
  store i64 %conv20, i64* %tmp, align 8, !dbg !298
  %5 = load i64, i64* %tmp, align 8, !dbg !297
  store void (i32, %struct.mce*)* null, void (i32, %struct.mce*)** @decode_dram_ecc, align 8, !dbg !312
  br label %if.end21, !dbg !313

if.end21:                                         ; preds = %if.end, %entry
  ret void, !dbg !314
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @mce_amd_init() #2 section ".init.text" !dbg !123 {
entry:
  %retval = alloca i32, align 4
  %c = alloca %struct.cpuinfo_x86*, align 8
  %__ret_print_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct.cpuinfo_x86** %c, metadata !315, metadata !DIExpression()), !dbg !372
  store %struct.cpuinfo_x86* @boot_cpu_data, %struct.cpuinfo_x86** %c, align 8, !dbg !372
  %0 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !373
  %x86_vendor = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %0, i32 0, i32 1, !dbg !375
  %1 = load i8, i8* %x86_vendor, align 1, !dbg !375
  %conv = zext i8 %1 to i32, !dbg !373
  %cmp = icmp ne i32 %conv, 2, !dbg !376
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !377

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !378
  %x86_vendor2 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %2, i32 0, i32 1, !dbg !379
  %3 = load i8, i8* %x86_vendor2, align 1, !dbg !379
  %conv3 = zext i8 %3 to i32, !dbg !378
  %cmp4 = icmp ne i32 %conv3, 9, !dbg !380
  br i1 %cmp4, label %if.then, label %if.end, !dbg !381

if.then:                                          ; preds = %land.lhs.true
  store i32 -19, i32* %retval, align 4, !dbg !382
  br label %return, !dbg !382

if.end:                                           ; preds = %land.lhs.true, %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !383

cond.true:                                        ; preds = %if.end
  br i1 true, label %if.then7, label %if.end8, !dbg !384

cond.false:                                       ; preds = %if.end
  %call = call zeroext i1 @test_bit(i64 547, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #8, !dbg !384
  br i1 %call, label %if.then7, label %if.end8, !dbg !383

if.then7:                                         ; preds = %cond.false, %cond.true
  store i8 63, i8* @xec_mask, align 1, !dbg !386
  br label %out, !dbg !388

if.end8:                                          ; preds = %cond.false, %cond.true
  %4 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !389
  %x86 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %4, i32 0, i32 0, !dbg !390
  %5 = load i8, i8* %x86, align 8, !dbg !390
  %conv9 = zext i8 %5 to i32, !dbg !389
  switch i32 %conv9, label %sw.default [
    i32 15, label %sw.bb
    i32 16, label %sw.bb10
    i32 17, label %sw.bb11
    i32 18, label %sw.bb12
    i32 20, label %sw.bb13
    i32 21, label %sw.bb14
    i32 22, label %sw.bb19
    i32 23, label %sw.bb20
    i32 24, label %sw.bb20
  ], !dbg !391

sw.bb:                                            ; preds = %if.end8
  store i1 (i16, i8)* @k8_mc0_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 0), align 8, !dbg !392
  store i1 (i16, i8)* @k8_mc1_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 1), align 8, !dbg !394
  store i1 (i16, i8)* @k8_mc2_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 2), align 8, !dbg !395
  br label %sw.epilog, !dbg !396

sw.bb10:                                          ; preds = %if.end8
  store i1 (i16, i8)* @f10h_mc0_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 0), align 8, !dbg !397
  store i1 (i16, i8)* @k8_mc1_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 1), align 8, !dbg !398
  store i1 (i16, i8)* @k8_mc2_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 2), align 8, !dbg !399
  br label %sw.epilog, !dbg !400

sw.bb11:                                          ; preds = %if.end8
  store i1 (i16, i8)* @k8_mc0_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 0), align 8, !dbg !401
  store i1 (i16, i8)* @k8_mc1_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 1), align 8, !dbg !402
  store i1 (i16, i8)* @k8_mc2_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 2), align 8, !dbg !403
  br label %sw.epilog, !dbg !404

sw.bb12:                                          ; preds = %if.end8
  store i1 (i16, i8)* @f12h_mc0_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 0), align 8, !dbg !405
  store i1 (i16, i8)* @k8_mc1_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 1), align 8, !dbg !406
  store i1 (i16, i8)* @k8_mc2_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 2), align 8, !dbg !407
  br label %sw.epilog, !dbg !408

sw.bb13:                                          ; preds = %if.end8
  store i1 (i16, i8)* @cat_mc0_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 0), align 8, !dbg !409
  store i1 (i16, i8)* @cat_mc1_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 1), align 8, !dbg !410
  store i1 (i16, i8)* @k8_mc2_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 2), align 8, !dbg !411
  br label %sw.epilog, !dbg !412

sw.bb14:                                          ; preds = %if.end8
  %6 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !413
  %x86_model = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %6, i32 0, i32 2, !dbg !414
  %7 = load i8, i8* %x86_model, align 2, !dbg !414
  %conv15 = zext i8 %7 to i32, !dbg !413
  %cmp16 = icmp eq i32 %conv15, 96, !dbg !415
  %8 = zext i1 %cmp16 to i64, !dbg !413
  %cond = select i1 %cmp16, i32 63, i32 31, !dbg !413
  %conv18 = trunc i32 %cond to i8, !dbg !413
  store i8 %conv18, i8* @xec_mask, align 1, !dbg !416
  store i1 (i16, i8)* @f15h_mc0_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 0), align 8, !dbg !417
  store i1 (i16, i8)* @f15h_mc1_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 1), align 8, !dbg !418
  store i1 (i16, i8)* @f15h_mc2_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 2), align 8, !dbg !419
  br label %sw.epilog, !dbg !420

sw.bb19:                                          ; preds = %if.end8
  store i8 31, i8* @xec_mask, align 1, !dbg !421
  store i1 (i16, i8)* @cat_mc0_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 0), align 8, !dbg !422
  store i1 (i16, i8)* @cat_mc1_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 1), align 8, !dbg !423
  store i1 (i16, i8)* @f16h_mc2_mce, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 2), align 8, !dbg !424
  br label %sw.epilog, !dbg !425

sw.bb20:                                          ; preds = %if.end8, %if.end8
  call void @llvm.dbg.declare(metadata i8* %__ret_print_once, metadata !426, metadata !DIExpression()), !dbg !428
  %9 = load i8, i8* @mce_amd_init.__print_once, align 1, !dbg !428
  %tobool = trunc i8 %9 to i1, !dbg !428
  %lnot = xor i1 %tobool, true, !dbg !428
  %frombool = zext i1 %lnot to i8, !dbg !428
  store i8 %frombool, i8* %__ret_print_once, align 1, !dbg !428
  %10 = load i8, i8* @mce_amd_init.__print_once, align 1, !dbg !429
  %tobool21 = trunc i8 %10 to i1, !dbg !429
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !428

if.then22:                                        ; preds = %sw.bb20
  store i8 1, i8* @mce_amd_init.__print_once, align 1, !dbg !431
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !431
  br label %if.end24, !dbg !431

if.end24:                                         ; preds = %if.then22, %sw.bb20
  %11 = load i8, i8* %__ret_print_once, align 1, !dbg !428
  %tobool25 = trunc i8 %11 to i1, !dbg !428
  %lnot26 = xor i1 %tobool25, true, !dbg !428
  %lnot27 = xor i1 %lnot26, true, !dbg !428
  %lnot.ext = zext i1 %lnot27 to i32, !dbg !428
  %conv28 = sext i32 %lnot.ext to i64, !dbg !428
  store i64 %conv28, i64* %tmp, align 8, !dbg !429
  %12 = load i64, i64* %tmp, align 8, !dbg !428
  store i32 -22, i32* %retval, align 4, !dbg !433
  br label %return, !dbg !433

sw.default:                                       ; preds = %if.end8
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %c, align 8, !dbg !434
  %x8629 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %13, i32 0, i32 0, !dbg !435
  %14 = load i8, i8* %x8629, align 8, !dbg !435
  %conv30 = zext i8 %14 to i32, !dbg !434
  %call31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %conv30) #9, !dbg !436
  store i32 -22, i32* %retval, align 4, !dbg !437
  br label %return, !dbg !437

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb
  br label %out, !dbg !438

out:                                              ; preds = %sw.epilog, %if.then7
  call void @llvm.dbg.label(metadata !439), !dbg !440
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !441
  call void @mce_register_decode_chain(%struct.notifier_block* @amd_mce_dec_nb) #8, !dbg !442
  store i32 0, i32* %retval, align 4, !dbg !443
  br label %return, !dbg !443

return:                                           ; preds = %out, %sw.default, %if.end24, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !444
  ret i32 %15, !dbg !444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !445 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !453, metadata !DIExpression()), !dbg !456
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !458, metadata !DIExpression()), !dbg !459
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !460, metadata !DIExpression()), !dbg !461
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !462, metadata !DIExpression()), !dbg !464
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !466, metadata !DIExpression()), !dbg !467
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !468, metadata !DIExpression()), !dbg !480
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !482, metadata !DIExpression()), !dbg !483
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !484, metadata !DIExpression()), !dbg !485
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !486, metadata !DIExpression()), !dbg !487
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !488
  %1 = load i64, i64* %nr.addr, align 8, !dbg !489
  %div = sdiv i64 %1, 64, !dbg !489
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !490
  %2 = bitcast i64* %add.ptr to i8*, !dbg !488
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !491
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !492
  %conv.i = trunc i64 %4 to i32, !dbg !492
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #10, !dbg !493
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !494
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !494
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #10, !dbg !494
  %7 = load i64, i64* %nr.addr, align 8, !dbg !495
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !495
  br i1 %8, label %cond.true, label %cond.false, !dbg !495

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !495
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !495
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !496
  %and.i = and i64 %11, 63, !dbg !497
  %shl.i = shl i64 1, %and.i, !dbg !498
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !499
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !500
  %shr.i = ashr i64 %13, 6, !dbg !501
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !499
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !499
  %and1.i = and i64 %shl.i, %14, !dbg !502
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !503
  %conv = zext i1 %cmp.i to i32, !dbg !495
  br label %cond.end, !dbg !495

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !495
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !495
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !504
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !505
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !506, !srcloc !507
  store i8 %19, i8* %oldbit.i, align 1, !dbg !506
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !508
  %tobool.i = trunc i8 %20 to i1, !dbg !508
  %conv2 = zext i1 %tobool.i to i32, !dbg !495
  br label %cond.end, !dbg !495

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !495
  %tobool = icmp ne i32 %cond, 0, !dbg !495
  ret i1 %tobool, !dbg !509
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @k8_mc0_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !510 {
entry:
  %retval = alloca i1, align 1
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !511, metadata !DIExpression()), !dbg !512
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load i16, i16* %ec.addr, align 2, !dbg !515
  %conv = zext i16 %0 to i32, !dbg !515
  %and = and i32 %conv, 63488, !dbg !515
  %cmp = icmp eq i32 %and, 2048, !dbg !515
  br i1 %cmp, label %if.then, label %if.end, !dbg !517

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !518
  store i1 true, i1* %retval, align 1, !dbg !520
  br label %return, !dbg !520

if.end:                                           ; preds = %entry
  %1 = load i16, i16* %ec.addr, align 2, !dbg !521
  %2 = load i8, i8* %xec.addr, align 1, !dbg !522
  %call2 = call zeroext i1 @f10h_mc0_mce(i16 zeroext %1, i8 zeroext %2) #8, !dbg !523
  store i1 %call2, i1* %retval, align 1, !dbg !524
  br label %return, !dbg !524

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, i1* %retval, align 1, !dbg !525
  ret i1 %3, !dbg !525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @k8_mc1_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !526 {
entry:
  %retval = alloca i1, align 1
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  %ll = alloca i8, align 1
  %ret = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !527, metadata !DIExpression()), !dbg !528
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata i8* %ll, metadata !531, metadata !DIExpression()), !dbg !532
  %0 = load i16, i16* %ec.addr, align 2, !dbg !533
  %conv = zext i16 %0 to i32, !dbg !533
  %and = and i32 %conv, 3, !dbg !533
  %conv1 = trunc i32 %and to i8, !dbg !533
  store i8 %conv1, i8* %ll, align 1, !dbg !532
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !534, metadata !DIExpression()), !dbg !535
  store i8 1, i8* %ret, align 1, !dbg !535
  %1 = load i16, i16* %ec.addr, align 2, !dbg !536
  %conv2 = zext i16 %1 to i32, !dbg !536
  %and3 = and i32 %conv2, 65280, !dbg !536
  %cmp = icmp eq i32 %and3, 256, !dbg !536
  br i1 %cmp, label %if.end, label %if.then, !dbg !538

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !539
  br label %return, !dbg !539

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %ll, align 1, !dbg !540
  %conv5 = zext i8 %2 to i32, !dbg !540
  %cmp6 = icmp eq i32 %conv5, 2, !dbg !542
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !543

if.then8:                                         ; preds = %if.end
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !544
  br label %if.end22, !dbg !544

if.else:                                          ; preds = %if.end
  %3 = load i8, i8* %ll, align 1, !dbg !545
  %conv9 = zext i8 %3 to i32, !dbg !545
  %cmp10 = icmp eq i32 %conv9, 1, !dbg !547
  br i1 %cmp10, label %if.then12, label %if.else20, !dbg !548

if.then12:                                        ; preds = %if.else
  %4 = load i16, i16* %ec.addr, align 2, !dbg !549
  %conv13 = zext i16 %4 to i32, !dbg !549
  %shr = ashr i32 %conv13, 4, !dbg !549
  %and14 = and i32 %shr, 15, !dbg !549
  switch i32 %and14, label %sw.default [
    i32 5, label %sw.bb
    i32 7, label %sw.bb16
    i32 8, label %sw.bb18
  ], !dbg !551

sw.bb:                                            ; preds = %if.then12
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !552
  br label %sw.epilog, !dbg !554

sw.bb16:                                          ; preds = %if.then12
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !555
  br label %sw.epilog, !dbg !556

sw.bb18:                                          ; preds = %if.then12
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !557
  br label %sw.epilog, !dbg !558

sw.default:                                       ; preds = %if.then12
  store i8 0, i8* %ret, align 1, !dbg !559
  br label %sw.epilog, !dbg !560

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb16, %sw.bb
  br label %if.end21, !dbg !561

if.else20:                                        ; preds = %if.else
  store i8 0, i8* %ret, align 1, !dbg !562
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %sw.epilog
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then8
  %5 = load i8, i8* %ret, align 1, !dbg !563
  %tobool = trunc i8 %5 to i1, !dbg !563
  store i1 %tobool, i1* %retval, align 1, !dbg !564
  br label %return, !dbg !564

return:                                           ; preds = %if.end22, %if.then
  %6 = load i1, i1* %retval, align 1, !dbg !565
  ret i1 %6, !dbg !565
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @k8_mc2_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !566 {
entry:
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  %ret = alloca i8, align 1
  %r4 = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !567, metadata !DIExpression()), !dbg !568
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !569, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !571, metadata !DIExpression()), !dbg !572
  store i8 1, i8* %ret, align 1, !dbg !572
  %0 = load i8, i8* %xec.addr, align 1, !dbg !573
  %conv = zext i8 %0 to i32, !dbg !573
  %cmp = icmp eq i32 %conv, 1, !dbg !575
  br i1 %cmp, label %if.then, label %if.else, !dbg !576

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !577
  br label %if.end124, !dbg !577

if.else:                                          ; preds = %entry
  %1 = load i8, i8* %xec.addr, align 1, !dbg !578
  %conv2 = zext i8 %1 to i32, !dbg !578
  %cmp3 = icmp eq i32 %conv2, 3, !dbg !580
  br i1 %cmp3, label %if.then5, label %if.else7, !dbg !581

if.then5:                                         ; preds = %if.else
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !582
  br label %if.end123, !dbg !582

if.else7:                                         ; preds = %if.else
  %2 = load i8, i8* %xec.addr, align 1, !dbg !583
  %conv8 = zext i8 %2 to i32, !dbg !583
  %cmp9 = icmp eq i32 %conv8, 2, !dbg !585
  br i1 %cmp9, label %land.lhs.true, label %if.else23, !dbg !586

land.lhs.true:                                    ; preds = %if.else7
  %3 = load i16, i16* %ec.addr, align 2, !dbg !587
  %conv11 = zext i16 %3 to i32, !dbg !587
  %and = and i32 %conv11, 65280, !dbg !587
  %cmp12 = icmp eq i32 %and, 256, !dbg !587
  br i1 %cmp12, label %if.then14, label %if.else23, !dbg !588

if.then14:                                        ; preds = %land.lhs.true
  %4 = load i16, i16* %ec.addr, align 2, !dbg !589
  %conv15 = zext i16 %4 to i32, !dbg !589
  %shr = ashr i32 %conv15, 4, !dbg !589
  %and16 = and i32 %shr, 15, !dbg !589
  %cmp17 = icmp slt i32 %and16, 9, !dbg !589
  br i1 %cmp17, label %cond.true, label %cond.false, !dbg !589

cond.true:                                        ; preds = %if.then14
  %5 = load i16, i16* %ec.addr, align 2, !dbg !589
  %conv19 = zext i16 %5 to i32, !dbg !589
  %shr20 = ashr i32 %conv19, 4, !dbg !589
  %and21 = and i32 %shr20, 15, !dbg !589
  %idxprom = sext i32 %and21 to i64, !dbg !589
  %arrayidx = getelementptr [9 x i8*], [9 x i8*]* @rrrr_msgs, i64 0, i64 %idxprom, !dbg !589
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !589
  br label %cond.end, !dbg !589

cond.false:                                       ; preds = %if.then14
  br label %cond.end, !dbg !589

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), %cond.false ], !dbg !589
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i8* %cond) #9, !dbg !589
  br label %if.end122, !dbg !589

if.else23:                                        ; preds = %land.lhs.true, %if.else7
  %7 = load i8, i8* %xec.addr, align 1, !dbg !590
  %conv24 = zext i8 %7 to i32, !dbg !590
  %cmp25 = icmp eq i32 %conv24, 0, !dbg !592
  br i1 %cmp25, label %if.then27, label %if.else120, !dbg !593

if.then27:                                        ; preds = %if.else23
  %8 = load i16, i16* %ec.addr, align 2, !dbg !594
  %conv28 = zext i16 %8 to i32, !dbg !594
  %and29 = and i32 %conv28, 65520, !dbg !594
  %cmp30 = icmp eq i32 %and29, 16, !dbg !594
  br i1 %cmp30, label %if.then32, label %if.else39, !dbg !597

if.then32:                                        ; preds = %if.then27
  %9 = load i16, i16* %ec.addr, align 2, !dbg !598
  %conv33 = zext i16 %9 to i32, !dbg !598
  %shr34 = ashr i32 %conv33, 2, !dbg !598
  %and35 = and i32 %shr34, 3, !dbg !598
  %idxprom36 = sext i32 %and35 to i64, !dbg !598
  %arrayidx37 = getelementptr [4 x i8*], [4 x i8*]* @tt_msgs, i64 0, i64 %idxprom36, !dbg !598
  %10 = load i8*, i8** %arrayidx37, align 8, !dbg !598
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.17, i64 0, i64 0), i8* %10) #9, !dbg !598
  br label %if.end119, !dbg !598

if.else39:                                        ; preds = %if.then27
  %11 = load i16, i16* %ec.addr, align 2, !dbg !599
  %conv40 = zext i16 %11 to i32, !dbg !599
  %and41 = and i32 %conv40, 63488, !dbg !599
  %cmp42 = icmp eq i32 %and41, 2048, !dbg !599
  br i1 %cmp42, label %if.then44, label %if.else65, !dbg !601

if.then44:                                        ; preds = %if.else39
  %12 = load i16, i16* %ec.addr, align 2, !dbg !602
  %conv45 = zext i16 %12 to i32, !dbg !602
  %shr46 = ashr i32 %conv45, 4, !dbg !602
  %and47 = and i32 %shr46, 15, !dbg !602
  %cmp48 = icmp slt i32 %and47, 9, !dbg !602
  br i1 %cmp48, label %cond.true50, label %cond.false56, !dbg !602

cond.true50:                                      ; preds = %if.then44
  %13 = load i16, i16* %ec.addr, align 2, !dbg !602
  %conv51 = zext i16 %13 to i32, !dbg !602
  %shr52 = ashr i32 %conv51, 4, !dbg !602
  %and53 = and i32 %shr52, 15, !dbg !602
  %idxprom54 = sext i32 %and53 to i64, !dbg !602
  %arrayidx55 = getelementptr [9 x i8*], [9 x i8*]* @rrrr_msgs, i64 0, i64 %idxprom54, !dbg !602
  %14 = load i8*, i8** %arrayidx55, align 8, !dbg !602
  br label %cond.end57, !dbg !602

cond.false56:                                     ; preds = %if.then44
  br label %cond.end57, !dbg !602

cond.end57:                                       ; preds = %cond.false56, %cond.true50
  %cond58 = phi i8* [ %14, %cond.true50 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), %cond.false56 ], !dbg !602
  %15 = load i16, i16* %ec.addr, align 2, !dbg !602
  %conv59 = zext i16 %15 to i32, !dbg !602
  %shr60 = ashr i32 %conv59, 9, !dbg !602
  %and61 = and i32 %shr60, 3, !dbg !602
  %idxprom62 = sext i32 %and61 to i64, !dbg !602
  %arrayidx63 = getelementptr [4 x i8*], [4 x i8*]* @pp_msgs, i64 0, i64 %idxprom62, !dbg !602
  %16 = load i8*, i8** %arrayidx63, align 8, !dbg !602
  %call64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i8* %cond58, i8* %16) #9, !dbg !602
  br label %if.end118, !dbg !602

if.else65:                                        ; preds = %if.else39
  %17 = load i16, i16* %ec.addr, align 2, !dbg !603
  %conv66 = zext i16 %17 to i32, !dbg !603
  %and67 = and i32 %conv66, 65280, !dbg !603
  %cmp68 = icmp eq i32 %and67, 256, !dbg !603
  br i1 %cmp68, label %if.then70, label %if.else116, !dbg !605

if.then70:                                        ; preds = %if.else65
  call void @llvm.dbg.declare(metadata i8* %r4, metadata !606, metadata !DIExpression()), !dbg !608
  %18 = load i16, i16* %ec.addr, align 2, !dbg !609
  %conv71 = zext i16 %18 to i32, !dbg !609
  %shr72 = ashr i32 %conv71, 4, !dbg !609
  %and73 = and i32 %shr72, 15, !dbg !609
  %conv74 = trunc i32 %and73 to i8, !dbg !609
  store i8 %conv74, i8* %r4, align 1, !dbg !608
  %19 = load i8, i8* %r4, align 1, !dbg !610
  %conv75 = zext i8 %19 to i32, !dbg !610
  %cmp76 = icmp sge i32 %conv75, 7, !dbg !612
  br i1 %cmp76, label %if.then78, label %if.else94, !dbg !613

if.then78:                                        ; preds = %if.then70
  %20 = load i16, i16* %ec.addr, align 2, !dbg !614
  %conv79 = zext i16 %20 to i32, !dbg !614
  %shr80 = ashr i32 %conv79, 4, !dbg !614
  %and81 = and i32 %shr80, 15, !dbg !614
  %cmp82 = icmp slt i32 %and81, 9, !dbg !614
  br i1 %cmp82, label %cond.true84, label %cond.false90, !dbg !614

cond.true84:                                      ; preds = %if.then78
  %21 = load i16, i16* %ec.addr, align 2, !dbg !614
  %conv85 = zext i16 %21 to i32, !dbg !614
  %shr86 = ashr i32 %conv85, 4, !dbg !614
  %and87 = and i32 %shr86, 15, !dbg !614
  %idxprom88 = sext i32 %and87 to i64, !dbg !614
  %arrayidx89 = getelementptr [9 x i8*], [9 x i8*]* @rrrr_msgs, i64 0, i64 %idxprom88, !dbg !614
  %22 = load i8*, i8** %arrayidx89, align 8, !dbg !614
  br label %cond.end91, !dbg !614

cond.false90:                                     ; preds = %if.then78
  br label %cond.end91, !dbg !614

cond.end91:                                       ; preds = %cond.false90, %cond.true84
  %cond92 = phi i8* [ %22, %cond.true84 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), %cond.false90 ], !dbg !614
  %call93 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8* %cond92) #9, !dbg !614
  br label %if.end115, !dbg !614

if.else94:                                        ; preds = %if.then70
  %23 = load i8, i8* %r4, align 1, !dbg !615
  %conv95 = zext i8 %23 to i32, !dbg !615
  %cmp96 = icmp sle i32 %conv95, 1, !dbg !617
  br i1 %cmp96, label %if.then98, label %if.else114, !dbg !618

if.then98:                                        ; preds = %if.else94
  %24 = load i16, i16* %ec.addr, align 2, !dbg !619
  %conv99 = zext i16 %24 to i32, !dbg !619
  %shr100 = ashr i32 %conv99, 4, !dbg !619
  %and101 = and i32 %shr100, 15, !dbg !619
  %cmp102 = icmp slt i32 %and101, 9, !dbg !619
  br i1 %cmp102, label %cond.true104, label %cond.false110, !dbg !619

cond.true104:                                     ; preds = %if.then98
  %25 = load i16, i16* %ec.addr, align 2, !dbg !619
  %conv105 = zext i16 %25 to i32, !dbg !619
  %shr106 = ashr i32 %conv105, 4, !dbg !619
  %and107 = and i32 %shr106, 15, !dbg !619
  %idxprom108 = sext i32 %and107 to i64, !dbg !619
  %arrayidx109 = getelementptr [9 x i8*], [9 x i8*]* @rrrr_msgs, i64 0, i64 %idxprom108, !dbg !619
  %26 = load i8*, i8** %arrayidx109, align 8, !dbg !619
  br label %cond.end111, !dbg !619

cond.false110:                                    ; preds = %if.then98
  br label %cond.end111, !dbg !619

cond.end111:                                      ; preds = %cond.false110, %cond.true104
  %cond112 = phi i8* [ %26, %cond.true104 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), %cond.false110 ], !dbg !619
  %call113 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i64 0, i64 0), i8* %cond112) #9, !dbg !619
  br label %if.end, !dbg !619

if.else114:                                       ; preds = %if.else94
  store i8 0, i8* %ret, align 1, !dbg !620
  br label %if.end

if.end:                                           ; preds = %if.else114, %cond.end111
  br label %if.end115

if.end115:                                        ; preds = %if.end, %cond.end91
  br label %if.end117, !dbg !621

if.else116:                                       ; preds = %if.else65
  store i8 0, i8* %ret, align 1, !dbg !622
  br label %if.end117

if.end117:                                        ; preds = %if.else116, %if.end115
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %cond.end57
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.then32
  br label %if.end121, !dbg !623

if.else120:                                       ; preds = %if.else23
  store i8 0, i8* %ret, align 1, !dbg !624
  br label %if.end121

if.end121:                                        ; preds = %if.else120, %if.end119
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %cond.end
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then5
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then
  %27 = load i8, i8* %ret, align 1, !dbg !625
  %tobool = trunc i8 %27 to i1, !dbg !625
  ret i1 %tobool, !dbg !626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @f10h_mc0_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !627 {
entry:
  %retval = alloca i1, align 1
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !628, metadata !DIExpression()), !dbg !629
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !630, metadata !DIExpression()), !dbg !631
  %0 = load i16, i16* %ec.addr, align 2, !dbg !632
  %conv = zext i16 %0 to i32, !dbg !632
  %shr = ashr i32 %conv, 4, !dbg !632
  %and = and i32 %shr, 15, !dbg !632
  %cmp = icmp eq i32 %and, 0, !dbg !634
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !635

land.lhs.true:                                    ; preds = %entry
  %1 = load i16, i16* %ec.addr, align 2, !dbg !636
  %conv2 = zext i16 %1 to i32, !dbg !636
  %and3 = and i32 %conv2, 3, !dbg !636
  %cmp4 = icmp eq i32 %and3, 1, !dbg !637
  br i1 %cmp4, label %if.then, label %if.end, !dbg !638

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !639
  store i1 true, i1* %retval, align 1, !dbg !641
  br label %return, !dbg !641

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i16, i16* %ec.addr, align 2, !dbg !642
  %3 = load i8, i8* %xec.addr, align 1, !dbg !643
  %call6 = call zeroext i1 @f12h_mc0_mce(i16 zeroext %2, i8 zeroext %3) #8, !dbg !644
  store i1 %call6, i1* %retval, align 1, !dbg !645
  br label %return, !dbg !645

return:                                           ; preds = %if.end, %if.then
  %4 = load i1, i1* %retval, align 1, !dbg !646
  ret i1 %4, !dbg !646
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @f12h_mc0_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !647 {
entry:
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  %ret = alloca i8, align 1
  %ll = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !648, metadata !DIExpression()), !dbg !649
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !652, metadata !DIExpression()), !dbg !653
  store i8 0, i8* %ret, align 1, !dbg !653
  %0 = load i16, i16* %ec.addr, align 2, !dbg !654
  %conv = zext i16 %0 to i32, !dbg !654
  %and = and i32 %conv, 65280, !dbg !654
  %cmp = icmp eq i32 %and, 256, !dbg !654
  br i1 %cmp, label %if.then, label %if.end23, !dbg !656

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %ll, metadata !657, metadata !DIExpression()), !dbg !659
  %1 = load i16, i16* %ec.addr, align 2, !dbg !660
  %conv2 = zext i16 %1 to i32, !dbg !660
  %and3 = and i32 %conv2, 3, !dbg !660
  %conv4 = trunc i32 %and3 to i8, !dbg !660
  store i8 %conv4, i8* %ll, align 1, !dbg !659
  store i8 1, i8* %ret, align 1, !dbg !661
  %2 = load i8, i8* %ll, align 1, !dbg !662
  %conv5 = zext i8 %2 to i32, !dbg !662
  %cmp6 = icmp eq i32 %conv5, 2, !dbg !664
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !665

if.then8:                                         ; preds = %if.then
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !666
  br label %if.end22, !dbg !666

if.else:                                          ; preds = %if.then
  %3 = load i8, i8* %ll, align 1, !dbg !667
  %conv9 = zext i8 %3 to i32, !dbg !667
  %cmp10 = icmp eq i32 %conv9, 1, !dbg !669
  br i1 %cmp10, label %if.then12, label %if.else21, !dbg !670

if.then12:                                        ; preds = %if.else
  %4 = load i16, i16* %ec.addr, align 2, !dbg !671
  %conv13 = zext i16 %4 to i32, !dbg !671
  %shr = ashr i32 %conv13, 4, !dbg !671
  %and14 = and i32 %shr, 15, !dbg !671
  %cmp15 = icmp slt i32 %and14, 9, !dbg !671
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !671

cond.true:                                        ; preds = %if.then12
  %5 = load i16, i16* %ec.addr, align 2, !dbg !671
  %conv17 = zext i16 %5 to i32, !dbg !671
  %shr18 = ashr i32 %conv17, 4, !dbg !671
  %and19 = and i32 %shr18, 15, !dbg !671
  %idxprom = sext i32 %and19 to i64, !dbg !671
  %arrayidx = getelementptr [9 x i8*], [9 x i8*]* @rrrr_msgs, i64 0, i64 %idxprom, !dbg !671
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !671
  br label %cond.end, !dbg !671

cond.false:                                       ; preds = %if.then12
  br label %cond.end, !dbg !671

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), %cond.false ], !dbg !671
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), i8* %cond) #9, !dbg !671
  br label %if.end, !dbg !671

if.else21:                                        ; preds = %if.else
  store i8 0, i8* %ret, align 1, !dbg !672
  br label %if.end

if.end:                                           ; preds = %if.else21, %cond.end
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then8
  br label %if.end23, !dbg !673

if.end23:                                         ; preds = %if.end22, %entry
  %7 = load i8, i8* %ret, align 1, !dbg !674
  %tobool = trunc i8 %7 to i1, !dbg !674
  ret i1 %tobool, !dbg !675
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @cat_mc0_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !676 {
entry:
  %retval = alloca i1, align 1
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  %r4 = alloca i8, align 1
  %ret = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !677, metadata !DIExpression()), !dbg !678
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !679, metadata !DIExpression()), !dbg !680
  call void @llvm.dbg.declare(metadata i8* %r4, metadata !681, metadata !DIExpression()), !dbg !682
  %0 = load i16, i16* %ec.addr, align 2, !dbg !683
  %conv = zext i16 %0 to i32, !dbg !683
  %shr = ashr i32 %conv, 4, !dbg !683
  %and = and i32 %shr, 15, !dbg !683
  %conv1 = trunc i32 %and to i8, !dbg !683
  store i8 %conv1, i8* %r4, align 1, !dbg !682
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !684, metadata !DIExpression()), !dbg !685
  store i8 1, i8* %ret, align 1, !dbg !685
  %1 = load i16, i16* %ec.addr, align 2, !dbg !686
  %conv2 = zext i16 %1 to i32, !dbg !686
  %and3 = and i32 %conv2, 65280, !dbg !686
  %cmp = icmp eq i32 %and3, 256, !dbg !686
  br i1 %cmp, label %if.then, label %if.else, !dbg !688

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %ec.addr, align 2, !dbg !689
  %conv5 = zext i16 %2 to i32, !dbg !689
  %shr6 = ashr i32 %conv5, 2, !dbg !689
  %and7 = and i32 %shr6, 3, !dbg !689
  %cmp8 = icmp ne i32 %and7, 1, !dbg !692
  br i1 %cmp8, label %if.then14, label %lor.lhs.false, !dbg !693

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i16, i16* %ec.addr, align 2, !dbg !694
  %conv10 = zext i16 %3 to i32, !dbg !694
  %and11 = and i32 %conv10, 3, !dbg !694
  %cmp12 = icmp ne i32 %and11, 1, !dbg !695
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !696

if.then14:                                        ; preds = %lor.lhs.false, %if.then
  store i1 false, i1* %retval, align 1, !dbg !697
  br label %return, !dbg !697

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8, i8* %r4, align 1, !dbg !698
  %conv15 = zext i8 %4 to i32, !dbg !698
  switch i32 %conv15, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 7, label %sw.bb19
    i32 8, label %sw.bb21
  ], !dbg !699

sw.bb:                                            ; preds = %if.end, %if.end
  %5 = load i8, i8* %r4, align 1, !dbg !700
  %conv16 = zext i8 %5 to i32, !dbg !700
  %cmp17 = icmp eq i32 %conv16, 3, !dbg !700
  %6 = zext i1 %cmp17 to i64, !dbg !700
  %cond = select i1 %cmp17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), !dbg !700
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.35, i64 0, i64 0), i8* %cond) #9, !dbg !700
  br label %sw.epilog, !dbg !702

sw.bb19:                                          ; preds = %if.end
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0)) #9, !dbg !703
  br label %sw.epilog, !dbg !704

sw.bb21:                                          ; preds = %if.end
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i64 0, i64 0)) #9, !dbg !705
  br label %sw.epilog, !dbg !706

sw.default:                                       ; preds = %if.end
  store i8 0, i8* %ret, align 1, !dbg !707
  br label %sw.epilog, !dbg !708

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb19, %sw.bb
  br label %if.end57, !dbg !709

if.else:                                          ; preds = %entry
  %7 = load i16, i16* %ec.addr, align 2, !dbg !710
  %conv23 = zext i16 %7 to i32, !dbg !710
  %and24 = and i32 %conv23, 63488, !dbg !710
  %cmp25 = icmp eq i32 %and24, 2048, !dbg !710
  br i1 %cmp25, label %if.then27, label %if.else55, !dbg !712

if.then27:                                        ; preds = %if.else
  %8 = load i16, i16* %ec.addr, align 2, !dbg !713
  %conv28 = zext i16 %8 to i32, !dbg !713
  %shr29 = ashr i32 %conv28, 2, !dbg !713
  %and30 = and i32 %shr29, 3, !dbg !713
  %cmp31 = icmp ne i32 %and30, 0, !dbg !716
  br i1 %cmp31, label %land.lhs.true, label %lor.lhs.false38, !dbg !717

land.lhs.true:                                    ; preds = %if.then27
  %9 = load i16, i16* %ec.addr, align 2, !dbg !718
  %conv33 = zext i16 %9 to i32, !dbg !718
  %shr34 = ashr i32 %conv33, 2, !dbg !718
  %and35 = and i32 %shr34, 3, !dbg !718
  %cmp36 = icmp ne i32 %and35, 2, !dbg !719
  br i1 %cmp36, label %if.then43, label %lor.lhs.false38, !dbg !720

lor.lhs.false38:                                  ; preds = %land.lhs.true, %if.then27
  %10 = load i16, i16* %ec.addr, align 2, !dbg !721
  %conv39 = zext i16 %10 to i32, !dbg !721
  %and40 = and i32 %conv39, 3, !dbg !721
  %cmp41 = icmp ne i32 %and40, 3, !dbg !722
  br i1 %cmp41, label %if.then43, label %if.end44, !dbg !723

if.then43:                                        ; preds = %lor.lhs.false38, %land.lhs.true
  store i1 false, i1* %retval, align 1, !dbg !724
  br label %return, !dbg !724

if.end44:                                         ; preds = %lor.lhs.false38
  %call45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !725
  %11 = load i8, i8* %r4, align 1, !dbg !726
  %conv46 = zext i8 %11 to i32, !dbg !726
  switch i32 %conv46, label %sw.default53 [
    i32 1, label %sw.bb47
    i32 4, label %sw.bb49
    i32 3, label %sw.bb51
  ], !dbg !727

sw.bb47:                                          ; preds = %if.end44
  %call48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0)) #9, !dbg !728
  br label %sw.epilog54, !dbg !730

sw.bb49:                                          ; preds = %if.end44
  %call50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !731
  br label %sw.epilog54, !dbg !732

sw.bb51:                                          ; preds = %if.end44
  %call52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #9, !dbg !733
  br label %sw.epilog54, !dbg !734

sw.default53:                                     ; preds = %if.end44
  store i8 0, i8* %ret, align 1, !dbg !735
  br label %sw.epilog54, !dbg !736

sw.epilog54:                                      ; preds = %sw.default53, %sw.bb51, %sw.bb49, %sw.bb47
  br label %if.end56, !dbg !737

if.else55:                                        ; preds = %if.else
  store i8 0, i8* %ret, align 1, !dbg !738
  br label %if.end56

if.end56:                                         ; preds = %if.else55, %sw.epilog54
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %sw.epilog
  %12 = load i8, i8* %ret, align 1, !dbg !740
  %tobool = trunc i8 %12 to i1, !dbg !740
  store i1 %tobool, i1* %retval, align 1, !dbg !741
  br label %return, !dbg !741

return:                                           ; preds = %if.end57, %if.then43, %if.then14
  %13 = load i1, i1* %retval, align 1, !dbg !742
  ret i1 %13, !dbg !742
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @cat_mc1_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !743 {
entry:
  %retval = alloca i1, align 1
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  %r4 = alloca i8, align 1
  %ret = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !744, metadata !DIExpression()), !dbg !745
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !746, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.declare(metadata i8* %r4, metadata !748, metadata !DIExpression()), !dbg !749
  %0 = load i16, i16* %ec.addr, align 2, !dbg !750
  %conv = zext i16 %0 to i32, !dbg !750
  %shr = ashr i32 %conv, 4, !dbg !750
  %and = and i32 %shr, 15, !dbg !750
  %conv1 = trunc i32 %and to i8, !dbg !750
  store i8 %conv1, i8* %r4, align 1, !dbg !749
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !751, metadata !DIExpression()), !dbg !752
  store i8 1, i8* %ret, align 1, !dbg !752
  %1 = load i16, i16* %ec.addr, align 2, !dbg !753
  %conv2 = zext i16 %1 to i32, !dbg !753
  %and3 = and i32 %conv2, 65280, !dbg !753
  %cmp = icmp eq i32 %and3, 256, !dbg !753
  br i1 %cmp, label %if.end, label %if.then, !dbg !755

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !756
  br label %return, !dbg !756

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %ec.addr, align 2, !dbg !757
  %conv5 = zext i16 %2 to i32, !dbg !757
  %shr6 = ashr i32 %conv5, 2, !dbg !757
  %and7 = and i32 %shr6, 3, !dbg !757
  %cmp8 = icmp ne i32 %and7, 0, !dbg !759
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !760

if.then10:                                        ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !761
  br label %return, !dbg !761

if.end11:                                         ; preds = %if.end
  %3 = load i8, i8* %r4, align 1, !dbg !762
  %conv12 = zext i8 %3 to i32, !dbg !762
  %cmp13 = icmp eq i32 %conv12, 5, !dbg !764
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !765

if.then15:                                        ; preds = %if.end11
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.44, i64 0, i64 0)) #9, !dbg !766
  br label %if.end37, !dbg !766

if.else:                                          ; preds = %if.end11
  %4 = load i8, i8* %r4, align 1, !dbg !767
  %conv16 = zext i8 %4 to i32, !dbg !767
  %cmp17 = icmp eq i32 %conv16, 8, !dbg !769
  br i1 %cmp17, label %if.then19, label %if.else21, !dbg !770

if.then19:                                        ; preds = %if.else
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i64 0, i64 0)) #9, !dbg !771
  br label %if.end36, !dbg !771

if.else21:                                        ; preds = %if.else
  %5 = load i8, i8* %xec.addr, align 1, !dbg !772
  %conv22 = zext i8 %5 to i32, !dbg !772
  %cmp23 = icmp eq i32 %conv22, 0, !dbg !774
  br i1 %cmp23, label %if.then25, label %if.else27, !dbg !775

if.then25:                                        ; preds = %if.else21
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.46, i64 0, i64 0)) #9, !dbg !776
  br label %if.end35, !dbg !776

if.else27:                                        ; preds = %if.else21
  %6 = load i8, i8* %xec.addr, align 1, !dbg !777
  %conv28 = zext i8 %6 to i32, !dbg !777
  %cmp29 = icmp eq i32 %conv28, 2, !dbg !779
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !780

if.then31:                                        ; preds = %if.else27
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.47, i64 0, i64 0)) #9, !dbg !781
  br label %if.end34, !dbg !781

if.else33:                                        ; preds = %if.else27
  store i8 0, i8* %ret, align 1, !dbg !782
  br label %if.end34

if.end34:                                         ; preds = %if.else33, %if.then31
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then25
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then19
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then15
  %7 = load i8, i8* %ret, align 1, !dbg !783
  %tobool = trunc i8 %7 to i1, !dbg !783
  store i1 %tobool, i1* %retval, align 1, !dbg !784
  br label %return, !dbg !784

return:                                           ; preds = %if.end37, %if.then10, %if.then
  %8 = load i1, i1* %retval, align 1, !dbg !785
  ret i1 %8, !dbg !785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @f15h_mc0_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !786 {
entry:
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  %ret = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !787, metadata !DIExpression()), !dbg !788
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !789, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !791, metadata !DIExpression()), !dbg !792
  store i8 1, i8* %ret, align 1, !dbg !792
  %0 = load i16, i16* %ec.addr, align 2, !dbg !793
  %conv = zext i16 %0 to i32, !dbg !793
  %and = and i32 %conv, 65280, !dbg !793
  %cmp = icmp eq i32 %and, 256, !dbg !793
  br i1 %cmp, label %if.then, label %if.else, !dbg !795

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %xec.addr, align 1, !dbg !796
  %conv2 = zext i8 %1 to i32, !dbg !796
  switch i32 %conv2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 17, label %sw.bb5
    i32 3, label %sw.bb7
    i32 16, label %sw.bb9
    i32 18, label %sw.bb11
  ], !dbg !798

sw.bb:                                            ; preds = %if.then
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0)) #9, !dbg !799
  br label %sw.epilog, !dbg !801

sw.bb3:                                           ; preds = %if.then
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.49, i64 0, i64 0)) #9, !dbg !802
  br label %sw.epilog, !dbg !803

sw.bb5:                                           ; preds = %if.then, %if.then
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0)) #9, !dbg !804
  br label %sw.epilog, !dbg !805

sw.bb7:                                           ; preds = %if.then
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i64 0, i64 0)) #9, !dbg !806
  br label %sw.epilog, !dbg !807

sw.bb9:                                           ; preds = %if.then
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0)) #9, !dbg !808
  br label %sw.epilog, !dbg !809

sw.bb11:                                          ; preds = %if.then
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i64 0, i64 0)) #9, !dbg !810
  br label %sw.epilog, !dbg !811

sw.default:                                       ; preds = %if.then
  store i8 0, i8* %ret, align 1, !dbg !812
  br label %sw.epilog, !dbg !813

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  br label %if.end39, !dbg !814

if.else:                                          ; preds = %entry
  %2 = load i16, i16* %ec.addr, align 2, !dbg !815
  %conv13 = zext i16 %2 to i32, !dbg !815
  %and14 = and i32 %conv13, 63488, !dbg !815
  %cmp15 = icmp eq i32 %and14, 2048, !dbg !815
  br i1 %cmp15, label %if.then17, label %if.else23, !dbg !817

if.then17:                                        ; preds = %if.else
  %3 = load i8, i8* %xec.addr, align 1, !dbg !818
  %tobool = icmp ne i8 %3, 0, !dbg !818
  br i1 %tobool, label %if.else20, label %if.then18, !dbg !821

if.then18:                                        ; preds = %if.then17
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0)) #9, !dbg !822
  br label %if.end, !dbg !822

if.else20:                                        ; preds = %if.then17
  %4 = load i8, i8* %xec.addr, align 1, !dbg !823
  %conv21 = zext i8 %4 to i32, !dbg !823
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i64 0, i64 0), i32 %conv21) #9, !dbg !823
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then18
  br label %if.end38, !dbg !824

if.else23:                                        ; preds = %if.else
  %5 = load i16, i16* %ec.addr, align 2, !dbg !825
  %conv24 = zext i16 %5 to i32, !dbg !825
  %and25 = and i32 %conv24, 62719, !dbg !825
  %cmp26 = icmp eq i32 %and25, 1024, !dbg !825
  br i1 %cmp26, label %if.then28, label %if.else36, !dbg !827

if.then28:                                        ; preds = %if.else23
  %6 = load i8, i8* %xec.addr, align 1, !dbg !828
  %conv29 = zext i8 %6 to i32, !dbg !828
  %cmp30 = icmp sle i32 %conv29, 31, !dbg !831
  br i1 %cmp30, label %if.then32, label %if.else34, !dbg !832

if.then32:                                        ; preds = %if.then28
  %call33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0)) #9, !dbg !833
  br label %if.end35, !dbg !833

if.else34:                                        ; preds = %if.then28
  store i8 0, i8* %ret, align 1, !dbg !834
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then32
  br label %if.end37, !dbg !835

if.else36:                                        ; preds = %if.else23
  store i8 0, i8* %ret, align 1, !dbg !836
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.end35
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %sw.epilog
  %7 = load i8, i8* %ret, align 1, !dbg !837
  %tobool40 = trunc i8 %7 to i1, !dbg !837
  ret i1 %tobool40, !dbg !838
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @f15h_mc1_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !839 {
entry:
  %retval = alloca i1, align 1
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  %ret = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !840, metadata !DIExpression()), !dbg !841
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !842, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !844, metadata !DIExpression()), !dbg !845
  store i8 1, i8* %ret, align 1, !dbg !845
  %0 = load i16, i16* %ec.addr, align 2, !dbg !846
  %conv = zext i16 %0 to i32, !dbg !846
  %and = and i32 %conv, 65280, !dbg !846
  %cmp = icmp eq i32 %and, 256, !dbg !846
  br i1 %cmp, label %if.end, label %if.then, !dbg !848

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !849
  br label %return, !dbg !849

if.end:                                           ; preds = %entry
  %1 = load i8, i8* %xec.addr, align 1, !dbg !850
  %conv2 = zext i8 %1 to i32, !dbg !850
  switch i32 %conv2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb3
    i32 16, label %sw.bb8
    i32 17, label %sw.bb14
    i32 18, label %sw.bb14
    i32 19, label %sw.bb14
    i32 20, label %sw.bb14
    i32 21, label %sw.bb14
  ], !dbg !851

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %2 = load i8, i8* %xec.addr, align 1, !dbg !852
  %idxprom = zext i8 %2 to i64, !dbg !852
  %arrayidx = getelementptr [18 x i8*], [18 x i8*]* @f15h_mc1_mce_desc, i64 0, i64 %idxprom, !dbg !852
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !852
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %3) #9, !dbg !852
  br label %sw.epilog, !dbg !854

sw.bb3:                                           ; preds = %if.end
  %4 = load i8, i8* %xec.addr, align 1, !dbg !855
  %conv4 = zext i8 %4 to i32, !dbg !855
  %sub = sub i32 %conv4, 2, !dbg !855
  %idxprom5 = sext i32 %sub to i64, !dbg !855
  %arrayidx6 = getelementptr [18 x i8*], [18 x i8*]* @f15h_mc1_mce_desc, i64 0, i64 %idxprom5, !dbg !855
  %5 = load i8*, i8** %arrayidx6, align 8, !dbg !855
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %5) #9, !dbg !855
  br label %sw.epilog, !dbg !856

sw.bb8:                                           ; preds = %if.end
  %6 = load i8, i8* %xec.addr, align 1, !dbg !857
  %conv9 = zext i8 %6 to i32, !dbg !857
  %sub10 = sub i32 %conv9, 4, !dbg !857
  %idxprom11 = sext i32 %sub10 to i64, !dbg !857
  %arrayidx12 = getelementptr [18 x i8*], [18 x i8*]* @f15h_mc1_mce_desc, i64 0, i64 %idxprom11, !dbg !857
  %7 = load i8*, i8** %arrayidx12, align 8, !dbg !857
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %7) #9, !dbg !857
  br label %sw.epilog, !dbg !858

sw.bb14:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %8 = load i8, i8* %xec.addr, align 1, !dbg !859
  %conv15 = zext i8 %8 to i32, !dbg !859
  %sub16 = sub i32 %conv15, 4, !dbg !859
  %idxprom17 = sext i32 %sub16 to i64, !dbg !859
  %arrayidx18 = getelementptr [18 x i8*], [18 x i8*]* @f15h_mc1_mce_desc, i64 0, i64 %idxprom17, !dbg !859
  %9 = load i8*, i8** %arrayidx18, align 8, !dbg !859
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.58, i64 0, i64 0), i8* %9) #9, !dbg !859
  br label %sw.epilog, !dbg !860

sw.default:                                       ; preds = %if.end
  store i8 0, i8* %ret, align 1, !dbg !861
  br label %sw.epilog, !dbg !862

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb8, %sw.bb3, %sw.bb
  %10 = load i8, i8* %ret, align 1, !dbg !863
  %tobool = trunc i8 %10 to i1, !dbg !863
  store i1 %tobool, i1* %retval, align 1, !dbg !864
  br label %return, !dbg !864

return:                                           ; preds = %sw.epilog, %if.then
  %11 = load i1, i1* %retval, align 1, !dbg !865
  ret i1 %11, !dbg !865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @f15h_mc2_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !866 {
entry:
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  %ret = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !867, metadata !DIExpression()), !dbg !868
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !869, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !871, metadata !DIExpression()), !dbg !872
  store i8 1, i8* %ret, align 1, !dbg !872
  %0 = load i16, i16* %ec.addr, align 2, !dbg !873
  %conv = zext i16 %0 to i32, !dbg !873
  %and = and i32 %conv, 65520, !dbg !873
  %cmp = icmp eq i32 %and, 16, !dbg !873
  br i1 %cmp, label %if.then, label %if.else13, !dbg !875

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %xec.addr, align 1, !dbg !876
  %conv2 = zext i8 %1 to i32, !dbg !876
  %cmp3 = icmp eq i32 %conv2, 0, !dbg !879
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !880

if.then5:                                         ; preds = %if.then
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !881
  br label %if.end12, !dbg !881

if.else:                                          ; preds = %if.then
  %2 = load i8, i8* %xec.addr, align 1, !dbg !882
  %conv6 = zext i8 %2 to i32, !dbg !882
  %cmp7 = icmp eq i32 %conv6, 1, !dbg !884
  br i1 %cmp7, label %if.then9, label %if.else11, !dbg !885

if.then9:                                         ; preds = %if.else
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.78, i64 0, i64 0)) #9, !dbg !886
  br label %if.end, !dbg !886

if.else11:                                        ; preds = %if.else
  store i8 0, i8* %ret, align 1, !dbg !887
  br label %if.end

if.end:                                           ; preds = %if.else11, %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then5
  br label %if.end56, !dbg !888

if.else13:                                        ; preds = %entry
  %3 = load i16, i16* %ec.addr, align 2, !dbg !889
  %conv14 = zext i16 %3 to i32, !dbg !889
  %and15 = and i32 %conv14, 63488, !dbg !889
  %cmp16 = icmp eq i32 %and15, 2048, !dbg !889
  br i1 %cmp16, label %if.then18, label %if.else25, !dbg !891

if.then18:                                        ; preds = %if.else13
  %4 = load i8, i8* %xec.addr, align 1, !dbg !892
  %conv19 = zext i8 %4 to i32, !dbg !892
  %cmp20 = icmp sgt i32 %conv19, 2, !dbg !895
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !896

if.then22:                                        ; preds = %if.then18
  store i8 0, i8* %ret, align 1, !dbg !897
  br label %if.end23, !dbg !898

if.end23:                                         ; preds = %if.then22, %if.then18
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.79, i64 0, i64 0)) #9, !dbg !899
  br label %if.end55, !dbg !900

if.else25:                                        ; preds = %if.else13
  %5 = load i16, i16* %ec.addr, align 2, !dbg !901
  %conv26 = zext i16 %5 to i32, !dbg !901
  %and27 = and i32 %conv26, 65280, !dbg !901
  %cmp28 = icmp eq i32 %and27, 256, !dbg !901
  br i1 %cmp28, label %if.then30, label %if.else40, !dbg !903

if.then30:                                        ; preds = %if.else25
  %6 = load i8, i8* %xec.addr, align 1, !dbg !904
  %conv31 = zext i8 %6 to i32, !dbg !904
  switch i32 %conv31, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 16, label %sw.bb34
    i32 17, label %sw.bb34
    i32 18, label %sw.bb34
    i32 19, label %sw.bb34
    i32 20, label %sw.bb34
  ], !dbg !906

sw.bb:                                            ; preds = %if.then30, %if.then30, %if.then30, %if.then30, %if.then30, %if.then30, %if.then30, %if.then30, %if.then30
  %7 = load i8, i8* %xec.addr, align 1, !dbg !907
  %conv32 = zext i8 %7 to i32, !dbg !907
  %sub = sub i32 %conv32, 4, !dbg !907
  %idxprom = sext i32 %sub to i64, !dbg !907
  %arrayidx = getelementptr [14 x i8*], [14 x i8*]* @f15h_mc2_mce_desc, i64 0, i64 %idxprom, !dbg !907
  %8 = load i8*, i8** %arrayidx, align 8, !dbg !907
  %call33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %8) #9, !dbg !907
  br label %sw.epilog, !dbg !909

sw.bb34:                                          ; preds = %if.then30, %if.then30, %if.then30, %if.then30, %if.then30
  %9 = load i8, i8* %xec.addr, align 1, !dbg !910
  %conv35 = zext i8 %9 to i32, !dbg !910
  %sub36 = sub i32 %conv35, 7, !dbg !910
  %idxprom37 = sext i32 %sub36 to i64, !dbg !910
  %arrayidx38 = getelementptr [14 x i8*], [14 x i8*]* @f15h_mc2_mce_desc, i64 0, i64 %idxprom37, !dbg !910
  %10 = load i8*, i8** %arrayidx38, align 8, !dbg !910
  %call39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %10) #9, !dbg !910
  br label %sw.epilog, !dbg !911

sw.default:                                       ; preds = %if.then30
  store i8 0, i8* %ret, align 1, !dbg !912
  br label %sw.epilog, !dbg !913

sw.epilog:                                        ; preds = %sw.default, %sw.bb34, %sw.bb
  br label %if.end54, !dbg !914

if.else40:                                        ; preds = %if.else25
  %11 = load i16, i16* %ec.addr, align 2, !dbg !915
  %conv41 = zext i16 %11 to i32, !dbg !915
  %and42 = and i32 %conv41, 62719, !dbg !915
  %cmp43 = icmp eq i32 %and42, 1024, !dbg !915
  br i1 %cmp43, label %if.then45, label %if.end53, !dbg !917

if.then45:                                        ; preds = %if.else40
  %12 = load i8, i8* %xec.addr, align 1, !dbg !918
  %conv46 = zext i8 %12 to i32, !dbg !918
  %cmp47 = icmp sle i32 %conv46, 63, !dbg !921
  br i1 %cmp47, label %if.then49, label %if.else51, !dbg !922

if.then49:                                        ; preds = %if.then45
  %call50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0)) #9, !dbg !923
  br label %if.end52, !dbg !923

if.else51:                                        ; preds = %if.then45
  store i8 0, i8* %ret, align 1, !dbg !924
  br label %if.end52

if.end52:                                         ; preds = %if.else51, %if.then49
  br label %if.end53, !dbg !925

if.end53:                                         ; preds = %if.end52, %if.else40
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %sw.epilog
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end23
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end12
  %13 = load i8, i8* %ret, align 1, !dbg !926
  %tobool = trunc i8 %13 to i1, !dbg !926
  ret i1 %tobool, !dbg !927
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @f16h_mc2_mce(i16 zeroext %ec, i8 zeroext %xec) #0 !dbg !928 {
entry:
  %retval = alloca i1, align 1
  %ec.addr = alloca i16, align 2
  %xec.addr = alloca i8, align 1
  %r4 = alloca i8, align 1
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !929, metadata !DIExpression()), !dbg !930
  store i8 %xec, i8* %xec.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %xec.addr, metadata !931, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.declare(metadata i8* %r4, metadata !933, metadata !DIExpression()), !dbg !934
  %0 = load i16, i16* %ec.addr, align 2, !dbg !935
  %conv = zext i16 %0 to i32, !dbg !935
  %shr = ashr i32 %conv, 4, !dbg !935
  %and = and i32 %shr, 15, !dbg !935
  %conv1 = trunc i32 %and to i8, !dbg !935
  store i8 %conv1, i8* %r4, align 1, !dbg !934
  %1 = load i16, i16* %ec.addr, align 2, !dbg !936
  %conv2 = zext i16 %1 to i32, !dbg !936
  %and3 = and i32 %conv2, 65280, !dbg !936
  %cmp = icmp eq i32 %and3, 256, !dbg !936
  br i1 %cmp, label %if.end, label %if.then, !dbg !938

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !939
  br label %return, !dbg !939

if.end:                                           ; preds = %entry
  %2 = load i8, i8* %xec.addr, align 1, !dbg !940
  %conv5 = zext i8 %2 to i32, !dbg !940
  switch i32 %conv5, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 13, label %sw.bb10
    i32 14, label %sw.bb10
    i32 15, label %sw.bb10
    i32 9, label %sw.bb9
    i32 10, label %sw.bb9
    i32 11, label %sw.bb9
    i32 27, label %sw.bb21
    i32 16, label %sw.bb20
    i32 17, label %sw.bb20
    i32 18, label %sw.bb20
    i32 19, label %sw.bb20
    i32 20, label %sw.bb20
    i32 21, label %sw.bb20
    i32 22, label %sw.bb20
    i32 23, label %sw.bb20
    i32 24, label %sw.bb20
    i32 25, label %sw.bb20
    i32 31, label %sw.bb44
    i32 28, label %sw.bb43
    i32 29, label %sw.bb43
  ], !dbg !941

sw.bb:                                            ; preds = %if.end, %if.end
  %3 = load i8, i8* %r4, align 1, !dbg !942
  %conv6 = zext i8 %3 to i32, !dbg !942
  %cmp7 = icmp eq i32 %conv6, 1, !dbg !942
  %4 = zext i1 %cmp7 to i64, !dbg !942
  %cond = select i1 %cmp7, i32 73, i32 79, !dbg !942
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.94, i64 0, i64 0), i32 %cond) #9, !dbg !942
  br label %sw.epilog, !dbg !944

sw.bb9:                                           ; preds = %if.end, %if.end, %if.end
  br label %sw.bb10, !dbg !944

sw.bb10:                                          ; preds = %if.end, %if.end, %if.end, %sw.bb9
  %5 = load i8, i8* %r4, align 1, !dbg !945
  %conv11 = zext i8 %5 to i32, !dbg !945
  %cmp12 = icmp eq i32 %conv11, 0, !dbg !945
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !945

cond.true:                                        ; preds = %sw.bb10
  br label %cond.end, !dbg !945

cond.false:                                       ; preds = %sw.bb10
  %6 = load i8, i8* %r4, align 1, !dbg !945
  %conv14 = zext i8 %6 to i32, !dbg !945
  %cmp15 = icmp eq i32 %conv14, 8, !dbg !945
  %7 = zext i1 %cmp15 to i64, !dbg !945
  %cond17 = select i1 %cmp15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0), !dbg !945
  br label %cond.end, !dbg !945

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i64 0, i64 0), %cond.true ], [ %cond17, %cond.false ], !dbg !945
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.95, i64 0, i64 0), i8* %cond18) #9, !dbg !945
  br label %sw.epilog, !dbg !946

sw.bb20:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %sw.bb21, !dbg !946

sw.bb21:                                          ; preds = %if.end, %sw.bb20
  %8 = load i8, i8* %r4, align 1, !dbg !947
  %conv22 = zext i8 %8 to i32, !dbg !947
  %cmp23 = icmp eq i32 %conv22, 1, !dbg !947
  br i1 %cmp23, label %land.lhs.true, label %cond.false28, !dbg !947

land.lhs.true:                                    ; preds = %sw.bb21
  %9 = load i8, i8* %xec.addr, align 1, !dbg !947
  %conv25 = zext i8 %9 to i32, !dbg !947
  %and26 = and i32 %conv25, 3, !dbg !947
  %tobool = icmp ne i32 %and26, 0, !dbg !947
  br i1 %tobool, label %cond.false28, label %cond.true27, !dbg !947

cond.true27:                                      ; preds = %land.lhs.true
  br label %cond.end40, !dbg !947

cond.false28:                                     ; preds = %land.lhs.true, %sw.bb21
  %10 = load i8, i8* %r4, align 1, !dbg !947
  %conv29 = zext i8 %10 to i32, !dbg !947
  %cmp30 = icmp eq i32 %conv29, 0, !dbg !947
  br i1 %cmp30, label %cond.true32, label %cond.false33, !dbg !947

cond.true32:                                      ; preds = %cond.false28
  br label %cond.end38, !dbg !947

cond.false33:                                     ; preds = %cond.false28
  %11 = load i8, i8* %r4, align 1, !dbg !947
  %conv34 = zext i8 %11 to i32, !dbg !947
  %cmp35 = icmp eq i32 %conv34, 7, !dbg !947
  %12 = zext i1 %cmp35 to i64, !dbg !947
  %cond37 = select i1 %cmp35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0), !dbg !947
  br label %cond.end38, !dbg !947

cond.end38:                                       ; preds = %cond.false33, %cond.true32
  %cond39 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), %cond.true32 ], [ %cond37, %cond.false33 ], !dbg !947
  br label %cond.end40, !dbg !947

cond.end40:                                       ; preds = %cond.end38, %cond.true27
  %cond41 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0), %cond.true27 ], [ %cond39, %cond.end38 ], !dbg !947
  %call42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.99, i64 0, i64 0), i8* %cond41) #9, !dbg !947
  br label %sw.epilog, !dbg !948

sw.bb43:                                          ; preds = %if.end, %if.end
  br label %sw.bb44, !dbg !948

sw.bb44:                                          ; preds = %if.end, %sw.bb43
  %13 = load i8, i8* %r4, align 1, !dbg !949
  %conv45 = zext i8 %13 to i32, !dbg !949
  %cmp46 = icmp eq i32 %conv45, 1, !dbg !949
  br i1 %cmp46, label %cond.true48, label %cond.false49, !dbg !949

cond.true48:                                      ; preds = %sw.bb44
  br label %cond.end54, !dbg !949

cond.false49:                                     ; preds = %sw.bb44
  %14 = load i8, i8* %r4, align 1, !dbg !949
  %conv50 = zext i8 %14 to i32, !dbg !949
  %cmp51 = icmp eq i32 %conv50, 0, !dbg !949
  %15 = zext i1 %cmp51 to i64, !dbg !949
  %cond53 = select i1 %cmp51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0), !dbg !949
  br label %cond.end54, !dbg !949

cond.end54:                                       ; preds = %cond.false49, %cond.true48
  %cond55 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.100, i64 0, i64 0), %cond.true48 ], [ %cond53, %cond.false49 ], !dbg !949
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.103, i64 0, i64 0), i8* %cond55) #9, !dbg !949
  br label %sw.epilog, !dbg !950

sw.default:                                       ; preds = %if.end
  store i1 false, i1* %retval, align 1, !dbg !951
  br label %return, !dbg !951

sw.epilog:                                        ; preds = %cond.end54, %cond.end40, %cond.end, %sw.bb
  store i1 true, i1* %retval, align 1, !dbg !952
  br label %return, !dbg !952

return:                                           ; preds = %sw.epilog, %sw.default, %if.then
  %16 = load i1, i1* %retval, align 1, !dbg !953
  ret i1 %16, !dbg !953
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @mce_register_decode_chain(%struct.notifier_block*) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !954 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !958, metadata !DIExpression()), !dbg !959
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !960, metadata !DIExpression()), !dbg !961
  ret i1 true, !dbg !962
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !963 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !967, metadata !DIExpression()), !dbg !968
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !969, metadata !DIExpression()), !dbg !970
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !971, metadata !DIExpression()), !dbg !972
  ret void, !dbg !973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @amd_decode_mce(%struct.notifier_block* %nb, i64 %val, i8* %data) #0 !dbg !974 {
entry:
  %retval = alloca i32, align 4
  %nb.addr = alloca %struct.notifier_block*, align 8
  %val.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %m = alloca %struct.mce*, align 8
  %fam = alloca i32, align 4
  %ecc = alloca i32, align 4
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %addr = alloca i32, align 4
  %_err = alloca i32, align 4
  %_l = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !975, metadata !DIExpression()), !dbg !976
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !977, metadata !DIExpression()), !dbg !978
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !979, metadata !DIExpression()), !dbg !980
  call void @llvm.dbg.declare(metadata %struct.mce** %m, metadata !981, metadata !DIExpression()), !dbg !982
  %0 = load i8*, i8** %data.addr, align 8, !dbg !983
  %1 = bitcast i8* %0 to %struct.mce*, !dbg !984
  store %struct.mce* %1, %struct.mce** %m, align 8, !dbg !982
  call void @llvm.dbg.declare(metadata i32* %fam, metadata !985, metadata !DIExpression()), !dbg !986
  %2 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !987
  %cpuid = getelementptr inbounds %struct.mce, %struct.mce* %2, i32 0, i32 11, !dbg !988
  %3 = load i32, i32* %cpuid, align 4, !dbg !988
  %call = call i32 @x86_family(i32 %3) #8, !dbg !989
  store i32 %call, i32* %fam, align 4, !dbg !986
  call void @llvm.dbg.declare(metadata i32* %ecc, metadata !990, metadata !DIExpression()), !dbg !991
  %4 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !992
  %kflags = getelementptr inbounds %struct.mce, %struct.mce* %4, i32 0, i32 24, !dbg !994
  %5 = load i64, i64* %kflags, align 8, !dbg !994
  %and = and i64 %5, 1, !dbg !995
  %tobool = icmp ne i64 %and, 0, !dbg !995
  br i1 %tobool, label %if.then, label %if.end, !dbg !996

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !997
  br label %return, !dbg !997

if.end:                                           ; preds = %entry
  %6 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !998
  %call1 = call i8* @decode_error_status(%struct.mce* %6) #8, !dbg !998
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i64 0, i64 0), i8* %call1) #9, !dbg !998
  %7 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !999
  %extcpu = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 16, !dbg !999
  %8 = load i32, i32* %extcpu, align 4, !dbg !999
  %9 = load i32, i32* %fam, align 4, !dbg !999
  %10 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !999
  %cpuid3 = getelementptr inbounds %struct.mce, %struct.mce* %10, i32 0, i32 11, !dbg !999
  %11 = load i32, i32* %cpuid3, align 4, !dbg !999
  %call4 = call i32 @x86_model(i32 %11) #8, !dbg !999
  %12 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !999
  %cpuid5 = getelementptr inbounds %struct.mce, %struct.mce* %12, i32 0, i32 11, !dbg !999
  %13 = load i32, i32* %cpuid5, align 4, !dbg !999
  %call6 = call i32 @x86_stepping(i32 %13) #8, !dbg !999
  %14 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !999
  %bank = getelementptr inbounds %struct.mce, %struct.mce* %14, i32 0, i32 13, !dbg !999
  %15 = load i8, i8* %bank, align 1, !dbg !999
  %conv = zext i8 %15 to i32, !dbg !999
  %16 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !999
  %status = getelementptr inbounds %struct.mce, %struct.mce* %16, i32 0, i32 0, !dbg !999
  %17 = load i64, i64* %status, align 8, !dbg !999
  %and7 = and i64 %17, 4611686018427387904, !dbg !999
  %tobool8 = icmp ne i64 %and7, 0, !dbg !999
  %18 = zext i1 %tobool8 to i64, !dbg !999
  %cond = select i1 %tobool8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0), !dbg !999
  %19 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !999
  %status9 = getelementptr inbounds %struct.mce, %struct.mce* %19, i32 0, i32 0, !dbg !999
  %20 = load i64, i64* %status9, align 8, !dbg !999
  %and10 = and i64 %20, 2305843009213693952, !dbg !999
  %tobool11 = icmp ne i64 %and10, 0, !dbg !999
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !999

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !999

cond.false:                                       ; preds = %if.end
  %21 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !999
  %status12 = getelementptr inbounds %struct.mce, %struct.mce* %21, i32 0, i32 0, !dbg !999
  %22 = load i64, i64* %status12, align 8, !dbg !999
  %and13 = and i64 %22, 17592186044416, !dbg !999
  %tobool14 = icmp ne i64 %and13, 0, !dbg !999
  %23 = zext i1 %tobool14 to i64, !dbg !999
  %cond15 = select i1 %tobool14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.109, i64 0, i64 0), !dbg !999
  br label %cond.end, !dbg !999

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond16 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), %cond.true ], [ %cond15, %cond.false ], !dbg !999
  %24 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !999
  %status17 = getelementptr inbounds %struct.mce, %struct.mce* %24, i32 0, i32 0, !dbg !999
  %25 = load i64, i64* %status17, align 8, !dbg !999
  %and18 = and i64 %25, 576460752303423488, !dbg !999
  %tobool19 = icmp ne i64 %and18, 0, !dbg !999
  %26 = zext i1 %tobool19 to i64, !dbg !999
  %cond20 = select i1 %tobool19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0), !dbg !999
  %27 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !999
  %status21 = getelementptr inbounds %struct.mce, %struct.mce* %27, i32 0, i32 0, !dbg !999
  %28 = load i64, i64* %status21, align 8, !dbg !999
  %and22 = and i64 %28, 288230376151711744, !dbg !999
  %tobool23 = icmp ne i64 %and22, 0, !dbg !999
  %29 = zext i1 %tobool23 to i64, !dbg !999
  %cond24 = select i1 %tobool23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0), !dbg !999
  %30 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !999
  %status25 = getelementptr inbounds %struct.mce, %struct.mce* %30, i32 0, i32 0, !dbg !999
  %31 = load i64, i64* %status25, align 8, !dbg !999
  %and26 = and i64 %31, 144115188075855872, !dbg !999
  %tobool27 = icmp ne i64 %and26, 0, !dbg !999
  %32 = zext i1 %tobool27 to i64, !dbg !999
  %cond28 = select i1 %tobool27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0), !dbg !999
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.105, i64 0, i64 0), i32 %8, i32 %9, i32 %call4, i32 %call6, i32 %conv, i8* %cond, i8* %cond16, i8* %cond20, i8* %cond24, i8* %cond28) #9, !dbg !999
  br i1 false, label %cond.true30, label %cond.false31, !dbg !1000

cond.true30:                                      ; preds = %cond.end
  br i1 true, label %if.then34, label %if.end55, !dbg !1001

cond.false31:                                     ; preds = %cond.end
  %call32 = call zeroext i1 @test_bit(i64 547, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #8, !dbg !1001
  br i1 %call32, label %if.then34, label %if.end55, !dbg !1000

if.then34:                                        ; preds = %cond.false31, %cond.true30
  call void @llvm.dbg.declare(metadata i32* %low, metadata !1003, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.declare(metadata i32* %high, metadata !1006, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.declare(metadata i32* %addr, metadata !1008, metadata !DIExpression()), !dbg !1009
  %33 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1010
  %bank35 = getelementptr inbounds %struct.mce, %struct.mce* %33, i32 0, i32 13, !dbg !1010
  %34 = load i8, i8* %bank35, align 1, !dbg !1010
  %conv36 = zext i8 %34 to i32, !dbg !1010
  %mul = mul i32 16, %conv36, !dbg !1010
  %add = add i32 -1073733628, %mul, !dbg !1010
  store i32 %add, i32* %addr, align 4, !dbg !1009
  call void @llvm.dbg.declare(metadata i32* %_err, metadata !1011, metadata !DIExpression()), !dbg !1014
  call void @llvm.dbg.declare(metadata i64* %_l, metadata !1015, metadata !DIExpression()), !dbg !1014
  %35 = load i32, i32* %addr, align 4, !dbg !1014
  %call37 = call i64 @paravirt_read_msr_safe(i32 %35, i32* %_err) #8, !dbg !1014
  store i64 %call37, i64* %_l, align 8, !dbg !1014
  %36 = load i64, i64* %_l, align 8, !dbg !1014
  %conv38 = trunc i64 %36 to i32, !dbg !1014
  store i32 %conv38, i32* %low, align 4, !dbg !1014
  %37 = load i64, i64* %_l, align 8, !dbg !1014
  %shr = lshr i64 %37, 32, !dbg !1014
  %conv39 = trunc i64 %shr to i32, !dbg !1014
  store i32 %conv39, i32* %high, align 4, !dbg !1014
  %38 = load i32, i32* %_err, align 4, !dbg !1014
  store i32 %38, i32* %tmp, align 4, !dbg !1014
  %39 = load i32, i32* %tmp, align 4, !dbg !1014
  %tobool40 = icmp ne i32 %39, 0, !dbg !1016
  br i1 %tobool40, label %if.end49, label %land.lhs.true, !dbg !1017

land.lhs.true:                                    ; preds = %if.then34
  %40 = load i32, i32* %low, align 4, !dbg !1018
  %and41 = and i32 %40, 1, !dbg !1019
  %tobool42 = icmp ne i32 %and41, 0, !dbg !1019
  br i1 %tobool42, label %if.then43, label %if.end49, !dbg !1020

if.then43:                                        ; preds = %land.lhs.true
  %41 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1021
  %status44 = getelementptr inbounds %struct.mce, %struct.mce* %41, i32 0, i32 0, !dbg !1021
  %42 = load i64, i64* %status44, align 8, !dbg !1021
  %and45 = and i64 %42, 36028797018963968, !dbg !1021
  %tobool46 = icmp ne i64 %and45, 0, !dbg !1021
  %43 = zext i1 %tobool46 to i64, !dbg !1021
  %cond47 = select i1 %tobool46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0), !dbg !1021
  %call48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i64 0, i64 0), i8* %cond47) #9, !dbg !1021
  br label %if.end49, !dbg !1021

if.end49:                                         ; preds = %if.then43, %land.lhs.true, %if.then34
  %44 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1022
  %status50 = getelementptr inbounds %struct.mce, %struct.mce* %44, i32 0, i32 0, !dbg !1022
  %45 = load i64, i64* %status50, align 8, !dbg !1022
  %and51 = and i64 %45, 9007199254740992, !dbg !1022
  %tobool52 = icmp ne i64 %and51, 0, !dbg !1022
  %46 = zext i1 %tobool52 to i64, !dbg !1022
  %cond53 = select i1 %tobool52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0), !dbg !1022
  %call54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i64 0, i64 0), i8* %cond53) #9, !dbg !1022
  br label %if.end55, !dbg !1023

if.end55:                                         ; preds = %if.end49, %cond.false31, %cond.true30
  %47 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1024
  %status56 = getelementptr inbounds %struct.mce, %struct.mce* %47, i32 0, i32 0, !dbg !1025
  %48 = load i64, i64* %status56, align 8, !dbg !1025
  %shr57 = lshr i64 %48, 45, !dbg !1026
  %and58 = and i64 %shr57, 3, !dbg !1027
  %conv59 = trunc i64 %and58 to i32, !dbg !1028
  store i32 %conv59, i32* %ecc, align 4, !dbg !1029
  %49 = load i32, i32* %ecc, align 4, !dbg !1030
  %tobool60 = icmp ne i32 %49, 0, !dbg !1030
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !1032

if.then61:                                        ; preds = %if.end55
  %50 = load i32, i32* %ecc, align 4, !dbg !1033
  %cmp = icmp eq i32 %50, 2, !dbg !1033
  %51 = zext i1 %cmp to i64, !dbg !1033
  %cond63 = select i1 %cmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.117, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.118, i64 0, i64 0), !dbg !1033
  %call64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i64 0, i64 0), i8* %cond63) #9, !dbg !1033
  br label %if.end65, !dbg !1033

if.end65:                                         ; preds = %if.then61, %if.end55
  %52 = load i32, i32* %fam, align 4, !dbg !1034
  %cmp66 = icmp uge i32 %52, 21, !dbg !1036
  br i1 %cmp66, label %if.then68, label %if.end87, !dbg !1037

if.then68:                                        ; preds = %if.end65
  %53 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1038
  %status69 = getelementptr inbounds %struct.mce, %struct.mce* %53, i32 0, i32 0, !dbg !1038
  %54 = load i64, i64* %status69, align 8, !dbg !1038
  %and70 = and i64 %54, 17592186044416, !dbg !1038
  %tobool71 = icmp ne i64 %and70, 0, !dbg !1038
  %55 = zext i1 %tobool71 to i64, !dbg !1038
  %cond72 = select i1 %tobool71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0), !dbg !1038
  %call73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i64 0, i64 0), i8* %cond72) #9, !dbg !1038
  %56 = load i32, i32* %fam, align 4, !dbg !1040
  %cmp74 = icmp ne i32 %56, 21, !dbg !1042
  br i1 %cmp74, label %if.then80, label %lor.lhs.false, !dbg !1043

lor.lhs.false:                                    ; preds = %if.then68
  %57 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1044
  %bank76 = getelementptr inbounds %struct.mce, %struct.mce* %57, i32 0, i32 13, !dbg !1045
  %58 = load i8, i8* %bank76, align 1, !dbg !1045
  %conv77 = zext i8 %58 to i32, !dbg !1044
  %cmp78 = icmp ne i32 %conv77, 4, !dbg !1046
  br i1 %cmp78, label %if.then80, label %if.end86, !dbg !1047

if.then80:                                        ; preds = %lor.lhs.false, %if.then68
  %59 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1048
  %status81 = getelementptr inbounds %struct.mce, %struct.mce* %59, i32 0, i32 0, !dbg !1048
  %60 = load i64, i64* %status81, align 8, !dbg !1048
  %and82 = and i64 %60, 8796093022208, !dbg !1048
  %tobool83 = icmp ne i64 %and82, 0, !dbg !1048
  %61 = zext i1 %tobool83 to i64, !dbg !1048
  %cond84 = select i1 %tobool83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.120, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0), !dbg !1048
  %call85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i64 0, i64 0), i8* %cond84) #9, !dbg !1048
  br label %if.end86, !dbg !1048

if.end86:                                         ; preds = %if.then80, %lor.lhs.false
  br label %if.end87, !dbg !1049

if.end87:                                         ; preds = %if.end86, %if.end65
  %62 = load i32, i32* %fam, align 4, !dbg !1050
  %cmp88 = icmp uge i32 %62, 23, !dbg !1052
  br i1 %cmp88, label %if.then90, label %if.end96, !dbg !1053

if.then90:                                        ; preds = %if.end87
  %63 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1054
  %status91 = getelementptr inbounds %struct.mce, %struct.mce* %63, i32 0, i32 0, !dbg !1054
  %64 = load i64, i64* %status91, align 8, !dbg !1054
  %and92 = and i64 %64, 1099511627776, !dbg !1054
  %tobool93 = icmp ne i64 %and92, 0, !dbg !1054
  %65 = zext i1 %tobool93 to i64, !dbg !1054
  %cond94 = select i1 %tobool93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0), !dbg !1054
  %call95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i64 0, i64 0), i8* %cond94) #9, !dbg !1054
  br label %if.end96, !dbg !1054

if.end96:                                         ; preds = %if.then90, %if.end87
  %66 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1055
  %status97 = getelementptr inbounds %struct.mce, %struct.mce* %66, i32 0, i32 0, !dbg !1055
  %67 = load i64, i64* %status97, align 8, !dbg !1055
  %call98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.122, i64 0, i64 0), i64 %67) #9, !dbg !1055
  %68 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1056
  %status99 = getelementptr inbounds %struct.mce, %struct.mce* %68, i32 0, i32 0, !dbg !1058
  %69 = load i64, i64* %status99, align 8, !dbg !1058
  %and100 = and i64 %69, 288230376151711744, !dbg !1059
  %tobool101 = icmp ne i64 %and100, 0, !dbg !1059
  br i1 %tobool101, label %if.then102, label %if.end105, !dbg !1060

if.then102:                                       ; preds = %if.end96
  %70 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1061
  %addr103 = getelementptr inbounds %struct.mce, %struct.mce* %70, i32 0, i32 2, !dbg !1061
  %71 = load i64, i64* %addr103, align 8, !dbg !1061
  %call104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.123, i64 0, i64 0), i64 %71) #9, !dbg !1061
  br label %if.end105, !dbg !1061

if.end105:                                        ; preds = %if.then102, %if.end96
  %72 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1062
  %ppin = getelementptr inbounds %struct.mce, %struct.mce* %72, i32 0, i32 22, !dbg !1064
  %73 = load i64, i64* %ppin, align 8, !dbg !1064
  %tobool106 = icmp ne i64 %73, 0, !dbg !1062
  br i1 %tobool106, label %if.then107, label %if.end110, !dbg !1065

if.then107:                                       ; preds = %if.end105
  %74 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1066
  %ppin108 = getelementptr inbounds %struct.mce, %struct.mce* %74, i32 0, i32 22, !dbg !1066
  %75 = load i64, i64* %ppin108, align 8, !dbg !1066
  %call109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.124, i64 0, i64 0), i64 %75) #9, !dbg !1066
  br label %if.end110, !dbg !1066

if.end110:                                        ; preds = %if.then107, %if.end105
  br i1 false, label %cond.true111, label %cond.false112, !dbg !1067

cond.true111:                                     ; preds = %if.end110
  br i1 true, label %if.then115, label %if.end124, !dbg !1068

cond.false112:                                    ; preds = %if.end110
  %call113 = call zeroext i1 @test_bit(i64 547, i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12, i32 0)) #8, !dbg !1068
  br i1 %call113, label %if.then115, label %if.end124, !dbg !1067

if.then115:                                       ; preds = %cond.false112, %cond.true111
  %76 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1070
  %ipid = getelementptr inbounds %struct.mce, %struct.mce* %76, i32 0, i32 21, !dbg !1070
  %77 = load i64, i64* %ipid, align 8, !dbg !1070
  %call116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.125, i64 0, i64 0), i64 %77) #9, !dbg !1070
  %78 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1072
  %status117 = getelementptr inbounds %struct.mce, %struct.mce* %78, i32 0, i32 0, !dbg !1074
  %79 = load i64, i64* %status117, align 8, !dbg !1074
  %and118 = and i64 %79, 9007199254740992, !dbg !1075
  %tobool119 = icmp ne i64 %and118, 0, !dbg !1075
  br i1 %tobool119, label %if.then120, label %if.end122, !dbg !1076

if.then120:                                       ; preds = %if.then115
  %80 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1077
  %synd = getelementptr inbounds %struct.mce, %struct.mce* %80, i32 0, i32 20, !dbg !1077
  %81 = load i64, i64* %synd, align 8, !dbg !1077
  %call121 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.126, i64 0, i64 0), i64 %81) #9, !dbg !1077
  br label %if.end122, !dbg !1077

if.end122:                                        ; preds = %if.then120, %if.then115
  %call123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i64 0, i64 0)) #9, !dbg !1078
  %82 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1079
  call void @decode_smca_error(%struct.mce* %82) #8, !dbg !1080
  br label %err_code, !dbg !1081

if.end124:                                        ; preds = %cond.false112, %cond.true111
  %83 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1082
  %tsc = getelementptr inbounds %struct.mce, %struct.mce* %83, i32 0, i32 5, !dbg !1084
  %84 = load i64, i64* %tsc, align 8, !dbg !1084
  %tobool125 = icmp ne i64 %84, 0, !dbg !1082
  br i1 %tobool125, label %if.then126, label %if.end129, !dbg !1085

if.then126:                                       ; preds = %if.end124
  %85 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1086
  %tsc127 = getelementptr inbounds %struct.mce, %struct.mce* %85, i32 0, i32 5, !dbg !1086
  %86 = load i64, i64* %tsc127, align 8, !dbg !1086
  %call128 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.128, i64 0, i64 0), i64 %86) #9, !dbg !1086
  br label %if.end129, !dbg !1086

if.end129:                                        ; preds = %if.then126, %if.end124
  %87 = load i1 (i16, i8)*, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 0), align 8, !dbg !1087
  %tobool130 = icmp ne i1 (i16, i8)* %87, null, !dbg !1089
  br i1 %tobool130, label %if.end132, label %if.then131, !dbg !1090

if.then131:                                       ; preds = %if.end129
  br label %err_code, !dbg !1091

if.end132:                                        ; preds = %if.end129
  %88 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1092
  %bank133 = getelementptr inbounds %struct.mce, %struct.mce* %88, i32 0, i32 13, !dbg !1093
  %89 = load i8, i8* %bank133, align 1, !dbg !1093
  %conv134 = zext i8 %89 to i32, !dbg !1092
  switch i32 %conv134, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb135
    i32 2, label %sw.bb136
    i32 3, label %sw.bb137
    i32 4, label %sw.bb138
    i32 5, label %sw.bb139
    i32 6, label %sw.bb140
  ], !dbg !1094

sw.bb:                                            ; preds = %if.end132
  %90 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1095
  call void @decode_mc0_mce(%struct.mce* %90) #8, !dbg !1097
  br label %sw.epilog, !dbg !1098

sw.bb135:                                         ; preds = %if.end132
  %91 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1099
  call void @decode_mc1_mce(%struct.mce* %91) #8, !dbg !1100
  br label %sw.epilog, !dbg !1101

sw.bb136:                                         ; preds = %if.end132
  %92 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1102
  call void @decode_mc2_mce(%struct.mce* %92) #8, !dbg !1103
  br label %sw.epilog, !dbg !1104

sw.bb137:                                         ; preds = %if.end132
  %93 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1105
  call void @decode_mc3_mce(%struct.mce* %93) #8, !dbg !1106
  br label %sw.epilog, !dbg !1107

sw.bb138:                                         ; preds = %if.end132
  %94 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1108
  call void @decode_mc4_mce(%struct.mce* %94) #8, !dbg !1109
  br label %sw.epilog, !dbg !1110

sw.bb139:                                         ; preds = %if.end132
  %95 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1111
  call void @decode_mc5_mce(%struct.mce* %95) #8, !dbg !1112
  br label %sw.epilog, !dbg !1113

sw.bb140:                                         ; preds = %if.end132
  %96 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1114
  call void @decode_mc6_mce(%struct.mce* %96) #8, !dbg !1115
  br label %sw.epilog, !dbg !1116

sw.default:                                       ; preds = %if.end132
  br label %sw.epilog, !dbg !1117

sw.epilog:                                        ; preds = %sw.default, %sw.bb140, %sw.bb139, %sw.bb138, %sw.bb137, %sw.bb136, %sw.bb135, %sw.bb
  br label %err_code, !dbg !1118

err_code:                                         ; preds = %sw.epilog, %if.then131, %if.end122
  call void @llvm.dbg.label(metadata !1119), !dbg !1120
  %97 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1121
  %status141 = getelementptr inbounds %struct.mce, %struct.mce* %97, i32 0, i32 0, !dbg !1122
  %98 = load i64, i64* %status141, align 8, !dbg !1122
  %and142 = and i64 %98, 65535, !dbg !1123
  %conv143 = trunc i64 %and142 to i16, !dbg !1121
  call void @amd_decode_err_code(i16 zeroext %conv143) #8, !dbg !1124
  %99 = load %struct.mce*, %struct.mce** %m, align 8, !dbg !1125
  %kflags144 = getelementptr inbounds %struct.mce, %struct.mce* %99, i32 0, i32 24, !dbg !1126
  %100 = load i64, i64* %kflags144, align 8, !dbg !1127
  %or = or i64 %100, 16, !dbg !1127
  store i64 %or, i64* %kflags144, align 8, !dbg !1127
  store i32 1, i32* %retval, align 4, !dbg !1128
  br label %return, !dbg !1128

return:                                           ; preds = %err_code, %if.then
  %101 = load i32, i32* %retval, align 4, !dbg !1129
  ret i32 %101, !dbg !1129
}

; Function Attrs: noredzone
declare dso_local i32 @x86_family(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @decode_error_status(%struct.mce* %m) #0 !dbg !1130 {
entry:
  %retval = alloca i8*, align 8
  %m.addr = alloca %struct.mce*, align 8
  store %struct.mce* %m, %struct.mce** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mce** %m.addr, metadata !1133, metadata !DIExpression()), !dbg !1134
  %0 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1135
  %status = getelementptr inbounds %struct.mce, %struct.mce* %0, i32 0, i32 0, !dbg !1137
  %1 = load i64, i64* %status, align 8, !dbg !1137
  %and = and i64 %1, 2305843009213693952, !dbg !1138
  %tobool = icmp ne i64 %and, 0, !dbg !1138
  br i1 %tobool, label %if.then, label %if.end9, !dbg !1139

if.then:                                          ; preds = %entry
  %2 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1140
  %status1 = getelementptr inbounds %struct.mce, %struct.mce* %2, i32 0, i32 0, !dbg !1143
  %3 = load i64, i64* %status1, align 8, !dbg !1143
  %and2 = and i64 %3, 144115188075855872, !dbg !1144
  %tobool3 = icmp ne i64 %and2, 0, !dbg !1144
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !1145

if.then4:                                         ; preds = %if.then
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.129, i64 0, i64 0), i8** %retval, align 8, !dbg !1146
  br label %return, !dbg !1146

if.end:                                           ; preds = %if.then
  %4 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1147
  %mcgstatus = getelementptr inbounds %struct.mce, %struct.mce* %4, i32 0, i32 3, !dbg !1149
  %5 = load i64, i64* %mcgstatus, align 8, !dbg !1149
  %and5 = and i64 %5, 1, !dbg !1150
  %tobool6 = icmp ne i64 %and5, 0, !dbg !1150
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1151

if.then7:                                         ; preds = %if.end
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.130, i64 0, i64 0), i8** %retval, align 8, !dbg !1152
  br label %return, !dbg !1152

if.end8:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.131, i64 0, i64 0), i8** %retval, align 8, !dbg !1153
  br label %return, !dbg !1153

if.end9:                                          ; preds = %entry
  %6 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1154
  %status10 = getelementptr inbounds %struct.mce, %struct.mce* %6, i32 0, i32 0, !dbg !1156
  %7 = load i64, i64* %status10, align 8, !dbg !1156
  %and11 = and i64 %7, 17592186044416, !dbg !1157
  %tobool12 = icmp ne i64 %and11, 0, !dbg !1157
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !1158

if.then13:                                        ; preds = %if.end9
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.132, i64 0, i64 0), i8** %retval, align 8, !dbg !1159
  br label %return, !dbg !1159

if.end14:                                         ; preds = %if.end9
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.133, i64 0, i64 0), i8** %retval, align 8, !dbg !1160
  br label %return, !dbg !1160

return:                                           ; preds = %if.end14, %if.then13, %if.end8, %if.then7, %if.then4
  %8 = load i8*, i8** %retval, align 8, !dbg !1161
  ret i8* %8, !dbg !1161
}

; Function Attrs: noredzone
declare dso_local i32 @x86_model(i32) #4

; Function Attrs: noredzone
declare dso_local i32 @x86_stepping(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr_safe(i32 %msr, i32* %err) #0 !dbg !1162 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca i32*, align 8
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !1167, metadata !DIExpression()), !dbg !1168
  store i32* %err, i32** %err.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %err.addr, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !1171, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !1174, metadata !DIExpression()), !dbg !1173
  %0 = load i64, i64* %__edi, align 8, !dbg !1173
  store i64 %0, i64* %__edi, align 8, !dbg !1173
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !1175, metadata !DIExpression()), !dbg !1173
  %1 = load i64, i64* %__esi, align 8, !dbg !1173
  store i64 %1, i64* %__esi, align 8, !dbg !1173
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !1176, metadata !DIExpression()), !dbg !1173
  %2 = load i64, i64* %__edx, align 8, !dbg !1173
  store i64 %2, i64* %__edx, align 8, !dbg !1173
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !1177, metadata !DIExpression()), !dbg !1173
  %3 = load i64, i64* %__ecx, align 8, !dbg !1173
  store i64 %3, i64* %__ecx, align 8, !dbg !1173
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !1178, metadata !DIExpression()), !dbg !1173
  %4 = load i64, i64* %__eax, align 8, !dbg !1173
  store i64 %4, i64* %__eax, align 8, !dbg !1173
  %5 = load i64 (i32, i32*)*, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), align 8, !dbg !1173
  %6 = call i64 @llvm.read_register.i64(metadata !274), !dbg !1179
  %7 = load i32, i32* %msr.addr, align 4, !dbg !1179
  %conv = zext i32 %7 to i64, !dbg !1179
  %8 = load i32*, i32** %err.addr, align 8, !dbg !1179
  %9 = ptrtoint i32* %8 to i64, !dbg !1179
  %10 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},{si},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 28, i64 (i32, i32*)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 25), i32 511, i64 %conv, i64 %9, i64 %6) #7, !dbg !1179, !srcloc !1182
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 0, !dbg !1179
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 1, !dbg !1179
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 2, !dbg !1179
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 3, !dbg !1179
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 4, !dbg !1179
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %10, 5, !dbg !1179
  store i64 %asmresult, i64* %__edi, align 8, !dbg !1179
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !1179
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !1179
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !1179
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !1179
  call void @llvm.write_register.i64(metadata !274, i64 %asmresult5), !dbg !1179
  %11 = load i64, i64* %__eax, align 8, !dbg !1179
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !1183, metadata !DIExpression()), !dbg !1185
  store i64 -1, i64* %__mask, align 8, !dbg !1185
  %12 = load i64, i64* %__mask, align 8, !dbg !1185
  store i64 %12, i64* %tmp, align 8, !dbg !1185
  %13 = load i64, i64* %tmp, align 8, !dbg !1185
  %and = and i64 %11, %13, !dbg !1179
  store i64 %and, i64* %__ret, align 8, !dbg !1179
  %14 = load i64, i64* %__ret, align 8, !dbg !1173
  store i64 %14, i64* %tmp6, align 8, !dbg !1186
  %15 = load i64, i64* %tmp6, align 8, !dbg !1173
  ret i64 %15, !dbg !1187
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @decode_smca_error(%struct.mce* %m) #0 !dbg !1188 {
entry:
  %m.addr = alloca %struct.mce*, align 8
  %hwid = alloca %struct.smca_hwid*, align 8
  %bank_type = alloca i32, align 4
  %ip_name = alloca i8*, align 8
  %xec = alloca i8, align 1
  store %struct.mce* %m, %struct.mce** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mce** %m.addr, metadata !1191, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.declare(metadata %struct.smca_hwid** %hwid, metadata !1193, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.declare(metadata i32* %bank_type, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata i8** %ip_name, metadata !1203, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.declare(metadata i8* %xec, metadata !1205, metadata !DIExpression()), !dbg !1206
  %0 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1207
  %status = getelementptr inbounds %struct.mce, %struct.mce* %0, i32 0, i32 0, !dbg !1207
  %1 = load i64, i64* %status, align 8, !dbg !1207
  %shr = lshr i64 %1, 16, !dbg !1207
  %2 = load i8, i8* @xec_mask, align 1, !dbg !1207
  %conv = zext i8 %2 to i64, !dbg !1207
  %and = and i64 %shr, %conv, !dbg !1207
  %conv1 = trunc i64 %and to i8, !dbg !1207
  store i8 %conv1, i8* %xec, align 1, !dbg !1206
  %3 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1208
  %bank = getelementptr inbounds %struct.mce, %struct.mce* %3, i32 0, i32 13, !dbg !1210
  %4 = load i8, i8* %bank, align 1, !dbg !1210
  %conv2 = zext i8 %4 to i64, !dbg !1208
  %cmp = icmp uge i64 %conv2, 64, !dbg !1211
  br i1 %cmp, label %if.then, label %if.end, !dbg !1212

if.then:                                          ; preds = %entry
  br label %if.end38, !dbg !1213

if.end:                                           ; preds = %entry
  %5 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1214
  %bank4 = getelementptr inbounds %struct.mce, %struct.mce* %5, i32 0, i32 13, !dbg !1215
  %6 = load i8, i8* %bank4, align 1, !dbg !1215
  %idxprom = zext i8 %6 to i64, !dbg !1216
  %arrayidx = getelementptr [64 x %struct.smca_bank], [64 x %struct.smca_bank]* @smca_banks, i64 0, i64 %idxprom, !dbg !1216
  %hwid5 = getelementptr inbounds %struct.smca_bank, %struct.smca_bank* %arrayidx, i32 0, i32 0, !dbg !1217
  %7 = load %struct.smca_hwid*, %struct.smca_hwid** %hwid5, align 16, !dbg !1217
  store %struct.smca_hwid* %7, %struct.smca_hwid** %hwid, align 8, !dbg !1218
  %8 = load %struct.smca_hwid*, %struct.smca_hwid** %hwid, align 8, !dbg !1219
  %tobool = icmp ne %struct.smca_hwid* %8, null, !dbg !1219
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !1221

if.then6:                                         ; preds = %if.end
  br label %if.end38, !dbg !1222

if.end7:                                          ; preds = %if.end
  %9 = load %struct.smca_hwid*, %struct.smca_hwid** %hwid, align 8, !dbg !1223
  %bank_type8 = getelementptr inbounds %struct.smca_hwid, %struct.smca_hwid* %9, i32 0, i32 0, !dbg !1224
  %10 = load i32, i32* %bank_type8, align 4, !dbg !1224
  store i32 %10, i32* %bank_type, align 4, !dbg !1225
  %11 = load i32, i32* %bank_type, align 4, !dbg !1226
  %cmp9 = icmp eq i32 %11, 5, !dbg !1228
  br i1 %cmp9, label %if.then11, label %if.end14, !dbg !1229

if.then11:                                        ; preds = %if.end7
  %12 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1230
  %bank12 = getelementptr inbounds %struct.mce, %struct.mce* %12, i32 0, i32 13, !dbg !1230
  %13 = load i8, i8* %bank12, align 1, !dbg !1230
  %conv13 = zext i8 %13 to i32, !dbg !1230
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.134, i64 0, i64 0), i32 %conv13) #9, !dbg !1230
  br label %if.end38, !dbg !1232

if.end14:                                         ; preds = %if.end7
  %14 = load i32, i32* %bank_type, align 4, !dbg !1233
  %call15 = call i8* @smca_get_long_name(i32 %14) #8, !dbg !1234
  store i8* %call15, i8** %ip_name, align 8, !dbg !1235
  %15 = load i8*, i8** %ip_name, align 8, !dbg !1236
  %16 = load i8, i8* %xec, align 1, !dbg !1236
  %conv16 = zext i8 %16 to i32, !dbg !1236
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.135, i64 0, i64 0), i8* %15, i32 %conv16) #9, !dbg !1236
  %17 = load i8, i8* %xec, align 1, !dbg !1237
  %conv18 = zext i8 %17 to i32, !dbg !1237
  %18 = load i32, i32* %bank_type, align 4, !dbg !1239
  %idxprom19 = zext i32 %18 to i64, !dbg !1240
  %arrayidx20 = getelementptr [21 x %struct.smca_mce_desc], [21 x %struct.smca_mce_desc]* @smca_mce_descs, i64 0, i64 %idxprom19, !dbg !1240
  %num_descs = getelementptr inbounds %struct.smca_mce_desc, %struct.smca_mce_desc* %arrayidx20, i32 0, i32 1, !dbg !1241
  %19 = load i32, i32* %num_descs, align 8, !dbg !1241
  %cmp21 = icmp ult i32 %conv18, %19, !dbg !1242
  br i1 %cmp21, label %if.then23, label %if.end29, !dbg !1243

if.then23:                                        ; preds = %if.end14
  %20 = load i32, i32* %bank_type, align 4, !dbg !1244
  %idxprom24 = zext i32 %20 to i64, !dbg !1244
  %arrayidx25 = getelementptr [21 x %struct.smca_mce_desc], [21 x %struct.smca_mce_desc]* @smca_mce_descs, i64 0, i64 %idxprom24, !dbg !1244
  %descs = getelementptr inbounds %struct.smca_mce_desc, %struct.smca_mce_desc* %arrayidx25, i32 0, i32 0, !dbg !1244
  %21 = load i8**, i8*** %descs, align 16, !dbg !1244
  %22 = load i8, i8* %xec, align 1, !dbg !1244
  %idxprom26 = zext i8 %22 to i64, !dbg !1244
  %arrayidx27 = getelementptr i8*, i8** %21, i64 %idxprom26, !dbg !1244
  %23 = load i8*, i8** %arrayidx27, align 8, !dbg !1244
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.136, i64 0, i64 0), i8* %23) #9, !dbg !1244
  br label %if.end29, !dbg !1244

if.end29:                                         ; preds = %if.then23, %if.end14
  %24 = load i32, i32* %bank_type, align 4, !dbg !1245
  %cmp30 = icmp eq i32 %24, 12, !dbg !1247
  br i1 %cmp30, label %land.lhs.true, label %if.end38, !dbg !1248

land.lhs.true:                                    ; preds = %if.end29
  %25 = load i8, i8* %xec, align 1, !dbg !1249
  %conv32 = zext i8 %25 to i32, !dbg !1249
  %cmp33 = icmp eq i32 %conv32, 0, !dbg !1250
  br i1 %cmp33, label %land.lhs.true35, label %if.end38, !dbg !1251

land.lhs.true35:                                  ; preds = %land.lhs.true
  %26 = load void (i32, %struct.mce*)*, void (i32, %struct.mce*)** @decode_dram_ecc, align 8, !dbg !1252
  %tobool36 = icmp ne void (i32, %struct.mce*)* %26, null, !dbg !1252
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !1253

if.then37:                                        ; preds = %land.lhs.true35
  %27 = load void (i32, %struct.mce*)*, void (i32, %struct.mce*)** @decode_dram_ecc, align 8, !dbg !1254
  %28 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1255
  %extcpu = getelementptr inbounds %struct.mce, %struct.mce* %28, i32 0, i32 16, !dbg !1255
  %29 = load i32, i32* %extcpu, align 4, !dbg !1255
  %30 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1256
  call void %27(i32 0, %struct.mce* %30) #8, !dbg !1254
  br label %if.end38, !dbg !1254

if.end38:                                         ; preds = %if.then, %if.then6, %if.then11, %if.then37, %land.lhs.true35, %land.lhs.true, %if.end29
  ret void, !dbg !1257
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @decode_mc0_mce(%struct.mce* %m) #0 !dbg !1258 {
entry:
  %m.addr = alloca %struct.mce*, align 8
  %ec = alloca i16, align 2
  %xec = alloca i8, align 1
  store %struct.mce* %m, %struct.mce** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mce** %m.addr, metadata !1259, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.declare(metadata i16* %ec, metadata !1261, metadata !DIExpression()), !dbg !1262
  %0 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1263
  %status = getelementptr inbounds %struct.mce, %struct.mce* %0, i32 0, i32 0, !dbg !1263
  %1 = load i64, i64* %status, align 8, !dbg !1263
  %and = and i64 %1, 65535, !dbg !1263
  %conv = trunc i64 %and to i16, !dbg !1263
  store i16 %conv, i16* %ec, align 2, !dbg !1262
  call void @llvm.dbg.declare(metadata i8* %xec, metadata !1264, metadata !DIExpression()), !dbg !1265
  %2 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1266
  %status1 = getelementptr inbounds %struct.mce, %struct.mce* %2, i32 0, i32 0, !dbg !1266
  %3 = load i64, i64* %status1, align 8, !dbg !1266
  %shr = lshr i64 %3, 16, !dbg !1266
  %4 = load i8, i8* @xec_mask, align 1, !dbg !1266
  %conv2 = zext i8 %4 to i64, !dbg !1266
  %and3 = and i64 %shr, %conv2, !dbg !1266
  %conv4 = trunc i64 %and3 to i8, !dbg !1266
  store i8 %conv4, i8* %xec, align 1, !dbg !1265
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.310, i64 0, i64 0)) #9, !dbg !1267
  %5 = load i16, i16* %ec, align 2, !dbg !1268
  %conv5 = zext i16 %5 to i32, !dbg !1268
  %and6 = and i32 %conv5, 65520, !dbg !1268
  %cmp = icmp eq i32 %and6, 16, !dbg !1268
  br i1 %cmp, label %if.then, label %if.else, !dbg !1270

if.then:                                          ; preds = %entry
  %6 = load i16, i16* %ec, align 2, !dbg !1271
  %conv8 = zext i16 %6 to i32, !dbg !1271
  %shr9 = ashr i32 %conv8, 2, !dbg !1271
  %and10 = and i32 %shr9, 3, !dbg !1271
  %cmp11 = icmp eq i32 %and10, 1, !dbg !1274
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !1275

if.then13:                                        ; preds = %if.then
  %7 = load i16, i16* %ec, align 2, !dbg !1276
  %conv14 = zext i16 %7 to i32, !dbg !1276
  %and15 = and i32 %conv14, 3, !dbg !1276
  %idxprom = sext i32 %and15 to i64, !dbg !1276
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @ll_msgs, i64 0, i64 %idxprom, !dbg !1276
  %8 = load i8*, i8** %arrayidx, align 8, !dbg !1276
  %9 = load i8, i8* %xec, align 1, !dbg !1276
  %conv16 = zext i8 %9 to i32, !dbg !1276
  %cmp17 = icmp eq i32 %conv16, 2, !dbg !1276
  br i1 %cmp17, label %cond.true, label %cond.false, !dbg !1276

cond.true:                                        ; preds = %if.then13
  br label %cond.end, !dbg !1276

cond.false:                                       ; preds = %if.then13
  %10 = load i8, i8* %xec, align 1, !dbg !1276
  %conv19 = zext i8 %10 to i32, !dbg !1276
  %tobool = icmp ne i32 %conv19, 0, !dbg !1276
  %11 = zext i1 %tobool to i64, !dbg !1276
  %cond = select i1 %tobool, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.313, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.314, i64 0, i64 0), !dbg !1276
  br label %cond.end, !dbg !1276

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond20 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.312, i64 0, i64 0), %cond.true ], [ %cond, %cond.false ], !dbg !1276
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.311, i64 0, i64 0), i8* %8, i8* %cond20) #9, !dbg !1276
  br label %if.end27, !dbg !1278

if.end:                                           ; preds = %if.then
  br label %if.end27, !dbg !1279

if.else:                                          ; preds = %entry
  %12 = load i1 (i16, i8)*, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 0), align 8, !dbg !1280
  %13 = load i16, i16* %ec, align 2, !dbg !1282
  %14 = load i8, i8* %xec, align 1, !dbg !1283
  %call22 = call zeroext i1 %12(i16 zeroext %13, i8 zeroext %14) #8, !dbg !1284
  br i1 %call22, label %if.then23, label %if.else24, !dbg !1285

if.then23:                                        ; preds = %if.else
  br label %if.end26, !dbg !1285

if.else24:                                        ; preds = %if.else
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.315, i64 0, i64 0)) #9, !dbg !1286
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then23
  br label %if.end27

if.end27:                                         ; preds = %cond.end, %if.end26, %if.end
  ret void, !dbg !1287
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @decode_mc1_mce(%struct.mce* %m) #0 !dbg !1288 {
entry:
  %m.addr = alloca %struct.mce*, align 8
  %ec = alloca i16, align 2
  %xec = alloca i8, align 1
  %k8 = alloca i8, align 1
  store %struct.mce* %m, %struct.mce** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mce** %m.addr, metadata !1289, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.declare(metadata i16* %ec, metadata !1291, metadata !DIExpression()), !dbg !1292
  %0 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1293
  %status = getelementptr inbounds %struct.mce, %struct.mce* %0, i32 0, i32 0, !dbg !1293
  %1 = load i64, i64* %status, align 8, !dbg !1293
  %and = and i64 %1, 65535, !dbg !1293
  %conv = trunc i64 %and to i16, !dbg !1293
  store i16 %conv, i16* %ec, align 2, !dbg !1292
  call void @llvm.dbg.declare(metadata i8* %xec, metadata !1294, metadata !DIExpression()), !dbg !1295
  %2 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1296
  %status1 = getelementptr inbounds %struct.mce, %struct.mce* %2, i32 0, i32 0, !dbg !1296
  %3 = load i64, i64* %status1, align 8, !dbg !1296
  %shr = lshr i64 %3, 16, !dbg !1296
  %4 = load i8, i8* @xec_mask, align 1, !dbg !1296
  %conv2 = zext i8 %4 to i64, !dbg !1296
  %and3 = and i64 %shr, %conv2, !dbg !1296
  %conv4 = trunc i64 %and3 to i8, !dbg !1296
  store i8 %conv4, i8* %xec, align 1, !dbg !1295
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.319, i64 0, i64 0)) #9, !dbg !1297
  %5 = load i16, i16* %ec, align 2, !dbg !1298
  %conv5 = zext i16 %5 to i32, !dbg !1298
  %and6 = and i32 %conv5, 65520, !dbg !1298
  %cmp = icmp eq i32 %and6, 16, !dbg !1298
  br i1 %cmp, label %if.then, label %if.else, !dbg !1300

if.then:                                          ; preds = %entry
  %6 = load i16, i16* %ec, align 2, !dbg !1301
  %conv8 = zext i16 %6 to i32, !dbg !1301
  %and9 = and i32 %conv8, 3, !dbg !1301
  %idxprom = sext i32 %and9 to i64, !dbg !1301
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @ll_msgs, i64 0, i64 %idxprom, !dbg !1301
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !1301
  %8 = load i8, i8* %xec, align 1, !dbg !1301
  %conv10 = zext i8 %8 to i32, !dbg !1301
  %tobool = icmp ne i32 %conv10, 0, !dbg !1301
  %9 = zext i1 %tobool to i64, !dbg !1301
  %cond = select i1 %tobool, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.313, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.320, i64 0, i64 0), !dbg !1301
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.311, i64 0, i64 0), i8* %7, i8* %cond) #9, !dbg !1301
  br label %if.end46, !dbg !1301

if.else:                                          ; preds = %entry
  %10 = load i16, i16* %ec, align 2, !dbg !1302
  %conv12 = zext i16 %10 to i32, !dbg !1302
  %and13 = and i32 %conv12, 63488, !dbg !1302
  %cmp14 = icmp eq i32 %and13, 2048, !dbg !1302
  br i1 %cmp14, label %if.then16, label %if.else27, !dbg !1304

if.then16:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i8* %k8, metadata !1305, metadata !DIExpression()), !dbg !1307
  %11 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !1308
  %conv17 = zext i8 %11 to i32, !dbg !1309
  %cmp18 = icmp eq i32 %conv17, 15, !dbg !1310
  br i1 %cmp18, label %land.rhs, label %land.end, !dbg !1311

land.rhs:                                         ; preds = %if.then16
  %12 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1312
  %status20 = getelementptr inbounds %struct.mce, %struct.mce* %12, i32 0, i32 0, !dbg !1313
  %13 = load i64, i64* %status20, align 8, !dbg !1313
  %and21 = and i64 %13, 288230376151711744, !dbg !1314
  %tobool22 = icmp ne i64 %and21, 0, !dbg !1311
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then16
  %14 = phi i1 [ false, %if.then16 ], [ %tobool22, %land.rhs ], !dbg !1315
  %frombool = zext i1 %14 to i8, !dbg !1307
  store i8 %frombool, i8* %k8, align 1, !dbg !1307
  %15 = load i8, i8* %k8, align 1, !dbg !1316
  %tobool23 = trunc i8 %15 to i1, !dbg !1316
  %16 = zext i1 %tobool23 to i64, !dbg !1316
  %cond25 = select i1 %tobool23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.322, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.323, i64 0, i64 0), !dbg !1316
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.321, i64 0, i64 0), i8* %cond25) #9, !dbg !1316
  br label %if.end45, !dbg !1317

if.else27:                                        ; preds = %if.else
  %17 = load i16, i16* %ec, align 2, !dbg !1318
  %conv28 = zext i16 %17 to i32, !dbg !1318
  %and29 = and i32 %conv28, 62719, !dbg !1318
  %cmp30 = icmp eq i32 %and29, 1024, !dbg !1318
  br i1 %cmp30, label %if.then32, label %if.else39, !dbg !1320

if.then32:                                        ; preds = %if.else27
  %18 = load i8, i8* %xec, align 1, !dbg !1321
  %conv33 = zext i8 %18 to i32, !dbg !1321
  %cmp34 = icmp sle i32 %conv33, 63, !dbg !1324
  br i1 %cmp34, label %if.then36, label %if.else38, !dbg !1325

if.then36:                                        ; preds = %if.then32
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0)) #9, !dbg !1326
  br label %if.end, !dbg !1326

if.else38:                                        ; preds = %if.then32
  br label %wrong_mc1_mce, !dbg !1327

if.end:                                           ; preds = %if.then36
  br label %if.end44, !dbg !1328

if.else39:                                        ; preds = %if.else27
  %19 = load i1 (i16, i8)*, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 1), align 8, !dbg !1329
  %20 = load i16, i16* %ec, align 2, !dbg !1331
  %21 = load i8, i8* %xec, align 1, !dbg !1332
  %call40 = call zeroext i1 %19(i16 zeroext %20, i8 zeroext %21) #8, !dbg !1333
  br i1 %call40, label %if.then41, label %if.else42, !dbg !1334

if.then41:                                        ; preds = %if.else39
  br label %if.end43, !dbg !1334

if.else42:                                        ; preds = %if.else39
  br label %wrong_mc1_mce, !dbg !1335

if.end43:                                         ; preds = %if.then41
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %land.end
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then
  br label %return, !dbg !1336

wrong_mc1_mce:                                    ; preds = %if.else42, %if.else38
  call void @llvm.dbg.label(metadata !1337), !dbg !1338
  %call47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.324, i64 0, i64 0)) #9, !dbg !1339
  br label %return, !dbg !1340

return:                                           ; preds = %wrong_mc1_mce, %if.end46
  ret void, !dbg !1340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @decode_mc2_mce(%struct.mce* %m) #0 !dbg !1341 {
entry:
  %m.addr = alloca %struct.mce*, align 8
  %ec = alloca i16, align 2
  %xec = alloca i8, align 1
  store %struct.mce* %m, %struct.mce** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mce** %m.addr, metadata !1342, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.declare(metadata i16* %ec, metadata !1344, metadata !DIExpression()), !dbg !1345
  %0 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1346
  %status = getelementptr inbounds %struct.mce, %struct.mce* %0, i32 0, i32 0, !dbg !1346
  %1 = load i64, i64* %status, align 8, !dbg !1346
  %and = and i64 %1, 65535, !dbg !1346
  %conv = trunc i64 %and to i16, !dbg !1346
  store i16 %conv, i16* %ec, align 2, !dbg !1345
  call void @llvm.dbg.declare(metadata i8* %xec, metadata !1347, metadata !DIExpression()), !dbg !1348
  %2 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1349
  %status1 = getelementptr inbounds %struct.mce, %struct.mce* %2, i32 0, i32 0, !dbg !1349
  %3 = load i64, i64* %status1, align 8, !dbg !1349
  %shr = lshr i64 %3, 16, !dbg !1349
  %4 = load i8, i8* @xec_mask, align 1, !dbg !1349
  %conv2 = zext i8 %4 to i64, !dbg !1349
  %and3 = and i64 %shr, %conv2, !dbg !1349
  %conv4 = trunc i64 %and3 to i8, !dbg !1349
  store i8 %conv4, i8* %xec, align 1, !dbg !1348
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.325, i64 0, i64 0)) #9, !dbg !1350
  %5 = load i1 (i16, i8)*, i1 (i16, i8)** getelementptr inbounds (%struct.amd_decoder_ops, %struct.amd_decoder_ops* @fam_ops, i32 0, i32 2), align 8, !dbg !1351
  %6 = load i16, i16* %ec, align 2, !dbg !1353
  %7 = load i8, i8* %xec, align 1, !dbg !1354
  %call5 = call zeroext i1 %5(i16 zeroext %6, i8 zeroext %7) #8, !dbg !1355
  br i1 %call5, label %if.end, label %if.then, !dbg !1356

if.then:                                          ; preds = %entry
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.326, i64 0, i64 0)) #9, !dbg !1357
  br label %if.end, !dbg !1357

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1358
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @decode_mc3_mce(%struct.mce* %m) #0 !dbg !1359 {
entry:
  %m.addr = alloca %struct.mce*, align 8
  %ec = alloca i16, align 2
  %xec = alloca i8, align 1
  %r4 = alloca i8, align 1
  store %struct.mce* %m, %struct.mce** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mce** %m.addr, metadata !1360, metadata !DIExpression()), !dbg !1361
  call void @llvm.dbg.declare(metadata i16* %ec, metadata !1362, metadata !DIExpression()), !dbg !1363
  %0 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1364
  %status = getelementptr inbounds %struct.mce, %struct.mce* %0, i32 0, i32 0, !dbg !1364
  %1 = load i64, i64* %status, align 8, !dbg !1364
  %and = and i64 %1, 65535, !dbg !1364
  %conv = trunc i64 %and to i16, !dbg !1364
  store i16 %conv, i16* %ec, align 2, !dbg !1363
  call void @llvm.dbg.declare(metadata i8* %xec, metadata !1365, metadata !DIExpression()), !dbg !1366
  %2 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1367
  %status1 = getelementptr inbounds %struct.mce, %struct.mce* %2, i32 0, i32 0, !dbg !1367
  %3 = load i64, i64* %status1, align 8, !dbg !1367
  %shr = lshr i64 %3, 16, !dbg !1367
  %4 = load i8, i8* @xec_mask, align 1, !dbg !1367
  %conv2 = zext i8 %4 to i64, !dbg !1367
  %and3 = and i64 %shr, %conv2, !dbg !1367
  %conv4 = trunc i64 %and3 to i8, !dbg !1367
  store i8 %conv4, i8* %xec, align 1, !dbg !1366
  %5 = load i8, i8* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 0), align 8, !dbg !1368
  %conv5 = zext i8 %5 to i32, !dbg !1370
  %cmp = icmp sge i32 %conv5, 20, !dbg !1371
  br i1 %cmp, label %if.then, label %if.end, !dbg !1372

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.327, i64 0, i64 0)) #9, !dbg !1373
  br label %return, !dbg !1375

if.end:                                           ; preds = %entry
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.328, i64 0, i64 0)) #9, !dbg !1376
  %6 = load i8, i8* %xec, align 1, !dbg !1377
  %conv8 = zext i8 %6 to i32, !dbg !1377
  %cmp9 = icmp eq i32 %conv8, 0, !dbg !1379
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !1380

if.then11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8* %r4, metadata !1381, metadata !DIExpression()), !dbg !1383
  %7 = load i16, i16* %ec, align 2, !dbg !1384
  %conv12 = zext i16 %7 to i32, !dbg !1384
  %shr13 = ashr i32 %conv12, 4, !dbg !1384
  %and14 = and i32 %shr13, 15, !dbg !1384
  %conv15 = trunc i32 %and14 to i8, !dbg !1384
  store i8 %conv15, i8* %r4, align 1, !dbg !1383
  %8 = load i16, i16* %ec, align 2, !dbg !1385
  %conv16 = zext i16 %8 to i32, !dbg !1385
  %and17 = and i32 %conv16, 63488, !dbg !1385
  %cmp18 = icmp eq i32 %and17, 2048, !dbg !1385
  br i1 %cmp18, label %lor.lhs.false, label %if.then26, !dbg !1387

lor.lhs.false:                                    ; preds = %if.then11
  %9 = load i8, i8* %r4, align 1, !dbg !1388
  %conv20 = zext i8 %9 to i32, !dbg !1388
  %cmp21 = icmp ne i32 %conv20, 3, !dbg !1389
  br i1 %cmp21, label %land.lhs.true, label %if.end27, !dbg !1390

land.lhs.true:                                    ; preds = %lor.lhs.false
  %10 = load i8, i8* %r4, align 1, !dbg !1391
  %conv23 = zext i8 %10 to i32, !dbg !1391
  %cmp24 = icmp ne i32 %conv23, 4, !dbg !1392
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !1393

if.then26:                                        ; preds = %land.lhs.true, %if.then11
  br label %wrong_mc3_mce, !dbg !1394

if.end27:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %11 = load i16, i16* %ec, align 2, !dbg !1395
  %conv28 = zext i16 %11 to i32, !dbg !1395
  %shr29 = ashr i32 %conv28, 4, !dbg !1395
  %and30 = and i32 %shr29, 15, !dbg !1395
  %cmp31 = icmp slt i32 %and30, 9, !dbg !1395
  br i1 %cmp31, label %cond.true, label %cond.false, !dbg !1395

cond.true:                                        ; preds = %if.end27
  %12 = load i16, i16* %ec, align 2, !dbg !1395
  %conv33 = zext i16 %12 to i32, !dbg !1395
  %shr34 = ashr i32 %conv33, 4, !dbg !1395
  %and35 = and i32 %shr34, 15, !dbg !1395
  %idxprom = sext i32 %and35 to i64, !dbg !1395
  %arrayidx = getelementptr [9 x i8*], [9 x i8*]* @rrrr_msgs, i64 0, i64 %idxprom, !dbg !1395
  %13 = load i8*, i8** %arrayidx, align 8, !dbg !1395
  br label %cond.end, !dbg !1395

cond.false:                                       ; preds = %if.end27
  br label %cond.end, !dbg !1395

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %13, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), %cond.false ], !dbg !1395
  %call36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.329, i64 0, i64 0), i8* %cond) #9, !dbg !1395
  br label %if.end37, !dbg !1396

if.else:                                          ; preds = %if.end
  br label %wrong_mc3_mce, !dbg !1397

if.end37:                                         ; preds = %cond.end
  br label %return, !dbg !1398

wrong_mc3_mce:                                    ; preds = %if.else, %if.then26
  call void @llvm.dbg.label(metadata !1399), !dbg !1400
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.330, i64 0, i64 0)) #9, !dbg !1401
  br label %return, !dbg !1402

return:                                           ; preds = %wrong_mc3_mce, %if.end37, %if.then
  ret void, !dbg !1402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @decode_mc4_mce(%struct.mce* %m) #0 !dbg !1403 {
entry:
  %m.addr = alloca %struct.mce*, align 8
  %fam = alloca i32, align 4
  %node_id = alloca i32, align 4
  %ec = alloca i16, align 2
  %xec = alloca i8, align 1
  %offset = alloca i8, align 1
  store %struct.mce* %m, %struct.mce** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mce** %m.addr, metadata !1404, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.declare(metadata i32* %fam, metadata !1406, metadata !DIExpression()), !dbg !1407
  %0 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1408
  %cpuid = getelementptr inbounds %struct.mce, %struct.mce* %0, i32 0, i32 11, !dbg !1409
  %1 = load i32, i32* %cpuid, align 4, !dbg !1409
  %call = call i32 @x86_family(i32 %1) #8, !dbg !1410
  store i32 %call, i32* %fam, align 4, !dbg !1407
  call void @llvm.dbg.declare(metadata i32* %node_id, metadata !1411, metadata !DIExpression()), !dbg !1412
  %2 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1413
  %extcpu = getelementptr inbounds %struct.mce, %struct.mce* %2, i32 0, i32 16, !dbg !1414
  %3 = load i32, i32* %extcpu, align 4, !dbg !1414
  %call1 = call zeroext i16 @amd_get_nb_id(i32 %3) #8, !dbg !1415
  %conv = zext i16 %call1 to i32, !dbg !1415
  store i32 %conv, i32* %node_id, align 4, !dbg !1412
  call void @llvm.dbg.declare(metadata i16* %ec, metadata !1416, metadata !DIExpression()), !dbg !1417
  %4 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1418
  %status = getelementptr inbounds %struct.mce, %struct.mce* %4, i32 0, i32 0, !dbg !1418
  %5 = load i64, i64* %status, align 8, !dbg !1418
  %and = and i64 %5, 65535, !dbg !1418
  %conv2 = trunc i64 %and to i16, !dbg !1418
  store i16 %conv2, i16* %ec, align 2, !dbg !1417
  call void @llvm.dbg.declare(metadata i8* %xec, metadata !1419, metadata !DIExpression()), !dbg !1420
  %6 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1421
  %status3 = getelementptr inbounds %struct.mce, %struct.mce* %6, i32 0, i32 0, !dbg !1421
  %7 = load i64, i64* %status3, align 8, !dbg !1421
  %shr = lshr i64 %7, 16, !dbg !1421
  %and4 = and i64 %shr, 31, !dbg !1421
  %conv5 = trunc i64 %and4 to i8, !dbg !1421
  store i8 %conv5, i8* %xec, align 1, !dbg !1420
  call void @llvm.dbg.declare(metadata i8* %offset, metadata !1422, metadata !DIExpression()), !dbg !1423
  store i8 0, i8* %offset, align 1, !dbg !1423
  %8 = load i32, i32* %node_id, align 4, !dbg !1424
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.331, i64 0, i64 0), i32 %8) #9, !dbg !1424
  %9 = load i8, i8* %xec, align 1, !dbg !1425
  %conv7 = zext i8 %9 to i32, !dbg !1425
  switch i32 %conv7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 13, label %sw.bb
    i32 14, label %sw.bb
    i32 15, label %sw.bb20
    i32 25, label %sw.bb36
    i32 28, label %sw.bb46
    i32 29, label %sw.bb46
    i32 30, label %sw.bb46
    i32 31, label %sw.bb46
  ], !dbg !1426

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %10 = load i8, i8* %xec, align 1, !dbg !1427
  %conv8 = zext i8 %10 to i32, !dbg !1427
  %cmp = icmp eq i32 %conv8, 0, !dbg !1430
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1431

lor.lhs.false:                                    ; preds = %sw.bb
  %11 = load i8, i8* %xec, align 1, !dbg !1432
  %conv10 = zext i8 %11 to i32, !dbg !1432
  %cmp11 = icmp eq i32 %conv10, 8, !dbg !1433
  br i1 %cmp11, label %if.then, label %if.end19, !dbg !1434

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %12 = load i32, i32* %fam, align 4, !dbg !1435
  %cmp13 = icmp eq i32 %12, 17, !dbg !1438
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !1439

if.then15:                                        ; preds = %if.then
  br label %wrong_mc4_mce, !dbg !1440

if.end:                                           ; preds = %if.then
  %13 = load i8, i8* %xec, align 1, !dbg !1441
  %idxprom = zext i8 %13 to i64, !dbg !1441
  %arrayidx = getelementptr [19 x i8*], [19 x i8*]* @mc4_mce_desc, i64 0, i64 %idxprom, !dbg !1441
  %14 = load i8*, i8** %arrayidx, align 8, !dbg !1441
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %14) #9, !dbg !1441
  %15 = load void (i32, %struct.mce*)*, void (i32, %struct.mce*)** @decode_dram_ecc, align 8, !dbg !1442
  %tobool = icmp ne void (i32, %struct.mce*)* %15, null, !dbg !1442
  br i1 %tobool, label %if.then17, label %if.end18, !dbg !1444

if.then17:                                        ; preds = %if.end
  %16 = load void (i32, %struct.mce*)*, void (i32, %struct.mce*)** @decode_dram_ecc, align 8, !dbg !1445
  %17 = load i32, i32* %node_id, align 4, !dbg !1446
  %18 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1447
  call void %16(i32 %17, %struct.mce* %18) #8, !dbg !1445
  br label %if.end18, !dbg !1445

if.end18:                                         ; preds = %if.then17, %if.end
  br label %return, !dbg !1448

if.end19:                                         ; preds = %lor.lhs.false
  br label %sw.epilog, !dbg !1449

sw.bb20:                                          ; preds = %entry
  %19 = load i16, i16* %ec, align 2, !dbg !1450
  %conv21 = zext i16 %19 to i32, !dbg !1450
  %and22 = and i32 %conv21, 65520, !dbg !1450
  %cmp23 = icmp eq i32 %and22, 16, !dbg !1450
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !1452

if.then25:                                        ; preds = %sw.bb20
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.332, i64 0, i64 0)) #9, !dbg !1453
  br label %if.end35, !dbg !1453

if.else:                                          ; preds = %sw.bb20
  %20 = load i16, i16* %ec, align 2, !dbg !1454
  %conv27 = zext i16 %20 to i32, !dbg !1454
  %and28 = and i32 %conv27, 63488, !dbg !1454
  %cmp29 = icmp eq i32 %and28, 2048, !dbg !1454
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !1456

if.then31:                                        ; preds = %if.else
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.333, i64 0, i64 0)) #9, !dbg !1457
  br label %if.end34, !dbg !1457

if.else33:                                        ; preds = %if.else
  br label %wrong_mc4_mce, !dbg !1458

if.end34:                                         ; preds = %if.then31
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then25
  br label %return, !dbg !1459

sw.bb36:                                          ; preds = %entry
  %21 = load i32, i32* %fam, align 4, !dbg !1460
  %cmp37 = icmp eq i32 %21, 21, !dbg !1462
  br i1 %cmp37, label %if.then42, label %lor.lhs.false39, !dbg !1463

lor.lhs.false39:                                  ; preds = %sw.bb36
  %22 = load i32, i32* %fam, align 4, !dbg !1464
  %cmp40 = icmp eq i32 %22, 22, !dbg !1465
  br i1 %cmp40, label %if.then42, label %if.else44, !dbg !1466

if.then42:                                        ; preds = %lor.lhs.false39, %sw.bb36
  %call43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.334, i64 0, i64 0)) #9, !dbg !1467
  br label %if.end45, !dbg !1467

if.else44:                                        ; preds = %lor.lhs.false39
  br label %wrong_mc4_mce, !dbg !1468

if.end45:                                         ; preds = %if.then42
  br label %return, !dbg !1469

sw.bb46:                                          ; preds = %entry, %entry, %entry, %entry
  store i8 13, i8* %offset, align 1, !dbg !1470
  br label %sw.epilog, !dbg !1471

sw.default:                                       ; preds = %entry
  br label %wrong_mc4_mce, !dbg !1472

sw.epilog:                                        ; preds = %sw.bb46, %if.end19
  %23 = load i8, i8* %xec, align 1, !dbg !1473
  %conv47 = zext i8 %23 to i32, !dbg !1473
  %24 = load i8, i8* %offset, align 1, !dbg !1473
  %conv48 = zext i8 %24 to i32, !dbg !1473
  %sub = sub i32 %conv47, %conv48, !dbg !1473
  %idxprom49 = sext i32 %sub to i64, !dbg !1473
  %arrayidx50 = getelementptr [19 x i8*], [19 x i8*]* @mc4_mce_desc, i64 0, i64 %idxprom49, !dbg !1473
  %25 = load i8*, i8** %arrayidx50, align 8, !dbg !1473
  %call51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %25) #9, !dbg !1473
  br label %return, !dbg !1474

wrong_mc4_mce:                                    ; preds = %sw.default, %if.else44, %if.else33, %if.then15
  call void @llvm.dbg.label(metadata !1475), !dbg !1476
  %call52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.335, i64 0, i64 0)) #9, !dbg !1477
  br label %return, !dbg !1478

return:                                           ; preds = %wrong_mc4_mce, %sw.epilog, %if.end45, %if.end35, %if.end18
  ret void, !dbg !1478
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @decode_mc5_mce(%struct.mce* %m) #0 !dbg !1479 {
entry:
  %m.addr = alloca %struct.mce*, align 8
  %fam = alloca i32, align 4
  %ec = alloca i16, align 2
  %xec = alloca i8, align 1
  store %struct.mce* %m, %struct.mce** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mce** %m.addr, metadata !1480, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.declare(metadata i32* %fam, metadata !1482, metadata !DIExpression()), !dbg !1483
  %0 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1484
  %cpuid = getelementptr inbounds %struct.mce, %struct.mce* %0, i32 0, i32 11, !dbg !1485
  %1 = load i32, i32* %cpuid, align 4, !dbg !1485
  %call = call i32 @x86_family(i32 %1) #8, !dbg !1486
  store i32 %call, i32* %fam, align 4, !dbg !1483
  call void @llvm.dbg.declare(metadata i16* %ec, metadata !1487, metadata !DIExpression()), !dbg !1488
  %2 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1489
  %status = getelementptr inbounds %struct.mce, %struct.mce* %2, i32 0, i32 0, !dbg !1489
  %3 = load i64, i64* %status, align 8, !dbg !1489
  %and = and i64 %3, 65535, !dbg !1489
  %conv = trunc i64 %and to i16, !dbg !1489
  store i16 %conv, i16* %ec, align 2, !dbg !1488
  call void @llvm.dbg.declare(metadata i8* %xec, metadata !1490, metadata !DIExpression()), !dbg !1491
  %4 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1492
  %status1 = getelementptr inbounds %struct.mce, %struct.mce* %4, i32 0, i32 0, !dbg !1492
  %5 = load i64, i64* %status1, align 8, !dbg !1492
  %shr = lshr i64 %5, 16, !dbg !1492
  %6 = load i8, i8* @xec_mask, align 1, !dbg !1492
  %conv2 = zext i8 %6 to i64, !dbg !1492
  %and3 = and i64 %shr, %conv2, !dbg !1492
  %conv4 = trunc i64 %and3 to i8, !dbg !1492
  store i8 %conv4, i8* %xec, align 1, !dbg !1491
  %7 = load i32, i32* %fam, align 4, !dbg !1493
  %cmp = icmp eq i32 %7, 15, !dbg !1495
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1496

lor.lhs.false:                                    ; preds = %entry
  %8 = load i32, i32* %fam, align 4, !dbg !1497
  %cmp6 = icmp eq i32 %8, 17, !dbg !1498
  br i1 %cmp6, label %if.then, label %if.end, !dbg !1499

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %wrong_mc5_mce, !dbg !1500

if.end:                                           ; preds = %lor.lhs.false
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.354, i64 0, i64 0)) #9, !dbg !1501
  %9 = load i16, i16* %ec, align 2, !dbg !1502
  %conv9 = zext i16 %9 to i32, !dbg !1502
  %and10 = and i32 %conv9, 62719, !dbg !1502
  %cmp11 = icmp eq i32 %and10, 1024, !dbg !1502
  br i1 %cmp11, label %if.then13, label %if.end19, !dbg !1504

if.then13:                                        ; preds = %if.end
  %10 = load i8, i8* %xec, align 1, !dbg !1505
  %conv14 = zext i8 %10 to i32, !dbg !1505
  %cmp15 = icmp sle i32 %conv14, 31, !dbg !1508
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !1509

if.then17:                                        ; preds = %if.then13
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0)) #9, !dbg !1510
  br label %return, !dbg !1512

if.else:                                          ; preds = %if.then13
  br label %wrong_mc5_mce, !dbg !1513

if.end19:                                         ; preds = %if.end
  %11 = load i8, i8* %xec, align 1, !dbg !1514
  %conv20 = zext i8 %11 to i32, !dbg !1514
  %cmp21 = icmp eq i32 %conv20, 0, !dbg !1516
  br i1 %cmp21, label %if.then27, label %lor.lhs.false23, !dbg !1517

lor.lhs.false23:                                  ; preds = %if.end19
  %12 = load i8, i8* %xec, align 1, !dbg !1518
  %conv24 = zext i8 %12 to i32, !dbg !1518
  %cmp25 = icmp eq i32 %conv24, 12, !dbg !1519
  br i1 %cmp25, label %if.then27, label %if.else29, !dbg !1520

if.then27:                                        ; preds = %lor.lhs.false23, %if.end19
  %13 = load i8, i8* %xec, align 1, !dbg !1521
  %idxprom = zext i8 %13 to i64, !dbg !1521
  %arrayidx = getelementptr [14 x i8*], [14 x i8*]* @mc5_mce_desc, i64 0, i64 %idxprom, !dbg !1521
  %14 = load i8*, i8** %arrayidx, align 8, !dbg !1521
  %call28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %14) #9, !dbg !1521
  br label %if.end39, !dbg !1521

if.else29:                                        ; preds = %lor.lhs.false23
  %15 = load i8, i8* %xec, align 1, !dbg !1522
  %conv30 = zext i8 %15 to i32, !dbg !1522
  %cmp31 = icmp sle i32 %conv30, 13, !dbg !1524
  br i1 %cmp31, label %if.then33, label %if.else37, !dbg !1525

if.then33:                                        ; preds = %if.else29
  %16 = load i8, i8* %xec, align 1, !dbg !1526
  %idxprom34 = zext i8 %16 to i64, !dbg !1526
  %arrayidx35 = getelementptr [14 x i8*], [14 x i8*]* @mc5_mce_desc, i64 0, i64 %idxprom34, !dbg !1526
  %17 = load i8*, i8** %arrayidx35, align 8, !dbg !1526
  %call36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.355, i64 0, i64 0), i8* %17) #9, !dbg !1526
  br label %if.end38, !dbg !1526

if.else37:                                        ; preds = %if.else29
  br label %wrong_mc5_mce, !dbg !1527

if.end38:                                         ; preds = %if.then33
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then27
  br label %return, !dbg !1528

wrong_mc5_mce:                                    ; preds = %if.else37, %if.else, %if.then
  call void @llvm.dbg.label(metadata !1529), !dbg !1530
  %call40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.356, i64 0, i64 0)) #9, !dbg !1531
  br label %return, !dbg !1532

return:                                           ; preds = %wrong_mc5_mce, %if.end39, %if.then17
  ret void, !dbg !1532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @decode_mc6_mce(%struct.mce* %m) #0 !dbg !1533 {
entry:
  %m.addr = alloca %struct.mce*, align 8
  %xec = alloca i8, align 1
  store %struct.mce* %m, %struct.mce** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mce** %m.addr, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.declare(metadata i8* %xec, metadata !1536, metadata !DIExpression()), !dbg !1537
  %0 = load %struct.mce*, %struct.mce** %m.addr, align 8, !dbg !1538
  %status = getelementptr inbounds %struct.mce, %struct.mce* %0, i32 0, i32 0, !dbg !1538
  %1 = load i64, i64* %status, align 8, !dbg !1538
  %shr = lshr i64 %1, 16, !dbg !1538
  %2 = load i8, i8* @xec_mask, align 1, !dbg !1538
  %conv = zext i8 %2 to i64, !dbg !1538
  %and = and i64 %shr, %conv, !dbg !1538
  %conv1 = trunc i64 %and to i8, !dbg !1538
  store i8 %conv1, i8* %xec, align 1, !dbg !1537
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.371, i64 0, i64 0)) #9, !dbg !1539
  %3 = load i8, i8* %xec, align 1, !dbg !1540
  %conv2 = zext i8 %3 to i32, !dbg !1540
  %cmp = icmp sgt i32 %conv2, 5, !dbg !1542
  br i1 %cmp, label %if.then, label %if.end, !dbg !1543

if.then:                                          ; preds = %entry
  br label %wrong_mc6_mce, !dbg !1544

if.end:                                           ; preds = %entry
  %4 = load i8, i8* %xec, align 1, !dbg !1545
  %idxprom = zext i8 %4 to i64, !dbg !1545
  %arrayidx = getelementptr [6 x i8*], [6 x i8*]* @mc6_mce_desc, i64 0, i64 %idxprom, !dbg !1545
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !1545
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.355, i64 0, i64 0), i8* %5) #9, !dbg !1545
  br label %return, !dbg !1546

wrong_mc6_mce:                                    ; preds = %if.then
  call void @llvm.dbg.label(metadata !1547), !dbg !1548
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.372, i64 0, i64 0)) #9, !dbg !1549
  br label %return, !dbg !1550

return:                                           ; preds = %wrong_mc6_mce, %if.end
  ret void, !dbg !1550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @amd_decode_err_code(i16 zeroext %ec) #0 !dbg !1551 {
entry:
  %ec.addr = alloca i16, align 2
  store i16 %ec, i16* %ec.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %ec.addr, metadata !1554, metadata !DIExpression()), !dbg !1555
  %0 = load i16, i16* %ec.addr, align 2, !dbg !1556
  %conv = zext i16 %0 to i32, !dbg !1556
  %and = and i32 %conv, 62719, !dbg !1556
  %cmp = icmp eq i32 %and, 1024, !dbg !1556
  br i1 %cmp, label %if.then, label %if.end, !dbg !1558

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %ec.addr, align 2, !dbg !1559
  %conv2 = zext i16 %1 to i32, !dbg !1559
  %shr = ashr i32 %conv2, 8, !dbg !1559
  %and3 = and i32 %shr, 3, !dbg !1559
  %idxprom = sext i32 %and3 to i64, !dbg !1559
  %arrayidx = getelementptr [4 x i8*], [4 x i8*]* @uu_msgs, i64 0, i64 %idxprom, !dbg !1559
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !1559
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.379, i64 0, i64 0), i8* %2) #9, !dbg !1559
  br label %return, !dbg !1561

if.end:                                           ; preds = %entry
  %3 = load i16, i16* %ec.addr, align 2, !dbg !1562
  %conv4 = zext i16 %3 to i32, !dbg !1562
  %and5 = and i32 %conv4, 3, !dbg !1562
  %idxprom6 = sext i32 %and5 to i64, !dbg !1562
  %arrayidx7 = getelementptr [4 x i8*], [4 x i8*]* @ll_msgs, i64 0, i64 %idxprom6, !dbg !1562
  %4 = load i8*, i8** %arrayidx7, align 8, !dbg !1562
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.380, i64 0, i64 0), i8* %4) #9, !dbg !1562
  %5 = load i16, i16* %ec.addr, align 2, !dbg !1563
  %conv9 = zext i16 %5 to i32, !dbg !1563
  %and10 = and i32 %conv9, 63488, !dbg !1563
  %cmp11 = icmp eq i32 %and10, 2048, !dbg !1563
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1565

if.then13:                                        ; preds = %if.end
  %6 = load i16, i16* %ec.addr, align 2, !dbg !1566
  %conv14 = zext i16 %6 to i32, !dbg !1566
  %shr15 = ashr i32 %conv14, 2, !dbg !1566
  %and16 = and i32 %shr15, 3, !dbg !1566
  %idxprom17 = sext i32 %and16 to i64, !dbg !1566
  %arrayidx18 = getelementptr [4 x i8*], [4 x i8*]* @ii_msgs, i64 0, i64 %idxprom17, !dbg !1566
  %7 = load i8*, i8** %arrayidx18, align 8, !dbg !1566
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.381, i64 0, i64 0), i8* %7) #9, !dbg !1566
  br label %if.end26, !dbg !1566

if.else:                                          ; preds = %if.end
  %8 = load i16, i16* %ec.addr, align 2, !dbg !1567
  %conv20 = zext i16 %8 to i32, !dbg !1567
  %shr21 = ashr i32 %conv20, 2, !dbg !1567
  %and22 = and i32 %shr21, 3, !dbg !1567
  %idxprom23 = sext i32 %and22 to i64, !dbg !1567
  %arrayidx24 = getelementptr [4 x i8*], [4 x i8*]* @tt_msgs, i64 0, i64 %idxprom23, !dbg !1567
  %9 = load i8*, i8** %arrayidx24, align 8, !dbg !1567
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.382, i64 0, i64 0), i8* %9) #9, !dbg !1567
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then13
  %10 = load i16, i16* %ec.addr, align 2, !dbg !1568
  %conv27 = zext i16 %10 to i32, !dbg !1568
  %and28 = and i32 %conv27, 65280, !dbg !1568
  %cmp29 = icmp eq i32 %and28, 256, !dbg !1568
  br i1 %cmp29, label %if.then35, label %lor.lhs.false, !dbg !1570

lor.lhs.false:                                    ; preds = %if.end26
  %11 = load i16, i16* %ec.addr, align 2, !dbg !1571
  %conv31 = zext i16 %11 to i32, !dbg !1571
  %and32 = and i32 %conv31, 63488, !dbg !1571
  %cmp33 = icmp eq i32 %and32, 2048, !dbg !1571
  br i1 %cmp33, label %if.then35, label %if.end64, !dbg !1572

if.then35:                                        ; preds = %lor.lhs.false, %if.end26
  %12 = load i16, i16* %ec.addr, align 2, !dbg !1573
  %conv36 = zext i16 %12 to i32, !dbg !1573
  %shr37 = ashr i32 %conv36, 4, !dbg !1573
  %and38 = and i32 %shr37, 15, !dbg !1573
  %cmp39 = icmp slt i32 %and38, 9, !dbg !1573
  br i1 %cmp39, label %cond.true, label %cond.false, !dbg !1573

cond.true:                                        ; preds = %if.then35
  %13 = load i16, i16* %ec.addr, align 2, !dbg !1573
  %conv41 = zext i16 %13 to i32, !dbg !1573
  %shr42 = ashr i32 %conv41, 4, !dbg !1573
  %and43 = and i32 %shr42, 15, !dbg !1573
  %idxprom44 = sext i32 %and43 to i64, !dbg !1573
  %arrayidx45 = getelementptr [9 x i8*], [9 x i8*]* @rrrr_msgs, i64 0, i64 %idxprom44, !dbg !1573
  %14 = load i8*, i8** %arrayidx45, align 8, !dbg !1573
  br label %cond.end, !dbg !1573

cond.false:                                       ; preds = %if.then35
  br label %cond.end, !dbg !1573

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %14, %cond.true ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), %cond.false ], !dbg !1573
  %call46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.383, i64 0, i64 0), i8* %cond) #9, !dbg !1573
  %15 = load i16, i16* %ec.addr, align 2, !dbg !1575
  %conv47 = zext i16 %15 to i32, !dbg !1575
  %and48 = and i32 %conv47, 63488, !dbg !1575
  %cmp49 = icmp eq i32 %and48, 2048, !dbg !1575
  br i1 %cmp49, label %if.then51, label %if.end63, !dbg !1577

if.then51:                                        ; preds = %cond.end
  %16 = load i16, i16* %ec.addr, align 2, !dbg !1578
  %conv52 = zext i16 %16 to i32, !dbg !1578
  %shr53 = ashr i32 %conv52, 9, !dbg !1578
  %and54 = and i32 %shr53, 3, !dbg !1578
  %idxprom55 = sext i32 %and54 to i64, !dbg !1578
  %arrayidx56 = getelementptr [4 x i8*], [4 x i8*]* @pp_msgs, i64 0, i64 %idxprom55, !dbg !1578
  %17 = load i8*, i8** %arrayidx56, align 8, !dbg !1578
  %18 = load i16, i16* %ec.addr, align 2, !dbg !1578
  %conv57 = zext i16 %18 to i32, !dbg !1578
  %shr58 = ashr i32 %conv57, 8, !dbg !1578
  %and59 = and i32 %shr58, 1, !dbg !1578
  %idxprom60 = sext i32 %and59 to i64, !dbg !1578
  %arrayidx61 = getelementptr [2 x i8*], [2 x i8*]* @to_msgs, i64 0, i64 %idxprom60, !dbg !1578
  %19 = load i8*, i8** %arrayidx61, align 8, !dbg !1578
  %call62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.384, i64 0, i64 0), i8* %17, i8* %19) #9, !dbg !1578
  br label %if.end63, !dbg !1578

if.end63:                                         ; preds = %if.then51, %cond.end
  br label %if.end64, !dbg !1579

if.end64:                                         ; preds = %if.end63, %lor.lhs.false
  %call65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.127, i64 0, i64 0)) #9, !dbg !1580
  br label %return, !dbg !1581

return:                                           ; preds = %if.end64, %if.then
  ret void, !dbg !1581
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone
declare dso_local i8* @smca_get_long_name(i32) #4

; Function Attrs: noredzone
declare dso_local zeroext i16 @amd_get_nb_id(i32) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!274}
!llvm.module.flags = !{!275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "decode_dram_ecc", scope: !2, file: !3, line: 13, type: !271, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !108, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/edac/mce_amd.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !23, !29, !35, !41}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rrrr_ids", file: !12, line: 58, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "drivers/edac/mce_amd.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22}
!14 = !DIEnumerator(name: "R4_GEN", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "R4_RD", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "R4_WR", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "R4_DRD", value: 3, isUnsigned: true)
!18 = !DIEnumerator(name: "R4_DWR", value: 4, isUnsigned: true)
!19 = !DIEnumerator(name: "R4_IRD", value: 5, isUnsigned: true)
!20 = !DIEnumerator(name: "R4_PREF", value: 6, isUnsigned: true)
!21 = !DIEnumerator(name: "R4_EVICT", value: 7, isUnsigned: true)
!22 = !DIEnumerator(name: "R4_SNOOP", value: 8, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ll_ids", file: !12, line: 44, baseType: !7, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "LL_RESV", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "LL_L1", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "LL_L2", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "LL_LG", value: 3, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tt_ids", file: !12, line: 37, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "TT_INSTR", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "TT_DATA", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "TT_GEN", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "TT_RESV", value: 3, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ii_ids", file: !12, line: 51, baseType: !7, size: 32, elements: !36)
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "II_MEM", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "II_RESV", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "II_IO", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "II_GEN", value: 3, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "smca_bank_types", file: !42, line: 321, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "./arch/x86/include/asm/mce.h", directory: "/home/lizy2001/genbc/linux")
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!44 = !DIEnumerator(name: "SMCA_LS", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "SMCA_LS_V2", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "SMCA_IF", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "SMCA_L2_CACHE", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "SMCA_DE", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "SMCA_RESERVED", value: 5, isUnsigned: true)
!50 = !DIEnumerator(name: "SMCA_EX", value: 6, isUnsigned: true)
!51 = !DIEnumerator(name: "SMCA_FP", value: 7, isUnsigned: true)
!52 = !DIEnumerator(name: "SMCA_L3_CACHE", value: 8, isUnsigned: true)
!53 = !DIEnumerator(name: "SMCA_CS", value: 9, isUnsigned: true)
!54 = !DIEnumerator(name: "SMCA_CS_V2", value: 10, isUnsigned: true)
!55 = !DIEnumerator(name: "SMCA_PIE", value: 11, isUnsigned: true)
!56 = !DIEnumerator(name: "SMCA_UMC", value: 12, isUnsigned: true)
!57 = !DIEnumerator(name: "SMCA_PB", value: 13, isUnsigned: true)
!58 = !DIEnumerator(name: "SMCA_PSP", value: 14, isUnsigned: true)
!59 = !DIEnumerator(name: "SMCA_PSP_V2", value: 15, isUnsigned: true)
!60 = !DIEnumerator(name: "SMCA_SMU", value: 16, isUnsigned: true)
!61 = !DIEnumerator(name: "SMCA_SMU_V2", value: 17, isUnsigned: true)
!62 = !DIEnumerator(name: "SMCA_MP5", value: 18, isUnsigned: true)
!63 = !DIEnumerator(name: "SMCA_NBIO", value: 19, isUnsigned: true)
!64 = !DIEnumerator(name: "SMCA_PCIE", value: 20, isUnsigned: true)
!65 = !DIEnumerator(name: "N_SMCA_BANK_TYPES", value: 21, isUnsigned: true)
!66 = !{!67, !68, !70, !105, !69, !107}
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mce", file: !72, line: 13, size: 1024, elements: !73)
!72 = !DIFile(filename: "./arch/x86/include/uapi/asm/mce.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !78, !79, !80, !81, !82, !83, !84, !87, !88, !89, !90, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !71, file: !72, line: 14, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !76, line: 31, baseType: !77)
!76 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!77 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !71, file: !72, line: 15, baseType: !75, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !71, file: !72, line: 16, baseType: !75, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "mcgstatus", scope: !71, file: !72, line: 17, baseType: !75, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !71, file: !72, line: 18, baseType: !75, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "tsc", scope: !71, file: !72, line: 19, baseType: !75, size: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !71, file: !72, line: 20, baseType: !75, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "cpuvendor", scope: !71, file: !72, line: 21, baseType: !85, size: 8, offset: 448)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !76, line: 21, baseType: !86)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "inject_flags", scope: !71, file: !72, line: 22, baseType: !85, size: 8, offset: 456)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !71, file: !72, line: 23, baseType: !85, size: 8, offset: 464)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !71, file: !72, line: 24, baseType: !85, size: 8, offset: 472)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid", scope: !71, file: !72, line: 25, baseType: !91, size: 32, offset: 480)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !76, line: 27, baseType: !7)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !71, file: !72, line: 26, baseType: !85, size: 8, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "bank", scope: !71, file: !72, line: 27, baseType: !85, size: 8, offset: 520)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !71, file: !72, line: 28, baseType: !85, size: 8, offset: 528)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "finished", scope: !71, file: !72, line: 29, baseType: !85, size: 8, offset: 536)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "extcpu", scope: !71, file: !72, line: 30, baseType: !91, size: 32, offset: 544)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "socketid", scope: !71, file: !72, line: 31, baseType: !91, size: 32, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !71, file: !72, line: 32, baseType: !91, size: 32, offset: 608)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mcgcap", scope: !71, file: !72, line: 33, baseType: !75, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "synd", scope: !71, file: !72, line: 34, baseType: !75, size: 64, offset: 704)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ipid", scope: !71, file: !72, line: 35, baseType: !75, size: 64, offset: 768)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !71, file: !72, line: 36, baseType: !75, size: 64, offset: 832)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !71, file: !72, line: 37, baseType: !91, size: 32, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "kflags", scope: !71, file: !72, line: 38, baseType: !75, size: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !106, line: 21, baseType: !91)
!106 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !106, line: 23, baseType: !75)
!108 = !{!109, !118, !0, !121, !130, !133, !146, !151, !153, !158, !163, !176, !186, !189, !194, !199, !201, !206, !208, !213, !218, !220, !222, !227, !229, !234, !236, !238, !240, !245, !247, !249, !251, !253, !255, !257, !262, !264, !266}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "pp_msgs", scope: !2, file: !3, line: 48, type: !111, isLocal: false, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !116)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!116 = !{!117}
!117 = !DISubrange(count: 4)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mce_amd_init162", scope: !2, file: !3, line: 1247, type: !120, isLocal: true, isDefinition: true)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "__print_once", scope: !123, file: !3, line: 1232, type: !127, isLocal: true, isDefinition: true)
!123 = distinct !DISubprogram(name: "mce_amd_init", scope: !3, file: !3, line: 1171, type: !124, scopeLine: 1172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{!67}
!126 = !{}
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !128, line: 30, baseType: !129)
!128 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "xec_mask", scope: !2, file: !3, line: 11, type: !132, isLocal: true, isDefinition: true)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !106, line: 17, baseType: !85)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "fam_ops", scope: !2, file: !3, line: 9, type: !135, isLocal: true, isDefinition: true)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_decoder_ops", file: !12, line: 73, size: 192, elements: !136)
!136 = !{!137, !144, !145}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "mc0_mce", scope: !135, file: !12, line: 74, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!127, !141, !132}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !106, line: 19, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !76, line: 24, baseType: !143)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "mc1_mce", scope: !135, file: !12, line: 75, baseType: !138, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mc2_mce", scope: !135, file: !12, line: 76, baseType: !138, size: 64, offset: 128)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "rrrr_msgs", scope: !2, file: !3, line: 43, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 576, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 9)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "tt_msgs", scope: !2, file: !3, line: 37, type: !111, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "f15h_mc1_mce_desc", scope: !2, file: !3, line: 60, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1152, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 18)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "f15h_mc2_mce_desc", scope: !2, file: !3, line: 81, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 896, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 14)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "amd_mce_dec_nb", scope: !2, file: !3, line: 1166, type: !165, isLocal: true, isDefinition: true)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !166, line: 54, size: 192, elements: !167)
!166 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!167 = !{!168, !174, !175}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !165, file: !166, line: 55, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !166, line: 51, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!67, !173, !69, !120}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !165, file: !166, line: 56, baseType: !173, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !165, file: !166, line: 57, baseType: !67, size: 32, offset: 128)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "smca_mce_descs", scope: !2, file: !3, line: 408, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 2688, elements: !184)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "smca_mce_desc", file: !3, line: 403, size: 128, elements: !180)
!180 = !{!181, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "descs", scope: !179, file: !3, line: 404, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "num_descs", scope: !179, file: !3, line: 405, baseType: !7, size: 32, offset: 64)
!184 = !{!185}
!185 = !DISubrange(count: 21)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "smca_ls_mce_desc", scope: !2, file: !3, line: 147, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1344, elements: !184)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "smca_ls2_mce_desc", scope: !2, file: !3, line: 171, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1536, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 24)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "smca_if_mce_desc", scope: !2, file: !3, line: 198, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1216, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 19)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "smca_l2_mce_desc", scope: !2, file: !3, line: 220, type: !111, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "smca_de_mce_desc", scope: !2, file: !3, line: 227, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 640, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 10)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "smca_ex_mce_desc", scope: !2, file: !3, line: 240, type: !160, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "smca_fp_mce_desc", scope: !2, file: !3, line: 257, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 448, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 7)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "smca_l3_mce_desc", scope: !2, file: !3, line: 267, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 512, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 8)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "smca_cs_mce_desc", scope: !2, file: !3, line: 278, type: !148, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "smca_cs2_mce_desc", scope: !2, file: !3, line: 290, type: !160, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "smca_pie_mce_desc", scope: !2, file: !3, line: 307, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 320, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 5)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "smca_umc_mce_desc", scope: !2, file: !3, line: 315, type: !215, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "smca_pb_mce_desc", scope: !2, file: !3, line: 326, type: !231, isLocal: true, isDefinition: true)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 1)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "smca_psp_mce_desc", scope: !2, file: !3, line: 330, type: !231, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "smca_psp2_mce_desc", scope: !2, file: !3, line: 334, type: !155, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "smca_smu_mce_desc", scope: !2, file: !3, line: 355, type: !231, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "smca_smu2_mce_desc", scope: !2, file: !3, line: 359, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 768, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 12)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "smca_mp5_mce_desc", scope: !2, file: !3, line: 374, type: !203, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "smca_nbio_mce_desc", scope: !2, file: !3, line: 387, type: !224, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "smca_pcie_mce_desc", scope: !2, file: !3, line: 395, type: !224, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "ll_msgs", scope: !2, file: !3, line: 40, type: !111, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "mc4_mce_desc", scope: !2, file: !3, line: 98, type: !196, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "mc5_mce_desc", scope: !2, file: !3, line: 120, type: !160, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "mc6_mce_desc", scope: !2, file: !3, line: 137, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 384, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 6)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "uu_msgs", scope: !2, file: !3, line: 58, type: !111, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "ii_msgs", scope: !2, file: !3, line: 55, type: !111, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "to_msgs", scope: !2, file: !3, line: 52, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 2)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !67, !70}
!274 = !{!"rsp"}
!275 = !{i32 7, !"Dwarf Version", i32 4}
!276 = !{i32 2, !"Debug Info Version", i32 3}
!277 = !{i32 1, !"wchar_size", i32 2}
!278 = !{i32 1, !"Code Model", i32 2}
!279 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!280 = distinct !DISubprogram(name: "amd_register_ecc_decoder", scope: !3, file: !3, line: 15, type: !281, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !271}
!283 = !DILocalVariable(name: "f", arg: 1, scope: !280, file: !3, line: 15, type: !271)
!284 = !DILocation(line: 15, column: 38, scope: !280)
!285 = !DILocation(line: 17, column: 20, scope: !280)
!286 = !DILocation(line: 17, column: 18, scope: !280)
!287 = !DILocation(line: 18, column: 1, scope: !280)
!288 = distinct !DISubprogram(name: "amd_unregister_ecc_decoder", scope: !3, file: !3, line: 21, type: !281, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !126)
!289 = !DILocalVariable(name: "f", arg: 1, scope: !288, file: !3, line: 21, type: !271)
!290 = !DILocation(line: 21, column: 40, scope: !288)
!291 = !DILocation(line: 23, column: 6, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 23, column: 6)
!293 = !DILocation(line: 23, column: 6, scope: !288)
!294 = !DILocalVariable(name: "__ret_warn_on", scope: !295, file: !3, line: 24, type: !67)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 24, column: 3)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 23, column: 23)
!297 = !DILocation(line: 24, column: 3, scope: !295)
!298 = !DILocation(line: 24, column: 3, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !3, line: 24, column: 3)
!300 = !DILocation(line: 24, column: 3, scope: !301)
!301 = distinct !DILexicalBlock(scope: !299, file: !3, line: 24, column: 3)
!302 = !DILocation(line: 24, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !301, file: !3, line: 24, column: 3)
!304 = !DILocation(line: 24, column: 3, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !3, line: 24, column: 3)
!306 = !{i32 -2143479836, i32 -2143479807, i32 -2143479761, i32 -2143479703, i32 -2143479649, i32 -2143479595, i32 -2143479540, i32 -2143479509}
!307 = !DILocation(line: 24, column: 3, scope: !308)
!308 = distinct !DILexicalBlock(scope: !301, file: !3, line: 24, column: 3)
!309 = !{i32 -2143479106, i32 -2143479099, i32 -2143479047, i32 -2143479016, i32 -2143478986}
!310 = !DILocation(line: 24, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !301, file: !3, line: 24, column: 3)
!312 = !DILocation(line: 26, column: 19, scope: !296)
!313 = !DILocation(line: 27, column: 2, scope: !296)
!314 = !DILocation(line: 28, column: 1, scope: !288)
!315 = !DILocalVariable(name: "c", scope: !123, file: !3, line: 1173, type: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !318, line: 81, size: 2048, elements: !319)
!318 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320, !321, !322, !323, !324, !325, !329, !330, !331, !332, !333, !334, !335, !343, !347, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !317, file: !318, line: 82, baseType: !85, size: 8)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !317, file: !318, line: 83, baseType: !85, size: 8, offset: 8)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !317, file: !318, line: 84, baseType: !85, size: 8, offset: 16)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !317, file: !318, line: 85, baseType: !85, size: 8, offset: 24)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !317, file: !318, line: 88, baseType: !67, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !317, file: !318, line: 91, baseType: !326, size: 96, offset: 64)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 96, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 3)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !317, file: !318, line: 93, baseType: !85, size: 8, offset: 160)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !317, file: !318, line: 94, baseType: !85, size: 8, offset: 168)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !317, file: !318, line: 96, baseType: !85, size: 8, offset: 176)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !317, file: !318, line: 97, baseType: !85, size: 8, offset: 184)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !317, file: !318, line: 99, baseType: !91, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !317, file: !318, line: 101, baseType: !67, size: 32, offset: 224)
!335 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !318, line: 107, baseType: !336, size: 640, offset: 256)
!336 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !318, line: 107, size: 640, elements: !337)
!337 = !{!338, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !336, file: !318, line: 108, baseType: !339, size: 640)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 640, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 20)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !336, file: !318, line: 109, baseType: !69, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !317, file: !318, line: 111, baseType: !344, size: 128, offset: 896)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 128, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 16)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !317, file: !318, line: 112, baseType: !348, size: 512, offset: 1024)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 512, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !317, file: !318, line: 114, baseType: !7, size: 32, offset: 1536)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !317, file: !318, line: 115, baseType: !67, size: 32, offset: 1568)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !317, file: !318, line: 117, baseType: !67, size: 32, offset: 1600)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !317, file: !318, line: 118, baseType: !67, size: 32, offset: 1632)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !317, file: !318, line: 119, baseType: !67, size: 32, offset: 1664)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !317, file: !318, line: 120, baseType: !67, size: 32, offset: 1696)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !317, file: !318, line: 121, baseType: !69, size: 64, offset: 1728)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !317, file: !318, line: 123, baseType: !141, size: 16, offset: 1792)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !317, file: !318, line: 124, baseType: !141, size: 16, offset: 1808)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !317, file: !318, line: 125, baseType: !141, size: 16, offset: 1824)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !317, file: !318, line: 126, baseType: !141, size: 16, offset: 1840)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !317, file: !318, line: 128, baseType: !141, size: 16, offset: 1856)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !317, file: !318, line: 130, baseType: !141, size: 16, offset: 1872)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !317, file: !318, line: 132, baseType: !141, size: 16, offset: 1888)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !317, file: !318, line: 134, baseType: !141, size: 16, offset: 1904)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !317, file: !318, line: 135, baseType: !141, size: 16, offset: 1920)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !317, file: !318, line: 136, baseType: !141, size: 16, offset: 1936)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !317, file: !318, line: 138, baseType: !141, size: 16, offset: 1952)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !317, file: !318, line: 139, baseType: !105, size: 32, offset: 1984)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !317, file: !318, line: 141, baseType: !132, size: 8, offset: 2016)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !317, file: !318, line: 142, baseType: !7, size: 1, offset: 2024, flags: DIFlagBitField, extraData: i64 2024)
!372 = !DILocation(line: 1173, column: 22, scope: !123)
!373 = !DILocation(line: 1175, column: 6, scope: !374)
!374 = distinct !DILexicalBlock(scope: !123, file: !3, line: 1175, column: 6)
!375 = !DILocation(line: 1175, column: 9, scope: !374)
!376 = !DILocation(line: 1175, column: 20, scope: !374)
!377 = !DILocation(line: 1175, column: 38, scope: !374)
!378 = !DILocation(line: 1176, column: 6, scope: !374)
!379 = !DILocation(line: 1176, column: 9, scope: !374)
!380 = !DILocation(line: 1176, column: 20, scope: !374)
!381 = !DILocation(line: 1175, column: 6, scope: !123)
!382 = !DILocation(line: 1177, column: 3, scope: !374)
!383 = !DILocation(line: 1179, column: 6, scope: !123)
!384 = !DILocation(line: 1179, column: 6, scope: !385)
!385 = distinct !DILexicalBlock(scope: !123, file: !3, line: 1179, column: 6)
!386 = !DILocation(line: 1180, column: 12, scope: !387)
!387 = distinct !DILexicalBlock(scope: !385, file: !3, line: 1179, column: 38)
!388 = !DILocation(line: 1181, column: 3, scope: !387)
!389 = !DILocation(line: 1184, column: 10, scope: !123)
!390 = !DILocation(line: 1184, column: 13, scope: !123)
!391 = !DILocation(line: 1184, column: 2, scope: !123)
!392 = !DILocation(line: 1186, column: 19, scope: !393)
!393 = distinct !DILexicalBlock(scope: !123, file: !3, line: 1184, column: 18)
!394 = !DILocation(line: 1187, column: 19, scope: !393)
!395 = !DILocation(line: 1188, column: 19, scope: !393)
!396 = !DILocation(line: 1189, column: 3, scope: !393)
!397 = !DILocation(line: 1192, column: 19, scope: !393)
!398 = !DILocation(line: 1193, column: 19, scope: !393)
!399 = !DILocation(line: 1194, column: 19, scope: !393)
!400 = !DILocation(line: 1195, column: 3, scope: !393)
!401 = !DILocation(line: 1198, column: 19, scope: !393)
!402 = !DILocation(line: 1199, column: 19, scope: !393)
!403 = !DILocation(line: 1200, column: 19, scope: !393)
!404 = !DILocation(line: 1201, column: 3, scope: !393)
!405 = !DILocation(line: 1204, column: 19, scope: !393)
!406 = !DILocation(line: 1205, column: 19, scope: !393)
!407 = !DILocation(line: 1206, column: 19, scope: !393)
!408 = !DILocation(line: 1207, column: 3, scope: !393)
!409 = !DILocation(line: 1210, column: 19, scope: !393)
!410 = !DILocation(line: 1211, column: 19, scope: !393)
!411 = !DILocation(line: 1212, column: 19, scope: !393)
!412 = !DILocation(line: 1213, column: 3, scope: !393)
!413 = !DILocation(line: 1216, column: 14, scope: !393)
!414 = !DILocation(line: 1216, column: 17, scope: !393)
!415 = !DILocation(line: 1216, column: 27, scope: !393)
!416 = !DILocation(line: 1216, column: 12, scope: !393)
!417 = !DILocation(line: 1218, column: 19, scope: !393)
!418 = !DILocation(line: 1219, column: 19, scope: !393)
!419 = !DILocation(line: 1220, column: 19, scope: !393)
!420 = !DILocation(line: 1221, column: 3, scope: !393)
!421 = !DILocation(line: 1224, column: 12, scope: !393)
!422 = !DILocation(line: 1225, column: 19, scope: !393)
!423 = !DILocation(line: 1226, column: 19, scope: !393)
!424 = !DILocation(line: 1227, column: 19, scope: !393)
!425 = !DILocation(line: 1228, column: 3, scope: !393)
!426 = !DILocalVariable(name: "__ret_print_once", scope: !427, file: !3, line: 1232, type: !127)
!427 = distinct !DILexicalBlock(scope: !393, file: !3, line: 1232, column: 3)
!428 = !DILocation(line: 1232, column: 3, scope: !427)
!429 = !DILocation(line: 1232, column: 3, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !3, line: 1232, column: 3)
!431 = !DILocation(line: 1232, column: 3, scope: !432)
!432 = distinct !DILexicalBlock(scope: !430, file: !3, line: 1232, column: 3)
!433 = !DILocation(line: 1233, column: 3, scope: !393)
!434 = !DILocation(line: 1236, column: 59, scope: !393)
!435 = !DILocation(line: 1236, column: 62, scope: !393)
!436 = !DILocation(line: 1236, column: 3, scope: !393)
!437 = !DILocation(line: 1237, column: 3, scope: !393)
!438 = !DILocation(line: 1238, column: 2, scope: !393)
!439 = !DILabel(scope: !123, name: "out", file: !3, line: 1240)
!440 = !DILocation(line: 1240, column: 1, scope: !123)
!441 = !DILocation(line: 1241, column: 2, scope: !123)
!442 = !DILocation(line: 1243, column: 2, scope: !123)
!443 = !DILocation(line: 1245, column: 2, scope: !123)
!444 = !DILocation(line: 1246, column: 1, scope: !123)
!445 = distinct !DISubprogram(name: "test_bit", scope: !446, file: !446, line: 132, type: !447, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!446 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!447 = !DISubroutineType(types: !448)
!448 = !{!127, !449, !450}
!449 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !69)
!453 = !DILocalVariable(name: "nr", arg: 1, scope: !454, file: !455, line: 210, type: !449)
!454 = distinct !DISubprogram(name: "variable_test_bit", scope: !455, file: !455, line: 210, type: !447, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!455 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!456 = !DILocation(line: 210, column: 52, scope: !454, inlinedAt: !457)
!457 = distinct !DILocation(line: 135, column: 9, scope: !445)
!458 = !DILocalVariable(name: "addr", arg: 2, scope: !454, file: !455, line: 210, type: !450)
!459 = !DILocation(line: 210, column: 86, scope: !454, inlinedAt: !457)
!460 = !DILocalVariable(name: "oldbit", scope: !454, file: !455, line: 212, type: !127)
!461 = !DILocation(line: 212, column: 7, scope: !454, inlinedAt: !457)
!462 = !DILocalVariable(name: "nr", arg: 1, scope: !463, file: !455, line: 204, type: !449)
!463 = distinct !DISubprogram(name: "constant_test_bit", scope: !455, file: !455, line: 204, type: !447, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!464 = !DILocation(line: 204, column: 52, scope: !463, inlinedAt: !465)
!465 = distinct !DILocation(line: 135, column: 9, scope: !445)
!466 = !DILocalVariable(name: "addr", arg: 2, scope: !463, file: !455, line: 204, type: !450)
!467 = !DILocation(line: 204, column: 86, scope: !463, inlinedAt: !465)
!468 = !DILocalVariable(name: "v", arg: 1, scope: !469, file: !470, line: 69, type: !473)
!469 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !470, file: !470, line: 69, type: !471, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!470 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!471 = !DISubroutineType(types: !472)
!472 = !{null, !473, !476}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !128, line: 55, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !478, line: 72, baseType: !479)
!478 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !478, line: 16, baseType: !69)
!480 = !DILocation(line: 69, column: 73, scope: !469, inlinedAt: !481)
!481 = distinct !DILocation(line: 134, column: 2, scope: !445)
!482 = !DILocalVariable(name: "size", arg: 2, scope: !469, file: !470, line: 69, type: !476)
!483 = !DILocation(line: 69, column: 83, scope: !469, inlinedAt: !481)
!484 = !DILocalVariable(name: "nr", arg: 1, scope: !445, file: !446, line: 132, type: !449)
!485 = !DILocation(line: 132, column: 34, scope: !445)
!486 = !DILocalVariable(name: "addr", arg: 2, scope: !445, file: !446, line: 132, type: !450)
!487 = !DILocation(line: 132, column: 68, scope: !445)
!488 = !DILocation(line: 134, column: 25, scope: !445)
!489 = !DILocation(line: 134, column: 32, scope: !445)
!490 = !DILocation(line: 134, column: 30, scope: !445)
!491 = !DILocation(line: 71, column: 19, scope: !469, inlinedAt: !481)
!492 = !DILocation(line: 71, column: 22, scope: !469, inlinedAt: !481)
!493 = !DILocation(line: 71, column: 2, scope: !469, inlinedAt: !481)
!494 = !DILocation(line: 72, column: 2, scope: !469, inlinedAt: !481)
!495 = !DILocation(line: 135, column: 9, scope: !445)
!496 = !DILocation(line: 206, column: 19, scope: !463, inlinedAt: !465)
!497 = !DILocation(line: 206, column: 22, scope: !463, inlinedAt: !465)
!498 = !DILocation(line: 206, column: 15, scope: !463, inlinedAt: !465)
!499 = !DILocation(line: 207, column: 4, scope: !463, inlinedAt: !465)
!500 = !DILocation(line: 207, column: 9, scope: !463, inlinedAt: !465)
!501 = !DILocation(line: 207, column: 12, scope: !463, inlinedAt: !465)
!502 = !DILocation(line: 206, column: 44, scope: !463, inlinedAt: !465)
!503 = !DILocation(line: 207, column: 37, scope: !463, inlinedAt: !465)
!504 = !DILocation(line: 217, column: 33, scope: !454, inlinedAt: !457)
!505 = !DILocation(line: 217, column: 46, scope: !454, inlinedAt: !457)
!506 = !DILocation(line: 214, column: 2, scope: !454, inlinedAt: !457)
!507 = !{i32 -2147116087, i32 -2147116027}
!508 = !DILocation(line: 219, column: 9, scope: !454, inlinedAt: !457)
!509 = !DILocation(line: 135, column: 2, scope: !445)
!510 = distinct !DISubprogram(name: "k8_mc0_mce", scope: !3, file: !3, line: 458, type: !139, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!511 = !DILocalVariable(name: "ec", arg: 1, scope: !510, file: !3, line: 458, type: !141)
!512 = !DILocation(line: 458, column: 28, scope: !510)
!513 = !DILocalVariable(name: "xec", arg: 2, scope: !510, file: !3, line: 458, type: !132)
!514 = !DILocation(line: 458, column: 35, scope: !510)
!515 = !DILocation(line: 460, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !510, file: !3, line: 460, column: 6)
!517 = !DILocation(line: 460, column: 6, scope: !510)
!518 = !DILocation(line: 461, column: 3, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !3, line: 460, column: 21)
!520 = !DILocation(line: 462, column: 3, scope: !519)
!521 = !DILocation(line: 465, column: 22, scope: !510)
!522 = !DILocation(line: 465, column: 26, scope: !510)
!523 = !DILocation(line: 465, column: 9, scope: !510)
!524 = !DILocation(line: 465, column: 2, scope: !510)
!525 = !DILocation(line: 466, column: 1, scope: !510)
!526 = distinct !DISubprogram(name: "k8_mc1_mce", scope: !3, file: !3, line: 594, type: !139, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!527 = !DILocalVariable(name: "ec", arg: 1, scope: !526, file: !3, line: 594, type: !141)
!528 = !DILocation(line: 594, column: 28, scope: !526)
!529 = !DILocalVariable(name: "xec", arg: 2, scope: !526, file: !3, line: 594, type: !132)
!530 = !DILocation(line: 594, column: 35, scope: !526)
!531 = !DILocalVariable(name: "ll", scope: !526, file: !3, line: 596, type: !132)
!532 = !DILocation(line: 596, column: 5, scope: !526)
!533 = !DILocation(line: 596, column: 11, scope: !526)
!534 = !DILocalVariable(name: "ret", scope: !526, file: !3, line: 597, type: !127)
!535 = !DILocation(line: 597, column: 7, scope: !526)
!536 = !DILocation(line: 599, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !526, file: !3, line: 599, column: 6)
!538 = !DILocation(line: 599, column: 6, scope: !526)
!539 = !DILocation(line: 600, column: 3, scope: !537)
!540 = !DILocation(line: 602, column: 6, scope: !541)
!541 = distinct !DILexicalBlock(scope: !526, file: !3, line: 602, column: 6)
!542 = !DILocation(line: 602, column: 9, scope: !541)
!543 = !DILocation(line: 602, column: 6, scope: !526)
!544 = !DILocation(line: 603, column: 3, scope: !541)
!545 = !DILocation(line: 604, column: 11, scope: !546)
!546 = distinct !DILexicalBlock(scope: !541, file: !3, line: 604, column: 11)
!547 = !DILocation(line: 604, column: 14, scope: !546)
!548 = !DILocation(line: 604, column: 11, scope: !541)
!549 = !DILocation(line: 605, column: 11, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !3, line: 604, column: 22)
!551 = !DILocation(line: 605, column: 3, scope: !550)
!552 = !DILocation(line: 607, column: 4, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !3, line: 605, column: 19)
!554 = !DILocation(line: 608, column: 4, scope: !553)
!555 = !DILocation(line: 611, column: 4, scope: !553)
!556 = !DILocation(line: 612, column: 4, scope: !553)
!557 = !DILocation(line: 615, column: 4, scope: !553)
!558 = !DILocation(line: 616, column: 4, scope: !553)
!559 = !DILocation(line: 619, column: 8, scope: !553)
!560 = !DILocation(line: 620, column: 4, scope: !553)
!561 = !DILocation(line: 622, column: 2, scope: !550)
!562 = !DILocation(line: 623, column: 7, scope: !546)
!563 = !DILocation(line: 625, column: 9, scope: !526)
!564 = !DILocation(line: 625, column: 2, scope: !526)
!565 = !DILocation(line: 626, column: 1, scope: !526)
!566 = distinct !DISubprogram(name: "k8_mc2_mce", scope: !3, file: !3, line: 713, type: !139, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!567 = !DILocalVariable(name: "ec", arg: 1, scope: !566, file: !3, line: 713, type: !141)
!568 = !DILocation(line: 713, column: 28, scope: !566)
!569 = !DILocalVariable(name: "xec", arg: 2, scope: !566, file: !3, line: 713, type: !132)
!570 = !DILocation(line: 713, column: 35, scope: !566)
!571 = !DILocalVariable(name: "ret", scope: !566, file: !3, line: 715, type: !127)
!572 = !DILocation(line: 715, column: 7, scope: !566)
!573 = !DILocation(line: 717, column: 6, scope: !574)
!574 = distinct !DILexicalBlock(scope: !566, file: !3, line: 717, column: 6)
!575 = !DILocation(line: 717, column: 10, scope: !574)
!576 = !DILocation(line: 717, column: 6, scope: !566)
!577 = !DILocation(line: 718, column: 3, scope: !574)
!578 = !DILocation(line: 719, column: 11, scope: !579)
!579 = distinct !DILexicalBlock(scope: !574, file: !3, line: 719, column: 11)
!580 = !DILocation(line: 719, column: 15, scope: !579)
!581 = !DILocation(line: 719, column: 11, scope: !574)
!582 = !DILocation(line: 720, column: 3, scope: !579)
!583 = !DILocation(line: 721, column: 11, scope: !584)
!584 = distinct !DILexicalBlock(scope: !579, file: !3, line: 721, column: 11)
!585 = !DILocation(line: 721, column: 15, scope: !584)
!586 = !DILocation(line: 721, column: 22, scope: !584)
!587 = !DILocation(line: 721, column: 25, scope: !584)
!588 = !DILocation(line: 721, column: 11, scope: !579)
!589 = !DILocation(line: 722, column: 3, scope: !584)
!590 = !DILocation(line: 723, column: 11, scope: !591)
!591 = distinct !DILexicalBlock(scope: !584, file: !3, line: 723, column: 11)
!592 = !DILocation(line: 723, column: 15, scope: !591)
!593 = !DILocation(line: 723, column: 11, scope: !584)
!594 = !DILocation(line: 724, column: 7, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !3, line: 724, column: 7)
!596 = distinct !DILexicalBlock(scope: !591, file: !3, line: 723, column: 23)
!597 = !DILocation(line: 724, column: 7, scope: !596)
!598 = !DILocation(line: 725, column: 4, scope: !595)
!599 = !DILocation(line: 727, column: 12, scope: !600)
!600 = distinct !DILexicalBlock(scope: !595, file: !3, line: 727, column: 12)
!601 = !DILocation(line: 727, column: 12, scope: !595)
!602 = !DILocation(line: 728, column: 4, scope: !600)
!603 = !DILocation(line: 730, column: 12, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !3, line: 730, column: 12)
!605 = !DILocation(line: 730, column: 12, scope: !600)
!606 = !DILocalVariable(name: "r4", scope: !607, file: !3, line: 731, type: !132)
!607 = distinct !DILexicalBlock(scope: !604, file: !3, line: 730, column: 27)
!608 = !DILocation(line: 731, column: 7, scope: !607)
!609 = !DILocation(line: 731, column: 12, scope: !607)
!610 = !DILocation(line: 733, column: 8, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !3, line: 733, column: 8)
!612 = !DILocation(line: 733, column: 11, scope: !611)
!613 = !DILocation(line: 733, column: 8, scope: !607)
!614 = !DILocation(line: 734, column: 5, scope: !611)
!615 = !DILocation(line: 736, column: 13, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !3, line: 736, column: 13)
!617 = !DILocation(line: 736, column: 16, scope: !616)
!618 = !DILocation(line: 736, column: 13, scope: !611)
!619 = !DILocation(line: 737, column: 5, scope: !616)
!620 = !DILocation(line: 740, column: 9, scope: !616)
!621 = !DILocation(line: 741, column: 3, scope: !607)
!622 = !DILocation(line: 742, column: 8, scope: !604)
!623 = !DILocation(line: 743, column: 2, scope: !596)
!624 = !DILocation(line: 744, column: 7, scope: !591)
!625 = !DILocation(line: 746, column: 9, scope: !566)
!626 = !DILocation(line: 746, column: 2, scope: !566)
!627 = distinct !DISubprogram(name: "f10h_mc0_mce", scope: !3, file: !3, line: 449, type: !139, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!628 = !DILocalVariable(name: "ec", arg: 1, scope: !627, file: !3, line: 449, type: !141)
!629 = !DILocation(line: 449, column: 30, scope: !627)
!630 = !DILocalVariable(name: "xec", arg: 2, scope: !627, file: !3, line: 449, type: !132)
!631 = !DILocation(line: 449, column: 37, scope: !627)
!632 = !DILocation(line: 451, column: 6, scope: !633)
!633 = distinct !DILexicalBlock(scope: !627, file: !3, line: 451, column: 6)
!634 = !DILocation(line: 451, column: 13, scope: !633)
!635 = !DILocation(line: 451, column: 23, scope: !633)
!636 = !DILocation(line: 451, column: 26, scope: !633)
!637 = !DILocation(line: 451, column: 33, scope: !633)
!638 = !DILocation(line: 451, column: 6, scope: !627)
!639 = !DILocation(line: 452, column: 3, scope: !640)
!640 = distinct !DILexicalBlock(scope: !633, file: !3, line: 451, column: 43)
!641 = !DILocation(line: 453, column: 3, scope: !640)
!642 = !DILocation(line: 455, column: 22, scope: !627)
!643 = !DILocation(line: 455, column: 26, scope: !627)
!644 = !DILocation(line: 455, column: 9, scope: !627)
!645 = !DILocation(line: 455, column: 2, scope: !627)
!646 = !DILocation(line: 456, column: 1, scope: !627)
!647 = distinct !DISubprogram(name: "f12h_mc0_mce", scope: !3, file: !3, line: 431, type: !139, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!648 = !DILocalVariable(name: "ec", arg: 1, scope: !647, file: !3, line: 431, type: !141)
!649 = !DILocation(line: 431, column: 30, scope: !647)
!650 = !DILocalVariable(name: "xec", arg: 2, scope: !647, file: !3, line: 431, type: !132)
!651 = !DILocation(line: 431, column: 37, scope: !647)
!652 = !DILocalVariable(name: "ret", scope: !647, file: !3, line: 433, type: !127)
!653 = !DILocation(line: 433, column: 7, scope: !647)
!654 = !DILocation(line: 435, column: 6, scope: !655)
!655 = distinct !DILexicalBlock(scope: !647, file: !3, line: 435, column: 6)
!656 = !DILocation(line: 435, column: 6, scope: !647)
!657 = !DILocalVariable(name: "ll", scope: !658, file: !3, line: 436, type: !132)
!658 = distinct !DILexicalBlock(scope: !655, file: !3, line: 435, column: 21)
!659 = !DILocation(line: 436, column: 6, scope: !658)
!660 = !DILocation(line: 436, column: 11, scope: !658)
!661 = !DILocation(line: 437, column: 7, scope: !658)
!662 = !DILocation(line: 439, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !658, file: !3, line: 439, column: 7)
!664 = !DILocation(line: 439, column: 10, scope: !663)
!665 = !DILocation(line: 439, column: 7, scope: !658)
!666 = !DILocation(line: 440, column: 4, scope: !663)
!667 = !DILocation(line: 441, column: 12, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !3, line: 441, column: 12)
!669 = !DILocation(line: 441, column: 15, scope: !668)
!670 = !DILocation(line: 441, column: 12, scope: !663)
!671 = !DILocation(line: 442, column: 4, scope: !668)
!672 = !DILocation(line: 444, column: 8, scope: !668)
!673 = !DILocation(line: 445, column: 2, scope: !658)
!674 = !DILocation(line: 446, column: 9, scope: !647)
!675 = !DILocation(line: 446, column: 2, scope: !647)
!676 = distinct !DISubprogram(name: "cat_mc0_mce", scope: !3, file: !3, line: 468, type: !139, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!677 = !DILocalVariable(name: "ec", arg: 1, scope: !676, file: !3, line: 468, type: !141)
!678 = !DILocation(line: 468, column: 29, scope: !676)
!679 = !DILocalVariable(name: "xec", arg: 2, scope: !676, file: !3, line: 468, type: !132)
!680 = !DILocation(line: 468, column: 36, scope: !676)
!681 = !DILocalVariable(name: "r4", scope: !676, file: !3, line: 470, type: !132)
!682 = !DILocation(line: 470, column: 5, scope: !676)
!683 = !DILocation(line: 470, column: 11, scope: !676)
!684 = !DILocalVariable(name: "ret", scope: !676, file: !3, line: 471, type: !127)
!685 = !DILocation(line: 471, column: 7, scope: !676)
!686 = !DILocation(line: 473, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !676, file: !3, line: 473, column: 6)
!688 = !DILocation(line: 473, column: 6, scope: !676)
!689 = !DILocation(line: 475, column: 7, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 475, column: 7)
!691 = distinct !DILexicalBlock(scope: !687, file: !3, line: 473, column: 21)
!692 = !DILocation(line: 475, column: 14, scope: !690)
!693 = !DILocation(line: 475, column: 25, scope: !690)
!694 = !DILocation(line: 475, column: 28, scope: !690)
!695 = !DILocation(line: 475, column: 35, scope: !690)
!696 = !DILocation(line: 475, column: 7, scope: !691)
!697 = !DILocation(line: 476, column: 4, scope: !690)
!698 = !DILocation(line: 478, column: 11, scope: !691)
!699 = !DILocation(line: 478, column: 3, scope: !691)
!700 = !DILocation(line: 481, column: 4, scope: !701)
!701 = distinct !DILexicalBlock(scope: !691, file: !3, line: 478, column: 15)
!702 = !DILocation(line: 483, column: 4, scope: !701)
!703 = !DILocation(line: 485, column: 4, scope: !701)
!704 = !DILocation(line: 486, column: 4, scope: !701)
!705 = !DILocation(line: 488, column: 4, scope: !701)
!706 = !DILocation(line: 489, column: 4, scope: !701)
!707 = !DILocation(line: 491, column: 8, scope: !701)
!708 = !DILocation(line: 492, column: 3, scope: !701)
!709 = !DILocation(line: 493, column: 2, scope: !691)
!710 = !DILocation(line: 493, column: 13, scope: !711)
!711 = distinct !DILexicalBlock(scope: !687, file: !3, line: 493, column: 13)
!712 = !DILocation(line: 493, column: 13, scope: !687)
!713 = !DILocation(line: 495, column: 8, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 495, column: 7)
!715 = distinct !DILexicalBlock(scope: !711, file: !3, line: 493, column: 28)
!716 = !DILocation(line: 495, column: 15, scope: !714)
!717 = !DILocation(line: 495, column: 25, scope: !714)
!718 = !DILocation(line: 495, column: 28, scope: !714)
!719 = !DILocation(line: 495, column: 35, scope: !714)
!720 = !DILocation(line: 495, column: 45, scope: !714)
!721 = !DILocation(line: 495, column: 48, scope: !714)
!722 = !DILocation(line: 495, column: 55, scope: !714)
!723 = !DILocation(line: 495, column: 7, scope: !715)
!724 = !DILocation(line: 496, column: 4, scope: !714)
!725 = !DILocation(line: 498, column: 3, scope: !715)
!726 = !DILocation(line: 500, column: 11, scope: !715)
!727 = !DILocation(line: 500, column: 3, scope: !715)
!728 = !DILocation(line: 502, column: 4, scope: !729)
!729 = distinct !DILexicalBlock(scope: !715, file: !3, line: 500, column: 15)
!730 = !DILocation(line: 503, column: 4, scope: !729)
!731 = !DILocation(line: 505, column: 4, scope: !729)
!732 = !DILocation(line: 506, column: 4, scope: !729)
!733 = !DILocation(line: 508, column: 4, scope: !729)
!734 = !DILocation(line: 509, column: 4, scope: !729)
!735 = !DILocation(line: 511, column: 8, scope: !729)
!736 = !DILocation(line: 512, column: 3, scope: !729)
!737 = !DILocation(line: 513, column: 2, scope: !715)
!738 = !DILocation(line: 514, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !711, file: !3, line: 513, column: 9)
!740 = !DILocation(line: 517, column: 9, scope: !676)
!741 = !DILocation(line: 517, column: 2, scope: !676)
!742 = !DILocation(line: 518, column: 1, scope: !676)
!743 = distinct !DISubprogram(name: "cat_mc1_mce", scope: !3, file: !3, line: 628, type: !139, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!744 = !DILocalVariable(name: "ec", arg: 1, scope: !743, file: !3, line: 628, type: !141)
!745 = !DILocation(line: 628, column: 29, scope: !743)
!746 = !DILocalVariable(name: "xec", arg: 2, scope: !743, file: !3, line: 628, type: !132)
!747 = !DILocation(line: 628, column: 36, scope: !743)
!748 = !DILocalVariable(name: "r4", scope: !743, file: !3, line: 630, type: !132)
!749 = !DILocation(line: 630, column: 5, scope: !743)
!750 = !DILocation(line: 630, column: 13, scope: !743)
!751 = !DILocalVariable(name: "ret", scope: !743, file: !3, line: 631, type: !127)
!752 = !DILocation(line: 631, column: 7, scope: !743)
!753 = !DILocation(line: 633, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !743, file: !3, line: 633, column: 6)
!755 = !DILocation(line: 633, column: 6, scope: !743)
!756 = !DILocation(line: 634, column: 3, scope: !754)
!757 = !DILocation(line: 636, column: 6, scope: !758)
!758 = distinct !DILexicalBlock(scope: !743, file: !3, line: 636, column: 6)
!759 = !DILocation(line: 636, column: 13, scope: !758)
!760 = !DILocation(line: 636, column: 6, scope: !743)
!761 = !DILocation(line: 637, column: 3, scope: !758)
!762 = !DILocation(line: 639, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !743, file: !3, line: 639, column: 6)
!764 = !DILocation(line: 639, column: 9, scope: !763)
!765 = !DILocation(line: 639, column: 6, scope: !743)
!766 = !DILocation(line: 640, column: 3, scope: !763)
!767 = !DILocation(line: 641, column: 11, scope: !768)
!768 = distinct !DILexicalBlock(scope: !763, file: !3, line: 641, column: 11)
!769 = !DILocation(line: 641, column: 14, scope: !768)
!770 = !DILocation(line: 641, column: 11, scope: !763)
!771 = !DILocation(line: 642, column: 3, scope: !768)
!772 = !DILocation(line: 643, column: 11, scope: !773)
!773 = distinct !DILexicalBlock(scope: !768, file: !3, line: 643, column: 11)
!774 = !DILocation(line: 643, column: 15, scope: !773)
!775 = !DILocation(line: 643, column: 11, scope: !768)
!776 = !DILocation(line: 644, column: 3, scope: !773)
!777 = !DILocation(line: 645, column: 11, scope: !778)
!778 = distinct !DILexicalBlock(scope: !773, file: !3, line: 645, column: 11)
!779 = !DILocation(line: 645, column: 15, scope: !778)
!780 = !DILocation(line: 645, column: 11, scope: !773)
!781 = !DILocation(line: 646, column: 3, scope: !778)
!782 = !DILocation(line: 648, column: 7, scope: !778)
!783 = !DILocation(line: 650, column: 9, scope: !743)
!784 = !DILocation(line: 650, column: 2, scope: !743)
!785 = !DILocation(line: 651, column: 1, scope: !743)
!786 = distinct !DISubprogram(name: "f15h_mc0_mce", scope: !3, file: !3, line: 520, type: !139, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!787 = !DILocalVariable(name: "ec", arg: 1, scope: !786, file: !3, line: 520, type: !141)
!788 = !DILocation(line: 520, column: 30, scope: !786)
!789 = !DILocalVariable(name: "xec", arg: 2, scope: !786, file: !3, line: 520, type: !132)
!790 = !DILocation(line: 520, column: 37, scope: !786)
!791 = !DILocalVariable(name: "ret", scope: !786, file: !3, line: 522, type: !127)
!792 = !DILocation(line: 522, column: 7, scope: !786)
!793 = !DILocation(line: 524, column: 6, scope: !794)
!794 = distinct !DILexicalBlock(scope: !786, file: !3, line: 524, column: 6)
!795 = !DILocation(line: 524, column: 6, scope: !786)
!796 = !DILocation(line: 526, column: 11, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !3, line: 524, column: 21)
!798 = !DILocation(line: 526, column: 3, scope: !797)
!799 = !DILocation(line: 528, column: 4, scope: !800)
!800 = distinct !DILexicalBlock(scope: !797, file: !3, line: 526, column: 16)
!801 = !DILocation(line: 529, column: 4, scope: !800)
!802 = !DILocation(line: 532, column: 4, scope: !800)
!803 = !DILocation(line: 533, column: 4, scope: !800)
!804 = !DILocation(line: 537, column: 4, scope: !800)
!805 = !DILocation(line: 538, column: 4, scope: !800)
!806 = !DILocation(line: 541, column: 4, scope: !800)
!807 = !DILocation(line: 542, column: 4, scope: !800)
!808 = !DILocation(line: 545, column: 4, scope: !800)
!809 = !DILocation(line: 546, column: 4, scope: !800)
!810 = !DILocation(line: 549, column: 4, scope: !800)
!811 = !DILocation(line: 550, column: 4, scope: !800)
!812 = !DILocation(line: 553, column: 8, scope: !800)
!813 = !DILocation(line: 554, column: 3, scope: !800)
!814 = !DILocation(line: 555, column: 2, scope: !797)
!815 = !DILocation(line: 555, column: 13, scope: !816)
!816 = distinct !DILexicalBlock(scope: !794, file: !3, line: 555, column: 13)
!817 = !DILocation(line: 555, column: 13, scope: !794)
!818 = !DILocation(line: 557, column: 8, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 557, column: 7)
!820 = distinct !DILexicalBlock(scope: !816, file: !3, line: 555, column: 28)
!821 = !DILocation(line: 557, column: 7, scope: !820)
!822 = !DILocation(line: 558, column: 4, scope: !819)
!823 = !DILocation(line: 560, column: 4, scope: !819)
!824 = !DILocation(line: 561, column: 2, scope: !820)
!825 = !DILocation(line: 561, column: 13, scope: !826)
!826 = distinct !DILexicalBlock(scope: !816, file: !3, line: 561, column: 13)
!827 = !DILocation(line: 561, column: 13, scope: !816)
!828 = !DILocation(line: 562, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 562, column: 7)
!830 = distinct !DILexicalBlock(scope: !826, file: !3, line: 561, column: 28)
!831 = !DILocation(line: 562, column: 11, scope: !829)
!832 = !DILocation(line: 562, column: 7, scope: !830)
!833 = !DILocation(line: 563, column: 4, scope: !829)
!834 = !DILocation(line: 565, column: 8, scope: !829)
!835 = !DILocation(line: 567, column: 2, scope: !830)
!836 = !DILocation(line: 568, column: 7, scope: !826)
!837 = !DILocation(line: 570, column: 9, scope: !786)
!838 = !DILocation(line: 570, column: 2, scope: !786)
!839 = distinct !DISubprogram(name: "f15h_mc1_mce", scope: !3, file: !3, line: 653, type: !139, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!840 = !DILocalVariable(name: "ec", arg: 1, scope: !839, file: !3, line: 653, type: !141)
!841 = !DILocation(line: 653, column: 30, scope: !839)
!842 = !DILocalVariable(name: "xec", arg: 2, scope: !839, file: !3, line: 653, type: !132)
!843 = !DILocation(line: 653, column: 37, scope: !839)
!844 = !DILocalVariable(name: "ret", scope: !839, file: !3, line: 655, type: !127)
!845 = !DILocation(line: 655, column: 7, scope: !839)
!846 = !DILocation(line: 657, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !839, file: !3, line: 657, column: 6)
!848 = !DILocation(line: 657, column: 6, scope: !839)
!849 = !DILocation(line: 658, column: 3, scope: !847)
!850 = !DILocation(line: 660, column: 10, scope: !839)
!851 = !DILocation(line: 660, column: 2, scope: !839)
!852 = !DILocation(line: 662, column: 3, scope: !853)
!853 = distinct !DILexicalBlock(scope: !839, file: !3, line: 660, column: 15)
!854 = !DILocation(line: 663, column: 3, scope: !853)
!855 = !DILocation(line: 666, column: 3, scope: !853)
!856 = !DILocation(line: 667, column: 3, scope: !853)
!857 = !DILocation(line: 670, column: 3, scope: !853)
!858 = !DILocation(line: 671, column: 3, scope: !853)
!859 = !DILocation(line: 674, column: 3, scope: !853)
!860 = !DILocation(line: 675, column: 3, scope: !853)
!861 = !DILocation(line: 678, column: 7, scope: !853)
!862 = !DILocation(line: 679, column: 2, scope: !853)
!863 = !DILocation(line: 680, column: 9, scope: !839)
!864 = !DILocation(line: 680, column: 2, scope: !839)
!865 = !DILocation(line: 681, column: 1, scope: !839)
!866 = distinct !DISubprogram(name: "f15h_mc2_mce", scope: !3, file: !3, line: 749, type: !139, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!867 = !DILocalVariable(name: "ec", arg: 1, scope: !866, file: !3, line: 749, type: !141)
!868 = !DILocation(line: 749, column: 30, scope: !866)
!869 = !DILocalVariable(name: "xec", arg: 2, scope: !866, file: !3, line: 749, type: !132)
!870 = !DILocation(line: 749, column: 37, scope: !866)
!871 = !DILocalVariable(name: "ret", scope: !866, file: !3, line: 751, type: !127)
!872 = !DILocation(line: 751, column: 7, scope: !866)
!873 = !DILocation(line: 753, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !866, file: !3, line: 753, column: 6)
!875 = !DILocation(line: 753, column: 6, scope: !866)
!876 = !DILocation(line: 754, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 754, column: 7)
!878 = distinct !DILexicalBlock(scope: !874, file: !3, line: 753, column: 21)
!879 = !DILocation(line: 754, column: 11, scope: !877)
!880 = !DILocation(line: 754, column: 7, scope: !878)
!881 = !DILocation(line: 755, column: 4, scope: !877)
!882 = !DILocation(line: 756, column: 12, scope: !883)
!883 = distinct !DILexicalBlock(scope: !877, file: !3, line: 756, column: 12)
!884 = !DILocation(line: 756, column: 16, scope: !883)
!885 = !DILocation(line: 756, column: 12, scope: !877)
!886 = !DILocation(line: 757, column: 4, scope: !883)
!887 = !DILocation(line: 759, column: 8, scope: !883)
!888 = !DILocation(line: 760, column: 2, scope: !878)
!889 = !DILocation(line: 760, column: 13, scope: !890)
!890 = distinct !DILexicalBlock(scope: !874, file: !3, line: 760, column: 13)
!891 = !DILocation(line: 760, column: 13, scope: !874)
!892 = !DILocation(line: 761, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !3, line: 761, column: 7)
!894 = distinct !DILexicalBlock(scope: !890, file: !3, line: 760, column: 28)
!895 = !DILocation(line: 761, column: 11, scope: !893)
!896 = !DILocation(line: 761, column: 7, scope: !894)
!897 = !DILocation(line: 762, column: 8, scope: !893)
!898 = !DILocation(line: 762, column: 4, scope: !893)
!899 = !DILocation(line: 764, column: 3, scope: !894)
!900 = !DILocation(line: 765, column: 2, scope: !894)
!901 = !DILocation(line: 765, column: 13, scope: !902)
!902 = distinct !DILexicalBlock(scope: !890, file: !3, line: 765, column: 13)
!903 = !DILocation(line: 765, column: 13, scope: !890)
!904 = !DILocation(line: 766, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !3, line: 765, column: 28)
!906 = !DILocation(line: 766, column: 3, scope: !905)
!907 = !DILocation(line: 768, column: 4, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !3, line: 766, column: 16)
!909 = !DILocation(line: 769, column: 4, scope: !908)
!910 = !DILocation(line: 772, column: 4, scope: !908)
!911 = !DILocation(line: 773, column: 4, scope: !908)
!912 = !DILocation(line: 776, column: 8, scope: !908)
!913 = !DILocation(line: 777, column: 3, scope: !908)
!914 = !DILocation(line: 778, column: 2, scope: !905)
!915 = !DILocation(line: 778, column: 13, scope: !916)
!916 = distinct !DILexicalBlock(scope: !902, file: !3, line: 778, column: 13)
!917 = !DILocation(line: 778, column: 13, scope: !902)
!918 = !DILocation(line: 779, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !3, line: 779, column: 7)
!920 = distinct !DILexicalBlock(scope: !916, file: !3, line: 778, column: 28)
!921 = !DILocation(line: 779, column: 11, scope: !919)
!922 = !DILocation(line: 779, column: 7, scope: !920)
!923 = !DILocation(line: 780, column: 4, scope: !919)
!924 = !DILocation(line: 782, column: 8, scope: !919)
!925 = !DILocation(line: 783, column: 2, scope: !920)
!926 = !DILocation(line: 785, column: 9, scope: !866)
!927 = !DILocation(line: 785, column: 2, scope: !866)
!928 = distinct !DISubprogram(name: "f16h_mc2_mce", scope: !3, file: !3, line: 788, type: !139, scopeLine: 789, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!929 = !DILocalVariable(name: "ec", arg: 1, scope: !928, file: !3, line: 788, type: !141)
!930 = !DILocation(line: 788, column: 30, scope: !928)
!931 = !DILocalVariable(name: "xec", arg: 2, scope: !928, file: !3, line: 788, type: !132)
!932 = !DILocation(line: 788, column: 37, scope: !928)
!933 = !DILocalVariable(name: "r4", scope: !928, file: !3, line: 790, type: !132)
!934 = !DILocation(line: 790, column: 5, scope: !928)
!935 = !DILocation(line: 790, column: 10, scope: !928)
!936 = !DILocation(line: 792, column: 7, scope: !937)
!937 = distinct !DILexicalBlock(scope: !928, file: !3, line: 792, column: 6)
!938 = !DILocation(line: 792, column: 6, scope: !928)
!939 = !DILocation(line: 793, column: 3, scope: !937)
!940 = !DILocation(line: 795, column: 10, scope: !928)
!941 = !DILocation(line: 795, column: 2, scope: !928)
!942 = !DILocation(line: 797, column: 3, scope: !943)
!943 = distinct !DILexicalBlock(scope: !928, file: !3, line: 795, column: 15)
!944 = !DILocation(line: 798, column: 3, scope: !943)
!945 = !DILocation(line: 802, column: 3, scope: !943)
!946 = !DILocation(line: 805, column: 3, scope: !943)
!947 = !DILocation(line: 809, column: 3, scope: !943)
!948 = !DILocation(line: 813, column: 3, scope: !943)
!949 = !DILocation(line: 817, column: 3, scope: !943)
!950 = !DILocation(line: 820, column: 3, scope: !943)
!951 = !DILocation(line: 823, column: 3, scope: !943)
!952 = !DILocation(line: 826, column: 2, scope: !928)
!953 = !DILocation(line: 827, column: 1, scope: !928)
!954 = distinct !DISubprogram(name: "kasan_check_read", scope: !955, file: !955, line: 34, type: !956, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!955 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!956 = !DISubroutineType(types: !957)
!957 = !{!127, !473, !7}
!958 = !DILocalVariable(name: "p", arg: 1, scope: !954, file: !955, line: 34, type: !473)
!959 = !DILocation(line: 34, column: 58, scope: !954)
!960 = !DILocalVariable(name: "size", arg: 2, scope: !954, file: !955, line: 34, type: !7)
!961 = !DILocation(line: 34, column: 74, scope: !954)
!962 = !DILocation(line: 36, column: 2, scope: !954)
!963 = distinct !DISubprogram(name: "kcsan_check_access", scope: !964, file: !964, line: 178, type: !965, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!964 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!965 = !DISubroutineType(types: !966)
!966 = !{null, !473, !476, !67}
!967 = !DILocalVariable(name: "ptr", arg: 1, scope: !963, file: !964, line: 178, type: !473)
!968 = !DILocation(line: 178, column: 60, scope: !963)
!969 = !DILocalVariable(name: "size", arg: 2, scope: !963, file: !964, line: 178, type: !476)
!970 = !DILocation(line: 178, column: 72, scope: !963)
!971 = !DILocalVariable(name: "type", arg: 3, scope: !963, file: !964, line: 179, type: !67)
!972 = !DILocation(line: 179, column: 15, scope: !963)
!973 = !DILocation(line: 179, column: 23, scope: !963)
!974 = distinct !DISubprogram(name: "amd_decode_mce", scope: !3, file: !3, line: 1050, type: !171, scopeLine: 1051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!975 = !DILocalVariable(name: "nb", arg: 1, scope: !974, file: !3, line: 1050, type: !173)
!976 = !DILocation(line: 1050, column: 39, scope: !974)
!977 = !DILocalVariable(name: "val", arg: 2, scope: !974, file: !3, line: 1050, type: !69)
!978 = !DILocation(line: 1050, column: 57, scope: !974)
!979 = !DILocalVariable(name: "data", arg: 3, scope: !974, file: !3, line: 1050, type: !120)
!980 = !DILocation(line: 1050, column: 68, scope: !974)
!981 = !DILocalVariable(name: "m", scope: !974, file: !3, line: 1052, type: !70)
!982 = !DILocation(line: 1052, column: 14, scope: !974)
!983 = !DILocation(line: 1052, column: 32, scope: !974)
!984 = !DILocation(line: 1052, column: 18, scope: !974)
!985 = !DILocalVariable(name: "fam", scope: !974, file: !3, line: 1053, type: !7)
!986 = !DILocation(line: 1053, column: 15, scope: !974)
!987 = !DILocation(line: 1053, column: 32, scope: !974)
!988 = !DILocation(line: 1053, column: 35, scope: !974)
!989 = !DILocation(line: 1053, column: 21, scope: !974)
!990 = !DILocalVariable(name: "ecc", scope: !974, file: !3, line: 1054, type: !67)
!991 = !DILocation(line: 1054, column: 6, scope: !974)
!992 = !DILocation(line: 1056, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1056, column: 6)
!994 = !DILocation(line: 1056, column: 9, scope: !993)
!995 = !DILocation(line: 1056, column: 16, scope: !993)
!996 = !DILocation(line: 1056, column: 6, scope: !974)
!997 = !DILocation(line: 1057, column: 3, scope: !993)
!998 = !DILocation(line: 1059, column: 2, scope: !974)
!999 = !DILocation(line: 1061, column: 2, scope: !974)
!1000 = !DILocation(line: 1072, column: 6, scope: !974)
!1001 = !DILocation(line: 1072, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1072, column: 6)
!1003 = !DILocalVariable(name: "low", scope: !1004, file: !3, line: 1073, type: !105)
!1004 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 1072, column: 38)
!1005 = !DILocation(line: 1073, column: 7, scope: !1004)
!1006 = !DILocalVariable(name: "high", scope: !1004, file: !3, line: 1073, type: !105)
!1007 = !DILocation(line: 1073, column: 12, scope: !1004)
!1008 = !DILocalVariable(name: "addr", scope: !1004, file: !3, line: 1074, type: !105)
!1009 = !DILocation(line: 1074, column: 7, scope: !1004)
!1010 = !DILocation(line: 1074, column: 14, scope: !1004)
!1011 = !DILocalVariable(name: "_err", scope: !1012, file: !3, line: 1076, type: !67)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 1076, column: 8)
!1013 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 1076, column: 7)
!1014 = !DILocation(line: 1076, column: 8, scope: !1012)
!1015 = !DILocalVariable(name: "_l", scope: !1012, file: !3, line: 1076, type: !107)
!1016 = !DILocation(line: 1076, column: 8, scope: !1013)
!1017 = !DILocation(line: 1076, column: 38, scope: !1013)
!1018 = !DILocation(line: 1077, column: 8, scope: !1013)
!1019 = !DILocation(line: 1077, column: 12, scope: !1013)
!1020 = !DILocation(line: 1076, column: 7, scope: !1004)
!1021 = !DILocation(line: 1078, column: 4, scope: !1013)
!1022 = !DILocation(line: 1080, column: 3, scope: !1004)
!1023 = !DILocation(line: 1081, column: 2, scope: !1004)
!1024 = !DILocation(line: 1084, column: 9, scope: !974)
!1025 = !DILocation(line: 1084, column: 12, scope: !974)
!1026 = !DILocation(line: 1084, column: 19, scope: !974)
!1027 = !DILocation(line: 1084, column: 26, scope: !974)
!1028 = !DILocation(line: 1084, column: 8, scope: !974)
!1029 = !DILocation(line: 1084, column: 6, scope: !974)
!1030 = !DILocation(line: 1085, column: 6, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1085, column: 6)
!1032 = !DILocation(line: 1085, column: 6, scope: !974)
!1033 = !DILocation(line: 1086, column: 3, scope: !1031)
!1034 = !DILocation(line: 1088, column: 6, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1088, column: 6)
!1036 = !DILocation(line: 1088, column: 10, scope: !1035)
!1037 = !DILocation(line: 1088, column: 6, scope: !974)
!1038 = !DILocation(line: 1089, column: 3, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 1088, column: 19)
!1040 = !DILocation(line: 1092, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 1092, column: 7)
!1042 = !DILocation(line: 1092, column: 11, scope: !1041)
!1043 = !DILocation(line: 1092, column: 19, scope: !1041)
!1044 = !DILocation(line: 1092, column: 22, scope: !1041)
!1045 = !DILocation(line: 1092, column: 25, scope: !1041)
!1046 = !DILocation(line: 1092, column: 30, scope: !1041)
!1047 = !DILocation(line: 1092, column: 7, scope: !1039)
!1048 = !DILocation(line: 1093, column: 4, scope: !1041)
!1049 = !DILocation(line: 1094, column: 2, scope: !1039)
!1050 = !DILocation(line: 1096, column: 6, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1096, column: 6)
!1052 = !DILocation(line: 1096, column: 10, scope: !1051)
!1053 = !DILocation(line: 1096, column: 6, scope: !974)
!1054 = !DILocation(line: 1097, column: 3, scope: !1051)
!1055 = !DILocation(line: 1099, column: 2, scope: !974)
!1056 = !DILocation(line: 1101, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1101, column: 6)
!1058 = !DILocation(line: 1101, column: 9, scope: !1057)
!1059 = !DILocation(line: 1101, column: 16, scope: !1057)
!1060 = !DILocation(line: 1101, column: 6, scope: !974)
!1061 = !DILocation(line: 1102, column: 3, scope: !1057)
!1062 = !DILocation(line: 1104, column: 6, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1104, column: 6)
!1064 = !DILocation(line: 1104, column: 9, scope: !1063)
!1065 = !DILocation(line: 1104, column: 6, scope: !974)
!1066 = !DILocation(line: 1105, column: 3, scope: !1063)
!1067 = !DILocation(line: 1107, column: 6, scope: !974)
!1068 = !DILocation(line: 1107, column: 6, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1107, column: 6)
!1070 = !DILocation(line: 1108, column: 3, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 1107, column: 38)
!1072 = !DILocation(line: 1110, column: 7, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 1110, column: 7)
!1074 = !DILocation(line: 1110, column: 10, scope: !1073)
!1075 = !DILocation(line: 1110, column: 17, scope: !1073)
!1076 = !DILocation(line: 1110, column: 7, scope: !1071)
!1077 = !DILocation(line: 1111, column: 4, scope: !1073)
!1078 = !DILocation(line: 1113, column: 3, scope: !1071)
!1079 = !DILocation(line: 1115, column: 21, scope: !1071)
!1080 = !DILocation(line: 1115, column: 3, scope: !1071)
!1081 = !DILocation(line: 1116, column: 3, scope: !1071)
!1082 = !DILocation(line: 1119, column: 6, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1119, column: 6)
!1084 = !DILocation(line: 1119, column: 9, scope: !1083)
!1085 = !DILocation(line: 1119, column: 6, scope: !974)
!1086 = !DILocation(line: 1120, column: 3, scope: !1083)
!1087 = !DILocation(line: 1123, column: 15, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1123, column: 6)
!1089 = !DILocation(line: 1123, column: 7, scope: !1088)
!1090 = !DILocation(line: 1123, column: 6, scope: !974)
!1091 = !DILocation(line: 1124, column: 3, scope: !1088)
!1092 = !DILocation(line: 1126, column: 10, scope: !974)
!1093 = !DILocation(line: 1126, column: 13, scope: !974)
!1094 = !DILocation(line: 1126, column: 2, scope: !974)
!1095 = !DILocation(line: 1128, column: 18, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1126, column: 19)
!1097 = !DILocation(line: 1128, column: 3, scope: !1096)
!1098 = !DILocation(line: 1129, column: 3, scope: !1096)
!1099 = !DILocation(line: 1132, column: 18, scope: !1096)
!1100 = !DILocation(line: 1132, column: 3, scope: !1096)
!1101 = !DILocation(line: 1133, column: 3, scope: !1096)
!1102 = !DILocation(line: 1136, column: 18, scope: !1096)
!1103 = !DILocation(line: 1136, column: 3, scope: !1096)
!1104 = !DILocation(line: 1137, column: 3, scope: !1096)
!1105 = !DILocation(line: 1140, column: 18, scope: !1096)
!1106 = !DILocation(line: 1140, column: 3, scope: !1096)
!1107 = !DILocation(line: 1141, column: 3, scope: !1096)
!1108 = !DILocation(line: 1144, column: 18, scope: !1096)
!1109 = !DILocation(line: 1144, column: 3, scope: !1096)
!1110 = !DILocation(line: 1145, column: 3, scope: !1096)
!1111 = !DILocation(line: 1148, column: 18, scope: !1096)
!1112 = !DILocation(line: 1148, column: 3, scope: !1096)
!1113 = !DILocation(line: 1149, column: 3, scope: !1096)
!1114 = !DILocation(line: 1152, column: 18, scope: !1096)
!1115 = !DILocation(line: 1152, column: 3, scope: !1096)
!1116 = !DILocation(line: 1153, column: 3, scope: !1096)
!1117 = !DILocation(line: 1156, column: 3, scope: !1096)
!1118 = !DILocation(line: 1157, column: 2, scope: !1096)
!1119 = !DILabel(scope: !974, name: "err_code", file: !3, line: 1159)
!1120 = !DILocation(line: 1159, column: 2, scope: !974)
!1121 = !DILocation(line: 1160, column: 22, scope: !974)
!1122 = !DILocation(line: 1160, column: 25, scope: !974)
!1123 = !DILocation(line: 1160, column: 32, scope: !974)
!1124 = !DILocation(line: 1160, column: 2, scope: !974)
!1125 = !DILocation(line: 1162, column: 2, scope: !974)
!1126 = !DILocation(line: 1162, column: 5, scope: !974)
!1127 = !DILocation(line: 1162, column: 12, scope: !974)
!1128 = !DILocation(line: 1163, column: 2, scope: !974)
!1129 = !DILocation(line: 1164, column: 1, scope: !974)
!1130 = distinct !DISubprogram(name: "decode_error_status", scope: !3, file: !3, line: 1033, type: !1131, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!113, !70}
!1133 = !DILocalVariable(name: "m", arg: 1, scope: !1130, file: !3, line: 1033, type: !70)
!1134 = !DILocation(line: 1033, column: 52, scope: !1130)
!1135 = !DILocation(line: 1035, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 1035, column: 6)
!1137 = !DILocation(line: 1035, column: 9, scope: !1136)
!1138 = !DILocation(line: 1035, column: 16, scope: !1136)
!1139 = !DILocation(line: 1035, column: 6, scope: !1130)
!1140 = !DILocation(line: 1036, column: 7, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 1036, column: 7)
!1142 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1035, column: 33)
!1143 = !DILocation(line: 1036, column: 10, scope: !1141)
!1144 = !DILocation(line: 1036, column: 17, scope: !1141)
!1145 = !DILocation(line: 1036, column: 7, scope: !1142)
!1146 = !DILocation(line: 1037, column: 4, scope: !1141)
!1147 = !DILocation(line: 1038, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 1038, column: 7)
!1149 = !DILocation(line: 1038, column: 10, scope: !1148)
!1150 = !DILocation(line: 1038, column: 20, scope: !1148)
!1151 = !DILocation(line: 1038, column: 7, scope: !1142)
!1152 = !DILocation(line: 1039, column: 4, scope: !1148)
!1153 = !DILocation(line: 1040, column: 3, scope: !1142)
!1154 = !DILocation(line: 1043, column: 6, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 1043, column: 6)
!1156 = !DILocation(line: 1043, column: 9, scope: !1155)
!1157 = !DILocation(line: 1043, column: 16, scope: !1155)
!1158 = !DILocation(line: 1043, column: 6, scope: !1130)
!1159 = !DILocation(line: 1044, column: 3, scope: !1155)
!1160 = !DILocation(line: 1046, column: 2, scope: !1130)
!1161 = !DILocation(line: 1047, column: 1, scope: !1130)
!1162 = distinct !DISubprogram(name: "paravirt_read_msr_safe", scope: !1163, file: !1163, line: 174, type: !1164, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1163 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!107, !7, !1166}
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!1167 = !DILocalVariable(name: "msr", arg: 1, scope: !1162, file: !1163, line: 174, type: !7)
!1168 = !DILocation(line: 174, column: 51, scope: !1162)
!1169 = !DILocalVariable(name: "err", arg: 2, scope: !1162, file: !1163, line: 174, type: !1166)
!1170 = !DILocation(line: 174, column: 61, scope: !1162)
!1171 = !DILocalVariable(name: "__ret", scope: !1172, file: !1163, line: 176, type: !107)
!1172 = distinct !DILexicalBlock(scope: !1162, file: !1163, line: 176, column: 9)
!1173 = !DILocation(line: 176, column: 9, scope: !1172)
!1174 = !DILocalVariable(name: "__edi", scope: !1172, file: !1163, line: 176, type: !69)
!1175 = !DILocalVariable(name: "__esi", scope: !1172, file: !1163, line: 176, type: !69)
!1176 = !DILocalVariable(name: "__edx", scope: !1172, file: !1163, line: 176, type: !69)
!1177 = !DILocalVariable(name: "__ecx", scope: !1172, file: !1163, line: 176, type: !69)
!1178 = !DILocalVariable(name: "__eax", scope: !1172, file: !1163, line: 176, type: !69)
!1179 = !DILocation(line: 176, column: 9, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !1163, line: 176, column: 9)
!1181 = distinct !DILexicalBlock(scope: !1172, file: !1163, line: 176, column: 9)
!1182 = !{i32 -2145949477, i32 -2145946966, i32 -2145946732, i32 -2145946681, i32 -2145946653, i32 -2145946628, i32 -2145946944, i32 -2145946931, i32 -2145946493, i32 -2145946374, i32 -2145946839, i32 -2145946812, i32 -2145946784, i32 -2145946754}
!1183 = !DILocalVariable(name: "__mask", scope: !1184, file: !1163, line: 176, type: !69)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !1163, line: 176, column: 9)
!1185 = !DILocation(line: 176, column: 9, scope: !1184)
!1186 = !DILocation(line: 176, column: 9, scope: !1181)
!1187 = !DILocation(line: 176, column: 2, scope: !1162)
!1188 = distinct !DISubprogram(name: "decode_smca_error", scope: !3, file: !3, line: 976, type: !1189, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{null, !70}
!1191 = !DILocalVariable(name: "m", arg: 1, scope: !1188, file: !3, line: 976, type: !70)
!1192 = !DILocation(line: 976, column: 43, scope: !1188)
!1193 = !DILocalVariable(name: "hwid", scope: !1188, file: !3, line: 978, type: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "smca_hwid", file: !42, line: 348, size: 96, elements: !1196)
!1196 = !{!1197, !1198, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "bank_type", scope: !1195, file: !42, line: 349, baseType: !7, size: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "hwid_mcatype", scope: !1195, file: !42, line: 350, baseType: !105, size: 32, offset: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1195, file: !42, line: 351, baseType: !132, size: 8, offset: 64)
!1200 = !DILocation(line: 978, column: 20, scope: !1188)
!1201 = !DILocalVariable(name: "bank_type", scope: !1188, file: !3, line: 979, type: !41)
!1202 = !DILocation(line: 979, column: 23, scope: !1188)
!1203 = !DILocalVariable(name: "ip_name", scope: !1188, file: !3, line: 980, type: !113)
!1204 = !DILocation(line: 980, column: 14, scope: !1188)
!1205 = !DILocalVariable(name: "xec", scope: !1188, file: !3, line: 981, type: !132)
!1206 = !DILocation(line: 981, column: 5, scope: !1188)
!1207 = !DILocation(line: 981, column: 11, scope: !1188)
!1208 = !DILocation(line: 983, column: 6, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 983, column: 6)
!1210 = !DILocation(line: 983, column: 9, scope: !1209)
!1211 = !DILocation(line: 983, column: 14, scope: !1209)
!1212 = !DILocation(line: 983, column: 6, scope: !1188)
!1213 = !DILocation(line: 984, column: 3, scope: !1209)
!1214 = !DILocation(line: 986, column: 20, scope: !1188)
!1215 = !DILocation(line: 986, column: 23, scope: !1188)
!1216 = !DILocation(line: 986, column: 9, scope: !1188)
!1217 = !DILocation(line: 986, column: 29, scope: !1188)
!1218 = !DILocation(line: 986, column: 7, scope: !1188)
!1219 = !DILocation(line: 987, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 987, column: 6)
!1221 = !DILocation(line: 987, column: 6, scope: !1188)
!1222 = !DILocation(line: 988, column: 3, scope: !1220)
!1223 = !DILocation(line: 990, column: 14, scope: !1188)
!1224 = !DILocation(line: 990, column: 20, scope: !1188)
!1225 = !DILocation(line: 990, column: 12, scope: !1188)
!1226 = !DILocation(line: 992, column: 6, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 992, column: 6)
!1228 = !DILocation(line: 992, column: 16, scope: !1227)
!1229 = !DILocation(line: 992, column: 6, scope: !1188)
!1230 = !DILocation(line: 993, column: 3, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 992, column: 34)
!1232 = !DILocation(line: 994, column: 3, scope: !1231)
!1233 = !DILocation(line: 997, column: 31, scope: !1188)
!1234 = !DILocation(line: 997, column: 12, scope: !1188)
!1235 = !DILocation(line: 997, column: 10, scope: !1188)
!1236 = !DILocation(line: 999, column: 2, scope: !1188)
!1237 = !DILocation(line: 1002, column: 6, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 1002, column: 6)
!1239 = !DILocation(line: 1002, column: 27, scope: !1238)
!1240 = !DILocation(line: 1002, column: 12, scope: !1238)
!1241 = !DILocation(line: 1002, column: 38, scope: !1238)
!1242 = !DILocation(line: 1002, column: 10, scope: !1238)
!1243 = !DILocation(line: 1002, column: 6, scope: !1188)
!1244 = !DILocation(line: 1003, column: 3, scope: !1238)
!1245 = !DILocation(line: 1005, column: 6, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 1005, column: 6)
!1247 = !DILocation(line: 1005, column: 16, scope: !1246)
!1248 = !DILocation(line: 1005, column: 28, scope: !1246)
!1249 = !DILocation(line: 1005, column: 31, scope: !1246)
!1250 = !DILocation(line: 1005, column: 35, scope: !1246)
!1251 = !DILocation(line: 1005, column: 40, scope: !1246)
!1252 = !DILocation(line: 1005, column: 43, scope: !1246)
!1253 = !DILocation(line: 1005, column: 6, scope: !1188)
!1254 = !DILocation(line: 1006, column: 3, scope: !1246)
!1255 = !DILocation(line: 1006, column: 19, scope: !1246)
!1256 = !DILocation(line: 1006, column: 43, scope: !1246)
!1257 = !DILocation(line: 1007, column: 1, scope: !1188)
!1258 = distinct !DISubprogram(name: "decode_mc0_mce", scope: !3, file: !3, line: 573, type: !1189, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1259 = !DILocalVariable(name: "m", arg: 1, scope: !1258, file: !3, line: 573, type: !70)
!1260 = !DILocation(line: 573, column: 40, scope: !1258)
!1261 = !DILocalVariable(name: "ec", scope: !1258, file: !3, line: 575, type: !141)
!1262 = !DILocation(line: 575, column: 6, scope: !1258)
!1263 = !DILocation(line: 575, column: 11, scope: !1258)
!1264 = !DILocalVariable(name: "xec", scope: !1258, file: !3, line: 576, type: !132)
!1265 = !DILocation(line: 576, column: 5, scope: !1258)
!1266 = !DILocation(line: 576, column: 11, scope: !1258)
!1267 = !DILocation(line: 578, column: 2, scope: !1258)
!1268 = !DILocation(line: 581, column: 6, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 581, column: 6)
!1270 = !DILocation(line: 581, column: 6, scope: !1258)
!1271 = !DILocation(line: 582, column: 7, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 582, column: 7)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 581, column: 21)
!1274 = !DILocation(line: 582, column: 14, scope: !1272)
!1275 = !DILocation(line: 582, column: 7, scope: !1273)
!1276 = !DILocation(line: 583, column: 4, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 582, column: 26)
!1278 = !DILocation(line: 586, column: 4, scope: !1277)
!1279 = !DILocation(line: 588, column: 2, scope: !1273)
!1280 = !DILocation(line: 588, column: 21, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 588, column: 13)
!1282 = !DILocation(line: 588, column: 29, scope: !1281)
!1283 = !DILocation(line: 588, column: 33, scope: !1281)
!1284 = !DILocation(line: 588, column: 13, scope: !1281)
!1285 = !DILocation(line: 588, column: 13, scope: !1269)
!1286 = !DILocation(line: 591, column: 3, scope: !1281)
!1287 = !DILocation(line: 592, column: 1, scope: !1258)
!1288 = distinct !DISubprogram(name: "decode_mc1_mce", scope: !3, file: !3, line: 683, type: !1189, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1289 = !DILocalVariable(name: "m", arg: 1, scope: !1288, file: !3, line: 683, type: !70)
!1290 = !DILocation(line: 683, column: 40, scope: !1288)
!1291 = !DILocalVariable(name: "ec", scope: !1288, file: !3, line: 685, type: !141)
!1292 = !DILocation(line: 685, column: 6, scope: !1288)
!1293 = !DILocation(line: 685, column: 11, scope: !1288)
!1294 = !DILocalVariable(name: "xec", scope: !1288, file: !3, line: 686, type: !132)
!1295 = !DILocation(line: 686, column: 5, scope: !1288)
!1296 = !DILocation(line: 686, column: 11, scope: !1288)
!1297 = !DILocation(line: 688, column: 2, scope: !1288)
!1298 = !DILocation(line: 690, column: 6, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 690, column: 6)
!1300 = !DILocation(line: 690, column: 6, scope: !1288)
!1301 = !DILocation(line: 691, column: 3, scope: !1299)
!1302 = !DILocation(line: 693, column: 11, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 693, column: 11)
!1304 = !DILocation(line: 693, column: 11, scope: !1299)
!1305 = !DILocalVariable(name: "k8", scope: !1306, file: !3, line: 694, type: !127)
!1306 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 693, column: 26)
!1307 = !DILocation(line: 694, column: 8, scope: !1306)
!1308 = !DILocation(line: 694, column: 28, scope: !1306)
!1309 = !DILocation(line: 694, column: 14, scope: !1306)
!1310 = !DILocation(line: 694, column: 32, scope: !1306)
!1311 = !DILocation(line: 694, column: 39, scope: !1306)
!1312 = !DILocation(line: 694, column: 43, scope: !1306)
!1313 = !DILocation(line: 694, column: 46, scope: !1306)
!1314 = !DILocation(line: 694, column: 53, scope: !1306)
!1315 = !DILocation(line: 0, scope: !1306)
!1316 = !DILocation(line: 696, column: 3, scope: !1306)
!1317 = !DILocation(line: 697, column: 2, scope: !1306)
!1318 = !DILocation(line: 697, column: 13, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 697, column: 13)
!1320 = !DILocation(line: 697, column: 13, scope: !1303)
!1321 = !DILocation(line: 698, column: 7, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 698, column: 7)
!1323 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 697, column: 28)
!1324 = !DILocation(line: 698, column: 11, scope: !1322)
!1325 = !DILocation(line: 698, column: 7, scope: !1323)
!1326 = !DILocation(line: 699, column: 4, scope: !1322)
!1327 = !DILocation(line: 701, column: 4, scope: !1322)
!1328 = !DILocation(line: 702, column: 2, scope: !1323)
!1329 = !DILocation(line: 702, column: 21, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 702, column: 13)
!1331 = !DILocation(line: 702, column: 29, scope: !1330)
!1332 = !DILocation(line: 702, column: 33, scope: !1330)
!1333 = !DILocation(line: 702, column: 13, scope: !1330)
!1334 = !DILocation(line: 702, column: 13, scope: !1319)
!1335 = !DILocation(line: 705, column: 3, scope: !1330)
!1336 = !DILocation(line: 707, column: 2, scope: !1288)
!1337 = !DILabel(scope: !1288, name: "wrong_mc1_mce", file: !3, line: 709)
!1338 = !DILocation(line: 709, column: 1, scope: !1288)
!1339 = !DILocation(line: 710, column: 2, scope: !1288)
!1340 = !DILocation(line: 711, column: 1, scope: !1288)
!1341 = distinct !DISubprogram(name: "decode_mc2_mce", scope: !3, file: !3, line: 829, type: !1189, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1342 = !DILocalVariable(name: "m", arg: 1, scope: !1341, file: !3, line: 829, type: !70)
!1343 = !DILocation(line: 829, column: 40, scope: !1341)
!1344 = !DILocalVariable(name: "ec", scope: !1341, file: !3, line: 831, type: !141)
!1345 = !DILocation(line: 831, column: 6, scope: !1341)
!1346 = !DILocation(line: 831, column: 11, scope: !1341)
!1347 = !DILocalVariable(name: "xec", scope: !1341, file: !3, line: 832, type: !132)
!1348 = !DILocation(line: 832, column: 5, scope: !1341)
!1349 = !DILocation(line: 832, column: 11, scope: !1341)
!1350 = !DILocation(line: 834, column: 2, scope: !1341)
!1351 = !DILocation(line: 836, column: 15, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 836, column: 6)
!1353 = !DILocation(line: 836, column: 23, scope: !1352)
!1354 = !DILocation(line: 836, column: 27, scope: !1352)
!1355 = !DILocation(line: 836, column: 7, scope: !1352)
!1356 = !DILocation(line: 836, column: 6, scope: !1341)
!1357 = !DILocation(line: 837, column: 3, scope: !1352)
!1358 = !DILocation(line: 838, column: 1, scope: !1341)
!1359 = distinct !DISubprogram(name: "decode_mc3_mce", scope: !3, file: !3, line: 840, type: !1189, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1360 = !DILocalVariable(name: "m", arg: 1, scope: !1359, file: !3, line: 840, type: !70)
!1361 = !DILocation(line: 840, column: 40, scope: !1359)
!1362 = !DILocalVariable(name: "ec", scope: !1359, file: !3, line: 842, type: !141)
!1363 = !DILocation(line: 842, column: 6, scope: !1359)
!1364 = !DILocation(line: 842, column: 11, scope: !1359)
!1365 = !DILocalVariable(name: "xec", scope: !1359, file: !3, line: 843, type: !132)
!1366 = !DILocation(line: 843, column: 5, scope: !1359)
!1367 = !DILocation(line: 843, column: 11, scope: !1359)
!1368 = !DILocation(line: 845, column: 20, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 845, column: 6)
!1370 = !DILocation(line: 845, column: 6, scope: !1369)
!1371 = !DILocation(line: 845, column: 24, scope: !1369)
!1372 = !DILocation(line: 845, column: 6, scope: !1359)
!1373 = !DILocation(line: 846, column: 3, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 845, column: 33)
!1375 = !DILocation(line: 848, column: 3, scope: !1374)
!1376 = !DILocation(line: 851, column: 2, scope: !1359)
!1377 = !DILocation(line: 853, column: 6, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 853, column: 6)
!1379 = !DILocation(line: 853, column: 10, scope: !1378)
!1380 = !DILocation(line: 853, column: 6, scope: !1359)
!1381 = !DILocalVariable(name: "r4", scope: !1382, file: !3, line: 854, type: !132)
!1382 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 853, column: 18)
!1383 = !DILocation(line: 854, column: 6, scope: !1382)
!1384 = !DILocation(line: 854, column: 11, scope: !1382)
!1385 = !DILocation(line: 856, column: 8, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 856, column: 7)
!1387 = !DILocation(line: 856, column: 22, scope: !1386)
!1388 = !DILocation(line: 856, column: 26, scope: !1386)
!1389 = !DILocation(line: 856, column: 29, scope: !1386)
!1390 = !DILocation(line: 856, column: 39, scope: !1386)
!1391 = !DILocation(line: 856, column: 42, scope: !1386)
!1392 = !DILocation(line: 856, column: 45, scope: !1386)
!1393 = !DILocation(line: 856, column: 7, scope: !1382)
!1394 = !DILocation(line: 857, column: 4, scope: !1386)
!1395 = !DILocation(line: 859, column: 3, scope: !1382)
!1396 = !DILocation(line: 860, column: 2, scope: !1382)
!1397 = !DILocation(line: 861, column: 3, scope: !1378)
!1398 = !DILocation(line: 863, column: 2, scope: !1359)
!1399 = !DILabel(scope: !1359, name: "wrong_mc3_mce", file: !3, line: 865)
!1400 = !DILocation(line: 865, column: 2, scope: !1359)
!1401 = !DILocation(line: 866, column: 2, scope: !1359)
!1402 = !DILocation(line: 867, column: 1, scope: !1359)
!1403 = distinct !DISubprogram(name: "decode_mc4_mce", scope: !3, file: !3, line: 869, type: !1189, scopeLine: 870, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1404 = !DILocalVariable(name: "m", arg: 1, scope: !1403, file: !3, line: 869, type: !70)
!1405 = !DILocation(line: 869, column: 40, scope: !1403)
!1406 = !DILocalVariable(name: "fam", scope: !1403, file: !3, line: 871, type: !7)
!1407 = !DILocation(line: 871, column: 15, scope: !1403)
!1408 = !DILocation(line: 871, column: 32, scope: !1403)
!1409 = !DILocation(line: 871, column: 35, scope: !1403)
!1410 = !DILocation(line: 871, column: 21, scope: !1403)
!1411 = !DILocalVariable(name: "node_id", scope: !1403, file: !3, line: 872, type: !67)
!1412 = !DILocation(line: 872, column: 6, scope: !1403)
!1413 = !DILocation(line: 872, column: 30, scope: !1403)
!1414 = !DILocation(line: 872, column: 33, scope: !1403)
!1415 = !DILocation(line: 872, column: 16, scope: !1403)
!1416 = !DILocalVariable(name: "ec", scope: !1403, file: !3, line: 873, type: !141)
!1417 = !DILocation(line: 873, column: 6, scope: !1403)
!1418 = !DILocation(line: 873, column: 11, scope: !1403)
!1419 = !DILocalVariable(name: "xec", scope: !1403, file: !3, line: 874, type: !132)
!1420 = !DILocation(line: 874, column: 5, scope: !1403)
!1421 = !DILocation(line: 874, column: 11, scope: !1403)
!1422 = !DILocalVariable(name: "offset", scope: !1403, file: !3, line: 875, type: !132)
!1423 = !DILocation(line: 875, column: 5, scope: !1403)
!1424 = !DILocation(line: 877, column: 2, scope: !1403)
!1425 = !DILocation(line: 879, column: 10, scope: !1403)
!1426 = !DILocation(line: 879, column: 2, scope: !1403)
!1427 = !DILocation(line: 883, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 883, column: 7)
!1429 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 879, column: 15)
!1430 = !DILocation(line: 883, column: 11, scope: !1428)
!1431 = !DILocation(line: 883, column: 18, scope: !1428)
!1432 = !DILocation(line: 883, column: 21, scope: !1428)
!1433 = !DILocation(line: 883, column: 25, scope: !1428)
!1434 = !DILocation(line: 883, column: 7, scope: !1429)
!1435 = !DILocation(line: 885, column: 8, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 885, column: 8)
!1437 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 883, column: 33)
!1438 = !DILocation(line: 885, column: 12, scope: !1436)
!1439 = !DILocation(line: 885, column: 8, scope: !1437)
!1440 = !DILocation(line: 886, column: 5, scope: !1436)
!1441 = !DILocation(line: 888, column: 4, scope: !1437)
!1442 = !DILocation(line: 890, column: 8, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 890, column: 8)
!1444 = !DILocation(line: 890, column: 8, scope: !1437)
!1445 = !DILocation(line: 891, column: 5, scope: !1443)
!1446 = !DILocation(line: 891, column: 21, scope: !1443)
!1447 = !DILocation(line: 891, column: 30, scope: !1443)
!1448 = !DILocation(line: 892, column: 4, scope: !1437)
!1449 = !DILocation(line: 894, column: 3, scope: !1429)
!1450 = !DILocation(line: 897, column: 7, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 897, column: 7)
!1452 = !DILocation(line: 897, column: 7, scope: !1429)
!1453 = !DILocation(line: 898, column: 4, scope: !1451)
!1454 = !DILocation(line: 899, column: 12, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 899, column: 12)
!1456 = !DILocation(line: 899, column: 12, scope: !1451)
!1457 = !DILocation(line: 900, column: 4, scope: !1455)
!1458 = !DILocation(line: 902, column: 4, scope: !1455)
!1459 = !DILocation(line: 903, column: 3, scope: !1429)
!1460 = !DILocation(line: 906, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 906, column: 7)
!1462 = !DILocation(line: 906, column: 11, scope: !1461)
!1463 = !DILocation(line: 906, column: 19, scope: !1461)
!1464 = !DILocation(line: 906, column: 22, scope: !1461)
!1465 = !DILocation(line: 906, column: 26, scope: !1461)
!1466 = !DILocation(line: 906, column: 7, scope: !1429)
!1467 = !DILocation(line: 907, column: 4, scope: !1461)
!1468 = !DILocation(line: 909, column: 4, scope: !1461)
!1469 = !DILocation(line: 910, column: 3, scope: !1429)
!1470 = !DILocation(line: 913, column: 10, scope: !1429)
!1471 = !DILocation(line: 914, column: 3, scope: !1429)
!1472 = !DILocation(line: 917, column: 3, scope: !1429)
!1473 = !DILocation(line: 920, column: 2, scope: !1403)
!1474 = !DILocation(line: 921, column: 2, scope: !1403)
!1475 = !DILabel(scope: !1403, name: "wrong_mc4_mce", file: !3, line: 923)
!1476 = !DILocation(line: 923, column: 2, scope: !1403)
!1477 = !DILocation(line: 924, column: 2, scope: !1403)
!1478 = !DILocation(line: 925, column: 1, scope: !1403)
!1479 = distinct !DISubprogram(name: "decode_mc5_mce", scope: !3, file: !3, line: 927, type: !1189, scopeLine: 928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1480 = !DILocalVariable(name: "m", arg: 1, scope: !1479, file: !3, line: 927, type: !70)
!1481 = !DILocation(line: 927, column: 40, scope: !1479)
!1482 = !DILocalVariable(name: "fam", scope: !1479, file: !3, line: 929, type: !7)
!1483 = !DILocation(line: 929, column: 15, scope: !1479)
!1484 = !DILocation(line: 929, column: 32, scope: !1479)
!1485 = !DILocation(line: 929, column: 35, scope: !1479)
!1486 = !DILocation(line: 929, column: 21, scope: !1479)
!1487 = !DILocalVariable(name: "ec", scope: !1479, file: !3, line: 930, type: !141)
!1488 = !DILocation(line: 930, column: 6, scope: !1479)
!1489 = !DILocation(line: 930, column: 11, scope: !1479)
!1490 = !DILocalVariable(name: "xec", scope: !1479, file: !3, line: 931, type: !132)
!1491 = !DILocation(line: 931, column: 5, scope: !1479)
!1492 = !DILocation(line: 931, column: 11, scope: !1479)
!1493 = !DILocation(line: 933, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 933, column: 6)
!1495 = !DILocation(line: 933, column: 10, scope: !1494)
!1496 = !DILocation(line: 933, column: 17, scope: !1494)
!1497 = !DILocation(line: 933, column: 20, scope: !1494)
!1498 = !DILocation(line: 933, column: 24, scope: !1494)
!1499 = !DILocation(line: 933, column: 6, scope: !1479)
!1500 = !DILocation(line: 934, column: 3, scope: !1494)
!1501 = !DILocation(line: 936, column: 2, scope: !1479)
!1502 = !DILocation(line: 938, column: 6, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 938, column: 6)
!1504 = !DILocation(line: 938, column: 6, scope: !1479)
!1505 = !DILocation(line: 939, column: 7, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !3, line: 939, column: 7)
!1507 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 938, column: 21)
!1508 = !DILocation(line: 939, column: 11, scope: !1506)
!1509 = !DILocation(line: 939, column: 7, scope: !1507)
!1510 = !DILocation(line: 940, column: 4, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 939, column: 20)
!1512 = !DILocation(line: 941, column: 4, scope: !1511)
!1513 = !DILocation(line: 943, column: 4, scope: !1506)
!1514 = !DILocation(line: 946, column: 6, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 946, column: 6)
!1516 = !DILocation(line: 946, column: 10, scope: !1515)
!1517 = !DILocation(line: 946, column: 17, scope: !1515)
!1518 = !DILocation(line: 946, column: 20, scope: !1515)
!1519 = !DILocation(line: 946, column: 24, scope: !1515)
!1520 = !DILocation(line: 946, column: 6, scope: !1479)
!1521 = !DILocation(line: 947, column: 3, scope: !1515)
!1522 = !DILocation(line: 948, column: 11, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 948, column: 11)
!1524 = !DILocation(line: 948, column: 15, scope: !1523)
!1525 = !DILocation(line: 948, column: 11, scope: !1515)
!1526 = !DILocation(line: 949, column: 3, scope: !1523)
!1527 = !DILocation(line: 951, column: 3, scope: !1523)
!1528 = !DILocation(line: 953, column: 2, scope: !1479)
!1529 = !DILabel(scope: !1479, name: "wrong_mc5_mce", file: !3, line: 955)
!1530 = !DILocation(line: 955, column: 2, scope: !1479)
!1531 = !DILocation(line: 956, column: 2, scope: !1479)
!1532 = !DILocation(line: 957, column: 1, scope: !1479)
!1533 = distinct !DISubprogram(name: "decode_mc6_mce", scope: !3, file: !3, line: 959, type: !1189, scopeLine: 960, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1534 = !DILocalVariable(name: "m", arg: 1, scope: !1533, file: !3, line: 959, type: !70)
!1535 = !DILocation(line: 959, column: 40, scope: !1533)
!1536 = !DILocalVariable(name: "xec", scope: !1533, file: !3, line: 961, type: !132)
!1537 = !DILocation(line: 961, column: 5, scope: !1533)
!1538 = !DILocation(line: 961, column: 11, scope: !1533)
!1539 = !DILocation(line: 963, column: 2, scope: !1533)
!1540 = !DILocation(line: 965, column: 6, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 965, column: 6)
!1542 = !DILocation(line: 965, column: 10, scope: !1541)
!1543 = !DILocation(line: 965, column: 6, scope: !1533)
!1544 = !DILocation(line: 966, column: 3, scope: !1541)
!1545 = !DILocation(line: 968, column: 2, scope: !1533)
!1546 = !DILocation(line: 969, column: 2, scope: !1533)
!1547 = !DILabel(scope: !1533, name: "wrong_mc6_mce", file: !3, line: 971)
!1548 = !DILocation(line: 971, column: 2, scope: !1533)
!1549 = !DILocation(line: 972, column: 2, scope: !1533)
!1550 = !DILocation(line: 973, column: 1, scope: !1533)
!1551 = distinct !DISubprogram(name: "amd_decode_err_code", scope: !3, file: !3, line: 1009, type: !1552, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !126)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !141}
!1554 = !DILocalVariable(name: "ec", arg: 1, scope: !1551, file: !3, line: 1009, type: !141)
!1555 = !DILocation(line: 1009, column: 44, scope: !1551)
!1556 = !DILocation(line: 1011, column: 6, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 1011, column: 6)
!1558 = !DILocation(line: 1011, column: 6, scope: !1551)
!1559 = !DILocation(line: 1012, column: 3, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1011, column: 21)
!1561 = !DILocation(line: 1013, column: 3, scope: !1560)
!1562 = !DILocation(line: 1016, column: 2, scope: !1551)
!1563 = !DILocation(line: 1018, column: 6, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 1018, column: 6)
!1565 = !DILocation(line: 1018, column: 6, scope: !1551)
!1566 = !DILocation(line: 1019, column: 3, scope: !1564)
!1567 = !DILocation(line: 1021, column: 3, scope: !1564)
!1568 = !DILocation(line: 1023, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1551, file: !3, line: 1023, column: 6)
!1570 = !DILocation(line: 1023, column: 20, scope: !1569)
!1571 = !DILocation(line: 1023, column: 23, scope: !1569)
!1572 = !DILocation(line: 1023, column: 6, scope: !1551)
!1573 = !DILocation(line: 1024, column: 3, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 1023, column: 38)
!1575 = !DILocation(line: 1026, column: 7, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1026, column: 7)
!1577 = !DILocation(line: 1026, column: 7, scope: !1574)
!1578 = !DILocation(line: 1027, column: 4, scope: !1576)
!1579 = !DILocation(line: 1028, column: 2, scope: !1574)
!1580 = !DILocation(line: 1030, column: 2, scope: !1551)
!1581 = !DILocation(line: 1031, column: 1, scope: !1551)
