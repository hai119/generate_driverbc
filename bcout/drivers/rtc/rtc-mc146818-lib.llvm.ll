; ModuleID = '../bcout/drivers/rtc/rtc-mc146818-lib.llvm.bc'
source_filename = "drivers/rtc/rtc-mc146818-lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.acpi_table_fadt = type <{ %struct.acpi_table_header, i32, i32, i8, i8, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i16, i8, i32, %struct.acpi_generic_address, i8, i16, i8, i64, i64, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, %struct.acpi_generic_address, i64 }>
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }
%struct.acpi_generic_address = type <{ i8, i8, i8, i8, i64 }>
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.63, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.file = type { %union.anon.5, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.5 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.33, %struct.list_head, %struct.list_head, %union.anon.34 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.6, i8* }
%union.anon.6 = type { i64 }
%struct.lockref = type { %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
%struct.page = type { i64, %union.anon.8, %union.anon.22, %struct.atomic_t, [8 x i8] }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.22 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.23, i32 }
%union.anon.23 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
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
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x %struct.inode*], [3 x %struct.mem_dqinfo], [3 x %struct.quota_format_ops*] }
%struct.mem_dqinfo = type { %struct.quota_format_type*, i32, %struct.list_head, i64, i32, i32, i64, i64, i8* }
%struct.quota_format_type = type { i32, %struct.quota_format_ops*, %struct.module*, %struct.quota_format_type* }
%struct.quota_format_ops = type { i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.24, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.25, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.26, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.29, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.24 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.25 = type { %struct.callback_head }
%union.anon.26 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.10 }
%union.anon.10 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.29 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.27 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.27 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.44 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.43 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.43 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.35, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.36, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.37, %union.anon.41, %struct.key_restriction* }
%union.anon.35 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.36 = type { i64 }
%union.anon.37 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.38, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.38 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.41 = type { %union.key_payload }
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
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type { %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i16, %struct.xarray, %struct.io_cq*, %struct.hlist_head, %struct.work_struct }
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.49, %union.anon.50, i32 }
%struct.request_queue = type opaque
%union.anon.49 = type { %struct.list_head }
%union.anon.50 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.51 }
%struct.anon.51 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.55 }
%struct.anon.55 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.62, i32, [12 x i8] }
%union.anon.62 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.63 = type { %struct.callback_head }
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
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rtc_lock = external dso_local global %struct.spinlock, align 1
@acpi_gbl_FADT = external dso_local global %struct.acpi_table_fadt, align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mc146818_get_time(%struct.rtc_time* %time) #0 !dbg !16 {
entry:
  %lock.addr.i165 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i165, metadata !34, metadata !DIExpression()), !dbg !54
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !56, metadata !DIExpression()), !dbg !57
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !58, metadata !DIExpression()), !dbg !64
  %time.addr = alloca %struct.rtc_time*, align 8
  %ctrl = alloca i8, align 1
  %flags = alloca i64, align 8
  %century = alloca i8, align 1
  %__ms = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.rtc_time* %time, %struct.rtc_time** %time.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtc_time** %time.addr, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i8* %ctrl, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i8* %century, metadata !77, metadata !DIExpression()), !dbg !78
  store i8 0, i8* %century, align 1, !dbg !78
  %call = call zeroext i8 @mc146818_is_updating() #7, !dbg !79
  %tobool = icmp ne i8 %call, 0, !dbg !79
  br i1 %tobool, label %if.then, label %if.end, !dbg !81

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !82, metadata !DIExpression()), !dbg !84
  store i64 20, i64* %__ms, align 8, !dbg !84
  br label %while.cond, !dbg !84

while.cond:                                       ; preds = %while.body, %if.then
  %0 = load i64, i64* %__ms, align 8, !dbg !84
  %dec = add i64 %0, -1, !dbg !84
  store i64 %dec, i64* %__ms, align 8, !dbg !84
  %tobool1 = icmp ne i64 %0, 0, !dbg !84
  br i1 %tobool1, label %while.body, label %while.end, !dbg !84

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) #7, !dbg !85
  br label %while.cond, !dbg !84, !llvm.loop !90

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !91

if.end:                                           ; preds = %while.end, %entry
  br label %do.body, !dbg !92

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !93

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !94, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !97, metadata !DIExpression()), !dbg !96
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !96
  %conv = zext i1 %cmp to i32, !dbg !96
  store i32 1, i32* %tmp, align 4, !dbg !96
  %1 = load i32, i32* %tmp, align 4, !dbg !96
  br label %do.body3, !dbg !98

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !99

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !100

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !102, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !106, metadata !DIExpression()), !dbg !105
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !105
  %conv9 = zext i1 %cmp8 to i32, !dbg !105
  store i32 1, i32* %tmp10, align 4, !dbg !105
  %2 = load i32, i32* %tmp10, align 4, !dbg !105
  %call11 = call i64 @arch_local_irq_save() #7, !dbg !107
  store i64 %call11, i64* %flags, align 8, !dbg !107
  br label %do.end, !dbg !107

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !100

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !99

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !108, !srcloc !109
  br label %do.body14, !dbg !108

do.body14:                                        ; preds = %do.body13
  store %struct.spinlock* @rtc_lock, %struct.spinlock** %lock.addr.i, align 8
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !110
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !111
  %rlock.i = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !111
  br label %do.end16, !dbg !112

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !108

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !99

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !98

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !93

do.end20:                                         ; preds = %do.end19
  %call21 = call zeroext i8 @rtc_cmos_read(i8 zeroext 0) #7, !dbg !113
  %conv22 = zext i8 %call21 to i32, !dbg !113
  %5 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !114
  %tm_sec = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %5, i32 0, i32 0, !dbg !115
  store i32 %conv22, i32* %tm_sec, align 4, !dbg !116
  %call23 = call zeroext i8 @rtc_cmos_read(i8 zeroext 2) #7, !dbg !117
  %conv24 = zext i8 %call23 to i32, !dbg !117
  %6 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !118
  %tm_min = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %6, i32 0, i32 1, !dbg !119
  store i32 %conv24, i32* %tm_min, align 4, !dbg !120
  %call25 = call zeroext i8 @rtc_cmos_read(i8 zeroext 4) #7, !dbg !121
  %conv26 = zext i8 %call25 to i32, !dbg !121
  %7 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !122
  %tm_hour = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %7, i32 0, i32 2, !dbg !123
  store i32 %conv26, i32* %tm_hour, align 4, !dbg !124
  %call27 = call zeroext i8 @rtc_cmos_read(i8 zeroext 7) #7, !dbg !125
  %conv28 = zext i8 %call27 to i32, !dbg !125
  %8 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !126
  %tm_mday = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 3, !dbg !127
  store i32 %conv28, i32* %tm_mday, align 4, !dbg !128
  %call29 = call zeroext i8 @rtc_cmos_read(i8 zeroext 8) #7, !dbg !129
  %conv30 = zext i8 %call29 to i32, !dbg !129
  %9 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !130
  %tm_mon = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %9, i32 0, i32 4, !dbg !131
  store i32 %conv30, i32* %tm_mon, align 4, !dbg !132
  %call31 = call zeroext i8 @rtc_cmos_read(i8 zeroext 9) #7, !dbg !133
  %conv32 = zext i8 %call31 to i32, !dbg !133
  %10 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !134
  %tm_year = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 5, !dbg !135
  store i32 %conv32, i32* %tm_year, align 4, !dbg !136
  %11 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 2), align 1, !dbg !137
  %conv33 = zext i8 %11 to i32, !dbg !139
  %cmp34 = icmp sge i32 %conv33, 3, !dbg !140
  br i1 %cmp34, label %land.lhs.true, label %if.end40, !dbg !141

land.lhs.true:                                    ; preds = %do.end20
  %12 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 35), align 1, !dbg !142
  %conv36 = zext i8 %12 to i32, !dbg !143
  %tobool37 = icmp ne i32 %conv36, 0, !dbg !143
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !144

if.then38:                                        ; preds = %land.lhs.true
  %13 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 35), align 1, !dbg !145
  %call39 = call zeroext i8 @rtc_cmos_read(i8 zeroext %13) #7, !dbg !145
  store i8 %call39, i8* %century, align 1, !dbg !146
  br label %if.end40, !dbg !147

if.end40:                                         ; preds = %if.then38, %land.lhs.true, %do.end20
  %call41 = call zeroext i8 @rtc_cmos_read(i8 zeroext 11) #7, !dbg !148
  store i8 %call41, i8* %ctrl, align 1, !dbg !149
  %14 = load i64, i64* %flags, align 8, !dbg !150
  store %struct.spinlock* @rtc_lock, %struct.spinlock** %lock.addr.i165, align 8
  store i64 %14, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !2, metadata !151, metadata !DIExpression()) #6, !dbg !154
  call void @llvm.dbg.declare(metadata !2, metadata !155, metadata !DIExpression()) #6, !dbg !154
  store i32 1, i32* %tmp.i, align 4, !dbg !154
  %15 = load i32, i32* %tmp.i, align 4, !dbg !154
  call void @llvm.dbg.declare(metadata !2, metadata !156, metadata !DIExpression()) #6, !dbg !161
  call void @llvm.dbg.declare(metadata !2, metadata !162, metadata !DIExpression()) #6, !dbg !161
  store i32 1, i32* %tmp8.i, align 4, !dbg !161
  %16 = load i32, i32* %tmp8.i, align 4, !dbg !161
  %17 = load i64, i64* %flags.addr.i, align 8, !dbg !163
  call void @arch_local_irq_restore(i64 %17) #8, !dbg !163
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !164, !srcloc !166
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i165, align 8, !dbg !167
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !167
  %rlock.i166 = bitcast %union.anon* %19 to %struct.raw_spinlock*, !dbg !167
  %20 = load i8, i8* %ctrl, align 1, !dbg !169
  %conv42 = zext i8 %20 to i32, !dbg !169
  %and = and i32 %conv42, 4, !dbg !171
  %tobool43 = icmp ne i32 %and, 0, !dbg !171
  br i1 %tobool43, label %lor.lhs.false, label %if.then44, !dbg !172

lor.lhs.false:                                    ; preds = %if.end40
  br i1 true, label %if.then44, label %if.end146, !dbg !173

if.then44:                                        ; preds = %lor.lhs.false, %if.end40
  %21 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !174
  %tm_sec45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0, !dbg !174
  %22 = load i32, i32* %tm_sec45, align 4, !dbg !174
  %conv46 = trunc i32 %22 to i8, !dbg !174
  %23 = call i1 @llvm.is.constant.i8(i8 %conv46), !dbg !174
  br i1 %23, label %cond.true, label %cond.false, !dbg !174

cond.true:                                        ; preds = %if.then44
  %24 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !174
  %tm_sec47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 0, !dbg !174
  %25 = load i32, i32* %tm_sec47, align 4, !dbg !174
  %and48 = and i32 %25, 15, !dbg !174
  %26 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !174
  %tm_sec49 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 0, !dbg !174
  %27 = load i32, i32* %tm_sec49, align 4, !dbg !174
  %shr = ashr i32 %27, 4, !dbg !174
  %mul = mul i32 %shr, 10, !dbg !174
  %add = add i32 %and48, %mul, !dbg !174
  br label %cond.end, !dbg !174

cond.false:                                       ; preds = %if.then44
  %28 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !174
  %tm_sec50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 0, !dbg !174
  %29 = load i32, i32* %tm_sec50, align 4, !dbg !174
  %conv51 = trunc i32 %29 to i8, !dbg !174
  %call52 = call i32 @_bcd2bin(i8 zeroext %conv51) #9, !dbg !174
  br label %cond.end, !dbg !174

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %call52, %cond.false ], !dbg !174
  %30 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !176
  %tm_sec53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 0, !dbg !177
  store i32 %cond, i32* %tm_sec53, align 4, !dbg !178
  %31 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !179
  %tm_min54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 1, !dbg !179
  %32 = load i32, i32* %tm_min54, align 4, !dbg !179
  %conv55 = trunc i32 %32 to i8, !dbg !179
  %33 = call i1 @llvm.is.constant.i8(i8 %conv55), !dbg !179
  br i1 %33, label %cond.true56, label %cond.false63, !dbg !179

cond.true56:                                      ; preds = %cond.end
  %34 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !179
  %tm_min57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 1, !dbg !179
  %35 = load i32, i32* %tm_min57, align 4, !dbg !179
  %and58 = and i32 %35, 15, !dbg !179
  %36 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !179
  %tm_min59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 1, !dbg !179
  %37 = load i32, i32* %tm_min59, align 4, !dbg !179
  %shr60 = ashr i32 %37, 4, !dbg !179
  %mul61 = mul i32 %shr60, 10, !dbg !179
  %add62 = add i32 %and58, %mul61, !dbg !179
  br label %cond.end67, !dbg !179

cond.false63:                                     ; preds = %cond.end
  %38 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !179
  %tm_min64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 1, !dbg !179
  %39 = load i32, i32* %tm_min64, align 4, !dbg !179
  %conv65 = trunc i32 %39 to i8, !dbg !179
  %call66 = call i32 @_bcd2bin(i8 zeroext %conv65) #9, !dbg !179
  br label %cond.end67, !dbg !179

cond.end67:                                       ; preds = %cond.false63, %cond.true56
  %cond68 = phi i32 [ %add62, %cond.true56 ], [ %call66, %cond.false63 ], !dbg !179
  %40 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !180
  %tm_min69 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %40, i32 0, i32 1, !dbg !181
  store i32 %cond68, i32* %tm_min69, align 4, !dbg !182
  %41 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !183
  %tm_hour70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %41, i32 0, i32 2, !dbg !183
  %42 = load i32, i32* %tm_hour70, align 4, !dbg !183
  %conv71 = trunc i32 %42 to i8, !dbg !183
  %43 = call i1 @llvm.is.constant.i8(i8 %conv71), !dbg !183
  br i1 %43, label %cond.true72, label %cond.false79, !dbg !183

cond.true72:                                      ; preds = %cond.end67
  %44 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !183
  %tm_hour73 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 2, !dbg !183
  %45 = load i32, i32* %tm_hour73, align 4, !dbg !183
  %and74 = and i32 %45, 15, !dbg !183
  %46 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !183
  %tm_hour75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 2, !dbg !183
  %47 = load i32, i32* %tm_hour75, align 4, !dbg !183
  %shr76 = ashr i32 %47, 4, !dbg !183
  %mul77 = mul i32 %shr76, 10, !dbg !183
  %add78 = add i32 %and74, %mul77, !dbg !183
  br label %cond.end83, !dbg !183

cond.false79:                                     ; preds = %cond.end67
  %48 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !183
  %tm_hour80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %48, i32 0, i32 2, !dbg !183
  %49 = load i32, i32* %tm_hour80, align 4, !dbg !183
  %conv81 = trunc i32 %49 to i8, !dbg !183
  %call82 = call i32 @_bcd2bin(i8 zeroext %conv81) #9, !dbg !183
  br label %cond.end83, !dbg !183

cond.end83:                                       ; preds = %cond.false79, %cond.true72
  %cond84 = phi i32 [ %add78, %cond.true72 ], [ %call82, %cond.false79 ], !dbg !183
  %50 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !184
  %tm_hour85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 2, !dbg !185
  store i32 %cond84, i32* %tm_hour85, align 4, !dbg !186
  %51 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !187
  %tm_mday86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 3, !dbg !187
  %52 = load i32, i32* %tm_mday86, align 4, !dbg !187
  %conv87 = trunc i32 %52 to i8, !dbg !187
  %53 = call i1 @llvm.is.constant.i8(i8 %conv87), !dbg !187
  br i1 %53, label %cond.true88, label %cond.false95, !dbg !187

cond.true88:                                      ; preds = %cond.end83
  %54 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !187
  %tm_mday89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %54, i32 0, i32 3, !dbg !187
  %55 = load i32, i32* %tm_mday89, align 4, !dbg !187
  %and90 = and i32 %55, 15, !dbg !187
  %56 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !187
  %tm_mday91 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 3, !dbg !187
  %57 = load i32, i32* %tm_mday91, align 4, !dbg !187
  %shr92 = ashr i32 %57, 4, !dbg !187
  %mul93 = mul i32 %shr92, 10, !dbg !187
  %add94 = add i32 %and90, %mul93, !dbg !187
  br label %cond.end99, !dbg !187

cond.false95:                                     ; preds = %cond.end83
  %58 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !187
  %tm_mday96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 3, !dbg !187
  %59 = load i32, i32* %tm_mday96, align 4, !dbg !187
  %conv97 = trunc i32 %59 to i8, !dbg !187
  %call98 = call i32 @_bcd2bin(i8 zeroext %conv97) #9, !dbg !187
  br label %cond.end99, !dbg !187

cond.end99:                                       ; preds = %cond.false95, %cond.true88
  %cond100 = phi i32 [ %add94, %cond.true88 ], [ %call98, %cond.false95 ], !dbg !187
  %60 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !188
  %tm_mday101 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 3, !dbg !189
  store i32 %cond100, i32* %tm_mday101, align 4, !dbg !190
  %61 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !191
  %tm_mon102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %61, i32 0, i32 4, !dbg !191
  %62 = load i32, i32* %tm_mon102, align 4, !dbg !191
  %conv103 = trunc i32 %62 to i8, !dbg !191
  %63 = call i1 @llvm.is.constant.i8(i8 %conv103), !dbg !191
  br i1 %63, label %cond.true104, label %cond.false111, !dbg !191

cond.true104:                                     ; preds = %cond.end99
  %64 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !191
  %tm_mon105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 4, !dbg !191
  %65 = load i32, i32* %tm_mon105, align 4, !dbg !191
  %and106 = and i32 %65, 15, !dbg !191
  %66 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !191
  %tm_mon107 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 4, !dbg !191
  %67 = load i32, i32* %tm_mon107, align 4, !dbg !191
  %shr108 = ashr i32 %67, 4, !dbg !191
  %mul109 = mul i32 %shr108, 10, !dbg !191
  %add110 = add i32 %and106, %mul109, !dbg !191
  br label %cond.end115, !dbg !191

cond.false111:                                    ; preds = %cond.end99
  %68 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !191
  %tm_mon112 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %68, i32 0, i32 4, !dbg !191
  %69 = load i32, i32* %tm_mon112, align 4, !dbg !191
  %conv113 = trunc i32 %69 to i8, !dbg !191
  %call114 = call i32 @_bcd2bin(i8 zeroext %conv113) #9, !dbg !191
  br label %cond.end115, !dbg !191

cond.end115:                                      ; preds = %cond.false111, %cond.true104
  %cond116 = phi i32 [ %add110, %cond.true104 ], [ %call114, %cond.false111 ], !dbg !191
  %70 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !192
  %tm_mon117 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 4, !dbg !193
  store i32 %cond116, i32* %tm_mon117, align 4, !dbg !194
  %71 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !195
  %tm_year118 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %71, i32 0, i32 5, !dbg !195
  %72 = load i32, i32* %tm_year118, align 4, !dbg !195
  %conv119 = trunc i32 %72 to i8, !dbg !195
  %73 = call i1 @llvm.is.constant.i8(i8 %conv119), !dbg !195
  br i1 %73, label %cond.true120, label %cond.false127, !dbg !195

cond.true120:                                     ; preds = %cond.end115
  %74 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !195
  %tm_year121 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 5, !dbg !195
  %75 = load i32, i32* %tm_year121, align 4, !dbg !195
  %and122 = and i32 %75, 15, !dbg !195
  %76 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !195
  %tm_year123 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 5, !dbg !195
  %77 = load i32, i32* %tm_year123, align 4, !dbg !195
  %shr124 = ashr i32 %77, 4, !dbg !195
  %mul125 = mul i32 %shr124, 10, !dbg !195
  %add126 = add i32 %and122, %mul125, !dbg !195
  br label %cond.end131, !dbg !195

cond.false127:                                    ; preds = %cond.end115
  %78 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !195
  %tm_year128 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %78, i32 0, i32 5, !dbg !195
  %79 = load i32, i32* %tm_year128, align 4, !dbg !195
  %conv129 = trunc i32 %79 to i8, !dbg !195
  %call130 = call i32 @_bcd2bin(i8 zeroext %conv129) #9, !dbg !195
  br label %cond.end131, !dbg !195

cond.end131:                                      ; preds = %cond.false127, %cond.true120
  %cond132 = phi i32 [ %add126, %cond.true120 ], [ %call130, %cond.false127 ], !dbg !195
  %80 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !196
  %tm_year133 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %80, i32 0, i32 5, !dbg !197
  store i32 %cond132, i32* %tm_year133, align 4, !dbg !198
  %81 = load i8, i8* %century, align 1, !dbg !199
  %82 = call i1 @llvm.is.constant.i8(i8 %81), !dbg !199
  br i1 %82, label %cond.true134, label %cond.false141, !dbg !199

cond.true134:                                     ; preds = %cond.end131
  %83 = load i8, i8* %century, align 1, !dbg !199
  %conv135 = zext i8 %83 to i32, !dbg !199
  %and136 = and i32 %conv135, 15, !dbg !199
  %84 = load i8, i8* %century, align 1, !dbg !199
  %conv137 = zext i8 %84 to i32, !dbg !199
  %shr138 = ashr i32 %conv137, 4, !dbg !199
  %mul139 = mul i32 %shr138, 10, !dbg !199
  %add140 = add i32 %and136, %mul139, !dbg !199
  br label %cond.end143, !dbg !199

cond.false141:                                    ; preds = %cond.end131
  %85 = load i8, i8* %century, align 1, !dbg !199
  %call142 = call i32 @_bcd2bin(i8 zeroext %85) #9, !dbg !199
  br label %cond.end143, !dbg !199

cond.end143:                                      ; preds = %cond.false141, %cond.true134
  %cond144 = phi i32 [ %add140, %cond.true134 ], [ %call142, %cond.false141 ], !dbg !199
  %conv145 = trunc i32 %cond144 to i8, !dbg !199
  store i8 %conv145, i8* %century, align 1, !dbg !200
  br label %if.end146, !dbg !201

if.end146:                                        ; preds = %cond.end143, %lor.lhs.false
  %86 = load i8, i8* %century, align 1, !dbg !202
  %conv147 = zext i8 %86 to i32, !dbg !202
  %cmp148 = icmp sgt i32 %conv147, 20, !dbg !204
  br i1 %cmp148, label %if.then150, label %if.end155, !dbg !205

if.then150:                                       ; preds = %if.end146
  %87 = load i8, i8* %century, align 1, !dbg !206
  %conv151 = zext i8 %87 to i32, !dbg !206
  %sub = sub i32 %conv151, 19, !dbg !207
  %mul152 = mul i32 %sub, 100, !dbg !208
  %88 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !209
  %tm_year153 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 5, !dbg !210
  %89 = load i32, i32* %tm_year153, align 4, !dbg !211
  %add154 = add i32 %89, %mul152, !dbg !211
  store i32 %add154, i32* %tm_year153, align 4, !dbg !211
  br label %if.end155, !dbg !209

if.end155:                                        ; preds = %if.then150, %if.end146
  %90 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !212
  %tm_year156 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %90, i32 0, i32 5, !dbg !214
  %91 = load i32, i32* %tm_year156, align 4, !dbg !214
  %cmp157 = icmp sle i32 %91, 69, !dbg !215
  br i1 %cmp157, label %if.then159, label %if.end162, !dbg !216

if.then159:                                       ; preds = %if.end155
  %92 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !217
  %tm_year160 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %92, i32 0, i32 5, !dbg !218
  %93 = load i32, i32* %tm_year160, align 4, !dbg !219
  %add161 = add i32 %93, 100, !dbg !219
  store i32 %add161, i32* %tm_year160, align 4, !dbg !219
  br label %if.end162, !dbg !217

if.end162:                                        ; preds = %if.then159, %if.end155
  %94 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !220
  %tm_mon163 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %94, i32 0, i32 4, !dbg !221
  %95 = load i32, i32* %tm_mon163, align 4, !dbg !222
  %dec164 = add i32 %95, -1, !dbg !222
  store i32 %dec164, i32* %tm_mon163, align 4, !dbg !222
  ret i32 2, !dbg !223
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @mc146818_is_updating() #0 !dbg !224 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !34, metadata !DIExpression()), !dbg !227
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !56, metadata !DIExpression()), !dbg !229
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !58, metadata !DIExpression()), !dbg !230
  %uip = alloca i8, align 1
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8* %uip, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !239, metadata !DIExpression()), !dbg !240
  br label %do.body, !dbg !241

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !242

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !243, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !246, metadata !DIExpression()), !dbg !245
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !245
  %conv = zext i1 %cmp to i32, !dbg !245
  store i32 1, i32* %tmp, align 4, !dbg !245
  %0 = load i32, i32* %tmp, align 4, !dbg !245
  br label %do.body2, !dbg !247

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !248

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !249

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !251, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !255, metadata !DIExpression()), !dbg !254
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !254
  %conv8 = zext i1 %cmp7 to i32, !dbg !254
  store i32 1, i32* %tmp9, align 4, !dbg !254
  %1 = load i32, i32* %tmp9, align 4, !dbg !254
  %call = call i64 @arch_local_irq_save() #7, !dbg !256
  store i64 %call, i64* %flags, align 8, !dbg !256
  br label %do.end, !dbg !256

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !249

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !248

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !257, !srcloc !258
  br label %do.body12, !dbg !257

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @rtc_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !259
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !260
  %rlock.i = bitcast %union.anon* %3 to %struct.raw_spinlock*, !dbg !260
  br label %do.end14, !dbg !261

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !257

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !248

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !247

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !242

do.end18:                                         ; preds = %do.end17
  %call19 = call zeroext i8 @rtc_cmos_read(i8 zeroext 10) #7, !dbg !262
  %conv20 = zext i8 %call19 to i32, !dbg !262
  %and = and i32 %conv20, 128, !dbg !263
  %conv21 = trunc i32 %and to i8, !dbg !264
  store i8 %conv21, i8* %uip, align 1, !dbg !265
  %4 = load i64, i64* %flags, align 8, !dbg !266
  store %struct.spinlock* @rtc_lock, %struct.spinlock** %lock.addr.i22, align 8
  store i64 %4, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !2, metadata !151, metadata !DIExpression()) #6, !dbg !267
  call void @llvm.dbg.declare(metadata !2, metadata !155, metadata !DIExpression()) #6, !dbg !267
  store i32 1, i32* %tmp.i, align 4, !dbg !267
  %5 = load i32, i32* %tmp.i, align 4, !dbg !267
  call void @llvm.dbg.declare(metadata !2, metadata !156, metadata !DIExpression()) #6, !dbg !268
  call void @llvm.dbg.declare(metadata !2, metadata !162, metadata !DIExpression()) #6, !dbg !268
  store i32 1, i32* %tmp8.i, align 4, !dbg !268
  %6 = load i32, i32* %tmp8.i, align 4, !dbg !268
  %7 = load i64, i64* %flags.addr.i, align 8, !dbg !269
  call void @arch_local_irq_restore(i64 %7) #8, !dbg !269
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !270, !srcloc !166
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !271
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !271
  %rlock.i23 = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !271
  %10 = load i8, i8* %uip, align 1, !dbg !272
  ret i8 %10, !dbg !273
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !274 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !278, metadata !DIExpression()), !dbg !279
  %call = call i64 @arch_local_save_flags() #7, !dbg !280
  store i64 %call, i64* %f, align 8, !dbg !281
  call void @arch_local_irq_disable() #7, !dbg !282
  %0 = load i64, i64* %f, align 8, !dbg !283
  ret i64 %0, !dbg !284
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @rtc_cmos_read(i8 zeroext) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i8(i8) #3

; Function Attrs: noredzone nounwind readnone
declare dso_local i32 @_bcd2bin(i8 zeroext) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mc146818_set_time(%struct.rtc_time* %time) #0 !dbg !285 {
entry:
  %lock.addr.i155 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i155, metadata !34, metadata !DIExpression()), !dbg !288
  %flags.addr.i156 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i156, metadata !56, metadata !DIExpression()), !dbg !292
  %tmp.i157 = alloca i32, align 4
  %tmp8.i158 = alloca i32, align 4
  %lock.addr.i153 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i153, metadata !34, metadata !DIExpression()), !dbg !293
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !56, metadata !DIExpression()), !dbg !295
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !58, metadata !DIExpression()), !dbg !296
  %retval = alloca i32, align 4
  %time.addr = alloca %struct.rtc_time*, align 8
  %flags = alloca i64, align 8
  %mon = alloca i8, align 1
  %day = alloca i8, align 1
  %hrs = alloca i8, align 1
  %min = alloca i8, align 1
  %sec = alloca i8, align 1
  %save_control = alloca i8, align 1
  %save_freq_select = alloca i8, align 1
  %yrs = alloca i32, align 4
  %century = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy12 = alloca i64, align 8
  %__dummy213 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  store %struct.rtc_time* %time, %struct.rtc_time** %time.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.rtc_time** %time.addr, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !305, metadata !DIExpression()), !dbg !306
  call void @llvm.dbg.declare(metadata i8* %mon, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata i8* %day, metadata !309, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata i8* %hrs, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata i8* %min, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata i8* %sec, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata i8* %save_control, metadata !317, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.declare(metadata i8* %save_freq_select, metadata !319, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.declare(metadata i32* %yrs, metadata !321, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata i8* %century, metadata !323, metadata !DIExpression()), !dbg !324
  store i8 0, i8* %century, align 1, !dbg !324
  %0 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !325
  %tm_year = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %0, i32 0, i32 5, !dbg !326
  %1 = load i32, i32* %tm_year, align 4, !dbg !326
  store i32 %1, i32* %yrs, align 4, !dbg !327
  %2 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !328
  %tm_mon = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %2, i32 0, i32 4, !dbg !329
  %3 = load i32, i32* %tm_mon, align 4, !dbg !329
  %add = add i32 %3, 1, !dbg !330
  %conv = trunc i32 %add to i8, !dbg !328
  store i8 %conv, i8* %mon, align 1, !dbg !331
  %4 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !332
  %tm_mday = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %4, i32 0, i32 3, !dbg !333
  %5 = load i32, i32* %tm_mday, align 4, !dbg !333
  %conv1 = trunc i32 %5 to i8, !dbg !332
  store i8 %conv1, i8* %day, align 1, !dbg !334
  %6 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !335
  %tm_hour = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %6, i32 0, i32 2, !dbg !336
  %7 = load i32, i32* %tm_hour, align 4, !dbg !336
  %conv2 = trunc i32 %7 to i8, !dbg !335
  store i8 %conv2, i8* %hrs, align 1, !dbg !337
  %8 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !338
  %tm_min = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %8, i32 0, i32 1, !dbg !339
  %9 = load i32, i32* %tm_min, align 4, !dbg !339
  %conv3 = trunc i32 %9 to i8, !dbg !338
  store i8 %conv3, i8* %min, align 1, !dbg !340
  %10 = load %struct.rtc_time*, %struct.rtc_time** %time.addr, align 8, !dbg !341
  %tm_sec = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %10, i32 0, i32 0, !dbg !342
  %11 = load i32, i32* %tm_sec, align 4, !dbg !342
  %conv4 = trunc i32 %11 to i8, !dbg !341
  store i8 %conv4, i8* %sec, align 1, !dbg !343
  %12 = load i32, i32* %yrs, align 4, !dbg !344
  %cmp = icmp ugt i32 %12, 255, !dbg !346
  br i1 %cmp, label %if.then, label %if.end, !dbg !347

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !348
  br label %return, !dbg !348

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !349

do.body:                                          ; preds = %if.end
  br label %do.body6, !dbg !350

do.body6:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !351, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !354, metadata !DIExpression()), !dbg !353
  %cmp7 = icmp eq i64* %__dummy, %__dummy2, !dbg !353
  %conv8 = zext i1 %cmp7 to i32, !dbg !353
  store i32 1, i32* %tmp, align 4, !dbg !353
  %13 = load i32, i32* %tmp, align 4, !dbg !353
  br label %do.body9, !dbg !355

do.body9:                                         ; preds = %do.body6
  br label %do.body10, !dbg !356

do.body10:                                        ; preds = %do.body9
  br label %do.body11, !dbg !357

do.body11:                                        ; preds = %do.body10
  call void @llvm.dbg.declare(metadata i64* %__dummy12, metadata !359, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.declare(metadata i64* %__dummy213, metadata !363, metadata !DIExpression()), !dbg !362
  %cmp14 = icmp eq i64* %__dummy12, %__dummy213, !dbg !362
  %conv15 = zext i1 %cmp14 to i32, !dbg !362
  store i32 1, i32* %tmp16, align 4, !dbg !362
  %14 = load i32, i32* %tmp16, align 4, !dbg !362
  %call = call i64 @arch_local_irq_save() #7, !dbg !364
  store i64 %call, i64* %flags, align 8, !dbg !364
  br label %do.end, !dbg !364

do.end:                                           ; preds = %do.body11
  br label %do.end17, !dbg !357

do.end17:                                         ; preds = %do.end
  br label %do.body18, !dbg !356

do.body18:                                        ; preds = %do.end17
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !365, !srcloc !366
  br label %do.body19, !dbg !365

do.body19:                                        ; preds = %do.body18
  store %struct.spinlock* @rtc_lock, %struct.spinlock** %lock.addr.i, align 8
  %15 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !367
  %16 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %15, i32 0, i32 0, !dbg !368
  %rlock.i = bitcast %union.anon* %16 to %struct.raw_spinlock*, !dbg !368
  br label %do.end21, !dbg !369

do.end21:                                         ; preds = %do.body19
  br label %do.end22, !dbg !365

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !356

do.end23:                                         ; preds = %do.end22
  br label %do.end24, !dbg !355

do.end24:                                         ; preds = %do.end23
  br label %do.end25, !dbg !350

do.end25:                                         ; preds = %do.end24
  %17 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 2), align 1, !dbg !370
  %conv26 = zext i8 %17 to i32, !dbg !372
  %cmp27 = icmp sge i32 %conv26, 3, !dbg !373
  br i1 %cmp27, label %land.lhs.true, label %if.end33, !dbg !374

land.lhs.true:                                    ; preds = %do.end25
  %18 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 35), align 1, !dbg !375
  %conv29 = zext i8 %18 to i32, !dbg !376
  %tobool = icmp ne i32 %conv29, 0, !dbg !376
  br i1 %tobool, label %if.then30, label %if.end33, !dbg !377

if.then30:                                        ; preds = %land.lhs.true
  %19 = load i32, i32* %yrs, align 4, !dbg !378
  %add31 = add i32 %19, 1900, !dbg !380
  %div = udiv i32 %add31, 100, !dbg !381
  %conv32 = trunc i32 %div to i8, !dbg !382
  store i8 %conv32, i8* %century, align 1, !dbg !383
  %20 = load i32, i32* %yrs, align 4, !dbg !384
  %rem = urem i32 %20, 100, !dbg !384
  store i32 %rem, i32* %yrs, align 4, !dbg !384
  br label %if.end33, !dbg !385

if.end33:                                         ; preds = %if.then30, %land.lhs.true, %do.end25
  %21 = load i32, i32* %yrs, align 4, !dbg !386
  %cmp34 = icmp ugt i32 %21, 169, !dbg !387
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !388

if.then36:                                        ; preds = %if.end33
  %22 = load i64, i64* %flags, align 8, !dbg !389
  store %struct.spinlock* @rtc_lock, %struct.spinlock** %lock.addr.i155, align 8
  store i64 %22, i64* %flags.addr.i156, align 8
  call void @llvm.dbg.declare(metadata !2, metadata !151, metadata !DIExpression()) #6, !dbg !390
  call void @llvm.dbg.declare(metadata !2, metadata !155, metadata !DIExpression()) #6, !dbg !390
  store i32 1, i32* %tmp.i157, align 4, !dbg !390
  %23 = load i32, i32* %tmp.i157, align 4, !dbg !390
  call void @llvm.dbg.declare(metadata !2, metadata !156, metadata !DIExpression()) #6, !dbg !391
  call void @llvm.dbg.declare(metadata !2, metadata !162, metadata !DIExpression()) #6, !dbg !391
  store i32 1, i32* %tmp8.i158, align 4, !dbg !391
  %24 = load i32, i32* %tmp8.i158, align 4, !dbg !391
  %25 = load i64, i64* %flags.addr.i156, align 8, !dbg !392
  call void @arch_local_irq_restore(i64 %25) #8, !dbg !392
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !393, !srcloc !166
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i155, align 8, !dbg !394
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !394
  %rlock.i159 = bitcast %union.anon* %27 to %struct.raw_spinlock*, !dbg !394
  store i32 -22, i32* %retval, align 4, !dbg !395
  br label %return, !dbg !395

if.end37:                                         ; preds = %if.end33
  %28 = load i32, i32* %yrs, align 4, !dbg !396
  %cmp38 = icmp uge i32 %28, 100, !dbg !398
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !399

if.then40:                                        ; preds = %if.end37
  %29 = load i32, i32* %yrs, align 4, !dbg !400
  %sub = sub i32 %29, 100, !dbg !400
  store i32 %sub, i32* %yrs, align 4, !dbg !400
  br label %if.end41, !dbg !401

if.end41:                                         ; preds = %if.then40, %if.end37
  %call42 = call zeroext i8 @rtc_cmos_read(i8 zeroext 11) #7, !dbg !402
  %conv43 = zext i8 %call42 to i32, !dbg !402
  %and = and i32 %conv43, 4, !dbg !404
  %tobool44 = icmp ne i32 %and, 0, !dbg !404
  br i1 %tobool44, label %lor.lhs.false, label %if.then45, !dbg !405

lor.lhs.false:                                    ; preds = %if.end41
  br i1 true, label %if.then45, label %if.end136, !dbg !406

if.then45:                                        ; preds = %lor.lhs.false, %if.end41
  %30 = load i8, i8* %sec, align 1, !dbg !407
  %31 = call i1 @llvm.is.constant.i8(i8 %30), !dbg !407
  br i1 %31, label %cond.true, label %cond.false, !dbg !407

cond.true:                                        ; preds = %if.then45
  %32 = load i8, i8* %sec, align 1, !dbg !407
  %conv46 = zext i8 %32 to i32, !dbg !407
  %div47 = sdiv i32 %conv46, 10, !dbg !407
  %shl = shl i32 %div47, 4, !dbg !407
  %33 = load i8, i8* %sec, align 1, !dbg !407
  %conv48 = zext i8 %33 to i32, !dbg !407
  %rem49 = srem i32 %conv48, 10, !dbg !407
  %add50 = add i32 %shl, %rem49, !dbg !407
  br label %cond.end, !dbg !407

cond.false:                                       ; preds = %if.then45
  %34 = load i8, i8* %sec, align 1, !dbg !407
  %conv51 = zext i8 %34 to i32, !dbg !407
  %call52 = call zeroext i8 @_bin2bcd(i32 %conv51) #9, !dbg !407
  %conv53 = zext i8 %call52 to i32, !dbg !407
  br label %cond.end, !dbg !407

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add50, %cond.true ], [ %conv53, %cond.false ], !dbg !407
  %conv54 = trunc i32 %cond to i8, !dbg !407
  store i8 %conv54, i8* %sec, align 1, !dbg !409
  %35 = load i8, i8* %min, align 1, !dbg !410
  %36 = call i1 @llvm.is.constant.i8(i8 %35), !dbg !410
  br i1 %36, label %cond.true55, label %cond.false62, !dbg !410

cond.true55:                                      ; preds = %cond.end
  %37 = load i8, i8* %min, align 1, !dbg !410
  %conv56 = zext i8 %37 to i32, !dbg !410
  %div57 = sdiv i32 %conv56, 10, !dbg !410
  %shl58 = shl i32 %div57, 4, !dbg !410
  %38 = load i8, i8* %min, align 1, !dbg !410
  %conv59 = zext i8 %38 to i32, !dbg !410
  %rem60 = srem i32 %conv59, 10, !dbg !410
  %add61 = add i32 %shl58, %rem60, !dbg !410
  br label %cond.end66, !dbg !410

cond.false62:                                     ; preds = %cond.end
  %39 = load i8, i8* %min, align 1, !dbg !410
  %conv63 = zext i8 %39 to i32, !dbg !410
  %call64 = call zeroext i8 @_bin2bcd(i32 %conv63) #9, !dbg !410
  %conv65 = zext i8 %call64 to i32, !dbg !410
  br label %cond.end66, !dbg !410

cond.end66:                                       ; preds = %cond.false62, %cond.true55
  %cond67 = phi i32 [ %add61, %cond.true55 ], [ %conv65, %cond.false62 ], !dbg !410
  %conv68 = trunc i32 %cond67 to i8, !dbg !410
  store i8 %conv68, i8* %min, align 1, !dbg !411
  %40 = load i8, i8* %hrs, align 1, !dbg !412
  %41 = call i1 @llvm.is.constant.i8(i8 %40), !dbg !412
  br i1 %41, label %cond.true69, label %cond.false76, !dbg !412

cond.true69:                                      ; preds = %cond.end66
  %42 = load i8, i8* %hrs, align 1, !dbg !412
  %conv70 = zext i8 %42 to i32, !dbg !412
  %div71 = sdiv i32 %conv70, 10, !dbg !412
  %shl72 = shl i32 %div71, 4, !dbg !412
  %43 = load i8, i8* %hrs, align 1, !dbg !412
  %conv73 = zext i8 %43 to i32, !dbg !412
  %rem74 = srem i32 %conv73, 10, !dbg !412
  %add75 = add i32 %shl72, %rem74, !dbg !412
  br label %cond.end80, !dbg !412

cond.false76:                                     ; preds = %cond.end66
  %44 = load i8, i8* %hrs, align 1, !dbg !412
  %conv77 = zext i8 %44 to i32, !dbg !412
  %call78 = call zeroext i8 @_bin2bcd(i32 %conv77) #9, !dbg !412
  %conv79 = zext i8 %call78 to i32, !dbg !412
  br label %cond.end80, !dbg !412

cond.end80:                                       ; preds = %cond.false76, %cond.true69
  %cond81 = phi i32 [ %add75, %cond.true69 ], [ %conv79, %cond.false76 ], !dbg !412
  %conv82 = trunc i32 %cond81 to i8, !dbg !412
  store i8 %conv82, i8* %hrs, align 1, !dbg !413
  %45 = load i8, i8* %day, align 1, !dbg !414
  %46 = call i1 @llvm.is.constant.i8(i8 %45), !dbg !414
  br i1 %46, label %cond.true83, label %cond.false90, !dbg !414

cond.true83:                                      ; preds = %cond.end80
  %47 = load i8, i8* %day, align 1, !dbg !414
  %conv84 = zext i8 %47 to i32, !dbg !414
  %div85 = sdiv i32 %conv84, 10, !dbg !414
  %shl86 = shl i32 %div85, 4, !dbg !414
  %48 = load i8, i8* %day, align 1, !dbg !414
  %conv87 = zext i8 %48 to i32, !dbg !414
  %rem88 = srem i32 %conv87, 10, !dbg !414
  %add89 = add i32 %shl86, %rem88, !dbg !414
  br label %cond.end94, !dbg !414

cond.false90:                                     ; preds = %cond.end80
  %49 = load i8, i8* %day, align 1, !dbg !414
  %conv91 = zext i8 %49 to i32, !dbg !414
  %call92 = call zeroext i8 @_bin2bcd(i32 %conv91) #9, !dbg !414
  %conv93 = zext i8 %call92 to i32, !dbg !414
  br label %cond.end94, !dbg !414

cond.end94:                                       ; preds = %cond.false90, %cond.true83
  %cond95 = phi i32 [ %add89, %cond.true83 ], [ %conv93, %cond.false90 ], !dbg !414
  %conv96 = trunc i32 %cond95 to i8, !dbg !414
  store i8 %conv96, i8* %day, align 1, !dbg !415
  %50 = load i8, i8* %mon, align 1, !dbg !416
  %51 = call i1 @llvm.is.constant.i8(i8 %50), !dbg !416
  br i1 %51, label %cond.true97, label %cond.false104, !dbg !416

cond.true97:                                      ; preds = %cond.end94
  %52 = load i8, i8* %mon, align 1, !dbg !416
  %conv98 = zext i8 %52 to i32, !dbg !416
  %div99 = sdiv i32 %conv98, 10, !dbg !416
  %shl100 = shl i32 %div99, 4, !dbg !416
  %53 = load i8, i8* %mon, align 1, !dbg !416
  %conv101 = zext i8 %53 to i32, !dbg !416
  %rem102 = srem i32 %conv101, 10, !dbg !416
  %add103 = add i32 %shl100, %rem102, !dbg !416
  br label %cond.end108, !dbg !416

cond.false104:                                    ; preds = %cond.end94
  %54 = load i8, i8* %mon, align 1, !dbg !416
  %conv105 = zext i8 %54 to i32, !dbg !416
  %call106 = call zeroext i8 @_bin2bcd(i32 %conv105) #9, !dbg !416
  %conv107 = zext i8 %call106 to i32, !dbg !416
  br label %cond.end108, !dbg !416

cond.end108:                                      ; preds = %cond.false104, %cond.true97
  %cond109 = phi i32 [ %add103, %cond.true97 ], [ %conv107, %cond.false104 ], !dbg !416
  %conv110 = trunc i32 %cond109 to i8, !dbg !416
  store i8 %conv110, i8* %mon, align 1, !dbg !417
  %55 = load i32, i32* %yrs, align 4, !dbg !418
  %conv111 = trunc i32 %55 to i8, !dbg !418
  %56 = call i1 @llvm.is.constant.i8(i8 %conv111), !dbg !418
  br i1 %56, label %cond.true112, label %cond.false117, !dbg !418

cond.true112:                                     ; preds = %cond.end108
  %57 = load i32, i32* %yrs, align 4, !dbg !418
  %div113 = udiv i32 %57, 10, !dbg !418
  %shl114 = shl i32 %div113, 4, !dbg !418
  %58 = load i32, i32* %yrs, align 4, !dbg !418
  %rem115 = urem i32 %58, 10, !dbg !418
  %add116 = add i32 %shl114, %rem115, !dbg !418
  br label %cond.end120, !dbg !418

cond.false117:                                    ; preds = %cond.end108
  %59 = load i32, i32* %yrs, align 4, !dbg !418
  %call118 = call zeroext i8 @_bin2bcd(i32 %59) #9, !dbg !418
  %conv119 = zext i8 %call118 to i32, !dbg !418
  br label %cond.end120, !dbg !418

cond.end120:                                      ; preds = %cond.false117, %cond.true112
  %cond121 = phi i32 [ %add116, %cond.true112 ], [ %conv119, %cond.false117 ], !dbg !418
  store i32 %cond121, i32* %yrs, align 4, !dbg !419
  %60 = load i8, i8* %century, align 1, !dbg !420
  %61 = call i1 @llvm.is.constant.i8(i8 %60), !dbg !420
  br i1 %61, label %cond.true122, label %cond.false129, !dbg !420

cond.true122:                                     ; preds = %cond.end120
  %62 = load i8, i8* %century, align 1, !dbg !420
  %conv123 = zext i8 %62 to i32, !dbg !420
  %div124 = sdiv i32 %conv123, 10, !dbg !420
  %shl125 = shl i32 %div124, 4, !dbg !420
  %63 = load i8, i8* %century, align 1, !dbg !420
  %conv126 = zext i8 %63 to i32, !dbg !420
  %rem127 = srem i32 %conv126, 10, !dbg !420
  %add128 = add i32 %shl125, %rem127, !dbg !420
  br label %cond.end133, !dbg !420

cond.false129:                                    ; preds = %cond.end120
  %64 = load i8, i8* %century, align 1, !dbg !420
  %conv130 = zext i8 %64 to i32, !dbg !420
  %call131 = call zeroext i8 @_bin2bcd(i32 %conv130) #9, !dbg !420
  %conv132 = zext i8 %call131 to i32, !dbg !420
  br label %cond.end133, !dbg !420

cond.end133:                                      ; preds = %cond.false129, %cond.true122
  %cond134 = phi i32 [ %add128, %cond.true122 ], [ %conv132, %cond.false129 ], !dbg !420
  %conv135 = trunc i32 %cond134 to i8, !dbg !420
  store i8 %conv135, i8* %century, align 1, !dbg !421
  br label %if.end136, !dbg !422

if.end136:                                        ; preds = %cond.end133, %lor.lhs.false
  %call137 = call zeroext i8 @rtc_cmos_read(i8 zeroext 11) #7, !dbg !423
  store i8 %call137, i8* %save_control, align 1, !dbg !424
  %65 = load i8, i8* %save_control, align 1, !dbg !425
  %conv138 = zext i8 %65 to i32, !dbg !425
  %or = or i32 %conv138, 128, !dbg !425
  %conv139 = trunc i32 %or to i8, !dbg !425
  call void @rtc_cmos_write(i8 zeroext %conv139, i8 zeroext 11) #7, !dbg !425
  %call140 = call zeroext i8 @rtc_cmos_read(i8 zeroext 10) #7, !dbg !426
  store i8 %call140, i8* %save_freq_select, align 1, !dbg !427
  %66 = load i8, i8* %save_freq_select, align 1, !dbg !428
  %conv141 = zext i8 %66 to i32, !dbg !428
  %or142 = or i32 %conv141, 112, !dbg !428
  %conv143 = trunc i32 %or142 to i8, !dbg !428
  call void @rtc_cmos_write(i8 zeroext %conv143, i8 zeroext 10) #7, !dbg !428
  %67 = load i32, i32* %yrs, align 4, !dbg !429
  %conv144 = trunc i32 %67 to i8, !dbg !429
  call void @rtc_cmos_write(i8 zeroext %conv144, i8 zeroext 9) #7, !dbg !429
  %68 = load i8, i8* %mon, align 1, !dbg !430
  call void @rtc_cmos_write(i8 zeroext %68, i8 zeroext 8) #7, !dbg !430
  %69 = load i8, i8* %day, align 1, !dbg !431
  call void @rtc_cmos_write(i8 zeroext %69, i8 zeroext 7) #7, !dbg !431
  %70 = load i8, i8* %hrs, align 1, !dbg !432
  call void @rtc_cmos_write(i8 zeroext %70, i8 zeroext 4) #7, !dbg !432
  %71 = load i8, i8* %min, align 1, !dbg !433
  call void @rtc_cmos_write(i8 zeroext %71, i8 zeroext 2) #7, !dbg !433
  %72 = load i8, i8* %sec, align 1, !dbg !434
  call void @rtc_cmos_write(i8 zeroext %72, i8 zeroext 0) #7, !dbg !434
  %73 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 0, i32 2), align 1, !dbg !435
  %conv145 = zext i8 %73 to i32, !dbg !437
  %cmp146 = icmp sge i32 %conv145, 3, !dbg !438
  br i1 %cmp146, label %land.lhs.true148, label %if.end152, !dbg !439

land.lhs.true148:                                 ; preds = %if.end136
  %74 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 35), align 1, !dbg !440
  %conv149 = zext i8 %74 to i32, !dbg !441
  %tobool150 = icmp ne i32 %conv149, 0, !dbg !441
  br i1 %tobool150, label %if.then151, label %if.end152, !dbg !442

if.then151:                                       ; preds = %land.lhs.true148
  %75 = load i8, i8* %century, align 1, !dbg !443
  %76 = load i8, i8* getelementptr inbounds (%struct.acpi_table_fadt, %struct.acpi_table_fadt* @acpi_gbl_FADT, i32 0, i32 35), align 1, !dbg !443
  call void @rtc_cmos_write(i8 zeroext %75, i8 zeroext %76) #7, !dbg !443
  br label %if.end152, !dbg !443

if.end152:                                        ; preds = %if.then151, %land.lhs.true148, %if.end136
  %77 = load i8, i8* %save_control, align 1, !dbg !444
  call void @rtc_cmos_write(i8 zeroext %77, i8 zeroext 11) #7, !dbg !444
  %78 = load i8, i8* %save_freq_select, align 1, !dbg !445
  call void @rtc_cmos_write(i8 zeroext %78, i8 zeroext 10) #7, !dbg !445
  %79 = load i64, i64* %flags, align 8, !dbg !446
  store %struct.spinlock* @rtc_lock, %struct.spinlock** %lock.addr.i153, align 8
  store i64 %79, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !2, metadata !151, metadata !DIExpression()) #6, !dbg !447
  call void @llvm.dbg.declare(metadata !2, metadata !155, metadata !DIExpression()) #6, !dbg !447
  store i32 1, i32* %tmp.i, align 4, !dbg !447
  %80 = load i32, i32* %tmp.i, align 4, !dbg !447
  call void @llvm.dbg.declare(metadata !2, metadata !156, metadata !DIExpression()) #6, !dbg !448
  call void @llvm.dbg.declare(metadata !2, metadata !162, metadata !DIExpression()) #6, !dbg !448
  store i32 1, i32* %tmp8.i, align 4, !dbg !448
  %81 = load i32, i32* %tmp8.i, align 4, !dbg !448
  %82 = load i64, i64* %flags.addr.i, align 8, !dbg !449
  call void @arch_local_irq_restore(i64 %82) #8, !dbg !449
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !450, !srcloc !166
  %83 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i153, align 8, !dbg !451
  %84 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %83, i32 0, i32 0, !dbg !451
  %rlock.i154 = bitcast %union.anon* %84 to %struct.raw_spinlock*, !dbg !451
  store i32 0, i32* %retval, align 4, !dbg !452
  br label %return, !dbg !452

return:                                           ; preds = %if.end152, %if.then36, %if.then
  %85 = load i32, i32* %retval, align 4, !dbg !453
  ret i32 %85, !dbg !453
}

; Function Attrs: noredzone nounwind readnone
declare dso_local zeroext i8 @_bin2bcd(i32) #4

; Function Attrs: noredzone
declare dso_local void @rtc_cmos_write(i8 zeroext, i8 zeroext) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !454 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !455, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !458, metadata !DIExpression()), !dbg !457
  %0 = load i64, i64* %__edi, align 8, !dbg !457
  store i64 %0, i64* %__edi, align 8, !dbg !457
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !459, metadata !DIExpression()), !dbg !457
  %1 = load i64, i64* %__esi, align 8, !dbg !457
  store i64 %1, i64* %__esi, align 8, !dbg !457
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !460, metadata !DIExpression()), !dbg !457
  %2 = load i64, i64* %__edx, align 8, !dbg !457
  store i64 %2, i64* %__edx, align 8, !dbg !457
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !461, metadata !DIExpression()), !dbg !457
  %3 = load i64, i64* %__ecx, align 8, !dbg !457
  store i64 %3, i64* %__ecx, align 8, !dbg !457
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !462, metadata !DIExpression()), !dbg !457
  %4 = load i64, i64* %__eax, align 8, !dbg !457
  store i64 %4, i64* %__eax, align 8, !dbg !457
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !457
  %6 = call i64 @llvm.read_register.i64(metadata !10), !dbg !463
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !463, !srcloc !466
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !463
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !463
  store i64 %asmresult, i64* %__eax, align 8, !dbg !463
  call void @llvm.write_register.i64(metadata !10, i64 %asmresult1), !dbg !463
  %8 = load i64, i64* %__eax, align 8, !dbg !463
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !467, metadata !DIExpression()), !dbg !469
  store i64 -1, i64* %__mask, align 8, !dbg !469
  %9 = load i64, i64* %__mask, align 8, !dbg !469
  store i64 %9, i64* %tmp, align 8, !dbg !469
  %10 = load i64, i64* %tmp, align 8, !dbg !469
  %and = and i64 %8, %10, !dbg !463
  store i64 %and, i64* %__ret, align 8, !dbg !463
  %11 = load i64, i64* %__ret, align 8, !dbg !457
  store i64 %11, i64* %tmp2, align 8, !dbg !470
  %12 = load i64, i64* %tmp2, align 8, !dbg !457
  ret i64 %12, !dbg !471
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !472 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !475, metadata !DIExpression()), !dbg !477
  %0 = load i64, i64* %__edi, align 8, !dbg !477
  store i64 %0, i64* %__edi, align 8, !dbg !477
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !478, metadata !DIExpression()), !dbg !477
  %1 = load i64, i64* %__esi, align 8, !dbg !477
  store i64 %1, i64* %__esi, align 8, !dbg !477
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !479, metadata !DIExpression()), !dbg !477
  %2 = load i64, i64* %__edx, align 8, !dbg !477
  store i64 %2, i64* %__edx, align 8, !dbg !477
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !480, metadata !DIExpression()), !dbg !477
  %3 = load i64, i64* %__ecx, align 8, !dbg !477
  store i64 %3, i64* %__ecx, align 8, !dbg !477
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !481, metadata !DIExpression()), !dbg !477
  %4 = load i64, i64* %__eax, align 8, !dbg !477
  store i64 %4, i64* %__eax, align 8, !dbg !477
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !477
  %6 = call i64 @llvm.read_register.i64(metadata !10), !dbg !477
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !477, !srcloc !482
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !477
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !477
  store i64 %asmresult, i64* %__eax, align 8, !dbg !477
  call void @llvm.write_register.i64(metadata !10, i64 %asmresult1), !dbg !477
  ret void, !dbg !483
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !484 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !489, metadata !DIExpression()), !dbg !491
  %0 = load i64, i64* %__edi, align 8, !dbg !491
  store i64 %0, i64* %__edi, align 8, !dbg !491
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !492, metadata !DIExpression()), !dbg !491
  %1 = load i64, i64* %__esi, align 8, !dbg !491
  store i64 %1, i64* %__esi, align 8, !dbg !491
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !493, metadata !DIExpression()), !dbg !491
  %2 = load i64, i64* %__edx, align 8, !dbg !491
  store i64 %2, i64* %__edx, align 8, !dbg !491
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !494, metadata !DIExpression()), !dbg !491
  %3 = load i64, i64* %__ecx, align 8, !dbg !491
  store i64 %3, i64* %__ecx, align 8, !dbg !491
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !495, metadata !DIExpression()), !dbg !491
  %4 = load i64, i64* %__eax, align 8, !dbg !491
  store i64 %4, i64* %__eax, align 8, !dbg !491
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !491
  %6 = call i64 @llvm.read_register.i64(metadata !10), !dbg !491
  %7 = load i64, i64* %f.addr, align 8, !dbg !491
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !491, !srcloc !496
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !491
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !491
  store i64 %asmresult, i64* %__eax, align 8, !dbg !491
  call void @llvm.write_register.i64(metadata !10, i64 %asmresult1), !dbg !491
  ret void, !dbg !497
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/rtc/rtc-mc146818-lib.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{}
!3 = !{!4, !9}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !5, line: 17, baseType: !6)
!5 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !{!"rsp"}
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!16 = distinct !DISubprogram(name: "mc146818_get_time", scope: !1, file: !1, line: 25, type: !17, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20}
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_time", file: !22, line: 24, size: 288, elements: !23)
!22 = !DIFile(filename: "./include/uapi/linux/rtc.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !26, !27, !28, !29, !30, !31, !32, !33}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !21, file: !22, line: 25, baseType: !25, size: 32)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !21, file: !22, line: 26, baseType: !25, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !21, file: !22, line: 27, baseType: !25, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !21, file: !22, line: 28, baseType: !25, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !21, file: !22, line: 29, baseType: !25, size: 32, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !21, file: !22, line: 30, baseType: !25, size: 32, offset: 160)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !21, file: !22, line: 31, baseType: !25, size: 32, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !21, file: !22, line: 32, baseType: !25, size: 32, offset: 224)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !21, file: !22, line: 33, baseType: !25, size: 32, offset: 256)
!34 = !DILocalVariable(name: "lock", arg: 1, scope: !35, file: !36, line: 407, type: !39)
!35 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !36, file: !36, line: 407, type: !37, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!36 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !9}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !41, line: 83, baseType: !42)
!41 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !41, line: 71, elements: !43)
!43 = !{!44}
!44 = !DIDerivedType(tag: DW_TAG_member, scope: !42, file: !41, line: 72, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !42, file: !41, line: 72, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !45, file: !41, line: 73, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !41, line: 20, elements: !49)
!49 = !{!50}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !48, file: !41, line: 21, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !52, line: 25, baseType: !53)
!52 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !52, line: 25, elements: !2)
!54 = !DILocation(line: 407, column: 64, scope: !35, inlinedAt: !55)
!55 = distinct !DILocation(line: 69, column: 2, scope: !16)
!56 = !DILocalVariable(name: "flags", arg: 2, scope: !35, file: !36, line: 407, type: !9)
!57 = !DILocation(line: 407, column: 84, scope: !35, inlinedAt: !55)
!58 = !DILocalVariable(name: "lock", arg: 1, scope: !59, file: !36, line: 327, type: !39)
!59 = distinct !DISubprogram(name: "spinlock_check", scope: !36, file: !36, line: 327, type: !60, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !39}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !41, line: 29, baseType: !48)
!64 = !DILocation(line: 327, column: 67, scope: !59, inlinedAt: !65)
!65 = distinct !DILocation(line: 53, column: 2, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 53, column: 2)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 53, column: 2)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 53, column: 2)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 53, column: 2)
!70 = distinct !DILexicalBlock(scope: !16, file: !1, line: 53, column: 2)
!71 = !DILocalVariable(name: "time", arg: 1, scope: !16, file: !1, line: 25, type: !20)
!72 = !DILocation(line: 25, column: 49, scope: !16)
!73 = !DILocalVariable(name: "ctrl", scope: !16, file: !1, line: 27, type: !8)
!74 = !DILocation(line: 27, column: 16, scope: !16)
!75 = !DILocalVariable(name: "flags", scope: !16, file: !1, line: 28, type: !9)
!76 = !DILocation(line: 28, column: 16, scope: !16)
!77 = !DILocalVariable(name: "century", scope: !16, file: !1, line: 29, type: !8)
!78 = !DILocation(line: 29, column: 16, scope: !16)
!79 = !DILocation(line: 44, column: 6, scope: !80)
!80 = distinct !DILexicalBlock(scope: !16, file: !1, line: 44, column: 6)
!81 = !DILocation(line: 44, column: 6, scope: !16)
!82 = !DILocalVariable(name: "__ms", scope: !83, file: !1, line: 45, type: !9)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 45, column: 3)
!84 = !DILocation(line: 45, column: 3, scope: !83)
!85 = !DILocation(line: 45, column: 3, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 45, column: 3)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 45, column: 3)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 45, column: 3)
!89 = distinct !DILexicalBlock(scope: !83, file: !1, line: 45, column: 3)
!90 = distinct !{!90, !84, !84}
!91 = !DILocation(line: 45, column: 3, scope: !80)
!92 = !DILocation(line: 53, column: 2, scope: !16)
!93 = !DILocation(line: 53, column: 2, scope: !70)
!94 = !DILocalVariable(name: "__dummy", scope: !95, file: !1, line: 53, type: !9)
!95 = distinct !DILexicalBlock(scope: !69, file: !1, line: 53, column: 2)
!96 = !DILocation(line: 53, column: 2, scope: !95)
!97 = !DILocalVariable(name: "__dummy2", scope: !95, file: !1, line: 53, type: !9)
!98 = !DILocation(line: 53, column: 2, scope: !69)
!99 = !DILocation(line: 53, column: 2, scope: !68)
!100 = !DILocation(line: 53, column: 2, scope: !101)
!101 = distinct !DILexicalBlock(scope: !68, file: !1, line: 53, column: 2)
!102 = !DILocalVariable(name: "__dummy", scope: !103, file: !1, line: 53, type: !9)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 53, column: 2)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 53, column: 2)
!105 = !DILocation(line: 53, column: 2, scope: !103)
!106 = !DILocalVariable(name: "__dummy2", scope: !103, file: !1, line: 53, type: !9)
!107 = !DILocation(line: 53, column: 2, scope: !104)
!108 = !DILocation(line: 53, column: 2, scope: !67)
!109 = !{i32 -2142010592}
!110 = !DILocation(line: 329, column: 10, scope: !59, inlinedAt: !65)
!111 = !DILocation(line: 329, column: 16, scope: !59, inlinedAt: !65)
!112 = !DILocation(line: 53, column: 2, scope: !66)
!113 = !DILocation(line: 54, column: 17, scope: !16)
!114 = !DILocation(line: 54, column: 2, scope: !16)
!115 = !DILocation(line: 54, column: 8, scope: !16)
!116 = !DILocation(line: 54, column: 15, scope: !16)
!117 = !DILocation(line: 55, column: 17, scope: !16)
!118 = !DILocation(line: 55, column: 2, scope: !16)
!119 = !DILocation(line: 55, column: 8, scope: !16)
!120 = !DILocation(line: 55, column: 15, scope: !16)
!121 = !DILocation(line: 56, column: 18, scope: !16)
!122 = !DILocation(line: 56, column: 2, scope: !16)
!123 = !DILocation(line: 56, column: 8, scope: !16)
!124 = !DILocation(line: 56, column: 16, scope: !16)
!125 = !DILocation(line: 57, column: 18, scope: !16)
!126 = !DILocation(line: 57, column: 2, scope: !16)
!127 = !DILocation(line: 57, column: 8, scope: !16)
!128 = !DILocation(line: 57, column: 16, scope: !16)
!129 = !DILocation(line: 58, column: 17, scope: !16)
!130 = !DILocation(line: 58, column: 2, scope: !16)
!131 = !DILocation(line: 58, column: 8, scope: !16)
!132 = !DILocation(line: 58, column: 15, scope: !16)
!133 = !DILocation(line: 59, column: 18, scope: !16)
!134 = !DILocation(line: 59, column: 2, scope: !16)
!135 = !DILocation(line: 59, column: 8, scope: !16)
!136 = !DILocation(line: 59, column: 16, scope: !16)
!137 = !DILocation(line: 64, column: 27, scope: !138)
!138 = distinct !DILexicalBlock(scope: !16, file: !1, line: 64, column: 6)
!139 = !DILocation(line: 64, column: 6, scope: !138)
!140 = !DILocation(line: 64, column: 36, scope: !138)
!141 = !DILocation(line: 64, column: 57, scope: !138)
!142 = !DILocation(line: 65, column: 20, scope: !138)
!143 = !DILocation(line: 65, column: 6, scope: !138)
!144 = !DILocation(line: 64, column: 6, scope: !16)
!145 = !DILocation(line: 66, column: 13, scope: !138)
!146 = !DILocation(line: 66, column: 11, scope: !138)
!147 = !DILocation(line: 66, column: 3, scope: !138)
!148 = !DILocation(line: 68, column: 9, scope: !16)
!149 = !DILocation(line: 68, column: 7, scope: !16)
!150 = !DILocation(line: 69, column: 36, scope: !16)
!151 = !DILocalVariable(name: "__dummy", scope: !152, file: !36, line: 409, type: !9)
!152 = distinct !DILexicalBlock(scope: !153, file: !36, line: 409, column: 2)
!153 = distinct !DILexicalBlock(scope: !35, file: !36, line: 409, column: 2)
!154 = !DILocation(line: 409, column: 2, scope: !152, inlinedAt: !55)
!155 = !DILocalVariable(name: "__dummy2", scope: !152, file: !36, line: 409, type: !9)
!156 = !DILocalVariable(name: "__dummy", scope: !157, file: !36, line: 409, type: !9)
!157 = distinct !DILexicalBlock(scope: !158, file: !36, line: 409, column: 2)
!158 = distinct !DILexicalBlock(scope: !159, file: !36, line: 409, column: 2)
!159 = distinct !DILexicalBlock(scope: !160, file: !36, line: 409, column: 2)
!160 = distinct !DILexicalBlock(scope: !153, file: !36, line: 409, column: 2)
!161 = !DILocation(line: 409, column: 2, scope: !157, inlinedAt: !55)
!162 = !DILocalVariable(name: "__dummy2", scope: !157, file: !36, line: 409, type: !9)
!163 = !DILocation(line: 409, column: 2, scope: !158, inlinedAt: !55)
!164 = !DILocation(line: 409, column: 2, scope: !165, inlinedAt: !55)
!165 = distinct !DILexicalBlock(scope: !160, file: !36, line: 409, column: 2)
!166 = !{i32 -2145532913}
!167 = !DILocation(line: 409, column: 2, scope: !168, inlinedAt: !55)
!168 = distinct !DILexicalBlock(scope: !165, file: !36, line: 409, column: 2)
!169 = !DILocation(line: 71, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !16, file: !1, line: 71, column: 6)
!171 = !DILocation(line: 71, column: 13, scope: !170)
!172 = !DILocation(line: 71, column: 30, scope: !170)
!173 = !DILocation(line: 71, column: 6, scope: !16)
!174 = !DILocation(line: 73, column: 18, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !1, line: 72, column: 2)
!176 = !DILocation(line: 73, column: 3, scope: !175)
!177 = !DILocation(line: 73, column: 9, scope: !175)
!178 = !DILocation(line: 73, column: 16, scope: !175)
!179 = !DILocation(line: 74, column: 18, scope: !175)
!180 = !DILocation(line: 74, column: 3, scope: !175)
!181 = !DILocation(line: 74, column: 9, scope: !175)
!182 = !DILocation(line: 74, column: 16, scope: !175)
!183 = !DILocation(line: 75, column: 19, scope: !175)
!184 = !DILocation(line: 75, column: 3, scope: !175)
!185 = !DILocation(line: 75, column: 9, scope: !175)
!186 = !DILocation(line: 75, column: 17, scope: !175)
!187 = !DILocation(line: 76, column: 19, scope: !175)
!188 = !DILocation(line: 76, column: 3, scope: !175)
!189 = !DILocation(line: 76, column: 9, scope: !175)
!190 = !DILocation(line: 76, column: 17, scope: !175)
!191 = !DILocation(line: 77, column: 18, scope: !175)
!192 = !DILocation(line: 77, column: 3, scope: !175)
!193 = !DILocation(line: 77, column: 9, scope: !175)
!194 = !DILocation(line: 77, column: 16, scope: !175)
!195 = !DILocation(line: 78, column: 19, scope: !175)
!196 = !DILocation(line: 78, column: 3, scope: !175)
!197 = !DILocation(line: 78, column: 9, scope: !175)
!198 = !DILocation(line: 78, column: 17, scope: !175)
!199 = !DILocation(line: 79, column: 13, scope: !175)
!200 = !DILocation(line: 79, column: 11, scope: !175)
!201 = !DILocation(line: 80, column: 2, scope: !175)
!202 = !DILocation(line: 86, column: 6, scope: !203)
!203 = distinct !DILexicalBlock(scope: !16, file: !1, line: 86, column: 6)
!204 = !DILocation(line: 86, column: 14, scope: !203)
!205 = !DILocation(line: 86, column: 6, scope: !16)
!206 = !DILocation(line: 87, column: 21, scope: !203)
!207 = !DILocation(line: 87, column: 29, scope: !203)
!208 = !DILocation(line: 87, column: 35, scope: !203)
!209 = !DILocation(line: 87, column: 3, scope: !203)
!210 = !DILocation(line: 87, column: 9, scope: !203)
!211 = !DILocation(line: 87, column: 17, scope: !203)
!212 = !DILocation(line: 93, column: 6, scope: !213)
!213 = distinct !DILexicalBlock(scope: !16, file: !1, line: 93, column: 6)
!214 = !DILocation(line: 93, column: 12, scope: !213)
!215 = !DILocation(line: 93, column: 20, scope: !213)
!216 = !DILocation(line: 93, column: 6, scope: !16)
!217 = !DILocation(line: 94, column: 3, scope: !213)
!218 = !DILocation(line: 94, column: 9, scope: !213)
!219 = !DILocation(line: 94, column: 17, scope: !213)
!220 = !DILocation(line: 96, column: 2, scope: !16)
!221 = !DILocation(line: 96, column: 8, scope: !16)
!222 = !DILocation(line: 96, column: 14, scope: !16)
!223 = !DILocation(line: 98, column: 2, scope: !16)
!224 = distinct !DISubprogram(name: "mc146818_is_updating", scope: !1, file: !1, line: 14, type: !225, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!225 = !DISubroutineType(types: !226)
!226 = !{!8}
!227 = !DILocation(line: 407, column: 64, scope: !35, inlinedAt: !228)
!228 = distinct !DILocation(line: 21, column: 2, scope: !224)
!229 = !DILocation(line: 407, column: 84, scope: !35, inlinedAt: !228)
!230 = !DILocation(line: 327, column: 67, scope: !59, inlinedAt: !231)
!231 = distinct !DILocation(line: 19, column: 2, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 19, column: 2)
!233 = distinct !DILexicalBlock(scope: !234, file: !1, line: 19, column: 2)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 19, column: 2)
!235 = distinct !DILexicalBlock(scope: !236, file: !1, line: 19, column: 2)
!236 = distinct !DILexicalBlock(scope: !224, file: !1, line: 19, column: 2)
!237 = !DILocalVariable(name: "uip", scope: !224, file: !1, line: 16, type: !8)
!238 = !DILocation(line: 16, column: 16, scope: !224)
!239 = !DILocalVariable(name: "flags", scope: !224, file: !1, line: 17, type: !9)
!240 = !DILocation(line: 17, column: 16, scope: !224)
!241 = !DILocation(line: 19, column: 2, scope: !224)
!242 = !DILocation(line: 19, column: 2, scope: !236)
!243 = !DILocalVariable(name: "__dummy", scope: !244, file: !1, line: 19, type: !9)
!244 = distinct !DILexicalBlock(scope: !235, file: !1, line: 19, column: 2)
!245 = !DILocation(line: 19, column: 2, scope: !244)
!246 = !DILocalVariable(name: "__dummy2", scope: !244, file: !1, line: 19, type: !9)
!247 = !DILocation(line: 19, column: 2, scope: !235)
!248 = !DILocation(line: 19, column: 2, scope: !234)
!249 = !DILocation(line: 19, column: 2, scope: !250)
!250 = distinct !DILexicalBlock(scope: !234, file: !1, line: 19, column: 2)
!251 = !DILocalVariable(name: "__dummy", scope: !252, file: !1, line: 19, type: !9)
!252 = distinct !DILexicalBlock(scope: !253, file: !1, line: 19, column: 2)
!253 = distinct !DILexicalBlock(scope: !250, file: !1, line: 19, column: 2)
!254 = !DILocation(line: 19, column: 2, scope: !252)
!255 = !DILocalVariable(name: "__dummy2", scope: !252, file: !1, line: 19, type: !9)
!256 = !DILocation(line: 19, column: 2, scope: !253)
!257 = !DILocation(line: 19, column: 2, scope: !233)
!258 = !{i32 -2142012284}
!259 = !DILocation(line: 329, column: 10, scope: !59, inlinedAt: !231)
!260 = !DILocation(line: 329, column: 16, scope: !59, inlinedAt: !231)
!261 = !DILocation(line: 19, column: 2, scope: !232)
!262 = !DILocation(line: 20, column: 9, scope: !224)
!263 = !DILocation(line: 20, column: 36, scope: !224)
!264 = !DILocation(line: 20, column: 8, scope: !224)
!265 = !DILocation(line: 20, column: 6, scope: !224)
!266 = !DILocation(line: 21, column: 36, scope: !224)
!267 = !DILocation(line: 409, column: 2, scope: !152, inlinedAt: !228)
!268 = !DILocation(line: 409, column: 2, scope: !157, inlinedAt: !228)
!269 = !DILocation(line: 409, column: 2, scope: !158, inlinedAt: !228)
!270 = !DILocation(line: 409, column: 2, scope: !165, inlinedAt: !228)
!271 = !DILocation(line: 409, column: 2, scope: !168, inlinedAt: !228)
!272 = !DILocation(line: 22, column: 9, scope: !224)
!273 = !DILocation(line: 22, column: 2, scope: !224)
!274 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !275, file: !275, line: 666, type: !276, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!275 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!276 = !DISubroutineType(types: !277)
!277 = !{!9}
!278 = !DILocalVariable(name: "f", scope: !274, file: !275, line: 668, type: !9)
!279 = !DILocation(line: 668, column: 16, scope: !274)
!280 = !DILocation(line: 670, column: 6, scope: !274)
!281 = !DILocation(line: 670, column: 4, scope: !274)
!282 = !DILocation(line: 671, column: 2, scope: !274)
!283 = !DILocation(line: 672, column: 9, scope: !274)
!284 = !DILocation(line: 672, column: 2, scope: !274)
!285 = distinct !DISubprogram(name: "mc146818_set_time", scope: !1, file: !1, line: 103, type: !286, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!286 = !DISubroutineType(types: !287)
!287 = !{!25, !20}
!288 = !DILocation(line: 407, column: 64, scope: !35, inlinedAt: !289)
!289 = distinct !DILocation(line: 154, column: 3, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 153, column: 17)
!291 = distinct !DILexicalBlock(scope: !285, file: !1, line: 153, column: 6)
!292 = !DILocation(line: 407, column: 84, scope: !35, inlinedAt: !289)
!293 = !DILocation(line: 407, column: 64, scope: !35, inlinedAt: !294)
!294 = distinct !DILocation(line: 195, column: 2, scope: !285)
!295 = !DILocation(line: 407, column: 84, scope: !35, inlinedAt: !294)
!296 = !DILocation(line: 327, column: 67, scope: !59, inlinedAt: !297)
!297 = distinct !DILocation(line: 124, column: 2, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 124, column: 2)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 124, column: 2)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 124, column: 2)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 124, column: 2)
!302 = distinct !DILexicalBlock(scope: !285, file: !1, line: 124, column: 2)
!303 = !DILocalVariable(name: "time", arg: 1, scope: !285, file: !1, line: 103, type: !20)
!304 = !DILocation(line: 103, column: 40, scope: !285)
!305 = !DILocalVariable(name: "flags", scope: !285, file: !1, line: 105, type: !9)
!306 = !DILocation(line: 105, column: 16, scope: !285)
!307 = !DILocalVariable(name: "mon", scope: !285, file: !1, line: 106, type: !8)
!308 = !DILocation(line: 106, column: 16, scope: !285)
!309 = !DILocalVariable(name: "day", scope: !285, file: !1, line: 106, type: !8)
!310 = !DILocation(line: 106, column: 21, scope: !285)
!311 = !DILocalVariable(name: "hrs", scope: !285, file: !1, line: 106, type: !8)
!312 = !DILocation(line: 106, column: 26, scope: !285)
!313 = !DILocalVariable(name: "min", scope: !285, file: !1, line: 106, type: !8)
!314 = !DILocation(line: 106, column: 31, scope: !285)
!315 = !DILocalVariable(name: "sec", scope: !285, file: !1, line: 106, type: !8)
!316 = !DILocation(line: 106, column: 36, scope: !285)
!317 = !DILocalVariable(name: "save_control", scope: !285, file: !1, line: 107, type: !8)
!318 = !DILocation(line: 107, column: 16, scope: !285)
!319 = !DILocalVariable(name: "save_freq_select", scope: !285, file: !1, line: 107, type: !8)
!320 = !DILocation(line: 107, column: 30, scope: !285)
!321 = !DILocalVariable(name: "yrs", scope: !285, file: !1, line: 108, type: !19)
!322 = !DILocation(line: 108, column: 15, scope: !285)
!323 = !DILocalVariable(name: "century", scope: !285, file: !1, line: 112, type: !8)
!324 = !DILocation(line: 112, column: 16, scope: !285)
!325 = !DILocation(line: 114, column: 8, scope: !285)
!326 = !DILocation(line: 114, column: 14, scope: !285)
!327 = !DILocation(line: 114, column: 6, scope: !285)
!328 = !DILocation(line: 115, column: 8, scope: !285)
!329 = !DILocation(line: 115, column: 14, scope: !285)
!330 = !DILocation(line: 115, column: 21, scope: !285)
!331 = !DILocation(line: 115, column: 6, scope: !285)
!332 = !DILocation(line: 116, column: 8, scope: !285)
!333 = !DILocation(line: 116, column: 14, scope: !285)
!334 = !DILocation(line: 116, column: 6, scope: !285)
!335 = !DILocation(line: 117, column: 8, scope: !285)
!336 = !DILocation(line: 117, column: 14, scope: !285)
!337 = !DILocation(line: 117, column: 6, scope: !285)
!338 = !DILocation(line: 118, column: 8, scope: !285)
!339 = !DILocation(line: 118, column: 14, scope: !285)
!340 = !DILocation(line: 118, column: 6, scope: !285)
!341 = !DILocation(line: 119, column: 8, scope: !285)
!342 = !DILocation(line: 119, column: 14, scope: !285)
!343 = !DILocation(line: 119, column: 6, scope: !285)
!344 = !DILocation(line: 121, column: 6, scope: !345)
!345 = distinct !DILexicalBlock(scope: !285, file: !1, line: 121, column: 6)
!346 = !DILocation(line: 121, column: 10, scope: !345)
!347 = !DILocation(line: 121, column: 6, scope: !285)
!348 = !DILocation(line: 122, column: 3, scope: !345)
!349 = !DILocation(line: 124, column: 2, scope: !285)
!350 = !DILocation(line: 124, column: 2, scope: !302)
!351 = !DILocalVariable(name: "__dummy", scope: !352, file: !1, line: 124, type: !9)
!352 = distinct !DILexicalBlock(scope: !301, file: !1, line: 124, column: 2)
!353 = !DILocation(line: 124, column: 2, scope: !352)
!354 = !DILocalVariable(name: "__dummy2", scope: !352, file: !1, line: 124, type: !9)
!355 = !DILocation(line: 124, column: 2, scope: !301)
!356 = !DILocation(line: 124, column: 2, scope: !300)
!357 = !DILocation(line: 124, column: 2, scope: !358)
!358 = distinct !DILexicalBlock(scope: !300, file: !1, line: 124, column: 2)
!359 = !DILocalVariable(name: "__dummy", scope: !360, file: !1, line: 124, type: !9)
!360 = distinct !DILexicalBlock(scope: !361, file: !1, line: 124, column: 2)
!361 = distinct !DILexicalBlock(scope: !358, file: !1, line: 124, column: 2)
!362 = !DILocation(line: 124, column: 2, scope: !360)
!363 = !DILocalVariable(name: "__dummy2", scope: !360, file: !1, line: 124, type: !9)
!364 = !DILocation(line: 124, column: 2, scope: !361)
!365 = !DILocation(line: 124, column: 2, scope: !299)
!366 = !{i32 -2142008039}
!367 = !DILocation(line: 329, column: 10, scope: !59, inlinedAt: !297)
!368 = !DILocation(line: 329, column: 16, scope: !59, inlinedAt: !297)
!369 = !DILocation(line: 124, column: 2, scope: !298)
!370 = !DILocation(line: 143, column: 27, scope: !371)
!371 = distinct !DILexicalBlock(scope: !285, file: !1, line: 143, column: 6)
!372 = !DILocation(line: 143, column: 6, scope: !371)
!373 = !DILocation(line: 143, column: 36, scope: !371)
!374 = !DILocation(line: 143, column: 57, scope: !371)
!375 = !DILocation(line: 144, column: 20, scope: !371)
!376 = !DILocation(line: 144, column: 6, scope: !371)
!377 = !DILocation(line: 143, column: 6, scope: !285)
!378 = !DILocation(line: 145, column: 14, scope: !379)
!379 = distinct !DILexicalBlock(scope: !371, file: !1, line: 144, column: 29)
!380 = !DILocation(line: 145, column: 18, scope: !379)
!381 = !DILocation(line: 145, column: 26, scope: !379)
!382 = !DILocation(line: 145, column: 13, scope: !379)
!383 = !DILocation(line: 145, column: 11, scope: !379)
!384 = !DILocation(line: 146, column: 7, scope: !379)
!385 = !DILocation(line: 147, column: 2, scope: !379)
!386 = !DILocation(line: 153, column: 6, scope: !291)
!387 = !DILocation(line: 153, column: 10, scope: !291)
!388 = !DILocation(line: 153, column: 6, scope: !285)
!389 = !DILocation(line: 154, column: 37, scope: !290)
!390 = !DILocation(line: 409, column: 2, scope: !152, inlinedAt: !289)
!391 = !DILocation(line: 409, column: 2, scope: !157, inlinedAt: !289)
!392 = !DILocation(line: 409, column: 2, scope: !158, inlinedAt: !289)
!393 = !DILocation(line: 409, column: 2, scope: !165, inlinedAt: !289)
!394 = !DILocation(line: 409, column: 2, scope: !168, inlinedAt: !289)
!395 = !DILocation(line: 155, column: 3, scope: !290)
!396 = !DILocation(line: 158, column: 6, scope: !397)
!397 = distinct !DILexicalBlock(scope: !285, file: !1, line: 158, column: 6)
!398 = !DILocation(line: 158, column: 10, scope: !397)
!399 = !DILocation(line: 158, column: 6, scope: !285)
!400 = !DILocation(line: 159, column: 7, scope: !397)
!401 = !DILocation(line: 159, column: 3, scope: !397)
!402 = !DILocation(line: 161, column: 8, scope: !403)
!403 = distinct !DILexicalBlock(scope: !285, file: !1, line: 161, column: 6)
!404 = !DILocation(line: 161, column: 31, scope: !403)
!405 = !DILocation(line: 162, column: 6, scope: !403)
!406 = !DILocation(line: 161, column: 6, scope: !285)
!407 = !DILocation(line: 163, column: 9, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !1, line: 162, column: 25)
!409 = !DILocation(line: 163, column: 7, scope: !408)
!410 = !DILocation(line: 164, column: 9, scope: !408)
!411 = !DILocation(line: 164, column: 7, scope: !408)
!412 = !DILocation(line: 165, column: 9, scope: !408)
!413 = !DILocation(line: 165, column: 7, scope: !408)
!414 = !DILocation(line: 166, column: 9, scope: !408)
!415 = !DILocation(line: 166, column: 7, scope: !408)
!416 = !DILocation(line: 167, column: 9, scope: !408)
!417 = !DILocation(line: 167, column: 7, scope: !408)
!418 = !DILocation(line: 168, column: 9, scope: !408)
!419 = !DILocation(line: 168, column: 7, scope: !408)
!420 = !DILocation(line: 169, column: 13, scope: !408)
!421 = !DILocation(line: 169, column: 11, scope: !408)
!422 = !DILocation(line: 170, column: 2, scope: !408)
!423 = !DILocation(line: 172, column: 17, scope: !285)
!424 = !DILocation(line: 172, column: 15, scope: !285)
!425 = !DILocation(line: 173, column: 2, scope: !285)
!426 = !DILocation(line: 174, column: 21, scope: !285)
!427 = !DILocation(line: 174, column: 19, scope: !285)
!428 = !DILocation(line: 175, column: 2, scope: !285)
!429 = !DILocation(line: 180, column: 2, scope: !285)
!430 = !DILocation(line: 181, column: 2, scope: !285)
!431 = !DILocation(line: 182, column: 2, scope: !285)
!432 = !DILocation(line: 183, column: 2, scope: !285)
!433 = !DILocation(line: 184, column: 2, scope: !285)
!434 = !DILocation(line: 185, column: 2, scope: !285)
!435 = !DILocation(line: 187, column: 27, scope: !436)
!436 = distinct !DILexicalBlock(scope: !285, file: !1, line: 187, column: 6)
!437 = !DILocation(line: 187, column: 6, scope: !436)
!438 = !DILocation(line: 187, column: 36, scope: !436)
!439 = !DILocation(line: 187, column: 57, scope: !436)
!440 = !DILocation(line: 188, column: 20, scope: !436)
!441 = !DILocation(line: 188, column: 6, scope: !436)
!442 = !DILocation(line: 187, column: 6, scope: !285)
!443 = !DILocation(line: 189, column: 3, scope: !436)
!444 = !DILocation(line: 192, column: 2, scope: !285)
!445 = !DILocation(line: 193, column: 2, scope: !285)
!446 = !DILocation(line: 195, column: 36, scope: !285)
!447 = !DILocation(line: 409, column: 2, scope: !152, inlinedAt: !294)
!448 = !DILocation(line: 409, column: 2, scope: !157, inlinedAt: !294)
!449 = !DILocation(line: 409, column: 2, scope: !158, inlinedAt: !294)
!450 = !DILocation(line: 409, column: 2, scope: !165, inlinedAt: !294)
!451 = !DILocation(line: 409, column: 2, scope: !168, inlinedAt: !294)
!452 = !DILocation(line: 197, column: 2, scope: !285)
!453 = !DILocation(line: 198, column: 1, scope: !285)
!454 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !275, file: !275, line: 646, type: !276, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!455 = !DILocalVariable(name: "__ret", scope: !456, file: !275, line: 648, type: !9)
!456 = distinct !DILexicalBlock(scope: !454, file: !275, line: 648, column: 9)
!457 = !DILocation(line: 648, column: 9, scope: !456)
!458 = !DILocalVariable(name: "__edi", scope: !456, file: !275, line: 648, type: !9)
!459 = !DILocalVariable(name: "__esi", scope: !456, file: !275, line: 648, type: !9)
!460 = !DILocalVariable(name: "__edx", scope: !456, file: !275, line: 648, type: !9)
!461 = !DILocalVariable(name: "__ecx", scope: !456, file: !275, line: 648, type: !9)
!462 = !DILocalVariable(name: "__eax", scope: !456, file: !275, line: 648, type: !9)
!463 = !DILocation(line: 648, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !275, line: 648, column: 9)
!465 = distinct !DILexicalBlock(scope: !456, file: !275, line: 648, column: 9)
!466 = !{i32 -2146044534, i32 -2146042219, i32 -2146041985, i32 -2146041934, i32 -2146041906, i32 -2146041881, i32 -2146042197, i32 -2146042184, i32 -2146041746, i32 -2146041627, i32 -2146042092, i32 -2146042065, i32 -2146042037, i32 -2146042007}
!467 = !DILocalVariable(name: "__mask", scope: !468, file: !275, line: 648, type: !9)
!468 = distinct !DILexicalBlock(scope: !464, file: !275, line: 648, column: 9)
!469 = !DILocation(line: 648, column: 9, scope: !468)
!470 = !DILocation(line: 648, column: 9, scope: !465)
!471 = !DILocation(line: 648, column: 2, scope: !454)
!472 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !275, file: !275, line: 656, type: !473, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!473 = !DISubroutineType(types: !474)
!474 = !{null}
!475 = !DILocalVariable(name: "__edi", scope: !476, file: !275, line: 658, type: !9)
!476 = distinct !DILexicalBlock(scope: !472, file: !275, line: 658, column: 2)
!477 = !DILocation(line: 658, column: 2, scope: !476)
!478 = !DILocalVariable(name: "__esi", scope: !476, file: !275, line: 658, type: !9)
!479 = !DILocalVariable(name: "__edx", scope: !476, file: !275, line: 658, type: !9)
!480 = !DILocalVariable(name: "__ecx", scope: !476, file: !275, line: 658, type: !9)
!481 = !DILocalVariable(name: "__eax", scope: !476, file: !275, line: 658, type: !9)
!482 = !{i32 -2146037440, i32 -2146036708, i32 -2146036474, i32 -2146036423, i32 -2146036395, i32 -2146036370, i32 -2146036686, i32 -2146036673, i32 -2146036235, i32 -2146036116, i32 -2146036581, i32 -2146036554, i32 -2146036526, i32 -2146036496}
!483 = !DILocation(line: 659, column: 1, scope: !472)
!484 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !275, file: !275, line: 651, type: !485, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !9}
!487 = !DILocalVariable(name: "f", arg: 1, scope: !484, file: !275, line: 651, type: !9)
!488 = !DILocation(line: 651, column: 65, scope: !484)
!489 = !DILocalVariable(name: "__edi", scope: !490, file: !275, line: 653, type: !9)
!490 = distinct !DILexicalBlock(scope: !484, file: !275, line: 653, column: 2)
!491 = !DILocation(line: 653, column: 2, scope: !490)
!492 = !DILocalVariable(name: "__esi", scope: !490, file: !275, line: 653, type: !9)
!493 = !DILocalVariable(name: "__edx", scope: !490, file: !275, line: 653, type: !9)
!494 = !DILocalVariable(name: "__ecx", scope: !490, file: !275, line: 653, type: !9)
!495 = !DILocalVariable(name: "__eax", scope: !490, file: !275, line: 653, type: !9)
!496 = !{i32 -2146040067, i32 -2146039317, i32 -2146039083, i32 -2146039032, i32 -2146039004, i32 -2146038979, i32 -2146039295, i32 -2146039282, i32 -2146038844, i32 -2146038725, i32 -2146039190, i32 -2146039163, i32 -2146039135, i32 -2146039105}
!497 = !DILocation(line: 654, column: 1, scope: !484)
