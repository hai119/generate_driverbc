; ModuleID = '../bcout/drivers/clocksource/hyperv_timer.llvm.bc'
source_filename = "drivers/clocksource/hyperv_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.clock_event_device = type { void (%struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)*, i64, i64, i64, i32, i32, i32, i32, i64, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)*, void (%struct.cpumask*)*, void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)*, i64, i64, i8*, i32, i32, i32, %struct.cpumask*, %struct.list_head, %struct.module*, [48 x i8] }
%struct.cpumask = type { [1 x i64] }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.ms_hyperv_info = type { i32, i32, i32, i32, i32, i32 }
%union.anon = type { %struct.ms_hyperv_tsc_page, [4072 x i8] }
%struct.ms_hyperv_tsc_page = type { i32, i32, i64, i64 }
%struct.clocksource = type { i64 (%struct.clocksource*)*, i64, i32, i32, i64, i32, i64, i8*, %struct.list_head, i32, i32, i64, i32 (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, void (%struct.clocksource*)*, %struct.list_head, i64, i64, %struct.module* }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.60, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.3, [0 x i64] }
%struct.anon.3 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.4, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.4 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
%struct.page = type { i64, %union.anon.5, %union.anon.40, %struct.atomic_t, [8 x i8] }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.14, %struct.list_head, %struct.list_head, %union.anon.15 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.9, i8* }
%union.anon.9 = type { i64 }
%struct.lockref = type { %union.anon.11 }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.vfsmount = type opaque
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%union.anon.14 = type { %struct.list_head }
%union.anon.15 = type { %struct.hlist_node }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
%struct.xattr_handler = type opaque
%struct.hlist_bl_head = type { %struct.hlist_bl_node* }
%struct.block_device = type opaque
%struct.mtd_info = type opaque
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%union.anon.62 = type { %struct.callback_head }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.16 }
%union.anon.16 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.17 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.17 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.fsnotify_mark_connector = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.40 = type { %struct.atomic_t }
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
%struct.file = type { %union.anon.8, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.8 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.27 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.27 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.19, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.20, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.21, %union.anon.25, %struct.key_restriction* }
%union.anon.19 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.20 = type { i64 }
%union.anon.21 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.22, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.22 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.25 = type { %union.key_payload }
%union.key_payload = type { [4 x i8*] }
%struct.key_restriction = type { i32 (%struct.key*, %struct.key_type*, %union.key_payload*, %struct.key*)*, %struct.key*, %struct.key_type* }
%struct.nameidata = type opaque
%struct.fs_struct = type opaque
%struct.files_struct = type opaque
%struct.io_uring_task = type opaque
%struct.nsproxy = type opaque
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, %struct.task_struct*, %struct.sigpending, %struct.hlist_head, i32, i32, %struct.task_struct*, i32, i32, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x %struct.pid*], %struct.pid*, i32, %struct.tty_struct*, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, %struct.mm_struct*, %struct.mutex, %struct.mutex }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.tty_struct = type opaque
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.46, %union.anon.47, i32 }
%struct.request_queue = type opaque
%union.anon.46 = type { %struct.list_head }
%union.anon.47 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.52 }
%struct.anon.52 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.rseq = type { i32, i32, %union.anon.59, i32, [12 x i8] }
%union.anon.59 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.60 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%union.hv_stimer_config = type { i64 }
%struct.anon.65 = type { i64 }

@hv_clock_event = internal global %struct.clock_event_device* null, align 8, !dbg !0
@direct_mode_enabled = internal global i8 0, align 1, !dbg !299
@ms_hyperv = external dso_local global %struct.ms_hyperv_info, align 4
@stimer0_irq = internal global i32 0, align 4, !dbg !303
@stimer0_vector = internal global i32 0, align 4, !dbg !305
@.str = private unnamed_addr constant [35 x i8] c"clockevents/hyperv/stimer:starting\00", align 1
@stimer0_message_sint = internal global i32 0, align 4, !dbg !307
@__cpu_present_mask = external dso_local global %struct.cpumask, align 8
@tsc_pg = internal global %union.anon zeroinitializer, align 4096, !dbg !314
@hv_read_reference_counter = dso_local global i64 ()* null, align 8, !dbg !309
@hyperv_cs_msr = internal global %struct.clocksource { i64 (%struct.clocksource*)* @read_hv_clock_msr_cs, i64 -1, i32 0, i32 0, i64 0, i32 0, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), %struct.list_head zeroinitializer, i32 250, i32 0, i64 1, i32 (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, %struct.list_head zeroinitializer, i64 0, i64 0, %struct.module* null }, align 8, !dbg !373
@hv_sched_clock_offset = internal global i64 0, section ".data..ro_after_init", align 8, !dbg !297
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Hyper-V clockevent\00", align 1
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@hyperv_cs_tsc = internal global %struct.clocksource { i64 (%struct.clocksource*)* @read_hv_clock_tsc_cs, i64 -1, i32 0, i32 0, i64 0, i32 0, i64 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), %struct.list_head zeroinitializer, i32 250, i32 0, i64 1, i32 (%struct.clocksource*)* @hv_cs_enable, void (%struct.clocksource*)* null, void (%struct.clocksource*)* @suspend_hv_clock_tsc, void (%struct.clocksource*)* @resume_hv_clock_tsc, void (%struct.clocksource*)* null, void (%struct.clocksource*)* null, %struct.list_head zeroinitializer, i64 0, i64 0, %struct.module* null }, align 8, !dbg !336
@phys_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"hyperv_clocksource_tsc_page\00", align 1
@vclocks_used = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"hyperv_clocksource_msr\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_stimer0_isr() #0 !dbg !381 {
entry:
  %ce = alloca %struct.clock_event_device*, align 8
  %tmp = alloca %struct.clock_event_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.clock_event_device*, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %ce, metadata !385, metadata !DIExpression()), !dbg !386
  br label %do.body, !dbg !387

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !390, metadata !DIExpression()), !dbg !394
  store i8* null, i8** %__vpp_verify, align 8, !dbg !394
  %0 = load i8*, i8** %__vpp_verify, align 8, !dbg !394
  br label %do.end, !dbg !394

do.end:                                           ; preds = %do.body
  %1 = load %struct.clock_event_device*, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !387
  store %struct.clock_event_device* %1, %struct.clock_event_device** %tmp1, align 8, !dbg !394
  %2 = load %struct.clock_event_device*, %struct.clock_event_device** %tmp1, align 8, !dbg !387
  store %struct.clock_event_device* %2, %struct.clock_event_device** %tmp, align 8, !dbg !395
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** %tmp, align 8, !dbg !395
  store %struct.clock_event_device* %3, %struct.clock_event_device** %ce, align 8, !dbg !396
  %4 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !397
  %event_handler = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %4, i32 0, i32 0, !dbg !398
  %5 = load void (%struct.clock_event_device*)*, void (%struct.clock_event_device*)** %event_handler, align 64, !dbg !398
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !399
  call void %5(%struct.clock_event_device* %6) #6, !dbg !397
  ret void, !dbg !400
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_stimer_cleanup(i32 %cpu) #0 !dbg !401 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %ce = alloca %struct.clock_event_device*, align 8
  %tmp = alloca %struct.clock_event_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.clock_event_device*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !404, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %ce, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !408
  %tobool = icmp ne %struct.clock_event_device* %0, null, !dbg !408
  br i1 %tobool, label %if.end, label %if.then, !dbg !410

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !411
  br label %return, !dbg !411

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !412
  br label %do.body, !dbg !414

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !416, metadata !DIExpression()), !dbg !418
  store i8* null, i8** %__vpp_verify, align 8, !dbg !418
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !418
  br label %do.end, !dbg !418

do.end:                                           ; preds = %do.body
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !414
  store %struct.clock_event_device* %3, %struct.clock_event_device** %tmp1, align 8, !dbg !418
  %4 = load %struct.clock_event_device*, %struct.clock_event_device** %tmp1, align 8, !dbg !414
  store %struct.clock_event_device* %4, %struct.clock_event_device** %tmp, align 8, !dbg !412
  %5 = load %struct.clock_event_device*, %struct.clock_event_device** %tmp, align 8, !dbg !412
  store %struct.clock_event_device* %5, %struct.clock_event_device** %ce, align 8, !dbg !419
  %6 = load i8, i8* @direct_mode_enabled, align 1, !dbg !420
  %tobool2 = trunc i8 %6 to i1, !dbg !420
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !422

if.then3:                                         ; preds = %do.end
  %7 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !423
  %call = call i32 @hv_ce_shutdown(%struct.clock_event_device* %7) #6, !dbg !424
  br label %if.end5, !dbg !424

if.else:                                          ; preds = %do.end
  %8 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !425
  %9 = load i32, i32* %cpu.addr, align 4, !dbg !426
  %call4 = call i32 @clockevents_unbind_device(%struct.clock_event_device* %8, i32 %9) #6, !dbg !427
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  store i32 0, i32* %retval, align 4, !dbg !428
  br label %return, !dbg !428

return:                                           ; preds = %if.end5, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !429
  ret i32 %10, !dbg !429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_ce_shutdown(%struct.clock_event_device* %evt) #0 !dbg !430 {
entry:
  %evt.addr = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !431, metadata !DIExpression()), !dbg !432
  call void @wrmsrl(i32 1073742001, i64 0) #6, !dbg !433
  call void @wrmsrl(i32 1073742000, i64 0) #6, !dbg !434
  %0 = load i8, i8* @direct_mode_enabled, align 1, !dbg !435
  %tobool = trunc i8 %0 to i1, !dbg !435
  br i1 %tobool, label %if.then, label %if.end, !dbg !437

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @stimer0_irq, align 4, !dbg !438
  call void @hv_disable_stimer0_percpu_irq(i32 %1) #6, !dbg !439
  br label %if.end, !dbg !439

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !440
}

; Function Attrs: noredzone
declare dso_local i32 @clockevents_unbind_device(%struct.clock_event_device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hv_stimer_alloc() #0 !dbg !441 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !444, metadata !DIExpression()), !dbg !445
  store i32 0, i32* %ret, align 4, !dbg !445
  %0 = load i32, i32* getelementptr inbounds (%struct.ms_hyperv_info, %struct.ms_hyperv_info* @ms_hyperv, i32 0, i32 0), align 4, !dbg !446
  %conv = zext i32 %0 to i64, !dbg !448
  %and = and i64 %conv, 8, !dbg !449
  %tobool = icmp ne i64 %and, 0, !dbg !449
  br i1 %tobool, label %if.end, label %if.then, !dbg !450

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !451
  br label %return, !dbg !451

if.end:                                           ; preds = %entry
  %call = call i8* @__alloc_percpu(i64 256, i64 64) #6, !dbg !452
  %1 = bitcast i8* %call to %struct.clock_event_device*, !dbg !452
  store %struct.clock_event_device* %1, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !453
  %2 = load %struct.clock_event_device*, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !454
  %tobool1 = icmp ne %struct.clock_event_device* %2, null, !dbg !454
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !456

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !457
  br label %return, !dbg !457

if.end3:                                          ; preds = %if.end
  %3 = load i32, i32* getelementptr inbounds (%struct.ms_hyperv_info, %struct.ms_hyperv_info* @ms_hyperv, i32 0, i32 1), align 4, !dbg !458
  %conv4 = zext i32 %3 to i64, !dbg !459
  %and5 = and i64 %conv4, 524288, !dbg !460
  %tobool6 = icmp ne i64 %and5, 0, !dbg !459
  %frombool = zext i1 %tobool6 to i8, !dbg !461
  store i8 %frombool, i8* @direct_mode_enabled, align 1, !dbg !461
  %4 = load i8, i8* @direct_mode_enabled, align 1, !dbg !462
  %tobool7 = trunc i8 %4 to i1, !dbg !462
  br i1 %tobool7, label %if.then8, label %if.end17, !dbg !464

if.then8:                                         ; preds = %if.end3
  %call9 = call i32 @hv_setup_stimer0_irq(i32* @stimer0_irq, i32* @stimer0_vector, void ()* @hv_stimer0_isr) #6, !dbg !465
  store i32 %call9, i32* %ret, align 4, !dbg !467
  %5 = load i32, i32* %ret, align 4, !dbg !468
  %tobool10 = icmp ne i32 %5, 0, !dbg !468
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !470

if.then11:                                        ; preds = %if.then8
  br label %free_percpu, !dbg !471

if.end12:                                         ; preds = %if.then8
  %call13 = call i32 @cpuhp_setup_state(i32 130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 (i32)* @hv_stimer_init, i32 (i32)* @hv_stimer_cleanup) #6, !dbg !472
  store i32 %call13, i32* %ret, align 4, !dbg !473
  %6 = load i32, i32* %ret, align 4, !dbg !474
  %cmp = icmp slt i32 %6, 0, !dbg !476
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !477

if.then15:                                        ; preds = %if.end12
  br label %free_stimer0_irq, !dbg !478

if.end16:                                         ; preds = %if.end12
  br label %if.end17, !dbg !479

if.end17:                                         ; preds = %if.end16, %if.end3
  %7 = load i32, i32* %ret, align 4, !dbg !480
  store i32 %7, i32* %retval, align 4, !dbg !481
  br label %return, !dbg !481

free_stimer0_irq:                                 ; preds = %if.then15
  call void @llvm.dbg.label(metadata !482), !dbg !483
  %8 = load i32, i32* @stimer0_irq, align 4, !dbg !484
  call void @hv_remove_stimer0_irq(i32 %8) #6, !dbg !485
  store i32 0, i32* @stimer0_irq, align 4, !dbg !486
  br label %free_percpu, !dbg !487

free_percpu:                                      ; preds = %free_stimer0_irq, %if.then11
  call void @llvm.dbg.label(metadata !488), !dbg !489
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !490
  %10 = bitcast %struct.clock_event_device* %9 to i8*, !dbg !490
  call void @free_percpu(i8* %10) #6, !dbg !491
  store %struct.clock_event_device* null, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !492
  %11 = load i32, i32* %ret, align 4, !dbg !493
  store i32 %11, i32* %retval, align 4, !dbg !494
  br label %return, !dbg !494

return:                                           ; preds = %free_percpu, %if.end17, %if.then2, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !495
  ret i32 %12, !dbg !495
}

; Function Attrs: noredzone
declare dso_local i8* @__alloc_percpu(i64, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @hv_setup_stimer0_irq(i32*, i32*, void ()*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpuhp_setup_state(i32 %state, i8* %name, i32 (i32)* %startup, i32 (i32)* %teardown) #0 !dbg !496 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %startup.addr = alloca i32 (i32)*, align 8
  %teardown.addr = alloca i32 (i32)*, align 8
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !500, metadata !DIExpression()), !dbg !501
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i32 (i32)* %startup, i32 (i32)** %startup.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %startup.addr, metadata !504, metadata !DIExpression()), !dbg !505
  store i32 (i32)* %teardown, i32 (i32)** %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32)** %teardown.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i32, i32* %state.addr, align 4, !dbg !508
  %1 = load i8*, i8** %name.addr, align 8, !dbg !509
  %2 = load i32 (i32)*, i32 (i32)** %startup.addr, align 8, !dbg !510
  %3 = load i32 (i32)*, i32 (i32)** %teardown.addr, align 8, !dbg !511
  %call = call i32 @__cpuhp_setup_state(i32 %0, i8* %1, i1 zeroext true, i32 (i32)* %2, i32 (i32)* %3, i1 zeroext false) #6, !dbg !512
  ret i32 %call, !dbg !513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_stimer_init(i32 %cpu) #0 !dbg !514 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %ce = alloca %struct.clock_event_device*, align 8
  %tmp = alloca %struct.clock_event_device*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca %struct.clock_event_device*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !515, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %ce, metadata !517, metadata !DIExpression()), !dbg !518
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !519
  %tobool = icmp ne %struct.clock_event_device* %0, null, !dbg !519
  br i1 %tobool, label %if.end, label %if.then, !dbg !521

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !522
  br label %return, !dbg !522

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !523
  br label %do.body, !dbg !525

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !527, metadata !DIExpression()), !dbg !529
  store i8* null, i8** %__vpp_verify, align 8, !dbg !529
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !529
  br label %do.end, !dbg !529

do.end:                                           ; preds = %do.body
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !525
  store %struct.clock_event_device* %3, %struct.clock_event_device** %tmp1, align 8, !dbg !529
  %4 = load %struct.clock_event_device*, %struct.clock_event_device** %tmp1, align 8, !dbg !525
  store %struct.clock_event_device* %4, %struct.clock_event_device** %tmp, align 8, !dbg !523
  %5 = load %struct.clock_event_device*, %struct.clock_event_device** %tmp, align 8, !dbg !523
  store %struct.clock_event_device* %5, %struct.clock_event_device** %ce, align 8, !dbg !530
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !531
  %name = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %6, i32 0, i32 21, !dbg !532
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %name, align 8, !dbg !533
  %7 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !534
  %features = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %7, i32 0, i32 9, !dbg !535
  store i32 2, i32* %features, align 4, !dbg !536
  %8 = load i32, i32* %cpu.addr, align 4, !dbg !537
  %call = call %struct.cpumask* @get_cpu_mask(i32 %8) #6, !dbg !537
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !538
  %cpumask = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %9, i32 0, i32 25, !dbg !539
  store %struct.cpumask* %call, %struct.cpumask** %cpumask, align 16, !dbg !540
  %10 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !541
  %rating = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %10, i32 0, i32 22, !dbg !542
  store i32 1000, i32* %rating, align 32, !dbg !543
  %11 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !544
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %11, i32 0, i32 14, !dbg !545
  store i32 (%struct.clock_event_device*)* @hv_ce_shutdown, i32 (%struct.clock_event_device*)** %set_state_shutdown, align 32, !dbg !546
  %12 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !547
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %12, i32 0, i32 12, !dbg !548
  store i32 (%struct.clock_event_device*)* @hv_ce_set_oneshot, i32 (%struct.clock_event_device*)** %set_state_oneshot, align 16, !dbg !549
  %13 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !550
  %set_next_event = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %13, i32 0, i32 1, !dbg !551
  store i32 (i64, %struct.clock_event_device*)* @hv_ce_set_next_event, i32 (i64, %struct.clock_event_device*)** %set_next_event, align 8, !dbg !552
  %14 = load %struct.clock_event_device*, %struct.clock_event_device** %ce, align 8, !dbg !553
  call void @clockevents_config_and_register(%struct.clock_event_device* %14, i32 10000000, i64 1, i64 4294967295) #6, !dbg !554
  store i32 0, i32* %retval, align 4, !dbg !555
  br label %return, !dbg !555

return:                                           ; preds = %do.end, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !556
  ret i32 %15, !dbg !556
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @hv_remove_stimer0_irq(i32) #2

; Function Attrs: noredzone
declare dso_local void @free_percpu(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_stimer_legacy_init(i32 %cpu, i32 %sint) #0 !dbg !557 {
entry:
  %cpu.addr = alloca i32, align 4
  %sint.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !560, metadata !DIExpression()), !dbg !561
  store i32 %sint, i32* %sint.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sint.addr, metadata !562, metadata !DIExpression()), !dbg !563
  %0 = load i8, i8* @direct_mode_enabled, align 1, !dbg !564
  %tobool = trunc i8 %0 to i1, !dbg !564
  br i1 %tobool, label %if.then, label %if.end, !dbg !566

if.then:                                          ; preds = %entry
  br label %return, !dbg !567

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %sint.addr, align 4, !dbg !568
  store i32 %1, i32* @stimer0_message_sint, align 4, !dbg !569
  %2 = load i32, i32* %cpu.addr, align 4, !dbg !570
  %call = call i32 @hv_stimer_init(i32 %2) #6, !dbg !571
  br label %return, !dbg !572

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_stimer_legacy_cleanup(i32 %cpu) #0 !dbg !573 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !576, metadata !DIExpression()), !dbg !577
  %0 = load i8, i8* @direct_mode_enabled, align 1, !dbg !578
  %tobool = trunc i8 %0 to i1, !dbg !578
  br i1 %tobool, label %if.then, label %if.end, !dbg !580

if.then:                                          ; preds = %entry
  br label %return, !dbg !581

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !582
  %call = call i32 @hv_stimer_cleanup(i32 %1) #6, !dbg !583
  br label %return, !dbg !584

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !584
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_stimer_free() #0 !dbg !585 {
entry:
  %0 = load %struct.clock_event_device*, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !586
  %tobool = icmp ne %struct.clock_event_device* %0, null, !dbg !586
  br i1 %tobool, label %if.end, label %if.then, !dbg !588

if.then:                                          ; preds = %entry
  br label %return, !dbg !589

if.end:                                           ; preds = %entry
  %1 = load i8, i8* @direct_mode_enabled, align 1, !dbg !590
  %tobool1 = trunc i8 %1 to i1, !dbg !590
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !592

if.then2:                                         ; preds = %if.end
  call void @cpuhp_remove_state(i32 130) #6, !dbg !593
  %2 = load i32, i32* @stimer0_irq, align 4, !dbg !595
  call void @hv_remove_stimer0_irq(i32 %2) #6, !dbg !596
  store i32 0, i32* @stimer0_irq, align 4, !dbg !597
  br label %if.end3, !dbg !598

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load %struct.clock_event_device*, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !599
  %4 = bitcast %struct.clock_event_device* %3 to i8*, !dbg !599
  call void @free_percpu(i8* %4) #6, !dbg !600
  store %struct.clock_event_device* null, %struct.clock_event_device** @hv_clock_event, align 8, !dbg !601
  br label %return, !dbg !602

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !602
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpuhp_remove_state(i32 %state) #0 !dbg !603 {
entry:
  %state.addr = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !606, metadata !DIExpression()), !dbg !607
  %0 = load i32, i32* %state.addr, align 4, !dbg !608
  call void @__cpuhp_remove_state(i32 %0, i1 zeroext true) #6, !dbg !609
  ret void, !dbg !610
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_stimer_global_cleanup() #0 !dbg !611 {
entry:
  %cpu = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !612, metadata !DIExpression()), !dbg !613
  store i32 0, i32* %cpu, align 4, !dbg !614
  br label %for.cond, !dbg !614

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cpu, align 4, !dbg !616
  %cmp = icmp slt i32 %0, 1, !dbg !616
  br i1 %cmp, label %for.body, label %for.end, !dbg !614

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %cpu, align 4, !dbg !618
  call void @hv_stimer_legacy_cleanup(i32 %1) #6, !dbg !620
  br label %for.inc, !dbg !621

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %cpu, align 4, !dbg !616
  %inc = add i32 %2, 1, !dbg !616
  store i32 %inc, i32* %cpu, align 4, !dbg !616
  br label %for.cond, !dbg !616, !llvm.loop !622

for.end:                                          ; preds = %for.cond
  call void @hv_stimer_free() #6, !dbg !624
  ret void, !dbg !625
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.ms_hyperv_tsc_page* @hv_get_tsc_page() #0 !dbg !626 {
entry:
  ret %struct.ms_hyperv_tsc_page* getelementptr inbounds (%union.anon, %union.anon* @tsc_pg, i32 0, i32 0), !dbg !630
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @hv_init_clocksource() #3 section ".init.text" !dbg !631 {
entry:
  %sched_clock.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %sched_clock.addr.i, metadata !632, metadata !DIExpression()), !dbg !637
  %call = call zeroext i1 @hv_init_tsc_clocksource() #7, !dbg !639
  br i1 %call, label %if.then, label %if.end, !dbg !641

if.then:                                          ; preds = %entry
  br label %return, !dbg !642

if.end:                                           ; preds = %entry
  %0 = load i32, i32* getelementptr inbounds (%struct.ms_hyperv_info, %struct.ms_hyperv_info* @ms_hyperv, i32 0, i32 0), align 4, !dbg !643
  %conv = zext i32 %0 to i64, !dbg !645
  %and = and i64 %conv, 2, !dbg !646
  %tobool = icmp ne i64 %and, 0, !dbg !646
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !647

if.then1:                                         ; preds = %if.end
  br label %return, !dbg !648

if.end2:                                          ; preds = %if.end
  store i64 ()* @read_hv_clock_msr, i64 ()** @hv_read_reference_counter, align 8, !dbg !649
  %call3 = call i32 @clocksource_register_hz(%struct.clocksource* @hyperv_cs_msr, i32 10000000) #6, !dbg !650
  %1 = load i64 ()*, i64 ()** @hv_read_reference_counter, align 8, !dbg !651
  %call4 = call i64 %1() #6, !dbg !651
  store i64 %call4, i64* @hv_sched_clock_offset, align 8, !dbg !652
  store i8* bitcast (i64 ()* @read_hv_sched_clock_msr to i8*), i8** %sched_clock.addr.i, align 8
  %2 = load i8*, i8** %sched_clock.addr.i, align 8, !dbg !653
  %3 = bitcast i8* %2 to i64 ()*, !dbg !653
  store i64 ()* %3, i64 ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 1, i32 0), align 8, !dbg !654
  br label %return, !dbg !655

return:                                           ; preds = %if.end2, %if.then1, %if.then
  ret void, !dbg !655
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @hv_init_tsc_clocksource() #3 section ".init.text" !dbg !656 {
entry:
  %sched_clock.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %sched_clock.addr.i, metadata !632, metadata !DIExpression()), !dbg !659
  %retval = alloca i1, align 1
  %tsc_msr = alloca i64, align 8
  %phys_addr = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %tsc_msr, metadata !661, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.declare(metadata i64* %phys_addr, metadata !663, metadata !DIExpression()), !dbg !665
  %0 = load i32, i32* getelementptr inbounds (%struct.ms_hyperv_info, %struct.ms_hyperv_info* @ms_hyperv, i32 0, i32 0), align 4, !dbg !666
  %conv = zext i32 %0 to i64, !dbg !668
  %and = and i64 %conv, 512, !dbg !669
  %tobool = icmp ne i64 %and, 0, !dbg !669
  br i1 %tobool, label %if.end, label %if.then, !dbg !670

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !671
  br label %return, !dbg !671

if.end:                                           ; preds = %entry
  store i64 ()* @read_hv_clock_tsc, i64 ()** @hv_read_reference_counter, align 8, !dbg !672
  %call = call %struct.ms_hyperv_tsc_page* @hv_get_tsc_page() #6, !dbg !673
  %1 = bitcast %struct.ms_hyperv_tsc_page* %call to i8*, !dbg !673
  %call1 = call i64 @virt_to_phys(i8* %1) #6, !dbg !674
  store i64 %call1, i64* %phys_addr, align 8, !dbg !675
  br label %do.body, !dbg !676

do.body:                                          ; preds = %if.end
  %call2 = call i64 @paravirt_read_msr(i32 1073741857) #6, !dbg !677
  store i64 %call2, i64* %tsc_msr, align 8, !dbg !677
  br label %do.end, !dbg !677

do.end:                                           ; preds = %do.body
  %2 = load i64, i64* %tsc_msr, align 8, !dbg !679
  %and3 = and i64 %2, 4095, !dbg !679
  store i64 %and3, i64* %tsc_msr, align 8, !dbg !679
  %3 = load i64, i64* %tsc_msr, align 8, !dbg !680
  %or = or i64 %3, 1, !dbg !681
  %4 = load i64, i64* %phys_addr, align 8, !dbg !682
  %or4 = or i64 %or, %4, !dbg !683
  store i64 %or4, i64* %tsc_msr, align 8, !dbg !684
  %5 = load i64, i64* %tsc_msr, align 8, !dbg !685
  call void @wrmsrl(i32 1073741857, i64 %5) #6, !dbg !685
  store i32 3, i32* getelementptr inbounds (%struct.clocksource, %struct.clocksource* @hyperv_cs_tsc, i32 0, i32 10), align 4, !dbg !686
  %call5 = call i32 @clocksource_register_hz(%struct.clocksource* @hyperv_cs_tsc, i32 10000000) #6, !dbg !687
  %6 = load i64 ()*, i64 ()** @hv_read_reference_counter, align 8, !dbg !688
  %call6 = call i64 %6() #6, !dbg !688
  store i64 %call6, i64* @hv_sched_clock_offset, align 8, !dbg !689
  store i8* bitcast (i64 ()* @read_hv_sched_clock_tsc to i8*), i8** %sched_clock.addr.i, align 8
  %7 = load i8*, i8** %sched_clock.addr.i, align 8, !dbg !690
  %8 = bitcast i8* %7 to i64 ()*, !dbg !690
  store i64 ()* %8, i64 ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 1, i32 0), align 8, !dbg !691
  store i1 true, i1* %retval, align 1, !dbg !692
  br label %return, !dbg !692

return:                                           ; preds = %do.end, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !693
  ret i1 %9, !dbg !693
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @read_hv_clock_msr() #0 !dbg !694 {
entry:
  %current_tick = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %current_tick, metadata !695, metadata !DIExpression()), !dbg !696
  br label %do.body, !dbg !697

do.body:                                          ; preds = %entry
  %call = call i64 @paravirt_read_msr(i32 1073741856) #6, !dbg !698
  store i64 %call, i64* %current_tick, align 8, !dbg !698
  br label %do.end, !dbg !698

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %current_tick, align 8, !dbg !700
  ret i64 %0, !dbg !701
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clocksource_register_hz(%struct.clocksource* %cs, i32 %hz) #0 !dbg !702 {
entry:
  %cs.addr = alloca %struct.clocksource*, align 8
  %hz.addr = alloca i32, align 4
  store %struct.clocksource* %cs, %struct.clocksource** %cs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clocksource** %cs.addr, metadata !705, metadata !DIExpression()), !dbg !706
  store i32 %hz, i32* %hz.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %hz.addr, metadata !707, metadata !DIExpression()), !dbg !708
  %0 = load %struct.clocksource*, %struct.clocksource** %cs.addr, align 8, !dbg !709
  %1 = load i32, i32* %hz.addr, align 4, !dbg !710
  %call = call i32 @__clocksource_register_scale(%struct.clocksource* %0, i32 1, i32 %1) #6, !dbg !711
  ret i32 %call, !dbg !712
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @read_hv_sched_clock_msr() #0 !dbg !713 {
entry:
  %call = call i64 @read_hv_clock_msr() #6, !dbg !714
  %0 = load i64, i64* @hv_sched_clock_offset, align 8, !dbg !715
  %sub = sub i64 %call, %0, !dbg !716
  %mul = mul i64 %sub, 100, !dbg !717
  ret i64 %mul, !dbg !718
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @wrmsrl(i32 %msr, i64 %val) #0 !dbg !719 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 %val, i64* %val.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %val.addr, metadata !725, metadata !DIExpression()), !dbg !726
  br label %do.body, !dbg !727

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %msr.addr, align 4, !dbg !728
  %1 = load i64, i64* %val.addr, align 8, !dbg !728
  %conv = trunc i64 %1 to i32, !dbg !728
  %2 = load i64, i64* %val.addr, align 8, !dbg !728
  %shr = lshr i64 %2, 32, !dbg !728
  %conv1 = trunc i64 %shr to i32, !dbg !728
  call void @paravirt_write_msr(i32 %0, i32 %conv, i32 %conv1) #6, !dbg !728
  br label %do.end, !dbg !728

do.end:                                           ; preds = %do.body
  ret void, !dbg !730
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_disable_stimer0_percpu_irq(i32 %irq) #0 !dbg !731 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !734, metadata !DIExpression()), !dbg !735
  ret void, !dbg !736
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @paravirt_write_msr(i32 %msr, i32 %low, i32 %high) #0 !dbg !737 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i32 %msr, i32* %msr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !740, metadata !DIExpression()), !dbg !741
  store i32 %low, i32* %low.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %low.addr, metadata !742, metadata !DIExpression()), !dbg !743
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !744, metadata !DIExpression()), !dbg !745
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !746, metadata !DIExpression()), !dbg !748
  %0 = load i64, i64* %__edi, align 8, !dbg !748
  store i64 %0, i64* %__edi, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !749, metadata !DIExpression()), !dbg !748
  %1 = load i64, i64* %__esi, align 8, !dbg !748
  store i64 %1, i64* %__esi, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !750, metadata !DIExpression()), !dbg !748
  %2 = load i64, i64* %__edx, align 8, !dbg !748
  store i64 %2, i64* %__edx, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !751, metadata !DIExpression()), !dbg !748
  %3 = load i64, i64* %__ecx, align 8, !dbg !748
  store i64 %3, i64* %__ecx, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !752, metadata !DIExpression()), !dbg !748
  %4 = load i64, i64* %__eax, align 8, !dbg !748
  store i64 %4, i64* %__eax, align 8, !dbg !748
  %5 = load void (i32, i32, i32)*, void (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 24), align 8, !dbg !748
  %6 = call i64 @llvm.read_register.i64(metadata !375), !dbg !748
  %7 = load i32, i32* %msr.addr, align 4, !dbg !748
  %conv = zext i32 %7 to i64, !dbg !748
  %8 = load i32, i32* %low.addr, align 4, !dbg !748
  %conv1 = zext i32 %8 to i64, !dbg !748
  %9 = load i32, i32* %high.addr, align 4, !dbg !748
  %conv2 = zext i32 %9 to i64, !dbg !748
  %10 = call { i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${6:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${5:c}\0A  .byte 772b-771b\0A  .short ${7:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={rsp},i,i,i,{di},{si},{dx},4,~{memory},~{cc},~{rax},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 27, void (i32, i32, i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 24), i32 511, i64 %conv, i64 %conv1, i64 %conv2, i64 %6) #5, !dbg !748, !srcloc !753
  %asmresult = extractvalue { i64, i64, i64, i64, i64 } %10, 0, !dbg !748
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64 } %10, 1, !dbg !748
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64 } %10, 2, !dbg !748
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64 } %10, 3, !dbg !748
  %asmresult6 = extractvalue { i64, i64, i64, i64, i64 } %10, 4, !dbg !748
  store i64 %asmresult, i64* %__edi, align 8, !dbg !748
  store i64 %asmresult3, i64* %__esi, align 8, !dbg !748
  store i64 %asmresult4, i64* %__edx, align 8, !dbg !748
  store i64 %asmresult5, i64* %__ecx, align 8, !dbg !748
  call void @llvm.write_register.i64(metadata !375, i64 %asmresult6), !dbg !748
  ret void, !dbg !754
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noredzone
declare dso_local i32 @__cpuhp_setup_state(i32, i8*, i1 zeroext, i32 (i32)*, i32 (i32)*, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.cpumask* @get_cpu_mask(i32 %cpu) #0 !dbg !755 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca i64*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !758, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.declare(metadata i64** %p, metadata !760, metadata !DIExpression()), !dbg !763
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !764
  %rem = urem i32 %0, 64, !dbg !765
  %add = add i32 1, %rem, !dbg !766
  %idxprom = zext i32 %add to i64, !dbg !767
  %arrayidx = getelementptr [65 x [1 x i64]], [65 x [1 x i64]]* @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !767
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %arrayidx, i64 0, i64 0, !dbg !767
  store i64* %arraydecay, i64** %p, align 8, !dbg !763
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !768
  %div = udiv i32 %1, 64, !dbg !769
  %2 = load i64*, i64** %p, align 8, !dbg !770
  %idx.ext = zext i32 %div to i64, !dbg !770
  %idx.neg = sub i64 0, %idx.ext, !dbg !770
  %add.ptr = getelementptr i64, i64* %2, i64 %idx.neg, !dbg !770
  store i64* %add.ptr, i64** %p, align 8, !dbg !770
  %3 = load i64*, i64** %p, align 8, !dbg !771
  %4 = bitcast i64* %3 to i8*, !dbg !771
  %5 = bitcast i8* %4 to %struct.cpumask*, !dbg !771
  ret %struct.cpumask* %5, !dbg !772
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_ce_set_oneshot(%struct.clock_event_device* %evt) #0 !dbg !773 {
entry:
  %evt.addr = alloca %struct.clock_event_device*, align 8
  %timer_cfg = alloca %union.hv_stimer_config, align 8
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !774, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.declare(metadata %union.hv_stimer_config* %timer_cfg, metadata !776, metadata !DIExpression()), !dbg !792
  %as_uint64 = bitcast %union.hv_stimer_config* %timer_cfg to i64*, !dbg !793
  store i64 0, i64* %as_uint64, align 8, !dbg !794
  %0 = bitcast %union.hv_stimer_config* %timer_cfg to %struct.anon.65*, !dbg !795
  %1 = bitcast %struct.anon.65* %0 to i64*, !dbg !795
  %bf.load = load i64, i64* %1, align 8, !dbg !796
  %bf.clear = and i64 %bf.load, -2, !dbg !796
  %bf.set = or i64 %bf.clear, 1, !dbg !796
  store i64 %bf.set, i64* %1, align 8, !dbg !796
  %2 = bitcast %union.hv_stimer_config* %timer_cfg to %struct.anon.65*, !dbg !797
  %3 = bitcast %struct.anon.65* %2 to i64*, !dbg !797
  %bf.load1 = load i64, i64* %3, align 8, !dbg !798
  %bf.clear2 = and i64 %bf.load1, -9, !dbg !798
  %bf.set3 = or i64 %bf.clear2, 8, !dbg !798
  store i64 %bf.set3, i64* %3, align 8, !dbg !798
  %4 = load i8, i8* @direct_mode_enabled, align 1, !dbg !799
  %tobool = trunc i8 %4 to i1, !dbg !799
  br i1 %tobool, label %if.then, label %if.else, !dbg !801

if.then:                                          ; preds = %entry
  %5 = bitcast %union.hv_stimer_config* %timer_cfg to %struct.anon.65*, !dbg !802
  %6 = bitcast %struct.anon.65* %5 to i64*, !dbg !802
  %bf.load4 = load i64, i64* %6, align 8, !dbg !804
  %bf.clear5 = and i64 %bf.load4, -4097, !dbg !804
  %bf.set6 = or i64 %bf.clear5, 4096, !dbg !804
  store i64 %bf.set6, i64* %6, align 8, !dbg !804
  %7 = load i32, i32* @stimer0_vector, align 4, !dbg !805
  %conv = sext i32 %7 to i64, !dbg !805
  %8 = bitcast %union.hv_stimer_config* %timer_cfg to %struct.anon.65*, !dbg !806
  %9 = bitcast %struct.anon.65* %8 to i64*, !dbg !806
  %bf.load7 = load i64, i64* %9, align 8, !dbg !807
  %bf.value = and i64 %conv, 255, !dbg !807
  %bf.shl = shl i64 %bf.value, 4, !dbg !807
  %bf.clear8 = and i64 %bf.load7, -4081, !dbg !807
  %bf.set9 = or i64 %bf.clear8, %bf.shl, !dbg !807
  store i64 %bf.set9, i64* %9, align 8, !dbg !807
  %10 = load i32, i32* @stimer0_irq, align 4, !dbg !808
  call void @hv_enable_stimer0_percpu_irq(i32 %10) #6, !dbg !809
  br label %if.end, !dbg !810

if.else:                                          ; preds = %entry
  %11 = bitcast %union.hv_stimer_config* %timer_cfg to %struct.anon.65*, !dbg !811
  %12 = bitcast %struct.anon.65* %11 to i64*, !dbg !811
  %bf.load10 = load i64, i64* %12, align 8, !dbg !813
  %bf.clear11 = and i64 %bf.load10, -4097, !dbg !813
  store i64 %bf.clear11, i64* %12, align 8, !dbg !813
  %13 = load i32, i32* @stimer0_message_sint, align 4, !dbg !814
  %conv12 = sext i32 %13 to i64, !dbg !814
  %14 = bitcast %union.hv_stimer_config* %timer_cfg to %struct.anon.65*, !dbg !815
  %15 = bitcast %struct.anon.65* %14 to i64*, !dbg !815
  %bf.load13 = load i64, i64* %15, align 8, !dbg !816
  %bf.value14 = and i64 %conv12, 15, !dbg !816
  %bf.shl15 = shl i64 %bf.value14, 16, !dbg !816
  %bf.clear16 = and i64 %bf.load13, -983041, !dbg !816
  %bf.set17 = or i64 %bf.clear16, %bf.shl15, !dbg !816
  store i64 %bf.set17, i64* %15, align 8, !dbg !816
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %as_uint6418 = bitcast %union.hv_stimer_config* %timer_cfg to i64*, !dbg !817
  %16 = load i64, i64* %as_uint6418, align 8, !dbg !817
  call void @wrmsrl(i32 1073742000, i64 %16) #6, !dbg !817
  ret i32 0, !dbg !818
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_ce_set_next_event(i64 %delta, %struct.clock_event_device* %evt) #0 !dbg !819 {
entry:
  %delta.addr = alloca i64, align 8
  %evt.addr = alloca %struct.clock_event_device*, align 8
  %current_tick = alloca i64, align 8
  store i64 %delta, i64* %delta.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %delta.addr, metadata !820, metadata !DIExpression()), !dbg !821
  store %struct.clock_event_device* %evt, %struct.clock_event_device** %evt.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clock_event_device** %evt.addr, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata i64* %current_tick, metadata !824, metadata !DIExpression()), !dbg !825
  %0 = load i64 ()*, i64 ()** @hv_read_reference_counter, align 8, !dbg !826
  %call = call i64 %0() #6, !dbg !826
  store i64 %call, i64* %current_tick, align 8, !dbg !827
  %1 = load i64, i64* %delta.addr, align 8, !dbg !828
  %2 = load i64, i64* %current_tick, align 8, !dbg !829
  %add = add i64 %2, %1, !dbg !829
  store i64 %add, i64* %current_tick, align 8, !dbg !829
  %3 = load i64, i64* %current_tick, align 8, !dbg !830
  call void @wrmsrl(i32 1073742001, i64 %3) #6, !dbg !830
  ret i32 0, !dbg !831
}

; Function Attrs: noredzone
declare dso_local void @clockevents_config_and_register(%struct.clock_event_device*, i32, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hv_enable_stimer0_percpu_irq(i32 %irq) #0 !dbg !832 {
entry:
  %irq.addr = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !833, metadata !DIExpression()), !dbg !834
  ret void, !dbg !835
}

; Function Attrs: noredzone
declare dso_local void @__cpuhp_remove_state(i32, i1 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @read_hv_clock_tsc() #0 !dbg !836 {
entry:
  %current_tick = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %current_tick, metadata !837, metadata !DIExpression()), !dbg !838
  %call = call %struct.ms_hyperv_tsc_page* @hv_get_tsc_page() #6, !dbg !839
  %call1 = call i64 @hv_read_tsc_page(%struct.ms_hyperv_tsc_page* %call) #6, !dbg !840
  store i64 %call1, i64* %current_tick, align 8, !dbg !838
  %0 = load i64, i64* %current_tick, align 8, !dbg !841
  %cmp = icmp eq i64 %0, -1, !dbg !843
  br i1 %cmp, label %if.then, label %if.end, !dbg !844

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !845

do.body:                                          ; preds = %if.then
  %call2 = call i64 @paravirt_read_msr(i32 1073741856) #6, !dbg !846
  store i64 %call2, i64* %current_tick, align 8, !dbg !846
  br label %do.end, !dbg !846

do.end:                                           ; preds = %do.body
  br label %if.end, !dbg !846

if.end:                                           ; preds = %do.end, %entry
  %1 = load i64, i64* %current_tick, align 8, !dbg !848
  ret i64 %1, !dbg !849
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @virt_to_phys(i8* %address) #0 !dbg !850 {
entry:
  %address.addr = alloca i8*, align 8
  store i8* %address, i8** %address.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !856, metadata !DIExpression()), !dbg !857
  %0 = load i8*, i8** %address.addr, align 8, !dbg !858
  %1 = ptrtoint i8* %0 to i64, !dbg !858
  %call = call i64 @__phys_addr_nodebug(i64 %1) #6, !dbg !858
  ret i64 %call, !dbg !859
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @paravirt_read_msr(i32 %msr) #0 !dbg !860 {
entry:
  %msr.addr = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %msr.addr, metadata !863, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !865, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !868, metadata !DIExpression()), !dbg !867
  %0 = load i64, i64* %__edi, align 8, !dbg !867
  store i64 %0, i64* %__edi, align 8, !dbg !867
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !869, metadata !DIExpression()), !dbg !867
  %1 = load i64, i64* %__esi, align 8, !dbg !867
  store i64 %1, i64* %__esi, align 8, !dbg !867
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !870, metadata !DIExpression()), !dbg !867
  %2 = load i64, i64* %__edx, align 8, !dbg !867
  store i64 %2, i64* %__edx, align 8, !dbg !867
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !871, metadata !DIExpression()), !dbg !867
  %3 = load i64, i64* %__ecx, align 8, !dbg !867
  store i64 %3, i64* %__ecx, align 8, !dbg !867
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !872, metadata !DIExpression()), !dbg !867
  %4 = load i64, i64* %__eax, align 8, !dbg !867
  store i64 %4, i64* %__eax, align 8, !dbg !867
  %5 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), align 8, !dbg !867
  %6 = call i64 @llvm.read_register.i64(metadata !375), !dbg !873
  %7 = load i32, i32* %msr.addr, align 4, !dbg !873
  %conv = zext i32 %7 to i64, !dbg !873
  %8 = call { i64, i64, i64, i64, i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${7:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${6:c}\0A  .byte 772b-771b\0A  .short ${8:c}\0A.popsection\0A", "={di},={si},={dx},={cx},={ax},={rsp},i,i,i,{di},5,~{memory},~{cc},~{r8},~{r9},~{r10},~{r11},~{dirflag},~{fpsr},~{flags}"(i64 26, i64 (i32)** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 23), i32 511, i64 %conv, i64 %6) #5, !dbg !873, !srcloc !876
  %asmresult = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 0, !dbg !873
  %asmresult1 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 1, !dbg !873
  %asmresult2 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 2, !dbg !873
  %asmresult3 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 3, !dbg !873
  %asmresult4 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 4, !dbg !873
  %asmresult5 = extractvalue { i64, i64, i64, i64, i64, i64 } %8, 5, !dbg !873
  store i64 %asmresult, i64* %__edi, align 8, !dbg !873
  store i64 %asmresult1, i64* %__esi, align 8, !dbg !873
  store i64 %asmresult2, i64* %__edx, align 8, !dbg !873
  store i64 %asmresult3, i64* %__ecx, align 8, !dbg !873
  store i64 %asmresult4, i64* %__eax, align 8, !dbg !873
  call void @llvm.write_register.i64(metadata !375, i64 %asmresult5), !dbg !873
  %9 = load i64, i64* %__eax, align 8, !dbg !873
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !877, metadata !DIExpression()), !dbg !879
  store i64 -1, i64* %__mask, align 8, !dbg !879
  %10 = load i64, i64* %__mask, align 8, !dbg !879
  store i64 %10, i64* %tmp, align 8, !dbg !879
  %11 = load i64, i64* %tmp, align 8, !dbg !879
  %and = and i64 %9, %11, !dbg !873
  store i64 %and, i64* %__ret, align 8, !dbg !873
  %12 = load i64, i64* %__ret, align 8, !dbg !867
  store i64 %12, i64* %tmp6, align 8, !dbg !880
  %13 = load i64, i64* %tmp6, align 8, !dbg !867
  ret i64 %13, !dbg !881
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @read_hv_sched_clock_tsc() #0 !dbg !882 {
entry:
  %call = call i64 @read_hv_clock_tsc() #6, !dbg !883
  %0 = load i64, i64* @hv_sched_clock_offset, align 8, !dbg !884
  %sub = sub i64 %call, %0, !dbg !885
  %mul = mul i64 %sub, 100, !dbg !886
  ret i64 %mul, !dbg !887
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hv_read_tsc_page(%struct.ms_hyperv_tsc_page* %tsc_pg) #0 !dbg !888 {
entry:
  %tsc_pg.addr = alloca %struct.ms_hyperv_tsc_page*, align 8
  %cur_tsc = alloca i64, align 8
  store %struct.ms_hyperv_tsc_page* %tsc_pg, %struct.ms_hyperv_tsc_page** %tsc_pg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ms_hyperv_tsc_page** %tsc_pg.addr, metadata !894, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.declare(metadata i64* %cur_tsc, metadata !896, metadata !DIExpression()), !dbg !897
  %0 = load %struct.ms_hyperv_tsc_page*, %struct.ms_hyperv_tsc_page** %tsc_pg.addr, align 8, !dbg !898
  %call = call i64 @hv_read_tsc_page_tsc(%struct.ms_hyperv_tsc_page* %0, i64* %cur_tsc) #6, !dbg !899
  ret i64 %call, !dbg !900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hv_read_tsc_page_tsc(%struct.ms_hyperv_tsc_page* %tsc_pg, i64* %cur_tsc) #0 !dbg !901 {
entry:
  %low.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %low.i, metadata !905, metadata !DIExpression()), !dbg !910
  %high.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %high.i, metadata !913, metadata !DIExpression()), !dbg !910
  %retval = alloca i64, align 8
  %tsc_pg.addr = alloca %struct.ms_hyperv_tsc_page*, align 8
  %cur_tsc.addr = alloca i64*, align 8
  %scale = alloca i64, align 8
  %offset = alloca i64, align 8
  %sequence = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp4 = alloca i64, align 8
  %tmp7 = alloca i64, align 8
  %tmp11 = alloca i32, align 4
  store %struct.ms_hyperv_tsc_page* %tsc_pg, %struct.ms_hyperv_tsc_page** %tsc_pg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ms_hyperv_tsc_page** %tsc_pg.addr, metadata !914, metadata !DIExpression()), !dbg !915
  store i64* %cur_tsc, i64** %cur_tsc.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %cur_tsc.addr, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata i64* %scale, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata i64* %offset, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata i32* %sequence, metadata !922, metadata !DIExpression()), !dbg !923
  br label %do.body, !dbg !924

do.body:                                          ; preds = %do.end10, %entry
  br label %do.body1, !dbg !925

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !927

do.end:                                           ; preds = %do.body1
  %0 = load %struct.ms_hyperv_tsc_page*, %struct.ms_hyperv_tsc_page** %tsc_pg.addr, align 8, !dbg !925
  %tsc_sequence = getelementptr inbounds %struct.ms_hyperv_tsc_page, %struct.ms_hyperv_tsc_page* %0, i32 0, i32 0, !dbg !925
  %1 = load volatile i32, i32* %tsc_sequence, align 1, !dbg !925
  store i32 %1, i32* %tmp, align 4, !dbg !927
  %2 = load i32, i32* %tmp, align 4, !dbg !925
  store i32 %2, i32* %sequence, align 4, !dbg !929
  %3 = load i32, i32* %sequence, align 4, !dbg !930
  %tobool = icmp ne i32 %3, 0, !dbg !930
  br i1 %tobool, label %if.end, label %if.then, !dbg !932

if.then:                                          ; preds = %do.end
  store i64 -1, i64* %retval, align 8, !dbg !933
  br label %return, !dbg !933

if.end:                                           ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !934, !srcloc !935
  br label %do.body2, !dbg !936

do.body2:                                         ; preds = %if.end
  br label %do.end3, !dbg !938

do.end3:                                          ; preds = %do.body2
  %4 = load %struct.ms_hyperv_tsc_page*, %struct.ms_hyperv_tsc_page** %tsc_pg.addr, align 8, !dbg !936
  %tsc_scale = getelementptr inbounds %struct.ms_hyperv_tsc_page, %struct.ms_hyperv_tsc_page* %4, i32 0, i32 2, !dbg !936
  %5 = load volatile i64, i64* %tsc_scale, align 1, !dbg !936
  store i64 %5, i64* %tmp4, align 8, !dbg !938
  %6 = load i64, i64* %tmp4, align 8, !dbg !936
  store i64 %6, i64* %scale, align 8, !dbg !940
  br label %do.body5, !dbg !941

do.body5:                                         ; preds = %do.end3
  br label %do.end6, !dbg !943

do.end6:                                          ; preds = %do.body5
  %7 = load %struct.ms_hyperv_tsc_page*, %struct.ms_hyperv_tsc_page** %tsc_pg.addr, align 8, !dbg !941
  %tsc_offset = getelementptr inbounds %struct.ms_hyperv_tsc_page, %struct.ms_hyperv_tsc_page* %7, i32 0, i32 3, !dbg !941
  %8 = load volatile i64, i64* %tsc_offset, align 1, !dbg !941
  store i64 %8, i64* %tmp7, align 8, !dbg !943
  %9 = load i64, i64* %tmp7, align 8, !dbg !941
  store i64 %9, i64* %offset, align 8, !dbg !945
  %10 = call { i64, i64 } asm sideeffect "# ALT: oldinstr2\0A661:\0A\09rdtsc\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 3*32+18)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A .long 661b - .\0A .long 6642f - .\0A .word ( 1*32+27)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09lfence; rdtsc\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09rdtscp\0A6652:\0A.popsection\0A", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !946, !srcloc !947
  %asmresult.i = extractvalue { i64, i64 } %10, 0, !dbg !946
  %asmresult1.i = extractvalue { i64, i64 } %10, 1, !dbg !946
  store i64 %asmresult.i, i64* %low.i, align 8, !dbg !946
  store i64 %asmresult1.i, i64* %high.i, align 8, !dbg !946
  %11 = load i64, i64* %low.i, align 8, !dbg !948
  %12 = load i64, i64* %high.i, align 8, !dbg !948
  %shl.i = shl i64 %12, 32, !dbg !948
  %or.i = or i64 %11, %shl.i, !dbg !948
  %13 = load i64*, i64** %cur_tsc.addr, align 8, !dbg !949
  store i64 %or.i, i64* %13, align 8, !dbg !950
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !951, !srcloc !952
  br label %do.cond, !dbg !953

do.cond:                                          ; preds = %do.end6
  br label %do.body8, !dbg !954

do.body8:                                         ; preds = %do.cond
  br label %do.end10, !dbg !956

do.end10:                                         ; preds = %do.body8
  %14 = load %struct.ms_hyperv_tsc_page*, %struct.ms_hyperv_tsc_page** %tsc_pg.addr, align 8, !dbg !954
  %tsc_sequence12 = getelementptr inbounds %struct.ms_hyperv_tsc_page, %struct.ms_hyperv_tsc_page* %14, i32 0, i32 0, !dbg !954
  %15 = load volatile i32, i32* %tsc_sequence12, align 1, !dbg !954
  store i32 %15, i32* %tmp11, align 4, !dbg !956
  %16 = load i32, i32* %tmp11, align 4, !dbg !954
  %17 = load i32, i32* %sequence, align 4, !dbg !958
  %cmp = icmp ne i32 %16, %17, !dbg !959
  br i1 %cmp, label %do.body, label %do.end13, !dbg !953, !llvm.loop !960

do.end13:                                         ; preds = %do.end10
  %18 = load i64*, i64** %cur_tsc.addr, align 8, !dbg !962
  %19 = load i64, i64* %18, align 8, !dbg !963
  %20 = load i64, i64* %scale, align 8, !dbg !964
  %call14 = call i64 @mul_u64_u64_shr(i64 %19, i64 %20, i32 64) #6, !dbg !965
  %21 = load i64, i64* %offset, align 8, !dbg !966
  %add = add i64 %call14, %21, !dbg !967
  store i64 %add, i64* %retval, align 8, !dbg !968
  br label %return, !dbg !968

return:                                           ; preds = %do.end13, %if.then
  %22 = load i64, i64* %retval, align 8, !dbg !969
  ret i64 %22, !dbg !969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mul_u64_u64_shr(i64 %a, i64 %mul, i32 %shift) #0 !dbg !970 {
entry:
  %a.addr = alloca i64, align 8
  %mul.addr = alloca i64, align 8
  %shift.addr = alloca i32, align 4
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !974, metadata !DIExpression()), !dbg !975
  store i64 %mul, i64* %mul.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %mul.addr, metadata !976, metadata !DIExpression()), !dbg !977
  store i32 %shift, i32* %shift.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %shift.addr, metadata !978, metadata !DIExpression()), !dbg !979
  %0 = load i64, i64* %a.addr, align 8, !dbg !980
  %conv = zext i64 %0 to i128, !dbg !981
  %1 = load i64, i64* %mul.addr, align 8, !dbg !982
  %conv1 = zext i64 %1 to i128, !dbg !982
  %mul2 = mul i128 %conv, %conv1, !dbg !983
  %2 = load i32, i32* %shift.addr, align 4, !dbg !984
  %sh_prom = zext i32 %2 to i128, !dbg !985
  %shr = lshr i128 %mul2, %sh_prom, !dbg !985
  %conv3 = trunc i128 %shr to i64, !dbg !986
  ret i64 %conv3, !dbg !987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__phys_addr_nodebug(i64 %x) #0 !dbg !988 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr, metadata !992, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.declare(metadata i64* %y, metadata !994, metadata !DIExpression()), !dbg !995
  %0 = load i64, i64* %x.addr, align 8, !dbg !996
  %sub = sub i64 %0, -2147483648, !dbg !997
  store i64 %sub, i64* %y, align 8, !dbg !995
  %1 = load i64, i64* %y, align 8, !dbg !998
  %2 = load i64, i64* %x.addr, align 8, !dbg !999
  %3 = load i64, i64* %y, align 8, !dbg !1000
  %cmp = icmp ugt i64 %2, %3, !dbg !1001
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1002

cond.true:                                        ; preds = %entry
  %4 = load i64, i64* @phys_base, align 8, !dbg !1003
  br label %cond.end, !dbg !1002

cond.false:                                       ; preds = %entry
  %5 = load i64, i64* @page_offset_base, align 8, !dbg !1004
  %sub1 = sub i64 -2147483648, %5, !dbg !1005
  br label %cond.end, !dbg !1002

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !1002
  %add = add i64 %1, %cond, !dbg !1006
  store i64 %add, i64* %x.addr, align 8, !dbg !1007
  %6 = load i64, i64* %x.addr, align 8, !dbg !1008
  ret i64 %6, !dbg !1009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @read_hv_clock_tsc_cs(%struct.clocksource* %arg) #0 !dbg !1010 {
entry:
  %arg.addr = alloca %struct.clocksource*, align 8
  store %struct.clocksource* %arg, %struct.clocksource** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clocksource** %arg.addr, metadata !1011, metadata !DIExpression()), !dbg !1012
  %call = call i64 @read_hv_clock_tsc() #6, !dbg !1013
  ret i64 %call, !dbg !1014
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hv_cs_enable(%struct.clocksource* %cs) #0 !dbg !1015 {
entry:
  %cs.addr = alloca %struct.clocksource*, align 8
  store %struct.clocksource* %cs, %struct.clocksource** %cs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clocksource** %cs.addr, metadata !1016, metadata !DIExpression()), !dbg !1017
  call void @vclocks_set_used(i32 3) #6, !dbg !1018
  ret i32 0, !dbg !1019
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @suspend_hv_clock_tsc(%struct.clocksource* %arg) #0 !dbg !1020 {
entry:
  %arg.addr = alloca %struct.clocksource*, align 8
  %tsc_msr = alloca i64, align 8
  store %struct.clocksource* %arg, %struct.clocksource** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clocksource** %arg.addr, metadata !1021, metadata !DIExpression()), !dbg !1022
  call void @llvm.dbg.declare(metadata i64* %tsc_msr, metadata !1023, metadata !DIExpression()), !dbg !1024
  br label %do.body, !dbg !1025

do.body:                                          ; preds = %entry
  %call = call i64 @paravirt_read_msr(i32 1073741857) #6, !dbg !1026
  store i64 %call, i64* %tsc_msr, align 8, !dbg !1026
  br label %do.end, !dbg !1026

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %tsc_msr, align 8, !dbg !1028
  %and = and i64 %0, -2, !dbg !1028
  store i64 %and, i64* %tsc_msr, align 8, !dbg !1028
  %1 = load i64, i64* %tsc_msr, align 8, !dbg !1029
  call void @wrmsrl(i32 1073741857, i64 %1) #6, !dbg !1029
  ret void, !dbg !1030
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @resume_hv_clock_tsc(%struct.clocksource* %arg) #0 !dbg !1031 {
entry:
  %arg.addr = alloca %struct.clocksource*, align 8
  %phys_addr = alloca i64, align 8
  %tsc_msr = alloca i64, align 8
  store %struct.clocksource* %arg, %struct.clocksource** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clocksource** %arg.addr, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata i64* %phys_addr, metadata !1034, metadata !DIExpression()), !dbg !1035
  %call = call i64 @virt_to_phys(i8* bitcast (%union.anon* @tsc_pg to i8*)) #6, !dbg !1036
  store i64 %call, i64* %phys_addr, align 8, !dbg !1035
  call void @llvm.dbg.declare(metadata i64* %tsc_msr, metadata !1037, metadata !DIExpression()), !dbg !1038
  br label %do.body, !dbg !1039

do.body:                                          ; preds = %entry
  %call1 = call i64 @paravirt_read_msr(i32 1073741857) #6, !dbg !1040
  store i64 %call1, i64* %tsc_msr, align 8, !dbg !1040
  br label %do.end, !dbg !1040

do.end:                                           ; preds = %do.body
  %0 = load i64, i64* %tsc_msr, align 8, !dbg !1042
  %and = and i64 %0, 4095, !dbg !1042
  store i64 %and, i64* %tsc_msr, align 8, !dbg !1042
  %1 = load i64, i64* %phys_addr, align 8, !dbg !1043
  %or = or i64 1, %1, !dbg !1044
  %2 = load i64, i64* %tsc_msr, align 8, !dbg !1045
  %or2 = or i64 %2, %or, !dbg !1045
  store i64 %or2, i64* %tsc_msr, align 8, !dbg !1045
  %3 = load i64, i64* %tsc_msr, align 8, !dbg !1046
  call void @wrmsrl(i32 1073741857, i64 %3) #6, !dbg !1046
  ret void, !dbg !1047
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vclocks_set_used(i32 %which) #0 !dbg !1048 {
entry:
  %which.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %which, i32* %which.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %which.addr, metadata !1050, metadata !DIExpression()), !dbg !1051
  br label %do.body, !dbg !1052

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1053

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1055

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1053

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !1057

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1060

do.end4:                                          ; preds = %do.body3
  %0 = load volatile i32, i32* @vclocks_used, align 4, !dbg !1057
  store i32 %0, i32* %tmp, align 4, !dbg !1060
  %1 = load i32, i32* %tmp, align 4, !dbg !1057
  %2 = load i32, i32* %which.addr, align 4, !dbg !1062
  %shl = shl i32 1, %2, !dbg !1062
  %or = or i32 %1, %shl, !dbg !1062
  store volatile i32 %or, i32* @vclocks_used, align 4, !dbg !1062
  br label %do.end5, !dbg !1062

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !1053

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !1063
}

; Function Attrs: noredzone
declare dso_local i32 @__clocksource_register_scale(%struct.clocksource*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @read_hv_clock_msr_cs(%struct.clocksource* %arg) #0 !dbg !1064 {
entry:
  %arg.addr = alloca %struct.clocksource*, align 8
  store %struct.clocksource* %arg, %struct.clocksource** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clocksource** %arg.addr, metadata !1065, metadata !DIExpression()), !dbg !1066
  %call = call i64 @read_hv_clock_msr() #6, !dbg !1067
  ret i64 %call, !dbg !1068
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!375}
!llvm.module.flags = !{!376, !377, !378, !379}
!llvm.ident = !{!380}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hv_clock_event", scope: !2, file: !3, line: 25, type: !203, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !202, globals: !296, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clocksource/hyperv_timer.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !14, !188, !193}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_event_state", file: !6, line: 35, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/clockchips.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CLOCK_EVT_STATE_DETACHED", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "CLOCK_EVT_STATE_SHUTDOWN", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CLOCK_EVT_STATE_PERIODIC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT_STOPPED", value: 4, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !15, line: 25, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/lizy2001/genbc/linux")
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!18 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!19 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!20 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!21 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!22 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!23 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!24 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!25 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!26 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!27 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!28 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!29 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!30 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 11)
!31 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 12)
!32 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 13)
!33 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 14)
!34 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 15)
!35 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 16)
!36 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 17)
!37 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 18)
!38 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 19)
!39 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 20)
!40 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 21)
!41 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 22)
!42 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 23)
!43 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 24)
!44 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 25)
!45 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 26)
!46 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 27)
!47 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 28)
!48 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 29)
!49 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC_DEAD", value: 30)
!50 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 31)
!51 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 32)
!52 = !DIEnumerator(name: "CPUHP_IOMMU_INTEL_DEAD", value: 33)
!53 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 34)
!54 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 35)
!55 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 36)
!56 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 37)
!57 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 38)
!58 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 39)
!59 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 40)
!60 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 41)
!61 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 42)
!62 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 43)
!63 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 44)
!64 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 45)
!65 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 46)
!66 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 47)
!67 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 48)
!68 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 49)
!69 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 50)
!70 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 51)
!71 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 52)
!72 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 53)
!73 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 54)
!74 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 55)
!75 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 56)
!76 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 57)
!77 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 58)
!78 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 59)
!79 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 60)
!80 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 61)
!81 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 62)
!82 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 63)
!83 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 64)
!84 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 65)
!85 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 66)
!86 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 86)
!87 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 87)
!88 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 88)
!89 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 89)
!90 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 90)
!91 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 91)
!92 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 92)
!93 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 93)
!94 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 94)
!95 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 95)
!96 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 96)
!97 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 97)
!98 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 98)
!99 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 99)
!100 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 100)
!101 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 101)
!102 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 102)
!103 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 103)
!104 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 104)
!105 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 105)
!106 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 106)
!107 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 107)
!108 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 108)
!109 = !DIEnumerator(name: "CPUHP_AP_ARM_SDEI_STARTING", value: 109)
!110 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 110)
!111 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 111)
!112 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 112)
!113 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 113)
!114 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 114)
!115 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 115)
!116 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 116)
!117 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 117)
!118 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 118)
!119 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 119)
!120 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 120)
!121 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 121)
!122 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 122)
!123 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 123)
!124 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 124)
!125 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 125)
!126 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 126)
!127 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 127)
!128 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 128)
!129 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 129)
!130 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 130)
!131 = !DIEnumerator(name: "CPUHP_AP_KVM_STARTING", value: 131)
!132 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_VGIC_INIT_STARTING", value: 132)
!133 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_VGIC_STARTING", value: 133)
!134 = !DIEnumerator(name: "CPUHP_AP_KVM_ARM_TIMER_STARTING", value: 134)
!135 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 135)
!136 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 136)
!137 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 137)
!138 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 138)
!139 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 139)
!140 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 140)
!141 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 141)
!142 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 142)
!143 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 143)
!144 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 144)
!145 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 145)
!146 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 146)
!147 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 147)
!148 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 148)
!149 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 149)
!150 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 150)
!151 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 151)
!152 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 152)
!153 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 153)
!154 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 154)
!155 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 155)
!156 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 156)
!157 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 157)
!158 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 158)
!159 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 159)
!160 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 160)
!161 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 161)
!162 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 162)
!163 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 163)
!164 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 164)
!165 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 165)
!166 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 166)
!167 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 167)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 168)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 169)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 170)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 171)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 172)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 173)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 174)
!175 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 175)
!176 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 176)
!177 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 177)
!178 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 178)
!179 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 179)
!180 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 180)
!181 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 181)
!182 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 182)
!183 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 212)
!184 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 213)
!185 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 214)
!186 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 215)
!187 = !DIEnumerator(name: "CPUHP_ONLINE", value: 216)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 10, baseType: !7, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!190 = !{!191, !192}
!191 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vdso_clock_mode", file: !194, line: 11, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/vdso/clocksource.h", directory: "/home/lizy2001/genbc/linux")
!195 = !{!196, !197, !198, !199, !200, !201}
!196 = !DIEnumerator(name: "VDSO_CLOCKMODE_NONE", value: 0, isUnsigned: true)
!197 = !DIEnumerator(name: "VDSO_CLOCKMODE_TSC", value: 1, isUnsigned: true)
!198 = !DIEnumerator(name: "VDSO_CLOCKMODE_PVCLOCK", value: 2, isUnsigned: true)
!199 = !DIEnumerator(name: "VDSO_CLOCKMODE_HVCLOCK", value: 3, isUnsigned: true)
!200 = !DIEnumerator(name: "VDSO_CLOCKMODE_MAX", value: 4, isUnsigned: true)
!201 = !DIEnumerator(name: "VDSO_CLOCKMODE_TIMENS", value: 2147483647, isUnsigned: true)
!202 = !{!203, !283, !251, !233, !214, !284, !16, !228, !285, !288, !291, !294, !295}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_event_device", file: !6, line: 100, size: 2048, align: 512, elements: !205)
!205 = !{!206, !210, !215, !226, !227, !231, !232, !235, !236, !237, !238, !239, !243, !244, !245, !246, !247, !260, !261, !262, !263, !264, !268, !269, !270, !271, !272, !279}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "event_handler", scope: !204, file: !6, line: 101, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !203}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_event", scope: !204, file: !6, line: 102, baseType: !211, size: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!16, !214, !203}
!214 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_ktime", scope: !204, file: !6, line: 103, baseType: !216, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!16, !219, !203}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !220, line: 29, baseType: !221)
!220 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !222, line: 22, baseType: !223)
!222 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !224, line: 30, baseType: !225)
!224 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!225 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next_event", scope: !204, file: !6, line: 104, baseType: !219, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ns", scope: !204, file: !6, line: 105, baseType: !228, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !222, line: 23, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !224, line: 31, baseType: !230)
!230 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ns", scope: !204, file: !6, line: 106, baseType: !228, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !204, file: !6, line: 107, baseType: !233, size: 32, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !222, line: 21, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !224, line: 27, baseType: !7)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !204, file: !6, line: 108, baseType: !233, size: 32, offset: 416)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !204, file: !6, line: 109, baseType: !5, size: 32, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !204, file: !6, line: 110, baseType: !7, size: 32, offset: 480)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !204, file: !6, line: 111, baseType: !214, size: 64, offset: 512)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_periodic", scope: !204, file: !6, line: 113, baseType: !240, size: 64, offset: 576)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!16, !203}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot", scope: !204, file: !6, line: 114, baseType: !240, size: 64, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot_stopped", scope: !204, file: !6, line: 115, baseType: !240, size: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_shutdown", scope: !204, file: !6, line: 116, baseType: !240, size: 64, offset: 768)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tick_resume", scope: !204, file: !6, line: 117, baseType: !240, size: 64, offset: 832)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast", scope: !204, file: !6, line: 119, baseType: !248, size: 64, offset: 896)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !254, line: 17, size: 64, elements: !255)
!254 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !253, file: !254, line: 17, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 64, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 1)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !204, file: !6, line: 120, baseType: !207, size: 64, offset: 960)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !204, file: !6, line: 121, baseType: !207, size: 64, offset: 1024)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ticks", scope: !204, file: !6, line: 122, baseType: !214, size: 64, offset: 1088)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ticks", scope: !204, file: !6, line: 123, baseType: !214, size: 64, offset: 1152)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !6, line: 125, baseType: !265, size: 64, offset: 1216)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !204, file: !6, line: 126, baseType: !16, size: 32, offset: 1280)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !204, file: !6, line: 127, baseType: !16, size: 32, offset: 1312)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "bound_on", scope: !204, file: !6, line: 128, baseType: !16, size: 32, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !204, file: !6, line: 129, baseType: !251, size: 64, offset: 1408)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !204, file: !6, line: 130, baseType: !273, size: 128, offset: 1472)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !274, line: 178, size: 128, elements: !275)
!274 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!275 = !{!276, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !273, file: !274, line: 179, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !273, file: !274, line: 179, baseType: !277, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !204, file: !6, line: 131, baseType: !280, size: 64, offset: 1600)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !282, line: 76, flags: DIFlagFwdDecl)
!282 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !230)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !225)
!294 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!296 = !{!0, !297, !299, !303, !305, !307, !309, !314, !336, !373}
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "hv_sched_clock_offset", scope: !2, file: !3, line: 26, type: !228, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "direct_mode_enabled", scope: !2, file: !3, line: 44, type: !301, isLocal: true, isDefinition: true)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !274, line: 30, baseType: !302)
!302 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "stimer0_irq", scope: !2, file: !3, line: 46, type: !16, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "stimer0_vector", scope: !2, file: !3, line: 47, type: !16, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "stimer0_message_sint", scope: !2, file: !3, line: 48, type: !16, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "hv_read_reference_counter", scope: !2, file: !3, line: 315, type: !311, isLocal: false, isDefinition: true)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!228}
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "tsc_pg", scope: !2, file: !3, line: 321, type: !316, isLocal: true, isDefinition: true, align: 32768)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !3, line: 318, size: 32768, elements: !317)
!317 = !{!318, !329}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !316, file: !3, line: 319, baseType: !319, size: 192)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ms_hyperv_tsc_page", file: !320, line: 97, size: 192, elements: !321)
!320 = !DIFile(filename: "./include/asm-generic/hyperv-tlfs.h", directory: "/home/lizy2001/genbc/linux")
!321 = !{!322, !324, !325, !327}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_sequence", scope: !319, file: !320, line: 98, baseType: !323, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !233)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !319, file: !320, line: 99, baseType: !233, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_scale", scope: !319, file: !320, line: 100, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !228)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_offset", scope: !319, file: !320, line: 101, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !221)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !316, file: !3, line: 320, baseType: !330, size: 32768)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 32768, elements: !334)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !222, line: 17, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !224, line: 21, baseType: !333)
!333 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!334 = !{!335}
!335 = !DISubrange(count: 4096)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "hyperv_cs_tsc", scope: !2, file: !3, line: 379, type: !338, isLocal: true, isDefinition: true)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clocksource", file: !339, line: 89, size: 1408, elements: !340)
!339 = !DIFile(filename: "./include/linux/clocksource.h", directory: "/home/lizy2001/genbc/linux")
!340 = !{!341, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !361, !365, !366, !367, !368, !369, !370, !371, !372}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !338, file: !339, line: 90, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!228, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !338, file: !339, line: 91, baseType: !228, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !338, file: !339, line: 92, baseType: !233, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !338, file: !339, line: 93, baseType: !233, size: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "max_idle_ns", scope: !338, file: !339, line: 94, baseType: !228, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "maxadj", scope: !338, file: !339, line: 95, baseType: !233, size: 32, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "max_cycles", scope: !338, file: !339, line: 99, baseType: !228, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !338, file: !339, line: 100, baseType: !265, size: 64, offset: 384)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !338, file: !339, line: 101, baseType: !273, size: 128, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !338, file: !339, line: 102, baseType: !16, size: 32, offset: 576)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_clock_mode", scope: !338, file: !339, line: 103, baseType: !193, size: 32, offset: 608)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !338, file: !339, line: 104, baseType: !214, size: 64, offset: 640)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !338, file: !339, line: 106, baseType: !358, size: 64, offset: 704)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!16, !345}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !338, file: !339, line: 107, baseType: !362, size: 64, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !345}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !338, file: !339, line: 108, baseType: !362, size: 64, offset: 832)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !338, file: !339, line: 109, baseType: !362, size: 64, offset: 896)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "mark_unstable", scope: !338, file: !339, line: 110, baseType: !362, size: 64, offset: 960)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tick_stable", scope: !338, file: !339, line: 111, baseType: !362, size: 64, offset: 1024)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wd_list", scope: !338, file: !339, line: 116, baseType: !273, size: 128, offset: 1088)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "cs_last", scope: !338, file: !339, line: 117, baseType: !228, size: 64, offset: 1216)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wd_last", scope: !338, file: !339, line: 118, baseType: !228, size: 64, offset: 1280)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !338, file: !339, line: 120, baseType: !280, size: 64, offset: 1344)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "hyperv_cs_msr", scope: !2, file: !3, line: 413, type: !338, isLocal: true, isDefinition: true)
!375 = !{!"rsp"}
!376 = !{i32 7, !"Dwarf Version", i32 4}
!377 = !{i32 2, !"Debug Info Version", i32 3}
!378 = !{i32 1, !"wchar_size", i32 2}
!379 = !{i32 1, !"Code Model", i32 2}
!380 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!381 = distinct !DISubprogram(name: "hv_stimer0_isr", scope: !3, file: !3, line: 55, type: !382, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{null}
!384 = !{}
!385 = !DILocalVariable(name: "ce", scope: !381, file: !3, line: 57, type: !203)
!386 = !DILocation(line: 57, column: 29, scope: !381)
!387 = !DILocation(line: 59, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 59, column: 7)
!389 = distinct !DILexicalBlock(scope: !381, file: !3, line: 59, column: 7)
!390 = !DILocalVariable(name: "__vpp_verify", scope: !391, file: !3, line: 59, type: !392)
!391 = distinct !DILexicalBlock(scope: !388, file: !3, line: 59, column: 7)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!394 = !DILocation(line: 59, column: 7, scope: !391)
!395 = !DILocation(line: 59, column: 7, scope: !389)
!396 = !DILocation(line: 59, column: 5, scope: !381)
!397 = !DILocation(line: 60, column: 2, scope: !381)
!398 = !DILocation(line: 60, column: 6, scope: !381)
!399 = !DILocation(line: 60, column: 20, scope: !381)
!400 = !DILocation(line: 61, column: 1, scope: !381)
!401 = distinct !DISubprogram(name: "hv_stimer_cleanup", scope: !3, file: !3, line: 141, type: !402, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!402 = !DISubroutineType(types: !403)
!403 = !{!16, !7}
!404 = !DILocalVariable(name: "cpu", arg: 1, scope: !401, file: !3, line: 141, type: !7)
!405 = !DILocation(line: 141, column: 36, scope: !401)
!406 = !DILocalVariable(name: "ce", scope: !401, file: !3, line: 143, type: !203)
!407 = !DILocation(line: 143, column: 29, scope: !401)
!408 = !DILocation(line: 145, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !401, file: !3, line: 145, column: 6)
!410 = !DILocation(line: 145, column: 6, scope: !401)
!411 = !DILocation(line: 146, column: 3, scope: !409)
!412 = !DILocation(line: 162, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !401, file: !3, line: 162, column: 7)
!414 = !DILocation(line: 162, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !413, file: !3, line: 162, column: 7)
!416 = !DILocalVariable(name: "__vpp_verify", scope: !417, file: !3, line: 162, type: !392)
!417 = distinct !DILexicalBlock(scope: !415, file: !3, line: 162, column: 7)
!418 = !DILocation(line: 162, column: 7, scope: !417)
!419 = !DILocation(line: 162, column: 5, scope: !401)
!420 = !DILocation(line: 163, column: 6, scope: !421)
!421 = distinct !DILexicalBlock(scope: !401, file: !3, line: 163, column: 6)
!422 = !DILocation(line: 163, column: 6, scope: !401)
!423 = !DILocation(line: 164, column: 18, scope: !421)
!424 = !DILocation(line: 164, column: 3, scope: !421)
!425 = !DILocation(line: 166, column: 29, scope: !421)
!426 = !DILocation(line: 166, column: 33, scope: !421)
!427 = !DILocation(line: 166, column: 3, scope: !421)
!428 = !DILocation(line: 168, column: 2, scope: !401)
!429 = !DILocation(line: 169, column: 1, scope: !401)
!430 = distinct !DISubprogram(name: "hv_ce_shutdown", scope: !3, file: !3, line: 75, type: !241, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!431 = !DILocalVariable(name: "evt", arg: 1, scope: !430, file: !3, line: 75, type: !203)
!432 = !DILocation(line: 75, column: 54, scope: !430)
!433 = !DILocation(line: 77, column: 2, scope: !430)
!434 = !DILocation(line: 78, column: 2, scope: !430)
!435 = !DILocation(line: 79, column: 6, scope: !436)
!436 = distinct !DILexicalBlock(scope: !430, file: !3, line: 79, column: 6)
!437 = !DILocation(line: 79, column: 6, scope: !430)
!438 = !DILocation(line: 80, column: 33, scope: !436)
!439 = !DILocation(line: 80, column: 3, scope: !436)
!440 = !DILocation(line: 82, column: 2, scope: !430)
!441 = distinct !DISubprogram(name: "hv_stimer_alloc", scope: !3, file: !3, line: 173, type: !442, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!442 = !DISubroutineType(types: !443)
!443 = !{!16}
!444 = !DILocalVariable(name: "ret", scope: !441, file: !3, line: 175, type: !16)
!445 = !DILocation(line: 175, column: 6, scope: !441)
!446 = !DILocation(line: 182, column: 18, scope: !447)
!447 = distinct !DILexicalBlock(scope: !441, file: !3, line: 182, column: 6)
!448 = !DILocation(line: 182, column: 8, scope: !447)
!449 = !DILocation(line: 182, column: 27, scope: !447)
!450 = !DILocation(line: 182, column: 6, scope: !441)
!451 = !DILocation(line: 183, column: 3, scope: !447)
!452 = !DILocation(line: 185, column: 19, scope: !441)
!453 = !DILocation(line: 185, column: 17, scope: !441)
!454 = !DILocation(line: 186, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !441, file: !3, line: 186, column: 6)
!456 = !DILocation(line: 186, column: 6, scope: !441)
!457 = !DILocation(line: 187, column: 3, scope: !455)
!458 = !DILocation(line: 189, column: 34, scope: !441)
!459 = !DILocation(line: 189, column: 24, scope: !441)
!460 = !DILocation(line: 189, column: 48, scope: !441)
!461 = !DILocation(line: 189, column: 22, scope: !441)
!462 = !DILocation(line: 191, column: 6, scope: !463)
!463 = distinct !DILexicalBlock(scope: !441, file: !3, line: 191, column: 6)
!464 = !DILocation(line: 191, column: 6, scope: !441)
!465 = !DILocation(line: 192, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 191, column: 27)
!467 = !DILocation(line: 192, column: 7, scope: !466)
!468 = !DILocation(line: 194, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !3, line: 194, column: 7)
!470 = !DILocation(line: 194, column: 7, scope: !466)
!471 = !DILocation(line: 195, column: 4, scope: !469)
!472 = !DILocation(line: 202, column: 9, scope: !466)
!473 = !DILocation(line: 202, column: 7, scope: !466)
!474 = !DILocation(line: 205, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !466, file: !3, line: 205, column: 7)
!476 = !DILocation(line: 205, column: 11, scope: !475)
!477 = !DILocation(line: 205, column: 7, scope: !466)
!478 = !DILocation(line: 206, column: 4, scope: !475)
!479 = !DILocation(line: 207, column: 2, scope: !466)
!480 = !DILocation(line: 208, column: 9, scope: !441)
!481 = !DILocation(line: 208, column: 2, scope: !441)
!482 = !DILabel(scope: !441, name: "free_stimer0_irq", file: !3, line: 210)
!483 = !DILocation(line: 210, column: 1, scope: !441)
!484 = !DILocation(line: 211, column: 24, scope: !441)
!485 = !DILocation(line: 211, column: 2, scope: !441)
!486 = !DILocation(line: 212, column: 14, scope: !441)
!487 = !DILocation(line: 212, column: 2, scope: !441)
!488 = !DILabel(scope: !441, name: "free_percpu", file: !3, line: 213)
!489 = !DILocation(line: 213, column: 1, scope: !441)
!490 = !DILocation(line: 214, column: 14, scope: !441)
!491 = !DILocation(line: 214, column: 2, scope: !441)
!492 = !DILocation(line: 215, column: 17, scope: !441)
!493 = !DILocation(line: 216, column: 9, scope: !441)
!494 = !DILocation(line: 216, column: 2, scope: !441)
!495 = !DILocation(line: 217, column: 1, scope: !441)
!496 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !15, file: !15, line: 218, type: !497, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!497 = !DISubroutineType(types: !498)
!498 = !{!16, !14, !265, !499, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!500 = !DILocalVariable(name: "state", arg: 1, scope: !496, file: !15, line: 218, type: !14)
!501 = !DILocation(line: 218, column: 54, scope: !496)
!502 = !DILocalVariable(name: "name", arg: 2, scope: !496, file: !15, line: 219, type: !265)
!503 = !DILocation(line: 219, column: 21, scope: !496)
!504 = !DILocalVariable(name: "startup", arg: 3, scope: !496, file: !15, line: 220, type: !499)
!505 = !DILocation(line: 220, column: 15, scope: !496)
!506 = !DILocalVariable(name: "teardown", arg: 4, scope: !496, file: !15, line: 221, type: !499)
!507 = !DILocation(line: 221, column: 15, scope: !496)
!508 = !DILocation(line: 223, column: 29, scope: !496)
!509 = !DILocation(line: 223, column: 36, scope: !496)
!510 = !DILocation(line: 223, column: 48, scope: !496)
!511 = !DILocation(line: 223, column: 57, scope: !496)
!512 = !DILocation(line: 223, column: 9, scope: !496)
!513 = !DILocation(line: 223, column: 2, scope: !496)
!514 = distinct !DISubprogram(name: "hv_stimer_init", scope: !3, file: !3, line: 115, type: !402, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!515 = !DILocalVariable(name: "cpu", arg: 1, scope: !514, file: !3, line: 115, type: !7)
!516 = !DILocation(line: 115, column: 40, scope: !514)
!517 = !DILocalVariable(name: "ce", scope: !514, file: !3, line: 117, type: !203)
!518 = !DILocation(line: 117, column: 29, scope: !514)
!519 = !DILocation(line: 119, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !514, file: !3, line: 119, column: 6)
!521 = !DILocation(line: 119, column: 6, scope: !514)
!522 = !DILocation(line: 120, column: 3, scope: !520)
!523 = !DILocation(line: 122, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !514, file: !3, line: 122, column: 7)
!525 = !DILocation(line: 122, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !524, file: !3, line: 122, column: 7)
!527 = !DILocalVariable(name: "__vpp_verify", scope: !528, file: !3, line: 122, type: !392)
!528 = distinct !DILexicalBlock(scope: !526, file: !3, line: 122, column: 7)
!529 = !DILocation(line: 122, column: 7, scope: !528)
!530 = !DILocation(line: 122, column: 5, scope: !514)
!531 = !DILocation(line: 123, column: 2, scope: !514)
!532 = !DILocation(line: 123, column: 6, scope: !514)
!533 = !DILocation(line: 123, column: 11, scope: !514)
!534 = !DILocation(line: 124, column: 2, scope: !514)
!535 = !DILocation(line: 124, column: 6, scope: !514)
!536 = !DILocation(line: 124, column: 15, scope: !514)
!537 = !DILocation(line: 125, column: 16, scope: !514)
!538 = !DILocation(line: 125, column: 2, scope: !514)
!539 = !DILocation(line: 125, column: 6, scope: !514)
!540 = !DILocation(line: 125, column: 14, scope: !514)
!541 = !DILocation(line: 126, column: 2, scope: !514)
!542 = !DILocation(line: 126, column: 6, scope: !514)
!543 = !DILocation(line: 126, column: 13, scope: !514)
!544 = !DILocation(line: 127, column: 2, scope: !514)
!545 = !DILocation(line: 127, column: 6, scope: !514)
!546 = !DILocation(line: 127, column: 25, scope: !514)
!547 = !DILocation(line: 128, column: 2, scope: !514)
!548 = !DILocation(line: 128, column: 6, scope: !514)
!549 = !DILocation(line: 128, column: 24, scope: !514)
!550 = !DILocation(line: 129, column: 2, scope: !514)
!551 = !DILocation(line: 129, column: 6, scope: !514)
!552 = !DILocation(line: 129, column: 21, scope: !514)
!553 = !DILocation(line: 131, column: 34, scope: !514)
!554 = !DILocation(line: 131, column: 2, scope: !514)
!555 = !DILocation(line: 135, column: 2, scope: !514)
!556 = !DILocation(line: 136, column: 1, scope: !514)
!557 = distinct !DISubprogram(name: "hv_stimer_legacy_init", scope: !3, file: !3, line: 226, type: !558, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !7, !16}
!560 = !DILocalVariable(name: "cpu", arg: 1, scope: !557, file: !3, line: 226, type: !7)
!561 = !DILocation(line: 226, column: 41, scope: !557)
!562 = !DILocalVariable(name: "sint", arg: 2, scope: !557, file: !3, line: 226, type: !16)
!563 = !DILocation(line: 226, column: 50, scope: !557)
!564 = !DILocation(line: 228, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !557, file: !3, line: 228, column: 6)
!566 = !DILocation(line: 228, column: 6, scope: !557)
!567 = !DILocation(line: 229, column: 3, scope: !565)
!568 = !DILocation(line: 238, column: 25, scope: !557)
!569 = !DILocation(line: 238, column: 23, scope: !557)
!570 = !DILocation(line: 239, column: 23, scope: !557)
!571 = !DILocation(line: 239, column: 8, scope: !557)
!572 = !DILocation(line: 240, column: 1, scope: !557)
!573 = distinct !DISubprogram(name: "hv_stimer_legacy_cleanup", scope: !3, file: !3, line: 249, type: !574, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !7}
!576 = !DILocalVariable(name: "cpu", arg: 1, scope: !573, file: !3, line: 249, type: !7)
!577 = !DILocation(line: 249, column: 44, scope: !573)
!578 = !DILocation(line: 251, column: 6, scope: !579)
!579 = distinct !DILexicalBlock(scope: !573, file: !3, line: 251, column: 6)
!580 = !DILocation(line: 251, column: 6, scope: !573)
!581 = !DILocation(line: 252, column: 3, scope: !579)
!582 = !DILocation(line: 253, column: 26, scope: !573)
!583 = !DILocation(line: 253, column: 8, scope: !573)
!584 = !DILocation(line: 254, column: 1, scope: !573)
!585 = distinct !DISubprogram(name: "hv_stimer_free", scope: !3, file: !3, line: 259, type: !382, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!586 = !DILocation(line: 261, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !585, file: !3, line: 261, column: 6)
!588 = !DILocation(line: 261, column: 6, scope: !585)
!589 = !DILocation(line: 262, column: 3, scope: !587)
!590 = !DILocation(line: 264, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !585, file: !3, line: 264, column: 6)
!592 = !DILocation(line: 264, column: 6, scope: !585)
!593 = !DILocation(line: 265, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !3, line: 264, column: 27)
!595 = !DILocation(line: 266, column: 25, scope: !594)
!596 = !DILocation(line: 266, column: 3, scope: !594)
!597 = !DILocation(line: 267, column: 15, scope: !594)
!598 = !DILocation(line: 268, column: 2, scope: !594)
!599 = !DILocation(line: 269, column: 14, scope: !585)
!600 = !DILocation(line: 269, column: 2, scope: !585)
!601 = !DILocation(line: 270, column: 17, scope: !585)
!602 = !DILocation(line: 271, column: 1, scope: !585)
!603 = distinct !DISubprogram(name: "cpuhp_remove_state", scope: !15, file: !15, line: 341, type: !604, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !14}
!606 = !DILocalVariable(name: "state", arg: 1, scope: !603, file: !15, line: 341, type: !14)
!607 = !DILocation(line: 341, column: 56, scope: !603)
!608 = !DILocation(line: 343, column: 23, scope: !603)
!609 = !DILocation(line: 343, column: 2, scope: !603)
!610 = !DILocation(line: 344, column: 1, scope: !603)
!611 = distinct !DISubprogram(name: "hv_stimer_global_cleanup", scope: !3, file: !3, line: 278, type: !382, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!612 = !DILocalVariable(name: "cpu", scope: !611, file: !3, line: 280, type: !16)
!613 = !DILocation(line: 280, column: 6, scope: !611)
!614 = !DILocation(line: 286, column: 2, scope: !615)
!615 = distinct !DILexicalBlock(scope: !611, file: !3, line: 286, column: 2)
!616 = !DILocation(line: 286, column: 2, scope: !617)
!617 = distinct !DILexicalBlock(scope: !615, file: !3, line: 286, column: 2)
!618 = !DILocation(line: 287, column: 28, scope: !619)
!619 = distinct !DILexicalBlock(scope: !617, file: !3, line: 286, column: 28)
!620 = !DILocation(line: 287, column: 3, scope: !619)
!621 = !DILocation(line: 288, column: 2, scope: !619)
!622 = distinct !{!622, !614, !623}
!623 = !DILocation(line: 288, column: 2, scope: !615)
!624 = !DILocation(line: 295, column: 2, scope: !611)
!625 = !DILocation(line: 296, column: 1, scope: !611)
!626 = distinct !DISubprogram(name: "hv_get_tsc_page", scope: !3, file: !3, line: 323, type: !627, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!627 = !DISubroutineType(types: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!630 = !DILocation(line: 325, column: 2, scope: !626)
!631 = distinct !DISubprogram(name: "hv_init_clocksource", scope: !3, file: !3, line: 453, type: !382, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !384)
!632 = !DILocalVariable(name: "sched_clock", arg: 1, scope: !633, file: !634, line: 63, type: !283)
!633 = distinct !DISubprogram(name: "hv_setup_sched_clock", scope: !634, file: !634, line: 63, type: !635, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!634 = !DIFile(filename: "./arch/x86/include/asm/mshyperv.h", directory: "/home/lizy2001/genbc/linux")
!635 = !DISubroutineType(types: !636)
!636 = !{null, !283}
!637 = !DILocation(line: 63, column: 56, scope: !633, inlinedAt: !638)
!638 = distinct !DILocation(line: 473, column: 2, scope: !631)
!639 = !DILocation(line: 463, column: 6, scope: !640)
!640 = distinct !DILexicalBlock(scope: !631, file: !3, line: 463, column: 6)
!641 = !DILocation(line: 463, column: 6, scope: !631)
!642 = !DILocation(line: 464, column: 3, scope: !640)
!643 = !DILocation(line: 466, column: 18, scope: !644)
!644 = distinct !DILexicalBlock(scope: !631, file: !3, line: 466, column: 6)
!645 = !DILocation(line: 466, column: 8, scope: !644)
!646 = !DILocation(line: 466, column: 27, scope: !644)
!647 = !DILocation(line: 466, column: 6, scope: !631)
!648 = !DILocation(line: 467, column: 3, scope: !644)
!649 = !DILocation(line: 469, column: 28, scope: !631)
!650 = !DILocation(line: 470, column: 2, scope: !631)
!651 = !DILocation(line: 472, column: 26, scope: !631)
!652 = !DILocation(line: 472, column: 24, scope: !631)
!653 = !DILocation(line: 66, column: 28, scope: !633, inlinedAt: !638)
!654 = !DILocation(line: 66, column: 26, scope: !633, inlinedAt: !638)
!655 = !DILocation(line: 474, column: 1, scope: !631)
!656 = distinct !DISubprogram(name: "hv_init_tsc_clocksource", scope: !3, file: !3, line: 421, type: !657, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!657 = !DISubroutineType(types: !658)
!658 = !{!301}
!659 = !DILocation(line: 63, column: 56, scope: !633, inlinedAt: !660)
!660 = distinct !DILocation(line: 448, column: 2, scope: !656)
!661 = !DILocalVariable(name: "tsc_msr", scope: !656, file: !3, line: 423, type: !228)
!662 = !DILocation(line: 423, column: 7, scope: !656)
!663 = !DILocalVariable(name: "phys_addr", scope: !656, file: !3, line: 424, type: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !274, line: 153, baseType: !228)
!665 = !DILocation(line: 424, column: 14, scope: !656)
!666 = !DILocation(line: 426, column: 18, scope: !667)
!667 = distinct !DILexicalBlock(scope: !656, file: !3, line: 426, column: 6)
!668 = !DILocation(line: 426, column: 8, scope: !667)
!669 = !DILocation(line: 426, column: 27, scope: !667)
!670 = !DILocation(line: 426, column: 6, scope: !656)
!671 = !DILocation(line: 427, column: 3, scope: !667)
!672 = !DILocation(line: 429, column: 28, scope: !656)
!673 = !DILocation(line: 430, column: 27, scope: !656)
!674 = !DILocation(line: 430, column: 14, scope: !656)
!675 = !DILocation(line: 430, column: 12, scope: !656)
!676 = !DILocation(line: 439, column: 2, scope: !656)
!677 = !DILocation(line: 439, column: 2, scope: !678)
!678 = distinct !DILexicalBlock(scope: !656, file: !3, line: 439, column: 2)
!679 = !DILocation(line: 440, column: 10, scope: !656)
!680 = !DILocation(line: 441, column: 12, scope: !656)
!681 = !DILocation(line: 441, column: 20, scope: !656)
!682 = !DILocation(line: 441, column: 33, scope: !656)
!683 = !DILocation(line: 441, column: 26, scope: !656)
!684 = !DILocation(line: 441, column: 10, scope: !656)
!685 = !DILocation(line: 442, column: 2, scope: !656)
!686 = !DILocation(line: 444, column: 2, scope: !656)
!687 = !DILocation(line: 445, column: 2, scope: !656)
!688 = !DILocation(line: 447, column: 26, scope: !656)
!689 = !DILocation(line: 447, column: 24, scope: !656)
!690 = !DILocation(line: 66, column: 28, scope: !633, inlinedAt: !660)
!691 = !DILocation(line: 66, column: 26, scope: !633, inlinedAt: !660)
!692 = !DILocation(line: 450, column: 2, scope: !656)
!693 = !DILocation(line: 451, column: 1, scope: !656)
!694 = distinct !DISubprogram(name: "read_hv_clock_msr", scope: !3, file: !3, line: 390, type: !312, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!695 = !DILocalVariable(name: "current_tick", scope: !694, file: !3, line: 392, type: !228)
!696 = !DILocation(line: 392, column: 6, scope: !694)
!697 = !DILocation(line: 398, column: 2, scope: !694)
!698 = !DILocation(line: 398, column: 2, scope: !699)
!699 = distinct !DILexicalBlock(scope: !694, file: !3, line: 398, column: 2)
!700 = !DILocation(line: 399, column: 9, scope: !694)
!701 = !DILocation(line: 399, column: 2, scope: !694)
!702 = distinct !DISubprogram(name: "clocksource_register_hz", scope: !339, file: !339, line: 235, type: !703, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!703 = !DISubroutineType(types: !704)
!704 = !{!16, !345, !233}
!705 = !DILocalVariable(name: "cs", arg: 1, scope: !702, file: !339, line: 235, type: !345)
!706 = !DILocation(line: 235, column: 63, scope: !702)
!707 = !DILocalVariable(name: "hz", arg: 2, scope: !702, file: !339, line: 235, type: !233)
!708 = !DILocation(line: 235, column: 71, scope: !702)
!709 = !DILocation(line: 237, column: 38, scope: !702)
!710 = !DILocation(line: 237, column: 45, scope: !702)
!711 = !DILocation(line: 237, column: 9, scope: !702)
!712 = !DILocation(line: 237, column: 2, scope: !702)
!713 = distinct !DISubprogram(name: "read_hv_sched_clock_msr", scope: !3, file: !3, line: 407, type: !312, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!714 = !DILocation(line: 409, column: 10, scope: !713)
!715 = !DILocation(line: 409, column: 32, scope: !713)
!716 = !DILocation(line: 409, column: 30, scope: !713)
!717 = !DILocation(line: 409, column: 55, scope: !713)
!718 = !DILocation(line: 409, column: 2, scope: !713)
!719 = distinct !DISubprogram(name: "wrmsrl", scope: !720, file: !720, line: 202, type: !721, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!720 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!721 = !DISubroutineType(types: !722)
!722 = !{null, !7, !228}
!723 = !DILocalVariable(name: "msr", arg: 1, scope: !719, file: !720, line: 202, type: !7)
!724 = !DILocation(line: 202, column: 36, scope: !719)
!725 = !DILocalVariable(name: "val", arg: 2, scope: !719, file: !720, line: 202, type: !228)
!726 = !DILocation(line: 202, column: 45, scope: !719)
!727 = !DILocation(line: 204, column: 2, scope: !719)
!728 = !DILocation(line: 204, column: 2, scope: !729)
!729 = distinct !DILexicalBlock(scope: !719, file: !720, line: 204, column: 2)
!730 = !DILocation(line: 205, column: 1, scope: !719)
!731 = distinct !DISubprogram(name: "hv_disable_stimer0_percpu_irq", scope: !634, file: !634, line: 73, type: !732, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !16}
!734 = !DILocalVariable(name: "irq", arg: 1, scope: !731, file: !634, line: 73, type: !16)
!735 = !DILocation(line: 73, column: 54, scope: !731)
!736 = !DILocation(line: 73, column: 60, scope: !731)
!737 = distinct !DISubprogram(name: "paravirt_write_msr", scope: !720, file: !720, line: 168, type: !738, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !7, !7, !7}
!740 = !DILocalVariable(name: "msr", arg: 1, scope: !737, file: !720, line: 168, type: !7)
!741 = !DILocation(line: 168, column: 48, scope: !737)
!742 = !DILocalVariable(name: "low", arg: 2, scope: !737, file: !720, line: 169, type: !7)
!743 = !DILocation(line: 169, column: 20, scope: !737)
!744 = !DILocalVariable(name: "high", arg: 3, scope: !737, file: !720, line: 169, type: !7)
!745 = !DILocation(line: 169, column: 34, scope: !737)
!746 = !DILocalVariable(name: "__edi", scope: !747, file: !720, line: 171, type: !214)
!747 = distinct !DILexicalBlock(scope: !737, file: !720, line: 171, column: 2)
!748 = !DILocation(line: 171, column: 2, scope: !747)
!749 = !DILocalVariable(name: "__esi", scope: !747, file: !720, line: 171, type: !214)
!750 = !DILocalVariable(name: "__edx", scope: !747, file: !720, line: 171, type: !214)
!751 = !DILocalVariable(name: "__ecx", scope: !747, file: !720, line: 171, type: !214)
!752 = !DILocalVariable(name: "__eax", scope: !747, file: !720, line: 171, type: !214)
!753 = !{i32 -2145992479, i32 -2145987450, i32 -2145987216, i32 -2145987165, i32 -2145987137, i32 -2145987112, i32 -2145987428, i32 -2145987415, i32 -2145986977, i32 -2145986858, i32 -2145987323, i32 -2145987296, i32 -2145987268, i32 -2145987238}
!754 = !DILocation(line: 172, column: 1, scope: !737)
!755 = distinct !DISubprogram(name: "get_cpu_mask", scope: !254, file: !254, line: 884, type: !756, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!756 = !DISubroutineType(types: !757)
!757 = !{!251, !7}
!758 = !DILocalVariable(name: "cpu", arg: 1, scope: !755, file: !254, line: 884, type: !7)
!759 = !DILocation(line: 884, column: 63, scope: !755)
!760 = !DILocalVariable(name: "p", scope: !755, file: !254, line: 886, type: !761)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!763 = !DILocation(line: 886, column: 23, scope: !755)
!764 = !DILocation(line: 886, column: 46, scope: !755)
!765 = !DILocation(line: 886, column: 50, scope: !755)
!766 = !DILocation(line: 886, column: 44, scope: !755)
!767 = !DILocation(line: 886, column: 27, scope: !755)
!768 = !DILocation(line: 887, column: 7, scope: !755)
!769 = !DILocation(line: 887, column: 11, scope: !755)
!770 = !DILocation(line: 887, column: 4, scope: !755)
!771 = !DILocation(line: 888, column: 9, scope: !755)
!772 = !DILocation(line: 888, column: 2, scope: !755)
!773 = distinct !DISubprogram(name: "hv_ce_set_oneshot", scope: !3, file: !3, line: 85, type: !241, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!774 = !DILocalVariable(name: "evt", arg: 1, scope: !773, file: !3, line: 85, type: !203)
!775 = !DILocation(line: 85, column: 57, scope: !773)
!776 = !DILocalVariable(name: "timer_cfg", scope: !773, file: !3, line: 87, type: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "hv_stimer_config", file: !320, line: 275, size: 64, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "as_uint64", scope: !777, file: !320, line: 276, baseType: !228, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !320, line: 277, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !320, line: 277, size: 64, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !781, file: !320, line: 278, baseType: !228, size: 1, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !781, file: !320, line: 279, baseType: !228, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lazy", scope: !781, file: !320, line: 280, baseType: !228, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "auto_enable", scope: !781, file: !320, line: 281, baseType: !228, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "apic_vector", scope: !781, file: !320, line: 282, baseType: !228, size: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mode", scope: !781, file: !320, line: 283, baseType: !228, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_z0", scope: !781, file: !320, line: 284, baseType: !228, size: 3, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sintx", scope: !781, file: !320, line: 285, baseType: !228, size: 4, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_z1", scope: !781, file: !320, line: 286, baseType: !228, size: 44, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!792 = !DILocation(line: 87, column: 25, scope: !773)
!793 = !DILocation(line: 89, column: 12, scope: !773)
!794 = !DILocation(line: 89, column: 22, scope: !773)
!795 = !DILocation(line: 90, column: 12, scope: !773)
!796 = !DILocation(line: 90, column: 19, scope: !773)
!797 = !DILocation(line: 91, column: 12, scope: !773)
!798 = !DILocation(line: 91, column: 24, scope: !773)
!799 = !DILocation(line: 92, column: 6, scope: !800)
!800 = distinct !DILexicalBlock(scope: !773, file: !3, line: 92, column: 6)
!801 = !DILocation(line: 92, column: 6, scope: !773)
!802 = !DILocation(line: 97, column: 13, scope: !803)
!803 = distinct !DILexicalBlock(scope: !800, file: !3, line: 92, column: 27)
!804 = !DILocation(line: 97, column: 25, scope: !803)
!805 = !DILocation(line: 98, column: 27, scope: !803)
!806 = !DILocation(line: 98, column: 13, scope: !803)
!807 = !DILocation(line: 98, column: 25, scope: !803)
!808 = !DILocation(line: 99, column: 32, scope: !803)
!809 = !DILocation(line: 99, column: 3, scope: !803)
!810 = !DILocation(line: 100, column: 2, scope: !803)
!811 = !DILocation(line: 105, column: 13, scope: !812)
!812 = distinct !DILexicalBlock(scope: !800, file: !3, line: 100, column: 9)
!813 = !DILocation(line: 105, column: 25, scope: !812)
!814 = !DILocation(line: 106, column: 21, scope: !812)
!815 = !DILocation(line: 106, column: 13, scope: !812)
!816 = !DILocation(line: 106, column: 19, scope: !812)
!817 = !DILocation(line: 108, column: 2, scope: !773)
!818 = !DILocation(line: 109, column: 2, scope: !773)
!819 = distinct !DISubprogram(name: "hv_ce_set_next_event", scope: !3, file: !3, line: 64, type: !212, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!820 = !DILocalVariable(name: "delta", arg: 1, scope: !819, file: !3, line: 64, type: !214)
!821 = !DILocation(line: 64, column: 47, scope: !819)
!822 = !DILocalVariable(name: "evt", arg: 2, scope: !819, file: !3, line: 65, type: !203)
!823 = !DILocation(line: 65, column: 32, scope: !819)
!824 = !DILocalVariable(name: "current_tick", scope: !819, file: !3, line: 67, type: !228)
!825 = !DILocation(line: 67, column: 6, scope: !819)
!826 = !DILocation(line: 69, column: 17, scope: !819)
!827 = !DILocation(line: 69, column: 15, scope: !819)
!828 = !DILocation(line: 70, column: 18, scope: !819)
!829 = !DILocation(line: 70, column: 15, scope: !819)
!830 = !DILocation(line: 71, column: 2, scope: !819)
!831 = !DILocation(line: 72, column: 2, scope: !819)
!832 = distinct !DISubprogram(name: "hv_enable_stimer0_percpu_irq", scope: !634, file: !634, line: 72, type: !732, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!833 = !DILocalVariable(name: "irq", arg: 1, scope: !832, file: !634, line: 72, type: !16)
!834 = !DILocation(line: 72, column: 53, scope: !832)
!835 = !DILocation(line: 72, column: 59, scope: !832)
!836 = distinct !DISubprogram(name: "read_hv_clock_tsc", scope: !3, file: !3, line: 329, type: !312, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!837 = !DILocalVariable(name: "current_tick", scope: !836, file: !3, line: 331, type: !228)
!838 = !DILocation(line: 331, column: 6, scope: !836)
!839 = !DILocation(line: 331, column: 38, scope: !836)
!840 = !DILocation(line: 331, column: 21, scope: !836)
!841 = !DILocation(line: 333, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !836, file: !3, line: 333, column: 6)
!843 = !DILocation(line: 333, column: 19, scope: !842)
!844 = !DILocation(line: 333, column: 6, scope: !836)
!845 = !DILocation(line: 334, column: 3, scope: !842)
!846 = !DILocation(line: 334, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !842, file: !3, line: 334, column: 3)
!848 = !DILocation(line: 336, column: 9, scope: !836)
!849 = !DILocation(line: 336, column: 2, scope: !836)
!850 = distinct !DISubprogram(name: "virt_to_phys", scope: !851, file: !851, line: 129, type: !852, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!851 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!852 = !DISubroutineType(types: !853)
!853 = !{!664, !854}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!856 = !DILocalVariable(name: "address", arg: 1, scope: !850, file: !851, line: 129, type: !854)
!857 = !DILocation(line: 129, column: 55, scope: !850)
!858 = !DILocation(line: 131, column: 9, scope: !850)
!859 = !DILocation(line: 131, column: 2, scope: !850)
!860 = distinct !DISubprogram(name: "paravirt_read_msr", scope: !720, file: !720, line: 163, type: !861, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!861 = !DISubroutineType(types: !862)
!862 = !{!228, !7}
!863 = !DILocalVariable(name: "msr", arg: 1, scope: !860, file: !720, line: 163, type: !7)
!864 = !DILocation(line: 163, column: 46, scope: !860)
!865 = !DILocalVariable(name: "__ret", scope: !866, file: !720, line: 165, type: !228)
!866 = distinct !DILexicalBlock(scope: !860, file: !720, line: 165, column: 9)
!867 = !DILocation(line: 165, column: 9, scope: !866)
!868 = !DILocalVariable(name: "__edi", scope: !866, file: !720, line: 165, type: !214)
!869 = !DILocalVariable(name: "__esi", scope: !866, file: !720, line: 165, type: !214)
!870 = !DILocalVariable(name: "__edx", scope: !866, file: !720, line: 165, type: !214)
!871 = !DILocalVariable(name: "__ecx", scope: !866, file: !720, line: 165, type: !214)
!872 = !DILocalVariable(name: "__eax", scope: !866, file: !720, line: 165, type: !214)
!873 = !DILocation(line: 165, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !720, line: 165, column: 9)
!875 = distinct !DILexicalBlock(scope: !866, file: !720, line: 165, column: 9)
!876 = !{i32 -2145997118, i32 -2145994703, i32 -2145994469, i32 -2145994418, i32 -2145994390, i32 -2145994365, i32 -2145994681, i32 -2145994668, i32 -2145994230, i32 -2145994111, i32 -2145994576, i32 -2145994549, i32 -2145994521, i32 -2145994491}
!877 = !DILocalVariable(name: "__mask", scope: !878, file: !720, line: 165, type: !214)
!878 = distinct !DILexicalBlock(scope: !874, file: !720, line: 165, column: 9)
!879 = !DILocation(line: 165, column: 9, scope: !878)
!880 = !DILocation(line: 165, column: 9, scope: !875)
!881 = !DILocation(line: 165, column: 2, scope: !860)
!882 = distinct !DISubprogram(name: "read_hv_sched_clock_tsc", scope: !3, file: !3, line: 344, type: !312, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!883 = !DILocation(line: 346, column: 10, scope: !882)
!884 = !DILocation(line: 346, column: 32, scope: !882)
!885 = !DILocation(line: 346, column: 30, scope: !882)
!886 = !DILocation(line: 346, column: 55, scope: !882)
!887 = !DILocation(line: 346, column: 2, scope: !882)
!888 = distinct !DISubprogram(name: "hv_read_tsc_page", scope: !889, file: !889, line: 86, type: !890, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!889 = !DIFile(filename: "./include/clocksource/hyperv_timer.h", directory: "/home/lizy2001/genbc/linux")
!890 = !DISubroutineType(types: !891)
!891 = !{!228, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!894 = !DILocalVariable(name: "tsc_pg", arg: 1, scope: !888, file: !889, line: 86, type: !892)
!895 = !DILocation(line: 86, column: 51, scope: !888)
!896 = !DILocalVariable(name: "cur_tsc", scope: !888, file: !889, line: 88, type: !228)
!897 = !DILocation(line: 88, column: 6, scope: !888)
!898 = !DILocation(line: 90, column: 30, scope: !888)
!899 = !DILocation(line: 90, column: 9, scope: !888)
!900 = !DILocation(line: 90, column: 2, scope: !888)
!901 = distinct !DISubprogram(name: "hv_read_tsc_page_tsc", scope: !889, file: !889, line: 39, type: !902, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!902 = !DISubroutineType(types: !903)
!903 = !{!228, !892, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!905 = !DILocalVariable(name: "low", scope: !906, file: !907, line: 218, type: !214)
!906 = distinct !DISubprogram(name: "rdtsc_ordered", scope: !907, file: !907, line: 216, type: !908, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!907 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/lizy2001/genbc/linux")
!908 = !DISubroutineType(types: !909)
!909 = !{!230}
!910 = !DILocation(line: 218, column: 2, scope: !906, inlinedAt: !911)
!911 = distinct !DILocation(line: 72, column: 14, scope: !912)
!912 = distinct !DILexicalBlock(scope: !901, file: !889, line: 60, column: 5)
!913 = !DILocalVariable(name: "high", scope: !906, file: !907, line: 218, type: !214)
!914 = !DILocalVariable(name: "tsc_pg", arg: 1, scope: !901, file: !889, line: 39, type: !892)
!915 = !DILocation(line: 39, column: 55, scope: !901)
!916 = !DILocalVariable(name: "cur_tsc", arg: 2, scope: !901, file: !889, line: 39, type: !904)
!917 = !DILocation(line: 39, column: 68, scope: !901)
!918 = !DILocalVariable(name: "scale", scope: !901, file: !889, line: 41, type: !228)
!919 = !DILocation(line: 41, column: 6, scope: !901)
!920 = !DILocalVariable(name: "offset", scope: !901, file: !889, line: 41, type: !228)
!921 = !DILocation(line: 41, column: 13, scope: !901)
!922 = !DILocalVariable(name: "sequence", scope: !901, file: !889, line: 42, type: !233)
!923 = !DILocation(line: 42, column: 6, scope: !901)
!924 = !DILocation(line: 60, column: 2, scope: !901)
!925 = !DILocation(line: 61, column: 14, scope: !926)
!926 = distinct !DILexicalBlock(scope: !912, file: !889, line: 61, column: 14)
!927 = !DILocation(line: 61, column: 14, scope: !928)
!928 = distinct !DILexicalBlock(scope: !926, file: !889, line: 61, column: 14)
!929 = !DILocation(line: 61, column: 12, scope: !912)
!930 = !DILocation(line: 62, column: 8, scope: !931)
!931 = distinct !DILexicalBlock(scope: !912, file: !889, line: 62, column: 7)
!932 = !DILocation(line: 62, column: 7, scope: !912)
!933 = !DILocation(line: 63, column: 4, scope: !931)
!934 = !DILocation(line: 68, column: 3, scope: !912)
!935 = !{i32 -2142205081}
!936 = !DILocation(line: 70, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !912, file: !889, line: 70, column: 11)
!938 = !DILocation(line: 70, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !937, file: !889, line: 70, column: 11)
!940 = !DILocation(line: 70, column: 9, scope: !912)
!941 = !DILocation(line: 71, column: 12, scope: !942)
!942 = distinct !DILexicalBlock(scope: !912, file: !889, line: 71, column: 12)
!943 = !DILocation(line: 71, column: 12, scope: !944)
!944 = distinct !DILexicalBlock(scope: !942, file: !889, line: 71, column: 12)
!945 = !DILocation(line: 71, column: 10, scope: !912)
!946 = !DILocation(line: 234, column: 2, scope: !906, inlinedAt: !911)
!947 = !{i32 -2146101960, i32 -2146101927, i32 -2146101921, i32 -2146101905, i32 -2146101886, i32 -2146101855, i32 -2146100903, i32 -2146102367, i32 -2146100897, i32 -2146100849, i32 -2146100785, i32 -2146100723, i32 -2146100666, i32 -2146100610, i32 -2146100376, i32 -2146100328, i32 -2146100264, i32 -2146100202, i32 -2146100145, i32 -2146100089, i32 -2146102251, i32 -2146102226, i32 -2146099855, i32 -2146099726, i32 -2146099794, i32 -2146099712, i32 -2146099698, i32 -2146099576, i32 -2146099637, i32 -2146099562, i32 -2146102074}
!948 = !DILocation(line: 241, column: 9, scope: !906, inlinedAt: !911)
!949 = !DILocation(line: 72, column: 4, scope: !912)
!950 = !DILocation(line: 72, column: 12, scope: !912)
!951 = !DILocation(line: 78, column: 3, scope: !912)
!952 = !{i32 -2142200783}
!953 = !DILocation(line: 80, column: 2, scope: !912)
!954 = !DILocation(line: 80, column: 11, scope: !955)
!955 = distinct !DILexicalBlock(scope: !901, file: !889, line: 80, column: 11)
!956 = !DILocation(line: 80, column: 11, scope: !957)
!957 = distinct !DILexicalBlock(scope: !955, file: !889, line: 80, column: 11)
!958 = !DILocation(line: 80, column: 46, scope: !901)
!959 = !DILocation(line: 80, column: 43, scope: !901)
!960 = distinct !{!960, !924, !961}
!961 = !DILocation(line: 80, column: 54, scope: !901)
!962 = !DILocation(line: 82, column: 26, scope: !901)
!963 = !DILocation(line: 82, column: 25, scope: !901)
!964 = !DILocation(line: 82, column: 35, scope: !901)
!965 = !DILocation(line: 82, column: 9, scope: !901)
!966 = !DILocation(line: 82, column: 48, scope: !901)
!967 = !DILocation(line: 82, column: 46, scope: !901)
!968 = !DILocation(line: 82, column: 2, scope: !901)
!969 = !DILocation(line: 83, column: 1, scope: !901)
!970 = distinct !DISubprogram(name: "mul_u64_u64_shr", scope: !971, file: !971, line: 166, type: !972, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!971 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/lizy2001/genbc/linux")
!972 = !DISubroutineType(types: !973)
!973 = !{!228, !228, !228, !7}
!974 = !DILocalVariable(name: "a", arg: 1, scope: !970, file: !971, line: 166, type: !228)
!975 = !DILocation(line: 166, column: 39, scope: !970)
!976 = !DILocalVariable(name: "mul", arg: 2, scope: !970, file: !971, line: 166, type: !228)
!977 = !DILocation(line: 166, column: 46, scope: !970)
!978 = !DILocalVariable(name: "shift", arg: 3, scope: !970, file: !971, line: 166, type: !7)
!979 = !DILocation(line: 166, column: 64, scope: !970)
!980 = !DILocation(line: 168, column: 35, scope: !970)
!981 = !DILocation(line: 168, column: 16, scope: !970)
!982 = !DILocation(line: 168, column: 39, scope: !970)
!983 = !DILocation(line: 168, column: 37, scope: !970)
!984 = !DILocation(line: 168, column: 47, scope: !970)
!985 = !DILocation(line: 168, column: 44, scope: !970)
!986 = !DILocation(line: 168, column: 9, scope: !970)
!987 = !DILocation(line: 168, column: 2, scope: !970)
!988 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !989, file: !989, line: 18, type: !990, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!989 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/lizy2001/genbc/linux")
!990 = !DISubroutineType(types: !991)
!991 = !{!214, !214}
!992 = !DILocalVariable(name: "x", arg: 1, scope: !988, file: !989, line: 18, type: !214)
!993 = !DILocation(line: 18, column: 63, scope: !988)
!994 = !DILocalVariable(name: "y", scope: !988, file: !989, line: 20, type: !214)
!995 = !DILocation(line: 20, column: 16, scope: !988)
!996 = !DILocation(line: 20, column: 20, scope: !988)
!997 = !DILocation(line: 20, column: 22, scope: !988)
!998 = !DILocation(line: 23, column: 6, scope: !988)
!999 = !DILocation(line: 23, column: 12, scope: !988)
!1000 = !DILocation(line: 23, column: 16, scope: !988)
!1001 = !DILocation(line: 23, column: 14, scope: !988)
!1002 = !DILocation(line: 23, column: 11, scope: !988)
!1003 = !DILocation(line: 23, column: 21, scope: !988)
!1004 = !DILocation(line: 23, column: 55, scope: !988)
!1005 = !DILocation(line: 23, column: 53, scope: !988)
!1006 = !DILocation(line: 23, column: 8, scope: !988)
!1007 = !DILocation(line: 23, column: 4, scope: !988)
!1008 = !DILocation(line: 25, column: 9, scope: !988)
!1009 = !DILocation(line: 25, column: 2, scope: !988)
!1010 = distinct !DISubprogram(name: "read_hv_clock_tsc_cs", scope: !3, file: !3, line: 339, type: !343, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!1011 = !DILocalVariable(name: "arg", arg: 1, scope: !1010, file: !3, line: 339, type: !345)
!1012 = !DILocation(line: 339, column: 61, scope: !1010)
!1013 = !DILocation(line: 341, column: 9, scope: !1010)
!1014 = !DILocation(line: 341, column: 2, scope: !1010)
!1015 = distinct !DISubprogram(name: "hv_cs_enable", scope: !3, file: !3, line: 373, type: !359, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!1016 = !DILocalVariable(name: "cs", arg: 1, scope: !1015, file: !3, line: 373, type: !345)
!1017 = !DILocation(line: 373, column: 45, scope: !1015)
!1018 = !DILocation(line: 375, column: 2, scope: !1015)
!1019 = !DILocation(line: 376, column: 2, scope: !1015)
!1020 = distinct !DISubprogram(name: "suspend_hv_clock_tsc", scope: !3, file: !3, line: 350, type: !363, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!1021 = !DILocalVariable(name: "arg", arg: 1, scope: !1020, file: !3, line: 350, type: !345)
!1022 = !DILocation(line: 350, column: 54, scope: !1020)
!1023 = !DILocalVariable(name: "tsc_msr", scope: !1020, file: !3, line: 352, type: !228)
!1024 = !DILocation(line: 352, column: 6, scope: !1020)
!1025 = !DILocation(line: 355, column: 2, scope: !1020)
!1026 = !DILocation(line: 355, column: 2, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 355, column: 2)
!1028 = !DILocation(line: 356, column: 10, scope: !1020)
!1029 = !DILocation(line: 357, column: 2, scope: !1020)
!1030 = !DILocation(line: 358, column: 1, scope: !1020)
!1031 = distinct !DISubprogram(name: "resume_hv_clock_tsc", scope: !3, file: !3, line: 361, type: !363, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!1032 = !DILocalVariable(name: "arg", arg: 1, scope: !1031, file: !3, line: 361, type: !345)
!1033 = !DILocation(line: 361, column: 53, scope: !1031)
!1034 = !DILocalVariable(name: "phys_addr", scope: !1031, file: !3, line: 363, type: !664)
!1035 = !DILocation(line: 363, column: 14, scope: !1031)
!1036 = !DILocation(line: 363, column: 26, scope: !1031)
!1037 = !DILocalVariable(name: "tsc_msr", scope: !1031, file: !3, line: 364, type: !228)
!1038 = !DILocation(line: 364, column: 6, scope: !1031)
!1039 = !DILocation(line: 367, column: 2, scope: !1031)
!1040 = !DILocation(line: 367, column: 2, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 367, column: 2)
!1042 = !DILocation(line: 368, column: 10, scope: !1031)
!1043 = !DILocation(line: 369, column: 31, scope: !1031)
!1044 = !DILocation(line: 369, column: 24, scope: !1031)
!1045 = !DILocation(line: 369, column: 10, scope: !1031)
!1046 = !DILocation(line: 370, column: 2, scope: !1031)
!1047 = !DILocation(line: 371, column: 1, scope: !1031)
!1048 = distinct !DISubprogram(name: "vclocks_set_used", scope: !1049, file: !1049, line: 16, type: !574, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!1049 = !DIFile(filename: "./arch/x86/include/asm/clocksource.h", directory: "/home/lizy2001/genbc/linux")
!1050 = !DILocalVariable(name: "which", arg: 1, scope: !1048, file: !1049, line: 16, type: !7)
!1051 = !DILocation(line: 16, column: 50, scope: !1048)
!1052 = !DILocation(line: 18, column: 2, scope: !1048)
!1053 = !DILocation(line: 18, column: 2, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1048, file: !1049, line: 18, column: 2)
!1055 = !DILocation(line: 18, column: 2, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1054, file: !1049, line: 18, column: 2)
!1057 = !DILocation(line: 18, column: 2, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !1049, line: 18, column: 2)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !1049, line: 18, column: 2)
!1060 = !DILocation(line: 18, column: 2, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !1049, line: 18, column: 2)
!1062 = !DILocation(line: 18, column: 2, scope: !1059)
!1063 = !DILocation(line: 19, column: 1, scope: !1048)
!1064 = distinct !DISubprogram(name: "read_hv_clock_msr_cs", scope: !3, file: !3, line: 402, type: !343, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !384)
!1065 = !DILocalVariable(name: "arg", arg: 1, scope: !1064, file: !3, line: 402, type: !345)
!1066 = !DILocation(line: 402, column: 61, scope: !1064)
!1067 = !DILocation(line: 404, column: 9, scope: !1064)
!1068 = !DILocation(line: 404, column: 2, scope: !1064)
