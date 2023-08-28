; ModuleID = '../bcout/drivers/xen/events/events_2l.llvm.bc'
source_filename = "drivers/xen/events/events_2l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.shared_info = type { [32 x %struct.vcpu_info], [64 x i64], [64 x i64], %struct.pvclock_wall_clock, %struct.arch_shared_info }
%struct.vcpu_info = type { i8, i8, i64, %struct.arch_vcpu_info, %struct.pvclock_vcpu_time_info }
%struct.arch_vcpu_info = type { i64, i64 }
%struct.pvclock_vcpu_time_info = type { i32, i32, i64, i64, i32, i8, i8, [2 x i8] }
%struct.pvclock_wall_clock = type { i32, i32, i32 }
%struct.arch_shared_info = type { i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.cpumask = type { [1 x i64] }
%struct.evtchn_ops = type { i32 ()*, i32 ()*, i32 (i32)*, void (i32, i32, i32)*, void (i32)*, void (i32)*, i1 (i32)*, i1 (i32)*, void (i32)*, void (i32)*, void (i32, %struct.evtchn_loop_ctrl*)*, void ()*, i32 (i32)*, i32 (i32)* }
%struct.evtchn_loop_ctrl = type opaque
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
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.evtchn_unmask = type { i32 }

@HYPERVISOR_shared_info = external dso_local global %struct.shared_info*, align 8
@cpu_evtchn_mask = internal global [64 x i64] zeroinitializer, section ".data", align 16, !dbg !0
@xen_debug_interrupt.debug_lock = internal global %struct.spinlock undef, align 1, !dbg !121
@.str = private unnamed_addr constant [12 x i8] c"\0Avcpu %d\0A  \00", align 1
@xen_vcpu = external dso_local global %struct.vcpu_info*, section ".data", align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"%d: masked=%d pending=%d event_sel %0*lx\0A  \00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"\0Apending:\0A   \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%0*lx%s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0Aglobal mask:\0A   \00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"\0Aglobally unmasked:\0A   \00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\0Alocal cpu%d mask:\0A   \00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\0Alocally unmasked:\0A   \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"\0Apending list:\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"  %d: event %d -> irq %d%s%s%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c" l2-clear\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c" globally-masked\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c" locally-masked\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"\016xen:events: Using 2-level ABI\0A\00", align 1
@evtchn_ops_2l = internal constant %struct.evtchn_ops { i32 ()* @evtchn_2l_max_channels, i32 ()* @evtchn_2l_max_channels, i32 (i32)* null, void (i32, i32, i32)* @evtchn_2l_bind_to_cpu, void (i32)* @evtchn_2l_clear_pending, void (i32)* @evtchn_2l_set_pending, i1 (i32)* @evtchn_2l_is_pending, i1 (i32)* @evtchn_2l_test_and_set_mask, void (i32)* @evtchn_2l_mask, void (i32)* @evtchn_2l_unmask, void (i32, %struct.evtchn_loop_ctrl*)* @evtchn_2l_handle_events, void ()* @evtchn_2l_resume, i32 (i32)* null, i32 (i32)* null }, align 8, !dbg !142
@evtchn_ops = external dso_local global %struct.evtchn_ops*, align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@__irq_regs = external dso_local global %struct.pt_regs*, section ".data", align 8
@.str.18 = private unnamed_addr constant [31 x i8] c"drivers/xen/events/events_2l.c\00", align 1
@xen_domain_type = external dso_local global i32, align 4
@current_word_idx = internal global i32 0, section ".data", align 4, !dbg !193
@current_bit_idx = internal global i32 0, section ".data", align 4, !dbg !195
@.str.19 = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @xen_debug_interrupt(i32 %irq, i8* %dev_id) #0 !dbg !123 {
entry:
  %lock.addr.i161 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i161, metadata !203, metadata !DIExpression()), !dbg !209
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !211, metadata !DIExpression()), !dbg !212
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !213, metadata !DIExpression()), !dbg !219
  %irq.addr = alloca i32, align 4
  %dev_id.addr = alloca i8*, align 8
  %sh = alloca %struct.shared_info*, align 8
  %cpu = alloca i32, align 4
  %cpu_evtchn = alloca i64*, align 8
  %tmp = alloca [64 x i64]*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca [64 x i64]*, align 8
  %i = alloca i32, align 4
  %flags = alloca i64, align 8
  %v = alloca %struct.vcpu_info*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp4 = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %pending = alloca i32, align 4
  %tmp26 = alloca %struct.vcpu_info**, align 8
  %__vpp_verify28 = alloca i8*, align 8
  %tmp30 = alloca %struct.vcpu_info**, align 8
  %tmp39 = alloca %struct.vcpu_info**, align 8
  %__vpp_verify41 = alloca i8*, align 8
  %tmp43 = alloca %struct.vcpu_info**, align 8
  %pending109 = alloca i64, align 8
  %word_idx = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !226, metadata !DIExpression()), !dbg !227
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata %struct.shared_info** %sh, metadata !230, metadata !DIExpression()), !dbg !256
  %0 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8, !dbg !257
  store %struct.shared_info* %0, %struct.shared_info** %sh, align 8, !dbg !256
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !258, metadata !DIExpression()), !dbg !259
  store i32 0, i32* %cpu, align 4, !dbg !259
  call void @llvm.dbg.declare(metadata i64** %cpu_evtchn, metadata !260, metadata !DIExpression()), !dbg !262
  %1 = load i32, i32* %cpu, align 4, !dbg !263
  br label %do.body, !dbg !265

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !267, metadata !DIExpression()), !dbg !271
  store i8* null, i8** %__vpp_verify, align 8, !dbg !271
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !271
  br label %do.end, !dbg !271

do.end:                                           ; preds = %do.body
  store [64 x i64]* @cpu_evtchn_mask, [64 x i64]** %tmp1, align 8, !dbg !271
  %3 = load [64 x i64]*, [64 x i64]** %tmp1, align 8, !dbg !265
  store [64 x i64]* %3, [64 x i64]** %tmp, align 8, !dbg !263
  %4 = load [64 x i64]*, [64 x i64]** %tmp, align 8, !dbg !263
  %arraydecay = getelementptr inbounds [64 x i64], [64 x i64]* %4, i64 0, i64 0, !dbg !272
  store i64* %arraydecay, i64** %cpu_evtchn, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata i32* %i, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata %struct.vcpu_info** %v, metadata !277, metadata !DIExpression()), !dbg !278
  br label %do.body2, !dbg !279

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !280

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !281, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !284, metadata !DIExpression()), !dbg !283
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !283
  %conv = zext i1 %cmp to i32, !dbg !283
  store i32 1, i32* %tmp4, align 4, !dbg !283
  %5 = load i32, i32* %tmp4, align 4, !dbg !283
  br label %do.body5, !dbg !285

do.body5:                                         ; preds = %do.body3
  br label %do.body6, !dbg !286

do.body6:                                         ; preds = %do.body5
  br label %do.body7, !dbg !287

do.body7:                                         ; preds = %do.body6
  call void @llvm.dbg.declare(metadata i64* %__dummy8, metadata !289, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata i64* %__dummy29, metadata !293, metadata !DIExpression()), !dbg !292
  %cmp10 = icmp eq i64* %__dummy8, %__dummy29, !dbg !292
  %conv11 = zext i1 %cmp10 to i32, !dbg !292
  store i32 1, i32* %tmp12, align 4, !dbg !292
  %6 = load i32, i32* %tmp12, align 4, !dbg !292
  %call = call i64 @arch_local_irq_save() #9, !dbg !294
  store i64 %call, i64* %flags, align 8, !dbg !294
  br label %do.end13, !dbg !294

do.end13:                                         ; preds = %do.body7
  br label %do.end14, !dbg !287

do.end14:                                         ; preds = %do.end13
  br label %do.body15, !dbg !286

do.body15:                                        ; preds = %do.end14
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !295, !srcloc !296
  br label %do.body16, !dbg !295

do.body16:                                        ; preds = %do.body15
  store %struct.spinlock* @xen_debug_interrupt.debug_lock, %struct.spinlock** %lock.addr.i, align 8
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !297
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !298
  %rlock.i = bitcast %union.anon* %8 to %struct.raw_spinlock*, !dbg !298
  br label %do.end18, !dbg !299

do.end18:                                         ; preds = %do.body16
  br label %do.end19, !dbg !295

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !286

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !285

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !280

do.end22:                                         ; preds = %do.end21
  %9 = load i32, i32* %cpu, align 4, !dbg !300
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9) #10, !dbg !301
  store i32 0, i32* %i, align 4, !dbg !302
  br label %for.cond, !dbg !302

for.cond:                                         ; preds = %for.inc, %do.end22
  %10 = load i32, i32* %i, align 4, !dbg !304
  %cmp24 = icmp slt i32 %10, 1, !dbg !304
  br i1 %cmp24, label %for.body, label %for.end, !dbg !302

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %pending, metadata !306, metadata !DIExpression()), !dbg !308
  %11 = load i32, i32* %i, align 4, !dbg !309
  br label %do.body27, !dbg !311

do.body27:                                        ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify28, metadata !313, metadata !DIExpression()), !dbg !315
  store i8* null, i8** %__vpp_verify28, align 8, !dbg !315
  %12 = load i8*, i8** %__vpp_verify28, align 8, !dbg !315
  br label %do.end29, !dbg !315

do.end29:                                         ; preds = %do.body27
  store %struct.vcpu_info** @xen_vcpu, %struct.vcpu_info*** %tmp30, align 8, !dbg !315
  %13 = load %struct.vcpu_info**, %struct.vcpu_info*** %tmp30, align 8, !dbg !311
  store %struct.vcpu_info** %13, %struct.vcpu_info*** %tmp26, align 8, !dbg !309
  %14 = load %struct.vcpu_info**, %struct.vcpu_info*** %tmp26, align 8, !dbg !309
  %15 = load %struct.vcpu_info*, %struct.vcpu_info** %14, align 8, !dbg !316
  store %struct.vcpu_info* %15, %struct.vcpu_info** %v, align 8, !dbg !317
  %call31 = call %struct.pt_regs* @get_irq_regs() #9, !dbg !318
  %tobool = icmp ne %struct.pt_regs* %call31, null, !dbg !318
  br i1 %tobool, label %land.lhs.true, label %cond.false, !dbg !319

land.lhs.true:                                    ; preds = %do.end29
  %16 = load i32, i32* %i, align 4, !dbg !320
  %17 = load i32, i32* %cpu, align 4, !dbg !321
  %cmp32 = icmp eq i32 %16, %17, !dbg !322
  br i1 %cmp32, label %cond.true, label %cond.false, !dbg !323

cond.true:                                        ; preds = %land.lhs.true
  %call34 = call %struct.pt_regs* @get_irq_regs() #9, !dbg !324
  %call35 = call i32 @xen_irqs_disabled(%struct.pt_regs* %call34) #9, !dbg !325
  br label %cond.end, !dbg !323

cond.false:                                       ; preds = %land.lhs.true, %do.end29
  %18 = load %struct.vcpu_info*, %struct.vcpu_info** %v, align 8, !dbg !326
  %evtchn_upcall_mask = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %18, i32 0, i32 1, !dbg !327
  %19 = load i8, i8* %evtchn_upcall_mask, align 1, !dbg !327
  %conv36 = zext i8 %19 to i32, !dbg !326
  br label %cond.end, !dbg !323

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call35, %cond.true ], [ %conv36, %cond.false ], !dbg !323
  store i32 %cond, i32* %pending, align 4, !dbg !328
  %20 = load i32, i32* %i, align 4, !dbg !329
  %21 = load i32, i32* %pending, align 4, !dbg !330
  %22 = load %struct.vcpu_info*, %struct.vcpu_info** %v, align 8, !dbg !331
  %evtchn_upcall_pending = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %22, i32 0, i32 0, !dbg !332
  %23 = load i8, i8* %evtchn_upcall_pending, align 8, !dbg !332
  %conv37 = zext i8 %23 to i32, !dbg !331
  %24 = load %struct.vcpu_info*, %struct.vcpu_info** %v, align 8, !dbg !333
  %evtchn_pending_sel = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %24, i32 0, i32 2, !dbg !334
  %25 = load i64, i64* %evtchn_pending_sel, align 8, !dbg !334
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21, i32 %conv37, i32 16, i64 %25) #10, !dbg !335
  br label %for.inc, !dbg !336

for.inc:                                          ; preds = %cond.end
  %26 = load i32, i32* %i, align 4, !dbg !304
  %inc = add i32 %26, 1, !dbg !304
  store i32 %inc, i32* %i, align 4, !dbg !304
  br label %for.cond, !dbg !304, !llvm.loop !337

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %cpu, align 4, !dbg !339
  br label %do.body40, !dbg !341

do.body40:                                        ; preds = %for.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify41, metadata !343, metadata !DIExpression()), !dbg !345
  store i8* null, i8** %__vpp_verify41, align 8, !dbg !345
  %28 = load i8*, i8** %__vpp_verify41, align 8, !dbg !345
  br label %do.end42, !dbg !345

do.end42:                                         ; preds = %do.body40
  store %struct.vcpu_info** @xen_vcpu, %struct.vcpu_info*** %tmp43, align 8, !dbg !345
  %29 = load %struct.vcpu_info**, %struct.vcpu_info*** %tmp43, align 8, !dbg !341
  store %struct.vcpu_info** %29, %struct.vcpu_info*** %tmp39, align 8, !dbg !339
  %30 = load %struct.vcpu_info**, %struct.vcpu_info*** %tmp39, align 8, !dbg !339
  %31 = load %struct.vcpu_info*, %struct.vcpu_info** %30, align 8, !dbg !346
  store %struct.vcpu_info* %31, %struct.vcpu_info** %v, align 8, !dbg !347
  %call44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !348
  store i32 63, i32* %i, align 4, !dbg !349
  br label %for.cond45, !dbg !351

for.cond45:                                       ; preds = %for.inc53, %do.end42
  %32 = load i32, i32* %i, align 4, !dbg !352
  %cmp46 = icmp sge i32 %32, 0, !dbg !354
  br i1 %cmp46, label %for.body48, label %for.end54, !dbg !355

for.body48:                                       ; preds = %for.cond45
  %33 = load %struct.shared_info*, %struct.shared_info** %sh, align 8, !dbg !356
  %evtchn_pending = getelementptr inbounds %struct.shared_info, %struct.shared_info* %33, i32 0, i32 1, !dbg !357
  %34 = load i32, i32* %i, align 4, !dbg !358
  %idxprom = sext i32 %34 to i64, !dbg !356
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %evtchn_pending, i64 0, i64 %idxprom, !dbg !356
  %35 = load i64, i64* %arrayidx, align 8, !dbg !356
  %36 = load i32, i32* %i, align 4, !dbg !359
  %rem = srem i32 %36, 8, !dbg !360
  %cmp49 = icmp eq i32 %rem, 0, !dbg !361
  %37 = zext i1 %cmp49 to i64, !dbg !359
  %cond51 = select i1 %cmp49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), !dbg !359
  %call52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 16, i64 %35, i8* %cond51) #10, !dbg !362
  br label %for.inc53, !dbg !362

for.inc53:                                        ; preds = %for.body48
  %38 = load i32, i32* %i, align 4, !dbg !363
  %dec = add i32 %38, -1, !dbg !363
  store i32 %dec, i32* %i, align 4, !dbg !363
  br label %for.cond45, !dbg !364, !llvm.loop !365

for.end54:                                        ; preds = %for.cond45
  %call55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !367
  store i32 63, i32* %i, align 4, !dbg !368
  br label %for.cond56, !dbg !370

for.cond56:                                       ; preds = %for.inc67, %for.end54
  %39 = load i32, i32* %i, align 4, !dbg !371
  %cmp57 = icmp sge i32 %39, 0, !dbg !373
  br i1 %cmp57, label %for.body59, label %for.end69, !dbg !374

for.body59:                                       ; preds = %for.cond56
  %40 = load %struct.shared_info*, %struct.shared_info** %sh, align 8, !dbg !375
  %evtchn_mask = getelementptr inbounds %struct.shared_info, %struct.shared_info* %40, i32 0, i32 2, !dbg !376
  %41 = load i32, i32* %i, align 4, !dbg !377
  %idxprom60 = sext i32 %41 to i64, !dbg !375
  %arrayidx61 = getelementptr [64 x i64], [64 x i64]* %evtchn_mask, i64 0, i64 %idxprom60, !dbg !375
  %42 = load i64, i64* %arrayidx61, align 8, !dbg !375
  %43 = load i32, i32* %i, align 4, !dbg !378
  %rem62 = srem i32 %43, 8, !dbg !379
  %cmp63 = icmp eq i32 %rem62, 0, !dbg !380
  %44 = zext i1 %cmp63 to i64, !dbg !378
  %cond65 = select i1 %cmp63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), !dbg !378
  %call66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 16, i64 %42, i8* %cond65) #10, !dbg !381
  br label %for.inc67, !dbg !381

for.inc67:                                        ; preds = %for.body59
  %45 = load i32, i32* %i, align 4, !dbg !382
  %dec68 = add i32 %45, -1, !dbg !382
  store i32 %dec68, i32* %i, align 4, !dbg !382
  br label %for.cond56, !dbg !383, !llvm.loop !384

for.end69:                                        ; preds = %for.cond56
  %call70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !386
  store i32 63, i32* %i, align 4, !dbg !387
  br label %for.cond71, !dbg !389

for.cond71:                                       ; preds = %for.inc86, %for.end69
  %46 = load i32, i32* %i, align 4, !dbg !390
  %cmp72 = icmp sge i32 %46, 0, !dbg !392
  br i1 %cmp72, label %for.body74, label %for.end88, !dbg !393

for.body74:                                       ; preds = %for.cond71
  %47 = load %struct.shared_info*, %struct.shared_info** %sh, align 8, !dbg !394
  %evtchn_pending75 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %47, i32 0, i32 1, !dbg !395
  %48 = load i32, i32* %i, align 4, !dbg !396
  %idxprom76 = sext i32 %48 to i64, !dbg !394
  %arrayidx77 = getelementptr [64 x i64], [64 x i64]* %evtchn_pending75, i64 0, i64 %idxprom76, !dbg !394
  %49 = load i64, i64* %arrayidx77, align 8, !dbg !394
  %50 = load %struct.shared_info*, %struct.shared_info** %sh, align 8, !dbg !397
  %evtchn_mask78 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %50, i32 0, i32 2, !dbg !398
  %51 = load i32, i32* %i, align 4, !dbg !399
  %idxprom79 = sext i32 %51 to i64, !dbg !397
  %arrayidx80 = getelementptr [64 x i64], [64 x i64]* %evtchn_mask78, i64 0, i64 %idxprom79, !dbg !397
  %52 = load i64, i64* %arrayidx80, align 8, !dbg !397
  %neg = xor i64 %52, -1, !dbg !400
  %and = and i64 %49, %neg, !dbg !401
  %53 = load i32, i32* %i, align 4, !dbg !402
  %rem81 = srem i32 %53, 8, !dbg !403
  %cmp82 = icmp eq i32 %rem81, 0, !dbg !404
  %54 = zext i1 %cmp82 to i64, !dbg !402
  %cond84 = select i1 %cmp82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), !dbg !402
  %call85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 16, i64 %and, i8* %cond84) #10, !dbg !405
  br label %for.inc86, !dbg !405

for.inc86:                                        ; preds = %for.body74
  %55 = load i32, i32* %i, align 4, !dbg !406
  %dec87 = add i32 %55, -1, !dbg !406
  store i32 %dec87, i32* %i, align 4, !dbg !406
  br label %for.cond71, !dbg !407, !llvm.loop !408

for.end88:                                        ; preds = %for.cond71
  %56 = load i32, i32* %cpu, align 4, !dbg !410
  %call89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %56) #10, !dbg !411
  store i32 63, i32* %i, align 4, !dbg !412
  br label %for.cond90, !dbg !414

for.cond90:                                       ; preds = %for.inc101, %for.end88
  %57 = load i32, i32* %i, align 4, !dbg !415
  %cmp91 = icmp sge i32 %57, 0, !dbg !417
  br i1 %cmp91, label %for.body93, label %for.end103, !dbg !418

for.body93:                                       ; preds = %for.cond90
  %58 = load i64*, i64** %cpu_evtchn, align 8, !dbg !419
  %59 = load i32, i32* %i, align 4, !dbg !420
  %idxprom94 = sext i32 %59 to i64, !dbg !419
  %arrayidx95 = getelementptr i64, i64* %58, i64 %idxprom94, !dbg !419
  %60 = load i64, i64* %arrayidx95, align 8, !dbg !419
  %61 = load i32, i32* %i, align 4, !dbg !421
  %rem96 = srem i32 %61, 8, !dbg !422
  %cmp97 = icmp eq i32 %rem96, 0, !dbg !423
  %62 = zext i1 %cmp97 to i64, !dbg !421
  %cond99 = select i1 %cmp97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), !dbg !421
  %call100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 16, i64 %60, i8* %cond99) #10, !dbg !424
  br label %for.inc101, !dbg !424

for.inc101:                                       ; preds = %for.body93
  %63 = load i32, i32* %i, align 4, !dbg !425
  %dec102 = add i32 %63, -1, !dbg !425
  store i32 %dec102, i32* %i, align 4, !dbg !425
  br label %for.cond90, !dbg !426, !llvm.loop !427

for.end103:                                       ; preds = %for.cond90
  %call104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !429
  store i32 63, i32* %i, align 4, !dbg !430
  br label %for.cond105, !dbg !432

for.cond105:                                      ; preds = %for.inc126, %for.end103
  %64 = load i32, i32* %i, align 4, !dbg !433
  %cmp106 = icmp sge i32 %64, 0, !dbg !435
  br i1 %cmp106, label %for.body108, label %for.end128, !dbg !436

for.body108:                                      ; preds = %for.cond105
  call void @llvm.dbg.declare(metadata i64* %pending109, metadata !437, metadata !DIExpression()), !dbg !439
  %65 = load %struct.shared_info*, %struct.shared_info** %sh, align 8, !dbg !440
  %evtchn_pending110 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %65, i32 0, i32 1, !dbg !441
  %66 = load i32, i32* %i, align 4, !dbg !442
  %idxprom111 = sext i32 %66 to i64, !dbg !440
  %arrayidx112 = getelementptr [64 x i64], [64 x i64]* %evtchn_pending110, i64 0, i64 %idxprom111, !dbg !440
  %67 = load i64, i64* %arrayidx112, align 8, !dbg !440
  %68 = load %struct.shared_info*, %struct.shared_info** %sh, align 8, !dbg !443
  %evtchn_mask113 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %68, i32 0, i32 2, !dbg !444
  %69 = load i32, i32* %i, align 4, !dbg !445
  %idxprom114 = sext i32 %69 to i64, !dbg !443
  %arrayidx115 = getelementptr [64 x i64], [64 x i64]* %evtchn_mask113, i64 0, i64 %idxprom114, !dbg !443
  %70 = load i64, i64* %arrayidx115, align 8, !dbg !443
  %neg116 = xor i64 %70, -1, !dbg !446
  %and117 = and i64 %67, %neg116, !dbg !447
  %71 = load i64*, i64** %cpu_evtchn, align 8, !dbg !448
  %72 = load i32, i32* %i, align 4, !dbg !449
  %idxprom118 = sext i32 %72 to i64, !dbg !448
  %arrayidx119 = getelementptr i64, i64* %71, i64 %idxprom118, !dbg !448
  %73 = load i64, i64* %arrayidx119, align 8, !dbg !448
  %and120 = and i64 %and117, %73, !dbg !450
  store i64 %and120, i64* %pending109, align 8, !dbg !439
  %74 = load i64, i64* %pending109, align 8, !dbg !451
  %75 = load i32, i32* %i, align 4, !dbg !452
  %rem121 = srem i32 %75, 8, !dbg !453
  %cmp122 = icmp eq i32 %rem121, 0, !dbg !454
  %76 = zext i1 %cmp122 to i64, !dbg !452
  %cond124 = select i1 %cmp122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), !dbg !452
  %call125 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 16, i64 %74, i8* %cond124) #10, !dbg !455
  br label %for.inc126, !dbg !456

for.inc126:                                       ; preds = %for.body108
  %77 = load i32, i32* %i, align 4, !dbg !457
  %dec127 = add i32 %77, -1, !dbg !457
  store i32 %dec127, i32* %i, align 4, !dbg !457
  br label %for.cond105, !dbg !458, !llvm.loop !459

for.end128:                                       ; preds = %for.cond105
  %call129 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !461
  store i32 0, i32* %i, align 4, !dbg !462
  br label %for.cond130, !dbg !464

for.cond130:                                      ; preds = %for.inc158, %for.end128
  %78 = load i32, i32* %i, align 4, !dbg !465
  %conv131 = sext i32 %78 to i64, !dbg !465
  %cmp132 = icmp ult i64 %conv131, 4096, !dbg !467
  br i1 %cmp132, label %for.body134, label %for.end160, !dbg !468

for.body134:                                      ; preds = %for.cond130
  %79 = load i32, i32* %i, align 4, !dbg !469
  %conv135 = sext i32 %79 to i64, !dbg !469
  %80 = load %struct.shared_info*, %struct.shared_info** %sh, align 8, !dbg !469
  %evtchn_pending136 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %80, i32 0, i32 1, !dbg !469
  %arraydecay137 = getelementptr inbounds [64 x i64], [64 x i64]* %evtchn_pending136, i64 0, i64 0, !dbg !469
  %call138 = call zeroext i1 @test_bit(i64 %conv135, i64* %arraydecay137) #9, !dbg !469
  br i1 %call138, label %if.then, label %if.end, !dbg !472

if.then:                                          ; preds = %for.body134
  call void @llvm.dbg.declare(metadata i32* %word_idx, metadata !473, metadata !DIExpression()), !dbg !475
  %81 = load i32, i32* %i, align 4, !dbg !476
  %conv139 = sext i32 %81 to i64, !dbg !476
  %div = udiv i64 %conv139, 64, !dbg !477
  %conv140 = trunc i64 %div to i32, !dbg !476
  store i32 %conv140, i32* %word_idx, align 4, !dbg !475
  %82 = load i32, i32* %i, align 4, !dbg !478
  %call141 = call i32 @cpu_from_evtchn(i32 %82) #9, !dbg !479
  %83 = load i32, i32* %i, align 4, !dbg !480
  %84 = load i32, i32* %i, align 4, !dbg !481
  %call142 = call i32 @get_evtchn_to_irq(i32 %84) #9, !dbg !482
  %85 = load i32, i32* %word_idx, align 4, !dbg !483
  %conv143 = sext i32 %85 to i64, !dbg !483
  %86 = load %struct.vcpu_info*, %struct.vcpu_info** %v, align 8, !dbg !483
  %evtchn_pending_sel144 = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %86, i32 0, i32 2, !dbg !483
  %call145 = call zeroext i1 @test_bit(i64 %conv143, i64* %evtchn_pending_sel144) #9, !dbg !483
  %87 = zext i1 %call145 to i64, !dbg !483
  %cond147 = select i1 %call145, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), !dbg !483
  %88 = load i32, i32* %i, align 4, !dbg !484
  %conv148 = sext i32 %88 to i64, !dbg !484
  %89 = load %struct.shared_info*, %struct.shared_info** %sh, align 8, !dbg !484
  %evtchn_mask149 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %89, i32 0, i32 2, !dbg !484
  %arraydecay150 = getelementptr inbounds [64 x i64], [64 x i64]* %evtchn_mask149, i64 0, i64 0, !dbg !484
  %call151 = call zeroext i1 @test_bit(i64 %conv148, i64* %arraydecay150) #9, !dbg !484
  %lnot = xor i1 %call151, true, !dbg !485
  %90 = zext i1 %lnot to i64, !dbg !485
  %cond152 = select i1 %lnot, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), !dbg !485
  %91 = load i32, i32* %i, align 4, !dbg !486
  %conv153 = sext i32 %91 to i64, !dbg !486
  %92 = load i64*, i64** %cpu_evtchn, align 8, !dbg !486
  %call154 = call zeroext i1 @test_bit(i64 %conv153, i64* %92) #9, !dbg !486
  %93 = zext i1 %call154 to i64, !dbg !486
  %cond156 = select i1 %call154, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), !dbg !486
  %call157 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %call141, i32 %83, i32 %call142, i8* %cond147, i8* %cond152, i8* %cond156) #10, !dbg !487
  br label %if.end, !dbg !488

if.end:                                           ; preds = %if.then, %for.body134
  br label %for.inc158, !dbg !489

for.inc158:                                       ; preds = %if.end
  %94 = load i32, i32* %i, align 4, !dbg !490
  %inc159 = add i32 %94, 1, !dbg !490
  store i32 %inc159, i32* %i, align 4, !dbg !490
  br label %for.cond130, !dbg !491, !llvm.loop !492

for.end160:                                       ; preds = %for.cond130
  %95 = load i64, i64* %flags, align 8, !dbg !494
  store %struct.spinlock* @xen_debug_interrupt.debug_lock, %struct.spinlock** %lock.addr.i161, align 8
  store i64 %95, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !127, metadata !495, metadata !DIExpression()) #6, !dbg !498
  call void @llvm.dbg.declare(metadata !127, metadata !499, metadata !DIExpression()) #6, !dbg !498
  store i32 1, i32* %tmp.i, align 4, !dbg !498
  %96 = load i32, i32* %tmp.i, align 4, !dbg !498
  call void @llvm.dbg.declare(metadata !127, metadata !500, metadata !DIExpression()) #6, !dbg !505
  call void @llvm.dbg.declare(metadata !127, metadata !506, metadata !DIExpression()) #6, !dbg !505
  store i32 1, i32* %tmp8.i, align 4, !dbg !505
  %97 = load i32, i32* %tmp8.i, align 4, !dbg !505
  %98 = load i64, i64* %flags.addr.i, align 8, !dbg !507
  call void @arch_local_irq_restore(i64 %98) #11, !dbg !507
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !508, !srcloc !510
  %99 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i161, align 8, !dbg !511
  %100 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %99, i32 0, i32 0, !dbg !511
  %rlock.i162 = bitcast %union.anon* %100 to %struct.raw_spinlock*, !dbg !511
  ret i32 1, !dbg !513
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !514 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !518, metadata !DIExpression()), !dbg !519
  %call = call i64 @arch_local_save_flags() #9, !dbg !520
  store i64 %call, i64* %f, align 8, !dbg !521
  call void @arch_local_irq_disable() #9, !dbg !522
  %0 = load i64, i64* %f, align 8, !dbg !523
  ret i64 %0, !dbg !524
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pt_regs* @get_irq_regs() #0 !dbg !525 {
entry:
  %tmp = alloca %struct.pt_regs*, align 8
  %pscr_ret__ = alloca %struct.pt_regs*, align 8
  %__vpp_verify = alloca i8*, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca %struct.pt_regs*, align 8
  %tmp2 = alloca %struct.pt_regs*, align 8
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !529
  call void @llvm.dbg.declare(metadata %struct.pt_regs** %pscr_ret__, metadata !531, metadata !DIExpression()), !dbg !533
  br label %do.body, !dbg !533

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !534, metadata !DIExpression()), !dbg !536
  store i8* null, i8** %__vpp_verify, align 8, !dbg !536
  %0 = load i8*, i8** %__vpp_verify, align 8, !dbg !536
  br label %do.end, !dbg !536

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %pfo_val__, metadata !537, metadata !DIExpression()), !dbg !539
  %1 = call i64 asm "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(%struct.pt_regs** @__irq_regs) #5, !dbg !539, !srcloc !540
  store i64 %1, i64* %pfo_val__, align 8, !dbg !539
  %2 = load i64, i64* %pfo_val__, align 8, !dbg !539
  %3 = inttoptr i64 %2 to %struct.pt_regs*, !dbg !539
  store %struct.pt_regs* %3, %struct.pt_regs** %tmp1, align 8, !dbg !539
  %4 = load %struct.pt_regs*, %struct.pt_regs** %tmp1, align 8, !dbg !539
  store %struct.pt_regs* %4, %struct.pt_regs** %pscr_ret__, align 8, !dbg !533
  %5 = load %struct.pt_regs*, %struct.pt_regs** %pscr_ret__, align 8, !dbg !533
  store %struct.pt_regs* %5, %struct.pt_regs** %tmp2, align 8, !dbg !533
  %6 = load %struct.pt_regs*, %struct.pt_regs** %tmp2, align 8, !dbg !533
  store %struct.pt_regs* %6, %struct.pt_regs** %tmp, align 8, !dbg !529
  %7 = load %struct.pt_regs*, %struct.pt_regs** %tmp, align 8, !dbg !529
  ret %struct.pt_regs* %7, !dbg !541
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_irqs_disabled(%struct.pt_regs* %regs) #0 !dbg !542 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !546, metadata !DIExpression()), !dbg !551
  %regs.addr = alloca %struct.pt_regs*, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store %struct.pt_regs* %regs, %struct.pt_regs** %regs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pt_regs** %regs.addr, metadata !554, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !556, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !559, metadata !DIExpression()), !dbg !558
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !558
  %conv = zext i1 %cmp to i32, !dbg !558
  store i32 1, i32* %tmp, align 4, !dbg !558
  %0 = load i32, i32* %tmp, align 4, !dbg !558
  %1 = load %struct.pt_regs*, %struct.pt_regs** %regs.addr, align 8, !dbg !560
  %flags = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %1, i32 0, i32 18, !dbg !560
  %2 = load i64, i64* %flags, align 8, !dbg !560
  store i64 %2, i64* %flags.addr.i, align 8
  %3 = load i64, i64* %flags.addr.i, align 8, !dbg !561
  %and.i = and i64 %3, 512, !dbg !562
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !563
  %lnot.i = xor i1 %tobool.i, true, !dbg !563
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !563
  store i32 %lnot.ext.i, i32* %tmp1, align 4, !dbg !560
  %4 = load i32, i32* %tmp1, align 4, !dbg !560
  ret i32 %4, !dbg !564
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !565 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !572, metadata !DIExpression()), !dbg !575
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !577, metadata !DIExpression()), !dbg !578
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !579, metadata !DIExpression()), !dbg !580
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !581, metadata !DIExpression()), !dbg !583
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !585, metadata !DIExpression()), !dbg !586
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !587, metadata !DIExpression()), !dbg !599
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !601, metadata !DIExpression()), !dbg !602
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !603, metadata !DIExpression()), !dbg !604
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !605, metadata !DIExpression()), !dbg !606
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !607
  %1 = load i64, i64* %nr.addr, align 8, !dbg !608
  %div = sdiv i64 %1, 64, !dbg !608
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !609
  %2 = bitcast i64* %add.ptr to i8*, !dbg !607
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !610
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !611
  %conv.i = trunc i64 %4 to i32, !dbg !611
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #11, !dbg !612
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !613
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !613
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !613
  %7 = load i64, i64* %nr.addr, align 8, !dbg !614
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !614
  br i1 %8, label %cond.true, label %cond.false, !dbg !614

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !614
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !614
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !615
  %and.i = and i64 %11, 63, !dbg !616
  %shl.i = shl i64 1, %and.i, !dbg !617
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !618
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !619
  %shr.i = ashr i64 %13, 6, !dbg !620
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !618
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !618
  %and1.i = and i64 %shl.i, %14, !dbg !621
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !622
  %conv = zext i1 %cmp.i to i32, !dbg !614
  br label %cond.end, !dbg !614

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !614
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !614
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !623
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !624
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #6, !dbg !625, !srcloc !626
  store i8 %19, i8* %oldbit.i, align 1, !dbg !625
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !627
  %tobool.i = trunc i8 %20 to i1, !dbg !627
  %conv2 = zext i1 %tobool.i to i32, !dbg !614
  br label %cond.end, !dbg !614

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !614
  %tobool = icmp ne i32 %cond, 0, !dbg !614
  ret i1 %tobool, !dbg !628
}

; Function Attrs: noredzone
declare dso_local i32 @cpu_from_evtchn(i32) #3

; Function Attrs: noredzone
declare dso_local i32 @get_evtchn_to_irq(i32) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @xen_evtchn_2l_init() #4 section ".init.text" !dbg !629 {
entry:
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !630
  store %struct.evtchn_ops* @evtchn_ops_2l, %struct.evtchn_ops** @evtchn_ops, align 8, !dbg !631
  ret void, !dbg !632
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !633 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !634, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !637, metadata !DIExpression()), !dbg !636
  %0 = load i64, i64* %__edi, align 8, !dbg !636
  store i64 %0, i64* %__edi, align 8, !dbg !636
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !638, metadata !DIExpression()), !dbg !636
  %1 = load i64, i64* %__esi, align 8, !dbg !636
  store i64 %1, i64* %__esi, align 8, !dbg !636
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !639, metadata !DIExpression()), !dbg !636
  %2 = load i64, i64* %__edx, align 8, !dbg !636
  store i64 %2, i64* %__edx, align 8, !dbg !636
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !640, metadata !DIExpression()), !dbg !636
  %3 = load i64, i64* %__ecx, align 8, !dbg !636
  store i64 %3, i64* %__ecx, align 8, !dbg !636
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !641, metadata !DIExpression()), !dbg !636
  %4 = load i64, i64* %__eax, align 8, !dbg !636
  store i64 %4, i64* %__eax, align 8, !dbg !636
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !636
  %6 = call i64 @llvm.read_register.i64(metadata !197), !dbg !642
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !642, !srcloc !645
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !642
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !642
  store i64 %asmresult, i64* %__eax, align 8, !dbg !642
  call void @llvm.write_register.i64(metadata !197, i64 %asmresult1), !dbg !642
  %8 = load i64, i64* %__eax, align 8, !dbg !642
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !646, metadata !DIExpression()), !dbg !648
  store i64 -1, i64* %__mask, align 8, !dbg !648
  %9 = load i64, i64* %__mask, align 8, !dbg !648
  store i64 %9, i64* %tmp, align 8, !dbg !648
  %10 = load i64, i64* %tmp, align 8, !dbg !648
  %and = and i64 %8, %10, !dbg !642
  store i64 %and, i64* %__ret, align 8, !dbg !642
  %11 = load i64, i64* %__ret, align 8, !dbg !636
  store i64 %11, i64* %tmp2, align 8, !dbg !649
  %12 = load i64, i64* %tmp2, align 8, !dbg !636
  ret i64 %12, !dbg !650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !651 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !652, metadata !DIExpression()), !dbg !654
  %0 = load i64, i64* %__edi, align 8, !dbg !654
  store i64 %0, i64* %__edi, align 8, !dbg !654
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !655, metadata !DIExpression()), !dbg !654
  %1 = load i64, i64* %__esi, align 8, !dbg !654
  store i64 %1, i64* %__esi, align 8, !dbg !654
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !656, metadata !DIExpression()), !dbg !654
  %2 = load i64, i64* %__edx, align 8, !dbg !654
  store i64 %2, i64* %__edx, align 8, !dbg !654
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !657, metadata !DIExpression()), !dbg !654
  %3 = load i64, i64* %__ecx, align 8, !dbg !654
  store i64 %3, i64* %__ecx, align 8, !dbg !654
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !658, metadata !DIExpression()), !dbg !654
  %4 = load i64, i64* %__eax, align 8, !dbg !654
  store i64 %4, i64* %__eax, align 8, !dbg !654
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !654
  %6 = call i64 @llvm.read_register.i64(metadata !197), !dbg !654
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !654, !srcloc !659
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !654
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !654
  store i64 %asmresult, i64* %__eax, align 8, !dbg !654
  call void @llvm.write_register.i64(metadata !197, i64 %asmresult1), !dbg !654
  ret void, !dbg !660
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__this_cpu_preempt_check(i8* %op) #0 !dbg !661 {
entry:
  %op.addr = alloca i8*, align 8
  store i8* %op, i8** %op.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %op.addr, metadata !667, metadata !DIExpression()), !dbg !668
  ret void, !dbg !669
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !670 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !674, metadata !DIExpression()), !dbg !675
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !676, metadata !DIExpression()), !dbg !677
  ret i1 true, !dbg !678
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !679 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !683, metadata !DIExpression()), !dbg !684
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !685, metadata !DIExpression()), !dbg !686
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !687, metadata !DIExpression()), !dbg !688
  ret void, !dbg !689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !690 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !695, metadata !DIExpression()), !dbg !697
  %0 = load i64, i64* %__edi, align 8, !dbg !697
  store i64 %0, i64* %__edi, align 8, !dbg !697
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !698, metadata !DIExpression()), !dbg !697
  %1 = load i64, i64* %__esi, align 8, !dbg !697
  store i64 %1, i64* %__esi, align 8, !dbg !697
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !699, metadata !DIExpression()), !dbg !697
  %2 = load i64, i64* %__edx, align 8, !dbg !697
  store i64 %2, i64* %__edx, align 8, !dbg !697
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !700, metadata !DIExpression()), !dbg !697
  %3 = load i64, i64* %__ecx, align 8, !dbg !697
  store i64 %3, i64* %__ecx, align 8, !dbg !697
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !701, metadata !DIExpression()), !dbg !697
  %4 = load i64, i64* %__eax, align 8, !dbg !697
  store i64 %4, i64* %__eax, align 8, !dbg !697
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !697
  %6 = call i64 @llvm.read_register.i64(metadata !197), !dbg !697
  %7 = load i64, i64* %f.addr, align 8, !dbg !697
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !697, !srcloc !702
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !697
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !697
  store i64 %asmresult, i64* %__eax, align 8, !dbg !697
  call void @llvm.write_register.i64(metadata !197, i64 %asmresult1), !dbg !697
  ret void, !dbg !703
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @evtchn_2l_max_channels() #0 !dbg !704 {
entry:
  ret i32 4096, !dbg !705
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_2l_bind_to_cpu(i32 %evtchn, i32 %cpu, i32 %old_cpu) #0 !dbg !706 {
entry:
  %evtchn.addr = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %old_cpu.addr = alloca i32, align 4
  %tmp = alloca [64 x i64]*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca [64 x i64]*, align 8
  %tmp3 = alloca [64 x i64]*, align 8
  %__vpp_verify5 = alloca i8*, align 8
  %tmp7 = alloca [64 x i64]*, align 8
  store i32 %evtchn, i32* %evtchn.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %evtchn.addr, metadata !707, metadata !DIExpression()), !dbg !708
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !709, metadata !DIExpression()), !dbg !710
  store i32 %old_cpu, i32* %old_cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %old_cpu.addr, metadata !711, metadata !DIExpression()), !dbg !712
  %0 = load i32, i32* %evtchn.addr, align 4, !dbg !713
  %conv = zext i32 %0 to i64, !dbg !713
  %1 = load i32, i32* %old_cpu.addr, align 4, !dbg !714
  br label %do.body, !dbg !716

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !718, metadata !DIExpression()), !dbg !720
  store i8* null, i8** %__vpp_verify, align 8, !dbg !720
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !720
  br label %do.end, !dbg !720

do.end:                                           ; preds = %do.body
  store [64 x i64]* @cpu_evtchn_mask, [64 x i64]** %tmp1, align 8, !dbg !720
  %3 = load [64 x i64]*, [64 x i64]** %tmp1, align 8, !dbg !716
  store [64 x i64]* %3, [64 x i64]** %tmp, align 8, !dbg !714
  %4 = load [64 x i64]*, [64 x i64]** %tmp, align 8, !dbg !714
  %arraydecay = getelementptr inbounds [64 x i64], [64 x i64]* %4, i64 0, i64 0, !dbg !721
  call void @clear_bit(i64 %conv, i64* %arraydecay) #9, !dbg !722
  %5 = load i32, i32* %evtchn.addr, align 4, !dbg !723
  %conv2 = zext i32 %5 to i64, !dbg !723
  %6 = load i32, i32* %cpu.addr, align 4, !dbg !724
  br label %do.body4, !dbg !726

do.body4:                                         ; preds = %do.end
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify5, metadata !728, metadata !DIExpression()), !dbg !730
  store i8* null, i8** %__vpp_verify5, align 8, !dbg !730
  %7 = load i8*, i8** %__vpp_verify5, align 8, !dbg !730
  br label %do.end6, !dbg !730

do.end6:                                          ; preds = %do.body4
  store [64 x i64]* @cpu_evtchn_mask, [64 x i64]** %tmp7, align 8, !dbg !730
  %8 = load [64 x i64]*, [64 x i64]** %tmp7, align 8, !dbg !726
  store [64 x i64]* %8, [64 x i64]** %tmp3, align 8, !dbg !724
  %9 = load [64 x i64]*, [64 x i64]** %tmp3, align 8, !dbg !724
  %arraydecay8 = getelementptr inbounds [64 x i64], [64 x i64]* %9, i64 0, i64 0, !dbg !731
  call void @set_bit(i64 %conv2, i64* %arraydecay8) #9, !dbg !732
  ret void, !dbg !733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_2l_clear_pending(i32 %port) #0 !dbg !734 {
entry:
  %port.addr = alloca i32, align 4
  %s = alloca %struct.shared_info*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !735, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.declare(metadata %struct.shared_info** %s, metadata !737, metadata !DIExpression()), !dbg !738
  %0 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8, !dbg !739
  store %struct.shared_info* %0, %struct.shared_info** %s, align 8, !dbg !738
  %1 = load i32, i32* %port.addr, align 4, !dbg !740
  %conv = zext i32 %1 to i64, !dbg !740
  %2 = load %struct.shared_info*, %struct.shared_info** %s, align 8, !dbg !741
  %evtchn_pending = getelementptr inbounds %struct.shared_info, %struct.shared_info* %2, i32 0, i32 1, !dbg !741
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %evtchn_pending, i64 0, i64 0, !dbg !741
  call void @sync_clear_bit(i64 %conv, i64* %arrayidx) #9, !dbg !742
  ret void, !dbg !743
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_2l_set_pending(i32 %port) #0 !dbg !744 {
entry:
  %port.addr = alloca i32, align 4
  %s = alloca %struct.shared_info*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !745, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.declare(metadata %struct.shared_info** %s, metadata !747, metadata !DIExpression()), !dbg !748
  %0 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8, !dbg !749
  store %struct.shared_info* %0, %struct.shared_info** %s, align 8, !dbg !748
  %1 = load i32, i32* %port.addr, align 4, !dbg !750
  %conv = zext i32 %1 to i64, !dbg !750
  %2 = load %struct.shared_info*, %struct.shared_info** %s, align 8, !dbg !751
  %evtchn_pending = getelementptr inbounds %struct.shared_info, %struct.shared_info* %2, i32 0, i32 1, !dbg !751
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %evtchn_pending, i64 0, i64 0, !dbg !751
  call void @sync_set_bit(i64 %conv, i64* %arrayidx) #9, !dbg !752
  ret void, !dbg !753
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @evtchn_2l_is_pending(i32 %port) #0 !dbg !754 {
entry:
  %port.addr = alloca i32, align 4
  %s = alloca %struct.shared_info*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata %struct.shared_info** %s, metadata !757, metadata !DIExpression()), !dbg !758
  %0 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8, !dbg !759
  store %struct.shared_info* %0, %struct.shared_info** %s, align 8, !dbg !758
  %1 = load i32, i32* %port.addr, align 4, !dbg !760
  %conv = zext i32 %1 to i64, !dbg !760
  %2 = load %struct.shared_info*, %struct.shared_info** %s, align 8, !dbg !760
  %evtchn_pending = getelementptr inbounds %struct.shared_info, %struct.shared_info* %2, i32 0, i32 1, !dbg !760
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %evtchn_pending, i64 0, i64 0, !dbg !760
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %arrayidx) #9, !dbg !760
  ret i1 %call, !dbg !761
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @evtchn_2l_test_and_set_mask(i32 %port) #0 !dbg !762 {
entry:
  %port.addr = alloca i32, align 4
  %s = alloca %struct.shared_info*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !763, metadata !DIExpression()), !dbg !764
  call void @llvm.dbg.declare(metadata %struct.shared_info** %s, metadata !765, metadata !DIExpression()), !dbg !766
  %0 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8, !dbg !767
  store %struct.shared_info* %0, %struct.shared_info** %s, align 8, !dbg !766
  %1 = load i32, i32* %port.addr, align 4, !dbg !768
  %conv = zext i32 %1 to i64, !dbg !768
  %2 = load %struct.shared_info*, %struct.shared_info** %s, align 8, !dbg !769
  %evtchn_mask = getelementptr inbounds %struct.shared_info, %struct.shared_info* %2, i32 0, i32 2, !dbg !769
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %evtchn_mask, i64 0, i64 0, !dbg !769
  %call = call zeroext i1 @sync_test_and_set_bit(i64 %conv, i64* %arrayidx) #9, !dbg !770
  ret i1 %call, !dbg !771
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_2l_mask(i32 %port) #0 !dbg !772 {
entry:
  %port.addr = alloca i32, align 4
  %s = alloca %struct.shared_info*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !773, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.declare(metadata %struct.shared_info** %s, metadata !775, metadata !DIExpression()), !dbg !776
  %0 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8, !dbg !777
  store %struct.shared_info* %0, %struct.shared_info** %s, align 8, !dbg !776
  %1 = load i32, i32* %port.addr, align 4, !dbg !778
  %conv = zext i32 %1 to i64, !dbg !778
  %2 = load %struct.shared_info*, %struct.shared_info** %s, align 8, !dbg !779
  %evtchn_mask = getelementptr inbounds %struct.shared_info, %struct.shared_info* %2, i32 0, i32 2, !dbg !779
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %evtchn_mask, i64 0, i64 0, !dbg !779
  call void @sync_set_bit(i64 %conv, i64* %arrayidx) #9, !dbg !780
  ret void, !dbg !781
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_2l_unmask(i32 %port) #0 !dbg !782 {
entry:
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !546, metadata !DIExpression()), !dbg !783
  %port.addr = alloca i32, align 4
  %s = alloca %struct.shared_info*, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %do_hypercall = alloca i32, align 4
  %evtchn_pending = alloca i32, align 4
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp2 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %unmask = alloca %struct.evtchn_unmask, align 4
  %vcpu_info = alloca %struct.vcpu_info*, align 8
  %tmp60 = alloca %struct.vcpu_info*, align 8
  %pscr_ret__ = alloca %struct.vcpu_info*, align 8
  %__vpp_verify = alloca i8*, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp63 = alloca %struct.vcpu_info*, align 8
  %tmp64 = alloca %struct.vcpu_info*, align 8
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !789, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.declare(metadata %struct.shared_info** %s, metadata !791, metadata !DIExpression()), !dbg !792
  %0 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8, !dbg !793
  store %struct.shared_info* %0, %struct.shared_info** %s, align 8, !dbg !792
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !794, metadata !DIExpression()), !dbg !795
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !796, !srcloc !798
  store i32 0, i32* %tmp, align 4, !dbg !796
  %1 = load i32, i32* %tmp, align 4, !dbg !796
  store i32 %1, i32* %cpu, align 4, !dbg !795
  call void @llvm.dbg.declare(metadata i32* %do_hypercall, metadata !799, metadata !DIExpression()), !dbg !800
  store i32 0, i32* %do_hypercall, align 4, !dbg !800
  call void @llvm.dbg.declare(metadata i32* %evtchn_pending, metadata !801, metadata !DIExpression()), !dbg !802
  store i32 0, i32* %evtchn_pending, align 4, !dbg !802
  br label %do.body, !dbg !803

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_flags, metadata !804, metadata !DIExpression()), !dbg !805
  br label %do.body1, !dbg !805

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !806, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !810, metadata !DIExpression()), !dbg !809
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !809
  %conv = zext i1 %cmp to i32, !dbg !809
  store i32 1, i32* %tmp2, align 4, !dbg !809
  %2 = load i32, i32* %tmp2, align 4, !dbg !809
  %call = call i64 @arch_local_save_flags() #9, !dbg !811
  store i64 %call, i64* %_flags, align 8, !dbg !811
  br label %do.end, !dbg !811

do.end:                                           ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !812, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !815, metadata !DIExpression()), !dbg !814
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !814
  %conv7 = zext i1 %cmp6 to i32, !dbg !814
  store i32 1, i32* %tmp8, align 4, !dbg !814
  %3 = load i32, i32* %tmp8, align 4, !dbg !814
  %4 = load i64, i64* %_flags, align 8, !dbg !816
  store i64 %4, i64* %flags.addr.i, align 8
  %5 = load i64, i64* %flags.addr.i, align 8, !dbg !817
  %and.i = and i64 %5, 512, !dbg !818
  %tobool.i = icmp ne i64 %and.i, 0, !dbg !819
  %lnot.i = xor i1 %tobool.i, true, !dbg !819
  %lnot.ext.i = zext i1 %lnot.i to i32, !dbg !819
  store i32 %lnot.ext.i, i32* %tmp9, align 4, !dbg !816
  %6 = load i32, i32* %tmp9, align 4, !dbg !816
  store i32 %6, i32* %tmp3, align 4, !dbg !811
  %7 = load i32, i32* %tmp3, align 4, !dbg !805
  %tobool = icmp ne i32 %7, 0, !dbg !820
  %lnot = xor i1 %tobool, true, !dbg !820
  %lnot11 = xor i1 %lnot, true, !dbg !820
  %lnot12 = xor i1 %lnot11, true, !dbg !820
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !820
  %conv13 = sext i32 %lnot.ext to i64, !dbg !820
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !820
  br i1 %tobool14, label %if.then, label %if.end, !dbg !821

if.then:                                          ; preds = %do.end
  br label %do.body15, !dbg !820

do.body15:                                        ; preds = %if.then
  br label %do.body16, !dbg !822

do.body16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !824

do.end17:                                         ; preds = %do.body16
  br label %do.body18, !dbg !822

do.body18:                                        ; preds = %do.end17
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 93, i32 0, i64 12) #6, !dbg !826, !srcloc !828
  br label %do.end19, !dbg !826

do.end19:                                         ; preds = %do.body18
  br label %do.body20, !dbg !822

do.body20:                                        ; preds = %do.end19
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 220) #6, !dbg !829, !srcloc !832
  unreachable, !dbg !833

do.end21:                                         ; No predecessors!
  br label %do.end22, !dbg !822

do.end22:                                         ; preds = %do.end21
  br label %if.end, !dbg !822

if.end:                                           ; preds = %do.end22, %do.end
  br label %do.end23, !dbg !821

do.end23:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !834, !srcloc !835
  %8 = load i32, i32* %cpu, align 4, !dbg !836
  %9 = load i32, i32* %port.addr, align 4, !dbg !836
  %call24 = call i32 @cpu_from_evtchn(i32 %9) #9, !dbg !836
  %cmp25 = icmp ne i32 %8, %call24, !dbg !836
  %lnot27 = xor i1 %cmp25, true, !dbg !836
  %lnot29 = xor i1 %lnot27, true, !dbg !836
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !836
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !836
  %tobool32 = icmp ne i64 %conv31, 0, !dbg !836
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !838

if.then33:                                        ; preds = %do.end23
  store i32 1, i32* %do_hypercall, align 4, !dbg !839
  br label %if.end54, !dbg !840

if.else:                                          ; preds = %do.end23
  %10 = load i32, i32* %port.addr, align 4, !dbg !841
  %conv34 = zext i32 %10 to i64, !dbg !841
  %11 = load %struct.shared_info*, %struct.shared_info** %s, align 8, !dbg !843
  %evtchn_mask = getelementptr inbounds %struct.shared_info, %struct.shared_info* %11, i32 0, i32 2, !dbg !843
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %evtchn_mask, i64 0, i64 0, !dbg !843
  call void @sync_clear_bit(i64 %conv34, i64* %arrayidx) #9, !dbg !844
  %12 = load i32, i32* %port.addr, align 4, !dbg !845
  %conv35 = zext i32 %12 to i64, !dbg !845
  %13 = load %struct.shared_info*, %struct.shared_info** %s, align 8, !dbg !845
  %evtchn_pending36 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %13, i32 0, i32 1, !dbg !845
  %arrayidx37 = getelementptr [64 x i64], [64 x i64]* %evtchn_pending36, i64 0, i64 0, !dbg !845
  %call38 = call zeroext i1 @test_bit(i64 %conv35, i64* %arrayidx37) #9, !dbg !845
  %conv39 = zext i1 %call38 to i32, !dbg !845
  store i32 %conv39, i32* %evtchn_pending, align 4, !dbg !846
  %14 = load i32, i32* %evtchn_pending, align 4, !dbg !847
  %tobool40 = icmp ne i32 %14, 0, !dbg !847
  br i1 %tobool40, label %land.rhs, label %land.end, !dbg !847

land.rhs:                                         ; preds = %if.else
  %15 = load i32, i32* @xen_domain_type, align 4, !dbg !847
  %cmp41 = icmp eq i32 %15, 2, !dbg !847
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %16 = phi i1 [ false, %if.else ], [ %cmp41, %land.rhs ], !dbg !849
  %lnot43 = xor i1 %16, true, !dbg !847
  %lnot45 = xor i1 %lnot43, true, !dbg !847
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !847
  %conv47 = sext i32 %lnot.ext46 to i64, !dbg !847
  %tobool48 = icmp ne i64 %conv47, 0, !dbg !847
  br i1 %tobool48, label %if.then49, label %if.end53, !dbg !850

if.then49:                                        ; preds = %land.end
  %17 = load i32, i32* %port.addr, align 4, !dbg !851
  %conv50 = zext i32 %17 to i64, !dbg !851
  %18 = load %struct.shared_info*, %struct.shared_info** %s, align 8, !dbg !853
  %evtchn_mask51 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %18, i32 0, i32 2, !dbg !853
  %arrayidx52 = getelementptr [64 x i64], [64 x i64]* %evtchn_mask51, i64 0, i64 0, !dbg !853
  call void @sync_set_bit(i64 %conv50, i64* %arrayidx52) #9, !dbg !854
  store i32 1, i32* %do_hypercall, align 4, !dbg !855
  br label %if.end53, !dbg !856

if.end53:                                         ; preds = %if.then49, %land.end
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then33
  %19 = load i32, i32* %do_hypercall, align 4, !dbg !857
  %tobool55 = icmp ne i32 %19, 0, !dbg !857
  br i1 %tobool55, label %if.then56, label %if.else59, !dbg !859

if.then56:                                        ; preds = %if.end54
  call void @llvm.dbg.declare(metadata %struct.evtchn_unmask* %unmask, metadata !860, metadata !DIExpression()), !dbg !865
  %port57 = getelementptr inbounds %struct.evtchn_unmask, %struct.evtchn_unmask* %unmask, i32 0, i32 0, !dbg !866
  %20 = load i32, i32* %port.addr, align 4, !dbg !867
  store i32 %20, i32* %port57, align 4, !dbg !866
  %21 = bitcast %struct.evtchn_unmask* %unmask to i8*, !dbg !868
  %call58 = call i32 @HYPERVISOR_event_channel_op(i32 9, i8* %21) #9, !dbg !869
  br label %if.end70, !dbg !870

if.else59:                                        ; preds = %if.end54
  call void @llvm.dbg.declare(metadata %struct.vcpu_info** %vcpu_info, metadata !871, metadata !DIExpression()), !dbg !873
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !874
  call void @llvm.dbg.declare(metadata %struct.vcpu_info** %pscr_ret__, metadata !876, metadata !DIExpression()), !dbg !878
  br label %do.body61, !dbg !878

do.body61:                                        ; preds = %if.else59
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !879, metadata !DIExpression()), !dbg !881
  store i8* null, i8** %__vpp_verify, align 8, !dbg !881
  %22 = load i8*, i8** %__vpp_verify, align 8, !dbg !881
  br label %do.end62, !dbg !881

do.end62:                                         ; preds = %do.body61
  call void @llvm.dbg.declare(metadata i64* %pfo_val__, metadata !882, metadata !DIExpression()), !dbg !884
  %23 = call i64 asm "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(%struct.vcpu_info** @xen_vcpu) #5, !dbg !884, !srcloc !885
  store i64 %23, i64* %pfo_val__, align 8, !dbg !884
  %24 = load i64, i64* %pfo_val__, align 8, !dbg !884
  %25 = inttoptr i64 %24 to %struct.vcpu_info*, !dbg !884
  store %struct.vcpu_info* %25, %struct.vcpu_info** %tmp63, align 8, !dbg !884
  %26 = load %struct.vcpu_info*, %struct.vcpu_info** %tmp63, align 8, !dbg !884
  store %struct.vcpu_info* %26, %struct.vcpu_info** %pscr_ret__, align 8, !dbg !878
  %27 = load %struct.vcpu_info*, %struct.vcpu_info** %pscr_ret__, align 8, !dbg !878
  store %struct.vcpu_info* %27, %struct.vcpu_info** %tmp64, align 8, !dbg !878
  %28 = load %struct.vcpu_info*, %struct.vcpu_info** %tmp64, align 8, !dbg !878
  store %struct.vcpu_info* %28, %struct.vcpu_info** %tmp60, align 8, !dbg !874
  %29 = load %struct.vcpu_info*, %struct.vcpu_info** %tmp60, align 8, !dbg !874
  store %struct.vcpu_info* %29, %struct.vcpu_info** %vcpu_info, align 8, !dbg !873
  %30 = load i32, i32* %evtchn_pending, align 4, !dbg !886
  %tobool65 = icmp ne i32 %30, 0, !dbg !886
  br i1 %tobool65, label %land.lhs.true, label %if.end69, !dbg !888

land.lhs.true:                                    ; preds = %do.end62
  %31 = load i32, i32* %port.addr, align 4, !dbg !889
  %conv66 = zext i32 %31 to i64, !dbg !889
  %div = udiv i64 %conv66, 64, !dbg !890
  %32 = load %struct.vcpu_info*, %struct.vcpu_info** %vcpu_info, align 8, !dbg !891
  %evtchn_pending_sel = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %32, i32 0, i32 2, !dbg !891
  %call67 = call zeroext i1 @sync_test_and_set_bit(i64 %div, i64* %evtchn_pending_sel) #9, !dbg !892
  br i1 %call67, label %if.end69, label %if.then68, !dbg !893

if.then68:                                        ; preds = %land.lhs.true
  %33 = load %struct.vcpu_info*, %struct.vcpu_info** %vcpu_info, align 8, !dbg !894
  %evtchn_upcall_pending = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %33, i32 0, i32 0, !dbg !895
  store i8 1, i8* %evtchn_upcall_pending, align 8, !dbg !896
  br label %if.end69, !dbg !894

if.end69:                                         ; preds = %if.then68, %land.lhs.true, %do.end62
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then56
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !897, !srcloc !898
  ret void, !dbg !899
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_2l_handle_events(i32 %cpu, %struct.evtchn_loop_ctrl* %ctrl) #0 !dbg !900 {
entry:
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !901, metadata !DIExpression()), !dbg !903
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !906, metadata !DIExpression()), !dbg !907
  %cpu.addr = alloca i32, align 4
  %ctrl.addr = alloca %struct.evtchn_loop_ctrl*, align 8
  %irq = alloca i32, align 4
  %pending_words = alloca i64, align 8
  %pending_bits = alloca i64, align 8
  %start_word_idx = alloca i32, align 4
  %start_bit_idx = alloca i32, align 4
  %word_idx = alloca i32, align 4
  %bit_idx = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.shared_info*, align 8
  %vcpu_info = alloca %struct.vcpu_info*, align 8
  %tmp = alloca %struct.vcpu_info*, align 8
  %pscr_ret__ = alloca %struct.vcpu_info*, align 8
  %__vpp_verify = alloca i8*, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca %struct.vcpu_info*, align 8
  %tmp2 = alloca %struct.vcpu_info*, align 8
  %evtchn = alloca i32, align 4
  %__ai_ptr = alloca i64*, align 8
  %tmp8 = alloca i64, align 8
  %__ret = alloca i64, align 8
  %tmp9 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %pscr_ret__11 = alloca i32, align 4
  %__vpp_verify13 = alloca i8*, align 8
  %pfo_val__15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %pscr_ret__20 = alloca i32, align 4
  %__vpp_verify22 = alloca i8*, align 8
  %pfo_val__24 = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %words = alloca i64, align 8
  %bits = alloca i64, align 8
  %port = alloca i32, align 4
  %__vpp_verify68 = alloca i8*, align 8
  %pto_val__ = alloca i32, align 4
  %__vpp_verify83 = alloca i8*, align 8
  %pto_val__86 = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !908, metadata !DIExpression()), !dbg !909
  store %struct.evtchn_loop_ctrl* %ctrl, %struct.evtchn_loop_ctrl** %ctrl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.evtchn_loop_ctrl** %ctrl.addr, metadata !910, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.declare(metadata i32* %irq, metadata !912, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.declare(metadata i64* %pending_words, metadata !914, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata i64* %pending_bits, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata i32* %start_word_idx, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata i32* %start_bit_idx, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata i32* %word_idx, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata i32* %bit_idx, metadata !924, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata i32* %i, metadata !926, metadata !DIExpression()), !dbg !927
  call void @llvm.dbg.declare(metadata %struct.shared_info** %s, metadata !928, metadata !DIExpression()), !dbg !929
  %0 = load %struct.shared_info*, %struct.shared_info** @HYPERVISOR_shared_info, align 8, !dbg !930
  store %struct.shared_info* %0, %struct.shared_info** %s, align 8, !dbg !929
  call void @llvm.dbg.declare(metadata %struct.vcpu_info** %vcpu_info, metadata !931, metadata !DIExpression()), !dbg !932
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !933
  call void @llvm.dbg.declare(metadata %struct.vcpu_info** %pscr_ret__, metadata !935, metadata !DIExpression()), !dbg !937
  br label %do.body, !dbg !937

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !938, metadata !DIExpression()), !dbg !940
  store i8* null, i8** %__vpp_verify, align 8, !dbg !940
  %1 = load i8*, i8** %__vpp_verify, align 8, !dbg !940
  br label %do.end, !dbg !940

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %pfo_val__, metadata !941, metadata !DIExpression()), !dbg !943
  %2 = call i64 asm "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(%struct.vcpu_info** @xen_vcpu) #5, !dbg !943, !srcloc !944
  store i64 %2, i64* %pfo_val__, align 8, !dbg !943
  %3 = load i64, i64* %pfo_val__, align 8, !dbg !943
  %4 = inttoptr i64 %3 to %struct.vcpu_info*, !dbg !943
  store %struct.vcpu_info* %4, %struct.vcpu_info** %tmp1, align 8, !dbg !943
  %5 = load %struct.vcpu_info*, %struct.vcpu_info** %tmp1, align 8, !dbg !943
  store %struct.vcpu_info* %5, %struct.vcpu_info** %pscr_ret__, align 8, !dbg !937
  %6 = load %struct.vcpu_info*, %struct.vcpu_info** %pscr_ret__, align 8, !dbg !937
  store %struct.vcpu_info* %6, %struct.vcpu_info** %tmp2, align 8, !dbg !937
  %7 = load %struct.vcpu_info*, %struct.vcpu_info** %tmp2, align 8, !dbg !937
  store %struct.vcpu_info* %7, %struct.vcpu_info** %tmp, align 8, !dbg !933
  %8 = load %struct.vcpu_info*, %struct.vcpu_info** %tmp, align 8, !dbg !933
  store %struct.vcpu_info* %8, %struct.vcpu_info** %vcpu_info, align 8, !dbg !932
  %9 = load i32, i32* %cpu.addr, align 4, !dbg !945
  %call = call i32 @irq_from_virq(i32 %9, i32 0) #9, !dbg !946
  store i32 %call, i32* %irq, align 4, !dbg !947
  %10 = load i32, i32* %irq, align 4, !dbg !948
  %cmp = icmp ne i32 %10, -1, !dbg !950
  br i1 %cmp, label %if.then, label %if.end7, !dbg !951

if.then:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i32* %evtchn, metadata !952, metadata !DIExpression()), !dbg !954
  %11 = load i32, i32* %irq, align 4, !dbg !955
  %call3 = call i32 @evtchn_from_irq(i32 %11) #9, !dbg !956
  store i32 %call3, i32* %evtchn, align 4, !dbg !954
  %12 = load i32, i32* %evtchn, align 4, !dbg !957
  %div = udiv i32 %12, 64, !dbg !958
  store i32 %div, i32* %word_idx, align 4, !dbg !959
  %13 = load i32, i32* %evtchn, align 4, !dbg !960
  %rem = urem i32 %13, 64, !dbg !961
  store i32 %rem, i32* %bit_idx, align 4, !dbg !962
  %14 = load i32, i32* %cpu.addr, align 4, !dbg !963
  %15 = load %struct.shared_info*, %struct.shared_info** %s, align 8, !dbg !965
  %16 = load i32, i32* %word_idx, align 4, !dbg !966
  %call4 = call i64 @active_evtchns(i32 %14, %struct.shared_info* %15, i32 %16) #9, !dbg !967
  %17 = load i32, i32* %bit_idx, align 4, !dbg !968
  %sh_prom = zext i32 %17 to i64, !dbg !969
  %shl = shl i64 1, %sh_prom, !dbg !969
  %and = and i64 %call4, %shl, !dbg !970
  %tobool = icmp ne i64 %and, 0, !dbg !970
  br i1 %tobool, label %if.then5, label %if.end, !dbg !971

if.then5:                                         ; preds = %if.then
  %18 = load i32, i32* %irq, align 4, !dbg !972
  %call6 = call i32 @generic_handle_irq(i32 %18) #9, !dbg !973
  br label %if.end, !dbg !973

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7, !dbg !974

if.end7:                                          ; preds = %if.end, %do.end
  call void @llvm.dbg.declare(metadata i64** %__ai_ptr, metadata !975, metadata !DIExpression()), !dbg !976
  %19 = load %struct.vcpu_info*, %struct.vcpu_info** %vcpu_info, align 8, !dbg !976
  %evtchn_pending_sel = getelementptr inbounds %struct.vcpu_info, %struct.vcpu_info* %19, i32 0, i32 2, !dbg !976
  store i64* %evtchn_pending_sel, i64** %__ai_ptr, align 8, !dbg !976
  %20 = load i64*, i64** %__ai_ptr, align 8, !dbg !976
  %21 = bitcast i64* %20 to i8*, !dbg !976
  store i8* %21, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %22 = load i8*, i8** %v.addr.i, align 8, !dbg !977
  %23 = load i64, i64* %size.addr.i, align 8, !dbg !978
  %conv.i = trunc i64 %23 to i32, !dbg !978
  %call.i = call zeroext i1 @kasan_check_write(i8* %22, i32 %conv.i) #11, !dbg !979
  %24 = load i8*, i8** %v.addr.i, align 8, !dbg !980
  %25 = load i64, i64* %size.addr.i, align 8, !dbg !980
  call void @kcsan_check_access(i8* %24, i64 %25, i32 5) #11, !dbg !980
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !981, metadata !DIExpression()), !dbg !983
  store i64 0, i64* %__ret, align 8, !dbg !983
  %26 = load i64, i64* %__ret, align 8, !dbg !983
  %27 = load i64*, i64** %__ai_ptr, align 8, !dbg !983
  %28 = call i64 asm sideeffect "xchgq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %27, i64 %26, i64* %27) #6, !dbg !983, !srcloc !984
  store i64 %28, i64* %__ret, align 8, !dbg !983
  %29 = load i64, i64* %__ret, align 8, !dbg !983
  store i64 %29, i64* %tmp9, align 8, !dbg !983
  %30 = load i64, i64* %tmp9, align 8, !dbg !983
  store i64 %30, i64* %tmp8, align 8, !dbg !976
  %31 = load i64, i64* %tmp8, align 8, !dbg !976
  store i64 %31, i64* %pending_words, align 8, !dbg !985
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !986
  call void @llvm.dbg.declare(metadata i32* %pscr_ret__11, metadata !988, metadata !DIExpression()), !dbg !990
  br label %do.body12, !dbg !990

do.body12:                                        ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify13, metadata !991, metadata !DIExpression()), !dbg !993
  store i8* null, i8** %__vpp_verify13, align 8, !dbg !993
  %32 = load i8*, i8** %__vpp_verify13, align 8, !dbg !993
  br label %do.end14, !dbg !993

do.end14:                                         ; preds = %do.body12
  call void @llvm.dbg.declare(metadata i32* %pfo_val__15, metadata !994, metadata !DIExpression()), !dbg !996
  %33 = call i32 asm "movl $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* @current_word_idx) #5, !dbg !996, !srcloc !997
  store i32 %33, i32* %pfo_val__15, align 4, !dbg !996
  %34 = load i32, i32* %pfo_val__15, align 4, !dbg !996
  %conv = zext i32 %34 to i64, !dbg !996
  %conv17 = trunc i64 %conv to i32, !dbg !996
  store i32 %conv17, i32* %tmp16, align 4, !dbg !996
  %35 = load i32, i32* %tmp16, align 4, !dbg !996
  store i32 %35, i32* %pscr_ret__11, align 4, !dbg !990
  %36 = load i32, i32* %pscr_ret__11, align 4, !dbg !990
  store i32 %36, i32* %tmp18, align 4, !dbg !990
  %37 = load i32, i32* %tmp18, align 4, !dbg !990
  store i32 %37, i32* %tmp10, align 4, !dbg !986
  %38 = load i32, i32* %tmp10, align 4, !dbg !986
  store i32 %38, i32* %start_word_idx, align 4, !dbg !998
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !999
  call void @llvm.dbg.declare(metadata i32* %pscr_ret__20, metadata !1001, metadata !DIExpression()), !dbg !1003
  br label %do.body21, !dbg !1003

do.body21:                                        ; preds = %do.end14
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify22, metadata !1004, metadata !DIExpression()), !dbg !1006
  store i8* null, i8** %__vpp_verify22, align 8, !dbg !1006
  %39 = load i8*, i8** %__vpp_verify22, align 8, !dbg !1006
  br label %do.end23, !dbg !1006

do.end23:                                         ; preds = %do.body21
  call void @llvm.dbg.declare(metadata i32* %pfo_val__24, metadata !1007, metadata !DIExpression()), !dbg !1009
  %40 = call i32 asm "movl $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i32* @current_bit_idx) #5, !dbg !1009, !srcloc !1010
  store i32 %40, i32* %pfo_val__24, align 4, !dbg !1009
  %41 = load i32, i32* %pfo_val__24, align 4, !dbg !1009
  %conv26 = zext i32 %41 to i64, !dbg !1009
  %conv27 = trunc i64 %conv26 to i32, !dbg !1009
  store i32 %conv27, i32* %tmp25, align 4, !dbg !1009
  %42 = load i32, i32* %tmp25, align 4, !dbg !1009
  store i32 %42, i32* %pscr_ret__20, align 4, !dbg !1003
  %43 = load i32, i32* %pscr_ret__20, align 4, !dbg !1003
  store i32 %43, i32* %tmp28, align 4, !dbg !1003
  %44 = load i32, i32* %tmp28, align 4, !dbg !1003
  store i32 %44, i32* %tmp19, align 4, !dbg !999
  %45 = load i32, i32* %tmp19, align 4, !dbg !999
  store i32 %45, i32* %start_bit_idx, align 4, !dbg !1011
  %46 = load i32, i32* %start_word_idx, align 4, !dbg !1012
  store i32 %46, i32* %word_idx, align 4, !dbg !1013
  store i32 0, i32* %i, align 4, !dbg !1014
  br label %for.cond, !dbg !1016

for.cond:                                         ; preds = %for.inc, %do.end23
  %47 = load i64, i64* %pending_words, align 8, !dbg !1017
  %cmp29 = icmp ne i64 %47, 0, !dbg !1019
  br i1 %cmp29, label %for.body, label %for.end, !dbg !1020

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %words, metadata !1021, metadata !DIExpression()), !dbg !1023
  %48 = load i64, i64* %pending_words, align 8, !dbg !1024
  %49 = load i32, i32* %word_idx, align 4, !dbg !1024
  %sh_prom31 = zext i32 %49 to i64, !dbg !1024
  %shl32 = shl i64 -1, %sh_prom31, !dbg !1024
  %and33 = and i64 %48, %shl32, !dbg !1024
  store i64 %and33, i64* %words, align 8, !dbg !1025
  %50 = load i64, i64* %words, align 8, !dbg !1026
  %cmp34 = icmp eq i64 %50, 0, !dbg !1028
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !1029

if.then36:                                        ; preds = %for.body
  store i32 0, i32* %word_idx, align 4, !dbg !1030
  store i32 0, i32* %bit_idx, align 4, !dbg !1032
  br label %for.inc, !dbg !1033

if.end37:                                         ; preds = %for.body
  %call38 = call i64 @find_first_bit(i64* %words, i64 64) #9, !dbg !1034
  %conv39 = trunc i64 %call38 to i32, !dbg !1034
  store i32 %conv39, i32* %word_idx, align 4, !dbg !1035
  %51 = load i32, i32* %cpu.addr, align 4, !dbg !1036
  %52 = load %struct.shared_info*, %struct.shared_info** %s, align 8, !dbg !1037
  %53 = load i32, i32* %word_idx, align 4, !dbg !1038
  %call40 = call i64 @active_evtchns(i32 %51, %struct.shared_info* %52, i32 %53) #9, !dbg !1039
  store i64 %call40, i64* %pending_bits, align 8, !dbg !1040
  store i32 0, i32* %bit_idx, align 4, !dbg !1041
  %54 = load i32, i32* %word_idx, align 4, !dbg !1042
  %55 = load i32, i32* %start_word_idx, align 4, !dbg !1044
  %cmp41 = icmp eq i32 %54, %55, !dbg !1045
  br i1 %cmp41, label %if.then43, label %if.end48, !dbg !1046

if.then43:                                        ; preds = %if.end37
  %56 = load i32, i32* %i, align 4, !dbg !1047
  %cmp44 = icmp eq i32 %56, 0, !dbg !1050
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !1051

if.then46:                                        ; preds = %if.then43
  %57 = load i32, i32* %start_bit_idx, align 4, !dbg !1052
  store i32 %57, i32* %bit_idx, align 4, !dbg !1053
  br label %if.end47, !dbg !1054

if.end47:                                         ; preds = %if.then46, %if.then43
  br label %if.end48, !dbg !1055

if.end48:                                         ; preds = %if.end47, %if.end37
  br label %do.body49, !dbg !1056

do.body49:                                        ; preds = %do.cond, %if.end48
  call void @llvm.dbg.declare(metadata i64* %bits, metadata !1057, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.declare(metadata i32* %port, metadata !1060, metadata !DIExpression()), !dbg !1061
  %58 = load i64, i64* %pending_bits, align 8, !dbg !1062
  %59 = load i32, i32* %bit_idx, align 4, !dbg !1062
  %sh_prom50 = zext i32 %59 to i64, !dbg !1062
  %shl51 = shl i64 -1, %sh_prom50, !dbg !1062
  %and52 = and i64 %58, %shl51, !dbg !1062
  store i64 %and52, i64* %bits, align 8, !dbg !1063
  %60 = load i64, i64* %bits, align 8, !dbg !1064
  %cmp53 = icmp eq i64 %60, 0, !dbg !1066
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !1067

if.then55:                                        ; preds = %do.body49
  br label %do.end94, !dbg !1068

if.end56:                                         ; preds = %do.body49
  %call57 = call i64 @find_first_bit(i64* %bits, i64 64) #9, !dbg !1069
  %conv58 = trunc i64 %call57 to i32, !dbg !1069
  store i32 %conv58, i32* %bit_idx, align 4, !dbg !1070
  %61 = load i32, i32* %word_idx, align 4, !dbg !1071
  %conv59 = sext i32 %61 to i64, !dbg !1071
  %mul = mul i64 %conv59, 64, !dbg !1072
  %62 = load i32, i32* %bit_idx, align 4, !dbg !1073
  %conv60 = sext i32 %62 to i64, !dbg !1073
  %add = add i64 %mul, %conv60, !dbg !1074
  %conv61 = trunc i64 %add to i32, !dbg !1075
  store i32 %conv61, i32* %port, align 4, !dbg !1076
  %63 = load i32, i32* %port, align 4, !dbg !1077
  %64 = load %struct.evtchn_loop_ctrl*, %struct.evtchn_loop_ctrl** %ctrl.addr, align 8, !dbg !1078
  call void @handle_irq_for_port(i32 %63, %struct.evtchn_loop_ctrl* %64) #9, !dbg !1079
  %65 = load i32, i32* %bit_idx, align 4, !dbg !1080
  %add62 = add i32 %65, 1, !dbg !1081
  %conv63 = sext i32 %add62 to i64, !dbg !1082
  %rem64 = urem i64 %conv63, 64, !dbg !1083
  %conv65 = trunc i64 %rem64 to i32, !dbg !1082
  store i32 %conv65, i32* %bit_idx, align 4, !dbg !1084
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !1085
  br label %do.body66, !dbg !1085

do.body66:                                        ; preds = %if.end56
  br label %do.body67, !dbg !1087

do.body67:                                        ; preds = %do.body66
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify68, metadata !1089, metadata !DIExpression()), !dbg !1091
  store i8* null, i8** %__vpp_verify68, align 8, !dbg !1091
  %66 = load i8*, i8** %__vpp_verify68, align 8, !dbg !1091
  br label %do.end69, !dbg !1091

do.end69:                                         ; preds = %do.body67
  br label %do.body70, !dbg !1087

do.body70:                                        ; preds = %do.end69
  call void @llvm.dbg.declare(metadata i32* %pto_val__, metadata !1092, metadata !DIExpression()), !dbg !1094
  %67 = load i32, i32* %bit_idx, align 4, !dbg !1094
  %conv71 = sext i32 %67 to i64, !dbg !1094
  %tobool72 = icmp ne i64 %conv71, 0, !dbg !1094
  br i1 %tobool72, label %cond.true, label %cond.false, !dbg !1094

cond.true:                                        ; preds = %do.body70
  %68 = load i32, i32* %word_idx, align 4, !dbg !1094
  %conv73 = sext i32 %68 to i64, !dbg !1094
  br label %cond.end, !dbg !1094

cond.false:                                       ; preds = %do.body70
  %69 = load i32, i32* %word_idx, align 4, !dbg !1094
  %add74 = add i32 %69, 1, !dbg !1094
  %conv75 = sext i32 %add74 to i64, !dbg !1094
  %rem76 = urem i64 %conv75, 64, !dbg !1094
  br label %cond.end, !dbg !1094

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv73, %cond.true ], [ %rem76, %cond.false ], !dbg !1094
  %and77 = and i64 %cond, 4294967295, !dbg !1094
  %conv78 = trunc i64 %and77 to i32, !dbg !1094
  store i32 %conv78, i32* %pto_val__, align 4, !dbg !1094
  %70 = load i32, i32* %pto_val__, align 4, !dbg !1094
  call void asm "movl $1, $0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(i32* @current_word_idx, i32 %70, i32* @current_word_idx) #6, !dbg !1094, !srcloc !1095
  br label %do.end79, !dbg !1094

do.end79:                                         ; preds = %cond.end
  br label %do.end80, !dbg !1087

do.end80:                                         ; preds = %do.end79
  call void @__this_cpu_preempt_check(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !1096
  br label %do.body81, !dbg !1096

do.body81:                                        ; preds = %do.end80
  br label %do.body82, !dbg !1098

do.body82:                                        ; preds = %do.body81
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify83, metadata !1100, metadata !DIExpression()), !dbg !1102
  store i8* null, i8** %__vpp_verify83, align 8, !dbg !1102
  %71 = load i8*, i8** %__vpp_verify83, align 8, !dbg !1102
  br label %do.end84, !dbg !1102

do.end84:                                         ; preds = %do.body82
  br label %do.body85, !dbg !1098

do.body85:                                        ; preds = %do.end84
  call void @llvm.dbg.declare(metadata i32* %pto_val__86, metadata !1103, metadata !DIExpression()), !dbg !1105
  %72 = load i32, i32* %bit_idx, align 4, !dbg !1105
  %conv87 = sext i32 %72 to i64, !dbg !1105
  %and88 = and i64 %conv87, 4294967295, !dbg !1105
  %conv89 = trunc i64 %and88 to i32, !dbg !1105
  store i32 %conv89, i32* %pto_val__86, align 4, !dbg !1105
  %73 = load i32, i32* %pto_val__86, align 4, !dbg !1105
  call void asm "movl $1, $0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(i32* @current_bit_idx, i32 %73, i32* @current_bit_idx) #6, !dbg !1105, !srcloc !1106
  br label %do.end90, !dbg !1105

do.end90:                                         ; preds = %do.body85
  br label %do.end91, !dbg !1098

do.end91:                                         ; preds = %do.end90
  br label %do.cond, !dbg !1107

do.cond:                                          ; preds = %do.end91
  %74 = load i32, i32* %bit_idx, align 4, !dbg !1108
  %cmp92 = icmp ne i32 %74, 0, !dbg !1109
  br i1 %cmp92, label %do.body49, label %do.end94, !dbg !1107, !llvm.loop !1110

do.end94:                                         ; preds = %do.cond, %if.then55
  %75 = load i32, i32* %word_idx, align 4, !dbg !1112
  %76 = load i32, i32* %start_word_idx, align 4, !dbg !1114
  %cmp95 = icmp ne i32 %75, %76, !dbg !1115
  br i1 %cmp95, label %if.then99, label %lor.lhs.false, !dbg !1116

lor.lhs.false:                                    ; preds = %do.end94
  %77 = load i32, i32* %i, align 4, !dbg !1117
  %cmp97 = icmp ne i32 %77, 0, !dbg !1118
  br i1 %cmp97, label %if.then99, label %if.end103, !dbg !1119

if.then99:                                        ; preds = %lor.lhs.false, %do.end94
  %78 = load i32, i32* %word_idx, align 4, !dbg !1120
  %sh_prom100 = zext i32 %78 to i64, !dbg !1121
  %shl101 = shl i64 1, %sh_prom100, !dbg !1121
  %neg = xor i64 %shl101, -1, !dbg !1122
  %79 = load i64, i64* %pending_words, align 8, !dbg !1123
  %and102 = and i64 %79, %neg, !dbg !1123
  store i64 %and102, i64* %pending_words, align 8, !dbg !1123
  br label %if.end103, !dbg !1124

if.end103:                                        ; preds = %if.then99, %lor.lhs.false
  %80 = load i32, i32* %word_idx, align 4, !dbg !1125
  %add104 = add i32 %80, 1, !dbg !1126
  %conv105 = sext i32 %add104 to i64, !dbg !1127
  %rem106 = urem i64 %conv105, 64, !dbg !1128
  %conv107 = trunc i64 %rem106 to i32, !dbg !1127
  store i32 %conv107, i32* %word_idx, align 4, !dbg !1129
  br label %for.inc, !dbg !1130

for.inc:                                          ; preds = %if.end103, %if.then36
  %81 = load i32, i32* %i, align 4, !dbg !1131
  %inc = add i32 %81, 1, !dbg !1131
  store i32 %inc, i32* %i, align 4, !dbg !1131
  br label %for.cond, !dbg !1132, !llvm.loop !1133

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @evtchn_2l_resume() #0 !dbg !1136 {
entry:
  %i = alloca i32, align 4
  %tmp = alloca [64 x i64]*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca [64 x i64]*, align 8
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1137, metadata !DIExpression()), !dbg !1138
  store i32 0, i32* %i, align 4, !dbg !1139
  br label %for.cond, !dbg !1139

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1141
  %cmp = icmp slt i32 %0, 1, !dbg !1141
  br i1 %cmp, label %for.body, label %for.end, !dbg !1139

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !1143
  br label %do.body, !dbg !1145

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !1147, metadata !DIExpression()), !dbg !1149
  store i8* null, i8** %__vpp_verify, align 8, !dbg !1149
  %2 = load i8*, i8** %__vpp_verify, align 8, !dbg !1149
  br label %do.end, !dbg !1149

do.end:                                           ; preds = %do.body
  store [64 x i64]* @cpu_evtchn_mask, [64 x i64]** %tmp1, align 8, !dbg !1149
  %3 = load [64 x i64]*, [64 x i64]** %tmp1, align 8, !dbg !1145
  store [64 x i64]* %3, [64 x i64]** %tmp, align 8, !dbg !1143
  %4 = load [64 x i64]*, [64 x i64]** %tmp, align 8, !dbg !1143
  %arraydecay = getelementptr inbounds [64 x i64], [64 x i64]* %4, i64 0, i64 0, !dbg !1150
  %5 = bitcast i64* %arraydecay to i8*, !dbg !1150
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 512, i1 false), !dbg !1150
  br label %for.inc, !dbg !1150

for.inc:                                          ; preds = %do.end
  %6 = load i32, i32* %i, align 4, !dbg !1141
  %inc = add i32 %6, 1, !dbg !1141
  store i32 %inc, i32* %i, align 4, !dbg !1141
  br label %for.cond, !dbg !1141, !llvm.loop !1151

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1153
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !1154 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1159, metadata !DIExpression()), !dbg !1161
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1163, metadata !DIExpression()), !dbg !1164
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !901, metadata !DIExpression()), !dbg !1165
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !906, metadata !DIExpression()), !dbg !1167
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1168, metadata !DIExpression()), !dbg !1169
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1170, metadata !DIExpression()), !dbg !1171
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1172
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1173
  %div = sdiv i64 %1, 64, !dbg !1173
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1174
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1172
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1175
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1176
  %conv.i = trunc i64 %4 to i32, !dbg !1176
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !1177
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1178
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1178
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !1178
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1179
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1180
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !1181
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #6, !dbg !1183
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !1184

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !1185
  %12 = bitcast i64* %11 to i8*, !dbg !1185
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1185
  %shr.i = ashr i64 %13, 3, !dbg !1185
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !1185
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !1187
  %and.i = and i64 %14, 7, !dbg !1187
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !1187
  %shl.i = shl i32 1, %sh_prom.i, !dbg !1187
  %neg.i = xor i32 %shl.i, -1, !dbg !1188
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #6, !dbg !1189, !srcloc !1190
  br label %arch_clear_bit.exit, !dbg !1191

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !1192
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !1194
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #6, !dbg !1195, !srcloc !1196
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !1197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !1198 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !1199, metadata !DIExpression()), !dbg !1201
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !1203, metadata !DIExpression()), !dbg !1204
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !901, metadata !DIExpression()), !dbg !1205
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !906, metadata !DIExpression()), !dbg !1207
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1208, metadata !DIExpression()), !dbg !1209
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1210, metadata !DIExpression()), !dbg !1211
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1212
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1213
  %div = sdiv i64 %1, 64, !dbg !1213
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !1214
  %2 = bitcast i64* %add.ptr to i8*, !dbg !1212
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !1215
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !1216
  %conv.i = trunc i64 %4 to i32, !dbg !1216
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !1217
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !1218
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !1218
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !1218
  %7 = load i64, i64* %nr.addr, align 8, !dbg !1219
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !1220
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !1221
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #6, !dbg !1223
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !1224

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !1225
  %12 = bitcast i64* %11 to i8*, !dbg !1225
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !1225
  %shr.i = ashr i64 %13, 3, !dbg !1225
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !1225
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !1227
  %and.i = and i64 %14, 7, !dbg !1227
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !1227
  %shl.i = shl i32 1, %sh_prom.i, !dbg !1227
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #6, !dbg !1228, !srcloc !1229
  br label %arch_set_bit.exit, !dbg !1230

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !1231
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !1233
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #6, !dbg !1234, !srcloc !1235
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !1236
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !1237 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !1238, metadata !DIExpression()), !dbg !1239
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !1240, metadata !DIExpression()), !dbg !1241
  ret i1 true, !dbg !1242
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sync_clear_bit(i64 %nr, i64* %addr) #0 !dbg !1243 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1245, metadata !DIExpression()), !dbg !1246
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1247, metadata !DIExpression()), !dbg !1248
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1249
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1250
  call void asm sideeffect "lock;  btrq  $1,$0", "=*m,Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64 %1, i64* %0) #6, !dbg !1251, !srcloc !1252
  ret void, !dbg !1253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @sync_set_bit(i64 %nr, i64* %addr) #0 !dbg !1254 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1255, metadata !DIExpression()), !dbg !1256
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1257, metadata !DIExpression()), !dbg !1258
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1259
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1260
  call void asm sideeffect "lock;  btsq  $1,$0", "=*m,Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64 %1, i64* %0) #6, !dbg !1261, !srcloc !1262
  ret void, !dbg !1263
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @sync_test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !1264 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !1267, metadata !DIExpression()), !dbg !1268
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !1269, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.declare(metadata i8* %c, metadata !1271, metadata !DIExpression()), !dbg !1273
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !1273
  %1 = load i64, i64* %nr.addr, align 8, !dbg !1273
  %2 = call i8 asm sideeffect "lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %0, i64 %1, i64* %0) #6, !dbg !1273, !srcloc !1274
  store i8 %2, i8* %c, align 1, !dbg !1273
  %3 = load i8, i8* %c, align 1, !dbg !1273
  %tobool = trunc i8 %3 to i1, !dbg !1273
  %frombool = zext i1 %tobool to i8, !dbg !1273
  store i8 %frombool, i8* %tmp, align 1, !dbg !1273
  %4 = load i8, i8* %tmp, align 1, !dbg !1273
  %tobool1 = trunc i8 %4 to i1, !dbg !1273
  ret i1 %tobool1, !dbg !1275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_event_channel_op(i32 %cmd, i8* %arg) #0 !dbg !1276 {
entry:
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %__res = alloca i64, align 8
  %__arg1 = alloca i64, align 8
  %__arg2 = alloca i64, align 8
  %__arg3 = alloca i64, align 8
  %__arg4 = alloca i64, align 8
  %__arg5 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !1280, metadata !DIExpression()), !dbg !1281
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !1282, metadata !DIExpression()), !dbg !1283
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !1284, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !1287, metadata !DIExpression()), !dbg !1286
  %0 = load i64, i64* %__arg1, align 8, !dbg !1286
  store i64 %0, i64* %__arg1, align 8, !dbg !1286
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !1288, metadata !DIExpression()), !dbg !1286
  %1 = load i64, i64* %__arg2, align 8, !dbg !1286
  store i64 %1, i64* %__arg2, align 8, !dbg !1286
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !1289, metadata !DIExpression()), !dbg !1286
  %2 = load i64, i64* %__arg3, align 8, !dbg !1286
  store i64 %2, i64* %__arg3, align 8, !dbg !1286
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !1290, metadata !DIExpression()), !dbg !1286
  %3 = load i64, i64* %__arg4, align 8, !dbg !1286
  store i64 %3, i64* %__arg4, align 8, !dbg !1286
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !1291, metadata !DIExpression()), !dbg !1286
  %4 = load i64, i64* %__arg5, align 8, !dbg !1286
  store i64 %4, i64* %__arg5, align 8, !dbg !1286
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !1286
  %conv = sext i32 %5 to i64, !dbg !1286
  store i64 %conv, i64* %__arg1, align 8, !dbg !1286
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1286
  %7 = ptrtoint i8* %6 to i64, !dbg !1286
  store i64 %7, i64* %__arg2, align 8, !dbg !1286
  %8 = call i64 @llvm.read_register.i64(metadata !197), !dbg !1286
  %9 = load i64, i64* %__arg1, align 8, !dbg !1286
  %10 = load i64, i64* %__arg2, align 8, !dbg !1286
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 1024, i64 %8, i64 %9, i64 %10) #6, !dbg !1286, !srcloc !1292
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !1286
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !1286
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !1286
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !1286
  store i64 %asmresult, i64* %__res, align 8, !dbg !1286
  call void @llvm.write_register.i64(metadata !197, i64 %asmresult1), !dbg !1286
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !1286
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !1286
  %12 = load i64, i64* %__res, align 8, !dbg !1286
  %conv4 = trunc i64 %12 to i32, !dbg !1286
  store i32 %conv4, i32* %tmp, align 4, !dbg !1286
  %13 = load i32, i32* %tmp, align 4, !dbg !1286
  ret i32 %13, !dbg !1293
}

; Function Attrs: noredzone
declare dso_local i32 @irq_from_virq(i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @evtchn_from_irq(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @active_evtchns(i32 %cpu, %struct.shared_info* %sh, i32 %idx) #0 !dbg !1294 {
entry:
  %cpu.addr = alloca i32, align 4
  %sh.addr = alloca %struct.shared_info*, align 8
  %idx.addr = alloca i32, align 4
  %tmp = alloca [64 x i64]*, align 8
  %__vpp_verify = alloca i8*, align 8
  %tmp1 = alloca [64 x i64]*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !1297, metadata !DIExpression()), !dbg !1298
  store %struct.shared_info* %sh, %struct.shared_info** %sh.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.shared_info** %sh.addr, metadata !1299, metadata !DIExpression()), !dbg !1300
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !1301, metadata !DIExpression()), !dbg !1302
  %0 = load %struct.shared_info*, %struct.shared_info** %sh.addr, align 8, !dbg !1303
  %evtchn_pending = getelementptr inbounds %struct.shared_info, %struct.shared_info* %0, i32 0, i32 1, !dbg !1304
  %1 = load i32, i32* %idx.addr, align 4, !dbg !1305
  %idxprom = zext i32 %1 to i64, !dbg !1303
  %arrayidx = getelementptr [64 x i64], [64 x i64]* %evtchn_pending, i64 0, i64 %idxprom, !dbg !1303
  %2 = load i64, i64* %arrayidx, align 8, !dbg !1303
  %3 = load i32, i32* %cpu.addr, align 4, !dbg !1306
  br label %do.body, !dbg !1308

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !1310, metadata !DIExpression()), !dbg !1312
  store i8* null, i8** %__vpp_verify, align 8, !dbg !1312
  %4 = load i8*, i8** %__vpp_verify, align 8, !dbg !1312
  br label %do.end, !dbg !1312

do.end:                                           ; preds = %do.body
  store [64 x i64]* @cpu_evtchn_mask, [64 x i64]** %tmp1, align 8, !dbg !1312
  %5 = load [64 x i64]*, [64 x i64]** %tmp1, align 8, !dbg !1308
  store [64 x i64]* %5, [64 x i64]** %tmp, align 8, !dbg !1306
  %6 = load [64 x i64]*, [64 x i64]** %tmp, align 8, !dbg !1306
  %7 = load i32, i32* %idx.addr, align 4, !dbg !1313
  %idxprom2 = zext i32 %7 to i64, !dbg !1314
  %arrayidx3 = getelementptr [64 x i64], [64 x i64]* %6, i64 0, i64 %idxprom2, !dbg !1314
  %8 = load i64, i64* %arrayidx3, align 8, !dbg !1314
  %and = and i64 %2, %8, !dbg !1315
  %9 = load %struct.shared_info*, %struct.shared_info** %sh.addr, align 8, !dbg !1316
  %evtchn_mask = getelementptr inbounds %struct.shared_info, %struct.shared_info* %9, i32 0, i32 2, !dbg !1317
  %10 = load i32, i32* %idx.addr, align 4, !dbg !1318
  %idxprom4 = zext i32 %10 to i64, !dbg !1316
  %arrayidx5 = getelementptr [64 x i64], [64 x i64]* %evtchn_mask, i64 0, i64 %idxprom4, !dbg !1316
  %11 = load i64, i64* %arrayidx5, align 8, !dbg !1316
  %neg = xor i64 %11, -1, !dbg !1319
  %and6 = and i64 %and, %neg, !dbg !1320
  ret i64 %and6, !dbg !1321
}

; Function Attrs: noredzone
declare dso_local i32 @generic_handle_irq(i32) #3

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #3

; Function Attrs: noredzone
declare dso_local void @handle_irq_for_port(i32, %struct.evtchn_loop_ctrl*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!197}
!llvm.module.flags = !{!198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpu_evtchn_mask", scope: !2, file: !3, line: 43, type: !25, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !120, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/events/events_2l.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 10, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !18, line: 5, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!23 = !{!24, !31, !32, !76, !77, !86, !28, !87, !88, !113, !116, !33, !119, !7, !26, !58}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 4096, elements: !29)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_ulong_t", file: !27, line: 81, baseType: !28)
!27 = !DIFile(filename: "./arch/x86/include/asm/xen/interface.h", directory: "/home/lizy2001/genbc/linux")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !{!30}
!30 = !DISubrange(count: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vcpu_info", file: !35, line: 522, size: 512, elements: !36)
!35 = !DIFile(filename: "./include/xen/interface/xen.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !45, !46, !47, !53}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "evtchn_upcall_pending", scope: !34, file: !35, line: 548, baseType: !38, size: 8)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !39, line: 102, baseType: !40)
!39 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !41, line: 17, baseType: !42)
!41 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !43, line: 21, baseType: !44)
!43 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!44 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "evtchn_upcall_mask", scope: !34, file: !35, line: 549, baseType: !38, size: 8, offset: 8)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "evtchn_pending_sel", scope: !34, file: !35, line: 550, baseType: !26, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !34, file: !35, line: 551, baseType: !48, size: 128, offset: 128)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_vcpu_info", file: !49, line: 136, size: 128, elements: !50)
!49 = !DIFile(filename: "./arch/x86/include/asm/xen/interface_64.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !48, file: !49, line: 137, baseType: !28, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !48, file: !49, line: 138, baseType: !28, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !34, file: !35, line: 552, baseType: !54, size: 256, offset: 256)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_vcpu_time_info", file: !55, line: 26, size: 256, elements: !56)
!55 = !DIFile(filename: "./arch/x86/include/asm/pvclock-abi.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !60, !61, !65, !66, !67, !71, !72}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !54, file: !55, line: 27, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !41, line: 21, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !43, line: 27, baseType: !7)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "pad0", scope: !54, file: !55, line: 28, baseType: !58, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_timestamp", scope: !54, file: !55, line: 29, baseType: !62, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !41, line: 23, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !43, line: 31, baseType: !64)
!64 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "system_time", scope: !54, file: !55, line: 30, baseType: !62, size: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_to_system_mul", scope: !54, file: !55, line: 31, baseType: !58, size: 32, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tsc_shift", scope: !54, file: !55, line: 32, baseType: !68, size: 8, offset: 224)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !41, line: 16, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !43, line: 20, baseType: !70)
!70 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !54, file: !55, line: 33, baseType: !40, size: 8, offset: 232)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !54, file: !55, line: 34, baseType: !73, size: 16, offset: 240)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 16, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 2)
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !80, line: 17, size: 64, elements: !81)
!80 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !79, file: !80, line: 17, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !90, line: 56, size: 1344, elements: !91)
!90 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !89, file: !90, line: 61, baseType: !28, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !89, file: !90, line: 62, baseType: !28, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !89, file: !90, line: 63, baseType: !28, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !89, file: !90, line: 64, baseType: !28, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !89, file: !90, line: 65, baseType: !28, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !89, file: !90, line: 66, baseType: !28, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !89, file: !90, line: 68, baseType: !28, size: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !89, file: !90, line: 69, baseType: !28, size: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !89, file: !90, line: 70, baseType: !28, size: 64, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !89, file: !90, line: 71, baseType: !28, size: 64, offset: 576)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !89, file: !90, line: 72, baseType: !28, size: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !89, file: !90, line: 73, baseType: !28, size: 64, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !89, file: !90, line: 74, baseType: !28, size: 64, offset: 768)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !89, file: !90, line: 75, baseType: !28, size: 64, offset: 832)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !89, file: !90, line: 76, baseType: !28, size: 64, offset: 896)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !89, file: !90, line: 81, baseType: !28, size: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !89, file: !90, line: 83, baseType: !28, size: 64, offset: 1024)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !89, file: !90, line: 84, baseType: !28, size: 64, offset: 1088)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !89, file: !90, line: 85, baseType: !28, size: 64, offset: 1152)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !89, file: !90, line: 86, baseType: !28, size: 64, offset: 1216)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !89, file: !90, line: 87, baseType: !28, size: 64, offset: 1280)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!115 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!118 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!120 = !{!121, !0, !142, !193, !195}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "debug_lock", scope: !123, file: !3, line: 272, type: !128, isLocal: true, isDefinition: true)
!123 = distinct !DISubprogram(name: "xen_debug_interrupt", scope: !3, file: !3, line: 265, type: !124, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !127)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !76, !31}
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !6, line: 17, baseType: !5)
!127 = !{}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !129, line: 83, baseType: !130)
!129 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !129, line: 71, elements: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !129, line: 72, baseType: !133)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !129, line: 72, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !133, file: !129, line: 73, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !129, line: 20, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !136, file: !129, line: 21, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !140, line: 25, baseType: !141)
!140 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 25, elements: !127)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "evtchn_ops_2l", scope: !2, file: !3, line: 358, type: !144, isLocal: true, isDefinition: true)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_ops", file: !146, line: 12, size: 896, elements: !147)
!146 = !DIFile(filename: "drivers/xen/events/events_internal.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !152, !153, !160, !164, !168, !169, !175, !176, !177, !178, !184, !188, !192}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "max_channels", scope: !145, file: !146, line: 13, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!7}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_channels", scope: !145, file: !146, line: 14, baseType: !149, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !145, file: !146, line: 16, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!76, !157}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "evtchn_port_t", file: !158, line: 15, baseType: !159)
!158 = !DIFile(filename: "./include/xen/interface/event_channel.h", directory: "/home/lizy2001/genbc/linux")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !39, line: 104, baseType: !58)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_cpu", scope: !145, file: !146, line: 17, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !157, !7, !7}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "clear_pending", scope: !145, file: !146, line: 20, baseType: !165, size: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !157}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "set_pending", scope: !145, file: !146, line: 21, baseType: !165, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "is_pending", scope: !145, file: !146, line: 22, baseType: !170, size: 64, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!173, !157}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !39, line: 30, baseType: !174)
!174 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "test_and_set_mask", scope: !145, file: !146, line: 23, baseType: !170, size: 64, offset: 448)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !145, file: !146, line: 24, baseType: !165, size: 64, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "unmask", scope: !145, file: !146, line: 25, baseType: !165, size: 64, offset: 576)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "handle_events", scope: !145, file: !146, line: 27, baseType: !179, size: 64, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !7, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_loop_ctrl", file: !146, line: 10, flags: DIFlagFwdDecl)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !145, file: !146, line: 28, baseType: !185, size: 64, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_init", scope: !145, file: !146, line: 30, baseType: !189, size: 64, offset: 768)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!76, !7}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_deinit", scope: !145, file: !146, line: 31, baseType: !189, size: 64, offset: 832)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "current_word_idx", scope: !2, file: !3, line: 140, type: !7, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "current_bit_idx", scope: !2, file: !3, line: 141, type: !7, isLocal: true, isDefinition: true)
!197 = !{!"rsp"}
!198 = !{i32 7, !"Dwarf Version", i32 4}
!199 = !{i32 2, !"Debug Info Version", i32 3}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"Code Model", i32 2}
!202 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!203 = !DILocalVariable(name: "lock", arg: 1, scope: !204, file: !205, line: 407, type: !208)
!204 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !205, file: !205, line: 407, type: !206, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!205 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!206 = !DISubroutineType(types: !207)
!207 = !{null, !208, !28}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!209 = !DILocation(line: 407, column: 64, scope: !204, inlinedAt: !210)
!210 = distinct !DILocation(line: 344, column: 2, scope: !123)
!211 = !DILocalVariable(name: "flags", arg: 2, scope: !204, file: !205, line: 407, type: !28)
!212 = !DILocation(line: 407, column: 84, scope: !204, inlinedAt: !210)
!213 = !DILocalVariable(name: "lock", arg: 1, scope: !214, file: !205, line: 327, type: !208)
!214 = distinct !DISubprogram(name: "spinlock_check", scope: !205, file: !205, line: 327, type: !215, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!215 = !DISubroutineType(types: !216)
!216 = !{!217, !208}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !129, line: 29, baseType: !136)
!219 = !DILocation(line: 327, column: 67, scope: !214, inlinedAt: !220)
!220 = distinct !DILocation(line: 275, column: 2, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !3, line: 275, column: 2)
!222 = distinct !DILexicalBlock(scope: !223, file: !3, line: 275, column: 2)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 275, column: 2)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 275, column: 2)
!225 = distinct !DILexicalBlock(scope: !123, file: !3, line: 275, column: 2)
!226 = !DILocalVariable(name: "irq", arg: 1, scope: !123, file: !3, line: 265, type: !76)
!227 = !DILocation(line: 265, column: 37, scope: !123)
!228 = !DILocalVariable(name: "dev_id", arg: 2, scope: !123, file: !3, line: 265, type: !31)
!229 = !DILocation(line: 265, column: 48, scope: !123)
!230 = !DILocalVariable(name: "sh", scope: !123, file: !3, line: 267, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shared_info", file: !35, line: 559, size: 25088, elements: !233)
!233 = !{!234, !238, !239, !240, !246}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "vcpu_info", scope: !232, file: !35, line: 560, baseType: !235, size: 16384)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 16384, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "evtchn_pending", scope: !232, file: !35, line: 593, baseType: !25, size: 4096, offset: 16384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "evtchn_mask", scope: !232, file: !35, line: 594, baseType: !25, size: 4096, offset: 20480)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "wc", scope: !232, file: !35, line: 600, baseType: !241, size: 96, offset: 24576)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvclock_wall_clock", file: !55, line: 37, size: 96, elements: !242)
!242 = !{!243, !244, !245}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !241, file: !55, line: 38, baseType: !58, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !241, file: !55, line: 39, baseType: !58, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !241, file: !55, line: 40, baseType: !58, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !232, file: !35, line: 602, baseType: !247, size: 384, offset: 24704)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_shared_info", file: !27, line: 149, size: 384, elements: !248)
!248 = !{!249, !250, !252, !253, !254, !255}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "max_pfn", scope: !247, file: !27, line: 154, baseType: !28, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_to_mfn_frame_list_list", scope: !247, file: !27, line: 162, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "xen_pfn_t", file: !27, line: 79, baseType: !28)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nmi_reason", scope: !247, file: !27, line: 163, baseType: !28, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "p2m_cr3", scope: !247, file: !27, line: 182, baseType: !28, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "p2m_vaddr", scope: !247, file: !27, line: 183, baseType: !28, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "p2m_generation", scope: !247, file: !27, line: 184, baseType: !28, size: 64, offset: 320)
!256 = !DILocation(line: 267, column: 22, scope: !123)
!257 = !DILocation(line: 267, column: 27, scope: !123)
!258 = !DILocalVariable(name: "cpu", scope: !123, file: !3, line: 268, type: !76)
!259 = !DILocation(line: 268, column: 6, scope: !123)
!260 = !DILocalVariable(name: "cpu_evtchn", scope: !123, file: !3, line: 269, type: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!262 = !DILocation(line: 269, column: 15, scope: !123)
!263 = !DILocation(line: 269, column: 28, scope: !264)
!264 = distinct !DILexicalBlock(scope: !123, file: !3, line: 269, column: 28)
!265 = !DILocation(line: 269, column: 28, scope: !266)
!266 = distinct !DILexicalBlock(scope: !264, file: !3, line: 269, column: 28)
!267 = !DILocalVariable(name: "__vpp_verify", scope: !268, file: !3, line: 269, type: !269)
!268 = distinct !DILexicalBlock(scope: !266, file: !3, line: 269, column: 28)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!271 = !DILocation(line: 269, column: 28, scope: !268)
!272 = !DILocation(line: 269, column: 28, scope: !123)
!273 = !DILocalVariable(name: "i", scope: !123, file: !3, line: 270, type: !76)
!274 = !DILocation(line: 270, column: 6, scope: !123)
!275 = !DILocalVariable(name: "flags", scope: !123, file: !3, line: 271, type: !28)
!276 = !DILocation(line: 271, column: 16, scope: !123)
!277 = !DILocalVariable(name: "v", scope: !123, file: !3, line: 273, type: !33)
!278 = !DILocation(line: 273, column: 20, scope: !123)
!279 = !DILocation(line: 275, column: 2, scope: !123)
!280 = !DILocation(line: 275, column: 2, scope: !225)
!281 = !DILocalVariable(name: "__dummy", scope: !282, file: !3, line: 275, type: !28)
!282 = distinct !DILexicalBlock(scope: !224, file: !3, line: 275, column: 2)
!283 = !DILocation(line: 275, column: 2, scope: !282)
!284 = !DILocalVariable(name: "__dummy2", scope: !282, file: !3, line: 275, type: !28)
!285 = !DILocation(line: 275, column: 2, scope: !224)
!286 = !DILocation(line: 275, column: 2, scope: !223)
!287 = !DILocation(line: 275, column: 2, scope: !288)
!288 = distinct !DILexicalBlock(scope: !223, file: !3, line: 275, column: 2)
!289 = !DILocalVariable(name: "__dummy", scope: !290, file: !3, line: 275, type: !28)
!290 = distinct !DILexicalBlock(scope: !291, file: !3, line: 275, column: 2)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 275, column: 2)
!292 = !DILocation(line: 275, column: 2, scope: !290)
!293 = !DILocalVariable(name: "__dummy2", scope: !290, file: !3, line: 275, type: !28)
!294 = !DILocation(line: 275, column: 2, scope: !291)
!295 = !DILocation(line: 275, column: 2, scope: !222)
!296 = !{i32 -2141672960}
!297 = !DILocation(line: 329, column: 10, scope: !214, inlinedAt: !220)
!298 = !DILocation(line: 329, column: 16, scope: !214, inlinedAt: !220)
!299 = !DILocation(line: 275, column: 2, scope: !221)
!300 = !DILocation(line: 277, column: 26, scope: !123)
!301 = !DILocation(line: 277, column: 2, scope: !123)
!302 = !DILocation(line: 279, column: 2, scope: !303)
!303 = distinct !DILexicalBlock(scope: !123, file: !3, line: 279, column: 2)
!304 = !DILocation(line: 279, column: 2, scope: !305)
!305 = distinct !DILexicalBlock(scope: !303, file: !3, line: 279, column: 2)
!306 = !DILocalVariable(name: "pending", scope: !307, file: !3, line: 280, type: !76)
!307 = distinct !DILexicalBlock(scope: !305, file: !3, line: 279, column: 25)
!308 = !DILocation(line: 280, column: 7, scope: !307)
!309 = !DILocation(line: 281, column: 7, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !3, line: 281, column: 7)
!311 = !DILocation(line: 281, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !310, file: !3, line: 281, column: 7)
!313 = !DILocalVariable(name: "__vpp_verify", scope: !314, file: !3, line: 281, type: !269)
!314 = distinct !DILexicalBlock(scope: !312, file: !3, line: 281, column: 7)
!315 = !DILocation(line: 281, column: 7, scope: !314)
!316 = !DILocation(line: 281, column: 7, scope: !307)
!317 = !DILocation(line: 281, column: 5, scope: !307)
!318 = !DILocation(line: 282, column: 14, scope: !307)
!319 = !DILocation(line: 282, column: 29, scope: !307)
!320 = !DILocation(line: 282, column: 32, scope: !307)
!321 = !DILocation(line: 282, column: 37, scope: !307)
!322 = !DILocation(line: 282, column: 34, scope: !307)
!323 = !DILocation(line: 282, column: 13, scope: !307)
!324 = !DILocation(line: 283, column: 24, scope: !307)
!325 = !DILocation(line: 283, column: 6, scope: !307)
!326 = !DILocation(line: 284, column: 6, scope: !307)
!327 = !DILocation(line: 284, column: 9, scope: !307)
!328 = !DILocation(line: 282, column: 11, scope: !307)
!329 = !DILocation(line: 285, column: 71, scope: !307)
!330 = !DILocation(line: 286, column: 10, scope: !307)
!331 = !DILocation(line: 286, column: 19, scope: !307)
!332 = !DILocation(line: 286, column: 22, scope: !307)
!333 = !DILocation(line: 288, column: 10, scope: !307)
!334 = !DILocation(line: 288, column: 13, scope: !307)
!335 = !DILocation(line: 285, column: 3, scope: !307)
!336 = !DILocation(line: 289, column: 2, scope: !307)
!337 = distinct !{!337, !302, !338}
!338 = !DILocation(line: 289, column: 2, scope: !303)
!339 = !DILocation(line: 290, column: 6, scope: !340)
!340 = distinct !DILexicalBlock(scope: !123, file: !3, line: 290, column: 6)
!341 = !DILocation(line: 290, column: 6, scope: !342)
!342 = distinct !DILexicalBlock(scope: !340, file: !3, line: 290, column: 6)
!343 = !DILocalVariable(name: "__vpp_verify", scope: !344, file: !3, line: 290, type: !269)
!344 = distinct !DILexicalBlock(scope: !342, file: !3, line: 290, column: 6)
!345 = !DILocation(line: 290, column: 6, scope: !344)
!346 = !DILocation(line: 290, column: 6, scope: !123)
!347 = !DILocation(line: 290, column: 4, scope: !123)
!348 = !DILocation(line: 292, column: 2, scope: !123)
!349 = !DILocation(line: 293, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !123, file: !3, line: 293, column: 2)
!351 = !DILocation(line: 293, column: 7, scope: !350)
!352 = !DILocation(line: 293, column: 45, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !3, line: 293, column: 2)
!354 = !DILocation(line: 293, column: 47, scope: !353)
!355 = !DILocation(line: 293, column: 2, scope: !350)
!356 = !DILocation(line: 296, column: 10, scope: !353)
!357 = !DILocation(line: 296, column: 14, scope: !353)
!358 = !DILocation(line: 296, column: 29, scope: !353)
!359 = !DILocation(line: 297, column: 10, scope: !353)
!360 = !DILocation(line: 297, column: 12, scope: !353)
!361 = !DILocation(line: 297, column: 16, scope: !353)
!362 = !DILocation(line: 294, column: 3, scope: !353)
!363 = !DILocation(line: 293, column: 54, scope: !353)
!364 = !DILocation(line: 293, column: 2, scope: !353)
!365 = distinct !{!365, !355, !366}
!366 = !DILocation(line: 297, column: 36, scope: !350)
!367 = !DILocation(line: 298, column: 2, scope: !123)
!368 = !DILocation(line: 299, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !123, file: !3, line: 299, column: 2)
!370 = !DILocation(line: 299, column: 7, scope: !369)
!371 = !DILocation(line: 299, column: 42, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !3, line: 299, column: 2)
!373 = !DILocation(line: 299, column: 44, scope: !372)
!374 = !DILocation(line: 299, column: 2, scope: !369)
!375 = !DILocation(line: 302, column: 10, scope: !372)
!376 = !DILocation(line: 302, column: 14, scope: !372)
!377 = !DILocation(line: 302, column: 26, scope: !372)
!378 = !DILocation(line: 303, column: 10, scope: !372)
!379 = !DILocation(line: 303, column: 12, scope: !372)
!380 = !DILocation(line: 303, column: 16, scope: !372)
!381 = !DILocation(line: 300, column: 3, scope: !372)
!382 = !DILocation(line: 299, column: 51, scope: !372)
!383 = !DILocation(line: 299, column: 2, scope: !372)
!384 = distinct !{!384, !374, !385}
!385 = !DILocation(line: 303, column: 36, scope: !369)
!386 = !DILocation(line: 305, column: 2, scope: !123)
!387 = !DILocation(line: 306, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !123, file: !3, line: 306, column: 2)
!389 = !DILocation(line: 306, column: 7, scope: !388)
!390 = !DILocation(line: 306, column: 42, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !3, line: 306, column: 2)
!392 = !DILocation(line: 306, column: 44, scope: !391)
!393 = !DILocation(line: 306, column: 2, scope: !388)
!394 = !DILocation(line: 309, column: 10, scope: !391)
!395 = !DILocation(line: 309, column: 14, scope: !391)
!396 = !DILocation(line: 309, column: 29, scope: !391)
!397 = !DILocation(line: 309, column: 35, scope: !391)
!398 = !DILocation(line: 309, column: 39, scope: !391)
!399 = !DILocation(line: 309, column: 51, scope: !391)
!400 = !DILocation(line: 309, column: 34, scope: !391)
!401 = !DILocation(line: 309, column: 32, scope: !391)
!402 = !DILocation(line: 310, column: 10, scope: !391)
!403 = !DILocation(line: 310, column: 12, scope: !391)
!404 = !DILocation(line: 310, column: 16, scope: !391)
!405 = !DILocation(line: 307, column: 3, scope: !391)
!406 = !DILocation(line: 306, column: 51, scope: !391)
!407 = !DILocation(line: 306, column: 2, scope: !391)
!408 = distinct !{!408, !393, !409}
!409 = !DILocation(line: 310, column: 36, scope: !388)
!410 = !DILocation(line: 312, column: 37, scope: !123)
!411 = !DILocation(line: 312, column: 2, scope: !123)
!412 = !DILocation(line: 313, column: 9, scope: !413)
!413 = distinct !DILexicalBlock(scope: !123, file: !3, line: 313, column: 2)
!414 = !DILocation(line: 313, column: 7, scope: !413)
!415 = !DILocation(line: 313, column: 59, scope: !416)
!416 = distinct !DILexicalBlock(scope: !413, file: !3, line: 313, column: 2)
!417 = !DILocation(line: 313, column: 61, scope: !416)
!418 = !DILocation(line: 313, column: 2, scope: !413)
!419 = !DILocation(line: 315, column: 10, scope: !416)
!420 = !DILocation(line: 315, column: 21, scope: !416)
!421 = !DILocation(line: 316, column: 10, scope: !416)
!422 = !DILocation(line: 316, column: 12, scope: !416)
!423 = !DILocation(line: 316, column: 16, scope: !416)
!424 = !DILocation(line: 314, column: 3, scope: !416)
!425 = !DILocation(line: 313, column: 68, scope: !416)
!426 = !DILocation(line: 313, column: 2, scope: !416)
!427 = distinct !{!427, !418, !428}
!428 = !DILocation(line: 316, column: 36, scope: !413)
!429 = !DILocation(line: 318, column: 2, scope: !123)
!430 = !DILocation(line: 319, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !123, file: !3, line: 319, column: 2)
!432 = !DILocation(line: 319, column: 7, scope: !431)
!433 = !DILocation(line: 319, column: 42, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !3, line: 319, column: 2)
!435 = !DILocation(line: 319, column: 44, scope: !434)
!436 = !DILocation(line: 319, column: 2, scope: !431)
!437 = !DILocalVariable(name: "pending", scope: !438, file: !3, line: 320, type: !26)
!438 = distinct !DILexicalBlock(scope: !434, file: !3, line: 319, column: 55)
!439 = !DILocation(line: 320, column: 15, scope: !438)
!440 = !DILocation(line: 320, column: 25, scope: !438)
!441 = !DILocation(line: 320, column: 29, scope: !438)
!442 = !DILocation(line: 320, column: 44, scope: !438)
!443 = !DILocation(line: 321, column: 7, scope: !438)
!444 = !DILocation(line: 321, column: 11, scope: !438)
!445 = !DILocation(line: 321, column: 23, scope: !438)
!446 = !DILocation(line: 321, column: 6, scope: !438)
!447 = !DILocation(line: 321, column: 4, scope: !438)
!448 = !DILocation(line: 322, column: 6, scope: !438)
!449 = !DILocation(line: 322, column: 17, scope: !438)
!450 = !DILocation(line: 322, column: 4, scope: !438)
!451 = !DILocation(line: 325, column: 10, scope: !438)
!452 = !DILocation(line: 325, column: 19, scope: !438)
!453 = !DILocation(line: 325, column: 21, scope: !438)
!454 = !DILocation(line: 325, column: 25, scope: !438)
!455 = !DILocation(line: 323, column: 3, scope: !438)
!456 = !DILocation(line: 326, column: 2, scope: !438)
!457 = !DILocation(line: 319, column: 51, scope: !434)
!458 = !DILocation(line: 319, column: 2, scope: !434)
!459 = distinct !{!459, !436, !460}
!460 = !DILocation(line: 326, column: 2, scope: !431)
!461 = !DILocation(line: 328, column: 2, scope: !123)
!462 = !DILocation(line: 329, column: 9, scope: !463)
!463 = distinct !DILexicalBlock(scope: !123, file: !3, line: 329, column: 2)
!464 = !DILocation(line: 329, column: 7, scope: !463)
!465 = !DILocation(line: 329, column: 14, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !3, line: 329, column: 2)
!467 = !DILocation(line: 329, column: 16, scope: !466)
!468 = !DILocation(line: 329, column: 2, scope: !463)
!469 = !DILocation(line: 330, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 330, column: 7)
!471 = distinct !DILexicalBlock(scope: !466, file: !3, line: 329, column: 46)
!472 = !DILocation(line: 330, column: 7, scope: !471)
!473 = !DILocalVariable(name: "word_idx", scope: !474, file: !3, line: 331, type: !76)
!474 = distinct !DILexicalBlock(scope: !470, file: !3, line: 330, column: 49)
!475 = !DILocation(line: 331, column: 8, scope: !474)
!476 = !DILocation(line: 331, column: 19, scope: !474)
!477 = !DILocation(line: 331, column: 21, scope: !474)
!478 = !DILocation(line: 333, column: 27, scope: !474)
!479 = !DILocation(line: 333, column: 11, scope: !474)
!480 = !DILocation(line: 333, column: 31, scope: !474)
!481 = !DILocation(line: 334, column: 29, scope: !474)
!482 = !DILocation(line: 334, column: 11, scope: !474)
!483 = !DILocation(line: 335, column: 11, scope: !474)
!484 = !DILocation(line: 337, column: 12, scope: !474)
!485 = !DILocation(line: 337, column: 11, scope: !474)
!486 = !DILocation(line: 339, column: 11, scope: !474)
!487 = !DILocation(line: 332, column: 4, scope: !474)
!488 = !DILocation(line: 341, column: 3, scope: !474)
!489 = !DILocation(line: 342, column: 2, scope: !471)
!490 = !DILocation(line: 329, column: 42, scope: !466)
!491 = !DILocation(line: 329, column: 2, scope: !466)
!492 = distinct !{!492, !468, !493}
!493 = !DILocation(line: 342, column: 2, scope: !463)
!494 = !DILocation(line: 344, column: 38, scope: !123)
!495 = !DILocalVariable(name: "__dummy", scope: !496, file: !205, line: 409, type: !28)
!496 = distinct !DILexicalBlock(scope: !497, file: !205, line: 409, column: 2)
!497 = distinct !DILexicalBlock(scope: !204, file: !205, line: 409, column: 2)
!498 = !DILocation(line: 409, column: 2, scope: !496, inlinedAt: !210)
!499 = !DILocalVariable(name: "__dummy2", scope: !496, file: !205, line: 409, type: !28)
!500 = !DILocalVariable(name: "__dummy", scope: !501, file: !205, line: 409, type: !28)
!501 = distinct !DILexicalBlock(scope: !502, file: !205, line: 409, column: 2)
!502 = distinct !DILexicalBlock(scope: !503, file: !205, line: 409, column: 2)
!503 = distinct !DILexicalBlock(scope: !504, file: !205, line: 409, column: 2)
!504 = distinct !DILexicalBlock(scope: !497, file: !205, line: 409, column: 2)
!505 = !DILocation(line: 409, column: 2, scope: !501, inlinedAt: !210)
!506 = !DILocalVariable(name: "__dummy2", scope: !501, file: !205, line: 409, type: !28)
!507 = !DILocation(line: 409, column: 2, scope: !502, inlinedAt: !210)
!508 = !DILocation(line: 409, column: 2, scope: !509, inlinedAt: !210)
!509 = distinct !DILexicalBlock(scope: !504, file: !205, line: 409, column: 2)
!510 = !{i32 -2145346801}
!511 = !DILocation(line: 409, column: 2, scope: !512, inlinedAt: !210)
!512 = distinct !DILexicalBlock(scope: !509, file: !205, line: 409, column: 2)
!513 = !DILocation(line: 346, column: 2, scope: !123)
!514 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !515, file: !515, line: 666, type: !516, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!515 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!516 = !DISubroutineType(types: !517)
!517 = !{!28}
!518 = !DILocalVariable(name: "f", scope: !514, file: !515, line: 668, type: !28)
!519 = !DILocation(line: 668, column: 16, scope: !514)
!520 = !DILocation(line: 670, column: 6, scope: !514)
!521 = !DILocation(line: 670, column: 4, scope: !514)
!522 = !DILocation(line: 671, column: 2, scope: !514)
!523 = !DILocation(line: 672, column: 9, scope: !514)
!524 = !DILocation(line: 672, column: 2, scope: !514)
!525 = distinct !DISubprogram(name: "get_irq_regs", scope: !526, file: !526, line: 19, type: !527, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!526 = !DIFile(filename: "./include/asm-generic/irq_regs.h", directory: "/home/lizy2001/genbc/linux")
!527 = !DISubroutineType(types: !528)
!528 = !{!88}
!529 = !DILocation(line: 21, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !526, line: 21, column: 9)
!531 = !DILocalVariable(name: "pscr_ret__", scope: !532, file: !526, line: 21, type: !88)
!532 = distinct !DILexicalBlock(scope: !530, file: !526, line: 21, column: 9)
!533 = !DILocation(line: 21, column: 9, scope: !532)
!534 = !DILocalVariable(name: "__vpp_verify", scope: !535, file: !526, line: 21, type: !269)
!535 = distinct !DILexicalBlock(scope: !532, file: !526, line: 21, column: 9)
!536 = !DILocation(line: 21, column: 9, scope: !535)
!537 = !DILocalVariable(name: "pfo_val__", scope: !538, file: !526, line: 21, type: !62)
!538 = distinct !DILexicalBlock(scope: !532, file: !526, line: 21, column: 9)
!539 = !DILocation(line: 21, column: 9, scope: !538)
!540 = !{i32 -2144368828}
!541 = !DILocation(line: 21, column: 2, scope: !525)
!542 = distinct !DISubprogram(name: "xen_irqs_disabled", scope: !543, file: !543, line: 18, type: !544, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!543 = !DIFile(filename: "./arch/x86/include/asm/xen/events.h", directory: "/home/lizy2001/genbc/linux")
!544 = !DISubroutineType(types: !545)
!545 = !{!76, !88}
!546 = !DILocalVariable(name: "flags", arg: 1, scope: !547, file: !548, line: 162, type: !28)
!547 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !548, file: !548, line: 162, type: !549, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!548 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/lizy2001/genbc/linux")
!549 = !DISubroutineType(types: !550)
!550 = !{!76, !28}
!551 = !DILocation(line: 162, column: 67, scope: !547, inlinedAt: !552)
!552 = distinct !DILocation(line: 20, column: 9, scope: !553)
!553 = distinct !DILexicalBlock(scope: !542, file: !543, line: 20, column: 9)
!554 = !DILocalVariable(name: "regs", arg: 1, scope: !542, file: !543, line: 18, type: !88)
!555 = !DILocation(line: 18, column: 53, scope: !542)
!556 = !DILocalVariable(name: "__dummy", scope: !557, file: !543, line: 20, type: !28)
!557 = distinct !DILexicalBlock(scope: !553, file: !543, line: 20, column: 9)
!558 = !DILocation(line: 20, column: 9, scope: !557)
!559 = !DILocalVariable(name: "__dummy2", scope: !557, file: !543, line: 20, type: !28)
!560 = !DILocation(line: 20, column: 9, scope: !553)
!561 = !DILocation(line: 164, column: 11, scope: !547, inlinedAt: !552)
!562 = !DILocation(line: 164, column: 17, scope: !547, inlinedAt: !552)
!563 = !DILocation(line: 164, column: 9, scope: !547, inlinedAt: !552)
!564 = !DILocation(line: 20, column: 2, scope: !542)
!565 = distinct !DISubprogram(name: "test_bit", scope: !566, file: !566, line: 132, type: !567, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!566 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!567 = !DISubroutineType(types: !568)
!568 = !{!173, !118, !569}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!572 = !DILocalVariable(name: "nr", arg: 1, scope: !573, file: !574, line: 210, type: !118)
!573 = distinct !DISubprogram(name: "variable_test_bit", scope: !574, file: !574, line: 210, type: !567, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!574 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!575 = !DILocation(line: 210, column: 52, scope: !573, inlinedAt: !576)
!576 = distinct !DILocation(line: 135, column: 9, scope: !565)
!577 = !DILocalVariable(name: "addr", arg: 2, scope: !573, file: !574, line: 210, type: !569)
!578 = !DILocation(line: 210, column: 86, scope: !573, inlinedAt: !576)
!579 = !DILocalVariable(name: "oldbit", scope: !573, file: !574, line: 212, type: !173)
!580 = !DILocation(line: 212, column: 7, scope: !573, inlinedAt: !576)
!581 = !DILocalVariable(name: "nr", arg: 1, scope: !582, file: !574, line: 204, type: !118)
!582 = distinct !DISubprogram(name: "constant_test_bit", scope: !574, file: !574, line: 204, type: !567, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!583 = !DILocation(line: 204, column: 52, scope: !582, inlinedAt: !584)
!584 = distinct !DILocation(line: 135, column: 9, scope: !565)
!585 = !DILocalVariable(name: "addr", arg: 2, scope: !582, file: !574, line: 204, type: !569)
!586 = !DILocation(line: 204, column: 86, scope: !582, inlinedAt: !584)
!587 = !DILocalVariable(name: "v", arg: 1, scope: !588, file: !589, line: 69, type: !592)
!588 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !589, file: !589, line: 69, type: !590, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!589 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!590 = !DISubroutineType(types: !591)
!591 = !{null, !592, !595}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 55, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !597, line: 72, baseType: !598)
!597 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !597, line: 16, baseType: !28)
!599 = !DILocation(line: 69, column: 73, scope: !588, inlinedAt: !600)
!600 = distinct !DILocation(line: 134, column: 2, scope: !565)
!601 = !DILocalVariable(name: "size", arg: 2, scope: !588, file: !589, line: 69, type: !595)
!602 = !DILocation(line: 69, column: 83, scope: !588, inlinedAt: !600)
!603 = !DILocalVariable(name: "nr", arg: 1, scope: !565, file: !566, line: 132, type: !118)
!604 = !DILocation(line: 132, column: 34, scope: !565)
!605 = !DILocalVariable(name: "addr", arg: 2, scope: !565, file: !566, line: 132, type: !569)
!606 = !DILocation(line: 132, column: 68, scope: !565)
!607 = !DILocation(line: 134, column: 25, scope: !565)
!608 = !DILocation(line: 134, column: 32, scope: !565)
!609 = !DILocation(line: 134, column: 30, scope: !565)
!610 = !DILocation(line: 71, column: 19, scope: !588, inlinedAt: !600)
!611 = !DILocation(line: 71, column: 22, scope: !588, inlinedAt: !600)
!612 = !DILocation(line: 71, column: 2, scope: !588, inlinedAt: !600)
!613 = !DILocation(line: 72, column: 2, scope: !588, inlinedAt: !600)
!614 = !DILocation(line: 135, column: 9, scope: !565)
!615 = !DILocation(line: 206, column: 19, scope: !582, inlinedAt: !584)
!616 = !DILocation(line: 206, column: 22, scope: !582, inlinedAt: !584)
!617 = !DILocation(line: 206, column: 15, scope: !582, inlinedAt: !584)
!618 = !DILocation(line: 207, column: 4, scope: !582, inlinedAt: !584)
!619 = !DILocation(line: 207, column: 9, scope: !582, inlinedAt: !584)
!620 = !DILocation(line: 207, column: 12, scope: !582, inlinedAt: !584)
!621 = !DILocation(line: 206, column: 44, scope: !582, inlinedAt: !584)
!622 = !DILocation(line: 207, column: 37, scope: !582, inlinedAt: !584)
!623 = !DILocation(line: 217, column: 33, scope: !573, inlinedAt: !576)
!624 = !DILocation(line: 217, column: 46, scope: !573, inlinedAt: !576)
!625 = !DILocation(line: 214, column: 2, scope: !573, inlinedAt: !576)
!626 = !{i32 -2147168849, i32 -2147168789}
!627 = !DILocation(line: 219, column: 9, scope: !573, inlinedAt: !576)
!628 = !DILocation(line: 135, column: 2, scope: !565)
!629 = distinct !DISubprogram(name: "xen_evtchn_2l_init", scope: !3, file: !3, line: 372, type: !186, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !127)
!630 = !DILocation(line: 374, column: 2, scope: !629)
!631 = !DILocation(line: 375, column: 13, scope: !629)
!632 = !DILocation(line: 376, column: 1, scope: !629)
!633 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !515, file: !515, line: 646, type: !516, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!634 = !DILocalVariable(name: "__ret", scope: !635, file: !515, line: 648, type: !28)
!635 = distinct !DILexicalBlock(scope: !633, file: !515, line: 648, column: 9)
!636 = !DILocation(line: 648, column: 9, scope: !635)
!637 = !DILocalVariable(name: "__edi", scope: !635, file: !515, line: 648, type: !28)
!638 = !DILocalVariable(name: "__esi", scope: !635, file: !515, line: 648, type: !28)
!639 = !DILocalVariable(name: "__edx", scope: !635, file: !515, line: 648, type: !28)
!640 = !DILocalVariable(name: "__ecx", scope: !635, file: !515, line: 648, type: !28)
!641 = !DILocalVariable(name: "__eax", scope: !635, file: !515, line: 648, type: !28)
!642 = !DILocation(line: 648, column: 9, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !515, line: 648, column: 9)
!644 = distinct !DILexicalBlock(scope: !635, file: !515, line: 648, column: 9)
!645 = !{i32 -2145767190, i32 -2145764875, i32 -2145764641, i32 -2145764590, i32 -2145764562, i32 -2145764537, i32 -2145764853, i32 -2145764840, i32 -2145764402, i32 -2145764283, i32 -2145764748, i32 -2145764721, i32 -2145764693, i32 -2145764663}
!646 = !DILocalVariable(name: "__mask", scope: !647, file: !515, line: 648, type: !28)
!647 = distinct !DILexicalBlock(scope: !643, file: !515, line: 648, column: 9)
!648 = !DILocation(line: 648, column: 9, scope: !647)
!649 = !DILocation(line: 648, column: 9, scope: !644)
!650 = !DILocation(line: 648, column: 2, scope: !633)
!651 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !515, file: !515, line: 656, type: !186, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!652 = !DILocalVariable(name: "__edi", scope: !653, file: !515, line: 658, type: !28)
!653 = distinct !DILexicalBlock(scope: !651, file: !515, line: 658, column: 2)
!654 = !DILocation(line: 658, column: 2, scope: !653)
!655 = !DILocalVariable(name: "__esi", scope: !653, file: !515, line: 658, type: !28)
!656 = !DILocalVariable(name: "__edx", scope: !653, file: !515, line: 658, type: !28)
!657 = !DILocalVariable(name: "__ecx", scope: !653, file: !515, line: 658, type: !28)
!658 = !DILocalVariable(name: "__eax", scope: !653, file: !515, line: 658, type: !28)
!659 = !{i32 -2145760096, i32 -2145759364, i32 -2145759130, i32 -2145759079, i32 -2145759051, i32 -2145759026, i32 -2145759342, i32 -2145759329, i32 -2145758891, i32 -2145758772, i32 -2145759237, i32 -2145759210, i32 -2145759182, i32 -2145759152}
!660 = !DILocation(line: 659, column: 1, scope: !651)
!661 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !662, file: !662, line: 313, type: !663, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!662 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/lizy2001/genbc/linux")
!663 = !DISubroutineType(types: !664)
!664 = !{null, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!667 = !DILocalVariable(name: "op", arg: 1, scope: !661, file: !662, line: 313, type: !665)
!668 = !DILocation(line: 313, column: 57, scope: !661)
!669 = !DILocation(line: 313, column: 63, scope: !661)
!670 = distinct !DISubprogram(name: "kasan_check_read", scope: !671, file: !671, line: 34, type: !672, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!671 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DISubroutineType(types: !673)
!673 = !{!173, !592, !7}
!674 = !DILocalVariable(name: "p", arg: 1, scope: !670, file: !671, line: 34, type: !592)
!675 = !DILocation(line: 34, column: 58, scope: !670)
!676 = !DILocalVariable(name: "size", arg: 2, scope: !670, file: !671, line: 34, type: !7)
!677 = !DILocation(line: 34, column: 74, scope: !670)
!678 = !DILocation(line: 36, column: 2, scope: !670)
!679 = distinct !DISubprogram(name: "kcsan_check_access", scope: !680, file: !680, line: 178, type: !681, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!680 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!681 = !DISubroutineType(types: !682)
!682 = !{null, !592, !595, !76}
!683 = !DILocalVariable(name: "ptr", arg: 1, scope: !679, file: !680, line: 178, type: !592)
!684 = !DILocation(line: 178, column: 60, scope: !679)
!685 = !DILocalVariable(name: "size", arg: 2, scope: !679, file: !680, line: 178, type: !595)
!686 = !DILocation(line: 178, column: 72, scope: !679)
!687 = !DILocalVariable(name: "type", arg: 3, scope: !679, file: !680, line: 179, type: !76)
!688 = !DILocation(line: 179, column: 15, scope: !679)
!689 = !DILocation(line: 179, column: 23, scope: !679)
!690 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !515, file: !515, line: 651, type: !691, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !28}
!693 = !DILocalVariable(name: "f", arg: 1, scope: !690, file: !515, line: 651, type: !28)
!694 = !DILocation(line: 651, column: 65, scope: !690)
!695 = !DILocalVariable(name: "__edi", scope: !696, file: !515, line: 653, type: !28)
!696 = distinct !DILexicalBlock(scope: !690, file: !515, line: 653, column: 2)
!697 = !DILocation(line: 653, column: 2, scope: !696)
!698 = !DILocalVariable(name: "__esi", scope: !696, file: !515, line: 653, type: !28)
!699 = !DILocalVariable(name: "__edx", scope: !696, file: !515, line: 653, type: !28)
!700 = !DILocalVariable(name: "__ecx", scope: !696, file: !515, line: 653, type: !28)
!701 = !DILocalVariable(name: "__eax", scope: !696, file: !515, line: 653, type: !28)
!702 = !{i32 -2145762723, i32 -2145761973, i32 -2145761739, i32 -2145761688, i32 -2145761660, i32 -2145761635, i32 -2145761951, i32 -2145761938, i32 -2145761500, i32 -2145761381, i32 -2145761846, i32 -2145761819, i32 -2145761791, i32 -2145761761}
!703 = !DILocation(line: 654, column: 1, scope: !690)
!704 = distinct !DISubprogram(name: "evtchn_2l_max_channels", scope: !3, file: !3, line: 45, type: !150, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!705 = !DILocation(line: 47, column: 2, scope: !704)
!706 = distinct !DISubprogram(name: "evtchn_2l_bind_to_cpu", scope: !3, file: !3, line: 50, type: !162, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!707 = !DILocalVariable(name: "evtchn", arg: 1, scope: !706, file: !3, line: 50, type: !157)
!708 = !DILocation(line: 50, column: 49, scope: !706)
!709 = !DILocalVariable(name: "cpu", arg: 2, scope: !706, file: !3, line: 50, type: !7)
!710 = !DILocation(line: 50, column: 70, scope: !706)
!711 = !DILocalVariable(name: "old_cpu", arg: 3, scope: !706, file: !3, line: 51, type: !7)
!712 = !DILocation(line: 51, column: 20, scope: !706)
!713 = !DILocation(line: 53, column: 12, scope: !706)
!714 = !DILocation(line: 53, column: 20, scope: !715)
!715 = distinct !DILexicalBlock(scope: !706, file: !3, line: 53, column: 20)
!716 = !DILocation(line: 53, column: 20, scope: !717)
!717 = distinct !DILexicalBlock(scope: !715, file: !3, line: 53, column: 20)
!718 = !DILocalVariable(name: "__vpp_verify", scope: !719, file: !3, line: 53, type: !269)
!719 = distinct !DILexicalBlock(scope: !717, file: !3, line: 53, column: 20)
!720 = !DILocation(line: 53, column: 20, scope: !719)
!721 = !DILocation(line: 53, column: 20, scope: !706)
!722 = !DILocation(line: 53, column: 2, scope: !706)
!723 = !DILocation(line: 54, column: 10, scope: !706)
!724 = !DILocation(line: 54, column: 18, scope: !725)
!725 = distinct !DILexicalBlock(scope: !706, file: !3, line: 54, column: 18)
!726 = !DILocation(line: 54, column: 18, scope: !727)
!727 = distinct !DILexicalBlock(scope: !725, file: !3, line: 54, column: 18)
!728 = !DILocalVariable(name: "__vpp_verify", scope: !729, file: !3, line: 54, type: !269)
!729 = distinct !DILexicalBlock(scope: !727, file: !3, line: 54, column: 18)
!730 = !DILocation(line: 54, column: 18, scope: !729)
!731 = !DILocation(line: 54, column: 18, scope: !706)
!732 = !DILocation(line: 54, column: 2, scope: !706)
!733 = !DILocation(line: 55, column: 1, scope: !706)
!734 = distinct !DISubprogram(name: "evtchn_2l_clear_pending", scope: !3, file: !3, line: 57, type: !166, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!735 = !DILocalVariable(name: "port", arg: 1, scope: !734, file: !3, line: 57, type: !157)
!736 = !DILocation(line: 57, column: 51, scope: !734)
!737 = !DILocalVariable(name: "s", scope: !734, file: !3, line: 59, type: !231)
!738 = !DILocation(line: 59, column: 22, scope: !734)
!739 = !DILocation(line: 59, column: 26, scope: !734)
!740 = !DILocation(line: 60, column: 17, scope: !734)
!741 = !DILocation(line: 60, column: 23, scope: !734)
!742 = !DILocation(line: 60, column: 2, scope: !734)
!743 = !DILocation(line: 61, column: 1, scope: !734)
!744 = distinct !DISubprogram(name: "evtchn_2l_set_pending", scope: !3, file: !3, line: 63, type: !166, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!745 = !DILocalVariable(name: "port", arg: 1, scope: !744, file: !3, line: 63, type: !157)
!746 = !DILocation(line: 63, column: 49, scope: !744)
!747 = !DILocalVariable(name: "s", scope: !744, file: !3, line: 65, type: !231)
!748 = !DILocation(line: 65, column: 22, scope: !744)
!749 = !DILocation(line: 65, column: 26, scope: !744)
!750 = !DILocation(line: 66, column: 15, scope: !744)
!751 = !DILocation(line: 66, column: 21, scope: !744)
!752 = !DILocation(line: 66, column: 2, scope: !744)
!753 = !DILocation(line: 67, column: 1, scope: !744)
!754 = distinct !DISubprogram(name: "evtchn_2l_is_pending", scope: !3, file: !3, line: 69, type: !171, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!755 = !DILocalVariable(name: "port", arg: 1, scope: !754, file: !3, line: 69, type: !157)
!756 = !DILocation(line: 69, column: 48, scope: !754)
!757 = !DILocalVariable(name: "s", scope: !754, file: !3, line: 71, type: !231)
!758 = !DILocation(line: 71, column: 22, scope: !754)
!759 = !DILocation(line: 71, column: 26, scope: !754)
!760 = !DILocation(line: 72, column: 9, scope: !754)
!761 = !DILocation(line: 72, column: 2, scope: !754)
!762 = distinct !DISubprogram(name: "evtchn_2l_test_and_set_mask", scope: !3, file: !3, line: 75, type: !171, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!763 = !DILocalVariable(name: "port", arg: 1, scope: !762, file: !3, line: 75, type: !157)
!764 = !DILocation(line: 75, column: 55, scope: !762)
!765 = !DILocalVariable(name: "s", scope: !762, file: !3, line: 77, type: !231)
!766 = !DILocation(line: 77, column: 22, scope: !762)
!767 = !DILocation(line: 77, column: 26, scope: !762)
!768 = !DILocation(line: 78, column: 31, scope: !762)
!769 = !DILocation(line: 78, column: 37, scope: !762)
!770 = !DILocation(line: 78, column: 9, scope: !762)
!771 = !DILocation(line: 78, column: 2, scope: !762)
!772 = distinct !DISubprogram(name: "evtchn_2l_mask", scope: !3, file: !3, line: 81, type: !166, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!773 = !DILocalVariable(name: "port", arg: 1, scope: !772, file: !3, line: 81, type: !157)
!774 = !DILocation(line: 81, column: 42, scope: !772)
!775 = !DILocalVariable(name: "s", scope: !772, file: !3, line: 83, type: !231)
!776 = !DILocation(line: 83, column: 22, scope: !772)
!777 = !DILocation(line: 83, column: 26, scope: !772)
!778 = !DILocation(line: 84, column: 15, scope: !772)
!779 = !DILocation(line: 84, column: 21, scope: !772)
!780 = !DILocation(line: 84, column: 2, scope: !772)
!781 = !DILocation(line: 85, column: 1, scope: !772)
!782 = distinct !DISubprogram(name: "evtchn_2l_unmask", scope: !3, file: !3, line: 87, type: !166, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!783 = !DILocation(line: 162, column: 67, scope: !547, inlinedAt: !784)
!784 = distinct !DILocation(line: 93, column: 2, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 93, column: 2)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 93, column: 2)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 93, column: 2)
!788 = distinct !DILexicalBlock(scope: !782, file: !3, line: 93, column: 2)
!789 = !DILocalVariable(name: "port", arg: 1, scope: !782, file: !3, line: 87, type: !157)
!790 = !DILocation(line: 87, column: 44, scope: !782)
!791 = !DILocalVariable(name: "s", scope: !782, file: !3, line: 89, type: !231)
!792 = !DILocation(line: 89, column: 22, scope: !782)
!793 = !DILocation(line: 89, column: 26, scope: !782)
!794 = !DILocalVariable(name: "cpu", scope: !782, file: !3, line: 90, type: !7)
!795 = !DILocation(line: 90, column: 15, scope: !782)
!796 = !DILocation(line: 90, column: 21, scope: !797)
!797 = distinct !DILexicalBlock(scope: !782, file: !3, line: 90, column: 21)
!798 = !{i32 -2141705145}
!799 = !DILocalVariable(name: "do_hypercall", scope: !782, file: !3, line: 91, type: !76)
!800 = !DILocation(line: 91, column: 6, scope: !782)
!801 = !DILocalVariable(name: "evtchn_pending", scope: !782, file: !3, line: 91, type: !76)
!802 = !DILocation(line: 91, column: 24, scope: !782)
!803 = !DILocation(line: 93, column: 2, scope: !782)
!804 = !DILocalVariable(name: "_flags", scope: !786, file: !3, line: 93, type: !28)
!805 = !DILocation(line: 93, column: 2, scope: !786)
!806 = !DILocalVariable(name: "__dummy", scope: !807, file: !3, line: 93, type: !28)
!807 = distinct !DILexicalBlock(scope: !808, file: !3, line: 93, column: 2)
!808 = distinct !DILexicalBlock(scope: !786, file: !3, line: 93, column: 2)
!809 = !DILocation(line: 93, column: 2, scope: !807)
!810 = !DILocalVariable(name: "__dummy2", scope: !807, file: !3, line: 93, type: !28)
!811 = !DILocation(line: 93, column: 2, scope: !808)
!812 = !DILocalVariable(name: "__dummy", scope: !813, file: !3, line: 93, type: !28)
!813 = distinct !DILexicalBlock(scope: !785, file: !3, line: 93, column: 2)
!814 = !DILocation(line: 93, column: 2, scope: !813)
!815 = !DILocalVariable(name: "__dummy2", scope: !813, file: !3, line: 93, type: !28)
!816 = !DILocation(line: 93, column: 2, scope: !785)
!817 = !DILocation(line: 164, column: 11, scope: !547, inlinedAt: !784)
!818 = !DILocation(line: 164, column: 17, scope: !547, inlinedAt: !784)
!819 = !DILocation(line: 164, column: 9, scope: !547, inlinedAt: !784)
!820 = !DILocation(line: 93, column: 2, scope: !787)
!821 = !DILocation(line: 93, column: 2, scope: !788)
!822 = !DILocation(line: 93, column: 2, scope: !823)
!823 = distinct !DILexicalBlock(scope: !787, file: !3, line: 93, column: 2)
!824 = !DILocation(line: 93, column: 2, scope: !825)
!825 = distinct !DILexicalBlock(scope: !823, file: !3, line: 93, column: 2)
!826 = !DILocation(line: 93, column: 2, scope: !827)
!827 = distinct !DILexicalBlock(scope: !823, file: !3, line: 93, column: 2)
!828 = !{i32 -2141703596, i32 -2141703567, i32 -2141703521, i32 -2141703463, i32 -2141703409, i32 -2141703355, i32 -2141703300, i32 -2141703269}
!829 = !DILocation(line: 93, column: 2, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 93, column: 2)
!831 = distinct !DILexicalBlock(scope: !823, file: !3, line: 93, column: 2)
!832 = !{i32 -2141702817, i32 -2141702810, i32 -2141702756, i32 -2141702725, i32 -2141702695}
!833 = !DILocation(line: 93, column: 2, scope: !831)
!834 = !DILocation(line: 95, column: 2, scope: !782)
!835 = !{i32 -2141702626}
!836 = !DILocation(line: 97, column: 6, scope: !837)
!837 = distinct !DILexicalBlock(scope: !782, file: !3, line: 97, column: 6)
!838 = !DILocation(line: 97, column: 6, scope: !782)
!839 = !DILocation(line: 98, column: 16, scope: !837)
!840 = !DILocation(line: 98, column: 3, scope: !837)
!841 = !DILocation(line: 108, column: 18, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !3, line: 99, column: 7)
!843 = !DILocation(line: 108, column: 24, scope: !842)
!844 = !DILocation(line: 108, column: 3, scope: !842)
!845 = !DILocation(line: 109, column: 20, scope: !842)
!846 = !DILocation(line: 109, column: 18, scope: !842)
!847 = !DILocation(line: 111, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !3, line: 111, column: 7)
!849 = !DILocation(line: 0, scope: !848)
!850 = !DILocation(line: 111, column: 7, scope: !842)
!851 = !DILocation(line: 112, column: 17, scope: !852)
!852 = distinct !DILexicalBlock(scope: !848, file: !3, line: 111, column: 53)
!853 = !DILocation(line: 112, column: 23, scope: !852)
!854 = !DILocation(line: 112, column: 4, scope: !852)
!855 = !DILocation(line: 113, column: 17, scope: !852)
!856 = !DILocation(line: 114, column: 3, scope: !852)
!857 = !DILocation(line: 120, column: 6, scope: !858)
!858 = distinct !DILexicalBlock(scope: !782, file: !3, line: 120, column: 6)
!859 = !DILocation(line: 120, column: 6, scope: !782)
!860 = !DILocalVariable(name: "unmask", scope: !861, file: !3, line: 121, type: !862)
!861 = distinct !DILexicalBlock(scope: !858, file: !3, line: 120, column: 20)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_unmask", file: !158, line: 176, size: 32, elements: !863)
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !862, file: !158, line: 178, baseType: !157, size: 32)
!865 = !DILocation(line: 121, column: 24, scope: !861)
!866 = !DILocation(line: 121, column: 33, scope: !861)
!867 = !DILocation(line: 121, column: 43, scope: !861)
!868 = !DILocation(line: 122, column: 54, scope: !861)
!869 = !DILocation(line: 122, column: 9, scope: !861)
!870 = !DILocation(line: 123, column: 2, scope: !861)
!871 = !DILocalVariable(name: "vcpu_info", scope: !872, file: !3, line: 124, type: !33)
!872 = distinct !DILexicalBlock(scope: !858, file: !3, line: 123, column: 9)
!873 = !DILocation(line: 124, column: 21, scope: !872)
!874 = !DILocation(line: 124, column: 33, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !3, line: 124, column: 33)
!876 = !DILocalVariable(name: "pscr_ret__", scope: !877, file: !3, line: 124, type: !33)
!877 = distinct !DILexicalBlock(scope: !875, file: !3, line: 124, column: 33)
!878 = !DILocation(line: 124, column: 33, scope: !877)
!879 = !DILocalVariable(name: "__vpp_verify", scope: !880, file: !3, line: 124, type: !269)
!880 = distinct !DILexicalBlock(scope: !877, file: !3, line: 124, column: 33)
!881 = !DILocation(line: 124, column: 33, scope: !880)
!882 = !DILocalVariable(name: "pfo_val__", scope: !883, file: !3, line: 124, type: !62)
!883 = distinct !DILexicalBlock(scope: !877, file: !3, line: 124, column: 33)
!884 = !DILocation(line: 124, column: 33, scope: !883)
!885 = !{i32 -2141699541}
!886 = !DILocation(line: 131, column: 7, scope: !887)
!887 = distinct !DILexicalBlock(scope: !872, file: !3, line: 131, column: 7)
!888 = !DILocation(line: 131, column: 22, scope: !887)
!889 = !DILocation(line: 132, column: 30, scope: !887)
!890 = !DILocation(line: 132, column: 35, scope: !887)
!891 = !DILocation(line: 133, column: 9, scope: !887)
!892 = !DILocation(line: 132, column: 8, scope: !887)
!893 = !DILocation(line: 131, column: 7, scope: !872)
!894 = !DILocation(line: 134, column: 4, scope: !887)
!895 = !DILocation(line: 134, column: 15, scope: !887)
!896 = !DILocation(line: 134, column: 37, scope: !887)
!897 = !DILocation(line: 137, column: 2, scope: !782)
!898 = !{i32 -2141699314}
!899 = !DILocation(line: 138, column: 1, scope: !782)
!900 = distinct !DISubprogram(name: "evtchn_2l_handle_events", scope: !3, file: !3, line: 165, type: !180, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!901 = !DILocalVariable(name: "v", arg: 1, scope: !902, file: !589, line: 84, type: !592)
!902 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !589, file: !589, line: 84, type: !590, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!903 = !DILocation(line: 84, column: 74, scope: !902, inlinedAt: !904)
!904 = distinct !DILocation(line: 191, column: 18, scope: !905)
!905 = distinct !DILexicalBlock(scope: !900, file: !3, line: 191, column: 18)
!906 = !DILocalVariable(name: "size", arg: 2, scope: !902, file: !589, line: 84, type: !595)
!907 = !DILocation(line: 84, column: 84, scope: !902, inlinedAt: !904)
!908 = !DILocalVariable(name: "cpu", arg: 1, scope: !900, file: !3, line: 165, type: !7)
!909 = !DILocation(line: 165, column: 46, scope: !900)
!910 = !DILocalVariable(name: "ctrl", arg: 2, scope: !900, file: !3, line: 165, type: !182)
!911 = !DILocation(line: 165, column: 76, scope: !900)
!912 = !DILocalVariable(name: "irq", scope: !900, file: !3, line: 167, type: !76)
!913 = !DILocation(line: 167, column: 6, scope: !900)
!914 = !DILocalVariable(name: "pending_words", scope: !900, file: !3, line: 168, type: !26)
!915 = !DILocation(line: 168, column: 14, scope: !900)
!916 = !DILocalVariable(name: "pending_bits", scope: !900, file: !3, line: 169, type: !26)
!917 = !DILocation(line: 169, column: 14, scope: !900)
!918 = !DILocalVariable(name: "start_word_idx", scope: !900, file: !3, line: 170, type: !76)
!919 = !DILocation(line: 170, column: 6, scope: !900)
!920 = !DILocalVariable(name: "start_bit_idx", scope: !900, file: !3, line: 170, type: !76)
!921 = !DILocation(line: 170, column: 22, scope: !900)
!922 = !DILocalVariable(name: "word_idx", scope: !900, file: !3, line: 171, type: !76)
!923 = !DILocation(line: 171, column: 6, scope: !900)
!924 = !DILocalVariable(name: "bit_idx", scope: !900, file: !3, line: 171, type: !76)
!925 = !DILocation(line: 171, column: 16, scope: !900)
!926 = !DILocalVariable(name: "i", scope: !900, file: !3, line: 172, type: !76)
!927 = !DILocation(line: 172, column: 6, scope: !900)
!928 = !DILocalVariable(name: "s", scope: !900, file: !3, line: 173, type: !231)
!929 = !DILocation(line: 173, column: 22, scope: !900)
!930 = !DILocation(line: 173, column: 26, scope: !900)
!931 = !DILocalVariable(name: "vcpu_info", scope: !900, file: !3, line: 174, type: !33)
!932 = !DILocation(line: 174, column: 20, scope: !900)
!933 = !DILocation(line: 174, column: 32, scope: !934)
!934 = distinct !DILexicalBlock(scope: !900, file: !3, line: 174, column: 32)
!935 = !DILocalVariable(name: "pscr_ret__", scope: !936, file: !3, line: 174, type: !33)
!936 = distinct !DILexicalBlock(scope: !934, file: !3, line: 174, column: 32)
!937 = !DILocation(line: 174, column: 32, scope: !936)
!938 = !DILocalVariable(name: "__vpp_verify", scope: !939, file: !3, line: 174, type: !269)
!939 = distinct !DILexicalBlock(scope: !936, file: !3, line: 174, column: 32)
!940 = !DILocation(line: 174, column: 32, scope: !939)
!941 = !DILocalVariable(name: "pfo_val__", scope: !942, file: !3, line: 174, type: !62)
!942 = distinct !DILexicalBlock(scope: !936, file: !3, line: 174, column: 32)
!943 = !DILocation(line: 174, column: 32, scope: !942)
!944 = !{i32 -2141691472}
!945 = !DILocation(line: 177, column: 22, scope: !900)
!946 = !DILocation(line: 177, column: 8, scope: !900)
!947 = !DILocation(line: 177, column: 6, scope: !900)
!948 = !DILocation(line: 178, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !900, file: !3, line: 178, column: 6)
!950 = !DILocation(line: 178, column: 10, scope: !949)
!951 = !DILocation(line: 178, column: 6, scope: !900)
!952 = !DILocalVariable(name: "evtchn", scope: !953, file: !3, line: 179, type: !157)
!953 = distinct !DILexicalBlock(scope: !949, file: !3, line: 178, column: 17)
!954 = !DILocation(line: 179, column: 17, scope: !953)
!955 = !DILocation(line: 179, column: 42, scope: !953)
!956 = !DILocation(line: 179, column: 26, scope: !953)
!957 = !DILocation(line: 180, column: 14, scope: !953)
!958 = !DILocation(line: 180, column: 21, scope: !953)
!959 = !DILocation(line: 180, column: 12, scope: !953)
!960 = !DILocation(line: 181, column: 13, scope: !953)
!961 = !DILocation(line: 181, column: 20, scope: !953)
!962 = !DILocation(line: 181, column: 11, scope: !953)
!963 = !DILocation(line: 182, column: 22, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !3, line: 182, column: 7)
!965 = !DILocation(line: 182, column: 27, scope: !964)
!966 = !DILocation(line: 182, column: 30, scope: !964)
!967 = !DILocation(line: 182, column: 7, scope: !964)
!968 = !DILocation(line: 182, column: 51, scope: !964)
!969 = !DILocation(line: 182, column: 48, scope: !964)
!970 = !DILocation(line: 182, column: 40, scope: !964)
!971 = !DILocation(line: 182, column: 7, scope: !953)
!972 = !DILocation(line: 183, column: 23, scope: !964)
!973 = !DILocation(line: 183, column: 4, scope: !964)
!974 = !DILocation(line: 184, column: 2, scope: !953)
!975 = !DILocalVariable(name: "__ai_ptr", scope: !905, file: !3, line: 191, type: !261)
!976 = !DILocation(line: 191, column: 18, scope: !905)
!977 = !DILocation(line: 86, column: 20, scope: !902, inlinedAt: !904)
!978 = !DILocation(line: 86, column: 23, scope: !902, inlinedAt: !904)
!979 = !DILocation(line: 86, column: 2, scope: !902, inlinedAt: !904)
!980 = !DILocation(line: 87, column: 2, scope: !902, inlinedAt: !904)
!981 = !DILocalVariable(name: "__ret", scope: !982, file: !3, line: 191, type: !26)
!982 = distinct !DILexicalBlock(scope: !905, file: !3, line: 191, column: 18)
!983 = !DILocation(line: 191, column: 18, scope: !982)
!984 = !{i32 -2141690099}
!985 = !DILocation(line: 191, column: 16, scope: !900)
!986 = !DILocation(line: 193, column: 19, scope: !987)
!987 = distinct !DILexicalBlock(scope: !900, file: !3, line: 193, column: 19)
!988 = !DILocalVariable(name: "pscr_ret__", scope: !989, file: !3, line: 193, type: !7)
!989 = distinct !DILexicalBlock(scope: !987, file: !3, line: 193, column: 19)
!990 = !DILocation(line: 193, column: 19, scope: !989)
!991 = !DILocalVariable(name: "__vpp_verify", scope: !992, file: !3, line: 193, type: !269)
!992 = distinct !DILexicalBlock(scope: !989, file: !3, line: 193, column: 19)
!993 = !DILocation(line: 193, column: 19, scope: !992)
!994 = !DILocalVariable(name: "pfo_val__", scope: !995, file: !3, line: 193, type: !58)
!995 = distinct !DILexicalBlock(scope: !989, file: !3, line: 193, column: 19)
!996 = !DILocation(line: 193, column: 19, scope: !995)
!997 = !{i32 -2141687683}
!998 = !DILocation(line: 193, column: 17, scope: !900)
!999 = !DILocation(line: 194, column: 18, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !900, file: !3, line: 194, column: 18)
!1001 = !DILocalVariable(name: "pscr_ret__", scope: !1002, file: !3, line: 194, type: !7)
!1002 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 194, column: 18)
!1003 = !DILocation(line: 194, column: 18, scope: !1002)
!1004 = !DILocalVariable(name: "__vpp_verify", scope: !1005, file: !3, line: 194, type: !269)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 194, column: 18)
!1006 = !DILocation(line: 194, column: 18, scope: !1005)
!1007 = !DILocalVariable(name: "pfo_val__", scope: !1008, file: !3, line: 194, type: !58)
!1008 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 194, column: 18)
!1009 = !DILocation(line: 194, column: 18, scope: !1008)
!1010 = !{i32 -2141684722}
!1011 = !DILocation(line: 194, column: 16, scope: !900)
!1012 = !DILocation(line: 196, column: 13, scope: !900)
!1013 = !DILocation(line: 196, column: 11, scope: !900)
!1014 = !DILocation(line: 198, column: 9, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !900, file: !3, line: 198, column: 2)
!1016 = !DILocation(line: 198, column: 7, scope: !1015)
!1017 = !DILocation(line: 198, column: 14, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 198, column: 2)
!1019 = !DILocation(line: 198, column: 28, scope: !1018)
!1020 = !DILocation(line: 198, column: 2, scope: !1015)
!1021 = !DILocalVariable(name: "words", scope: !1022, file: !3, line: 199, type: !26)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 198, column: 39)
!1023 = !DILocation(line: 199, column: 15, scope: !1022)
!1024 = !DILocation(line: 201, column: 11, scope: !1022)
!1025 = !DILocation(line: 201, column: 9, scope: !1022)
!1026 = !DILocation(line: 206, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 206, column: 7)
!1028 = !DILocation(line: 206, column: 13, scope: !1027)
!1029 = !DILocation(line: 206, column: 7, scope: !1022)
!1030 = !DILocation(line: 207, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 206, column: 19)
!1032 = !DILocation(line: 208, column: 12, scope: !1031)
!1033 = !DILocation(line: 209, column: 4, scope: !1031)
!1034 = !DILocation(line: 211, column: 14, scope: !1022)
!1035 = !DILocation(line: 211, column: 12, scope: !1022)
!1036 = !DILocation(line: 213, column: 33, scope: !1022)
!1037 = !DILocation(line: 213, column: 38, scope: !1022)
!1038 = !DILocation(line: 213, column: 41, scope: !1022)
!1039 = !DILocation(line: 213, column: 18, scope: !1022)
!1040 = !DILocation(line: 213, column: 16, scope: !1022)
!1041 = !DILocation(line: 214, column: 11, scope: !1022)
!1042 = !DILocation(line: 227, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 227, column: 7)
!1044 = !DILocation(line: 227, column: 19, scope: !1043)
!1045 = !DILocation(line: 227, column: 16, scope: !1043)
!1046 = !DILocation(line: 227, column: 7, scope: !1022)
!1047 = !DILocation(line: 228, column: 8, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 228, column: 8)
!1049 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 227, column: 35)
!1050 = !DILocation(line: 228, column: 10, scope: !1048)
!1051 = !DILocation(line: 228, column: 8, scope: !1049)
!1052 = !DILocation(line: 229, column: 15, scope: !1048)
!1053 = !DILocation(line: 229, column: 13, scope: !1048)
!1054 = !DILocation(line: 229, column: 5, scope: !1048)
!1055 = !DILocation(line: 230, column: 3, scope: !1049)
!1056 = !DILocation(line: 232, column: 3, scope: !1022)
!1057 = !DILocalVariable(name: "bits", scope: !1058, file: !3, line: 233, type: !26)
!1058 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 232, column: 6)
!1059 = !DILocation(line: 233, column: 16, scope: !1058)
!1060 = !DILocalVariable(name: "port", scope: !1058, file: !3, line: 234, type: !157)
!1061 = !DILocation(line: 234, column: 18, scope: !1058)
!1062 = !DILocation(line: 236, column: 11, scope: !1058)
!1063 = !DILocation(line: 236, column: 9, scope: !1058)
!1064 = !DILocation(line: 239, column: 8, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 239, column: 8)
!1066 = !DILocation(line: 239, column: 13, scope: !1065)
!1067 = !DILocation(line: 239, column: 8, scope: !1058)
!1068 = !DILocation(line: 240, column: 5, scope: !1065)
!1069 = !DILocation(line: 242, column: 14, scope: !1058)
!1070 = !DILocation(line: 242, column: 12, scope: !1058)
!1071 = !DILocation(line: 245, column: 12, scope: !1058)
!1072 = !DILocation(line: 245, column: 21, scope: !1058)
!1073 = !DILocation(line: 245, column: 47, scope: !1058)
!1074 = !DILocation(line: 245, column: 45, scope: !1058)
!1075 = !DILocation(line: 245, column: 11, scope: !1058)
!1076 = !DILocation(line: 245, column: 9, scope: !1058)
!1077 = !DILocation(line: 246, column: 24, scope: !1058)
!1078 = !DILocation(line: 246, column: 30, scope: !1058)
!1079 = !DILocation(line: 246, column: 4, scope: !1058)
!1080 = !DILocation(line: 248, column: 15, scope: !1058)
!1081 = !DILocation(line: 248, column: 23, scope: !1058)
!1082 = !DILocation(line: 248, column: 14, scope: !1058)
!1083 = !DILocation(line: 248, column: 28, scope: !1058)
!1084 = !DILocation(line: 248, column: 12, scope: !1058)
!1085 = !DILocation(line: 251, column: 4, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 251, column: 4)
!1087 = !DILocation(line: 251, column: 4, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 251, column: 4)
!1089 = !DILocalVariable(name: "__vpp_verify", scope: !1090, file: !3, line: 251, type: !269)
!1090 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 251, column: 4)
!1091 = !DILocation(line: 251, column: 4, scope: !1090)
!1092 = !DILocalVariable(name: "pto_val__", scope: !1093, file: !3, line: 251, type: !58)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 251, column: 4)
!1094 = !DILocation(line: 251, column: 4, scope: !1093)
!1095 = !{i32 -2141679594}
!1096 = !DILocation(line: 254, column: 4, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 254, column: 4)
!1098 = !DILocation(line: 254, column: 4, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 254, column: 4)
!1100 = !DILocalVariable(name: "__vpp_verify", scope: !1101, file: !3, line: 254, type: !269)
!1101 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 254, column: 4)
!1102 = !DILocation(line: 254, column: 4, scope: !1101)
!1103 = !DILocalVariable(name: "pto_val__", scope: !1104, file: !3, line: 254, type: !58)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 254, column: 4)
!1105 = !DILocation(line: 254, column: 4, scope: !1104)
!1106 = !{i32 -2141675488}
!1107 = !DILocation(line: 255, column: 3, scope: !1058)
!1108 = !DILocation(line: 255, column: 12, scope: !1022)
!1109 = !DILocation(line: 255, column: 20, scope: !1022)
!1110 = distinct !{!1110, !1056, !1111}
!1111 = !DILocation(line: 255, column: 24, scope: !1022)
!1112 = !DILocation(line: 258, column: 8, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 258, column: 7)
!1114 = !DILocation(line: 258, column: 20, scope: !1113)
!1115 = !DILocation(line: 258, column: 17, scope: !1113)
!1116 = !DILocation(line: 258, column: 36, scope: !1113)
!1117 = !DILocation(line: 258, column: 40, scope: !1113)
!1118 = !DILocation(line: 258, column: 42, scope: !1113)
!1119 = !DILocation(line: 258, column: 7, scope: !1022)
!1120 = !DILocation(line: 259, column: 30, scope: !1113)
!1121 = !DILocation(line: 259, column: 27, scope: !1113)
!1122 = !DILocation(line: 259, column: 21, scope: !1113)
!1123 = !DILocation(line: 259, column: 18, scope: !1113)
!1124 = !DILocation(line: 259, column: 4, scope: !1113)
!1125 = !DILocation(line: 261, column: 15, scope: !1022)
!1126 = !DILocation(line: 261, column: 24, scope: !1022)
!1127 = !DILocation(line: 261, column: 14, scope: !1022)
!1128 = !DILocation(line: 261, column: 29, scope: !1022)
!1129 = !DILocation(line: 261, column: 12, scope: !1022)
!1130 = !DILocation(line: 262, column: 2, scope: !1022)
!1131 = !DILocation(line: 198, column: 35, scope: !1018)
!1132 = !DILocation(line: 198, column: 2, scope: !1018)
!1133 = distinct !{!1133, !1020, !1134}
!1134 = !DILocation(line: 262, column: 2, scope: !1015)
!1135 = !DILocation(line: 263, column: 1, scope: !900)
!1136 = distinct !DISubprogram(name: "evtchn_2l_resume", scope: !3, file: !3, line: 349, type: !186, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1137 = !DILocalVariable(name: "i", scope: !1136, file: !3, line: 351, type: !76)
!1138 = !DILocation(line: 351, column: 6, scope: !1136)
!1139 = !DILocation(line: 353, column: 2, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 353, column: 2)
!1141 = !DILocation(line: 353, column: 2, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 353, column: 2)
!1143 = !DILocation(line: 354, column: 10, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 354, column: 10)
!1145 = !DILocation(line: 354, column: 10, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 354, column: 10)
!1147 = !DILocalVariable(name: "__vpp_verify", scope: !1148, file: !3, line: 354, type: !269)
!1148 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 354, column: 10)
!1149 = !DILocation(line: 354, column: 10, scope: !1148)
!1150 = !DILocation(line: 354, column: 3, scope: !1142)
!1151 = distinct !{!1151, !1139, !1152}
!1152 = !DILocation(line: 355, column: 47, scope: !1140)
!1153 = !DILocation(line: 356, column: 1, scope: !1136)
!1154 = distinct !DISubprogram(name: "clear_bit", scope: !1155, file: !1155, line: 39, type: !1156, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1155 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !118, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!1159 = !DILocalVariable(name: "nr", arg: 1, scope: !1160, file: !574, line: 72, type: !118)
!1160 = distinct !DISubprogram(name: "arch_clear_bit", scope: !574, file: !574, line: 72, type: !1156, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1161 = !DILocation(line: 72, column: 21, scope: !1160, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 42, column: 2, scope: !1154)
!1163 = !DILocalVariable(name: "addr", arg: 2, scope: !1160, file: !574, line: 72, type: !1158)
!1164 = !DILocation(line: 72, column: 49, scope: !1160, inlinedAt: !1162)
!1165 = !DILocation(line: 84, column: 74, scope: !902, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 41, column: 2, scope: !1154)
!1167 = !DILocation(line: 84, column: 84, scope: !902, inlinedAt: !1166)
!1168 = !DILocalVariable(name: "nr", arg: 1, scope: !1154, file: !1155, line: 39, type: !118)
!1169 = !DILocation(line: 39, column: 35, scope: !1154)
!1170 = !DILocalVariable(name: "addr", arg: 2, scope: !1154, file: !1155, line: 39, type: !1158)
!1171 = !DILocation(line: 39, column: 63, scope: !1154)
!1172 = !DILocation(line: 41, column: 26, scope: !1154)
!1173 = !DILocation(line: 41, column: 33, scope: !1154)
!1174 = !DILocation(line: 41, column: 31, scope: !1154)
!1175 = !DILocation(line: 86, column: 20, scope: !902, inlinedAt: !1166)
!1176 = !DILocation(line: 86, column: 23, scope: !902, inlinedAt: !1166)
!1177 = !DILocation(line: 86, column: 2, scope: !902, inlinedAt: !1166)
!1178 = !DILocation(line: 87, column: 2, scope: !902, inlinedAt: !1166)
!1179 = !DILocation(line: 42, column: 17, scope: !1154)
!1180 = !DILocation(line: 42, column: 21, scope: !1154)
!1181 = !DILocation(line: 74, column: 27, scope: !1182, inlinedAt: !1162)
!1182 = distinct !DILexicalBlock(scope: !1160, file: !574, line: 74, column: 6)
!1183 = !DILocation(line: 74, column: 6, scope: !1182, inlinedAt: !1162)
!1184 = !DILocation(line: 74, column: 6, scope: !1160, inlinedAt: !1162)
!1185 = !DILocation(line: 76, column: 6, scope: !1186, inlinedAt: !1162)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !574, line: 74, column: 32)
!1187 = !DILocation(line: 77, column: 13, scope: !1186, inlinedAt: !1162)
!1188 = !DILocation(line: 77, column: 12, scope: !1186, inlinedAt: !1162)
!1189 = !DILocation(line: 75, column: 3, scope: !1186, inlinedAt: !1162)
!1190 = !{i32 -2147177143}
!1191 = !DILocation(line: 78, column: 2, scope: !1186, inlinedAt: !1162)
!1192 = !DILocation(line: 80, column: 8, scope: !1193, inlinedAt: !1162)
!1193 = distinct !DILexicalBlock(scope: !1182, file: !574, line: 78, column: 9)
!1194 = !DILocation(line: 80, column: 32, scope: !1193, inlinedAt: !1162)
!1195 = !DILocation(line: 79, column: 3, scope: !1193, inlinedAt: !1162)
!1196 = !{i32 -2147177011}
!1197 = !DILocation(line: 43, column: 1, scope: !1154)
!1198 = distinct !DISubprogram(name: "set_bit", scope: !1155, file: !1155, line: 26, type: !1156, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1199 = !DILocalVariable(name: "nr", arg: 1, scope: !1200, file: !574, line: 52, type: !118)
!1200 = distinct !DISubprogram(name: "arch_set_bit", scope: !574, file: !574, line: 52, type: !1156, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1201 = !DILocation(line: 52, column: 19, scope: !1200, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 29, column: 2, scope: !1198)
!1203 = !DILocalVariable(name: "addr", arg: 2, scope: !1200, file: !574, line: 52, type: !1158)
!1204 = !DILocation(line: 52, column: 47, scope: !1200, inlinedAt: !1202)
!1205 = !DILocation(line: 84, column: 74, scope: !902, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 28, column: 2, scope: !1198)
!1207 = !DILocation(line: 84, column: 84, scope: !902, inlinedAt: !1206)
!1208 = !DILocalVariable(name: "nr", arg: 1, scope: !1198, file: !1155, line: 26, type: !118)
!1209 = !DILocation(line: 26, column: 33, scope: !1198)
!1210 = !DILocalVariable(name: "addr", arg: 2, scope: !1198, file: !1155, line: 26, type: !1158)
!1211 = !DILocation(line: 26, column: 61, scope: !1198)
!1212 = !DILocation(line: 28, column: 26, scope: !1198)
!1213 = !DILocation(line: 28, column: 33, scope: !1198)
!1214 = !DILocation(line: 28, column: 31, scope: !1198)
!1215 = !DILocation(line: 86, column: 20, scope: !902, inlinedAt: !1206)
!1216 = !DILocation(line: 86, column: 23, scope: !902, inlinedAt: !1206)
!1217 = !DILocation(line: 86, column: 2, scope: !902, inlinedAt: !1206)
!1218 = !DILocation(line: 87, column: 2, scope: !902, inlinedAt: !1206)
!1219 = !DILocation(line: 29, column: 15, scope: !1198)
!1220 = !DILocation(line: 29, column: 19, scope: !1198)
!1221 = !DILocation(line: 54, column: 27, scope: !1222, inlinedAt: !1202)
!1222 = distinct !DILexicalBlock(scope: !1200, file: !574, line: 54, column: 6)
!1223 = !DILocation(line: 54, column: 6, scope: !1222, inlinedAt: !1202)
!1224 = !DILocation(line: 54, column: 6, scope: !1200, inlinedAt: !1202)
!1225 = !DILocation(line: 56, column: 6, scope: !1226, inlinedAt: !1202)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !574, line: 54, column: 32)
!1227 = !DILocation(line: 57, column: 12, scope: !1226, inlinedAt: !1202)
!1228 = !DILocation(line: 55, column: 3, scope: !1226, inlinedAt: !1202)
!1229 = !{i32 -2147178097}
!1230 = !DILocation(line: 59, column: 2, scope: !1226, inlinedAt: !1202)
!1231 = !DILocation(line: 61, column: 8, scope: !1232, inlinedAt: !1202)
!1232 = distinct !DILexicalBlock(scope: !1222, file: !574, line: 59, column: 9)
!1233 = !DILocation(line: 61, column: 32, scope: !1232, inlinedAt: !1202)
!1234 = !DILocation(line: 60, column: 3, scope: !1232, inlinedAt: !1202)
!1235 = !{i32 -2147177965}
!1236 = !DILocation(line: 30, column: 1, scope: !1198)
!1237 = distinct !DISubprogram(name: "kasan_check_write", scope: !671, file: !671, line: 38, type: !672, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1238 = !DILocalVariable(name: "p", arg: 1, scope: !1237, file: !671, line: 38, type: !592)
!1239 = !DILocation(line: 38, column: 59, scope: !1237)
!1240 = !DILocalVariable(name: "size", arg: 2, scope: !1237, file: !671, line: 38, type: !7)
!1241 = !DILocation(line: 38, column: 75, scope: !1237)
!1242 = !DILocation(line: 40, column: 2, scope: !1237)
!1243 = distinct !DISubprogram(name: "sync_clear_bit", scope: !1244, file: !1244, line: 50, type: !1156, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1244 = !DIFile(filename: "./arch/x86/include/asm/sync_bitops.h", directory: "/home/lizy2001/genbc/linux")
!1245 = !DILocalVariable(name: "nr", arg: 1, scope: !1243, file: !1244, line: 50, type: !118)
!1246 = !DILocation(line: 50, column: 40, scope: !1243)
!1247 = !DILocalVariable(name: "addr", arg: 2, scope: !1243, file: !1244, line: 50, type: !1158)
!1248 = !DILocation(line: 50, column: 68, scope: !1243)
!1249 = !DILocation(line: 53, column: 16, scope: !1243)
!1250 = !DILocation(line: 54, column: 16, scope: !1243)
!1251 = !DILocation(line: 52, column: 2, scope: !1243)
!1252 = !{i32 3377400}
!1253 = !DILocation(line: 56, column: 1, scope: !1243)
!1254 = distinct !DISubprogram(name: "sync_set_bit", scope: !1244, file: !1244, line: 32, type: !1156, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1255 = !DILocalVariable(name: "nr", arg: 1, scope: !1254, file: !1244, line: 32, type: !118)
!1256 = !DILocation(line: 32, column: 38, scope: !1254)
!1257 = !DILocalVariable(name: "addr", arg: 2, scope: !1254, file: !1244, line: 32, type: !1158)
!1258 = !DILocation(line: 32, column: 66, scope: !1254)
!1259 = !DILocation(line: 35, column: 16, scope: !1254)
!1260 = !DILocation(line: 36, column: 16, scope: !1254)
!1261 = !DILocation(line: 34, column: 2, scope: !1254)
!1262 = !{i32 3376816}
!1263 = !DILocation(line: 38, column: 1, scope: !1254)
!1264 = distinct !DISubprogram(name: "sync_test_and_set_bit", scope: !1244, file: !1244, line: 83, type: !1265, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!173, !118, !1158}
!1267 = !DILocalVariable(name: "nr", arg: 1, scope: !1264, file: !1244, line: 83, type: !118)
!1268 = !DILocation(line: 83, column: 47, scope: !1264)
!1269 = !DILocalVariable(name: "addr", arg: 2, scope: !1264, file: !1244, line: 83, type: !1158)
!1270 = !DILocation(line: 83, column: 75, scope: !1264)
!1271 = !DILocalVariable(name: "c", scope: !1272, file: !1244, line: 85, type: !173)
!1272 = distinct !DILexicalBlock(scope: !1264, file: !1244, line: 85, column: 9)
!1273 = !DILocation(line: 85, column: 9, scope: !1272)
!1274 = !{i32 -2144102325, i32 -2144102223}
!1275 = !DILocation(line: 85, column: 2, scope: !1264)
!1276 = distinct !DISubprogram(name: "HYPERVISOR_event_channel_op", scope: !1277, file: !1277, line: 356, type: !1278, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1277 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!76, !76, !31}
!1280 = !DILocalVariable(name: "cmd", arg: 1, scope: !1276, file: !1277, line: 356, type: !76)
!1281 = !DILocation(line: 356, column: 33, scope: !1276)
!1282 = !DILocalVariable(name: "arg", arg: 2, scope: !1276, file: !1277, line: 356, type: !31)
!1283 = !DILocation(line: 356, column: 44, scope: !1276)
!1284 = !DILocalVariable(name: "__res", scope: !1285, file: !1277, line: 358, type: !28)
!1285 = distinct !DILexicalBlock(scope: !1276, file: !1277, line: 358, column: 9)
!1286 = !DILocation(line: 358, column: 9, scope: !1285)
!1287 = !DILocalVariable(name: "__arg1", scope: !1285, file: !1277, line: 358, type: !28)
!1288 = !DILocalVariable(name: "__arg2", scope: !1285, file: !1277, line: 358, type: !28)
!1289 = !DILocalVariable(name: "__arg3", scope: !1285, file: !1277, line: 358, type: !28)
!1290 = !DILocalVariable(name: "__arg4", scope: !1285, file: !1277, line: 358, type: !28)
!1291 = !DILocalVariable(name: "__arg5", scope: !1285, file: !1277, line: 358, type: !28)
!1292 = !{i32 -2142673715}
!1293 = !DILocation(line: 358, column: 2, scope: !1276)
!1294 = distinct !DISubprogram(name: "active_evtchns", scope: !3, file: !3, line: 148, type: !1295, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !127)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!26, !7, !231, !7}
!1297 = !DILocalVariable(name: "cpu", arg: 1, scope: !1294, file: !3, line: 148, type: !7)
!1298 = !DILocation(line: 148, column: 55, scope: !1294)
!1299 = !DILocalVariable(name: "sh", arg: 2, scope: !1294, file: !3, line: 149, type: !231)
!1300 = !DILocation(line: 149, column: 27, scope: !1294)
!1301 = !DILocalVariable(name: "idx", arg: 3, scope: !1294, file: !3, line: 150, type: !7)
!1302 = !DILocation(line: 150, column: 20, scope: !1294)
!1303 = !DILocation(line: 152, column: 9, scope: !1294)
!1304 = !DILocation(line: 152, column: 13, scope: !1294)
!1305 = !DILocation(line: 152, column: 28, scope: !1294)
!1306 = !DILocation(line: 153, column: 3, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 153, column: 3)
!1308 = !DILocation(line: 153, column: 3, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 153, column: 3)
!1310 = !DILocalVariable(name: "__vpp_verify", scope: !1311, file: !3, line: 153, type: !269)
!1311 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 153, column: 3)
!1312 = !DILocation(line: 153, column: 3, scope: !1311)
!1313 = !DILocation(line: 153, column: 33, scope: !1294)
!1314 = !DILocation(line: 153, column: 3, scope: !1294)
!1315 = !DILocation(line: 152, column: 33, scope: !1294)
!1316 = !DILocation(line: 154, column: 4, scope: !1294)
!1317 = !DILocation(line: 154, column: 8, scope: !1294)
!1318 = !DILocation(line: 154, column: 20, scope: !1294)
!1319 = !DILocation(line: 154, column: 3, scope: !1294)
!1320 = !DILocation(line: 153, column: 38, scope: !1294)
!1321 = !DILocation(line: 152, column: 2, scope: !1294)
