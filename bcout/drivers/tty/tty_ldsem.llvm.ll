; ModuleID = '../bcout/drivers/tty/tty_ldsem.llvm.bc'
source_filename = "drivers/tty/tty_ldsem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.61, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.64 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { i64, i64 }
%union.anon.64 = type { [12 x i32] }
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
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
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
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.29, %struct.list_head, %struct.list_head, %union.anon.30 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.4, %union.anon.18, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.18 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.19, i32 }
%union.anon.19 = type { %struct.kuid_t }
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
%union.anon.29 = type { %struct.list_head }
%union.anon.30 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.20, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.21, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.22, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.25, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.20 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.21 = type { %struct.callback_head }
%union.anon.22 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.6 }
%union.anon.6 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.25 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.23 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.23 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.40 }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.39 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.31, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.32, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.33, %union.anon.37, %struct.key_restriction* }
%union.anon.31 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.32 = type { i64 }
%union.anon.33 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.34, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.34 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.37 = type { %union.key_payload }
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
%struct.tty_struct = type { i32, %struct.kref, %struct.device*, %struct.tty_driver*, %struct.tty_operations*, i32, %struct.ld_semaphore, %struct.tty_ldisc*, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ktermios, %struct.ktermios, %struct.termiox*, [64 x i8], %struct.pid*, %struct.pid*, i64, i32, %struct.winsize, i8, i64, i32, i16, i56, i32, i32, %struct.tty_struct*, %struct.fasync_struct*, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, i8*, i8*, %struct.spinlock, %struct.list_head, i32, i8*, i32, %struct.work_struct, %struct.tty_port* }
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.26, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.26 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.wake_irq = type opaque
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.tty_driver = type { i32, %struct.kref, %struct.cdev**, %struct.module*, i8*, i8*, i32, i32, i32, i32, i16, i16, %struct.ktermios, i64, %struct.proc_dir_entry*, %struct.tty_driver*, %struct.tty_struct**, %struct.tty_port**, %struct.ktermios**, i8*, %struct.tty_operations*, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.proc_dir_entry = type opaque
%struct.tty_operations = type { %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, i32 (%struct.tty_driver*, %struct.tty_struct*)*, void (%struct.tty_driver*, %struct.tty_struct*)*, i32 (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*, %struct.file*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i64)*, i64 (%struct.tty_struct*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, void (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*, i32, i32)*, i32 (%struct.tty_struct*, %struct.winsize*)*, i32 (%struct.tty_struct*, %struct.termiox*)*, i32 (%struct.tty_struct*, %struct.serial_icounter_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, i32 (%struct.tty_struct*, %struct.serial_struct*)*, void (%struct.tty_struct*, %struct.seq_file*)*, i32 (%struct.seq_file*, i8*)* }
%struct.serial_icounter_struct = type opaque
%struct.serial_struct = type opaque
%struct.ld_semaphore = type { %struct.atomic64_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.tty_ldisc = type { %struct.tty_ldisc_ops*, %struct.tty_struct* }
%struct.tty_ldisc_ops = type { i32, i8*, i32, i32, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i64 (%struct.tty_struct*, %struct.file*, i8*, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, i32 (%struct.tty_struct*, %struct.file*, i32, i64)*, void (%struct.tty_struct*, %struct.ktermios*)*, i32 (%struct.tty_struct*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.tty_struct*)*, void (%struct.tty_struct*, i8*, i8*, i32)*, void (%struct.tty_struct*)*, void (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i8*, i8*, i32)*, %struct.module*, i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.termiox = type { i16, i16, [5 x i16], i16 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.tty_port = type { %struct.tty_bufhead, %struct.tty_struct*, %struct.tty_struct*, %struct.tty_port_operations*, %struct.tty_port_client_operations*, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i64, i64, i8, %struct.mutex, %struct.mutex, i8*, i32, i32, i32, %struct.kref, i8* }
%struct.tty_bufhead = type { %struct.tty_buffer*, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, %struct.tty_buffer* }
%struct.tty_buffer = type { %union.anon.45, i32, i32, i32, i32, i32, [0 x i64] }
%union.anon.45 = type { %struct.tty_buffer* }
%struct.llist_head = type { %struct.llist_node* }
%struct.llist_node = type { %struct.llist_node* }
%struct.tty_port_operations = type { i32 (%struct.tty_port*)*, void (%struct.tty_port*, i32)*, void (%struct.tty_port*)*, i32 (%struct.tty_port*, %struct.tty_struct*)*, void (%struct.tty_port*)* }
%struct.tty_port_client_operations = type { i32 (%struct.tty_port*, i8*, i8*, i64)*, void (%struct.tty_port*)* }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i64, i64 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { void (i32)*, i64, void ()*, %struct.sigset_t }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, %struct.seccomp_filter* }
%struct.seccomp_filter = type opaque
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.59, i32, [12 x i8] }
%union.anon.59 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.60 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
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
%struct.ldsem_waiter = type { %struct.list_head, %struct.task_struct* }

@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @__init_ldsem(%struct.ld_semaphore* %sem, i8* %name, %struct.lock_class_key* %key) #0 !dbg !3862 {
entry:
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !3867, metadata !DIExpression()), !dbg !3875
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3887, metadata !DIExpression()), !dbg !3888
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !3889, metadata !DIExpression()), !dbg !3890
  %i.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i, metadata !3891, metadata !DIExpression()), !dbg !3892
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !3893, metadata !DIExpression()), !dbg !3894
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !3895, metadata !DIExpression()), !dbg !3896
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %name.addr = alloca i8*, align 8
  %key.addr = alloca %struct.lock_class_key*, align 8
  %.compoundliteral = alloca %struct.raw_spinlock, align 1
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !3897, metadata !DIExpression()), !dbg !3898
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3899, metadata !DIExpression()), !dbg !3900
  store %struct.lock_class_key* %key, %struct.lock_class_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.lock_class_key** %key.addr, metadata !3901, metadata !DIExpression()), !dbg !3902
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !3903
  %count = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 0, !dbg !3904
  store %struct.atomic64_t* %count, %struct.atomic64_t** %v.addr.i, align 8
  store i64 0, i64* %i.addr.i, align 8
  %1 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !3905
  %2 = load i64, i64* %i.addr.i, align 8, !dbg !3906
  store %struct.atomic64_t* %1, %struct.atomic64_t** %v.addr.i.i, align 8
  store i64 %2, i64* %i.addr.i.i, align 8
  %3 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !3907
  %4 = bitcast %struct.atomic64_t* %3 to i8*, !dbg !3907
  store i8* %4, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !3908
  %6 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3909
  %conv.i.i.i = trunc i64 %6 to i32, !dbg !3909
  %call.i.i.i = call zeroext i1 @kasan_check_write(i8* %5, i32 %conv.i.i.i) #6, !dbg !3910
  %7 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !3911
  %8 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3911
  call void @kcsan_check_access(i8* %7, i64 %8, i32 5) #6, !dbg !3911
  %9 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !3912
  %10 = load i64, i64* %i.addr.i.i, align 8, !dbg !3913
  call void @arch_atomic64_set(%struct.atomic64_t* %9, i64 %10) #6, !dbg !3914
  %11 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !3915
  %wait_readers = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %11, i32 0, i32 2, !dbg !3916
  store i32 0, i32* %wait_readers, align 8, !dbg !3917
  br label %do.body, !dbg !3918

do.body:                                          ; preds = %entry
  %12 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !3919
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %12, i32 0, i32 1, !dbg !3919
  %13 = bitcast %struct.raw_spinlock* %wait_lock to i8*, !dbg !3919
  %14 = bitcast %struct.raw_spinlock* %.compoundliteral to i8*, !dbg !3919
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 1 %14, i64 0, i1 false), !dbg !3919
  br label %do.end, !dbg !3919

do.end:                                           ; preds = %do.body
  %15 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !3921
  %read_wait = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %15, i32 0, i32 3, !dbg !3922
  call void @INIT_LIST_HEAD(%struct.list_head* %read_wait) #7, !dbg !3923
  %16 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !3924
  %write_wait = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %16, i32 0, i32 4, !dbg !3925
  call void @INIT_LIST_HEAD(%struct.list_head* %write_wait) #7, !dbg !3926
  ret void, !dbg !3927
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3928 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3932, metadata !DIExpression()), !dbg !3933
  br label %do.body, !dbg !3934

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3935

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3937

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3935

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3939
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3939
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3939
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3939
  br label %do.end3, !dbg !3939

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3935

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3941
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3942
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3943
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3944
  ret void, !dbg !3945
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ldsem_down_read(%struct.ld_semaphore* %sem, i64 %timeout) #0 section ".sched.text" !dbg !3946 {
entry:
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %timeout.addr = alloca i64, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !3949, metadata !DIExpression()), !dbg !3950
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !3951, metadata !DIExpression()), !dbg !3952
  br label %do.body, !dbg !3953

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3954

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3956

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !3954

do.end2:                                          ; preds = %do.end
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !3958
  %1 = load i64, i64* %timeout.addr, align 8, !dbg !3959
  %call = call i32 @__ldsem_down_read_nested(%struct.ld_semaphore* %0, i32 0, i64 %1) #7, !dbg !3960
  ret i32 %call, !dbg !3961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__ldsem_down_read_nested(%struct.ld_semaphore* %sem, i32 %subclass, i64 %timeout) #0 !dbg !3962 {
entry:
  %i.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i.i, metadata !3965, metadata !DIExpression()), !dbg !3970
  %v.addr.i1.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i1.i.i, metadata !3978, metadata !DIExpression()), !dbg !3979
  %__ret.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret.i.i.i, metadata !3980, metadata !DIExpression()), !dbg !3982
  %tmp.i.i.i = alloca i64, align 8
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !3983, metadata !DIExpression()), !dbg !3985
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3987, metadata !DIExpression()), !dbg !3988
  %i.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i, metadata !3989, metadata !DIExpression()), !dbg !3990
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !3991, metadata !DIExpression()), !dbg !3992
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !3993, metadata !DIExpression()), !dbg !3994
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !3995, metadata !DIExpression()), !dbg !3996
  %retval = alloca i32, align 4
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %subclass.addr = alloca i32, align 4
  %timeout.addr = alloca i64, align 8
  %count = alloca i64, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !3997, metadata !DIExpression()), !dbg !3998
  store i32 %subclass, i32* %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %subclass.addr, metadata !3999, metadata !DIExpression()), !dbg !4000
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !4001, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.declare(metadata i64* %count, metadata !4003, metadata !DIExpression()), !dbg !4004
  br label %do.body, !dbg !4005

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4006

do.end:                                           ; preds = %do.body
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4008
  %count1 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 0, !dbg !4009
  store i64 1, i64* %i.addr.i, align 8
  store %struct.atomic64_t* %count1, %struct.atomic64_t** %v.addr.i, align 8
  %1 = load i64, i64* %i.addr.i, align 8, !dbg !4010
  %2 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !4011
  store i64 %1, i64* %i.addr.i.i, align 8
  store %struct.atomic64_t* %2, %struct.atomic64_t** %v.addr.i.i, align 8
  %3 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4012
  %4 = bitcast %struct.atomic64_t* %3 to i8*, !dbg !4012
  store i8* %4, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4013
  %6 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4014
  %conv.i.i.i = trunc i64 %6 to i32, !dbg !4014
  %call.i.i.i = call zeroext i1 @kasan_check_write(i8* %5, i32 %conv.i.i.i) #6, !dbg !4015
  %7 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4016
  %8 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4016
  call void @kcsan_check_access(i8* %7, i64 %8, i32 7) #6, !dbg !4016
  %9 = load i64, i64* %i.addr.i.i, align 8, !dbg !4017
  %10 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4018
  store i64 %9, i64* %i.addr.i.i.i, align 8
  store %struct.atomic64_t* %10, %struct.atomic64_t** %v.addr.i1.i.i, align 8
  %11 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !4019
  %12 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !3982
  store i64 %12, i64* %__ret.i.i.i, align 8, !dbg !3982
  %13 = load i64, i64* %__ret.i.i.i, align 8, !dbg !3982
  %14 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i1.i.i, align 8, !dbg !3982
  %counter.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %14, i32 0, i32 0, !dbg !3982
  %15 = call i64 asm sideeffect "xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %counter.i.i.i, i64 %13, i64* %counter.i.i.i) #5, !dbg !3982, !srcloc !4020
  store i64 %15, i64* %__ret.i.i.i, align 8, !dbg !3982
  %16 = load i64, i64* %__ret.i.i.i, align 8, !dbg !3982
  store i64 %16, i64* %tmp.i.i.i, align 8, !dbg !3982
  %17 = load i64, i64* %tmp.i.i.i, align 8, !dbg !3982
  %add.i.i.i = add i64 %11, %17, !dbg !4021
  store i64 %add.i.i.i, i64* %count, align 8, !dbg !4022
  %18 = load i64, i64* %count, align 8, !dbg !4023
  %cmp = icmp sle i64 %18, 0, !dbg !4025
  br i1 %cmp, label %if.then, label %if.end8, !dbg !4026

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !4027

do.body2:                                         ; preds = %if.then
  br label %do.end3, !dbg !4029

do.end3:                                          ; preds = %do.body2
  %19 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4031
  %20 = load i64, i64* %count, align 8, !dbg !4033
  %21 = load i64, i64* %timeout.addr, align 8, !dbg !4034
  %call4 = call %struct.ld_semaphore* @down_read_failed(%struct.ld_semaphore* %19, i64 %20, i64 %21) #7, !dbg !4035
  %tobool = icmp ne %struct.ld_semaphore* %call4, null, !dbg !4035
  br i1 %tobool, label %if.end, label %if.then5, !dbg !4036

if.then5:                                         ; preds = %do.end3
  br label %do.body6, !dbg !4037

do.body6:                                         ; preds = %if.then5
  br label %do.end7, !dbg !4039

do.end7:                                          ; preds = %do.body6
  store i32 0, i32* %retval, align 4, !dbg !4041
  br label %return, !dbg !4041

if.end:                                           ; preds = %do.end3
  br label %if.end8, !dbg !4042

if.end8:                                          ; preds = %if.end, %do.end
  br label %do.body9, !dbg !4043

do.body9:                                         ; preds = %if.end8
  br label %do.end10, !dbg !4044

do.end10:                                         ; preds = %do.body9
  store i32 1, i32* %retval, align 4, !dbg !4046
  br label %return, !dbg !4046

return:                                           ; preds = %do.end10, %do.end7
  %22 = load i32, i32* %retval, align 4, !dbg !4047
  ret i32 %22, !dbg !4047
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ldsem_down_read_trylock(%struct.ld_semaphore* %sem) #0 !dbg !4048 {
entry:
  %v.addr.i5.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i5.i.i, metadata !4051, metadata !DIExpression()), !dbg !4055
  %old.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i.i, metadata !4066, metadata !DIExpression()), !dbg !4067
  %new.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i.i, metadata !4068, metadata !DIExpression()), !dbg !4069
  %success.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i, metadata !4070, metadata !DIExpression()), !dbg !4072
  %_old.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %_old.i.i.i, metadata !4073, metadata !DIExpression()), !dbg !4072
  %__old.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__old.i.i.i, metadata !4074, metadata !DIExpression()), !dbg !4072
  %__new.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__new.i.i.i, metadata !4075, metadata !DIExpression()), !dbg !4072
  %__ptr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__ptr.i.i.i, metadata !4076, metadata !DIExpression()), !dbg !4072
  %tmp.i.i.i = alloca i64, align 8
  %v.addr.i1.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i1.i.i, metadata !3983, metadata !DIExpression()), !dbg !4077
  %size.addr.i2.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i2.i.i, metadata !3987, metadata !DIExpression()), !dbg !4079
  %v.addr.i.i.i6 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i6, metadata !3983, metadata !DIExpression()), !dbg !4080
  %size.addr.i.i.i7 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i7, metadata !3987, metadata !DIExpression()), !dbg !4082
  %v.addr.i.i8 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i8, metadata !4083, metadata !DIExpression()), !dbg !4084
  %old.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i, metadata !4085, metadata !DIExpression()), !dbg !4086
  %new.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i, metadata !4087, metadata !DIExpression()), !dbg !4088
  %v.addr.i9 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i9, metadata !4089, metadata !DIExpression()), !dbg !4090
  %old.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i, metadata !4091, metadata !DIExpression()), !dbg !4092
  %new.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i, metadata !4093, metadata !DIExpression()), !dbg !4094
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !4095, metadata !DIExpression()), !dbg !4097
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4111, metadata !DIExpression()), !dbg !4112
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !4113, metadata !DIExpression()), !dbg !4114
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !4115, metadata !DIExpression()), !dbg !4116
  %retval = alloca i32, align 4
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %count = alloca i64, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.declare(metadata i64* %count, metadata !4119, metadata !DIExpression()), !dbg !4120
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4121
  %count1 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 0, !dbg !4122
  store %struct.atomic64_t* %count1, %struct.atomic64_t** %v.addr.i, align 8
  %1 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !4123
  store %struct.atomic64_t* %1, %struct.atomic64_t** %v.addr.i.i, align 8
  %2 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4124
  %3 = bitcast %struct.atomic64_t* %2 to i8*, !dbg !4124
  store i8* %3, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4125
  %5 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4126
  %conv.i.i.i = trunc i64 %5 to i32, !dbg !4126
  %call.i.i.i = call zeroext i1 @kasan_check_read(i8* %4, i32 %conv.i.i.i) #6, !dbg !4127
  %6 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4128
  %7 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4128
  call void @kcsan_check_access(i8* %6, i64 %7, i32 4) #6, !dbg !4128
  %8 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4129
  %call.i.i = call i64 @arch_atomic64_read(%struct.atomic64_t* %8) #6, !dbg !4130
  store i64 %call.i.i, i64* %count, align 8, !dbg !4120
  br label %while.cond, !dbg !4131

while.cond:                                       ; preds = %if.end, %entry
  %9 = load i64, i64* %count, align 8, !dbg !4132
  %cmp = icmp sge i64 %9, 0, !dbg !4133
  br i1 %cmp, label %while.body, label %while.end, !dbg !4131

while.body:                                       ; preds = %while.cond
  %10 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4134
  %count2 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %10, i32 0, i32 0, !dbg !4135
  %11 = load i64, i64* %count, align 8, !dbg !4136
  %add = add i64 %11, 1, !dbg !4137
  store %struct.atomic64_t* %count2, %struct.atomic64_t** %v.addr.i9, align 8
  store i64* %count, i64** %old.addr.i, align 8
  store i64 %add, i64* %new.addr.i, align 8
  %12 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i9, align 8, !dbg !4138
  %13 = load i64*, i64** %old.addr.i, align 8, !dbg !4139
  %14 = load i64, i64* %new.addr.i, align 8, !dbg !4140
  store %struct.atomic64_t* %12, %struct.atomic64_t** %v.addr.i.i8, align 8
  store i64* %13, i64** %old.addr.i.i, align 8
  store i64 %14, i64* %new.addr.i.i, align 8
  %15 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i8, align 8, !dbg !4141
  %16 = bitcast %struct.atomic64_t* %15 to i8*, !dbg !4141
  store i8* %16, i8** %v.addr.i.i.i6, align 8
  store i64 8, i64* %size.addr.i.i.i7, align 8
  %17 = load i8*, i8** %v.addr.i.i.i6, align 8, !dbg !4142
  %18 = load i64, i64* %size.addr.i.i.i7, align 8, !dbg !4143
  %conv.i.i.i10 = trunc i64 %18 to i32, !dbg !4143
  %call.i.i.i11 = call zeroext i1 @kasan_check_write(i8* %17, i32 %conv.i.i.i10) #6, !dbg !4144
  %19 = load i8*, i8** %v.addr.i.i.i6, align 8, !dbg !4145
  %20 = load i64, i64* %size.addr.i.i.i7, align 8, !dbg !4145
  call void @kcsan_check_access(i8* %19, i64 %20, i32 7) #6, !dbg !4145
  %21 = load i64*, i64** %old.addr.i.i, align 8, !dbg !4146
  %22 = bitcast i64* %21 to i8*, !dbg !4146
  store i8* %22, i8** %v.addr.i1.i.i, align 8
  store i64 8, i64* %size.addr.i2.i.i, align 8
  %23 = load i8*, i8** %v.addr.i1.i.i, align 8, !dbg !4147
  %24 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !4148
  %conv.i3.i.i = trunc i64 %24 to i32, !dbg !4148
  %call.i4.i.i = call zeroext i1 @kasan_check_write(i8* %23, i32 %conv.i3.i.i) #6, !dbg !4149
  %25 = load i8*, i8** %v.addr.i1.i.i, align 8, !dbg !4150
  %26 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !4150
  call void @kcsan_check_access(i8* %25, i64 %26, i32 7) #6, !dbg !4150
  %27 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i8, align 8, !dbg !4151
  %28 = load i64*, i64** %old.addr.i.i, align 8, !dbg !4152
  %29 = load i64, i64* %new.addr.i.i, align 8, !dbg !4153
  store %struct.atomic64_t* %27, %struct.atomic64_t** %v.addr.i5.i.i, align 8
  store i64* %28, i64** %old.addr.i.i.i, align 8
  store i64 %29, i64* %new.addr.i.i.i, align 8
  %30 = load i64*, i64** %old.addr.i.i.i, align 8, !dbg !4072
  store i64* %30, i64** %_old.i.i.i, align 8, !dbg !4072
  %31 = load i64*, i64** %_old.i.i.i, align 8, !dbg !4072
  %32 = load i64, i64* %31, align 8, !dbg !4072
  store i64 %32, i64* %__old.i.i.i, align 8, !dbg !4072
  %33 = load i64, i64* %new.addr.i.i.i, align 8, !dbg !4072
  store i64 %33, i64* %__new.i.i.i, align 8, !dbg !4072
  %34 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i5.i.i, align 8, !dbg !4072
  %counter.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %34, i32 0, i32 0, !dbg !4072
  store i64* %counter.i.i.i, i64** %__ptr.i.i.i, align 8, !dbg !4072
  %35 = load i64*, i64** %__ptr.i.i.i, align 8, !dbg !4072
  %36 = load i64, i64* %__old.i.i.i, align 8, !dbg !4072
  %37 = load i64, i64* %__new.i.i.i, align 8, !dbg !4072
  %38 = call { i8, i64 } asm sideeffect "cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %35, i64 %37, i64* %35, i64 %36) #5, !dbg !4072, !srcloc !4154
  %asmresult.i.i.i = extractvalue { i8, i64 } %38, 0, !dbg !4072
  %asmresult1.i.i.i = extractvalue { i8, i64 } %38, 1, !dbg !4072
  store i8 %asmresult.i.i.i, i8* %success.i.i.i, align 1, !dbg !4072
  store i64 %asmresult1.i.i.i, i64* %__old.i.i.i, align 8, !dbg !4072
  %39 = load i8, i8* %success.i.i.i, align 1, !dbg !4155
  %tobool.i.i.i = trunc i8 %39 to i1, !dbg !4155
  %lnot.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !4155
  %lnot3.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !4155
  %lnot.ext.i.i.i = zext i1 %lnot3.i.i.i to i32, !dbg !4155
  %conv.i6.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !4155
  br i1 %lnot3.i.i.i, label %if.then.i.i.i, label %atomic_long_try_cmpxchg.exit, !dbg !4072

if.then.i.i.i:                                    ; preds = %while.body
  %40 = load i64, i64* %__old.i.i.i, align 8, !dbg !4155
  %41 = load i64*, i64** %_old.i.i.i, align 8, !dbg !4155
  store i64 %40, i64* %41, align 8, !dbg !4155
  br label %atomic_long_try_cmpxchg.exit, !dbg !4155

atomic_long_try_cmpxchg.exit:                     ; preds = %while.body, %if.then.i.i.i
  %42 = load i8, i8* %success.i.i.i, align 1, !dbg !4072
  %tobool5.i.i.i = trunc i8 %42 to i1, !dbg !4072
  %lnot6.i.i.i = xor i1 %tobool5.i.i.i, true, !dbg !4072
  %lnot.ext9.i.i.i = zext i1 %tobool5.i.i.i to i32, !dbg !4072
  %conv10.i.i.i = sext i32 %lnot.ext9.i.i.i to i64, !dbg !4072
  store i64 %conv10.i.i.i, i64* %tmp.i.i.i, align 8, !dbg !4155
  %43 = load i64, i64* %tmp.i.i.i, align 8, !dbg !4072
  %tobool11.i.i.i = icmp ne i64 %43, 0, !dbg !4157
  br i1 %tobool11.i.i.i, label %if.then, label %if.end, !dbg !4158

if.then:                                          ; preds = %atomic_long_try_cmpxchg.exit
  br label %do.body, !dbg !4159

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4161

do.end:                                           ; preds = %do.body
  br label %do.body4, !dbg !4163

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !4164

do.end5:                                          ; preds = %do.body4
  store i32 1, i32* %retval, align 4, !dbg !4166
  br label %return, !dbg !4166

if.end:                                           ; preds = %atomic_long_try_cmpxchg.exit
  br label %while.cond, !dbg !4131, !llvm.loop !4167

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !4169
  br label %return, !dbg !4169

return:                                           ; preds = %while.end, %do.end5
  %44 = load i32, i32* %retval, align 4, !dbg !4170
  ret i32 %44, !dbg !4170
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ldsem_down_write(%struct.ld_semaphore* %sem, i64 %timeout) #0 section ".sched.text" !dbg !4171 {
entry:
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %timeout.addr = alloca i64, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !4172, metadata !DIExpression()), !dbg !4173
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !4174, metadata !DIExpression()), !dbg !4175
  br label %do.body, !dbg !4176

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4177

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4179

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !4177

do.end2:                                          ; preds = %do.end
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4181
  %1 = load i64, i64* %timeout.addr, align 8, !dbg !4182
  %call = call i32 @__ldsem_down_write_nested(%struct.ld_semaphore* %0, i32 0, i64 %1) #7, !dbg !4183
  ret i32 %call, !dbg !4184
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__ldsem_down_write_nested(%struct.ld_semaphore* %sem, i32 %subclass, i64 %timeout) #0 !dbg !4185 {
entry:
  %i.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i.i, metadata !3965, metadata !DIExpression()), !dbg !4186
  %v.addr.i1.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i1.i.i, metadata !3978, metadata !DIExpression()), !dbg !4190
  %__ret.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret.i.i.i, metadata !3980, metadata !DIExpression()), !dbg !4191
  %tmp.i.i.i = alloca i64, align 8
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !3983, metadata !DIExpression()), !dbg !4192
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3987, metadata !DIExpression()), !dbg !4194
  %i.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i, metadata !3989, metadata !DIExpression()), !dbg !4195
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !3991, metadata !DIExpression()), !dbg !4196
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !3993, metadata !DIExpression()), !dbg !4197
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !3995, metadata !DIExpression()), !dbg !4198
  %retval = alloca i32, align 4
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %subclass.addr = alloca i32, align 4
  %timeout.addr = alloca i64, align 8
  %count = alloca i64, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !4199, metadata !DIExpression()), !dbg !4200
  store i32 %subclass, i32* %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %subclass.addr, metadata !4201, metadata !DIExpression()), !dbg !4202
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !4203, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.declare(metadata i64* %count, metadata !4205, metadata !DIExpression()), !dbg !4206
  br label %do.body, !dbg !4207

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4208

do.end:                                           ; preds = %do.body
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4210
  %count1 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 0, !dbg !4211
  store i64 -4294967295, i64* %i.addr.i, align 8
  store %struct.atomic64_t* %count1, %struct.atomic64_t** %v.addr.i, align 8
  %1 = load i64, i64* %i.addr.i, align 8, !dbg !4212
  %2 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !4213
  store i64 %1, i64* %i.addr.i.i, align 8
  store %struct.atomic64_t* %2, %struct.atomic64_t** %v.addr.i.i, align 8
  %3 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4214
  %4 = bitcast %struct.atomic64_t* %3 to i8*, !dbg !4214
  store i8* %4, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4215
  %6 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4216
  %conv.i.i.i = trunc i64 %6 to i32, !dbg !4216
  %call.i.i.i = call zeroext i1 @kasan_check_write(i8* %5, i32 %conv.i.i.i) #6, !dbg !4217
  %7 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4218
  %8 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4218
  call void @kcsan_check_access(i8* %7, i64 %8, i32 7) #6, !dbg !4218
  %9 = load i64, i64* %i.addr.i.i, align 8, !dbg !4219
  %10 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4220
  store i64 %9, i64* %i.addr.i.i.i, align 8
  store %struct.atomic64_t* %10, %struct.atomic64_t** %v.addr.i1.i.i, align 8
  %11 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !4221
  %12 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !4191
  store i64 %12, i64* %__ret.i.i.i, align 8, !dbg !4191
  %13 = load i64, i64* %__ret.i.i.i, align 8, !dbg !4191
  %14 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i1.i.i, align 8, !dbg !4191
  %counter.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %14, i32 0, i32 0, !dbg !4191
  %15 = call i64 asm sideeffect "xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %counter.i.i.i, i64 %13, i64* %counter.i.i.i) #5, !dbg !4191, !srcloc !4020
  store i64 %15, i64* %__ret.i.i.i, align 8, !dbg !4191
  %16 = load i64, i64* %__ret.i.i.i, align 8, !dbg !4191
  store i64 %16, i64* %tmp.i.i.i, align 8, !dbg !4191
  %17 = load i64, i64* %tmp.i.i.i, align 8, !dbg !4191
  %add.i.i.i = add i64 %11, %17, !dbg !4222
  store i64 %add.i.i.i, i64* %count, align 8, !dbg !4223
  %18 = load i64, i64* %count, align 8, !dbg !4224
  %and = and i64 %18, 4294967295, !dbg !4226
  %cmp = icmp ne i64 %and, 1, !dbg !4227
  br i1 %cmp, label %if.then, label %if.end8, !dbg !4228

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !4229

do.body2:                                         ; preds = %if.then
  br label %do.end3, !dbg !4231

do.end3:                                          ; preds = %do.body2
  %19 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4233
  %20 = load i64, i64* %count, align 8, !dbg !4235
  %21 = load i64, i64* %timeout.addr, align 8, !dbg !4236
  %call4 = call %struct.ld_semaphore* @down_write_failed(%struct.ld_semaphore* %19, i64 %20, i64 %21) #7, !dbg !4237
  %tobool = icmp ne %struct.ld_semaphore* %call4, null, !dbg !4237
  br i1 %tobool, label %if.end, label %if.then5, !dbg !4238

if.then5:                                         ; preds = %do.end3
  br label %do.body6, !dbg !4239

do.body6:                                         ; preds = %if.then5
  br label %do.end7, !dbg !4241

do.end7:                                          ; preds = %do.body6
  store i32 0, i32* %retval, align 4, !dbg !4243
  br label %return, !dbg !4243

if.end:                                           ; preds = %do.end3
  br label %if.end8, !dbg !4244

if.end8:                                          ; preds = %if.end, %do.end
  br label %do.body9, !dbg !4245

do.body9:                                         ; preds = %if.end8
  br label %do.end10, !dbg !4246

do.end10:                                         ; preds = %do.body9
  store i32 1, i32* %retval, align 4, !dbg !4248
  br label %return, !dbg !4248

return:                                           ; preds = %do.end10, %do.end7
  %22 = load i32, i32* %retval, align 4, !dbg !4249
  ret i32 %22, !dbg !4249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ldsem_down_write_trylock(%struct.ld_semaphore* %sem) #0 !dbg !4250 {
entry:
  %v.addr.i5.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i5.i.i, metadata !4051, metadata !DIExpression()), !dbg !4251
  %old.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i.i, metadata !4066, metadata !DIExpression()), !dbg !4257
  %new.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i.i, metadata !4068, metadata !DIExpression()), !dbg !4258
  %success.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i, metadata !4070, metadata !DIExpression()), !dbg !4259
  %_old.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %_old.i.i.i, metadata !4073, metadata !DIExpression()), !dbg !4259
  %__old.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__old.i.i.i, metadata !4074, metadata !DIExpression()), !dbg !4259
  %__new.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__new.i.i.i, metadata !4075, metadata !DIExpression()), !dbg !4259
  %__ptr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__ptr.i.i.i, metadata !4076, metadata !DIExpression()), !dbg !4259
  %tmp.i.i.i = alloca i64, align 8
  %v.addr.i1.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i1.i.i, metadata !3983, metadata !DIExpression()), !dbg !4260
  %size.addr.i2.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i2.i.i, metadata !3987, metadata !DIExpression()), !dbg !4262
  %v.addr.i.i.i6 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i6, metadata !3983, metadata !DIExpression()), !dbg !4263
  %size.addr.i.i.i7 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i7, metadata !3987, metadata !DIExpression()), !dbg !4265
  %v.addr.i.i8 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i8, metadata !4083, metadata !DIExpression()), !dbg !4266
  %old.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i, metadata !4085, metadata !DIExpression()), !dbg !4267
  %new.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i, metadata !4087, metadata !DIExpression()), !dbg !4268
  %v.addr.i9 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i9, metadata !4089, metadata !DIExpression()), !dbg !4269
  %old.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i, metadata !4091, metadata !DIExpression()), !dbg !4270
  %new.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i, metadata !4093, metadata !DIExpression()), !dbg !4271
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !4095, metadata !DIExpression()), !dbg !4272
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4111, metadata !DIExpression()), !dbg !4276
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !4113, metadata !DIExpression()), !dbg !4277
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !4115, metadata !DIExpression()), !dbg !4278
  %retval = alloca i32, align 4
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %count = alloca i64, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.declare(metadata i64* %count, metadata !4281, metadata !DIExpression()), !dbg !4282
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4283
  %count1 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 0, !dbg !4284
  store %struct.atomic64_t* %count1, %struct.atomic64_t** %v.addr.i, align 8
  %1 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !4285
  store %struct.atomic64_t* %1, %struct.atomic64_t** %v.addr.i.i, align 8
  %2 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4286
  %3 = bitcast %struct.atomic64_t* %2 to i8*, !dbg !4286
  store i8* %3, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4287
  %5 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4288
  %conv.i.i.i = trunc i64 %5 to i32, !dbg !4288
  %call.i.i.i = call zeroext i1 @kasan_check_read(i8* %4, i32 %conv.i.i.i) #6, !dbg !4289
  %6 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4290
  %7 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4290
  call void @kcsan_check_access(i8* %6, i64 %7, i32 4) #6, !dbg !4290
  %8 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4291
  %call.i.i = call i64 @arch_atomic64_read(%struct.atomic64_t* %8) #6, !dbg !4292
  store i64 %call.i.i, i64* %count, align 8, !dbg !4282
  br label %while.cond, !dbg !4293

while.cond:                                       ; preds = %if.end, %entry
  %9 = load i64, i64* %count, align 8, !dbg !4294
  %and = and i64 %9, 4294967295, !dbg !4295
  %cmp = icmp eq i64 %and, 0, !dbg !4296
  br i1 %cmp, label %while.body, label %while.end, !dbg !4293

while.body:                                       ; preds = %while.cond
  %10 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4297
  %count2 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %10, i32 0, i32 0, !dbg !4298
  %11 = load i64, i64* %count, align 8, !dbg !4299
  %add = add i64 %11, -4294967295, !dbg !4300
  store %struct.atomic64_t* %count2, %struct.atomic64_t** %v.addr.i9, align 8
  store i64* %count, i64** %old.addr.i, align 8
  store i64 %add, i64* %new.addr.i, align 8
  %12 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i9, align 8, !dbg !4301
  %13 = load i64*, i64** %old.addr.i, align 8, !dbg !4302
  %14 = load i64, i64* %new.addr.i, align 8, !dbg !4303
  store %struct.atomic64_t* %12, %struct.atomic64_t** %v.addr.i.i8, align 8
  store i64* %13, i64** %old.addr.i.i, align 8
  store i64 %14, i64* %new.addr.i.i, align 8
  %15 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i8, align 8, !dbg !4304
  %16 = bitcast %struct.atomic64_t* %15 to i8*, !dbg !4304
  store i8* %16, i8** %v.addr.i.i.i6, align 8
  store i64 8, i64* %size.addr.i.i.i7, align 8
  %17 = load i8*, i8** %v.addr.i.i.i6, align 8, !dbg !4305
  %18 = load i64, i64* %size.addr.i.i.i7, align 8, !dbg !4306
  %conv.i.i.i10 = trunc i64 %18 to i32, !dbg !4306
  %call.i.i.i11 = call zeroext i1 @kasan_check_write(i8* %17, i32 %conv.i.i.i10) #6, !dbg !4307
  %19 = load i8*, i8** %v.addr.i.i.i6, align 8, !dbg !4308
  %20 = load i64, i64* %size.addr.i.i.i7, align 8, !dbg !4308
  call void @kcsan_check_access(i8* %19, i64 %20, i32 7) #6, !dbg !4308
  %21 = load i64*, i64** %old.addr.i.i, align 8, !dbg !4309
  %22 = bitcast i64* %21 to i8*, !dbg !4309
  store i8* %22, i8** %v.addr.i1.i.i, align 8
  store i64 8, i64* %size.addr.i2.i.i, align 8
  %23 = load i8*, i8** %v.addr.i1.i.i, align 8, !dbg !4310
  %24 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !4311
  %conv.i3.i.i = trunc i64 %24 to i32, !dbg !4311
  %call.i4.i.i = call zeroext i1 @kasan_check_write(i8* %23, i32 %conv.i3.i.i) #6, !dbg !4312
  %25 = load i8*, i8** %v.addr.i1.i.i, align 8, !dbg !4313
  %26 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !4313
  call void @kcsan_check_access(i8* %25, i64 %26, i32 7) #6, !dbg !4313
  %27 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i8, align 8, !dbg !4314
  %28 = load i64*, i64** %old.addr.i.i, align 8, !dbg !4315
  %29 = load i64, i64* %new.addr.i.i, align 8, !dbg !4316
  store %struct.atomic64_t* %27, %struct.atomic64_t** %v.addr.i5.i.i, align 8
  store i64* %28, i64** %old.addr.i.i.i, align 8
  store i64 %29, i64* %new.addr.i.i.i, align 8
  %30 = load i64*, i64** %old.addr.i.i.i, align 8, !dbg !4259
  store i64* %30, i64** %_old.i.i.i, align 8, !dbg !4259
  %31 = load i64*, i64** %_old.i.i.i, align 8, !dbg !4259
  %32 = load i64, i64* %31, align 8, !dbg !4259
  store i64 %32, i64* %__old.i.i.i, align 8, !dbg !4259
  %33 = load i64, i64* %new.addr.i.i.i, align 8, !dbg !4259
  store i64 %33, i64* %__new.i.i.i, align 8, !dbg !4259
  %34 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i5.i.i, align 8, !dbg !4259
  %counter.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %34, i32 0, i32 0, !dbg !4259
  store i64* %counter.i.i.i, i64** %__ptr.i.i.i, align 8, !dbg !4259
  %35 = load i64*, i64** %__ptr.i.i.i, align 8, !dbg !4259
  %36 = load i64, i64* %__old.i.i.i, align 8, !dbg !4259
  %37 = load i64, i64* %__new.i.i.i, align 8, !dbg !4259
  %38 = call { i8, i64 } asm sideeffect "cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %35, i64 %37, i64* %35, i64 %36) #5, !dbg !4259, !srcloc !4154
  %asmresult.i.i.i = extractvalue { i8, i64 } %38, 0, !dbg !4259
  %asmresult1.i.i.i = extractvalue { i8, i64 } %38, 1, !dbg !4259
  store i8 %asmresult.i.i.i, i8* %success.i.i.i, align 1, !dbg !4259
  store i64 %asmresult1.i.i.i, i64* %__old.i.i.i, align 8, !dbg !4259
  %39 = load i8, i8* %success.i.i.i, align 1, !dbg !4317
  %tobool.i.i.i = trunc i8 %39 to i1, !dbg !4317
  %lnot.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !4317
  %lnot3.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !4317
  %lnot.ext.i.i.i = zext i1 %lnot3.i.i.i to i32, !dbg !4317
  %conv.i6.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !4317
  br i1 %lnot3.i.i.i, label %if.then.i.i.i, label %atomic_long_try_cmpxchg.exit, !dbg !4259

if.then.i.i.i:                                    ; preds = %while.body
  %40 = load i64, i64* %__old.i.i.i, align 8, !dbg !4317
  %41 = load i64*, i64** %_old.i.i.i, align 8, !dbg !4317
  store i64 %40, i64* %41, align 8, !dbg !4317
  br label %atomic_long_try_cmpxchg.exit, !dbg !4317

atomic_long_try_cmpxchg.exit:                     ; preds = %while.body, %if.then.i.i.i
  %42 = load i8, i8* %success.i.i.i, align 1, !dbg !4259
  %tobool5.i.i.i = trunc i8 %42 to i1, !dbg !4259
  %lnot6.i.i.i = xor i1 %tobool5.i.i.i, true, !dbg !4259
  %lnot.ext9.i.i.i = zext i1 %tobool5.i.i.i to i32, !dbg !4259
  %conv10.i.i.i = sext i32 %lnot.ext9.i.i.i to i64, !dbg !4259
  store i64 %conv10.i.i.i, i64* %tmp.i.i.i, align 8, !dbg !4317
  %43 = load i64, i64* %tmp.i.i.i, align 8, !dbg !4259
  %tobool11.i.i.i = icmp ne i64 %43, 0, !dbg !4318
  br i1 %tobool11.i.i.i, label %if.then, label %if.end, !dbg !4319

if.then:                                          ; preds = %atomic_long_try_cmpxchg.exit
  br label %do.body, !dbg !4320

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4322

do.end:                                           ; preds = %do.body
  br label %do.body4, !dbg !4324

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !4325

do.end5:                                          ; preds = %do.body4
  store i32 1, i32* %retval, align 4, !dbg !4327
  br label %return, !dbg !4327

if.end:                                           ; preds = %atomic_long_try_cmpxchg.exit
  br label %while.cond, !dbg !4293, !llvm.loop !4328

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !4330
  br label %return, !dbg !4330

return:                                           ; preds = %while.end, %do.end5
  %44 = load i32, i32* %retval, align 4, !dbg !4331
  ret i32 %44, !dbg !4331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ldsem_up_read(%struct.ld_semaphore* %sem) #0 !dbg !4332 {
entry:
  %i.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i.i, metadata !3965, metadata !DIExpression()), !dbg !4335
  %v.addr.i1.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i1.i.i, metadata !3978, metadata !DIExpression()), !dbg !4339
  %__ret.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret.i.i.i, metadata !3980, metadata !DIExpression()), !dbg !4340
  %tmp.i.i.i = alloca i64, align 8
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !3983, metadata !DIExpression()), !dbg !4341
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3987, metadata !DIExpression()), !dbg !4343
  %i.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i, metadata !3989, metadata !DIExpression()), !dbg !4344
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !3991, metadata !DIExpression()), !dbg !4345
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !3993, metadata !DIExpression()), !dbg !4346
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !3995, metadata !DIExpression()), !dbg !4347
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %count = alloca i64, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.declare(metadata i64* %count, metadata !4350, metadata !DIExpression()), !dbg !4351
  br label %do.body, !dbg !4352

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4353

do.end:                                           ; preds = %do.body
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4355
  %count1 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 0, !dbg !4356
  store i64 -1, i64* %i.addr.i, align 8
  store %struct.atomic64_t* %count1, %struct.atomic64_t** %v.addr.i, align 8
  %1 = load i64, i64* %i.addr.i, align 8, !dbg !4357
  %2 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !4358
  store i64 %1, i64* %i.addr.i.i, align 8
  store %struct.atomic64_t* %2, %struct.atomic64_t** %v.addr.i.i, align 8
  %3 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4359
  %4 = bitcast %struct.atomic64_t* %3 to i8*, !dbg !4359
  store i8* %4, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4360
  %6 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4361
  %conv.i.i.i = trunc i64 %6 to i32, !dbg !4361
  %call.i.i.i = call zeroext i1 @kasan_check_write(i8* %5, i32 %conv.i.i.i) #6, !dbg !4362
  %7 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4363
  %8 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4363
  call void @kcsan_check_access(i8* %7, i64 %8, i32 7) #6, !dbg !4363
  %9 = load i64, i64* %i.addr.i.i, align 8, !dbg !4364
  %10 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4365
  store i64 %9, i64* %i.addr.i.i.i, align 8
  store %struct.atomic64_t* %10, %struct.atomic64_t** %v.addr.i1.i.i, align 8
  %11 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !4366
  %12 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !4340
  store i64 %12, i64* %__ret.i.i.i, align 8, !dbg !4340
  %13 = load i64, i64* %__ret.i.i.i, align 8, !dbg !4340
  %14 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i1.i.i, align 8, !dbg !4340
  %counter.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %14, i32 0, i32 0, !dbg !4340
  %15 = call i64 asm sideeffect "xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %counter.i.i.i, i64 %13, i64* %counter.i.i.i) #5, !dbg !4340, !srcloc !4020
  store i64 %15, i64* %__ret.i.i.i, align 8, !dbg !4340
  %16 = load i64, i64* %__ret.i.i.i, align 8, !dbg !4340
  store i64 %16, i64* %tmp.i.i.i, align 8, !dbg !4340
  %17 = load i64, i64* %tmp.i.i.i, align 8, !dbg !4340
  %add.i.i.i = add i64 %11, %17, !dbg !4367
  store i64 %add.i.i.i, i64* %count, align 8, !dbg !4368
  %18 = load i64, i64* %count, align 8, !dbg !4369
  %cmp = icmp slt i64 %18, 0, !dbg !4371
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4372

land.lhs.true:                                    ; preds = %do.end
  %19 = load i64, i64* %count, align 8, !dbg !4373
  %and = and i64 %19, 4294967295, !dbg !4374
  %cmp2 = icmp eq i64 %and, 0, !dbg !4375
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4376

if.then:                                          ; preds = %land.lhs.true
  %20 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4377
  call void @ldsem_wake(%struct.ld_semaphore* %20) #7, !dbg !4378
  br label %if.end, !dbg !4378

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  ret void, !dbg !4379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ldsem_wake(%struct.ld_semaphore* %sem) #0 !dbg !4380 {
entry:
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy17 = alloca i64, align 8
  %__dummy218 = alloca i64, align 8
  %tmp21 = alloca i32, align 4
  %__dummy26 = alloca i64, align 8
  %__dummy227 = alloca i64, align 8
  %tmp30 = alloca i32, align 4
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !4381, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4383, metadata !DIExpression()), !dbg !4384
  br label %do.body, !dbg !4385

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4386, metadata !DIExpression()), !dbg !4389
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4390, metadata !DIExpression()), !dbg !4389
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4389
  %conv = zext i1 %cmp to i32, !dbg !4389
  store i32 1, i32* %tmp, align 4, !dbg !4389
  %0 = load i32, i32* %tmp, align 4, !dbg !4389
  br label %do.body1, !dbg !4391

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !4392

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4394

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !4396, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !4400, metadata !DIExpression()), !dbg !4399
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !4399
  %conv7 = zext i1 %cmp6 to i32, !dbg !4399
  store i32 1, i32* %tmp8, align 4, !dbg !4399
  %1 = load i32, i32* %tmp8, align 4, !dbg !4399
  %call = call i64 @arch_local_irq_save() #7, !dbg !4401
  store i64 %call, i64* %flags, align 8, !dbg !4401
  br label %do.end, !dbg !4401

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !4394

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !4392

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4402, !srcloc !4404
  br label %do.body11, !dbg !4402

do.body11:                                        ; preds = %do.body10
  %2 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4405
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %2, i32 0, i32 1, !dbg !4405
  br label %do.end12, !dbg !4405

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4402

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !4392

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !4391

do.end15:                                         ; preds = %do.end14
  %3 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4407
  call void @__ldsem_wake(%struct.ld_semaphore* %3) #7, !dbg !4408
  br label %do.body16, !dbg !4409

do.body16:                                        ; preds = %do.end15
  call void @llvm.dbg.declare(metadata i64* %__dummy17, metadata !4410, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.declare(metadata i64* %__dummy218, metadata !4414, metadata !DIExpression()), !dbg !4413
  %cmp19 = icmp eq i64* %__dummy17, %__dummy218, !dbg !4413
  %conv20 = zext i1 %cmp19 to i32, !dbg !4413
  store i32 1, i32* %tmp21, align 4, !dbg !4413
  %4 = load i32, i32* %tmp21, align 4, !dbg !4413
  br label %do.body22, !dbg !4415

do.body22:                                        ; preds = %do.body16
  br label %do.body23, !dbg !4416

do.body23:                                        ; preds = %do.body22
  br label %do.body24, !dbg !4418

do.body24:                                        ; preds = %do.body23
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4420, metadata !DIExpression()), !dbg !4423
  call void @llvm.dbg.declare(metadata i64* %__dummy227, metadata !4424, metadata !DIExpression()), !dbg !4423
  %cmp28 = icmp eq i64* %__dummy26, %__dummy227, !dbg !4423
  %conv29 = zext i1 %cmp28 to i32, !dbg !4423
  store i32 1, i32* %tmp30, align 4, !dbg !4423
  %5 = load i32, i32* %tmp30, align 4, !dbg !4423
  %6 = load i64, i64* %flags, align 8, !dbg !4425
  call void @arch_local_irq_restore(i64 %6) #7, !dbg !4425
  br label %do.end31, !dbg !4425

do.end31:                                         ; preds = %do.body24
  br label %do.end32, !dbg !4418

do.end32:                                         ; preds = %do.end31
  br label %do.body33, !dbg !4416

do.body33:                                        ; preds = %do.end32
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4426, !srcloc !4428
  br label %do.body34, !dbg !4426

do.body34:                                        ; preds = %do.body33
  %7 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4429
  %wait_lock35 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %7, i32 0, i32 1, !dbg !4429
  br label %do.end36, !dbg !4429

do.end36:                                         ; preds = %do.body34
  br label %do.end37, !dbg !4426

do.end37:                                         ; preds = %do.end36
  br label %do.end38, !dbg !4416

do.end38:                                         ; preds = %do.end37
  br label %do.end39, !dbg !4415

do.end39:                                         ; preds = %do.end38
  ret void, !dbg !4431
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ldsem_up_write(%struct.ld_semaphore* %sem) #0 !dbg !4432 {
entry:
  %i.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i.i, metadata !3965, metadata !DIExpression()), !dbg !4433
  %v.addr.i1.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i1.i.i, metadata !3978, metadata !DIExpression()), !dbg !4437
  %__ret.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret.i.i.i, metadata !3980, metadata !DIExpression()), !dbg !4438
  %tmp.i.i.i = alloca i64, align 8
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !3983, metadata !DIExpression()), !dbg !4439
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3987, metadata !DIExpression()), !dbg !4441
  %i.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i, metadata !3989, metadata !DIExpression()), !dbg !4442
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !3991, metadata !DIExpression()), !dbg !4443
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !3993, metadata !DIExpression()), !dbg !4444
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !3995, metadata !DIExpression()), !dbg !4445
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %count = alloca i64, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !4446, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.declare(metadata i64* %count, metadata !4448, metadata !DIExpression()), !dbg !4449
  br label %do.body, !dbg !4450

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4451

do.end:                                           ; preds = %do.body
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4453
  %count1 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 0, !dbg !4454
  store i64 4294967295, i64* %i.addr.i, align 8
  store %struct.atomic64_t* %count1, %struct.atomic64_t** %v.addr.i, align 8
  %1 = load i64, i64* %i.addr.i, align 8, !dbg !4455
  %2 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !4456
  store i64 %1, i64* %i.addr.i.i, align 8
  store %struct.atomic64_t* %2, %struct.atomic64_t** %v.addr.i.i, align 8
  %3 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4457
  %4 = bitcast %struct.atomic64_t* %3 to i8*, !dbg !4457
  store i8* %4, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4458
  %6 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4459
  %conv.i.i.i = trunc i64 %6 to i32, !dbg !4459
  %call.i.i.i = call zeroext i1 @kasan_check_write(i8* %5, i32 %conv.i.i.i) #6, !dbg !4460
  %7 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4461
  %8 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4461
  call void @kcsan_check_access(i8* %7, i64 %8, i32 7) #6, !dbg !4461
  %9 = load i64, i64* %i.addr.i.i, align 8, !dbg !4462
  %10 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4463
  store i64 %9, i64* %i.addr.i.i.i, align 8
  store %struct.atomic64_t* %10, %struct.atomic64_t** %v.addr.i1.i.i, align 8
  %11 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !4464
  %12 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !4438
  store i64 %12, i64* %__ret.i.i.i, align 8, !dbg !4438
  %13 = load i64, i64* %__ret.i.i.i, align 8, !dbg !4438
  %14 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i1.i.i, align 8, !dbg !4438
  %counter.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %14, i32 0, i32 0, !dbg !4438
  %15 = call i64 asm sideeffect "xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %counter.i.i.i, i64 %13, i64* %counter.i.i.i) #5, !dbg !4438, !srcloc !4020
  store i64 %15, i64* %__ret.i.i.i, align 8, !dbg !4438
  %16 = load i64, i64* %__ret.i.i.i, align 8, !dbg !4438
  store i64 %16, i64* %tmp.i.i.i, align 8, !dbg !4438
  %17 = load i64, i64* %tmp.i.i.i, align 8, !dbg !4438
  %add.i.i.i = add i64 %11, %17, !dbg !4465
  store i64 %add.i.i.i, i64* %count, align 8, !dbg !4466
  %18 = load i64, i64* %count, align 8, !dbg !4467
  %cmp = icmp slt i64 %18, 0, !dbg !4469
  br i1 %cmp, label %if.then, label %if.end, !dbg !4470

if.then:                                          ; preds = %do.end
  %19 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4471
  call void @ldsem_wake(%struct.ld_semaphore* %19) #7, !dbg !4472
  br label %if.end, !dbg !4472

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !4473
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_atomic64_set(%struct.atomic64_t* %v, i64 %i) #0 !dbg !4474 {
entry:
  %v.addr = alloca %struct.atomic64_t*, align 8
  %i.addr = alloca i64, align 8
  store %struct.atomic64_t* %v, %struct.atomic64_t** %v.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr, metadata !4475, metadata !DIExpression()), !dbg !4476
  store i64 %i, i64* %i.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr, metadata !4477, metadata !DIExpression()), !dbg !4478
  br label %do.body, !dbg !4479

do.body:                                          ; preds = %entry
  %0 = load i64, i64* %i.addr, align 8, !dbg !4480
  %1 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr, align 8, !dbg !4480
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %1, i32 0, i32 0, !dbg !4480
  store volatile i64 %0, i64* %counter, align 8, !dbg !4480
  br label %do.end, !dbg !4480

do.end:                                           ; preds = %do.body
  ret void, !dbg !4482
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4483 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4487, metadata !DIExpression()), !dbg !4488
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4489, metadata !DIExpression()), !dbg !4490
  ret i1 true, !dbg !4491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4492 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  ret void, !dbg !4502
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.ld_semaphore* @down_read_failed(%struct.ld_semaphore* %sem, i64 %count, i64 %timeout) #0 section ".sched.text" !dbg !4503 {
entry:
  %i.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i.i, metadata !3965, metadata !DIExpression()), !dbg !4506
  %v.addr.i1.i.i136 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i1.i.i136, metadata !3978, metadata !DIExpression()), !dbg !4514
  %__ret.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret.i.i.i, metadata !3980, metadata !DIExpression()), !dbg !4515
  %tmp.i.i.i137 = alloca i64, align 8
  %v.addr.i.i.i138 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i138, metadata !3983, metadata !DIExpression()), !dbg !4516
  %size.addr.i.i.i139 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i139, metadata !3987, metadata !DIExpression()), !dbg !4518
  %i.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i, metadata !3989, metadata !DIExpression()), !dbg !4519
  %v.addr.i.i140 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i140, metadata !3991, metadata !DIExpression()), !dbg !4520
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !3993, metadata !DIExpression()), !dbg !4521
  %v.addr.i141 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i141, metadata !3995, metadata !DIExpression()), !dbg !4522
  %pscr_ret__.i131 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i131, metadata !4523, metadata !DIExpression()), !dbg !4529
  %__vpp_verify.i132 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i132, metadata !4531, metadata !DIExpression()), !dbg !4533
  %pfo_val__.i133 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i133, metadata !4534, metadata !DIExpression()), !dbg !4536
  %tmp.i134 = alloca %struct.task_struct*, align 8
  %tmp1.i135 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i126 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i126, metadata !4523, metadata !DIExpression()), !dbg !4537
  %__vpp_verify.i127 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i127, metadata !4531, metadata !DIExpression()), !dbg !4545
  %pfo_val__.i128 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i128, metadata !4534, metadata !DIExpression()), !dbg !4546
  %tmp.i129 = alloca %struct.task_struct*, align 8
  %tmp1.i130 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i121 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i121, metadata !4523, metadata !DIExpression()), !dbg !4547
  %__vpp_verify.i122 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i122, metadata !4531, metadata !DIExpression()), !dbg !4549
  %pfo_val__.i123 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i123, metadata !4534, metadata !DIExpression()), !dbg !4550
  %tmp.i124 = alloca %struct.task_struct*, align 8
  %tmp1.i125 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4523, metadata !DIExpression()), !dbg !4551
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4531, metadata !DIExpression()), !dbg !4553
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4534, metadata !DIExpression()), !dbg !4554
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %v.addr.i5.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i5.i.i, metadata !4051, metadata !DIExpression()), !dbg !4555
  %old.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i.i, metadata !4066, metadata !DIExpression()), !dbg !4561
  %new.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i.i, metadata !4068, metadata !DIExpression()), !dbg !4562
  %success.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i, metadata !4070, metadata !DIExpression()), !dbg !4563
  %_old.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %_old.i.i.i, metadata !4073, metadata !DIExpression()), !dbg !4563
  %__old.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__old.i.i.i, metadata !4074, metadata !DIExpression()), !dbg !4563
  %__new.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__new.i.i.i, metadata !4075, metadata !DIExpression()), !dbg !4563
  %__ptr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__ptr.i.i.i, metadata !4076, metadata !DIExpression()), !dbg !4563
  %tmp.i.i.i = alloca i64, align 8
  %v.addr.i1.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i1.i.i, metadata !3983, metadata !DIExpression()), !dbg !4564
  %size.addr.i2.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i2.i.i, metadata !3987, metadata !DIExpression()), !dbg !4566
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !3983, metadata !DIExpression()), !dbg !4567
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3987, metadata !DIExpression()), !dbg !4569
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !4083, metadata !DIExpression()), !dbg !4570
  %old.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i, metadata !4085, metadata !DIExpression()), !dbg !4571
  %new.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i, metadata !4087, metadata !DIExpression()), !dbg !4572
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !4089, metadata !DIExpression()), !dbg !4573
  %old.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i, metadata !4091, metadata !DIExpression()), !dbg !4574
  %new.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i, metadata !4093, metadata !DIExpression()), !dbg !4575
  %retval = alloca %struct.ld_semaphore*, align 8
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %count.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  %waiter = alloca %struct.ldsem_waiter, align 8
  %adjust = alloca i64, align 8
  %___p1 = alloca %struct.task_struct*, align 8
  %tmp = alloca %struct.task_struct*, align 8
  %tmp61 = alloca %struct.task_struct*, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !4576, metadata !DIExpression()), !dbg !4577
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !4578, metadata !DIExpression()), !dbg !4579
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !4580, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.declare(metadata %struct.ldsem_waiter* %waiter, metadata !4582, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.declare(metadata i64* %adjust, metadata !4584, metadata !DIExpression()), !dbg !4585
  store i64 -4294967297, i64* %adjust, align 8, !dbg !4585
  br label %do.body, !dbg !4586

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4587

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #7, !dbg !4589
  br label %do.end, !dbg !4589

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4587

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4591, !srcloc !4593
  br label %do.body3, !dbg !4591

do.body3:                                         ; preds = %do.body2
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4594
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 1, !dbg !4594
  br label %do.end4, !dbg !4594

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !4591

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !4587

do.end6:                                          ; preds = %do.end5
  br label %do.body7, !dbg !4596

do.body7:                                         ; preds = %do.cond, %do.end6
  %1 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4597
  %count8 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %1, i32 0, i32 0, !dbg !4598
  %2 = load i64, i64* %count.addr, align 8, !dbg !4599
  %3 = load i64, i64* %adjust, align 8, !dbg !4600
  %add = add i64 %2, %3, !dbg !4601
  store %struct.atomic64_t* %count8, %struct.atomic64_t** %v.addr.i, align 8
  store i64* %count.addr, i64** %old.addr.i, align 8
  store i64 %add, i64* %new.addr.i, align 8
  %4 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !4602
  %5 = load i64*, i64** %old.addr.i, align 8, !dbg !4603
  %6 = load i64, i64* %new.addr.i, align 8, !dbg !4604
  store %struct.atomic64_t* %4, %struct.atomic64_t** %v.addr.i.i, align 8
  store i64* %5, i64** %old.addr.i.i, align 8
  store i64 %6, i64* %new.addr.i.i, align 8
  %7 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4605
  %8 = bitcast %struct.atomic64_t* %7 to i8*, !dbg !4605
  store i8* %8, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %9 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4606
  %10 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4607
  %conv.i.i.i = trunc i64 %10 to i32, !dbg !4607
  %call.i.i.i = call zeroext i1 @kasan_check_write(i8* %9, i32 %conv.i.i.i) #6, !dbg !4608
  %11 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !4609
  %12 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4609
  call void @kcsan_check_access(i8* %11, i64 %12, i32 7) #6, !dbg !4609
  %13 = load i64*, i64** %old.addr.i.i, align 8, !dbg !4610
  %14 = bitcast i64* %13 to i8*, !dbg !4610
  store i8* %14, i8** %v.addr.i1.i.i, align 8
  store i64 8, i64* %size.addr.i2.i.i, align 8
  %15 = load i8*, i8** %v.addr.i1.i.i, align 8, !dbg !4611
  %16 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !4612
  %conv.i3.i.i = trunc i64 %16 to i32, !dbg !4612
  %call.i4.i.i = call zeroext i1 @kasan_check_write(i8* %15, i32 %conv.i3.i.i) #6, !dbg !4613
  %17 = load i8*, i8** %v.addr.i1.i.i, align 8, !dbg !4614
  %18 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !4614
  call void @kcsan_check_access(i8* %17, i64 %18, i32 7) #6, !dbg !4614
  %19 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !4615
  %20 = load i64*, i64** %old.addr.i.i, align 8, !dbg !4616
  %21 = load i64, i64* %new.addr.i.i, align 8, !dbg !4617
  store %struct.atomic64_t* %19, %struct.atomic64_t** %v.addr.i5.i.i, align 8
  store i64* %20, i64** %old.addr.i.i.i, align 8
  store i64 %21, i64* %new.addr.i.i.i, align 8
  %22 = load i64*, i64** %old.addr.i.i.i, align 8, !dbg !4563
  store i64* %22, i64** %_old.i.i.i, align 8, !dbg !4563
  %23 = load i64*, i64** %_old.i.i.i, align 8, !dbg !4563
  %24 = load i64, i64* %23, align 8, !dbg !4563
  store i64 %24, i64* %__old.i.i.i, align 8, !dbg !4563
  %25 = load i64, i64* %new.addr.i.i.i, align 8, !dbg !4563
  store i64 %25, i64* %__new.i.i.i, align 8, !dbg !4563
  %26 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i5.i.i, align 8, !dbg !4563
  %counter.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %26, i32 0, i32 0, !dbg !4563
  store i64* %counter.i.i.i, i64** %__ptr.i.i.i, align 8, !dbg !4563
  %27 = load i64*, i64** %__ptr.i.i.i, align 8, !dbg !4563
  %28 = load i64, i64* %__old.i.i.i, align 8, !dbg !4563
  %29 = load i64, i64* %__new.i.i.i, align 8, !dbg !4563
  %30 = call { i8, i64 } asm sideeffect "cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %27, i64 %29, i64* %27, i64 %28) #5, !dbg !4563, !srcloc !4154
  %asmresult.i.i.i = extractvalue { i8, i64 } %30, 0, !dbg !4563
  %asmresult1.i.i.i = extractvalue { i8, i64 } %30, 1, !dbg !4563
  store i8 %asmresult.i.i.i, i8* %success.i.i.i, align 1, !dbg !4563
  store i64 %asmresult1.i.i.i, i64* %__old.i.i.i, align 8, !dbg !4563
  %31 = load i8, i8* %success.i.i.i, align 1, !dbg !4618
  %tobool.i.i.i = trunc i8 %31 to i1, !dbg !4618
  %lnot.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !4618
  %lnot3.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !4618
  %lnot.ext.i.i.i = zext i1 %lnot3.i.i.i to i32, !dbg !4618
  %conv.i6.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !4618
  br i1 %lnot3.i.i.i, label %if.then.i.i.i, label %atomic_long_try_cmpxchg.exit, !dbg !4563

if.then.i.i.i:                                    ; preds = %do.body7
  %32 = load i64, i64* %__old.i.i.i, align 8, !dbg !4618
  %33 = load i64*, i64** %_old.i.i.i, align 8, !dbg !4618
  store i64 %32, i64* %33, align 8, !dbg !4618
  br label %atomic_long_try_cmpxchg.exit, !dbg !4618

atomic_long_try_cmpxchg.exit:                     ; preds = %do.body7, %if.then.i.i.i
  %34 = load i8, i8* %success.i.i.i, align 1, !dbg !4563
  %tobool5.i.i.i = trunc i8 %34 to i1, !dbg !4563
  %lnot6.i.i.i = xor i1 %tobool5.i.i.i, true, !dbg !4563
  %lnot.ext9.i.i.i = zext i1 %tobool5.i.i.i to i32, !dbg !4563
  %conv10.i.i.i = sext i32 %lnot.ext9.i.i.i to i64, !dbg !4563
  store i64 %conv10.i.i.i, i64* %tmp.i.i.i, align 8, !dbg !4618
  %35 = load i64, i64* %tmp.i.i.i, align 8, !dbg !4563
  %tobool11.i.i.i = icmp ne i64 %35, 0, !dbg !4619
  br i1 %tobool11.i.i.i, label %if.then, label %if.end, !dbg !4620

if.then:                                          ; preds = %atomic_long_try_cmpxchg.exit
  %36 = load i64, i64* %adjust, align 8, !dbg !4621
  %37 = load i64, i64* %count.addr, align 8, !dbg !4623
  %add9 = add i64 %37, %36, !dbg !4623
  store i64 %add9, i64* %count.addr, align 8, !dbg !4623
  br label %do.end21, !dbg !4624

if.end:                                           ; preds = %atomic_long_try_cmpxchg.exit
  %38 = load i64, i64* %count.addr, align 8, !dbg !4625
  %cmp = icmp sgt i64 %38, 0, !dbg !4627
  br i1 %cmp, label %if.then10, label %if.end20, !dbg !4628

if.then10:                                        ; preds = %if.end
  br label %do.body11, !dbg !4629

do.body11:                                        ; preds = %if.then10
  br label %do.body12, !dbg !4631

do.body12:                                        ; preds = %do.body11
  call void @arch_local_irq_enable() #7, !dbg !4633
  br label %do.end13, !dbg !4633

do.end13:                                         ; preds = %do.body12
  br label %do.body14, !dbg !4631

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4635, !srcloc !4637
  br label %do.body15, !dbg !4635

do.body15:                                        ; preds = %do.body14
  %39 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4638
  %wait_lock16 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %39, i32 0, i32 1, !dbg !4638
  br label %do.end17, !dbg !4638

do.end17:                                         ; preds = %do.body15
  br label %do.end18, !dbg !4635

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4631

do.end19:                                         ; preds = %do.end18
  %40 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4640
  store %struct.ld_semaphore* %40, %struct.ld_semaphore** %retval, align 8, !dbg !4641
  br label %return, !dbg !4641

if.end20:                                         ; preds = %if.end
  br label %do.cond, !dbg !4642

do.cond:                                          ; preds = %if.end20
  br i1 true, label %do.body7, label %do.end21, !dbg !4642, !llvm.loop !4643

do.end21:                                         ; preds = %do.cond, %if.then
  %list = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %waiter, i32 0, i32 0, !dbg !4645
  %41 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4646
  %read_wait = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %41, i32 0, i32 3, !dbg !4647
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* %read_wait) #7, !dbg !4648
  %42 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4649
  %wait_readers = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %42, i32 0, i32 2, !dbg !4650
  %43 = load i32, i32* %wait_readers, align 8, !dbg !4651
  %inc = add i32 %43, 1, !dbg !4651
  store i32 %inc, i32* %wait_readers, align 8, !dbg !4651
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4553
  %44 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4553
  %45 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #8, !dbg !4554, !srcloc !4652
  store i64 %45, i64* %pfo_val__.i, align 8, !dbg !4554
  %46 = load i64, i64* %pfo_val__.i, align 8, !dbg !4554
  %47 = inttoptr i64 %46 to %struct.task_struct*, !dbg !4554
  store %struct.task_struct* %47, %struct.task_struct** %tmp.i, align 8, !dbg !4554
  %48 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4554
  store %struct.task_struct* %48, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4551
  %49 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4551
  store %struct.task_struct* %49, %struct.task_struct** %tmp1.i, align 8, !dbg !4551
  %50 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4551
  %task = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %waiter, i32 0, i32 1, !dbg !4653
  store %struct.task_struct* %50, %struct.task_struct** %task, align 8, !dbg !4654
  store i8* null, i8** %__vpp_verify.i122, align 8, !dbg !4549
  %51 = load i8*, i8** %__vpp_verify.i122, align 8, !dbg !4549
  %52 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #8, !dbg !4550, !srcloc !4652
  store i64 %52, i64* %pfo_val__.i123, align 8, !dbg !4550
  %53 = load i64, i64* %pfo_val__.i123, align 8, !dbg !4550
  %54 = inttoptr i64 %53 to %struct.task_struct*, !dbg !4550
  store %struct.task_struct* %54, %struct.task_struct** %tmp.i124, align 8, !dbg !4550
  %55 = load %struct.task_struct*, %struct.task_struct** %tmp.i124, align 8, !dbg !4550
  store %struct.task_struct* %55, %struct.task_struct** %pscr_ret__.i121, align 8, !dbg !4547
  %56 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i121, align 8, !dbg !4547
  store %struct.task_struct* %56, %struct.task_struct** %tmp1.i125, align 8, !dbg !4547
  %57 = load %struct.task_struct*, %struct.task_struct** %tmp1.i125, align 8, !dbg !4547
  %call24 = call %struct.task_struct* @get_task_struct(%struct.task_struct* %57) #7, !dbg !4655
  %58 = load i64, i64* %count.addr, align 8, !dbg !4656
  %and = and i64 %58, 4294967295, !dbg !4658
  %cmp25 = icmp eq i64 %and, 0, !dbg !4659
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !4660

if.then26:                                        ; preds = %do.end21
  %59 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4661
  call void @__ldsem_wake(%struct.ld_semaphore* %59) #7, !dbg !4662
  br label %if.end27, !dbg !4662

if.end27:                                         ; preds = %if.then26, %do.end21
  br label %do.body28, !dbg !4663

do.body28:                                        ; preds = %if.end27
  br label %do.body29, !dbg !4664

do.body29:                                        ; preds = %do.body28
  call void @arch_local_irq_enable() #7, !dbg !4666
  br label %do.end31, !dbg !4666

do.end31:                                         ; preds = %do.body29
  br label %do.body32, !dbg !4664

do.body32:                                        ; preds = %do.end31
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4668, !srcloc !4670
  br label %do.body33, !dbg !4668

do.body33:                                        ; preds = %do.body32
  %60 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4671
  %wait_lock34 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %60, i32 0, i32 1, !dbg !4671
  br label %do.end36, !dbg !4671

do.end36:                                         ; preds = %do.body33
  br label %do.end38, !dbg !4668

do.end38:                                         ; preds = %do.end36
  br label %do.end40, !dbg !4664

do.end40:                                         ; preds = %do.end38
  br label %for.cond, !dbg !4673

for.cond:                                         ; preds = %if.end66, %do.end40
  br label %do.body41, !dbg !4674

do.body41:                                        ; preds = %for.cond
  br label %do.body42, !dbg !4675

do.body42:                                        ; preds = %do.body41
  br label %do.body43, !dbg !4676

do.body43:                                        ; preds = %do.body42
  br label %do.end45, !dbg !4677

do.end45:                                         ; preds = %do.body43
  br label %do.body46, !dbg !4676

do.body46:                                        ; preds = %do.end45
  store i8* null, i8** %__vpp_verify.i127, align 8, !dbg !4545
  %61 = load i8*, i8** %__vpp_verify.i127, align 8, !dbg !4545
  %62 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #8, !dbg !4546, !srcloc !4652
  store i64 %62, i64* %pfo_val__.i128, align 8, !dbg !4546
  %63 = load i64, i64* %pfo_val__.i128, align 8, !dbg !4546
  %64 = inttoptr i64 %63 to %struct.task_struct*, !dbg !4546
  store %struct.task_struct* %64, %struct.task_struct** %tmp.i129, align 8, !dbg !4546
  %65 = load %struct.task_struct*, %struct.task_struct** %tmp.i129, align 8, !dbg !4546
  store %struct.task_struct* %65, %struct.task_struct** %pscr_ret__.i126, align 8, !dbg !4537
  %66 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i126, align 8, !dbg !4537
  store %struct.task_struct* %66, %struct.task_struct** %tmp1.i130, align 8, !dbg !4537
  %67 = load %struct.task_struct*, %struct.task_struct** %tmp1.i130, align 8, !dbg !4537
  %state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %67, i32 0, i32 1, !dbg !4679
  store volatile i64 2, i64* %state, align 16, !dbg !4679
  br label %do.end49, !dbg !4679

do.end49:                                         ; preds = %do.body46
  br label %do.end51, !dbg !4676

do.end51:                                         ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4675, !srcloc !4680
  br label %do.end53, !dbg !4675

do.end53:                                         ; preds = %do.end51
  call void @llvm.dbg.declare(metadata %struct.task_struct** %___p1, metadata !4681, metadata !DIExpression()), !dbg !4684
  br label %do.body54, !dbg !4685

do.body54:                                        ; preds = %do.end53
  br label %do.end56, !dbg !4687

do.end56:                                         ; preds = %do.body54
  %task57 = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %waiter, i32 0, i32 1, !dbg !4685
  %68 = load volatile %struct.task_struct*, %struct.task_struct** %task57, align 8, !dbg !4685
  store %struct.task_struct* %68, %struct.task_struct** %tmp, align 8, !dbg !4687
  %69 = load %struct.task_struct*, %struct.task_struct** %tmp, align 8, !dbg !4685
  store %struct.task_struct* %69, %struct.task_struct** %___p1, align 8, !dbg !4684
  br label %do.body58, !dbg !4684

do.body58:                                        ; preds = %do.end56
  br label %do.end60, !dbg !4689

do.end60:                                         ; preds = %do.body58
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4684, !srcloc !4691
  %70 = load %struct.task_struct*, %struct.task_struct** %___p1, align 8, !dbg !4684
  store %struct.task_struct* %70, %struct.task_struct** %tmp61, align 8, !dbg !4684
  %71 = load %struct.task_struct*, %struct.task_struct** %tmp61, align 8, !dbg !4684
  %tobool = icmp ne %struct.task_struct* %71, null, !dbg !4692
  br i1 %tobool, label %if.end63, label %if.then62, !dbg !4693

if.then62:                                        ; preds = %do.end60
  br label %for.end, !dbg !4694

if.end63:                                         ; preds = %do.end60
  %72 = load i64, i64* %timeout.addr, align 8, !dbg !4695
  %tobool64 = icmp ne i64 %72, 0, !dbg !4695
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !4697

if.then65:                                        ; preds = %if.end63
  br label %for.end, !dbg !4698

if.end66:                                         ; preds = %if.end63
  %73 = load i64, i64* %timeout.addr, align 8, !dbg !4699
  %call67 = call i64 @schedule_timeout(i64 %73) #7, !dbg !4700
  store i64 %call67, i64* %timeout.addr, align 8, !dbg !4701
  br label %for.cond, !dbg !4702, !llvm.loop !4703

for.end:                                          ; preds = %if.then65, %if.then62
  store i8* null, i8** %__vpp_verify.i132, align 8, !dbg !4533
  %74 = load i8*, i8** %__vpp_verify.i132, align 8, !dbg !4533
  %75 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #8, !dbg !4536, !srcloc !4652
  store i64 %75, i64* %pfo_val__.i133, align 8, !dbg !4536
  %76 = load i64, i64* %pfo_val__.i133, align 8, !dbg !4536
  %77 = inttoptr i64 %76 to %struct.task_struct*, !dbg !4536
  store %struct.task_struct* %77, %struct.task_struct** %tmp.i134, align 8, !dbg !4536
  %78 = load %struct.task_struct*, %struct.task_struct** %tmp.i134, align 8, !dbg !4536
  store %struct.task_struct* %78, %struct.task_struct** %pscr_ret__.i131, align 8, !dbg !4529
  %79 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i131, align 8, !dbg !4529
  store %struct.task_struct* %79, %struct.task_struct** %tmp1.i135, align 8, !dbg !4529
  %80 = load %struct.task_struct*, %struct.task_struct** %tmp1.i135, align 8, !dbg !4529
  %state69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 1, !dbg !4706
  store volatile i64 0, i64* %state69, align 16, !dbg !4706
  %81 = load i64, i64* %timeout.addr, align 8, !dbg !4707
  %tobool70 = icmp ne i64 %81, 0, !dbg !4707
  br i1 %tobool70, label %if.end120, label %if.then71, !dbg !4708

if.then71:                                        ; preds = %for.end
  br label %do.body72, !dbg !4709

do.body72:                                        ; preds = %if.then71
  br label %do.body73, !dbg !4710

do.body73:                                        ; preds = %do.body72
  call void @arch_local_irq_disable() #7, !dbg !4712
  br label %do.end75, !dbg !4712

do.end75:                                         ; preds = %do.body73
  br label %do.body76, !dbg !4710

do.body76:                                        ; preds = %do.end75
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4714, !srcloc !4716
  br label %do.body77, !dbg !4714

do.body77:                                        ; preds = %do.body76
  %82 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4717
  %wait_lock78 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %82, i32 0, i32 1, !dbg !4717
  br label %do.end80, !dbg !4717

do.end80:                                         ; preds = %do.body77
  br label %do.end82, !dbg !4714

do.end82:                                         ; preds = %do.end80
  br label %do.end84, !dbg !4710

do.end84:                                         ; preds = %do.end82
  %task85 = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %waiter, i32 0, i32 1, !dbg !4719
  %83 = load %struct.task_struct*, %struct.task_struct** %task85, align 8, !dbg !4719
  %tobool86 = icmp ne %struct.task_struct* %83, null, !dbg !4720
  br i1 %tobool86, label %if.then87, label %if.end106, !dbg !4721

if.then87:                                        ; preds = %do.end84
  %84 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4722
  %count88 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %84, i32 0, i32 0, !dbg !4723
  store i64 4294967296, i64* %i.addr.i, align 8
  store %struct.atomic64_t* %count88, %struct.atomic64_t** %v.addr.i141, align 8
  %85 = load i64, i64* %i.addr.i, align 8, !dbg !4724
  %86 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i141, align 8, !dbg !4725
  store i64 %85, i64* %i.addr.i.i, align 8
  store %struct.atomic64_t* %86, %struct.atomic64_t** %v.addr.i.i140, align 8
  %87 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i140, align 8, !dbg !4726
  %88 = bitcast %struct.atomic64_t* %87 to i8*, !dbg !4726
  store i8* %88, i8** %v.addr.i.i.i138, align 8
  store i64 8, i64* %size.addr.i.i.i139, align 8
  %89 = load i8*, i8** %v.addr.i.i.i138, align 8, !dbg !4727
  %90 = load i64, i64* %size.addr.i.i.i139, align 8, !dbg !4728
  %conv.i.i.i142 = trunc i64 %90 to i32, !dbg !4728
  %call.i.i.i143 = call zeroext i1 @kasan_check_write(i8* %89, i32 %conv.i.i.i142) #6, !dbg !4729
  %91 = load i8*, i8** %v.addr.i.i.i138, align 8, !dbg !4730
  %92 = load i64, i64* %size.addr.i.i.i139, align 8, !dbg !4730
  call void @kcsan_check_access(i8* %91, i64 %92, i32 7) #6, !dbg !4730
  %93 = load i64, i64* %i.addr.i.i, align 8, !dbg !4731
  %94 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i140, align 8, !dbg !4732
  store i64 %93, i64* %i.addr.i.i.i, align 8
  store %struct.atomic64_t* %94, %struct.atomic64_t** %v.addr.i1.i.i136, align 8
  %95 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !4733
  %96 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !4515
  store i64 %96, i64* %__ret.i.i.i, align 8, !dbg !4515
  %97 = load i64, i64* %__ret.i.i.i, align 8, !dbg !4515
  %98 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i1.i.i136, align 8, !dbg !4515
  %counter.i.i.i144 = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %98, i32 0, i32 0, !dbg !4515
  %99 = call i64 asm sideeffect "xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %counter.i.i.i144, i64 %97, i64* %counter.i.i.i144) #5, !dbg !4515, !srcloc !4020
  store i64 %99, i64* %__ret.i.i.i, align 8, !dbg !4515
  %100 = load i64, i64* %__ret.i.i.i, align 8, !dbg !4515
  store i64 %100, i64* %tmp.i.i.i137, align 8, !dbg !4515
  %101 = load i64, i64* %tmp.i.i.i137, align 8, !dbg !4515
  %add.i.i.i = add i64 %95, %101, !dbg !4734
  %102 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4735
  %wait_readers90 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %102, i32 0, i32 2, !dbg !4736
  %103 = load i32, i32* %wait_readers90, align 8, !dbg !4737
  %dec = add i32 %103, -1, !dbg !4737
  store i32 %dec, i32* %wait_readers90, align 8, !dbg !4737
  %list91 = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %waiter, i32 0, i32 0, !dbg !4738
  call void @list_del(%struct.list_head* %list91) #7, !dbg !4739
  br label %do.body92, !dbg !4740

do.body92:                                        ; preds = %if.then87
  br label %do.body93, !dbg !4741

do.body93:                                        ; preds = %do.body92
  call void @arch_local_irq_enable() #7, !dbg !4743
  br label %do.end95, !dbg !4743

do.end95:                                         ; preds = %do.body93
  br label %do.body96, !dbg !4741

do.body96:                                        ; preds = %do.end95
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4745, !srcloc !4747
  br label %do.body97, !dbg !4745

do.body97:                                        ; preds = %do.body96
  %104 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4748
  %wait_lock98 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %104, i32 0, i32 1, !dbg !4748
  br label %do.end100, !dbg !4748

do.end100:                                        ; preds = %do.body97
  br label %do.end102, !dbg !4745

do.end102:                                        ; preds = %do.end100
  br label %do.end104, !dbg !4741

do.end104:                                        ; preds = %do.end102
  %task105 = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %waiter, i32 0, i32 1, !dbg !4750
  %105 = load %struct.task_struct*, %struct.task_struct** %task105, align 8, !dbg !4750
  call void @put_task_struct(%struct.task_struct* %105) #7, !dbg !4751
  store %struct.ld_semaphore* null, %struct.ld_semaphore** %retval, align 8, !dbg !4752
  br label %return, !dbg !4752

if.end106:                                        ; preds = %do.end84
  br label %do.body107, !dbg !4753

do.body107:                                       ; preds = %if.end106
  br label %do.body108, !dbg !4754

do.body108:                                       ; preds = %do.body107
  call void @arch_local_irq_enable() #7, !dbg !4756
  br label %do.end110, !dbg !4756

do.end110:                                        ; preds = %do.body108
  br label %do.body111, !dbg !4754

do.body111:                                       ; preds = %do.end110
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !4758, !srcloc !4760
  br label %do.body112, !dbg !4758

do.body112:                                       ; preds = %do.body111
  %106 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4761
  %wait_lock113 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %106, i32 0, i32 1, !dbg !4761
  br label %do.end115, !dbg !4761

do.end115:                                        ; preds = %do.body112
  br label %do.end117, !dbg !4758

do.end117:                                        ; preds = %do.end115
  br label %do.end119, !dbg !4754

do.end119:                                        ; preds = %do.end117
  br label %if.end120, !dbg !4763

if.end120:                                        ; preds = %do.end119, %for.end
  %107 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4764
  store %struct.ld_semaphore* %107, %struct.ld_semaphore** %retval, align 8, !dbg !4765
  br label %return, !dbg !4765

return:                                           ; preds = %if.end120, %do.end104, %do.end19
  %108 = load %struct.ld_semaphore*, %struct.ld_semaphore** %retval, align 8, !dbg !4766
  ret %struct.ld_semaphore* %108, !dbg !4766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4767 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4769, metadata !DIExpression()), !dbg !4771
  %0 = load i64, i64* %__edi, align 8, !dbg !4771
  store i64 %0, i64* %__edi, align 8, !dbg !4771
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4772, metadata !DIExpression()), !dbg !4771
  %1 = load i64, i64* %__esi, align 8, !dbg !4771
  store i64 %1, i64* %__esi, align 8, !dbg !4771
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4773, metadata !DIExpression()), !dbg !4771
  %2 = load i64, i64* %__edx, align 8, !dbg !4771
  store i64 %2, i64* %__edx, align 8, !dbg !4771
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4774, metadata !DIExpression()), !dbg !4771
  %3 = load i64, i64* %__ecx, align 8, !dbg !4771
  store i64 %3, i64* %__ecx, align 8, !dbg !4771
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4775, metadata !DIExpression()), !dbg !4771
  %4 = load i64, i64* %__eax, align 8, !dbg !4771
  store i64 %4, i64* %__eax, align 8, !dbg !4771
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4771
  %6 = call i64 @llvm.read_register.i64(metadata !3856), !dbg !4771
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !4771, !srcloc !4776
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4771
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4771
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4771
  call void @llvm.write_register.i64(metadata !3856, i64 %asmresult1), !dbg !4771
  ret void, !dbg !4777
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !4778 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4779, metadata !DIExpression()), !dbg !4781
  %0 = load i64, i64* %__edi, align 8, !dbg !4781
  store i64 %0, i64* %__edi, align 8, !dbg !4781
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4782, metadata !DIExpression()), !dbg !4781
  %1 = load i64, i64* %__esi, align 8, !dbg !4781
  store i64 %1, i64* %__esi, align 8, !dbg !4781
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4783, metadata !DIExpression()), !dbg !4781
  %2 = load i64, i64* %__edx, align 8, !dbg !4781
  store i64 %2, i64* %__edx, align 8, !dbg !4781
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4784, metadata !DIExpression()), !dbg !4781
  %3 = load i64, i64* %__ecx, align 8, !dbg !4781
  store i64 %3, i64* %__ecx, align 8, !dbg !4781
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4785, metadata !DIExpression()), !dbg !4781
  %4 = load i64, i64* %__eax, align 8, !dbg !4781
  store i64 %4, i64* %__eax, align 8, !dbg !4781
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !4781
  %6 = call i64 @llvm.read_register.i64(metadata !3856), !dbg !4781
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #5, !dbg !4781, !srcloc !4786
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4781
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4781
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4781
  call void @llvm.write_register.i64(metadata !3856, i64 %asmresult1), !dbg !4781
  ret void, !dbg !4787
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4788 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4791, metadata !DIExpression()), !dbg !4792
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4793, metadata !DIExpression()), !dbg !4794
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4795
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4796
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4797
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4797
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4798
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !4799
  ret void, !dbg !4800
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.task_struct* @get_task_struct(%struct.task_struct* %t) #0 !dbg !4801 {
entry:
  %t.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %t, %struct.task_struct** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %t.addr, metadata !4805, metadata !DIExpression()), !dbg !4806
  %0 = load %struct.task_struct*, %struct.task_struct** %t.addr, align 8, !dbg !4807
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 3, !dbg !4808
  call void @refcount_inc(%struct.refcount_struct* %usage) #7, !dbg !4809
  %1 = load %struct.task_struct*, %struct.task_struct** %t.addr, align 8, !dbg !4810
  ret %struct.task_struct* %1, !dbg !4811
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__ldsem_wake(%struct.ld_semaphore* %sem) #0 !dbg !4812 {
entry:
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !4813, metadata !DIExpression()), !dbg !4814
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4815
  %write_wait = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 4, !dbg !4817
  %call = call i32 @list_empty(%struct.list_head* %write_wait) #7, !dbg !4818
  %tobool = icmp ne i32 %call, 0, !dbg !4818
  br i1 %tobool, label %if.else, label %if.then, !dbg !4819

if.then:                                          ; preds = %entry
  %1 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4820
  call void @__ldsem_wake_writer(%struct.ld_semaphore* %1) #7, !dbg !4821
  br label %if.end4, !dbg !4821

if.else:                                          ; preds = %entry
  %2 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4822
  %read_wait = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %2, i32 0, i32 3, !dbg !4824
  %call1 = call i32 @list_empty(%struct.list_head* %read_wait) #7, !dbg !4825
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4825
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !4826

if.then3:                                         ; preds = %if.else
  %3 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !4827
  call void @__ldsem_wake_readers(%struct.ld_semaphore* %3) #7, !dbg !4828
  br label %if.end, !dbg !4828

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  ret void, !dbg !4829
}

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4830 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4831, metadata !DIExpression()), !dbg !4832
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4833
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !4834
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4835
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4836
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4837
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4838
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4839
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4840
  ret void, !dbg !4841
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @put_task_struct(%struct.task_struct* %t) #0 !dbg !4842 {
entry:
  %t.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %t, %struct.task_struct** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %t.addr, metadata !4845, metadata !DIExpression()), !dbg !4846
  %0 = load %struct.task_struct*, %struct.task_struct** %t.addr, align 8, !dbg !4847
  %usage = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 3, !dbg !4849
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %usage) #7, !dbg !4850
  br i1 %call, label %if.then, label %if.end, !dbg !4851

if.then:                                          ; preds = %entry
  %1 = load %struct.task_struct*, %struct.task_struct** %t.addr, align 8, !dbg !4852
  call void @__put_task_struct(%struct.task_struct* %1) #7, !dbg !4853
  br label %if.end, !dbg !4853

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4854
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4855 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4860, metadata !DIExpression()), !dbg !4861
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4862, metadata !DIExpression()), !dbg !4863
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4864
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4866
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4867
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !4868
  br i1 %call, label %if.end, label %if.then, !dbg !4869

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4870

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4871
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4872
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4873
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4874
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4875
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4876
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4877
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4878
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4879
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4880
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4881
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4882
  br label %do.body, !dbg !4883

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4884

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4886

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4884

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4888
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4888
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4888
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4888
  br label %do.end7, !dbg !4888

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4884

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4890
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4891 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  ret i1 true, !dbg !4900
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !4901 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4905, metadata !DIExpression()), !dbg !4906
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4907
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #7, !dbg !4908
  ret void, !dbg !4909
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4910 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4913, metadata !DIExpression()), !dbg !4914
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4915, metadata !DIExpression()), !dbg !4916
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4917
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !4918
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !4919
  ret void, !dbg !4920
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !4921 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !4924, metadata !DIExpression()), !dbg !4930
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !4934, metadata !DIExpression()), !dbg !4935
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !4936, metadata !DIExpression()), !dbg !4938
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !3983, metadata !DIExpression()), !dbg !4939
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3987, metadata !DIExpression()), !dbg !4941
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !4942, metadata !DIExpression()), !dbg !4943
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !4944, metadata !DIExpression()), !dbg !4945
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !4946, metadata !DIExpression()), !dbg !4947
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !4948, metadata !DIExpression()), !dbg !4949
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !4950, metadata !DIExpression()), !dbg !4951
  call void @llvm.dbg.declare(metadata i32* %old, metadata !4952, metadata !DIExpression()), !dbg !4953
  %0 = load i32, i32* %i.addr, align 4, !dbg !4954
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4955
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !4956
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4957
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !4957
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4958
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4959
  %conv.i.i = trunc i64 %5 to i32, !dbg !4959
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #6, !dbg !4960
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !4961
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4961
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #6, !dbg !4961
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !4962
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !4963
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !4938
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !4938
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !4938
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !4938
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !4938
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #5, !dbg !4938, !srcloc !4964
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !4938
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !4938
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !4938
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !4938
  store i32 %15, i32* %old, align 4, !dbg !4953
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !4965
  %tobool = icmp ne i32* %16, null, !dbg !4965
  br i1 %tobool, label %if.then, label %if.end, !dbg !4967

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !4968
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !4969
  store i32 %17, i32* %18, align 4, !dbg !4970
  br label %if.end, !dbg !4971

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !4972
  %tobool1 = icmp ne i32 %19, 0, !dbg !4972
  %lnot = xor i1 %tobool1, true, !dbg !4972
  %lnot2 = xor i1 %lnot, true, !dbg !4972
  %lnot3 = xor i1 %lnot2, true, !dbg !4972
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4972
  %conv = sext i32 %lnot.ext to i64, !dbg !4972
  %tobool4 = icmp ne i64 %conv, 0, !dbg !4972
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4974

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4975
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #7, !dbg !4976
  br label %if.end17, !dbg !4976

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !4977
  %cmp = icmp slt i32 %21, 0, !dbg !4977
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !4977

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !4977
  %23 = load i32, i32* %i.addr, align 4, !dbg !4977
  %add = add i32 %22, %23, !dbg !4977
  %cmp7 = icmp slt i32 %add, 0, !dbg !4977
  br label %lor.end, !dbg !4977

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !4977
  %lnot11 = xor i1 %lnot9, true, !dbg !4977
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4977
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !4977
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !4977
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4979

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !4980
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #7, !dbg !4981
  br label %if.end16, !dbg !4981

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !4982
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4983 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4988, metadata !DIExpression()), !dbg !4989
  br label %do.body, !dbg !4990

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4992

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4990
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4990
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4990
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4992
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4990
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4994
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4995
  %conv = zext i1 %cmp to i32, !dbg !4995
  ret i32 %conv, !dbg !4996
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__ldsem_wake_writer(%struct.ld_semaphore* %sem) #0 !dbg !4997 {
entry:
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %waiter = alloca %struct.ldsem_waiter*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ldsem_waiter*, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !4998, metadata !DIExpression()), !dbg !4999
  call void @llvm.dbg.declare(metadata %struct.ldsem_waiter** %waiter, metadata !5000, metadata !DIExpression()), !dbg !5001
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5002, metadata !DIExpression()), !dbg !5004
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5004
  %write_wait = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 4, !dbg !5004
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %write_wait, i32 0, i32 0, !dbg !5004
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5004
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !5004
  store i8* %2, i8** %__mptr, align 8, !dbg !5004
  br label %do.body, !dbg !5004

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5005

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !5004
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !5004
  %4 = bitcast i8* %add.ptr to %struct.ldsem_waiter*, !dbg !5004
  store %struct.ldsem_waiter* %4, %struct.ldsem_waiter** %tmp, align 8, !dbg !5005
  %5 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %tmp, align 8, !dbg !5004
  store %struct.ldsem_waiter* %5, %struct.ldsem_waiter** %waiter, align 8, !dbg !5007
  %6 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %waiter, align 8, !dbg !5008
  %task = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %6, i32 0, i32 1, !dbg !5009
  %7 = load %struct.task_struct*, %struct.task_struct** %task, align 8, !dbg !5009
  %call = call i32 @wake_up_process(%struct.task_struct* %7) #7, !dbg !5010
  ret void, !dbg !5011
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__ldsem_wake_readers(%struct.ld_semaphore* %sem) #0 !dbg !5012 {
entry:
  %v.addr.i5.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i5.i.i, metadata !4051, metadata !DIExpression()), !dbg !5013
  %old.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i.i, metadata !4066, metadata !DIExpression()), !dbg !5019
  %new.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i.i, metadata !4068, metadata !DIExpression()), !dbg !5020
  %success.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i, metadata !4070, metadata !DIExpression()), !dbg !5021
  %_old.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %_old.i.i.i, metadata !4073, metadata !DIExpression()), !dbg !5021
  %__old.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__old.i.i.i, metadata !4074, metadata !DIExpression()), !dbg !5021
  %__new.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__new.i.i.i, metadata !4075, metadata !DIExpression()), !dbg !5021
  %__ptr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__ptr.i.i.i, metadata !4076, metadata !DIExpression()), !dbg !5021
  %tmp.i.i.i49 = alloca i64, align 8
  %v.addr.i1.i.i50 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i1.i.i50, metadata !3983, metadata !DIExpression()), !dbg !5022
  %size.addr.i2.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i2.i.i, metadata !3987, metadata !DIExpression()), !dbg !5024
  %v.addr.i.i.i51 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i51, metadata !3983, metadata !DIExpression()), !dbg !5025
  %size.addr.i.i.i52 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i52, metadata !3987, metadata !DIExpression()), !dbg !5027
  %v.addr.i.i53 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i53, metadata !4083, metadata !DIExpression()), !dbg !5028
  %old.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i, metadata !4085, metadata !DIExpression()), !dbg !5029
  %new.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i, metadata !4087, metadata !DIExpression()), !dbg !5030
  %v.addr.i54 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i54, metadata !4089, metadata !DIExpression()), !dbg !5031
  %old.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i, metadata !4091, metadata !DIExpression()), !dbg !5032
  %new.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i, metadata !4093, metadata !DIExpression()), !dbg !5033
  %i.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i.i, metadata !3965, metadata !DIExpression()), !dbg !5034
  %v.addr.i1.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i1.i.i, metadata !3978, metadata !DIExpression()), !dbg !5038
  %__ret.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret.i.i.i, metadata !3980, metadata !DIExpression()), !dbg !5039
  %tmp.i.i.i = alloca i64, align 8
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !3983, metadata !DIExpression()), !dbg !5040
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3987, metadata !DIExpression()), !dbg !5042
  %i.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i, metadata !3989, metadata !DIExpression()), !dbg !5043
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !3991, metadata !DIExpression()), !dbg !5044
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !3993, metadata !DIExpression()), !dbg !5045
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !3995, metadata !DIExpression()), !dbg !5046
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %waiter = alloca %struct.ldsem_waiter*, align 8
  %next = alloca %struct.ldsem_waiter*, align 8
  %tsk = alloca %struct.task_struct*, align 8
  %adjust = alloca i64, align 8
  %count = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ldsem_waiter*, align 8
  %__mptr11 = alloca i8*, align 8
  %tmp16 = alloca %struct.ldsem_waiter*, align 8
  %__mptr39 = alloca i8*, align 8
  %tmp45 = alloca %struct.ldsem_waiter*, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !5047, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.declare(metadata %struct.ldsem_waiter** %waiter, metadata !5049, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.declare(metadata %struct.ldsem_waiter** %next, metadata !5051, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk, metadata !5053, metadata !DIExpression()), !dbg !5054
  call void @llvm.dbg.declare(metadata i64* %adjust, metadata !5055, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.declare(metadata i64* %count, metadata !5057, metadata !DIExpression()), !dbg !5058
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5059
  %wait_readers = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 2, !dbg !5060
  %1 = load i32, i32* %wait_readers, align 8, !dbg !5060
  %conv = zext i32 %1 to i64, !dbg !5059
  %mul = mul i64 %conv, 4294967297, !dbg !5061
  store i64 %mul, i64* %adjust, align 8, !dbg !5062
  %2 = load i64, i64* %adjust, align 8, !dbg !5063
  %3 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5064
  %count1 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %3, i32 0, i32 0, !dbg !5065
  store i64 %2, i64* %i.addr.i, align 8
  store %struct.atomic64_t* %count1, %struct.atomic64_t** %v.addr.i, align 8
  %4 = load i64, i64* %i.addr.i, align 8, !dbg !5066
  %5 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !5067
  store i64 %4, i64* %i.addr.i.i, align 8
  store %struct.atomic64_t* %5, %struct.atomic64_t** %v.addr.i.i, align 8
  %6 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !5068
  %7 = bitcast %struct.atomic64_t* %6 to i8*, !dbg !5068
  store i8* %7, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %8 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !5069
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5070
  %conv.i.i.i = trunc i64 %9 to i32, !dbg !5070
  %call.i.i.i = call zeroext i1 @kasan_check_write(i8* %8, i32 %conv.i.i.i) #6, !dbg !5071
  %10 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !5072
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5072
  call void @kcsan_check_access(i8* %10, i64 %11, i32 7) #6, !dbg !5072
  %12 = load i64, i64* %i.addr.i.i, align 8, !dbg !5073
  %13 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !5074
  store i64 %12, i64* %i.addr.i.i.i, align 8
  store %struct.atomic64_t* %13, %struct.atomic64_t** %v.addr.i1.i.i, align 8
  %14 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !5075
  %15 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !5039
  store i64 %15, i64* %__ret.i.i.i, align 8, !dbg !5039
  %16 = load i64, i64* %__ret.i.i.i, align 8, !dbg !5039
  %17 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i1.i.i, align 8, !dbg !5039
  %counter.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %17, i32 0, i32 0, !dbg !5039
  %18 = call i64 asm sideeffect "xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %counter.i.i.i, i64 %16, i64* %counter.i.i.i) #5, !dbg !5039, !srcloc !4020
  store i64 %18, i64* %__ret.i.i.i, align 8, !dbg !5039
  %19 = load i64, i64* %__ret.i.i.i, align 8, !dbg !5039
  store i64 %19, i64* %tmp.i.i.i, align 8, !dbg !5039
  %20 = load i64, i64* %tmp.i.i.i, align 8, !dbg !5039
  %add.i.i.i = add i64 %14, %20, !dbg !5076
  store i64 %add.i.i.i, i64* %count, align 8, !dbg !5077
  br label %do.body, !dbg !5078

do.body:                                          ; preds = %do.cond, %entry
  %21 = load i64, i64* %count, align 8, !dbg !5079
  %cmp = icmp sgt i64 %21, 0, !dbg !5081
  br i1 %cmp, label %if.then, label %if.end, !dbg !5082

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !5083

if.end:                                           ; preds = %do.body
  %22 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5084
  %count3 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %22, i32 0, i32 0, !dbg !5085
  %23 = load i64, i64* %count, align 8, !dbg !5086
  %24 = load i64, i64* %adjust, align 8, !dbg !5087
  %sub = sub i64 %23, %24, !dbg !5088
  store %struct.atomic64_t* %count3, %struct.atomic64_t** %v.addr.i54, align 8
  store i64* %count, i64** %old.addr.i, align 8
  store i64 %sub, i64* %new.addr.i, align 8
  %25 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i54, align 8, !dbg !5089
  %26 = load i64*, i64** %old.addr.i, align 8, !dbg !5090
  %27 = load i64, i64* %new.addr.i, align 8, !dbg !5091
  store %struct.atomic64_t* %25, %struct.atomic64_t** %v.addr.i.i53, align 8
  store i64* %26, i64** %old.addr.i.i, align 8
  store i64 %27, i64* %new.addr.i.i, align 8
  %28 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i53, align 8, !dbg !5092
  %29 = bitcast %struct.atomic64_t* %28 to i8*, !dbg !5092
  store i8* %29, i8** %v.addr.i.i.i51, align 8
  store i64 8, i64* %size.addr.i.i.i52, align 8
  %30 = load i8*, i8** %v.addr.i.i.i51, align 8, !dbg !5093
  %31 = load i64, i64* %size.addr.i.i.i52, align 8, !dbg !5094
  %conv.i.i.i55 = trunc i64 %31 to i32, !dbg !5094
  %call.i.i.i56 = call zeroext i1 @kasan_check_write(i8* %30, i32 %conv.i.i.i55) #6, !dbg !5095
  %32 = load i8*, i8** %v.addr.i.i.i51, align 8, !dbg !5096
  %33 = load i64, i64* %size.addr.i.i.i52, align 8, !dbg !5096
  call void @kcsan_check_access(i8* %32, i64 %33, i32 7) #6, !dbg !5096
  %34 = load i64*, i64** %old.addr.i.i, align 8, !dbg !5097
  %35 = bitcast i64* %34 to i8*, !dbg !5097
  store i8* %35, i8** %v.addr.i1.i.i50, align 8
  store i64 8, i64* %size.addr.i2.i.i, align 8
  %36 = load i8*, i8** %v.addr.i1.i.i50, align 8, !dbg !5098
  %37 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !5099
  %conv.i3.i.i = trunc i64 %37 to i32, !dbg !5099
  %call.i4.i.i = call zeroext i1 @kasan_check_write(i8* %36, i32 %conv.i3.i.i) #6, !dbg !5100
  %38 = load i8*, i8** %v.addr.i1.i.i50, align 8, !dbg !5101
  %39 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !5101
  call void @kcsan_check_access(i8* %38, i64 %39, i32 7) #6, !dbg !5101
  %40 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i53, align 8, !dbg !5102
  %41 = load i64*, i64** %old.addr.i.i, align 8, !dbg !5103
  %42 = load i64, i64* %new.addr.i.i, align 8, !dbg !5104
  store %struct.atomic64_t* %40, %struct.atomic64_t** %v.addr.i5.i.i, align 8
  store i64* %41, i64** %old.addr.i.i.i, align 8
  store i64 %42, i64* %new.addr.i.i.i, align 8
  %43 = load i64*, i64** %old.addr.i.i.i, align 8, !dbg !5021
  store i64* %43, i64** %_old.i.i.i, align 8, !dbg !5021
  %44 = load i64*, i64** %_old.i.i.i, align 8, !dbg !5021
  %45 = load i64, i64* %44, align 8, !dbg !5021
  store i64 %45, i64* %__old.i.i.i, align 8, !dbg !5021
  %46 = load i64, i64* %new.addr.i.i.i, align 8, !dbg !5021
  store i64 %46, i64* %__new.i.i.i, align 8, !dbg !5021
  %47 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i5.i.i, align 8, !dbg !5021
  %counter.i.i.i57 = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %47, i32 0, i32 0, !dbg !5021
  store i64* %counter.i.i.i57, i64** %__ptr.i.i.i, align 8, !dbg !5021
  %48 = load i64*, i64** %__ptr.i.i.i, align 8, !dbg !5021
  %49 = load i64, i64* %__old.i.i.i, align 8, !dbg !5021
  %50 = load i64, i64* %__new.i.i.i, align 8, !dbg !5021
  %51 = call { i8, i64 } asm sideeffect "cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %48, i64 %50, i64* %48, i64 %49) #5, !dbg !5021, !srcloc !4154
  %asmresult.i.i.i = extractvalue { i8, i64 } %51, 0, !dbg !5021
  %asmresult1.i.i.i = extractvalue { i8, i64 } %51, 1, !dbg !5021
  store i8 %asmresult.i.i.i, i8* %success.i.i.i, align 1, !dbg !5021
  store i64 %asmresult1.i.i.i, i64* %__old.i.i.i, align 8, !dbg !5021
  %52 = load i8, i8* %success.i.i.i, align 1, !dbg !5105
  %tobool.i.i.i = trunc i8 %52 to i1, !dbg !5105
  %lnot.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !5105
  %lnot3.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !5105
  %lnot.ext.i.i.i = zext i1 %lnot3.i.i.i to i32, !dbg !5105
  %conv.i6.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !5105
  br i1 %lnot3.i.i.i, label %if.then.i.i.i, label %atomic_long_try_cmpxchg.exit, !dbg !5021

if.then.i.i.i:                                    ; preds = %if.end
  %53 = load i64, i64* %__old.i.i.i, align 8, !dbg !5105
  %54 = load i64*, i64** %_old.i.i.i, align 8, !dbg !5105
  store i64 %53, i64* %54, align 8, !dbg !5105
  br label %atomic_long_try_cmpxchg.exit, !dbg !5105

atomic_long_try_cmpxchg.exit:                     ; preds = %if.end, %if.then.i.i.i
  %55 = load i8, i8* %success.i.i.i, align 1, !dbg !5021
  %tobool5.i.i.i = trunc i8 %55 to i1, !dbg !5021
  %lnot6.i.i.i = xor i1 %tobool5.i.i.i, true, !dbg !5021
  %lnot.ext9.i.i.i = zext i1 %tobool5.i.i.i to i32, !dbg !5021
  %conv10.i.i.i = sext i32 %lnot.ext9.i.i.i to i64, !dbg !5021
  store i64 %conv10.i.i.i, i64* %tmp.i.i.i49, align 8, !dbg !5105
  %56 = load i64, i64* %tmp.i.i.i49, align 8, !dbg !5021
  %tobool11.i.i.i = icmp ne i64 %56, 0, !dbg !5106
  br i1 %tobool11.i.i.i, label %if.then5, label %if.end6, !dbg !5107

if.then5:                                         ; preds = %atomic_long_try_cmpxchg.exit
  br label %return, !dbg !5108

if.end6:                                          ; preds = %atomic_long_try_cmpxchg.exit
  br label %do.cond, !dbg !5109

do.cond:                                          ; preds = %if.end6
  br i1 true, label %do.body, label %do.end, !dbg !5109, !llvm.loop !5110

do.end:                                           ; preds = %do.cond, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5112, metadata !DIExpression()), !dbg !5115
  %57 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5115
  %read_wait = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %57, i32 0, i32 3, !dbg !5115
  %next7 = getelementptr inbounds %struct.list_head, %struct.list_head* %read_wait, i32 0, i32 0, !dbg !5115
  %58 = load %struct.list_head*, %struct.list_head** %next7, align 8, !dbg !5115
  %59 = bitcast %struct.list_head* %58 to i8*, !dbg !5115
  store i8* %59, i8** %__mptr, align 8, !dbg !5115
  br label %do.body8, !dbg !5115

do.body8:                                         ; preds = %do.end
  br label %do.end10, !dbg !5116

do.end10:                                         ; preds = %do.body8
  %60 = load i8*, i8** %__mptr, align 8, !dbg !5115
  %add.ptr = getelementptr i8, i8* %60, i64 0, !dbg !5115
  %61 = bitcast i8* %add.ptr to %struct.ldsem_waiter*, !dbg !5115
  store %struct.ldsem_waiter* %61, %struct.ldsem_waiter** %tmp, align 8, !dbg !5116
  %62 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %tmp, align 8, !dbg !5115
  store %struct.ldsem_waiter* %62, %struct.ldsem_waiter** %waiter, align 8, !dbg !5118
  call void @llvm.dbg.declare(metadata i8** %__mptr11, metadata !5119, metadata !DIExpression()), !dbg !5121
  %63 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %waiter, align 8, !dbg !5121
  %list = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %63, i32 0, i32 0, !dbg !5121
  %next12 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !5121
  %64 = load %struct.list_head*, %struct.list_head** %next12, align 8, !dbg !5121
  %65 = bitcast %struct.list_head* %64 to i8*, !dbg !5121
  store i8* %65, i8** %__mptr11, align 8, !dbg !5121
  br label %do.body13, !dbg !5121

do.body13:                                        ; preds = %do.end10
  br label %do.end15, !dbg !5122

do.end15:                                         ; preds = %do.body13
  %66 = load i8*, i8** %__mptr11, align 8, !dbg !5121
  %add.ptr17 = getelementptr i8, i8* %66, i64 0, !dbg !5121
  %67 = bitcast i8* %add.ptr17 to %struct.ldsem_waiter*, !dbg !5121
  store %struct.ldsem_waiter* %67, %struct.ldsem_waiter** %tmp16, align 8, !dbg !5122
  %68 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %tmp16, align 8, !dbg !5121
  store %struct.ldsem_waiter* %68, %struct.ldsem_waiter** %next, align 8, !dbg !5118
  br label %for.cond, !dbg !5118

for.cond:                                         ; preds = %do.end44, %do.end15
  %69 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %waiter, align 8, !dbg !5124
  %list18 = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %69, i32 0, i32 0, !dbg !5124
  %70 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5124
  %read_wait19 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %70, i32 0, i32 3, !dbg !5124
  %cmp20 = icmp eq %struct.list_head* %list18, %read_wait19, !dbg !5124
  %lnot = xor i1 %cmp20, true, !dbg !5124
  br i1 %lnot, label %for.body, label %for.end, !dbg !5118

for.body:                                         ; preds = %for.cond
  %71 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %waiter, align 8, !dbg !5126
  %task = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %71, i32 0, i32 1, !dbg !5128
  %72 = load %struct.task_struct*, %struct.task_struct** %task, align 8, !dbg !5128
  store %struct.task_struct* %72, %struct.task_struct** %tsk, align 8, !dbg !5129
  br label %do.body22, !dbg !5130

do.body22:                                        ; preds = %for.body
  br label %do.body23, !dbg !5131

do.body23:                                        ; preds = %do.body22
  br label %do.end25, !dbg !5133

do.end25:                                         ; preds = %do.body23
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5131, !srcloc !5135
  br label %do.body26, !dbg !5131

do.body26:                                        ; preds = %do.end25
  br label %do.body27, !dbg !5136

do.body27:                                        ; preds = %do.body26
  br label %do.end29, !dbg !5138

do.end29:                                         ; preds = %do.body27
  br label %do.body30, !dbg !5136

do.body30:                                        ; preds = %do.end29
  %73 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %waiter, align 8, !dbg !5140
  %task31 = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %73, i32 0, i32 1, !dbg !5140
  store volatile %struct.task_struct* null, %struct.task_struct** %task31, align 8, !dbg !5140
  br label %do.end33, !dbg !5140

do.end33:                                         ; preds = %do.body30
  br label %do.end35, !dbg !5136

do.end35:                                         ; preds = %do.end33
  br label %do.end37, !dbg !5131

do.end37:                                         ; preds = %do.end35
  %74 = load %struct.task_struct*, %struct.task_struct** %tsk, align 8, !dbg !5142
  %call38 = call i32 @wake_up_process(%struct.task_struct* %74) #7, !dbg !5143
  %75 = load %struct.task_struct*, %struct.task_struct** %tsk, align 8, !dbg !5144
  call void @put_task_struct(%struct.task_struct* %75) #7, !dbg !5145
  br label %for.inc, !dbg !5146

for.inc:                                          ; preds = %do.end37
  %76 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %next, align 8, !dbg !5124
  store %struct.ldsem_waiter* %76, %struct.ldsem_waiter** %waiter, align 8, !dbg !5124
  call void @llvm.dbg.declare(metadata i8** %__mptr39, metadata !5147, metadata !DIExpression()), !dbg !5149
  %77 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %next, align 8, !dbg !5149
  %list40 = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %77, i32 0, i32 0, !dbg !5149
  %next41 = getelementptr inbounds %struct.list_head, %struct.list_head* %list40, i32 0, i32 0, !dbg !5149
  %78 = load %struct.list_head*, %struct.list_head** %next41, align 8, !dbg !5149
  %79 = bitcast %struct.list_head* %78 to i8*, !dbg !5149
  store i8* %79, i8** %__mptr39, align 8, !dbg !5149
  br label %do.body42, !dbg !5149

do.body42:                                        ; preds = %for.inc
  br label %do.end44, !dbg !5150

do.end44:                                         ; preds = %do.body42
  %80 = load i8*, i8** %__mptr39, align 8, !dbg !5149
  %add.ptr46 = getelementptr i8, i8* %80, i64 0, !dbg !5149
  %81 = bitcast i8* %add.ptr46 to %struct.ldsem_waiter*, !dbg !5149
  store %struct.ldsem_waiter* %81, %struct.ldsem_waiter** %tmp45, align 8, !dbg !5150
  %82 = load %struct.ldsem_waiter*, %struct.ldsem_waiter** %tmp45, align 8, !dbg !5149
  store %struct.ldsem_waiter* %82, %struct.ldsem_waiter** %next, align 8, !dbg !5124
  br label %for.cond, !dbg !5124, !llvm.loop !5152

for.end:                                          ; preds = %for.cond
  %83 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5154
  %read_wait47 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %83, i32 0, i32 3, !dbg !5155
  call void @INIT_LIST_HEAD(%struct.list_head* %read_wait47) #7, !dbg !5156
  %84 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5157
  %wait_readers48 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %84, i32 0, i32 2, !dbg !5158
  store i32 0, i32* %wait_readers48, align 8, !dbg !5159
  br label %return, !dbg !5160

return:                                           ; preds = %for.end, %if.then5
  ret void, !dbg !5160
}

; Function Attrs: noredzone
declare dso_local i32 @wake_up_process(%struct.task_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5161 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5164
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !5166
  br i1 %call, label %if.end, label %if.then, !dbg !5167

if.then:                                          ; preds = %entry
  br label %return, !dbg !5168

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5169
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5170
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5170
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5171
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5172
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5172
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !5173
  br label %return, !dbg !5174

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5175 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5178, metadata !DIExpression()), !dbg !5179
  ret i1 true, !dbg !5180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5181 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5182, metadata !DIExpression()), !dbg !5183
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5184, metadata !DIExpression()), !dbg !5185
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5186
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5187
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5188
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5189
  br label %do.body, !dbg !5190

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5191

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5193

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5191

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5195
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5195
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5195
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5195
  br label %do.end5, !dbg !5195

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5191

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5198 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5201, metadata !DIExpression()), !dbg !5202
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5203
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #7, !dbg !5204
  ret i1 %call, !dbg !5205
}

; Function Attrs: noredzone
declare dso_local void @__put_task_struct(%struct.task_struct*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5206 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5209, metadata !DIExpression()), !dbg !5210
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5213
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5214
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #7, !dbg !5215
  ret i1 %call, !dbg !5216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5217 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5220, metadata !DIExpression()), !dbg !5222
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5226, metadata !DIExpression()), !dbg !5227
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5228, metadata !DIExpression()), !dbg !5230
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !3983, metadata !DIExpression()), !dbg !5231
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3987, metadata !DIExpression()), !dbg !5233
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5234, metadata !DIExpression()), !dbg !5235
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5236, metadata !DIExpression()), !dbg !5237
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5238, metadata !DIExpression()), !dbg !5239
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5240, metadata !DIExpression()), !dbg !5241
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5242, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5244, metadata !DIExpression()), !dbg !5245
  %0 = load i32, i32* %i.addr, align 4, !dbg !5246
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5247
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5248
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5249
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5249
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5250
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5251
  %conv.i.i = trunc i64 %5 to i32, !dbg !5251
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #6, !dbg !5252
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5253
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5253
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #6, !dbg !5253
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5254
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5255
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5230
  %sub.i.i = sub i32 0, %10, !dbg !5230
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5230
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5230
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5230
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5230
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #5, !dbg !5230, !srcloc !5256
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5230
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5230
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5230
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5230
  store i32 %15, i32* %old, align 4, !dbg !5245
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5257
  %tobool = icmp ne i32* %16, null, !dbg !5257
  br i1 %tobool, label %if.then, label %if.end, !dbg !5259

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5260
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5261
  store i32 %17, i32* %18, align 4, !dbg !5262
  br label %if.end, !dbg !5263

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5264
  %20 = load i32, i32* %i.addr, align 4, !dbg !5266
  %cmp = icmp eq i32 %19, %20, !dbg !5267
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5268

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5269, !srcloc !5271
  store i1 true, i1* %retval, align 1, !dbg !5272
  br label %return, !dbg !5272

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5273
  %cmp3 = icmp slt i32 %21, 0, !dbg !5273
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5273

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5273
  %23 = load i32, i32* %i.addr, align 4, !dbg !5273
  %sub = sub i32 %22, %23, !dbg !5273
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5273
  br label %lor.end, !dbg !5273

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5273
  %lnot5 = xor i1 %lnot, true, !dbg !5273
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5273
  %conv = sext i32 %lnot.ext to i64, !dbg !5273
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5273
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5275

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5276
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #7, !dbg !5277
  br label %if.end8, !dbg !5277

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5278
  br label %return, !dbg !5278

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5279
  ret i1 %26, !dbg !5279
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_atomic64_read(%struct.atomic64_t* %v) #0 !dbg !5280 {
entry:
  %v.addr = alloca %struct.atomic64_t*, align 8
  store %struct.atomic64_t* %v, %struct.atomic64_t** %v.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  %0 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr, align 8, !dbg !5283
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %0, i32 0, i32 0, !dbg !5283
  %1 = load volatile i64, i64* %counter, align 8, !dbg !5283
  ret i64 %1, !dbg !5284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5285 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5288, metadata !DIExpression()), !dbg !5289
  ret i1 true, !dbg !5290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.ld_semaphore* @down_write_failed(%struct.ld_semaphore* %sem, i64 %count, i64 %timeout) #0 section ".sched.text" !dbg !5291 {
entry:
  %pscr_ret__.i131 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i131, metadata !4523, metadata !DIExpression()), !dbg !5292
  %__vpp_verify.i132 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i132, metadata !4531, metadata !DIExpression()), !dbg !5294
  %pfo_val__.i133 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i133, metadata !4534, metadata !DIExpression()), !dbg !5295
  %tmp.i134 = alloca %struct.task_struct*, align 8
  %tmp1.i135 = alloca %struct.task_struct*, align 8
  %i.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i.i, metadata !3965, metadata !DIExpression()), !dbg !5296
  %v.addr.i1.i.i122 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i1.i.i122, metadata !3978, metadata !DIExpression()), !dbg !5301
  %__ret.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret.i.i.i, metadata !3980, metadata !DIExpression()), !dbg !5302
  %tmp.i.i.i123 = alloca i64, align 8
  %v.addr.i.i.i124 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i124, metadata !3983, metadata !DIExpression()), !dbg !5303
  %size.addr.i.i.i125 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i125, metadata !3987, metadata !DIExpression()), !dbg !5305
  %i.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i, metadata !3989, metadata !DIExpression()), !dbg !5306
  %v.addr.i.i126 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i126, metadata !3991, metadata !DIExpression()), !dbg !5307
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !3993, metadata !DIExpression()), !dbg !5308
  %v.addr.i127 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i127, metadata !3995, metadata !DIExpression()), !dbg !5309
  %pscr_ret__.i117 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i117, metadata !4523, metadata !DIExpression()), !dbg !5310
  %__vpp_verify.i118 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i118, metadata !4531, metadata !DIExpression()), !dbg !5318
  %pfo_val__.i119 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i119, metadata !4534, metadata !DIExpression()), !dbg !5319
  %tmp.i120 = alloca %struct.task_struct*, align 8
  %tmp1.i121 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i112 = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i112, metadata !4523, metadata !DIExpression()), !dbg !5320
  %__vpp_verify.i113 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i113, metadata !4531, metadata !DIExpression()), !dbg !5325
  %pfo_val__.i114 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i114, metadata !4534, metadata !DIExpression()), !dbg !5326
  %tmp.i115 = alloca %struct.task_struct*, align 8
  %tmp1.i116 = alloca %struct.task_struct*, align 8
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4523, metadata !DIExpression()), !dbg !5327
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4531, metadata !DIExpression()), !dbg !5329
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4534, metadata !DIExpression()), !dbg !5330
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %v.addr.i5.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i5.i.i, metadata !4051, metadata !DIExpression()), !dbg !5331
  %old.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i.i, metadata !4066, metadata !DIExpression()), !dbg !5337
  %new.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i.i, metadata !4068, metadata !DIExpression()), !dbg !5338
  %success.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i, metadata !4070, metadata !DIExpression()), !dbg !5339
  %_old.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %_old.i.i.i, metadata !4073, metadata !DIExpression()), !dbg !5339
  %__old.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__old.i.i.i, metadata !4074, metadata !DIExpression()), !dbg !5339
  %__new.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__new.i.i.i, metadata !4075, metadata !DIExpression()), !dbg !5339
  %__ptr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__ptr.i.i.i, metadata !4076, metadata !DIExpression()), !dbg !5339
  %tmp.i.i.i = alloca i64, align 8
  %v.addr.i1.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i1.i.i, metadata !3983, metadata !DIExpression()), !dbg !5340
  %size.addr.i2.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i2.i.i, metadata !3987, metadata !DIExpression()), !dbg !5342
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !3983, metadata !DIExpression()), !dbg !5343
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3987, metadata !DIExpression()), !dbg !5345
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !4083, metadata !DIExpression()), !dbg !5346
  %old.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i, metadata !4085, metadata !DIExpression()), !dbg !5347
  %new.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i, metadata !4087, metadata !DIExpression()), !dbg !5348
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !4089, metadata !DIExpression()), !dbg !5349
  %old.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i, metadata !4091, metadata !DIExpression()), !dbg !5350
  %new.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i, metadata !4093, metadata !DIExpression()), !dbg !5351
  %retval = alloca %struct.ld_semaphore*, align 8
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %count.addr = alloca i64, align 8
  %timeout.addr = alloca i64, align 8
  %waiter = alloca %struct.ldsem_waiter, align 8
  %adjust = alloca i64, align 8
  %locked = alloca i32, align 4
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  store i64 %timeout, i64* %timeout.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %timeout.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  call void @llvm.dbg.declare(metadata %struct.ldsem_waiter* %waiter, metadata !5358, metadata !DIExpression()), !dbg !5359
  call void @llvm.dbg.declare(metadata i64* %adjust, metadata !5360, metadata !DIExpression()), !dbg !5361
  store i64 -1, i64* %adjust, align 8, !dbg !5361
  call void @llvm.dbg.declare(metadata i32* %locked, metadata !5362, metadata !DIExpression()), !dbg !5363
  store i32 0, i32* %locked, align 4, !dbg !5363
  br label %do.body, !dbg !5364

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5365

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #7, !dbg !5367
  br label %do.end, !dbg !5367

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5365

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5369, !srcloc !5371
  br label %do.body3, !dbg !5369

do.body3:                                         ; preds = %do.body2
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5372
  %wait_lock = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 1, !dbg !5372
  br label %do.end4, !dbg !5372

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !5369

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !5365

do.end6:                                          ; preds = %do.end5
  br label %do.body7, !dbg !5374

do.body7:                                         ; preds = %do.cond, %do.end6
  %1 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5375
  %count8 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %1, i32 0, i32 0, !dbg !5376
  %2 = load i64, i64* %count.addr, align 8, !dbg !5377
  %3 = load i64, i64* %adjust, align 8, !dbg !5378
  %add = add i64 %2, %3, !dbg !5379
  store %struct.atomic64_t* %count8, %struct.atomic64_t** %v.addr.i, align 8
  store i64* %count.addr, i64** %old.addr.i, align 8
  store i64 %add, i64* %new.addr.i, align 8
  %4 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !5380
  %5 = load i64*, i64** %old.addr.i, align 8, !dbg !5381
  %6 = load i64, i64* %new.addr.i, align 8, !dbg !5382
  store %struct.atomic64_t* %4, %struct.atomic64_t** %v.addr.i.i, align 8
  store i64* %5, i64** %old.addr.i.i, align 8
  store i64 %6, i64* %new.addr.i.i, align 8
  %7 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !5383
  %8 = bitcast %struct.atomic64_t* %7 to i8*, !dbg !5383
  store i8* %8, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %9 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !5384
  %10 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5385
  %conv.i.i.i = trunc i64 %10 to i32, !dbg !5385
  %call.i.i.i = call zeroext i1 @kasan_check_write(i8* %9, i32 %conv.i.i.i) #6, !dbg !5386
  %11 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !5387
  %12 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5387
  call void @kcsan_check_access(i8* %11, i64 %12, i32 7) #6, !dbg !5387
  %13 = load i64*, i64** %old.addr.i.i, align 8, !dbg !5388
  %14 = bitcast i64* %13 to i8*, !dbg !5388
  store i8* %14, i8** %v.addr.i1.i.i, align 8
  store i64 8, i64* %size.addr.i2.i.i, align 8
  %15 = load i8*, i8** %v.addr.i1.i.i, align 8, !dbg !5389
  %16 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !5390
  %conv.i3.i.i = trunc i64 %16 to i32, !dbg !5390
  %call.i4.i.i = call zeroext i1 @kasan_check_write(i8* %15, i32 %conv.i3.i.i) #6, !dbg !5391
  %17 = load i8*, i8** %v.addr.i1.i.i, align 8, !dbg !5392
  %18 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !5392
  call void @kcsan_check_access(i8* %17, i64 %18, i32 7) #6, !dbg !5392
  %19 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !5393
  %20 = load i64*, i64** %old.addr.i.i, align 8, !dbg !5394
  %21 = load i64, i64* %new.addr.i.i, align 8, !dbg !5395
  store %struct.atomic64_t* %19, %struct.atomic64_t** %v.addr.i5.i.i, align 8
  store i64* %20, i64** %old.addr.i.i.i, align 8
  store i64 %21, i64* %new.addr.i.i.i, align 8
  %22 = load i64*, i64** %old.addr.i.i.i, align 8, !dbg !5339
  store i64* %22, i64** %_old.i.i.i, align 8, !dbg !5339
  %23 = load i64*, i64** %_old.i.i.i, align 8, !dbg !5339
  %24 = load i64, i64* %23, align 8, !dbg !5339
  store i64 %24, i64* %__old.i.i.i, align 8, !dbg !5339
  %25 = load i64, i64* %new.addr.i.i.i, align 8, !dbg !5339
  store i64 %25, i64* %__new.i.i.i, align 8, !dbg !5339
  %26 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i5.i.i, align 8, !dbg !5339
  %counter.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %26, i32 0, i32 0, !dbg !5339
  store i64* %counter.i.i.i, i64** %__ptr.i.i.i, align 8, !dbg !5339
  %27 = load i64*, i64** %__ptr.i.i.i, align 8, !dbg !5339
  %28 = load i64, i64* %__old.i.i.i, align 8, !dbg !5339
  %29 = load i64, i64* %__new.i.i.i, align 8, !dbg !5339
  %30 = call { i8, i64 } asm sideeffect "cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %27, i64 %29, i64* %27, i64 %28) #5, !dbg !5339, !srcloc !4154
  %asmresult.i.i.i = extractvalue { i8, i64 } %30, 0, !dbg !5339
  %asmresult1.i.i.i = extractvalue { i8, i64 } %30, 1, !dbg !5339
  store i8 %asmresult.i.i.i, i8* %success.i.i.i, align 1, !dbg !5339
  store i64 %asmresult1.i.i.i, i64* %__old.i.i.i, align 8, !dbg !5339
  %31 = load i8, i8* %success.i.i.i, align 1, !dbg !5396
  %tobool.i.i.i = trunc i8 %31 to i1, !dbg !5396
  %lnot.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !5396
  %lnot3.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !5396
  %lnot.ext.i.i.i = zext i1 %lnot3.i.i.i to i32, !dbg !5396
  %conv.i6.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !5396
  br i1 %lnot3.i.i.i, label %if.then.i.i.i, label %atomic_long_try_cmpxchg.exit, !dbg !5339

if.then.i.i.i:                                    ; preds = %do.body7
  %32 = load i64, i64* %__old.i.i.i, align 8, !dbg !5396
  %33 = load i64*, i64** %_old.i.i.i, align 8, !dbg !5396
  store i64 %32, i64* %33, align 8, !dbg !5396
  br label %atomic_long_try_cmpxchg.exit, !dbg !5396

atomic_long_try_cmpxchg.exit:                     ; preds = %do.body7, %if.then.i.i.i
  %34 = load i8, i8* %success.i.i.i, align 1, !dbg !5339
  %tobool5.i.i.i = trunc i8 %34 to i1, !dbg !5339
  %lnot6.i.i.i = xor i1 %tobool5.i.i.i, true, !dbg !5339
  %lnot.ext9.i.i.i = zext i1 %tobool5.i.i.i to i32, !dbg !5339
  %conv10.i.i.i = sext i32 %lnot.ext9.i.i.i to i64, !dbg !5339
  store i64 %conv10.i.i.i, i64* %tmp.i.i.i, align 8, !dbg !5396
  %35 = load i64, i64* %tmp.i.i.i, align 8, !dbg !5339
  %tobool11.i.i.i = icmp ne i64 %35, 0, !dbg !5397
  br i1 %tobool11.i.i.i, label %if.then, label %if.end, !dbg !5398

if.then:                                          ; preds = %atomic_long_try_cmpxchg.exit
  br label %do.end20, !dbg !5399

if.end:                                           ; preds = %atomic_long_try_cmpxchg.exit
  %36 = load i64, i64* %count.addr, align 8, !dbg !5400
  %and = and i64 %36, 4294967295, !dbg !5402
  %cmp = icmp eq i64 %and, 1, !dbg !5403
  br i1 %cmp, label %if.then9, label %if.end19, !dbg !5404

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5405

do.body10:                                        ; preds = %if.then9
  br label %do.body11, !dbg !5407

do.body11:                                        ; preds = %do.body10
  call void @arch_local_irq_enable() #7, !dbg !5409
  br label %do.end12, !dbg !5409

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !5407

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5411, !srcloc !5413
  br label %do.body14, !dbg !5411

do.body14:                                        ; preds = %do.body13
  %37 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5414
  %wait_lock15 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %37, i32 0, i32 1, !dbg !5414
  br label %do.end16, !dbg !5414

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !5411

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !5407

do.end18:                                         ; preds = %do.end17
  %38 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5416
  store %struct.ld_semaphore* %38, %struct.ld_semaphore** %retval, align 8, !dbg !5417
  br label %return, !dbg !5417

if.end19:                                         ; preds = %if.end
  br label %do.cond, !dbg !5418

do.cond:                                          ; preds = %if.end19
  br i1 true, label %do.body7, label %do.end20, !dbg !5418, !llvm.loop !5419

do.end20:                                         ; preds = %do.cond, %if.then
  %list = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %waiter, i32 0, i32 0, !dbg !5421
  %39 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5422
  %write_wait = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %39, i32 0, i32 4, !dbg !5423
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* %write_wait) #7, !dbg !5424
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !5329
  %40 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !5329
  %41 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #8, !dbg !5330, !srcloc !4652
  store i64 %41, i64* %pfo_val__.i, align 8, !dbg !5330
  %42 = load i64, i64* %pfo_val__.i, align 8, !dbg !5330
  %43 = inttoptr i64 %42 to %struct.task_struct*, !dbg !5330
  store %struct.task_struct* %43, %struct.task_struct** %tmp.i, align 8, !dbg !5330
  %44 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !5330
  store %struct.task_struct* %44, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5327
  %45 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !5327
  store %struct.task_struct* %45, %struct.task_struct** %tmp1.i, align 8, !dbg !5327
  %46 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !5327
  %task = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %waiter, i32 0, i32 1, !dbg !5425
  store %struct.task_struct* %46, %struct.task_struct** %task, align 8, !dbg !5426
  br label %do.body22, !dbg !5427

do.body22:                                        ; preds = %do.end20
  br label %do.body23, !dbg !5428

do.body23:                                        ; preds = %do.body22
  br label %do.body24, !dbg !5429

do.body24:                                        ; preds = %do.body23
  br label %do.end26, !dbg !5430

do.end26:                                         ; preds = %do.body24
  br label %do.body27, !dbg !5429

do.body27:                                        ; preds = %do.end26
  store i8* null, i8** %__vpp_verify.i113, align 8, !dbg !5325
  %47 = load i8*, i8** %__vpp_verify.i113, align 8, !dbg !5325
  %48 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #8, !dbg !5326, !srcloc !4652
  store i64 %48, i64* %pfo_val__.i114, align 8, !dbg !5326
  %49 = load i64, i64* %pfo_val__.i114, align 8, !dbg !5326
  %50 = inttoptr i64 %49 to %struct.task_struct*, !dbg !5326
  store %struct.task_struct* %50, %struct.task_struct** %tmp.i115, align 8, !dbg !5326
  %51 = load %struct.task_struct*, %struct.task_struct** %tmp.i115, align 8, !dbg !5326
  store %struct.task_struct* %51, %struct.task_struct** %pscr_ret__.i112, align 8, !dbg !5320
  %52 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i112, align 8, !dbg !5320
  store %struct.task_struct* %52, %struct.task_struct** %tmp1.i116, align 8, !dbg !5320
  %53 = load %struct.task_struct*, %struct.task_struct** %tmp1.i116, align 8, !dbg !5320
  %state = getelementptr inbounds %struct.task_struct, %struct.task_struct* %53, i32 0, i32 1, !dbg !5432
  store volatile i64 2, i64* %state, align 16, !dbg !5432
  br label %do.end30, !dbg !5432

do.end30:                                         ; preds = %do.body27
  br label %do.end32, !dbg !5429

do.end32:                                         ; preds = %do.end30
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5428, !srcloc !5433
  br label %do.end34, !dbg !5428

do.end34:                                         ; preds = %do.end32
  br label %for.cond, !dbg !5434

for.cond:                                         ; preds = %if.end81, %do.end34
  %54 = load i64, i64* %timeout.addr, align 8, !dbg !5435
  %tobool = icmp ne i64 %54, 0, !dbg !5435
  br i1 %tobool, label %if.end36, label %if.then35, !dbg !5437

if.then35:                                        ; preds = %for.cond
  br label %for.end, !dbg !5438

if.end36:                                         ; preds = %for.cond
  br label %do.body37, !dbg !5439

do.body37:                                        ; preds = %if.end36
  br label %do.body38, !dbg !5440

do.body38:                                        ; preds = %do.body37
  call void @arch_local_irq_enable() #7, !dbg !5442
  br label %do.end40, !dbg !5442

do.end40:                                         ; preds = %do.body38
  br label %do.body41, !dbg !5440

do.body41:                                        ; preds = %do.end40
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5444, !srcloc !5446
  br label %do.body42, !dbg !5444

do.body42:                                        ; preds = %do.body41
  %55 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5447
  %wait_lock43 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %55, i32 0, i32 1, !dbg !5447
  br label %do.end45, !dbg !5447

do.end45:                                         ; preds = %do.body42
  br label %do.end47, !dbg !5444

do.end47:                                         ; preds = %do.end45
  br label %do.end49, !dbg !5440

do.end49:                                         ; preds = %do.end47
  %56 = load i64, i64* %timeout.addr, align 8, !dbg !5449
  %call50 = call i64 @schedule_timeout(i64 %56) #7, !dbg !5450
  store i64 %call50, i64* %timeout.addr, align 8, !dbg !5451
  br label %do.body51, !dbg !5452

do.body51:                                        ; preds = %do.end49
  br label %do.body52, !dbg !5453

do.body52:                                        ; preds = %do.body51
  call void @arch_local_irq_disable() #7, !dbg !5455
  br label %do.end54, !dbg !5455

do.end54:                                         ; preds = %do.body52
  br label %do.body55, !dbg !5453

do.body55:                                        ; preds = %do.end54
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5457, !srcloc !5459
  br label %do.body56, !dbg !5457

do.body56:                                        ; preds = %do.body55
  %57 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5460
  %wait_lock57 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %57, i32 0, i32 1, !dbg !5460
  br label %do.end59, !dbg !5460

do.end59:                                         ; preds = %do.body56
  br label %do.end61, !dbg !5457

do.end61:                                         ; preds = %do.end59
  br label %do.end63, !dbg !5453

do.end63:                                         ; preds = %do.end61
  br label %do.body64, !dbg !5462

do.body64:                                        ; preds = %do.end63
  br label %do.body65, !dbg !5463

do.body65:                                        ; preds = %do.body64
  br label %do.body66, !dbg !5464

do.body66:                                        ; preds = %do.body65
  br label %do.end68, !dbg !5465

do.end68:                                         ; preds = %do.body66
  br label %do.body69, !dbg !5464

do.body69:                                        ; preds = %do.end68
  store i8* null, i8** %__vpp_verify.i118, align 8, !dbg !5318
  %58 = load i8*, i8** %__vpp_verify.i118, align 8, !dbg !5318
  %59 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #8, !dbg !5319, !srcloc !4652
  store i64 %59, i64* %pfo_val__.i119, align 8, !dbg !5319
  %60 = load i64, i64* %pfo_val__.i119, align 8, !dbg !5319
  %61 = inttoptr i64 %60 to %struct.task_struct*, !dbg !5319
  store %struct.task_struct* %61, %struct.task_struct** %tmp.i120, align 8, !dbg !5319
  %62 = load %struct.task_struct*, %struct.task_struct** %tmp.i120, align 8, !dbg !5319
  store %struct.task_struct* %62, %struct.task_struct** %pscr_ret__.i117, align 8, !dbg !5310
  %63 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i117, align 8, !dbg !5310
  store %struct.task_struct* %63, %struct.task_struct** %tmp1.i121, align 8, !dbg !5310
  %64 = load %struct.task_struct*, %struct.task_struct** %tmp1.i121, align 8, !dbg !5310
  %state71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 1, !dbg !5467
  store volatile i64 2, i64* %state71, align 16, !dbg !5467
  br label %do.end73, !dbg !5467

do.end73:                                         ; preds = %do.body69
  br label %do.end75, !dbg !5464

do.end75:                                         ; preds = %do.end73
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5463, !srcloc !5468
  br label %do.end77, !dbg !5463

do.end77:                                         ; preds = %do.end75
  %65 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5469
  %call78 = call i32 @writer_trylock(%struct.ld_semaphore* %65) #7, !dbg !5470
  store i32 %call78, i32* %locked, align 4, !dbg !5471
  %66 = load i32, i32* %locked, align 4, !dbg !5472
  %tobool79 = icmp ne i32 %66, 0, !dbg !5472
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !5474

if.then80:                                        ; preds = %do.end77
  br label %for.end, !dbg !5475

if.end81:                                         ; preds = %do.end77
  br label %for.cond, !dbg !5476, !llvm.loop !5477

for.end:                                          ; preds = %if.then80, %if.then35
  %67 = load i32, i32* %locked, align 4, !dbg !5480
  %tobool82 = icmp ne i32 %67, 0, !dbg !5480
  br i1 %tobool82, label %if.end86, label %if.then83, !dbg !5481

if.then83:                                        ; preds = %for.end
  %68 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5482
  %count84 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %68, i32 0, i32 0, !dbg !5483
  store i64 4294967296, i64* %i.addr.i, align 8
  store %struct.atomic64_t* %count84, %struct.atomic64_t** %v.addr.i127, align 8
  %69 = load i64, i64* %i.addr.i, align 8, !dbg !5484
  %70 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i127, align 8, !dbg !5485
  store i64 %69, i64* %i.addr.i.i, align 8
  store %struct.atomic64_t* %70, %struct.atomic64_t** %v.addr.i.i126, align 8
  %71 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i126, align 8, !dbg !5486
  %72 = bitcast %struct.atomic64_t* %71 to i8*, !dbg !5486
  store i8* %72, i8** %v.addr.i.i.i124, align 8
  store i64 8, i64* %size.addr.i.i.i125, align 8
  %73 = load i8*, i8** %v.addr.i.i.i124, align 8, !dbg !5487
  %74 = load i64, i64* %size.addr.i.i.i125, align 8, !dbg !5488
  %conv.i.i.i128 = trunc i64 %74 to i32, !dbg !5488
  %call.i.i.i129 = call zeroext i1 @kasan_check_write(i8* %73, i32 %conv.i.i.i128) #6, !dbg !5489
  %75 = load i8*, i8** %v.addr.i.i.i124, align 8, !dbg !5490
  %76 = load i64, i64* %size.addr.i.i.i125, align 8, !dbg !5490
  call void @kcsan_check_access(i8* %75, i64 %76, i32 7) #6, !dbg !5490
  %77 = load i64, i64* %i.addr.i.i, align 8, !dbg !5491
  %78 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i126, align 8, !dbg !5492
  store i64 %77, i64* %i.addr.i.i.i, align 8
  store %struct.atomic64_t* %78, %struct.atomic64_t** %v.addr.i1.i.i122, align 8
  %79 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !5493
  %80 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !5302
  store i64 %80, i64* %__ret.i.i.i, align 8, !dbg !5302
  %81 = load i64, i64* %__ret.i.i.i, align 8, !dbg !5302
  %82 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i1.i.i122, align 8, !dbg !5302
  %counter.i.i.i130 = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %82, i32 0, i32 0, !dbg !5302
  %83 = call i64 asm sideeffect "xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %counter.i.i.i130, i64 %81, i64* %counter.i.i.i130) #5, !dbg !5302, !srcloc !4020
  store i64 %83, i64* %__ret.i.i.i, align 8, !dbg !5302
  %84 = load i64, i64* %__ret.i.i.i, align 8, !dbg !5302
  store i64 %84, i64* %tmp.i.i.i123, align 8, !dbg !5302
  %85 = load i64, i64* %tmp.i.i.i123, align 8, !dbg !5302
  %add.i.i.i = add i64 %79, %85, !dbg !5494
  br label %if.end86, !dbg !5495

if.end86:                                         ; preds = %if.then83, %for.end
  %list87 = getelementptr inbounds %struct.ldsem_waiter, %struct.ldsem_waiter* %waiter, i32 0, i32 0, !dbg !5496
  call void @list_del(%struct.list_head* %list87) #7, !dbg !5497
  %86 = load i32, i32* %locked, align 4, !dbg !5498
  %tobool88 = icmp ne i32 %86, 0, !dbg !5498
  br i1 %tobool88, label %if.end93, label %land.lhs.true, !dbg !5500

land.lhs.true:                                    ; preds = %if.end86
  %87 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5501
  %write_wait89 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %87, i32 0, i32 4, !dbg !5502
  %call90 = call i32 @list_empty(%struct.list_head* %write_wait89) #7, !dbg !5503
  %tobool91 = icmp ne i32 %call90, 0, !dbg !5503
  br i1 %tobool91, label %if.then92, label %if.end93, !dbg !5504

if.then92:                                        ; preds = %land.lhs.true
  %88 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5505
  call void @__ldsem_wake_readers(%struct.ld_semaphore* %88) #7, !dbg !5506
  br label %if.end93, !dbg !5506

if.end93:                                         ; preds = %if.then92, %land.lhs.true, %if.end86
  br label %do.body94, !dbg !5507

do.body94:                                        ; preds = %if.end93
  br label %do.body95, !dbg !5508

do.body95:                                        ; preds = %do.body94
  call void @arch_local_irq_enable() #7, !dbg !5510
  br label %do.end97, !dbg !5510

do.end97:                                         ; preds = %do.body95
  br label %do.body98, !dbg !5508

do.body98:                                        ; preds = %do.end97
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !5512, !srcloc !5514
  br label %do.body99, !dbg !5512

do.body99:                                        ; preds = %do.body98
  %89 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5515
  %wait_lock100 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %89, i32 0, i32 1, !dbg !5515
  br label %do.end102, !dbg !5515

do.end102:                                        ; preds = %do.body99
  br label %do.end104, !dbg !5512

do.end104:                                        ; preds = %do.end102
  br label %do.end106, !dbg !5508

do.end106:                                        ; preds = %do.end104
  store i8* null, i8** %__vpp_verify.i132, align 8, !dbg !5294
  %90 = load i8*, i8** %__vpp_verify.i132, align 8, !dbg !5294
  %91 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #8, !dbg !5295, !srcloc !4652
  store i64 %91, i64* %pfo_val__.i133, align 8, !dbg !5295
  %92 = load i64, i64* %pfo_val__.i133, align 8, !dbg !5295
  %93 = inttoptr i64 %92 to %struct.task_struct*, !dbg !5295
  store %struct.task_struct* %93, %struct.task_struct** %tmp.i134, align 8, !dbg !5295
  %94 = load %struct.task_struct*, %struct.task_struct** %tmp.i134, align 8, !dbg !5295
  store %struct.task_struct* %94, %struct.task_struct** %pscr_ret__.i131, align 8, !dbg !5292
  %95 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i131, align 8, !dbg !5292
  store %struct.task_struct* %95, %struct.task_struct** %tmp1.i135, align 8, !dbg !5292
  %96 = load %struct.task_struct*, %struct.task_struct** %tmp1.i135, align 8, !dbg !5292
  %state108 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %96, i32 0, i32 1, !dbg !5517
  store volatile i64 0, i64* %state108, align 16, !dbg !5517
  %97 = load i32, i32* %locked, align 4, !dbg !5518
  %tobool109 = icmp ne i32 %97, 0, !dbg !5518
  br i1 %tobool109, label %if.end111, label %if.then110, !dbg !5520

if.then110:                                       ; preds = %do.end106
  store %struct.ld_semaphore* null, %struct.ld_semaphore** %retval, align 8, !dbg !5521
  br label %return, !dbg !5521

if.end111:                                        ; preds = %do.end106
  %98 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5522
  store %struct.ld_semaphore* %98, %struct.ld_semaphore** %retval, align 8, !dbg !5523
  br label %return, !dbg !5523

return:                                           ; preds = %if.end111, %if.then110, %do.end18
  %99 = load %struct.ld_semaphore*, %struct.ld_semaphore** %retval, align 8, !dbg !5524
  ret %struct.ld_semaphore* %99, !dbg !5524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @writer_trylock(%struct.ld_semaphore* %sem) #0 !dbg !5525 {
entry:
  %v.addr.i5.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i5.i.i, metadata !4051, metadata !DIExpression()), !dbg !5526
  %old.addr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i.i, metadata !4066, metadata !DIExpression()), !dbg !5532
  %new.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i.i, metadata !4068, metadata !DIExpression()), !dbg !5533
  %success.i.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i.i, metadata !4070, metadata !DIExpression()), !dbg !5534
  %_old.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %_old.i.i.i, metadata !4073, metadata !DIExpression()), !dbg !5534
  %__old.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__old.i.i.i, metadata !4074, metadata !DIExpression()), !dbg !5534
  %__new.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__new.i.i.i, metadata !4075, metadata !DIExpression()), !dbg !5534
  %__ptr.i.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %__ptr.i.i.i, metadata !4076, metadata !DIExpression()), !dbg !5534
  %tmp.i.i.i6 = alloca i64, align 8
  %v.addr.i1.i.i7 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i1.i.i7, metadata !3983, metadata !DIExpression()), !dbg !5535
  %size.addr.i2.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i2.i.i, metadata !3987, metadata !DIExpression()), !dbg !5537
  %v.addr.i.i.i8 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i8, metadata !3983, metadata !DIExpression()), !dbg !5538
  %size.addr.i.i.i9 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i9, metadata !3987, metadata !DIExpression()), !dbg !5540
  %v.addr.i.i10 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i10, metadata !4083, metadata !DIExpression()), !dbg !5541
  %old.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i.i, metadata !4085, metadata !DIExpression()), !dbg !5542
  %new.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i.i, metadata !4087, metadata !DIExpression()), !dbg !5543
  %v.addr.i11 = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i11, metadata !4089, metadata !DIExpression()), !dbg !5544
  %old.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %old.addr.i, metadata !4091, metadata !DIExpression()), !dbg !5545
  %new.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %new.addr.i, metadata !4093, metadata !DIExpression()), !dbg !5546
  %i.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i.i, metadata !3965, metadata !DIExpression()), !dbg !5547
  %v.addr.i1.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i1.i.i, metadata !3978, metadata !DIExpression()), !dbg !5551
  %__ret.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret.i.i.i, metadata !3980, metadata !DIExpression()), !dbg !5552
  %tmp.i.i.i = alloca i64, align 8
  %v.addr.i.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i.i, metadata !3983, metadata !DIExpression()), !dbg !5553
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3987, metadata !DIExpression()), !dbg !5555
  %i.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i.i, metadata !3989, metadata !DIExpression()), !dbg !5556
  %v.addr.i.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i.i, metadata !3991, metadata !DIExpression()), !dbg !5557
  %i.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.addr.i, metadata !3993, metadata !DIExpression()), !dbg !5558
  %v.addr.i = alloca %struct.atomic64_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic64_t** %v.addr.i, metadata !3995, metadata !DIExpression()), !dbg !5559
  %retval = alloca i32, align 4
  %sem.addr = alloca %struct.ld_semaphore*, align 8
  %count = alloca i64, align 8
  store %struct.ld_semaphore* %sem, %struct.ld_semaphore** %sem.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ld_semaphore** %sem.addr, metadata !5560, metadata !DIExpression()), !dbg !5561
  call void @llvm.dbg.declare(metadata i64* %count, metadata !5562, metadata !DIExpression()), !dbg !5563
  %0 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5564
  %count1 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %0, i32 0, i32 0, !dbg !5565
  store i64 1, i64* %i.addr.i, align 8
  store %struct.atomic64_t* %count1, %struct.atomic64_t** %v.addr.i, align 8
  %1 = load i64, i64* %i.addr.i, align 8, !dbg !5566
  %2 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i, align 8, !dbg !5567
  store i64 %1, i64* %i.addr.i.i, align 8
  store %struct.atomic64_t* %2, %struct.atomic64_t** %v.addr.i.i, align 8
  %3 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !5568
  %4 = bitcast %struct.atomic64_t* %3 to i8*, !dbg !5568
  store i8* %4, i8** %v.addr.i.i.i, align 8
  store i64 8, i64* %size.addr.i.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !5569
  %6 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5570
  %conv.i.i.i = trunc i64 %6 to i32, !dbg !5570
  %call.i.i.i = call zeroext i1 @kasan_check_write(i8* %5, i32 %conv.i.i.i) #6, !dbg !5571
  %7 = load i8*, i8** %v.addr.i.i.i, align 8, !dbg !5572
  %8 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5572
  call void @kcsan_check_access(i8* %7, i64 %8, i32 7) #6, !dbg !5572
  %9 = load i64, i64* %i.addr.i.i, align 8, !dbg !5573
  %10 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i, align 8, !dbg !5574
  store i64 %9, i64* %i.addr.i.i.i, align 8
  store %struct.atomic64_t* %10, %struct.atomic64_t** %v.addr.i1.i.i, align 8
  %11 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !5575
  %12 = load i64, i64* %i.addr.i.i.i, align 8, !dbg !5552
  store i64 %12, i64* %__ret.i.i.i, align 8, !dbg !5552
  %13 = load i64, i64* %__ret.i.i.i, align 8, !dbg !5552
  %14 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i1.i.i, align 8, !dbg !5552
  %counter.i.i.i = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %14, i32 0, i32 0, !dbg !5552
  %15 = call i64 asm sideeffect "xaddq ${0:q}, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64* %counter.i.i.i, i64 %13, i64* %counter.i.i.i) #5, !dbg !5552, !srcloc !4020
  store i64 %15, i64* %__ret.i.i.i, align 8, !dbg !5552
  %16 = load i64, i64* %__ret.i.i.i, align 8, !dbg !5552
  store i64 %16, i64* %tmp.i.i.i, align 8, !dbg !5552
  %17 = load i64, i64* %tmp.i.i.i, align 8, !dbg !5552
  %add.i.i.i = add i64 %11, %17, !dbg !5576
  store i64 %add.i.i.i, i64* %count, align 8, !dbg !5563
  br label %do.body, !dbg !5577

do.body:                                          ; preds = %do.cond, %entry
  %18 = load i64, i64* %count, align 8, !dbg !5578
  %and = and i64 %18, 4294967295, !dbg !5580
  %cmp = icmp eq i64 %and, 1, !dbg !5581
  br i1 %cmp, label %if.then, label %if.end, !dbg !5582

if.then:                                          ; preds = %do.body
  store i32 1, i32* %retval, align 4, !dbg !5583
  br label %do.end, !dbg !5583

if.end:                                           ; preds = %do.body
  %19 = load %struct.ld_semaphore*, %struct.ld_semaphore** %sem.addr, align 8, !dbg !5584
  %count2 = getelementptr inbounds %struct.ld_semaphore, %struct.ld_semaphore* %19, i32 0, i32 0, !dbg !5585
  %20 = load i64, i64* %count, align 8, !dbg !5586
  %sub = sub i64 %20, 1, !dbg !5587
  store %struct.atomic64_t* %count2, %struct.atomic64_t** %v.addr.i11, align 8
  store i64* %count, i64** %old.addr.i, align 8
  store i64 %sub, i64* %new.addr.i, align 8
  %21 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i11, align 8, !dbg !5588
  %22 = load i64*, i64** %old.addr.i, align 8, !dbg !5589
  %23 = load i64, i64* %new.addr.i, align 8, !dbg !5590
  store %struct.atomic64_t* %21, %struct.atomic64_t** %v.addr.i.i10, align 8
  store i64* %22, i64** %old.addr.i.i, align 8
  store i64 %23, i64* %new.addr.i.i, align 8
  %24 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i10, align 8, !dbg !5591
  %25 = bitcast %struct.atomic64_t* %24 to i8*, !dbg !5591
  store i8* %25, i8** %v.addr.i.i.i8, align 8
  store i64 8, i64* %size.addr.i.i.i9, align 8
  %26 = load i8*, i8** %v.addr.i.i.i8, align 8, !dbg !5592
  %27 = load i64, i64* %size.addr.i.i.i9, align 8, !dbg !5593
  %conv.i.i.i12 = trunc i64 %27 to i32, !dbg !5593
  %call.i.i.i13 = call zeroext i1 @kasan_check_write(i8* %26, i32 %conv.i.i.i12) #6, !dbg !5594
  %28 = load i8*, i8** %v.addr.i.i.i8, align 8, !dbg !5595
  %29 = load i64, i64* %size.addr.i.i.i9, align 8, !dbg !5595
  call void @kcsan_check_access(i8* %28, i64 %29, i32 7) #6, !dbg !5595
  %30 = load i64*, i64** %old.addr.i.i, align 8, !dbg !5596
  %31 = bitcast i64* %30 to i8*, !dbg !5596
  store i8* %31, i8** %v.addr.i1.i.i7, align 8
  store i64 8, i64* %size.addr.i2.i.i, align 8
  %32 = load i8*, i8** %v.addr.i1.i.i7, align 8, !dbg !5597
  %33 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !5598
  %conv.i3.i.i = trunc i64 %33 to i32, !dbg !5598
  %call.i4.i.i = call zeroext i1 @kasan_check_write(i8* %32, i32 %conv.i3.i.i) #6, !dbg !5599
  %34 = load i8*, i8** %v.addr.i1.i.i7, align 8, !dbg !5600
  %35 = load i64, i64* %size.addr.i2.i.i, align 8, !dbg !5600
  call void @kcsan_check_access(i8* %34, i64 %35, i32 7) #6, !dbg !5600
  %36 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i.i10, align 8, !dbg !5601
  %37 = load i64*, i64** %old.addr.i.i, align 8, !dbg !5602
  %38 = load i64, i64* %new.addr.i.i, align 8, !dbg !5603
  store %struct.atomic64_t* %36, %struct.atomic64_t** %v.addr.i5.i.i, align 8
  store i64* %37, i64** %old.addr.i.i.i, align 8
  store i64 %38, i64* %new.addr.i.i.i, align 8
  %39 = load i64*, i64** %old.addr.i.i.i, align 8, !dbg !5534
  store i64* %39, i64** %_old.i.i.i, align 8, !dbg !5534
  %40 = load i64*, i64** %_old.i.i.i, align 8, !dbg !5534
  %41 = load i64, i64* %40, align 8, !dbg !5534
  store i64 %41, i64* %__old.i.i.i, align 8, !dbg !5534
  %42 = load i64, i64* %new.addr.i.i.i, align 8, !dbg !5534
  store i64 %42, i64* %__new.i.i.i, align 8, !dbg !5534
  %43 = load %struct.atomic64_t*, %struct.atomic64_t** %v.addr.i5.i.i, align 8, !dbg !5534
  %counter.i.i.i14 = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %43, i32 0, i32 0, !dbg !5534
  store i64* %counter.i.i.i14, i64** %__ptr.i.i.i, align 8, !dbg !5534
  %44 = load i64*, i64** %__ptr.i.i.i, align 8, !dbg !5534
  %45 = load i64, i64* %__old.i.i.i, align 8, !dbg !5534
  %46 = load i64, i64* %__new.i.i.i, align 8, !dbg !5534
  %47 = call { i8, i64 } asm sideeffect "cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %44, i64 %46, i64* %44, i64 %45) #5, !dbg !5534, !srcloc !4154
  %asmresult.i.i.i = extractvalue { i8, i64 } %47, 0, !dbg !5534
  %asmresult1.i.i.i = extractvalue { i8, i64 } %47, 1, !dbg !5534
  store i8 %asmresult.i.i.i, i8* %success.i.i.i, align 1, !dbg !5534
  store i64 %asmresult1.i.i.i, i64* %__old.i.i.i, align 8, !dbg !5534
  %48 = load i8, i8* %success.i.i.i, align 1, !dbg !5604
  %tobool.i.i.i = trunc i8 %48 to i1, !dbg !5604
  %lnot.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !5604
  %lnot3.i.i.i = xor i1 %tobool.i.i.i, true, !dbg !5604
  %lnot.ext.i.i.i = zext i1 %lnot3.i.i.i to i32, !dbg !5604
  %conv.i6.i.i = sext i32 %lnot.ext.i.i.i to i64, !dbg !5604
  br i1 %lnot3.i.i.i, label %if.then.i.i.i, label %atomic_long_try_cmpxchg.exit, !dbg !5534

if.then.i.i.i:                                    ; preds = %if.end
  %49 = load i64, i64* %__old.i.i.i, align 8, !dbg !5604
  %50 = load i64*, i64** %_old.i.i.i, align 8, !dbg !5604
  store i64 %49, i64* %50, align 8, !dbg !5604
  br label %atomic_long_try_cmpxchg.exit, !dbg !5604

atomic_long_try_cmpxchg.exit:                     ; preds = %if.end, %if.then.i.i.i
  %51 = load i8, i8* %success.i.i.i, align 1, !dbg !5534
  %tobool5.i.i.i = trunc i8 %51 to i1, !dbg !5534
  %lnot6.i.i.i = xor i1 %tobool5.i.i.i, true, !dbg !5534
  %lnot.ext9.i.i.i = zext i1 %tobool5.i.i.i to i32, !dbg !5534
  %conv10.i.i.i = sext i32 %lnot.ext9.i.i.i to i64, !dbg !5534
  store i64 %conv10.i.i.i, i64* %tmp.i.i.i6, align 8, !dbg !5604
  %52 = load i64, i64* %tmp.i.i.i6, align 8, !dbg !5534
  %tobool11.i.i.i = icmp ne i64 %52, 0, !dbg !5605
  br i1 %tobool11.i.i.i, label %if.then4, label %if.end5, !dbg !5606

if.then4:                                         ; preds = %atomic_long_try_cmpxchg.exit
  store i32 0, i32* %retval, align 4, !dbg !5607
  br label %do.end, !dbg !5607

if.end5:                                          ; preds = %atomic_long_try_cmpxchg.exit
  br label %do.cond, !dbg !5608

do.cond:                                          ; preds = %if.end5
  br i1 true, label %do.body, label %do.end, !dbg !5608, !llvm.loop !5609

do.end:                                           ; preds = %if.then, %if.then4, %do.cond
  %53 = load i32, i32* %retval, align 4, !dbg !5611
  ret i32 %53, !dbg !5611
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !5612 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5615, metadata !DIExpression()), !dbg !5616
  %call = call i64 @arch_local_save_flags() #7, !dbg !5617
  store i64 %call, i64* %f, align 8, !dbg !5618
  call void @arch_local_irq_disable() #7, !dbg !5619
  %0 = load i64, i64* %f, align 8, !dbg !5620
  ret i64 %0, !dbg !5621
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5622 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5625, metadata !DIExpression()), !dbg !5626
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5627, metadata !DIExpression()), !dbg !5629
  %0 = load i64, i64* %__edi, align 8, !dbg !5629
  store i64 %0, i64* %__edi, align 8, !dbg !5629
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5630, metadata !DIExpression()), !dbg !5629
  %1 = load i64, i64* %__esi, align 8, !dbg !5629
  store i64 %1, i64* %__esi, align 8, !dbg !5629
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5631, metadata !DIExpression()), !dbg !5629
  %2 = load i64, i64* %__edx, align 8, !dbg !5629
  store i64 %2, i64* %__edx, align 8, !dbg !5629
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5632, metadata !DIExpression()), !dbg !5629
  %3 = load i64, i64* %__ecx, align 8, !dbg !5629
  store i64 %3, i64* %__ecx, align 8, !dbg !5629
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5633, metadata !DIExpression()), !dbg !5629
  %4 = load i64, i64* %__eax, align 8, !dbg !5629
  store i64 %4, i64* %__eax, align 8, !dbg !5629
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5629
  %6 = call i64 @llvm.read_register.i64(metadata !3856), !dbg !5629
  %7 = load i64, i64* %f.addr, align 8, !dbg !5629
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #5, !dbg !5629, !srcloc !5634
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5629
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5629
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5629
  call void @llvm.write_register.i64(metadata !3856, i64 %asmresult1), !dbg !5629
  ret void, !dbg !5635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5636 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5637, metadata !DIExpression()), !dbg !5639
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5640, metadata !DIExpression()), !dbg !5639
  %0 = load i64, i64* %__edi, align 8, !dbg !5639
  store i64 %0, i64* %__edi, align 8, !dbg !5639
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5641, metadata !DIExpression()), !dbg !5639
  %1 = load i64, i64* %__esi, align 8, !dbg !5639
  store i64 %1, i64* %__esi, align 8, !dbg !5639
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5642, metadata !DIExpression()), !dbg !5639
  %2 = load i64, i64* %__edx, align 8, !dbg !5639
  store i64 %2, i64* %__edx, align 8, !dbg !5639
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5643, metadata !DIExpression()), !dbg !5639
  %3 = load i64, i64* %__ecx, align 8, !dbg !5639
  store i64 %3, i64* %__ecx, align 8, !dbg !5639
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5644, metadata !DIExpression()), !dbg !5639
  %4 = load i64, i64* %__eax, align 8, !dbg !5639
  store i64 %4, i64* %__eax, align 8, !dbg !5639
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5639
  %6 = call i64 @llvm.read_register.i64(metadata !3856), !dbg !5645
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #5, !dbg !5645, !srcloc !5648
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5645
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5645
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5645
  call void @llvm.write_register.i64(metadata !3856, i64 %asmresult1), !dbg !5645
  %8 = load i64, i64* %__eax, align 8, !dbg !5645
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5649, metadata !DIExpression()), !dbg !5651
  store i64 -1, i64* %__mask, align 8, !dbg !5651
  %9 = load i64, i64* %__mask, align 8, !dbg !5651
  store i64 %9, i64* %tmp, align 8, !dbg !5651
  %10 = load i64, i64* %tmp, align 8, !dbg !5651
  %and = and i64 %8, %10, !dbg !5645
  store i64 %and, i64* %__ret, align 8, !dbg !5645
  %11 = load i64, i64* %__ret, align 8, !dbg !5639
  store i64 %11, i64* %tmp2, align 8, !dbg !5652
  %12 = load i64, i64* %tmp2, align 8, !dbg !5639
  ret i64 %12, !dbg !5653
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { noredzone nounwind }
attributes #7 = { noredzone }
attributes #8 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!3856}
!llvm.module.flags = !{!3857, !3858, !3859, !3860}
!llvm.ident = !{!3861}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !91, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/tty/tty_ldsem.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !14, !21, !27, !33, !42, !50, !56, !62, !69, !77, !83}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !10, line: 65, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!11 = !{!12, !13}
!12 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !15, line: 15, baseType: !5, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!20 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !22, line: 54, baseType: !5, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!25 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!26 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !28, line: 26, baseType: !5, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!29 = !{!30, !31, !32}
!30 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !34, line: 296, baseType: !5, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!35 = !{!36, !37, !38, !39, !40, !41}
!36 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!37 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!38 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!39 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!40 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!41 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !43, line: 9, baseType: !5, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!46 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!47 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!48 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!49 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !51, line: 16, baseType: !5, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !57, line: 44, baseType: !5, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !63, line: 343, baseType: !5, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!66 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!67 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!68 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !70, line: 524, baseType: !5, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74, !75, !76}
!72 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !70, line: 502, baseType: !5, size: 32, elements: !78)
!78 = !{!79, !80, !81, !82}
!79 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !84, line: 119, baseType: !5, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!85 = !{!86, !87, !88, !89, !90}
!86 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!87 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!88 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!89 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!90 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!91 = !{!92, !99, !107, !110, !113, !3841, !128, !122, !3842, !3844, !3849, !3850, !3853, !3854}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !95, line: 22, baseType: !96)
!95 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !97, line: 30, baseType: !98)
!97 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!98 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !103, line: 178, size: 128, elements: !104)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !103, line: 179, baseType: !101, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !103, line: 179, baseType: !101, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !109)
!109 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !115, line: 640, size: 48640, elements: !116)
!115 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!116 = !{!117, !126, !127, !129, !139, !140, !141, !142, !143, !144, !145, !146, !150, !179, !191, !298, !299, !300, !311, !312, !314, !315, !2450, !2451, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2528, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2543, !2544, !2545, !2547, !2548, !2549, !2550, !2551, !2552, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2576, !2581, !2582, !2583, !2584, !2585, !2587, !2590, !2593, !2596, !2599, !2602, !3413, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3459, !3460, !3461, !3462, !3463, !3468, !3469, !3470, !3473, !3474, !3477, !3480, !3483, !3484, !3516, !3519, !3520, !3599, !3600, !3603, !3604, !3607, !3608, !3609, !3613, !3614, !3615, !3628, !3629, !3630, !3640, !3645, !3646, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !114, file: !115, line: 646, baseType: !118, size: 128)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !119, line: 56, size: 128, elements: !120)
!119 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !119, line: 57, baseType: !122, size: 64)
!122 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !118, file: !119, line: 58, baseType: !124, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !95, line: 21, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !97, line: 27, baseType: !5)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !114, file: !115, line: 649, baseType: !108, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !114, file: !115, line: 657, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !114, file: !115, line: 658, baseType: !130, size: 32, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !84, line: 113, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !84, line: 111, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !131, file: !84, line: 112, baseType: !134, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !103, line: 168, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 166, size: 32, elements: !136)
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !135, file: !103, line: 167, baseType: !138, size: 32)
!138 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !115, line: 660, baseType: !5, size: 32, offset: 288)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !114, file: !115, line: 661, baseType: !5, size: 32, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !114, file: !115, line: 684, baseType: !138, size: 32, offset: 352)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !114, file: !115, line: 686, baseType: !138, size: 32, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !114, file: !115, line: 687, baseType: !138, size: 32, offset: 416)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !114, file: !115, line: 688, baseType: !138, size: 32, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !114, file: !115, line: 689, baseType: !5, size: 32, offset: 480)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !114, file: !115, line: 691, baseType: !147, size: 64, offset: 512)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !115, line: 691, flags: DIFlagFwdDecl)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !114, file: !115, line: 692, baseType: !151, size: 832, offset: 576)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !115, line: 451, size: 832, elements: !152)
!152 = !{!153, !158, !166, !167, !168, !172, !173, !174, !175, !176}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !151, file: !115, line: 453, baseType: !154, size: 128)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !115, line: 325, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !154, file: !115, line: 326, baseType: !122, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !154, file: !115, line: 327, baseType: !124, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !151, file: !115, line: 454, baseType: !159, size: 192, align: 64, offset: 128)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !160, line: 24, size: 192, align: 64, elements: !161)
!160 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!161 = !{!162, !163, !165}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !159, file: !160, line: 25, baseType: !122, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !159, file: !160, line: 26, baseType: !164, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !159, file: !160, line: 27, baseType: !164, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !151, file: !115, line: 455, baseType: !102, size: 128, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !151, file: !115, line: 456, baseType: !5, size: 32, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !151, file: !115, line: 458, baseType: !169, size: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !95, line: 23, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !97, line: 31, baseType: !171)
!171 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !151, file: !115, line: 459, baseType: !169, size: 64, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !151, file: !115, line: 460, baseType: !169, size: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !151, file: !115, line: 461, baseType: !169, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !151, file: !115, line: 463, baseType: !169, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !151, file: !115, line: 465, baseType: !177, offset: 832)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !115, line: 415, elements: !178)
!178 = !{}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !114, file: !115, line: 693, baseType: !180, size: 384, offset: 1408)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !115, line: 489, size: 384, elements: !181)
!181 = !{!182, !183, !184, !185, !186, !188, !189}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !180, file: !115, line: 490, baseType: !102, size: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !180, file: !115, line: 491, baseType: !122, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !180, file: !115, line: 492, baseType: !122, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !180, file: !115, line: 493, baseType: !5, size: 32, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !180, file: !115, line: 494, baseType: !187, size: 16, offset: 288)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !180, file: !115, line: 495, baseType: !187, size: 16, offset: 304)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !180, file: !115, line: 497, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !114, file: !115, line: 697, baseType: !192, size: 1792, offset: 1792)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !115, line: 507, size: 1792, elements: !193)
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !295, !296}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !192, file: !115, line: 508, baseType: !159, size: 192, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !192, file: !115, line: 515, baseType: !169, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !192, file: !115, line: 516, baseType: !169, size: 64, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !192, file: !115, line: 517, baseType: !169, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !192, file: !115, line: 518, baseType: !169, size: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !192, file: !115, line: 519, baseType: !169, size: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !192, file: !115, line: 526, baseType: !94, size: 64, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !192, file: !115, line: 527, baseType: !169, size: 64, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !192, file: !115, line: 528, baseType: !5, size: 32, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !192, file: !115, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !192, file: !115, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !192, file: !115, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !192, file: !115, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !192, file: !115, line: 563, baseType: !208, size: 512, offset: 704)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !10, line: 118, size: 512, elements: !209)
!209 = !{!210, !218, !219, !224, !288, !292, !293, !294}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !10, line: 119, baseType: !211, size: 256)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !212, line: 9, size: 256, elements: !213)
!212 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !211, file: !212, line: 10, baseType: !159, size: 192, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !211, file: !212, line: 11, baseType: !216, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !217, line: 29, baseType: !94)
!217 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !208, file: !10, line: 120, baseType: !216, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !208, file: !10, line: 121, baseType: !220, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!9, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !208, file: !10, line: 122, baseType: !225, size: 64, offset: 384)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !10, line: 159, size: 512, align: 512, elements: !227)
!227 = !{!228, !256, !257, !261, !271, !272, !283, !287}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !226, file: !10, line: 160, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !10, line: 214, size: 4608, align: 512, elements: !231)
!231 = !{!232, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !230, file: !10, line: 215, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !234, line: 29, baseType: !235)
!234 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !234, line: 20, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !235, file: !234, line: 21, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !239, line: 25, baseType: !240)
!239 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 25, elements: !178)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !230, file: !10, line: 216, baseType: !5, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !230, file: !10, line: 217, baseType: !5, size: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !230, file: !10, line: 218, baseType: !5, size: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !230, file: !10, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !230, file: !10, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !230, file: !10, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !230, file: !10, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !230, file: !10, line: 233, baseType: !216, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !230, file: !10, line: 234, baseType: !223, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !230, file: !10, line: 235, baseType: !216, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !230, file: !10, line: 236, baseType: !223, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !230, file: !10, line: 237, baseType: !253, size: 4096, offset: 512)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 4096, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 8)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !226, file: !10, line: 161, baseType: !5, size: 32, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !226, file: !10, line: 162, baseType: !258, size: 32, offset: 96)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !103, line: 27, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !260, line: 96, baseType: !138)
!260 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!261 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !226, file: !10, line: 163, baseType: !262, size: 32, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !263, line: 276, baseType: !264)
!263 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !263, line: 276, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !264, file: !263, line: 276, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !263, line: 70, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !263, line: 65, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !268, file: !263, line: 66, baseType: !5, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !226, file: !10, line: 164, baseType: !223, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !226, file: !10, line: 165, baseType: !273, size: 128, offset: 256)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !212, line: 14, size: 128, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !273, file: !212, line: 15, baseType: !276, size: 128)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !160, line: 125, size: 128, elements: !277)
!277 = !{!278, !282}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !276, file: !160, line: 126, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !160, line: 31, size: 64, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !279, file: !160, line: 32, baseType: !164, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !276, file: !160, line: 127, baseType: !164, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !226, file: !10, line: 166, baseType: !284, size: 64, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!216}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !226, file: !10, line: 167, baseType: !216, size: 64, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !208, file: !10, line: 123, baseType: !289, size: 8, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !95, line: 17, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !97, line: 21, baseType: !291)
!291 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !208, file: !10, line: 124, baseType: !289, size: 8, offset: 456)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !208, file: !10, line: 125, baseType: !289, size: 8, offset: 464)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !208, file: !10, line: 126, baseType: !289, size: 8, offset: 472)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !192, file: !115, line: 572, baseType: !208, size: 512, offset: 1216)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !192, file: !115, line: 580, baseType: !297, size: 64, offset: 1728)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !114, file: !115, line: 721, baseType: !5, size: 32, offset: 3584)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !114, file: !115, line: 722, baseType: !138, size: 32, offset: 3616)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !114, file: !115, line: 723, baseType: !301, size: 64, offset: 3648)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !304, line: 17, baseType: !305)
!304 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !304, line: 17, size: 64, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !305, file: !304, line: 17, baseType: !308, size: 64)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 1)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !114, file: !115, line: 724, baseType: !303, size: 64, offset: 3712)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !114, file: !115, line: 749, baseType: !313, offset: 3776)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !115, line: 290, elements: !178)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !114, file: !115, line: 751, baseType: !102, size: 128, offset: 3776)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !114, file: !115, line: 757, baseType: !316, size: 64, offset: 3904)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !318, line: 388, size: 7296, elements: !319)
!318 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320, !2446}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !318, line: 389, baseType: !321, size: 7296)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !318, line: 389, size: 7296, elements: !322)
!322 = !{!323, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2375, !2381, !2384, !2407, !2408, !2430, !2431, !2434, !2435, !2436, !2439, !2440, !2441, !2444, !2445}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !321, file: !318, line: 390, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !318, line: 305, size: 1472, elements: !326)
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !342, !343, !348, !349, !352, !356, !357, !2323, !2324, !2325}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !325, file: !318, line: 308, baseType: !122, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !325, file: !318, line: 309, baseType: !122, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !325, file: !318, line: 313, baseType: !324, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !325, file: !318, line: 313, baseType: !324, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !325, file: !318, line: 315, baseType: !159, size: 192, align: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !325, file: !318, line: 323, baseType: !122, size: 64, offset: 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !325, file: !318, line: 327, baseType: !316, size: 64, offset: 512)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !325, file: !318, line: 333, baseType: !335, size: 64, offset: 576)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !336, line: 284, baseType: !337)
!336 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !336, line: 284, size: 64, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !337, file: !336, line: 284, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !341, line: 19, baseType: !122)
!341 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !325, file: !318, line: 334, baseType: !122, size: 64, offset: 640)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !325, file: !318, line: 343, baseType: !344, size: 256, offset: 704)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !318, line: 340, size: 256, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !344, file: !318, line: 341, baseType: !159, size: 192, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !344, file: !318, line: 342, baseType: !122, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !325, file: !318, line: 351, baseType: !102, size: 128, offset: 960)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !325, file: !318, line: 353, baseType: !350, size: 64, offset: 1088)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !318, line: 353, flags: DIFlagFwdDecl)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !325, file: !318, line: 356, baseType: !353, size: 64, offset: 1152)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !318, line: 356, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !325, file: !318, line: 359, baseType: !122, size: 64, offset: 1216)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !325, file: !318, line: 361, baseType: !358, size: 64, offset: 1280)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !34, line: 916, size: 1856, align: 32, elements: !360)
!360 = !{!361, !379, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2122, !2307, !2316, !2317, !2318, !2319, !2320, !2321, !2322}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !359, file: !34, line: 920, baseType: !362, size: 128)
!362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !359, file: !34, line: 917, size: 128, elements: !363)
!363 = !{!364, !370}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !362, file: !34, line: 918, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !366, line: 58, size: 64, elements: !367)
!366 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !366, line: 59, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !362, file: !34, line: 919, baseType: !371, size: 128, align: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !103, line: 216, size: 128, align: 64, elements: !372)
!372 = !{!373, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !103, line: 217, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !371, file: !103, line: 218, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !374}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !359, file: !34, line: 921, baseType: !380, size: 128, offset: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !381, line: 8, size: 128, elements: !382)
!381 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!382 = !{!383, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !380, file: !381, line: 9, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !386, line: 18, flags: DIFlagFwdDecl)
!386 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !380, file: !381, line: 10, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !386, line: 89, size: 1536, elements: !390)
!390 = !{!391, !392, !397, !405, !406, !421, !2051, !2053, !2065, !2066, !2067, !2068, !2069, !2075, !2076, !2077}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !389, file: !386, line: 91, baseType: !5, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !389, file: !386, line: 92, baseType: !393, size: 32, offset: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !263, line: 277, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !263, line: 277, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !394, file: !263, line: 277, baseType: !267, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !389, file: !386, line: 93, baseType: !398, size: 128, offset: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !399, line: 38, size: 128, elements: !400)
!399 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!400 = !{!401, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !399, line: 39, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !398, file: !399, line: 39, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !389, file: !386, line: 94, baseType: !388, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !389, file: !386, line: 95, baseType: !407, size: 128, offset: 256)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !386, line: 47, size: 128, elements: !408)
!408 = !{!409, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, scope: !407, file: !386, line: 48, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !407, file: !386, line: 48, size: 64, elements: !411)
!411 = !{!412, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !386, line: 49, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !410, file: !386, line: 49, size: 64, elements: !414)
!414 = !{!415, !416}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !413, file: !386, line: 50, baseType: !124, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !413, file: !386, line: 50, baseType: !124, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !410, file: !386, line: 52, baseType: !169, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !407, file: !386, line: 54, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !389, file: !386, line: 96, baseType: !422, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !34, line: 610, size: 4224, elements: !424)
!424 = !{!425, !427, !428, !436, !443, !444, !600, !1461, !1462, !1463, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1730, !1738, !1739, !1740, !2047, !2048, !2049, !2050}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !423, file: !34, line: 611, baseType: !426, size: 16)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !103, line: 19, baseType: !187)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !423, file: !34, line: 612, baseType: !187, size: 16, offset: 16)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !423, file: !34, line: 613, baseType: !429, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !430, line: 23, baseType: !431)
!430 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 21, size: 32, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !431, file: !430, line: 22, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !103, line: 32, baseType: !435)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !260, line: 49, baseType: !5)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !423, file: !34, line: 614, baseType: !437, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !430, line: 28, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !430, line: 26, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !438, file: !430, line: 27, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !103, line: 33, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !260, line: 50, baseType: !5)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !423, file: !34, line: 615, baseType: !5, size: 32, offset: 96)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !423, file: !34, line: 622, baseType: !445, size: 64, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !34, line: 1864, size: 1536, align: 512, elements: !448)
!448 = !{!449, !453, !469, !473, !479, !484, !490, !494, !498, !502, !506, !507, !513, !517, !541, !570, !580, !586, !591, !595, !596}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !447, file: !34, line: 1865, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!388, !422, !388, !5}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !447, file: !34, line: 1866, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!457, !388, !422, !460}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !459)
!459 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !462, line: 10, size: 128, elements: !463)
!462 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!463 = !{!464, !468}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !461, file: !462, line: 11, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !128}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !461, file: !462, line: 12, baseType: !128, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !447, file: !34, line: 1867, baseType: !470, size: 64, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!138, !422, !138}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !447, file: !34, line: 1868, baseType: !474, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !422, !138}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !34, line: 581, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !447, file: !34, line: 1870, baseType: !480, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!138, !388, !483, !138}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !447, file: !34, line: 1872, baseType: !485, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!138, !422, !388, !426, !488}
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !103, line: 30, baseType: !489)
!489 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !447, file: !34, line: 1873, baseType: !491, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!138, !388, !422, !388}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !447, file: !34, line: 1874, baseType: !495, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!138, !422, !388}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !447, file: !34, line: 1875, baseType: !499, size: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!138, !422, !388, !457}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !447, file: !34, line: 1876, baseType: !503, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!138, !422, !388, !426}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !447, file: !34, line: 1877, baseType: !495, size: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !447, file: !34, line: 1878, baseType: !508, size: 64, offset: 704)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!138, !422, !388, !426, !511}
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !103, line: 16, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !103, line: 13, baseType: !124)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !447, file: !34, line: 1879, baseType: !514, size: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!138, !422, !388, !422, !388, !5}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !447, file: !34, line: 1881, baseType: !518, size: 64, offset: 832)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!138, !388, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !34, line: 219, size: 640, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !531, !538, !539, !540}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !522, file: !34, line: 220, baseType: !5, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !522, file: !34, line: 221, baseType: !426, size: 16, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !522, file: !34, line: 222, baseType: !429, size: 32, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !522, file: !34, line: 223, baseType: !437, size: 32, offset: 96)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !522, file: !34, line: 224, baseType: !529, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !103, line: 46, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !260, line: 88, baseType: !98)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !522, file: !34, line: 225, baseType: !532, size: 128, offset: 192)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !533, line: 13, size: 128, elements: !534)
!533 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!534 = !{!535, !537}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !532, file: !533, line: 14, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !533, line: 8, baseType: !96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !532, file: !533, line: 15, baseType: !109, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !522, file: !34, line: 226, baseType: !532, size: 128, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !522, file: !34, line: 227, baseType: !532, size: 128, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !522, file: !34, line: 234, baseType: !358, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !447, file: !34, line: 1882, baseType: !542, size: 64, offset: 896)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!138, !545, !547, !124, !5}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !549, line: 22, size: 1152, elements: !550)
!549 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!550 = !{!551, !552, !553, !554, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !548, file: !549, line: 23, baseType: !124, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !548, file: !549, line: 24, baseType: !426, size: 16, offset: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !548, file: !549, line: 25, baseType: !5, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !548, file: !549, line: 26, baseType: !555, size: 32, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !103, line: 104, baseType: !124)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !548, file: !549, line: 27, baseType: !169, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !548, file: !549, line: 28, baseType: !169, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !548, file: !549, line: 37, baseType: !169, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !548, file: !549, line: 38, baseType: !511, size: 32, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !548, file: !549, line: 39, baseType: !511, size: 32, offset: 352)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !548, file: !549, line: 40, baseType: !429, size: 32, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !548, file: !549, line: 41, baseType: !437, size: 32, offset: 416)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !548, file: !549, line: 42, baseType: !529, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !548, file: !549, line: 43, baseType: !532, size: 128, offset: 512)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !548, file: !549, line: 44, baseType: !532, size: 128, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !548, file: !549, line: 45, baseType: !532, size: 128, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !548, file: !549, line: 46, baseType: !532, size: 128, offset: 896)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !548, file: !549, line: 47, baseType: !169, size: 64, offset: 1024)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !548, file: !549, line: 48, baseType: !169, size: 64, offset: 1088)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !447, file: !34, line: 1883, baseType: !571, size: 64, offset: 960)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!574, !388, !483, !577}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !103, line: 60, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !260, line: 73, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !260, line: 15, baseType: !109)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 55, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !260, line: 72, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !260, line: 16, baseType: !122)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !447, file: !34, line: 1884, baseType: !581, size: 64, offset: 1024)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!138, !422, !584, !169, !169}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !34, line: 50, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !447, file: !34, line: 1886, baseType: !587, size: 64, offset: 1088)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!138, !422, !590, !138}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !447, file: !34, line: 1887, baseType: !592, size: 64, offset: 1152)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!138, !422, !388, !358, !5, !426}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !447, file: !34, line: 1890, baseType: !503, size: 64, offset: 1216)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !447, file: !34, line: 1891, baseType: !597, size: 64, offset: 1280)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!138, !422, !477, !138}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !423, file: !34, line: 623, baseType: !601, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !34, line: 1416, size: 9472, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !660, !1043, !1125, !1208, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1224, !1228, !1229, !1232, !1235, !1238, !1239, !1240, !1281, !1314, !1315, !1316, !1317, !1318, !1319, !1322, !1326, !1335, !1336, !1338, !1339, !1340, !1399, !1400, !1415, !1416, !1417, !1418, !1419, !1423, !1424, !1427, !1442, !1443, !1444, !1455, !1456, !1457, !1458, !1459, !1460}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !602, file: !34, line: 1417, baseType: !102, size: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !602, file: !34, line: 1418, baseType: !511, size: 32, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !602, file: !34, line: 1419, baseType: !291, size: 8, offset: 160)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !602, file: !34, line: 1420, baseType: !122, size: 64, offset: 192)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !602, file: !34, line: 1421, baseType: !529, size: 64, offset: 256)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !602, file: !34, line: 1422, baseType: !610, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !34, line: 2228, size: 576, elements: !612)
!612 = !{!613, !614, !615, !621, !625, !629, !633, !637, !638, !648, !651, !652, !653, !657, !658, !659}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !611, file: !34, line: 2229, baseType: !457, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !611, file: !34, line: 2230, baseType: !138, size: 32, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !611, file: !34, line: 2238, baseType: !616, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!138, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !34, line: 69, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !611, file: !34, line: 2239, baseType: !622, size: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !34, line: 70, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !611, file: !34, line: 2240, baseType: !626, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!388, !610, !138, !457, !128}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !611, file: !34, line: 2242, baseType: !630, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !601}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !611, file: !34, line: 2243, baseType: !634, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !636, line: 76, flags: DIFlagFwdDecl)
!636 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !611, file: !34, line: 2244, baseType: !610, size: 64, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !611, file: !34, line: 2245, baseType: !639, size: 64, offset: 512)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !103, line: 182, size: 64, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !639, file: !103, line: 183, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !103, line: 186, size: 128, elements: !644)
!644 = !{!645, !646}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !643, file: !103, line: 187, baseType: !642, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !643, file: !103, line: 187, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !611, file: !34, line: 2247, baseType: !649, offset: 576)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !650, line: 187, elements: !178)
!650 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!651 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !611, file: !34, line: 2248, baseType: !649, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !611, file: !34, line: 2249, baseType: !649, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !611, file: !34, line: 2250, baseType: !654, offset: 576)
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 3)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !611, file: !34, line: 2252, baseType: !649, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !611, file: !34, line: 2253, baseType: !649, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !611, file: !34, line: 2254, baseType: !649, offset: 576)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !602, file: !34, line: 1423, baseType: !661, size: 64, offset: 384)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !34, line: 1935, size: 1472, elements: !664)
!664 = !{!665, !669, !673, !674, !678, !684, !688, !689, !690, !694, !698, !699, !700, !701, !707, !712, !713, !775, !776, !777, !778, !1027, !1042}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !663, file: !34, line: 1936, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!422, !601}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !663, file: !34, line: 1937, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !422}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !663, file: !34, line: 1938, baseType: !670, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !663, file: !34, line: 1940, baseType: !675, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !422, !138}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !663, file: !34, line: 1941, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!138, !422, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !34, line: 289, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !663, file: !34, line: 1942, baseType: !685, size: 64, offset: 320)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!138, !422}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !663, file: !34, line: 1943, baseType: !670, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !663, file: !34, line: 1944, baseType: !630, size: 64, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !663, file: !34, line: 1945, baseType: !691, size: 64, offset: 512)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!138, !601, !138}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !663, file: !34, line: 1946, baseType: !695, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!138, !601}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !663, file: !34, line: 1947, baseType: !695, size: 64, offset: 640)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !663, file: !34, line: 1948, baseType: !695, size: 64, offset: 704)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !663, file: !34, line: 1949, baseType: !695, size: 64, offset: 768)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !663, file: !34, line: 1950, baseType: !702, size: 64, offset: 832)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!138, !388, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !34, line: 57, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !663, file: !34, line: 1951, baseType: !708, size: 64, offset: 896)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!138, !601, !711, !483}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !663, file: !34, line: 1952, baseType: !630, size: 64, offset: 960)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !663, file: !34, line: 1954, baseType: !714, size: 64, offset: 1024)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!138, !717, !388}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !719, line: 16, size: 896, elements: !720)
!719 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!720 = !{!721, !722, !723, !724, !725, !726, !727, !728, !748, !770, !771, !774}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !718, file: !719, line: 17, baseType: !483, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !718, file: !719, line: 18, baseType: !577, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !718, file: !719, line: 19, baseType: !577, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !718, file: !719, line: 20, baseType: !577, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !718, file: !719, line: 21, baseType: !577, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !718, file: !719, line: 22, baseType: !529, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !718, file: !719, line: 23, baseType: !529, size: 64, offset: 384)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !718, file: !719, line: 24, baseType: !729, size: 192, offset: 448)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !730, line: 53, size: 192, elements: !731)
!730 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!731 = !{!732, !739, !747}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !729, file: !730, line: 54, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !734, line: 13, baseType: !735)
!734 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !103, line: 175, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 173, size: 64, elements: !737)
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !736, file: !103, line: 174, baseType: !94, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !729, file: !730, line: 55, baseType: !740, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !234, line: 83, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !234, line: 71, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !234, line: 72, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !741, file: !234, line: 72, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !744, file: !234, line: 73, baseType: !235)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !729, file: !730, line: 59, baseType: !102, size: 128, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !718, file: !719, line: 25, baseType: !749, size: 64, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !719, line: 31, size: 256, elements: !752)
!752 = !{!753, !758, !762, !766}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !751, file: !719, line: 32, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!128, !717, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !751, file: !719, line: 33, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !717, !128}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !751, file: !719, line: 34, baseType: !763, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!128, !717, !128, !757}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !751, file: !719, line: 35, baseType: !767, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!138, !717, !128}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !718, file: !719, line: 26, baseType: !138, size: 32, offset: 704)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !718, file: !719, line: 27, baseType: !772, size: 64, offset: 768)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !718, file: !719, line: 28, baseType: !128, size: 64, offset: 832)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !663, file: !34, line: 1955, baseType: !714, size: 64, offset: 1088)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !663, file: !34, line: 1956, baseType: !714, size: 64, offset: 1152)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !663, file: !34, line: 1957, baseType: !714, size: 64, offset: 1216)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !663, file: !34, line: 1963, baseType: !779, size: 64, offset: 1280)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!138, !601, !782, !804}
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !318, line: 68, size: 512, align: 128, elements: !784)
!784 = !{!785, !786, !1019, !1026}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !318, line: 69, baseType: !122, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !318, line: 77, baseType: !787, size: 320, offset: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !318, line: 77, size: 320, elements: !788)
!788 = !{!789, !951, !956, !984, !992, !998, !1011, !1018}
!789 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !318, line: 78, baseType: !790, size: 320)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !318, line: 78, size: 320, elements: !791)
!791 = !{!792, !793, !949, !950}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !790, file: !318, line: 84, baseType: !102, size: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !790, file: !318, line: 86, baseType: !794, size: 64, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !34, line: 451, size: 1216, align: 64, elements: !796)
!796 = !{!797, !798, !806, !807, !808, !809, !817, !818, !819, !820, !942, !943, !946, !947, !948}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !795, file: !34, line: 452, baseType: !422, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !795, file: !34, line: 453, baseType: !799, size: 128, offset: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !800, line: 292, size: 128, elements: !801)
!800 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !803, !805}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !799, file: !800, line: 293, baseType: !740)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !799, file: !800, line: 295, baseType: !804, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !103, line: 148, baseType: !5)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !799, file: !800, line: 296, baseType: !128, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !795, file: !34, line: 454, baseType: !804, size: 32, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !795, file: !34, line: 455, baseType: !134, size: 32, offset: 224)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !795, file: !34, line: 460, baseType: !276, size: 128, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !795, file: !34, line: 461, baseType: !810, size: 256, offset: 384)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !811, line: 35, size: 256, elements: !812)
!811 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!812 = !{!813, !814, !815, !816}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !810, file: !811, line: 36, baseType: !733, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !810, file: !811, line: 42, baseType: !733, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !810, file: !811, line: 46, baseType: !233, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !810, file: !811, line: 47, baseType: !102, size: 128, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !795, file: !34, line: 462, baseType: !122, size: 64, offset: 640)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !795, file: !34, line: 463, baseType: !122, size: 64, offset: 704)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !795, file: !34, line: 464, baseType: !122, size: 64, offset: 768)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !795, file: !34, line: 465, baseType: !821, size: 64, offset: 832)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !34, line: 367, size: 1408, elements: !824)
!824 = !{!825, !829, !833, !837, !841, !845, !851, !857, !861, !866, !870, !874, !878, !906, !910, !916, !917, !918, !922, !927, !931, !938}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !823, file: !34, line: 368, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!138, !782, !682}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !823, file: !34, line: 369, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!138, !358, !782}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !823, file: !34, line: 372, baseType: !834, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!138, !794, !682}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !823, file: !34, line: 375, baseType: !838, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!138, !782}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !823, file: !34, line: 381, baseType: !842, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!138, !358, !794, !101, !5}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !823, file: !34, line: 383, baseType: !846, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !34, line: 290, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !823, file: !34, line: 385, baseType: !852, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!138, !358, !794, !529, !5, !5, !855, !856}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !823, file: !34, line: 388, baseType: !858, size: 64, offset: 448)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!138, !358, !794, !529, !5, !5, !782, !128}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !823, file: !34, line: 393, baseType: !862, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!865, !794, !865}
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !103, line: 125, baseType: !169)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !823, file: !34, line: 394, baseType: !867, size: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !782, !5, !5}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !823, file: !34, line: 395, baseType: !871, size: 64, offset: 640)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!138, !782, !804}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !823, file: !34, line: 396, baseType: !875, size: 64, offset: 704)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !782}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !823, file: !34, line: 397, baseType: !879, size: 64, offset: 768)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!574, !882, !904}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !34, line: 320, size: 384, elements: !884)
!884 = !{!885, !886, !887, !891, !892, !893, !896, !897}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !883, file: !34, line: 321, baseType: !358, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !883, file: !34, line: 326, baseType: !529, size: 64, offset: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !883, file: !34, line: 327, baseType: !888, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !882, !109, !109}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !883, file: !34, line: 328, baseType: !128, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !883, file: !34, line: 329, baseType: !138, size: 32, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !883, file: !34, line: 330, baseType: !894, size: 16, offset: 288)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !95, line: 19, baseType: !895)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !97, line: 24, baseType: !187)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !883, file: !34, line: 331, baseType: !894, size: 16, offset: 304)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !34, line: 332, baseType: !898, size: 64, offset: 320)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !34, line: 332, size: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !898, file: !34, line: 333, baseType: !5, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !898, file: !34, line: 334, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !34, line: 334, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !34, line: 64, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !823, file: !34, line: 402, baseType: !907, size: 64, offset: 832)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!138, !794, !782, !782, !14}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !823, file: !34, line: 404, baseType: !911, size: 64, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!488, !782, !914}
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !915, line: 305, baseType: !5)
!915 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!916 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !823, file: !34, line: 405, baseType: !875, size: 64, offset: 960)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !823, file: !34, line: 406, baseType: !838, size: 64, offset: 1024)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !823, file: !34, line: 407, baseType: !919, size: 64, offset: 1088)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!138, !782, !122, !122}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !823, file: !34, line: 409, baseType: !923, size: 64, offset: 1152)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !782, !926, !926}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !823, file: !34, line: 410, baseType: !928, size: 64, offset: 1216)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!138, !794, !782}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !823, file: !34, line: 413, baseType: !932, size: 64, offset: 1280)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!138, !935, !358, !937}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !34, line: 61, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !823, file: !34, line: 415, baseType: !939, size: 64, offset: 1344)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !358}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !795, file: !34, line: 466, baseType: !122, size: 64, offset: 896)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !795, file: !34, line: 467, baseType: !944, size: 32, offset: 960)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !945, line: 8, baseType: !124)
!945 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!946 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !795, file: !34, line: 468, baseType: !740, offset: 992)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !795, file: !34, line: 469, baseType: !102, size: 128, offset: 1024)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !795, file: !34, line: 470, baseType: !128, size: 64, offset: 1152)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !790, file: !318, line: 87, baseType: !122, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !790, file: !318, line: 94, baseType: !122, size: 64, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !318, line: 96, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !318, line: 96, size: 64, elements: !953)
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !952, file: !318, line: 101, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !103, line: 143, baseType: !169)
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !318, line: 103, baseType: !957, size: 320)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !318, line: 103, size: 320, elements: !958)
!958 = !{!959, !969, !972, !973}
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !318, line: 104, baseType: !960, size: 128)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !318, line: 104, size: 128, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !960, file: !318, line: 105, baseType: !102, size: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !960, file: !318, line: 106, baseType: !964, size: 128)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !960, file: !318, line: 106, size: 128, elements: !965)
!965 = !{!966, !967, !968}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !964, file: !318, line: 107, baseType: !782, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !964, file: !318, line: 109, baseType: !138, size: 32, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !964, file: !318, line: 110, baseType: !138, size: 32, offset: 96)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !957, file: !318, line: 117, baseType: !970, size: 64, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !318, line: 117, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !957, file: !318, line: 119, baseType: !128, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !318, line: 120, baseType: !974, size: 64, offset: 256)
!974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !318, line: 120, size: 64, elements: !975)
!975 = !{!976, !977, !978}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !974, file: !318, line: 121, baseType: !128, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !974, file: !318, line: 122, baseType: !122, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, scope: !974, file: !318, line: 123, baseType: !979, size: 32)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !974, file: !318, line: 123, size: 32, elements: !980)
!980 = !{!981, !982, !983}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !979, file: !318, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !979, file: !318, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !979, file: !318, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !318, line: 130, baseType: !985, size: 192)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !318, line: 130, size: 192, elements: !986)
!986 = !{!987, !988, !989, !990, !991}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !985, file: !318, line: 131, baseType: !122, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !985, file: !318, line: 134, baseType: !291, size: 8, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !985, file: !318, line: 135, baseType: !291, size: 8, offset: 72)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !985, file: !318, line: 136, baseType: !134, size: 32, offset: 96)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !985, file: !318, line: 137, baseType: !5, size: 32, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !318, line: 139, baseType: !993, size: 256)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !318, line: 139, size: 256, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !993, file: !318, line: 140, baseType: !122, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !993, file: !318, line: 141, baseType: !134, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !993, file: !318, line: 143, baseType: !102, size: 128, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !318, line: 145, baseType: !999, size: 256)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !318, line: 145, size: 256, elements: !1000)
!1000 = !{!1001, !1002, !1004, !1005, !1010}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !999, file: !318, line: 146, baseType: !122, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !999, file: !318, line: 147, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !336, line: 509, baseType: !782)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !999, file: !318, line: 148, baseType: !122, size: 64, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !999, file: !318, line: 149, baseType: !1006, size: 64, offset: 192)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !999, file: !318, line: 149, size: 64, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1006, file: !318, line: 150, baseType: !316, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1006, file: !318, line: 151, baseType: !134, size: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !999, file: !318, line: 156, baseType: !740, offset: 256)
!1011 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !318, line: 159, baseType: !1012, size: 128)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !318, line: 159, size: 128, elements: !1013)
!1013 = !{!1014, !1017}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1012, file: !318, line: 161, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !318, line: 161, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1012, file: !318, line: 162, baseType: !128, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !787, file: !318, line: 176, baseType: !371, size: 128, align: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !318, line: 179, baseType: !1020, size: 32, offset: 384)
!1020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !783, file: !318, line: 179, size: 32, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1020, file: !318, line: 184, baseType: !134, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1020, file: !318, line: 192, baseType: !5, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1020, file: !318, line: 194, baseType: !5, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1020, file: !318, line: 195, baseType: !138, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !783, file: !318, line: 199, baseType: !134, size: 32, offset: 416)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !663, file: !34, line: 1964, baseType: !1028, size: 64, offset: 1344)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!109, !601, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1033, line: 12, size: 256, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !{!1035, !1036, !1037, !1038, !1039}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1032, file: !1033, line: 13, baseType: !804, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1032, file: !1033, line: 16, baseType: !138, size: 32, offset: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1032, file: !1033, line: 23, baseType: !122, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1032, file: !1033, line: 30, baseType: !122, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1032, file: !1033, line: 33, baseType: !1040, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1033, line: 33, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !663, file: !34, line: 1966, baseType: !1028, size: 64, offset: 1408)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !602, file: !34, line: 1424, baseType: !1044, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !22, line: 322, size: 704, elements: !1047)
!1047 = !{!1048, !1094, !1098, !1102, !1103, !1104, !1105, !1106, !1111, !1116, !1120}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1046, file: !22, line: 323, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!138, !1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !22, line: 294, size: 1600, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1079, !1080, !1081}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1053, file: !22, line: 295, baseType: !643, size: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1053, file: !22, line: 296, baseType: !102, size: 128, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1053, file: !22, line: 297, baseType: !102, size: 128, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1053, file: !22, line: 298, baseType: !102, size: 128, offset: 384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1053, file: !22, line: 299, baseType: !729, size: 192, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1053, file: !22, line: 300, baseType: !740, offset: 704)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1053, file: !22, line: 301, baseType: !134, size: 32, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1053, file: !22, line: 302, baseType: !601, size: 64, offset: 768)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1053, file: !22, line: 303, baseType: !1064, size: 64, offset: 832)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !22, line: 68, size: 64, elements: !1065)
!1065 = !{!1066, !1078}
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !22, line: 69, baseType: !1067, size: 32)
!1067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !22, line: 69, size: 32, elements: !1068)
!1068 = !{!1069, !1070, !1071}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1067, file: !22, line: 70, baseType: !429, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1067, file: !22, line: 71, baseType: !437, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1067, file: !22, line: 72, baseType: !1072, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1073, line: 24, baseType: !1074)
!1073 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1073, line: 22, size: 32, elements: !1075)
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1074, file: !1073, line: 23, baseType: !1077, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1073, line: 20, baseType: !435)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1064, file: !22, line: 74, baseType: !21, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1053, file: !22, line: 304, baseType: !529, size: 64, offset: 896)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1053, file: !22, line: 305, baseType: !122, size: 64, offset: 960)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1053, file: !22, line: 306, baseType: !1082, size: 576, offset: 1024)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !22, line: 205, size: 576, elements: !1083)
!1083 = !{!1084, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1082, file: !22, line: 206, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !22, line: 66, baseType: !98)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1082, file: !22, line: 207, baseType: !1085, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1082, file: !22, line: 208, baseType: !1085, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1082, file: !22, line: 209, baseType: !1085, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1082, file: !22, line: 210, baseType: !1085, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1082, file: !22, line: 211, baseType: !1085, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1082, file: !22, line: 212, baseType: !1085, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1082, file: !22, line: 213, baseType: !536, size: 64, offset: 448)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1082, file: !22, line: 214, baseType: !536, size: 64, offset: 512)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1046, file: !22, line: 324, baseType: !1095, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!1052, !601, !138}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1046, file: !22, line: 325, baseType: !1099, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{null, !1052}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1046, file: !22, line: 326, baseType: !1049, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1046, file: !22, line: 327, baseType: !1049, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1046, file: !22, line: 328, baseType: !1049, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1046, file: !22, line: 329, baseType: !691, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1046, file: !22, line: 332, baseType: !1107, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!1110, !422}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1046, file: !22, line: 333, baseType: !1112, size: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!138, !422, !1115}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1046, file: !22, line: 335, baseType: !1117, size: 64, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!138, !422, !1110}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1046, file: !22, line: 337, baseType: !1121, size: 64, offset: 640)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!138, !601, !1124}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !602, file: !34, line: 1425, baseType: !1126, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !22, line: 428, size: 704, elements: !1129)
!1129 = !{!1130, !1134, !1135, !1139, !1140, !1141, !1156, !1179, !1183, !1184, !1207}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1128, file: !22, line: 429, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!138, !601, !138, !138, !545}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1128, file: !22, line: 430, baseType: !691, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1128, file: !22, line: 431, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!138, !601, !5}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1128, file: !22, line: 432, baseType: !1136, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1128, file: !22, line: 433, baseType: !691, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1128, file: !22, line: 434, baseType: !1142, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!138, !601, !138, !1145}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !22, line: 415, size: 256, elements: !1147)
!1147 = !{!1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1146, file: !22, line: 416, baseType: !138, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1146, file: !22, line: 417, baseType: !5, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1146, file: !22, line: 418, baseType: !5, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1146, file: !22, line: 420, baseType: !5, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1146, file: !22, line: 421, baseType: !5, size: 32, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1146, file: !22, line: 422, baseType: !5, size: 32, offset: 160)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1146, file: !22, line: 423, baseType: !5, size: 32, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1146, file: !22, line: 424, baseType: !5, size: 32, offset: 224)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1128, file: !22, line: 435, baseType: !1157, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!138, !601, !1064, !1160}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !22, line: 343, size: 960, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1161, file: !22, line: 344, baseType: !138, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1161, file: !22, line: 345, baseType: !169, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1161, file: !22, line: 346, baseType: !169, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1161, file: !22, line: 347, baseType: !169, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1161, file: !22, line: 348, baseType: !169, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1161, file: !22, line: 349, baseType: !169, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1161, file: !22, line: 350, baseType: !169, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1161, file: !22, line: 351, baseType: !94, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1161, file: !22, line: 353, baseType: !94, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1161, file: !22, line: 354, baseType: !138, size: 32, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1161, file: !22, line: 355, baseType: !138, size: 32, offset: 608)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1161, file: !22, line: 356, baseType: !169, size: 64, offset: 640)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1161, file: !22, line: 357, baseType: !169, size: 64, offset: 704)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1161, file: !22, line: 358, baseType: !169, size: 64, offset: 768)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1161, file: !22, line: 359, baseType: !94, size: 64, offset: 832)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1161, file: !22, line: 360, baseType: !138, size: 32, offset: 896)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1128, file: !22, line: 436, baseType: !1180, size: 64, offset: 448)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!138, !601, !1124, !1160}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1128, file: !22, line: 438, baseType: !1157, size: 64, offset: 512)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1128, file: !22, line: 439, baseType: !1185, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!138, !601, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !22, line: 409, size: 1408, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1189, file: !22, line: 410, baseType: !5, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1189, file: !22, line: 411, baseType: !1193, size: 1344, offset: 64)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 1344, elements: !655)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !22, line: 395, size: 448, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1206}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !22, line: 396, baseType: !5, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1194, file: !22, line: 397, baseType: !5, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1194, file: !22, line: 399, baseType: !5, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1194, file: !22, line: 400, baseType: !5, size: 32, offset: 96)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1194, file: !22, line: 401, baseType: !5, size: 32, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1194, file: !22, line: 402, baseType: !5, size: 32, offset: 160)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1194, file: !22, line: 403, baseType: !5, size: 32, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1194, file: !22, line: 404, baseType: !171, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1194, file: !22, line: 405, baseType: !1205, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !103, line: 126, baseType: !169)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1194, file: !22, line: 406, baseType: !1205, size: 64, offset: 384)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1128, file: !22, line: 440, baseType: !1136, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !602, file: !34, line: 1426, baseType: !1209, size: 64, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1211)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !34, line: 49, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !602, file: !34, line: 1427, baseType: !122, size: 64, offset: 640)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !602, file: !34, line: 1428, baseType: !122, size: 64, offset: 704)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !602, file: !34, line: 1429, baseType: !122, size: 64, offset: 768)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !602, file: !34, line: 1430, baseType: !388, size: 64, offset: 832)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !602, file: !34, line: 1431, baseType: !810, size: 256, offset: 896)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !602, file: !34, line: 1432, baseType: !138, size: 32, offset: 1152)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !602, file: !34, line: 1433, baseType: !134, size: 32, offset: 1184)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !602, file: !34, line: 1437, baseType: !1220, size: 64, offset: 1216)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1223)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !34, line: 1437, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !602, file: !34, line: 1449, baseType: !1225, size: 64, offset: 1280)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !399, line: 34, size: 64, elements: !1226)
!1226 = !{!1227}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1225, file: !399, line: 35, baseType: !402, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !602, file: !34, line: 1450, baseType: !102, size: 128, offset: 1344)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !602, file: !34, line: 1451, baseType: !1230, size: 64, offset: 1472)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !34, line: 699, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !602, file: !34, line: 1452, baseType: !1233, size: 64, offset: 1536)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !115, line: 40, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !602, file: !34, line: 1453, baseType: !1236, size: 64, offset: 1600)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !34, line: 1453, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !602, file: !34, line: 1454, baseType: !643, size: 128, offset: 1664)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !602, file: !34, line: 1455, baseType: !5, size: 32, offset: 1792)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !602, file: !34, line: 1456, baseType: !1241, size: 2432, offset: 1856)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !22, line: 518, size: 2432, elements: !1242)
!1242 = !{!1243, !1244, !1245, !1247, !1279}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1241, file: !22, line: 519, baseType: !5, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1241, file: !22, line: 520, baseType: !810, size: 256, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1241, file: !22, line: 521, baseType: !1246, size: 192, offset: 320)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 192, elements: !655)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1241, file: !22, line: 522, baseType: !1248, size: 1728, offset: 512)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1249, size: 1728, elements: !655)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !22, line: 222, size: 576, elements: !1250)
!1250 = !{!1251, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1249, file: !22, line: 223, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !22, line: 443, size: 256, elements: !1254)
!1254 = !{!1255, !1256, !1269, !1270}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1253, file: !22, line: 444, baseType: !138, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1253, file: !22, line: 445, baseType: !1257, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !22, line: 310, size: 512, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1259, file: !22, line: 311, baseType: !691, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1259, file: !22, line: 312, baseType: !691, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1259, file: !22, line: 313, baseType: !691, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1259, file: !22, line: 314, baseType: !691, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1259, file: !22, line: 315, baseType: !1049, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1259, file: !22, line: 316, baseType: !1049, size: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1259, file: !22, line: 317, baseType: !1049, size: 64, offset: 384)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1259, file: !22, line: 318, baseType: !1121, size: 64, offset: 448)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1253, file: !22, line: 446, baseType: !634, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1253, file: !22, line: 447, baseType: !1252, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1249, file: !22, line: 224, baseType: !138, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1249, file: !22, line: 226, baseType: !102, size: 128, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1249, file: !22, line: 227, baseType: !122, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1249, file: !22, line: 228, baseType: !5, size: 32, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1249, file: !22, line: 229, baseType: !5, size: 32, offset: 352)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1249, file: !22, line: 230, baseType: !1085, size: 64, offset: 384)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1249, file: !22, line: 231, baseType: !1085, size: 64, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1249, file: !22, line: 232, baseType: !128, size: 64, offset: 512)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1241, file: !22, line: 523, baseType: !1280, size: 192, offset: 2240)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1257, size: 192, elements: !655)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !602, file: !34, line: 1458, baseType: !1282, size: 2112, offset: 4288)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !34, line: 1410, size: 2112, elements: !1283)
!1283 = !{!1284, !1285, !1292}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1282, file: !34, line: 1411, baseType: !138, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1282, file: !34, line: 1412, baseType: !1286, size: 128, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1287, line: 40, baseType: !1288)
!1287 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1287, line: 36, size: 128, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1288, file: !1287, line: 37, baseType: !740)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1288, file: !1287, line: 38, baseType: !102, size: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1282, file: !34, line: 1413, baseType: !1293, size: 1920, offset: 192)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 1920, elements: !655)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1295, line: 12, size: 640, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1305, !1307, !1312, !1313}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1294, file: !1295, line: 13, baseType: !1298, size: 320)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1299, line: 17, size: 320, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1300 = !{!1301, !1302, !1303, !1304}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1298, file: !1299, line: 18, baseType: !138, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1298, file: !1299, line: 19, baseType: !138, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1298, file: !1299, line: 20, baseType: !1286, size: 128, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1298, file: !1299, line: 22, baseType: !371, size: 128, align: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1294, file: !1295, line: 14, baseType: !1306, size: 64, offset: 320)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1294, file: !1295, line: 15, baseType: !1308, size: 64, offset: 384)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1309, line: 16, size: 64, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1308, file: !1309, line: 17, baseType: !113, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1294, file: !1295, line: 16, baseType: !1286, size: 128, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1294, file: !1295, line: 17, baseType: !134, size: 32, offset: 576)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !602, file: !34, line: 1465, baseType: !128, size: 64, offset: 6400)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !602, file: !34, line: 1468, baseType: !124, size: 32, offset: 6464)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !602, file: !34, line: 1470, baseType: !536, size: 64, offset: 6528)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !602, file: !34, line: 1471, baseType: !536, size: 64, offset: 6592)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !602, file: !34, line: 1473, baseType: !125, size: 32, offset: 6656)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !602, file: !34, line: 1474, baseType: !1320, size: 64, offset: 6720)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !34, line: 603, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !602, file: !34, line: 1477, baseType: !1323, size: 256, offset: 6784)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 256, elements: !1324)
!1324 = !{!1325}
!1325 = !DISubrange(count: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !602, file: !34, line: 1478, baseType: !1327, size: 128, offset: 7040)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1328, line: 18, baseType: !1329)
!1328 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1328, line: 16, size: 128, elements: !1330)
!1330 = !{!1331}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1329, file: !1328, line: 17, baseType: !1332, size: 128)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 128, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 16)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !602, file: !34, line: 1480, baseType: !5, size: 32, offset: 7168)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !602, file: !34, line: 1481, baseType: !1337, size: 32, offset: 7200)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !103, line: 150, baseType: !5)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !602, file: !34, line: 1487, baseType: !729, size: 192, offset: 7232)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !602, file: !34, line: 1493, baseType: !457, size: 64, offset: 7424)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !602, file: !34, line: 1495, baseType: !1341, size: 64, offset: 7488)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1343)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !386, line: 135, size: 1024, align: 512, elements: !1344)
!1344 = !{!1345, !1349, !1350, !1357, !1363, !1367, !1371, !1375, !1376, !1380, !1384, !1389, !1393}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1343, file: !386, line: 136, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!138, !388, !5}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1343, file: !386, line: 137, baseType: !1346, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1343, file: !386, line: 138, baseType: !1351, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!138, !1354, !1356}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1343, file: !386, line: 139, baseType: !1358, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!138, !1354, !5, !457, !1361}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1343, file: !386, line: 141, baseType: !1364, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!138, !1354}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1343, file: !386, line: 142, baseType: !1368, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!138, !388}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1343, file: !386, line: 143, baseType: !1372, size: 64, offset: 384)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !388}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1343, file: !386, line: 144, baseType: !1372, size: 64, offset: 448)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1343, file: !386, line: 145, baseType: !1377, size: 64, offset: 512)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !388, !422}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1343, file: !386, line: 146, baseType: !1381, size: 64, offset: 576)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!483, !388, !483, !138}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1343, file: !386, line: 147, baseType: !1385, size: 64, offset: 640)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!384, !1388}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1343, file: !386, line: 148, baseType: !1390, size: 64, offset: 704)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!138, !545, !488}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1343, file: !386, line: 149, baseType: !1394, size: 64, offset: 768)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!388, !388, !1397}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !602, file: !34, line: 1500, baseType: !138, size: 32, offset: 7552)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !602, file: !34, line: 1502, baseType: !1401, size: 448, offset: 7616)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1033, line: 60, size: 448, elements: !1402)
!1402 = !{!1403, !1408, !1409, !1410, !1411, !1412, !1413}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1401, file: !1033, line: 61, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!122, !1407, !1031}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1401, file: !1033, line: 63, baseType: !1404, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1401, file: !1033, line: 66, baseType: !109, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1401, file: !1033, line: 67, baseType: !138, size: 32, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !1033, line: 68, baseType: !5, size: 32, offset: 224)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1401, file: !1033, line: 71, baseType: !102, size: 128, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1401, file: !1033, line: 77, baseType: !1414, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !602, file: !34, line: 1505, baseType: !733, size: 64, offset: 8064)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !602, file: !34, line: 1508, baseType: !733, size: 64, offset: 8128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !602, file: !34, line: 1511, baseType: !138, size: 32, offset: 8192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !602, file: !34, line: 1514, baseType: !944, size: 32, offset: 8224)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !602, file: !34, line: 1517, baseType: !1420, size: 64, offset: 8256)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1422, line: 18, flags: DIFlagFwdDecl)
!1422 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !602, file: !34, line: 1518, baseType: !639, size: 64, offset: 8320)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !602, file: !34, line: 1525, baseType: !1425, size: 64, offset: 8384)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !430, line: 18, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !602, file: !34, line: 1532, baseType: !1428, size: 64, offset: 8448)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1429, line: 52, size: 64, elements: !1430)
!1429 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1430 = !{!1431}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1428, file: !1429, line: 53, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1429, line: 40, size: 256, elements: !1434)
!1434 = !{!1435, !1436, !1441}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1433, file: !1429, line: 42, baseType: !740)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1433, file: !1429, line: 44, baseType: !1437, size: 192)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1429, line: 28, size: 192, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1437, file: !1429, line: 29, baseType: !102, size: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1437, file: !1429, line: 31, baseType: !109, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1433, file: !1429, line: 49, baseType: !109, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !602, file: !34, line: 1533, baseType: !1428, size: 64, offset: 8512)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !602, file: !34, line: 1534, baseType: !371, size: 128, align: 64, offset: 8576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !602, file: !34, line: 1535, baseType: !1445, size: 256, offset: 8704)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1422, line: 102, size: 256, elements: !1446)
!1446 = !{!1447, !1448, !1449}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1445, file: !1422, line: 103, baseType: !733, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1445, file: !1422, line: 104, baseType: !102, size: 128, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1445, file: !1422, line: 105, baseType: !1450, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1422, line: 21, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !602, file: !34, line: 1537, baseType: !729, size: 192, offset: 8960)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !602, file: !34, line: 1542, baseType: !138, size: 32, offset: 9152)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !602, file: !34, line: 1545, baseType: !740, offset: 9184)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !602, file: !34, line: 1546, baseType: !102, size: 128, offset: 9216)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !602, file: !34, line: 1548, baseType: !740, offset: 9344)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !602, file: !34, line: 1549, baseType: !102, size: 128, offset: 9344)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !423, file: !34, line: 624, baseType: !794, size: 64, offset: 256)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !423, file: !34, line: 631, baseType: !122, size: 64, offset: 320)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !34, line: 639, baseType: !1464, size: 32, offset: 384)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !423, file: !34, line: 639, size: 32, elements: !1465)
!1465 = !{!1466, !1468}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1464, file: !34, line: 640, baseType: !1467, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1464, file: !34, line: 641, baseType: !5, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !423, file: !34, line: 643, baseType: !511, size: 32, offset: 416)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !423, file: !34, line: 644, baseType: !529, size: 64, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !423, file: !34, line: 645, baseType: !532, size: 128, offset: 512)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !423, file: !34, line: 646, baseType: !532, size: 128, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !423, file: !34, line: 647, baseType: !532, size: 128, offset: 768)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !423, file: !34, line: 648, baseType: !740, offset: 896)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !423, file: !34, line: 649, baseType: !187, size: 16, offset: 896)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !423, file: !34, line: 650, baseType: !289, size: 8, offset: 912)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !423, file: !34, line: 651, baseType: !289, size: 8, offset: 920)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !423, file: !34, line: 652, baseType: !1205, size: 64, offset: 960)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !423, file: !34, line: 659, baseType: !122, size: 64, offset: 1024)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !423, file: !34, line: 660, baseType: !810, size: 256, offset: 1088)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !423, file: !34, line: 662, baseType: !122, size: 64, offset: 1344)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !423, file: !34, line: 663, baseType: !122, size: 64, offset: 1408)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !423, file: !34, line: 665, baseType: !643, size: 128, offset: 1472)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !423, file: !34, line: 666, baseType: !102, size: 128, offset: 1600)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !423, file: !34, line: 675, baseType: !102, size: 128, offset: 1728)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !423, file: !34, line: 676, baseType: !102, size: 128, offset: 1856)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !423, file: !34, line: 677, baseType: !102, size: 128, offset: 1984)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !34, line: 678, baseType: !1489, size: 128, offset: 2112)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !423, file: !34, line: 678, size: 128, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1489, file: !34, line: 679, baseType: !639, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1489, file: !34, line: 680, baseType: !371, size: 128, align: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !423, file: !34, line: 682, baseType: !735, size: 64, offset: 2240)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !423, file: !34, line: 683, baseType: !735, size: 64, offset: 2304)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !423, file: !34, line: 684, baseType: !134, size: 32, offset: 2368)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !423, file: !34, line: 685, baseType: !134, size: 32, offset: 2400)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !423, file: !34, line: 686, baseType: !134, size: 32, offset: 2432)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !423, file: !34, line: 688, baseType: !134, size: 32, offset: 2464)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !34, line: 690, baseType: !1500, size: 64, offset: 2496)
!1500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !423, file: !34, line: 690, size: 64, elements: !1501)
!1501 = !{!1502, !1729}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1500, file: !34, line: 691, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !34, line: 1822, size: 2048, elements: !1506)
!1506 = !{!1507, !1508, !1512, !1516, !1520, !1521, !1522, !1526, !1539, !1540, !1548, !1552, !1553, !1557, !1558, !1562, !1567, !1568, !1572, !1576, !1684, !1688, !1692, !1696, !1697, !1703, !1707, !1712, !1716, !1720, !1724, !1728}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1505, file: !34, line: 1823, baseType: !634, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1505, file: !34, line: 1824, baseType: !1509, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!529, !358, !529, !138}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1505, file: !34, line: 1825, baseType: !1513, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!574, !358, !483, !577, !757}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1505, file: !34, line: 1826, baseType: !1517, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!574, !358, !457, !577, !757}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1505, file: !34, line: 1827, baseType: !879, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1505, file: !34, line: 1828, baseType: !879, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1505, file: !34, line: 1829, baseType: !1523, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!138, !882, !488}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1505, file: !34, line: 1830, baseType: !1527, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!138, !358, !1530}
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !34, line: 1776, size: 128, elements: !1532)
!1532 = !{!1533, !1538}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1531, file: !34, line: 1777, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !34, line: 1773, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!138, !1530, !457, !138, !529, !169, !5}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1531, file: !34, line: 1778, baseType: !529, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1505, file: !34, line: 1831, baseType: !1527, size: 64, offset: 512)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1505, file: !34, line: 1832, baseType: !1541, size: 64, offset: 576)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1544, !358, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1545, line: 52, baseType: !5)
!1545 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !34, line: 56, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1505, file: !34, line: 1833, baseType: !1549, size: 64, offset: 640)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!109, !358, !5, !122}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1505, file: !34, line: 1834, baseType: !1549, size: 64, offset: 704)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1505, file: !34, line: 1835, baseType: !1554, size: 64, offset: 768)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!138, !358, !324}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1505, file: !34, line: 1836, baseType: !122, size: 64, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1505, file: !34, line: 1837, baseType: !1559, size: 64, offset: 896)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!138, !422, !358}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1505, file: !34, line: 1838, baseType: !1563, size: 64, offset: 960)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!138, !358, !1566}
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !34, line: 1007, baseType: !128)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1505, file: !34, line: 1839, baseType: !1559, size: 64, offset: 1024)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1505, file: !34, line: 1840, baseType: !1569, size: 64, offset: 1088)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!138, !358, !529, !529, !138}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1505, file: !34, line: 1841, baseType: !1573, size: 64, offset: 1152)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!138, !138, !358, !138}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1505, file: !34, line: 1842, baseType: !1577, size: 64, offset: 1216)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!138, !358, !138, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !34, line: 1062, size: 1664, elements: !1582)
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1614, !1615, !1616, !1629, !1660}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1581, file: !34, line: 1063, baseType: !1580, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1581, file: !34, line: 1064, baseType: !102, size: 128, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1581, file: !34, line: 1065, baseType: !643, size: 128, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1581, file: !34, line: 1066, baseType: !102, size: 128, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1581, file: !34, line: 1069, baseType: !102, size: 128, offset: 448)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1581, file: !34, line: 1072, baseType: !1566, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1581, file: !34, line: 1073, baseType: !5, size: 32, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1581, file: !34, line: 1074, baseType: !291, size: 8, offset: 672)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1581, file: !34, line: 1075, baseType: !5, size: 32, offset: 704)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1581, file: !34, line: 1076, baseType: !138, size: 32, offset: 736)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1581, file: !34, line: 1077, baseType: !1286, size: 128, offset: 768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1581, file: !34, line: 1078, baseType: !358, size: 64, offset: 896)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1581, file: !34, line: 1079, baseType: !529, size: 64, offset: 960)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1581, file: !34, line: 1080, baseType: !529, size: 64, offset: 1024)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1581, file: !34, line: 1082, baseType: !1598, size: 64, offset: 1088)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !34, line: 1314, size: 320, elements: !1600)
!1600 = !{!1601, !1609, !1610, !1611, !1612, !1613}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1599, file: !34, line: 1315, baseType: !1602)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1603, line: 20, baseType: !1604)
!1603 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1603, line: 11, elements: !1605)
!1605 = !{!1606}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1604, file: !1603, line: 12, baseType: !1607)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !239, line: 33, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 31, elements: !178)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1599, file: !34, line: 1316, baseType: !138, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1599, file: !34, line: 1317, baseType: !138, size: 32, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1599, file: !34, line: 1318, baseType: !1598, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1599, file: !34, line: 1319, baseType: !358, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1599, file: !34, line: 1320, baseType: !371, size: 128, align: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1581, file: !34, line: 1084, baseType: !122, size: 64, offset: 1152)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1581, file: !34, line: 1085, baseType: !122, size: 64, offset: 1216)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1581, file: !34, line: 1087, baseType: !1617, size: 64, offset: 1280)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !34, line: 1011, size: 128, elements: !1620)
!1620 = !{!1621, !1625}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1619, file: !34, line: 1012, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !1580, !1580}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1619, file: !34, line: 1013, baseType: !1626, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !1580}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1581, file: !34, line: 1088, baseType: !1630, size: 64, offset: 1344)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !34, line: 1016, size: 512, elements: !1633)
!1633 = !{!1634, !1638, !1642, !1643, !1647, !1651, !1655, !1659}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1632, file: !34, line: 1017, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!1566, !1566}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1632, file: !34, line: 1018, baseType: !1639, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1566}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1632, file: !34, line: 1019, baseType: !1626, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1632, file: !34, line: 1020, baseType: !1644, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!138, !1580, !138}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1632, file: !34, line: 1021, baseType: !1648, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!488, !1580}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1632, file: !34, line: 1022, baseType: !1652, size: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!138, !1580, !138, !101}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1632, file: !34, line: 1023, baseType: !1656, size: 64, offset: 384)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1580, !856}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1632, file: !34, line: 1024, baseType: !1648, size: 64, offset: 448)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1581, file: !34, line: 1097, baseType: !1661, size: 256, offset: 1408)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1581, file: !34, line: 1089, size: 256, elements: !1662)
!1662 = !{!1663, !1672, !1678}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1661, file: !34, line: 1090, baseType: !1664, size: 256)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1665, line: 10, size: 256, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !{!1667, !1668, !1671}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1664, file: !1665, line: 11, baseType: !124, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1664, file: !1665, line: 12, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1665, line: 5, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1664, file: !1665, line: 13, baseType: !102, size: 128, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1661, file: !34, line: 1091, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1665, line: 17, size: 64, elements: !1674)
!1674 = !{!1675}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1673, file: !1665, line: 18, baseType: !1676, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1665, line: 16, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1661, file: !34, line: 1096, baseType: !1679, size: 192)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1661, file: !34, line: 1092, size: 192, elements: !1680)
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1679, file: !34, line: 1093, baseType: !102, size: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1679, file: !34, line: 1094, baseType: !138, size: 32, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1679, file: !34, line: 1095, baseType: !5, size: 32, offset: 160)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1505, file: !34, line: 1843, baseType: !1685, size: 64, offset: 1280)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!574, !358, !782, !138, !577, !757, !138}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1505, file: !34, line: 1844, baseType: !1689, size: 64, offset: 1344)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!122, !358, !122, !122, !122, !122}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1505, file: !34, line: 1845, baseType: !1693, size: 64, offset: 1408)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!138, !138}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1505, file: !34, line: 1846, baseType: !1577, size: 64, offset: 1472)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1505, file: !34, line: 1847, baseType: !1698, size: 64, offset: 1536)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!574, !1701, !358, !757, !577, !5}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !115, line: 53, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1505, file: !34, line: 1848, baseType: !1704, size: 64, offset: 1600)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!574, !358, !757, !1701, !577, !5}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1505, file: !34, line: 1849, baseType: !1708, size: 64, offset: 1664)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!138, !358, !109, !1711, !856}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1505, file: !34, line: 1850, baseType: !1713, size: 64, offset: 1728)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!109, !358, !138, !529, !529}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1505, file: !34, line: 1852, baseType: !1717, size: 64, offset: 1792)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !717, !358}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1505, file: !34, line: 1856, baseType: !1721, size: 64, offset: 1856)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!574, !358, !529, !358, !529, !577, !5}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1505, file: !34, line: 1858, baseType: !1725, size: 64, offset: 1920)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!529, !358, !529, !358, !529, !529, !5}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1505, file: !34, line: 1861, baseType: !1569, size: 64, offset: 1984)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1500, file: !34, line: 692, baseType: !670, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !423, file: !34, line: 694, baseType: !1731, size: 64, offset: 2560)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !34, line: 1100, size: 384, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1732, file: !34, line: 1101, baseType: !740)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1732, file: !34, line: 1102, baseType: !102, size: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1732, file: !34, line: 1103, baseType: !102, size: 128, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1732, file: !34, line: 1104, baseType: !102, size: 128, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !423, file: !34, line: 695, baseType: !795, size: 1216, align: 64, offset: 2624)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !423, file: !34, line: 696, baseType: !102, size: 128, offset: 3840)
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !34, line: 697, baseType: !1741, size: 64, offset: 3968)
!1741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !423, file: !34, line: 697, size: 64, elements: !1742)
!1742 = !{!1743, !1744, !1745, !2045, !2046}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1741, file: !34, line: 698, baseType: !1701, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1741, file: !34, line: 699, baseType: !1230, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1741, file: !34, line: 700, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !1748, line: 14, size: 832, elements: !1749)
!1748 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!1749 = !{!1750, !2040, !2041, !2042, !2043, !2044}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1747, file: !1748, line: 15, baseType: !1751, size: 512)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1752, line: 64, size: 512, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1755, !1756, !1758, !1800, !1902, !2030, !2035, !2036, !2037, !2038, !2039}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1751, file: !1752, line: 65, baseType: !457, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1751, file: !1752, line: 66, baseType: !102, size: 128, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1751, file: !1752, line: 67, baseType: !1757, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1751, file: !1752, line: 68, baseType: !1759, size: 64, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1752, line: 192, size: 704, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1760, file: !1752, line: 193, baseType: !102, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1760, file: !1752, line: 194, baseType: !740, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1760, file: !1752, line: 195, baseType: !1751, size: 512, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1760, file: !1752, line: 196, baseType: !1766, size: 64, offset: 640)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1768)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1752, line: 156, size: 192, elements: !1769)
!1769 = !{!1770, !1775, !1780}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1768, file: !1752, line: 157, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!138, !1759, !1757}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1768, file: !1752, line: 158, baseType: !1776, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1777)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!457, !1759, !1757}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1768, file: !1752, line: 159, baseType: !1781, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!138, !1759, !1757, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1752, line: 148, size: 20736, elements: !1787)
!1787 = !{!1788, !1790, !1794, !1795, !1799}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1786, file: !1752, line: 149, baseType: !1789, size: 192)
!1789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 192, elements: !655)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1786, file: !1752, line: 150, baseType: !1791, size: 4096, offset: 192)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 4096, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1786, file: !1752, line: 151, baseType: !138, size: 32, offset: 4288)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1786, file: !1752, line: 152, baseType: !1796, size: 16384, offset: 4320)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 16384, elements: !1797)
!1797 = !{!1798}
!1798 = !DISubrange(count: 2048)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1786, file: !1752, line: 153, baseType: !138, size: 32, offset: 20704)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1751, file: !1752, line: 69, baseType: !1801, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1752, line: 138, size: 448, elements: !1803)
!1803 = !{!1804, !1808, !1827, !1829, !1862, !1892, !1896}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1802, file: !1752, line: 139, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1757}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1802, file: !1752, line: 140, baseType: !1809, size: 64, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1811)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1812, line: 230, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1823}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1811, file: !1812, line: 231, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DISubroutineType(types: !1817)
!1817 = !{!574, !1757, !1818, !483}
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1812, line: 30, size: 128, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1819, file: !1812, line: 31, baseType: !457, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1819, file: !1812, line: 32, baseType: !426, size: 16, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1811, file: !1812, line: 232, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!574, !1757, !1818, !457, !577}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1802, file: !1752, line: 141, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1802, file: !1752, line: 142, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1812, line: 84, size: 320, elements: !1834)
!1834 = !{!1835, !1836, !1840, !1859, !1860}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1833, file: !1812, line: 85, baseType: !457, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1833, file: !1812, line: 86, baseType: !1837, size: 64, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!426, !1757, !1818, !138}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1833, file: !1812, line: 88, baseType: !1841, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!426, !1757, !1844, !138}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1812, line: 168, size: 448, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850, !1854, !1855}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1845, file: !1812, line: 169, baseType: !1819, size: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1845, file: !1812, line: 170, baseType: !577, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1845, file: !1812, line: 171, baseType: !128, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1845, file: !1812, line: 172, baseType: !1851, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!574, !358, !1757, !1844, !483, !529, !577}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1845, file: !1812, line: 174, baseType: !1851, size: 64, offset: 320)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1845, file: !1812, line: 176, baseType: !1856, size: 64, offset: 384)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!138, !358, !1757, !1844, !324}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1833, file: !1812, line: 90, baseType: !1828, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1833, file: !1812, line: 91, baseType: !1861, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1802, file: !1752, line: 143, baseType: !1863, size: 64, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1866, !1757}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !28, line: 39, size: 384, elements: !1869)
!1869 = !{!1870, !1871, !1875, !1879, !1887, !1891}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1868, file: !28, line: 40, baseType: !27, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1868, file: !28, line: 41, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!488}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1868, file: !28, line: 42, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!128}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1868, file: !28, line: 43, baseType: !1880, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!1883, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !28, line: 19, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1868, file: !28, line: 44, baseType: !1888, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!1883}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1868, file: !28, line: 45, baseType: !465, size: 64, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1802, file: !1752, line: 144, baseType: !1893, size: 64, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!1883, !1757}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1802, file: !1752, line: 145, baseType: !1897, size: 64, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !1757, !1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1751, file: !1752, line: 70, baseType: !1903, size: 64, offset: 384)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1905, line: 123, size: 1024, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !2023, !2024, !2025, !2026, !2027}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1904, file: !1905, line: 124, baseType: !134, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1904, file: !1905, line: 125, baseType: !134, size: 32, offset: 32)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1904, file: !1905, line: 135, baseType: !1903, size: 64, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1904, file: !1905, line: 136, baseType: !457, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1904, file: !1905, line: 138, baseType: !159, size: 192, align: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1904, file: !1905, line: 140, baseType: !1883, size: 64, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1904, file: !1905, line: 141, baseType: !5, size: 32, offset: 448)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1904, file: !1905, line: 142, baseType: !1915, size: 256, offset: 512)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1904, file: !1905, line: 142, size: 256, elements: !1916)
!1916 = !{!1917, !1963, !1967}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1915, file: !1905, line: 143, baseType: !1918, size: 192)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1905, line: 91, size: 192, elements: !1919)
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1918, file: !1905, line: 92, baseType: !122, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1918, file: !1905, line: 94, baseType: !279, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1918, file: !1905, line: 100, baseType: !1923, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1905, line: 180, size: 704, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1935, !1936, !1937, !1961, !1962}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1924, file: !1905, line: 182, baseType: !1903, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1924, file: !1905, line: 183, baseType: !5, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1924, file: !1905, line: 186, baseType: !1929, size: 192, offset: 128)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1930, line: 19, size: 192, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1929, file: !1930, line: 20, baseType: !799, size: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1929, file: !1930, line: 21, baseType: !5, size: 32, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1929, file: !1930, line: 22, baseType: !5, size: 32, offset: 160)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1924, file: !1905, line: 187, baseType: !124, size: 32, offset: 320)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1924, file: !1905, line: 188, baseType: !124, size: 32, offset: 352)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1924, file: !1905, line: 189, baseType: !1938, size: 64, offset: 384)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1905, line: 168, size: 320, elements: !1940)
!1940 = !{!1941, !1945, !1949, !1953, !1957}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1939, file: !1905, line: 169, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!138, !717, !1923}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1939, file: !1905, line: 171, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!138, !1903, !457, !426}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1939, file: !1905, line: 173, baseType: !1950, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!138, !1903}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1939, file: !1905, line: 174, baseType: !1954, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!138, !1903, !1903, !457}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1939, file: !1905, line: 176, baseType: !1958, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!138, !717, !1903, !1923}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1924, file: !1905, line: 192, baseType: !102, size: 128, offset: 448)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1924, file: !1905, line: 194, baseType: !1286, size: 128, offset: 576)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1915, file: !1905, line: 144, baseType: !1964, size: 64)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1905, line: 103, size: 64, elements: !1965)
!1965 = !{!1966}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1964, file: !1905, line: 104, baseType: !1903, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1915, file: !1905, line: 145, baseType: !1968, size: 256)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1905, line: 107, size: 256, elements: !1969)
!1969 = !{!1970, !2018, !2021, !2022}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1968, file: !1905, line: 108, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1973)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1905, line: 217, size: 768, elements: !1974)
!1974 = !{!1975, !1995, !1999, !2000, !2001, !2002, !2003, !2007, !2008, !2009, !2010, !2014}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1973, file: !1905, line: 222, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!138, !1979}
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1905, line: 197, size: 1088, elements: !1981)
!1981 = !{!1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1980, file: !1905, line: 199, baseType: !1903, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1980, file: !1905, line: 200, baseType: !358, size: 64, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1980, file: !1905, line: 201, baseType: !717, size: 64, offset: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1980, file: !1905, line: 202, baseType: !128, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1980, file: !1905, line: 205, baseType: !729, size: 192, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1980, file: !1905, line: 206, baseType: !729, size: 192, offset: 448)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1980, file: !1905, line: 207, baseType: !138, size: 32, offset: 640)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1980, file: !1905, line: 208, baseType: !102, size: 128, offset: 704)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1980, file: !1905, line: 209, baseType: !483, size: 64, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1980, file: !1905, line: 211, baseType: !577, size: 64, offset: 896)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1980, file: !1905, line: 212, baseType: !488, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1980, file: !1905, line: 213, baseType: !488, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1980, file: !1905, line: 214, baseType: !353, size: 64, offset: 1024)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1973, file: !1905, line: 223, baseType: !1996, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1979}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1973, file: !1905, line: 236, baseType: !767, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1973, file: !1905, line: 238, baseType: !754, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1973, file: !1905, line: 239, baseType: !763, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1973, file: !1905, line: 240, baseType: !759, size: 64, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1973, file: !1905, line: 242, baseType: !2004, size: 64, offset: 384)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!574, !1979, !483, !577, !529}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1973, file: !1905, line: 252, baseType: !577, size: 64, offset: 448)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1973, file: !1905, line: 259, baseType: !488, size: 8, offset: 512)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1973, file: !1905, line: 260, baseType: !2004, size: 64, offset: 576)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1973, file: !1905, line: 263, baseType: !2011, size: 64, offset: 640)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!1544, !1979, !1546}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1973, file: !1905, line: 266, baseType: !2015, size: 64, offset: 704)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!138, !1979, !324}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1968, file: !1905, line: 109, baseType: !2019, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1905, line: 31, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1968, file: !1905, line: 110, baseType: !529, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1968, file: !1905, line: 111, baseType: !1903, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1904, file: !1905, line: 148, baseType: !128, size: 64, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1904, file: !1905, line: 154, baseType: !169, size: 64, offset: 832)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1904, file: !1905, line: 156, baseType: !187, size: 16, offset: 896)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1904, file: !1905, line: 157, baseType: !426, size: 16, offset: 912)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1904, file: !1905, line: 158, baseType: !2028, size: 64, offset: 960)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1905, line: 32, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1751, file: !1752, line: 71, baseType: !2031, size: 32, offset: 448)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2032, line: 19, size: 32, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2033 = !{!2034}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2031, file: !2032, line: 20, baseType: !130, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1751, file: !1752, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1751, file: !1752, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1751, file: !1752, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1751, file: !1752, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1751, file: !1752, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1747, file: !1748, line: 16, baseType: !634, size: 64, offset: 512)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1747, file: !1748, line: 17, baseType: !1503, size: 64, offset: 576)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1747, file: !1748, line: 18, baseType: !102, size: 128, offset: 640)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1747, file: !1748, line: 19, baseType: !511, size: 32, offset: 768)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1747, file: !1748, line: 20, baseType: !5, size: 32, offset: 800)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1741, file: !34, line: 701, baseType: !483, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1741, file: !34, line: 702, baseType: !5, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !423, file: !34, line: 705, baseType: !125, size: 32, offset: 4032)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !423, file: !34, line: 708, baseType: !125, size: 32, offset: 4064)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !423, file: !34, line: 709, baseType: !1320, size: 64, offset: 4096)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !423, file: !34, line: 720, baseType: !128, size: 64, offset: 4160)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !389, file: !386, line: 98, baseType: !2052, size: 256, offset: 448)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !1324)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !389, file: !386, line: 101, baseType: !2054, size: 32, offset: 704)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2055, line: 25, size: 32, elements: !2056)
!2055 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2056 = !{!2057}
!2057 = !DIDerivedType(tag: DW_TAG_member, scope: !2054, file: !2055, line: 26, baseType: !2058, size: 32)
!2058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2054, file: !2055, line: 26, size: 32, elements: !2059)
!2059 = !{!2060}
!2060 = !DIDerivedType(tag: DW_TAG_member, scope: !2058, file: !2055, line: 30, baseType: !2061, size: 32)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2058, file: !2055, line: 30, size: 32, elements: !2062)
!2062 = !{!2063, !2064}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2061, file: !2055, line: 31, baseType: !740)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2061, file: !2055, line: 32, baseType: !138, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !389, file: !386, line: 102, baseType: !1341, size: 64, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !389, file: !386, line: 103, baseType: !601, size: 64, offset: 832)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !389, file: !386, line: 104, baseType: !122, size: 64, offset: 896)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !389, file: !386, line: 105, baseType: !128, size: 64, offset: 960)
!2069 = !DIDerivedType(tag: DW_TAG_member, scope: !389, file: !386, line: 107, baseType: !2070, size: 128, offset: 1024)
!2070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !386, line: 107, size: 128, elements: !2071)
!2071 = !{!2072, !2073}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2070, file: !386, line: 108, baseType: !102, size: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2070, file: !386, line: 109, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !389, file: !386, line: 111, baseType: !102, size: 128, offset: 1152)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !389, file: !386, line: 112, baseType: !102, size: 128, offset: 1280)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !389, file: !386, line: 120, baseType: !2078, size: 128, offset: 1408)
!2078 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !389, file: !386, line: 116, size: 128, elements: !2079)
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2078, file: !386, line: 117, baseType: !643, size: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2078, file: !386, line: 118, baseType: !398, size: 128)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2078, file: !386, line: 119, baseType: !371, size: 128, align: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !359, file: !34, line: 922, baseType: !422, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !359, file: !34, line: 923, baseType: !1503, size: 64, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !359, file: !34, line: 929, baseType: !740, offset: 384)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !359, file: !34, line: 930, baseType: !33, size: 32, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !359, file: !34, line: 931, baseType: !733, size: 64, offset: 448)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !359, file: !34, line: 932, baseType: !5, size: 32, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !359, file: !34, line: 933, baseType: !1337, size: 32, offset: 544)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !359, file: !34, line: 934, baseType: !729, size: 192, offset: 576)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !359, file: !34, line: 935, baseType: !529, size: 64, offset: 768)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !359, file: !34, line: 936, baseType: !2093, size: 192, offset: 832)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !34, line: 885, size: 192, elements: !2094)
!2094 = !{!2095, !2096, !2118, !2119, !2120, !2121}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2093, file: !34, line: 886, baseType: !1602)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2093, file: !34, line: 887, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !43, line: 59, size: 768, elements: !2099)
!2099 = !{!2100, !2101, !2102, !2103, !2107, !2108, !2109, !2110}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2098, file: !43, line: 61, baseType: !130, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2098, file: !43, line: 62, baseType: !5, size: 32, offset: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2098, file: !43, line: 63, baseType: !740, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2098, file: !43, line: 65, baseType: !2104, size: 256, offset: 64)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 256, elements: !2105)
!2105 = !{!2106}
!2106 = !DISubrange(count: 4)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2098, file: !43, line: 66, baseType: !639, size: 64, offset: 320)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2098, file: !43, line: 68, baseType: !1286, size: 128, offset: 384)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2098, file: !43, line: 69, baseType: !371, size: 128, align: 64, offset: 512)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2098, file: !43, line: 70, baseType: !2111, size: 128, offset: 640)
!2111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2112, size: 128, elements: !309)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !43, line: 54, size: 128, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2112, file: !43, line: 55, baseType: !138, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2112, file: !43, line: 56, baseType: !2116, size: 64, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !43, line: 56, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2093, file: !34, line: 888, baseType: !42, size: 32, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2093, file: !34, line: 889, baseType: !429, size: 32, offset: 96)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2093, file: !34, line: 889, baseType: !429, size: 32, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2093, file: !34, line: 890, baseType: !138, size: 32, offset: 160)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !359, file: !34, line: 937, baseType: !2123, size: 64, offset: 1024)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2125)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2126, line: 111, size: 1280, elements: !2127)
!2126 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2127 = !{!2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2147, !2148, !2149, !2150, !2151, !2152, !2262, !2263, !2264, !2265, !2291, !2292, !2302}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2125, file: !2126, line: 112, baseType: !134, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2125, file: !2126, line: 120, baseType: !429, size: 32, offset: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2125, file: !2126, line: 121, baseType: !437, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2125, file: !2126, line: 122, baseType: !429, size: 32, offset: 96)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2125, file: !2126, line: 123, baseType: !437, size: 32, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2125, file: !2126, line: 124, baseType: !429, size: 32, offset: 160)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2125, file: !2126, line: 125, baseType: !437, size: 32, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2125, file: !2126, line: 126, baseType: !429, size: 32, offset: 224)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2125, file: !2126, line: 127, baseType: !437, size: 32, offset: 256)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2125, file: !2126, line: 128, baseType: !5, size: 32, offset: 288)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2125, file: !2126, line: 129, baseType: !2139, size: 64, offset: 320)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2140, line: 26, baseType: !2141)
!2140 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2140, line: 24, size: 64, elements: !2142)
!2142 = !{!2143}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2141, file: !2140, line: 25, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !2145)
!2145 = !{!2146}
!2146 = !DISubrange(count: 2)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2125, file: !2126, line: 130, baseType: !2139, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2125, file: !2126, line: 131, baseType: !2139, size: 64, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2125, file: !2126, line: 132, baseType: !2139, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2125, file: !2126, line: 133, baseType: !2139, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2125, file: !2126, line: 135, baseType: !291, size: 8, offset: 640)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2125, file: !2126, line: 137, baseType: !2153, size: 64, offset: 704)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2155, line: 189, size: 1664, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2156 = !{!2157, !2158, !2163, !2168, !2169, !2172, !2173, !2178, !2179, !2180, !2181, !2183, !2184, !2185, !2187, !2188, !2226, !2247}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2154, file: !2155, line: 190, baseType: !130, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2154, file: !2155, line: 191, baseType: !2159, size: 32, offset: 32)
!2159 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2155, line: 28, baseType: !2160)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !103, line: 98, baseType: !2161)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !95, line: 20, baseType: !2162)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !97, line: 26, baseType: !138)
!2163 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !2155, line: 192, baseType: !2164, size: 192, offset: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2154, file: !2155, line: 192, size: 192, elements: !2165)
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2164, file: !2155, line: 193, baseType: !102, size: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2164, file: !2155, line: 194, baseType: !159, size: 192, align: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2154, file: !2155, line: 199, baseType: !810, size: 256, offset: 256)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2154, file: !2155, line: 200, baseType: !2170, size: 64, offset: 512)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2155, line: 200, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2154, file: !2155, line: 201, baseType: !128, size: 64, offset: 576)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !2155, line: 202, baseType: !2174, size: 64, offset: 640)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2154, file: !2155, line: 202, size: 64, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2174, file: !2155, line: 203, baseType: !536, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2174, file: !2155, line: 204, baseType: !536, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2154, file: !2155, line: 206, baseType: !536, size: 64, offset: 704)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2154, file: !2155, line: 207, baseType: !429, size: 32, offset: 768)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2154, file: !2155, line: 208, baseType: !437, size: 32, offset: 800)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2154, file: !2155, line: 209, baseType: !2182, size: 32, offset: 832)
!2182 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2155, line: 31, baseType: !555)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2154, file: !2155, line: 210, baseType: !187, size: 16, offset: 864)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2154, file: !2155, line: 211, baseType: !187, size: 16, offset: 880)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2154, file: !2155, line: 215, baseType: !2186, size: 16, offset: 896)
!2186 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2154, file: !2155, line: 222, baseType: !122, size: 64, offset: 960)
!2188 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !2155, line: 239, baseType: !2189, size: 320, offset: 1024)
!2189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2154, file: !2155, line: 239, size: 320, elements: !2190)
!2190 = !{!2191, !2218}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2189, file: !2155, line: 240, baseType: !2192, size: 320)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2155, line: 108, size: 320, elements: !2193)
!2193 = !{!2194, !2195, !2207, !2210, !2217}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2192, file: !2155, line: 110, baseType: !122, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, scope: !2192, file: !2155, line: 111, baseType: !2196, size: 64, offset: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2192, file: !2155, line: 111, size: 64, elements: !2197)
!2197 = !{!2198, !2206}
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !2155, line: 112, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2196, file: !2155, line: 112, size: 64, elements: !2200)
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2199, file: !2155, line: 114, baseType: !894, size: 16)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2199, file: !2155, line: 115, baseType: !2203, size: 48, offset: 16)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 48, elements: !2204)
!2204 = !{!2205}
!2205 = !DISubrange(count: 6)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2196, file: !2155, line: 121, baseType: !122, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2192, file: !2155, line: 123, baseType: !2208, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2155, line: 96, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2192, file: !2155, line: 124, baseType: !2211, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2155, line: 102, size: 192, elements: !2213)
!2213 = !{!2214, !2215, !2216}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2212, file: !2155, line: 103, baseType: !371, size: 128, align: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2212, file: !2155, line: 104, baseType: !130, size: 32, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2212, file: !2155, line: 105, baseType: !488, size: 8, offset: 160)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2192, file: !2155, line: 125, baseType: !457, size: 64, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !2155, line: 241, baseType: !2219, size: 320)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2189, file: !2155, line: 241, size: 320, elements: !2220)
!2220 = !{!2221, !2222, !2223, !2224, !2225}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2219, file: !2155, line: 242, baseType: !122, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2219, file: !2155, line: 243, baseType: !122, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2219, file: !2155, line: 244, baseType: !2208, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2219, file: !2155, line: 245, baseType: !2211, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2219, file: !2155, line: 246, baseType: !483, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !2155, line: 254, baseType: !2227, size: 256, offset: 1344)
!2227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2154, file: !2155, line: 254, size: 256, elements: !2228)
!2228 = !{!2229, !2235}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2227, file: !2155, line: 255, baseType: !2230, size: 256)
!2230 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2155, line: 128, size: 256, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2230, file: !2155, line: 129, baseType: !128, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2230, file: !2155, line: 130, baseType: !2234, size: 256)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 256, elements: !2105)
!2235 = !DIDerivedType(tag: DW_TAG_member, scope: !2227, file: !2155, line: 256, baseType: !2236, size: 256)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2227, file: !2155, line: 256, size: 256, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2236, file: !2155, line: 258, baseType: !102, size: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2236, file: !2155, line: 259, baseType: !2240, size: 128, offset: 128)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2241, line: 22, size: 128, elements: !2242)
!2241 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2242 = !{!2243, !2246}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2240, file: !2241, line: 23, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2241, line: 23, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2240, file: !2241, line: 24, baseType: !122, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2154, file: !2155, line: 274, baseType: !2248, size: 64, offset: 1600)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2155, line: 170, size: 192, elements: !2250)
!2250 = !{!2251, !2260, !2261}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2249, file: !2155, line: 171, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2155, line: 165, baseType: !2253)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!138, !2153, !2256, !2258, !2153}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2209)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2249, file: !2155, line: 172, baseType: !2153, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2249, file: !2155, line: 173, baseType: !2208, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2125, file: !2126, line: 138, baseType: !2153, size: 64, offset: 768)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2125, file: !2126, line: 139, baseType: !2153, size: 64, offset: 832)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2125, file: !2126, line: 140, baseType: !2153, size: 64, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2125, file: !2126, line: 145, baseType: !2266, size: 64, offset: 960)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2268, line: 13, size: 896, elements: !2269)
!2268 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2267, file: !2268, line: 14, baseType: !130, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2267, file: !2268, line: 15, baseType: !134, size: 32, offset: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2267, file: !2268, line: 16, baseType: !134, size: 32, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2267, file: !2268, line: 21, baseType: !733, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2267, file: !2268, line: 27, baseType: !122, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2267, file: !2268, line: 28, baseType: !122, size: 64, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2267, file: !2268, line: 29, baseType: !733, size: 64, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2267, file: !2268, line: 32, baseType: !643, size: 128, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2267, file: !2268, line: 33, baseType: !429, size: 32, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2267, file: !2268, line: 37, baseType: !733, size: 64, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2267, file: !2268, line: 44, baseType: !2281, size: 256, offset: 640)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2282, line: 15, size: 256, elements: !2283)
!2282 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2281, file: !2282, line: 16, baseType: !233)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2281, file: !2282, line: 18, baseType: !138, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2281, file: !2282, line: 19, baseType: !138, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2281, file: !2282, line: 20, baseType: !138, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2281, file: !2282, line: 21, baseType: !138, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2281, file: !2282, line: 22, baseType: !122, size: 64, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !2282, line: 23, baseType: !122, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2125, file: !2126, line: 146, baseType: !1425, size: 64, offset: 1024)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2125, file: !2126, line: 147, baseType: !2293, size: 64, offset: 1088)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2126, line: 25, size: 64, elements: !2295)
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2294, file: !2126, line: 26, baseType: !134, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2294, file: !2126, line: 27, baseType: !138, size: 32, offset: 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2294, file: !2126, line: 28, baseType: !2299, offset: 64)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, elements: !2300)
!2300 = !{!2301}
!2301 = !DISubrange(count: 0)
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !2126, line: 149, baseType: !2303, size: 128, offset: 1152)
!2303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2125, file: !2126, line: 149, size: 128, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2303, file: !2126, line: 150, baseType: !138, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2303, file: !2126, line: 151, baseType: !371, size: 128, align: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !359, file: !34, line: 938, baseType: !2308, size: 256, offset: 1088)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !34, line: 896, size: 256, elements: !2309)
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2315}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2308, file: !34, line: 897, baseType: !122, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2308, file: !34, line: 898, baseType: !5, size: 32, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2308, file: !34, line: 899, baseType: !5, size: 32, offset: 96)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2308, file: !34, line: 902, baseType: !5, size: 32, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2308, file: !34, line: 903, baseType: !5, size: 32, offset: 160)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2308, file: !34, line: 904, baseType: !529, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !359, file: !34, line: 940, baseType: !169, size: 64, offset: 1344)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !359, file: !34, line: 945, baseType: !128, size: 64, offset: 1408)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !359, file: !34, line: 949, baseType: !102, size: 128, offset: 1472)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !359, file: !34, line: 950, baseType: !102, size: 128, offset: 1600)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !359, file: !34, line: 952, baseType: !794, size: 64, offset: 1728)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !359, file: !34, line: 953, baseType: !944, size: 32, offset: 1792)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !359, file: !34, line: 954, baseType: !944, size: 32, offset: 1824)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !325, file: !318, line: 362, baseType: !128, size: 64, offset: 1344)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !325, file: !318, line: 365, baseType: !733, size: 64, offset: 1408)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !325, file: !318, line: 373, baseType: !2326, offset: 1472)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !318, line: 296, elements: !178)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !321, file: !318, line: 391, baseType: !279, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !321, file: !318, line: 392, baseType: !169, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !321, file: !318, line: 394, baseType: !1689, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !321, file: !318, line: 398, baseType: !122, size: 64, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !321, file: !318, line: 399, baseType: !122, size: 64, offset: 320)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !321, file: !318, line: 405, baseType: !122, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !321, file: !318, line: 406, baseType: !122, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !321, file: !318, line: 407, baseType: !2335, size: 64, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !336, line: 286, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 286, size: 64, elements: !2338)
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2337, file: !336, line: 286, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !341, line: 18, baseType: !122)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !321, file: !318, line: 416, baseType: !134, size: 32, offset: 576)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !321, file: !318, line: 428, baseType: !134, size: 32, offset: 608)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !321, file: !318, line: 437, baseType: !134, size: 32, offset: 640)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !321, file: !318, line: 447, baseType: !134, size: 32, offset: 672)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !321, file: !318, line: 450, baseType: !733, size: 64, offset: 704)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !321, file: !318, line: 452, baseType: !138, size: 32, offset: 768)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !321, file: !318, line: 454, baseType: !740, offset: 800)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !321, file: !318, line: 457, baseType: !810, size: 256, offset: 832)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !321, file: !318, line: 459, baseType: !102, size: 128, offset: 1088)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !321, file: !318, line: 466, baseType: !122, size: 64, offset: 1216)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !321, file: !318, line: 467, baseType: !122, size: 64, offset: 1280)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !321, file: !318, line: 469, baseType: !122, size: 64, offset: 1344)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !321, file: !318, line: 470, baseType: !122, size: 64, offset: 1408)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !321, file: !318, line: 471, baseType: !735, size: 64, offset: 1472)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !321, file: !318, line: 472, baseType: !122, size: 64, offset: 1536)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !321, file: !318, line: 473, baseType: !122, size: 64, offset: 1600)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !321, file: !318, line: 474, baseType: !122, size: 64, offset: 1664)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !321, file: !318, line: 475, baseType: !122, size: 64, offset: 1728)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !321, file: !318, line: 477, baseType: !740, offset: 1792)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !321, file: !318, line: 478, baseType: !122, size: 64, offset: 1792)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !321, file: !318, line: 478, baseType: !122, size: 64, offset: 1856)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !321, file: !318, line: 478, baseType: !122, size: 64, offset: 1920)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !321, file: !318, line: 478, baseType: !122, size: 64, offset: 1984)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !321, file: !318, line: 479, baseType: !122, size: 64, offset: 2048)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !321, file: !318, line: 479, baseType: !122, size: 64, offset: 2112)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !321, file: !318, line: 479, baseType: !122, size: 64, offset: 2176)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !321, file: !318, line: 480, baseType: !122, size: 64, offset: 2240)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !321, file: !318, line: 480, baseType: !122, size: 64, offset: 2304)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !321, file: !318, line: 480, baseType: !122, size: 64, offset: 2368)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !321, file: !318, line: 480, baseType: !122, size: 64, offset: 2432)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !321, file: !318, line: 482, baseType: !2372, size: 2816, offset: 2496)
!2372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 2816, elements: !2373)
!2373 = !{!2374}
!2374 = !DISubrange(count: 44)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !321, file: !318, line: 488, baseType: !2376, size: 256, offset: 5312)
!2376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2377, line: 60, size: 256, elements: !2378)
!2377 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2378 = !{!2379}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2376, file: !2377, line: 61, baseType: !2380, size: 256)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 256, elements: !2105)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !321, file: !318, line: 490, baseType: !2382, size: 64, offset: 5568)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !318, line: 490, flags: DIFlagFwdDecl)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !321, file: !318, line: 493, baseType: !2385, size: 896, offset: 5632)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2386, line: 53, baseType: !2387)
!2386 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2386, line: 13, size: 896, elements: !2388)
!2388 = !{!2389, !2390, !2391, !2392, !2395, !2396, !2397, !2398, !2402, !2403, !2404}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2387, file: !2386, line: 18, baseType: !169, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2387, file: !2386, line: 28, baseType: !735, size: 64, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2387, file: !2386, line: 31, baseType: !810, size: 256, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2387, file: !2386, line: 32, baseType: !2393, size: 64, offset: 384)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2386, line: 32, flags: DIFlagFwdDecl)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2387, file: !2386, line: 37, baseType: !187, size: 16, offset: 448)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2387, file: !2386, line: 40, baseType: !729, size: 192, offset: 512)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2387, file: !2386, line: 41, baseType: !128, size: 64, offset: 704)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2387, file: !2386, line: 42, baseType: !2399, size: 64, offset: 768)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2386, line: 42, flags: DIFlagFwdDecl)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2387, file: !2386, line: 44, baseType: !134, size: 32, offset: 832)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2387, file: !2386, line: 50, baseType: !894, size: 16, offset: 864)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2387, file: !2386, line: 51, baseType: !2405, size: 16, offset: 880)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !95, line: 18, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !97, line: 23, baseType: !2186)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !318, line: 495, baseType: !122, size: 64, offset: 6528)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !321, file: !318, line: 497, baseType: !2409, size: 64, offset: 6592)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !318, line: 381, size: 384, elements: !2411)
!2411 = !{!2412, !2413, !2419}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2410, file: !318, line: 382, baseType: !134, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2410, file: !318, line: 383, baseType: !2414, size: 128, offset: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !318, line: 376, size: 128, elements: !2415)
!2415 = !{!2416, !2417}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2414, file: !318, line: 377, baseType: !113, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2414, file: !318, line: 378, baseType: !2418, size: 64, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2410, file: !318, line: 384, baseType: !2420, size: 192, offset: 192)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2421, line: 26, size: 192, elements: !2422)
!2421 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2422 = !{!2423, !2424}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2420, file: !2421, line: 27, baseType: !5, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2420, file: !2421, line: 28, baseType: !2425, size: 128, offset: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2426, line: 43, size: 128, elements: !2427)
!2426 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2427 = !{!2428, !2429}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2425, file: !2426, line: 44, baseType: !233)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2425, file: !2426, line: 45, baseType: !102, size: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !321, file: !318, line: 500, baseType: !740, offset: 6656)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !321, file: !318, line: 501, baseType: !2432, size: 64, offset: 6656)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !318, line: 387, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !321, file: !318, line: 516, baseType: !1425, size: 64, offset: 6720)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !321, file: !318, line: 519, baseType: !358, size: 64, offset: 6784)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !321, file: !318, line: 521, baseType: !2437, size: 64, offset: 6848)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !318, line: 521, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !321, file: !318, line: 545, baseType: !134, size: 32, offset: 6912)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !321, file: !318, line: 548, baseType: !488, size: 8, offset: 6944)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !321, file: !318, line: 550, baseType: !2442, offset: 6952)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2443, line: 142, elements: !178)
!2443 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !321, file: !318, line: 554, baseType: !1445, size: 256, offset: 6976)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !321, file: !318, line: 557, baseType: !124, size: 32, offset: 7232)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !317, file: !318, line: 565, baseType: !2447, offset: 7296)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, elements: !2448)
!2448 = !{!2449}
!2449 = !DISubrange(count: -1)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !114, file: !115, line: 758, baseType: !316, size: 64, offset: 3968)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !114, file: !115, line: 761, baseType: !2452, size: 320, offset: 4032)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2377, line: 34, size: 320, elements: !2453)
!2453 = !{!2454, !2455}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2452, file: !2377, line: 35, baseType: !169, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2452, file: !2377, line: 36, baseType: !2456, size: 256, offset: 64)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !2105)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !114, file: !115, line: 766, baseType: !138, size: 32, offset: 4352)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !114, file: !115, line: 767, baseType: !138, size: 32, offset: 4384)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !114, file: !115, line: 768, baseType: !138, size: 32, offset: 4416)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !114, file: !115, line: 770, baseType: !138, size: 32, offset: 4448)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !114, file: !115, line: 772, baseType: !122, size: 64, offset: 4480)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !114, file: !115, line: 775, baseType: !5, size: 32, offset: 4544)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !114, file: !115, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !114, file: !115, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !114, file: !115, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !114, file: !115, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !114, file: !115, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !114, file: !115, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !114, file: !115, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !114, file: !115, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !114, file: !115, line: 831, baseType: !122, size: 64, offset: 4672)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !114, file: !115, line: 833, baseType: !2473, size: 384, offset: 4736)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 384, elements: !2474)
!2474 = !{!2475, !2480}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2473, file: !51, line: 26, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!109, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, scope: !2473, file: !51, line: 27, baseType: !2481, size: 320, offset: 64)
!2481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2473, file: !51, line: 27, size: 320, elements: !2482)
!2482 = !{!2483, !2493, !2518}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2481, file: !51, line: 36, baseType: !2484, size: 320)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !51, line: 29, size: 320, elements: !2485)
!2485 = !{!2486, !2488, !2489, !2490, !2491, !2492}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2484, file: !51, line: 30, baseType: !2487, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2484, file: !51, line: 31, baseType: !124, size: 32, offset: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2484, file: !51, line: 32, baseType: !124, size: 32, offset: 96)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2484, file: !51, line: 33, baseType: !124, size: 32, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2484, file: !51, line: 34, baseType: !169, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2484, file: !51, line: 35, baseType: !2487, size: 64, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2481, file: !51, line: 46, baseType: !2494, size: 192)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !51, line: 38, size: 192, elements: !2495)
!2495 = !{!2496, !2497, !2498, !2517}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2494, file: !51, line: 39, baseType: !258, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2494, file: !51, line: 40, baseType: !50, size: 32, offset: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, scope: !2494, file: !51, line: 41, baseType: !2499, size: 64, offset: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2494, file: !51, line: 41, size: 64, elements: !2500)
!2500 = !{!2501, !2509}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2499, file: !51, line: 42, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2504, line: 7, size: 128, elements: !2505)
!2504 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2505 = !{!2506, !2508}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2503, file: !2504, line: 8, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !260, line: 93, baseType: !98)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2503, file: !2504, line: 9, baseType: !98, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2499, file: !51, line: 43, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2512, line: 7, size: 64, elements: !2513)
!2512 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2513 = !{!2514, !2516}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2511, file: !2512, line: 8, baseType: !2515, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2512, line: 5, baseType: !2161)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2511, file: !2512, line: 9, baseType: !2161, size: 32, offset: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2494, file: !51, line: 45, baseType: !169, size: 64, offset: 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2481, file: !51, line: 54, baseType: !2519, size: 256)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2481, file: !51, line: 48, size: 256, elements: !2520)
!2520 = !{!2521, !2524, !2525, !2526, !2527}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2519, file: !51, line: 49, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2519, file: !51, line: 50, baseType: !138, size: 32, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2519, file: !51, line: 51, baseType: !138, size: 32, offset: 96)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2519, file: !51, line: 52, baseType: !122, size: 64, offset: 128)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2519, file: !51, line: 53, baseType: !122, size: 64, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !114, file: !115, line: 835, baseType: !2529, size: 32, offset: 5120)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !103, line: 22, baseType: !2530)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !260, line: 28, baseType: !138)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !114, file: !115, line: 836, baseType: !2529, size: 32, offset: 5152)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !114, file: !115, line: 840, baseType: !122, size: 64, offset: 5184)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !114, file: !115, line: 849, baseType: !113, size: 64, offset: 5248)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !114, file: !115, line: 852, baseType: !113, size: 64, offset: 5312)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !114, file: !115, line: 857, baseType: !102, size: 128, offset: 5376)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !114, file: !115, line: 858, baseType: !102, size: 128, offset: 5504)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !114, file: !115, line: 859, baseType: !113, size: 64, offset: 5632)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !114, file: !115, line: 867, baseType: !102, size: 128, offset: 5696)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !114, file: !115, line: 868, baseType: !102, size: 128, offset: 5824)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !114, file: !115, line: 871, baseType: !2097, size: 64, offset: 5952)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !114, file: !115, line: 872, baseType: !2542, size: 512, offset: 6016)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !643, size: 512, elements: !2105)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !114, file: !115, line: 873, baseType: !102, size: 128, offset: 6528)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !114, file: !115, line: 874, baseType: !102, size: 128, offset: 6656)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !114, file: !115, line: 876, baseType: !2546, size: 64, offset: 6784)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !114, file: !115, line: 879, baseType: !711, size: 64, offset: 6848)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !114, file: !115, line: 882, baseType: !711, size: 64, offset: 6912)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !114, file: !115, line: 884, baseType: !169, size: 64, offset: 6976)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !114, file: !115, line: 885, baseType: !169, size: 64, offset: 7040)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !114, file: !115, line: 890, baseType: !169, size: 64, offset: 7104)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !114, file: !115, line: 891, baseType: !2553, size: 128, offset: 7168)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !115, line: 242, size: 128, elements: !2554)
!2554 = !{!2555, !2556, !2557}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2553, file: !115, line: 244, baseType: !169, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2553, file: !115, line: 245, baseType: !169, size: 64, offset: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2553, file: !115, line: 246, baseType: !233, offset: 128)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !114, file: !115, line: 900, baseType: !122, size: 64, offset: 7296)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !114, file: !115, line: 901, baseType: !122, size: 64, offset: 7360)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !114, file: !115, line: 904, baseType: !169, size: 64, offset: 7424)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !114, file: !115, line: 907, baseType: !169, size: 64, offset: 7488)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !114, file: !115, line: 910, baseType: !122, size: 64, offset: 7552)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !114, file: !115, line: 911, baseType: !122, size: 64, offset: 7616)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !114, file: !115, line: 914, baseType: !2565, size: 640, offset: 7680)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2566, line: 123, size: 640, elements: !2567)
!2566 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2567 = !{!2568, !2574, !2575}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2565, file: !2566, line: 124, baseType: !2569, size: 576)
!2569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2570, size: 576, elements: !655)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2566, line: 108, size: 192, elements: !2571)
!2571 = !{!2572, !2573}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2570, file: !2566, line: 109, baseType: !169, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2570, file: !2566, line: 110, baseType: !273, size: 128, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2565, file: !2566, line: 125, baseType: !5, size: 32, offset: 576)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2565, file: !2566, line: 126, baseType: !5, size: 32, offset: 608)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !114, file: !115, line: 917, baseType: !2577, size: 192, offset: 8320)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2566, line: 134, size: 192, elements: !2578)
!2578 = !{!2579, !2580}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2577, file: !2566, line: 135, baseType: !371, size: 128, align: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2577, file: !2566, line: 136, baseType: !5, size: 32, offset: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !114, file: !115, line: 923, baseType: !2123, size: 64, offset: 8512)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !114, file: !115, line: 926, baseType: !2123, size: 64, offset: 8576)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !114, file: !115, line: 929, baseType: !2123, size: 64, offset: 8640)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !114, file: !115, line: 933, baseType: !2153, size: 64, offset: 8704)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !114, file: !115, line: 943, baseType: !2586, size: 128, offset: 8768)
!2586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 128, elements: !1333)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !114, file: !115, line: 945, baseType: !2588, size: 64, offset: 8896)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !115, line: 49, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !114, file: !115, line: 956, baseType: !2591, size: 64, offset: 8960)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !115, line: 45, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !114, file: !115, line: 959, baseType: !2594, size: 64, offset: 9024)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !115, line: 959, flags: DIFlagFwdDecl)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !114, file: !115, line: 962, baseType: !2597, size: 64, offset: 9088)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !115, line: 66, flags: DIFlagFwdDecl)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !114, file: !115, line: 966, baseType: !2600, size: 64, offset: 9152)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !115, line: 50, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !114, file: !115, line: 969, baseType: !2603, size: 64, offset: 9216)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2605, line: 82, size: 7296, elements: !2606)
!2605 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2606 = !{!2607, !2608, !2609, !2610, !2611, !2612, !2613, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2642, !2651, !2652, !2654, !2655, !2656, !3369, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3399, !3400, !3407, !3408, !3409, !3410, !3411, !3412}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2604, file: !2605, line: 83, baseType: !130, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2604, file: !2605, line: 84, baseType: !134, size: 32, offset: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2604, file: !2605, line: 85, baseType: !138, size: 32, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2604, file: !2605, line: 86, baseType: !102, size: 128, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2604, file: !2605, line: 88, baseType: !1286, size: 128, offset: 256)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2604, file: !2605, line: 91, baseType: !113, size: 64, offset: 384)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2604, file: !2605, line: 94, baseType: !2614, size: 192, offset: 448)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2615, line: 30, size: 192, elements: !2616)
!2615 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2614, file: !2615, line: 31, baseType: !102, size: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2614, file: !2615, line: 32, baseType: !2619, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2620, line: 25, baseType: !2621)
!2620 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2620, line: 23, size: 64, elements: !2622)
!2622 = !{!2623}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2621, file: !2620, line: 24, baseType: !308, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2604, file: !2605, line: 97, baseType: !639, size: 64, offset: 640)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2604, file: !2605, line: 100, baseType: !138, size: 32, offset: 704)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2604, file: !2605, line: 106, baseType: !138, size: 32, offset: 736)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2604, file: !2605, line: 107, baseType: !113, size: 64, offset: 768)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2604, file: !2605, line: 110, baseType: !138, size: 32, offset: 832)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2604, file: !2605, line: 111, baseType: !5, size: 32, offset: 864)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2604, file: !2605, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2604, file: !2605, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2604, file: !2605, line: 128, baseType: !138, size: 32, offset: 928)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2604, file: !2605, line: 129, baseType: !102, size: 128, offset: 960)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2604, file: !2605, line: 132, baseType: !208, size: 512, offset: 1088)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2604, file: !2605, line: 133, baseType: !216, size: 64, offset: 1600)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2604, file: !2605, line: 140, baseType: !2637, size: 256, offset: 1664)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2638, size: 256, elements: !2145)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2605, line: 38, size: 128, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2638, file: !2605, line: 39, baseType: !169, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2638, file: !2605, line: 40, baseType: !169, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2604, file: !2605, line: 146, baseType: !2643, size: 192, offset: 1920)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2605, line: 66, size: 192, elements: !2644)
!2644 = !{!2645}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2643, file: !2605, line: 67, baseType: !2646, size: 192)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2605, line: 47, size: 192, elements: !2647)
!2647 = !{!2648, !2649, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2646, file: !2605, line: 48, baseType: !735, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2646, file: !2605, line: 49, baseType: !735, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2646, file: !2605, line: 50, baseType: !735, size: 64, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2604, file: !2605, line: 150, baseType: !2565, size: 640, offset: 2112)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2604, file: !2605, line: 153, baseType: !2653, size: 256, offset: 2752)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2097, size: 256, elements: !2105)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2604, file: !2605, line: 159, baseType: !2097, size: 64, offset: 3008)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2604, file: !2605, line: 162, baseType: !138, size: 32, offset: 3072)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2604, file: !2605, line: 164, baseType: !2657, size: 64, offset: 3136)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2659, line: 285, size: 5056, elements: !2660)
!2659 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!2660 = !{!2661, !2662, !2663, !3009, !3268, !3269, !3270, !3279, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2658, file: !2659, line: 286, baseType: !138, size: 32)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2658, file: !2659, line: 287, baseType: !2031, size: 32, offset: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2658, file: !2659, line: 288, baseType: !2664, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !63, line: 461, size: 5568, elements: !2666)
!2666 = !{!2667, !2668, !2669, !2672, !2673, !2724, !2797, !2798, !2799, !2800, !2801, !2810, !2915, !2928, !2931, !2932, !2936, !2938, !2939, !2940, !2944, !2950, !2951, !2954, !2958, !2961, !2962, !2963, !2964, !2965, !2997, !2998, !2999, !3002, !3005, !3006, !3007, !3008}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2665, file: !63, line: 462, baseType: !1751, size: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2665, file: !63, line: 463, baseType: !2664, size: 64, offset: 512)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2665, file: !63, line: 465, baseType: !2670, size: 64, offset: 576)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !63, line: 36, flags: DIFlagFwdDecl)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2665, file: !63, line: 467, baseType: !457, size: 64, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2665, file: !63, line: 468, baseType: !2674, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2676)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !63, line: 87, size: 384, elements: !2677)
!2677 = !{!2678, !2679, !2680, !2684, !2689, !2693}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2676, file: !63, line: 88, baseType: !457, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2676, file: !63, line: 89, baseType: !1830, size: 64, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2676, file: !63, line: 90, baseType: !2681, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!138, !2664, !1785}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2676, file: !63, line: 91, baseType: !2685, size: 64, offset: 192)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!483, !2664, !2688, !1900, !1901}
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2676, file: !63, line: 93, baseType: !2690, size: 64, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{null, !2664}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2676, file: !63, line: 95, baseType: !2694, size: 64, offset: 320)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2696)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !70, line: 278, size: 1472, elements: !2697)
!2697 = !{!2698, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2696, file: !70, line: 279, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!138, !2664}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2696, file: !70, line: 280, baseType: !2690, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2696, file: !70, line: 281, baseType: !2699, size: 64, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2696, file: !70, line: 282, baseType: !2699, size: 64, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2696, file: !70, line: 283, baseType: !2699, size: 64, offset: 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2696, file: !70, line: 284, baseType: !2699, size: 64, offset: 320)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2696, file: !70, line: 285, baseType: !2699, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2696, file: !70, line: 286, baseType: !2699, size: 64, offset: 448)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2696, file: !70, line: 287, baseType: !2699, size: 64, offset: 512)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2696, file: !70, line: 288, baseType: !2699, size: 64, offset: 576)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2696, file: !70, line: 289, baseType: !2699, size: 64, offset: 640)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2696, file: !70, line: 290, baseType: !2699, size: 64, offset: 704)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2696, file: !70, line: 291, baseType: !2699, size: 64, offset: 768)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2696, file: !70, line: 292, baseType: !2699, size: 64, offset: 832)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2696, file: !70, line: 293, baseType: !2699, size: 64, offset: 896)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2696, file: !70, line: 294, baseType: !2699, size: 64, offset: 960)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2696, file: !70, line: 295, baseType: !2699, size: 64, offset: 1024)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2696, file: !70, line: 296, baseType: !2699, size: 64, offset: 1088)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2696, file: !70, line: 297, baseType: !2699, size: 64, offset: 1152)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2696, file: !70, line: 298, baseType: !2699, size: 64, offset: 1216)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2696, file: !70, line: 299, baseType: !2699, size: 64, offset: 1280)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2696, file: !70, line: 300, baseType: !2699, size: 64, offset: 1344)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2696, file: !70, line: 301, baseType: !2699, size: 64, offset: 1408)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2665, file: !63, line: 470, baseType: !2725, size: 64, offset: 768)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2727, line: 82, size: 1408, elements: !2728)
!2727 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!2728 = !{!2729, !2730, !2731, !2732, !2733, !2734, !2735, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2792, !2795, !2796}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2726, file: !2727, line: 83, baseType: !457, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2726, file: !2727, line: 84, baseType: !457, size: 64, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !2726, file: !2727, line: 85, baseType: !2664, size: 64, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2726, file: !2727, line: 86, baseType: !1830, size: 64, offset: 192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2726, file: !2727, line: 87, baseType: !1830, size: 64, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2726, file: !2727, line: 88, baseType: !1830, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2726, file: !2727, line: 90, baseType: !2736, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!138, !2664, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !57, line: 95, size: 1152, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747, !2748, !2752, !2756, !2757, !2758, !2759, !2760, !2768, !2769, !2770, !2771, !2772, !2773}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2740, file: !57, line: 96, baseType: !457, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2740, file: !57, line: 97, baseType: !2725, size: 64, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2740, file: !57, line: 99, baseType: !634, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2740, file: !57, line: 100, baseType: !457, size: 64, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2740, file: !57, line: 102, baseType: !488, size: 8, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2740, file: !57, line: 103, baseType: !56, size: 32, offset: 288)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2740, file: !57, line: 105, baseType: !2749, size: 64, offset: 320)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2751)
!2751 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !57, line: 105, flags: DIFlagFwdDecl)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2740, file: !57, line: 106, baseType: !2753, size: 64, offset: 384)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2755)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !57, line: 106, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2740, file: !57, line: 108, baseType: !2699, size: 64, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2740, file: !57, line: 109, baseType: !2690, size: 64, offset: 512)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2740, file: !57, line: 110, baseType: !2699, size: 64, offset: 576)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2740, file: !57, line: 111, baseType: !2690, size: 64, offset: 640)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2740, file: !57, line: 112, baseType: !2761, size: 64, offset: 704)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!138, !2664, !2764}
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !70, line: 52, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !70, line: 50, size: 32, elements: !2766)
!2766 = !{!2767}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2765, file: !70, line: 51, baseType: !138, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2740, file: !57, line: 113, baseType: !2699, size: 64, offset: 768)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2740, file: !57, line: 114, baseType: !1830, size: 64, offset: 832)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2740, file: !57, line: 115, baseType: !1830, size: 64, offset: 896)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2740, file: !57, line: 117, baseType: !2694, size: 64, offset: 960)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2740, file: !57, line: 118, baseType: !2690, size: 64, offset: 1024)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2740, file: !57, line: 120, baseType: !2774, size: 64, offset: 1088)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !57, line: 120, flags: DIFlagFwdDecl)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2726, file: !2727, line: 91, baseType: !2681, size: 64, offset: 448)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2726, file: !2727, line: 92, baseType: !2699, size: 64, offset: 512)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2726, file: !2727, line: 93, baseType: !2690, size: 64, offset: 576)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2726, file: !2727, line: 94, baseType: !2699, size: 64, offset: 640)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2726, file: !2727, line: 95, baseType: !2690, size: 64, offset: 704)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2726, file: !2727, line: 97, baseType: !2699, size: 64, offset: 768)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2726, file: !2727, line: 98, baseType: !2699, size: 64, offset: 832)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2726, file: !2727, line: 100, baseType: !2761, size: 64, offset: 896)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2726, file: !2727, line: 101, baseType: !2699, size: 64, offset: 960)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2726, file: !2727, line: 103, baseType: !2699, size: 64, offset: 1024)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2726, file: !2727, line: 105, baseType: !2699, size: 64, offset: 1088)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2726, file: !2727, line: 107, baseType: !2694, size: 64, offset: 1152)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2726, file: !2727, line: 109, baseType: !2789, size: 64, offset: 1216)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2791)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2727, line: 109, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2726, file: !2727, line: 111, baseType: !2793, size: 64, offset: 1280)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !2727, line: 111, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !2726, file: !2727, line: 112, baseType: !649, offset: 1344)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2726, file: !2727, line: 114, baseType: !488, size: 8, offset: 1344)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2665, file: !63, line: 471, baseType: !2739, size: 64, offset: 832)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2665, file: !63, line: 473, baseType: !128, size: 64, offset: 896)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2665, file: !63, line: 475, baseType: !128, size: 64, offset: 960)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2665, file: !63, line: 480, baseType: !729, size: 192, offset: 1024)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2665, file: !63, line: 484, baseType: !2802, size: 576, offset: 1216)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !63, line: 361, size: 576, elements: !2803)
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2809}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2802, file: !63, line: 362, baseType: !102, size: 128)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2802, file: !63, line: 363, baseType: !102, size: 128, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2802, file: !63, line: 364, baseType: !102, size: 128, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2802, file: !63, line: 365, baseType: !102, size: 128, offset: 384)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2802, file: !63, line: 366, baseType: !488, size: 8, offset: 512)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2802, file: !63, line: 367, baseType: !62, size: 32, offset: 544)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2665, file: !63, line: 485, baseType: !2811, size: 2304, offset: 1792)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !70, line: 565, size: 2304, elements: !2812)
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2908, !2912}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2811, file: !70, line: 566, baseType: !2764, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2811, file: !70, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2811, file: !70, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2811, file: !70, line: 569, baseType: !488, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2811, file: !70, line: 570, baseType: !488, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2811, file: !70, line: 571, baseType: !488, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2811, file: !70, line: 572, baseType: !488, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2811, file: !70, line: 573, baseType: !488, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2811, file: !70, line: 574, baseType: !488, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2811, file: !70, line: 575, baseType: !488, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2811, file: !70, line: 576, baseType: !488, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2811, file: !70, line: 577, baseType: !124, size: 32, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2811, file: !70, line: 578, baseType: !740, offset: 96)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2811, file: !70, line: 580, baseType: !102, size: 128, offset: 128)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2811, file: !70, line: 581, baseType: !2420, size: 192, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2811, file: !70, line: 582, baseType: !2829, size: 64, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2831, line: 43, size: 1472, elements: !2832)
!2831 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2840, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2830, file: !2831, line: 44, baseType: !457, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2830, file: !2831, line: 45, baseType: !138, size: 32, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2830, file: !2831, line: 46, baseType: !102, size: 128, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2830, file: !2831, line: 47, baseType: !740, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2830, file: !2831, line: 48, baseType: !2838, size: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !70, line: 533, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2830, file: !2831, line: 49, baseType: !2841, size: 320, offset: 320)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2842, line: 11, size: 320, elements: !2843)
!2842 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2843 = !{!2844, !2845, !2846, !2851}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2841, file: !2842, line: 16, baseType: !643, size: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2841, file: !2842, line: 17, baseType: !122, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2841, file: !2842, line: 18, baseType: !2847, size: 64, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !2850}
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2841, file: !2842, line: 19, baseType: !124, size: 32, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2830, file: !2831, line: 50, baseType: !122, size: 64, offset: 640)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2830, file: !2831, line: 51, baseType: !216, size: 64, offset: 704)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2830, file: !2831, line: 52, baseType: !216, size: 64, offset: 768)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2830, file: !2831, line: 53, baseType: !216, size: 64, offset: 832)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2830, file: !2831, line: 54, baseType: !216, size: 64, offset: 896)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2830, file: !2831, line: 55, baseType: !216, size: 64, offset: 960)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2830, file: !2831, line: 56, baseType: !122, size: 64, offset: 1024)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2830, file: !2831, line: 57, baseType: !122, size: 64, offset: 1088)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2830, file: !2831, line: 58, baseType: !122, size: 64, offset: 1152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2830, file: !2831, line: 59, baseType: !122, size: 64, offset: 1216)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2830, file: !2831, line: 60, baseType: !122, size: 64, offset: 1280)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2830, file: !2831, line: 61, baseType: !2664, size: 64, offset: 1344)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2830, file: !2831, line: 62, baseType: !488, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2830, file: !2831, line: 63, baseType: !488, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2811, file: !70, line: 583, baseType: !488, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2811, file: !70, line: 584, baseType: !488, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2811, file: !70, line: 585, baseType: !488, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2811, file: !70, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2811, file: !70, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2811, file: !70, line: 592, baseType: !208, size: 512, offset: 576)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2811, file: !70, line: 593, baseType: !169, size: 64, offset: 1088)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2811, file: !70, line: 594, baseType: !1445, size: 256, offset: 1152)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2811, file: !70, line: 595, baseType: !1286, size: 128, offset: 1408)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2811, file: !70, line: 596, baseType: !2838, size: 64, offset: 1536)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2811, file: !70, line: 597, baseType: !134, size: 32, offset: 1600)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2811, file: !70, line: 598, baseType: !134, size: 32, offset: 1632)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2811, file: !70, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2811, file: !70, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2811, file: !70, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2811, file: !70, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2811, file: !70, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2811, file: !70, line: 604, baseType: !488, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2811, file: !70, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2811, file: !70, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2811, file: !70, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2811, file: !70, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2811, file: !70, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2811, file: !70, line: 610, baseType: !5, size: 32, offset: 1696)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2811, file: !70, line: 611, baseType: !69, size: 32, offset: 1728)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2811, file: !70, line: 612, baseType: !77, size: 32, offset: 1760)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2811, file: !70, line: 613, baseType: !138, size: 32, offset: 1792)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2811, file: !70, line: 614, baseType: !138, size: 32, offset: 1824)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2811, file: !70, line: 615, baseType: !169, size: 64, offset: 1856)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2811, file: !70, line: 616, baseType: !169, size: 64, offset: 1920)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2811, file: !70, line: 617, baseType: !169, size: 64, offset: 1984)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2811, file: !70, line: 618, baseType: !169, size: 64, offset: 2048)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2811, file: !70, line: 620, baseType: !2899, size: 64, offset: 2112)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !70, line: 536, size: 256, elements: !2901)
!2901 = !{!2902, !2903, !2904, !2905}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2900, file: !70, line: 537, baseType: !740)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2900, file: !70, line: 538, baseType: !5, size: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2900, file: !70, line: 540, baseType: !102, size: 128, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2900, file: !70, line: 543, baseType: !2906, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !70, line: 534, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2811, file: !70, line: 621, baseType: !2909, size: 64, offset: 2176)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{null, !2664, !2161}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2811, file: !70, line: 622, baseType: !2913, size: 64, offset: 2240)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !70, line: 622, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2665, file: !63, line: 486, baseType: !2916, size: 64, offset: 4096)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !70, line: 642, size: 1792, elements: !2918)
!2918 = !{!2919, !2920, !2921, !2925, !2926, !2927}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2917, file: !70, line: 643, baseType: !2696, size: 1472)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2917, file: !70, line: 644, baseType: !2699, size: 64, offset: 1472)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2917, file: !70, line: 645, baseType: !2922, size: 64, offset: 1536)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !2664, !488}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2917, file: !70, line: 646, baseType: !2699, size: 64, offset: 1600)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2917, file: !70, line: 647, baseType: !2690, size: 64, offset: 1664)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2917, file: !70, line: 648, baseType: !2690, size: 64, offset: 1728)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !2665, file: !63, line: 493, baseType: !2929, size: 64, offset: 4160)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !63, line: 493, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !2665, file: !63, line: 499, baseType: !102, size: 128, offset: 4224)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2665, file: !63, line: 502, baseType: !2933, size: 64, offset: 4352)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2935)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !63, line: 502, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2665, file: !63, line: 504, baseType: !2937, size: 64, offset: 4416)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2665, file: !63, line: 505, baseType: !169, size: 64, offset: 4480)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2665, file: !63, line: 510, baseType: !169, size: 64, offset: 4544)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2665, file: !63, line: 511, baseType: !2941, size: 64, offset: 4608)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2943)
!2943 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !63, line: 511, flags: DIFlagFwdDecl)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2665, file: !63, line: 513, baseType: !2945, size: 64, offset: 4672)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !63, line: 288, size: 128, elements: !2947)
!2947 = !{!2948, !2949}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2946, file: !63, line: 293, baseType: !5, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2946, file: !63, line: 294, baseType: !122, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2665, file: !63, line: 515, baseType: !102, size: 128, offset: 4736)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2665, file: !63, line: 526, baseType: !2952, offset: 4864)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2953, line: 5, elements: !178)
!2953 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2665, file: !63, line: 528, baseType: !2955, size: 64, offset: 4864)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2957, line: 14, flags: DIFlagFwdDecl)
!2957 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2665, file: !63, line: 529, baseType: !2959, size: 64, offset: 4928)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2727, line: 22, flags: DIFlagFwdDecl)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2665, file: !63, line: 534, baseType: !511, size: 32, offset: 4992)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2665, file: !63, line: 535, baseType: !124, size: 32, offset: 5024)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2665, file: !63, line: 537, baseType: !740, offset: 5056)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2665, file: !63, line: 538, baseType: !102, size: 128, offset: 5056)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2665, file: !63, line: 540, baseType: !2966, size: 64, offset: 5184)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2968, line: 54, size: 960, elements: !2969)
!2968 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2969 = !{!2970, !2971, !2972, !2973, !2974, !2975, !2976, !2980, !2984, !2985, !2986, !2987, !2991, !2995, !2996}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2967, file: !2968, line: 55, baseType: !457, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2967, file: !2968, line: 56, baseType: !634, size: 64, offset: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2967, file: !2968, line: 58, baseType: !1830, size: 64, offset: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2967, file: !2968, line: 59, baseType: !1830, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2967, file: !2968, line: 60, baseType: !1757, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2967, file: !2968, line: 62, baseType: !2681, size: 64, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2967, file: !2968, line: 63, baseType: !2977, size: 64, offset: 384)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!483, !2664, !2688}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2967, file: !2968, line: 65, baseType: !2981, size: 64, offset: 448)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2966}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2967, file: !2968, line: 66, baseType: !2690, size: 64, offset: 512)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2967, file: !2968, line: 68, baseType: !2699, size: 64, offset: 576)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2967, file: !2968, line: 70, baseType: !1866, size: 64, offset: 640)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2967, file: !2968, line: 71, baseType: !2988, size: 64, offset: 704)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!1883, !2664}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2967, file: !2968, line: 73, baseType: !2992, size: 64, offset: 768)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{null, !2664, !1900, !1901}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2967, file: !2968, line: 75, baseType: !2694, size: 64, offset: 832)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2967, file: !2968, line: 77, baseType: !2793, size: 64, offset: 896)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2665, file: !63, line: 541, baseType: !1830, size: 64, offset: 5248)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2665, file: !63, line: 543, baseType: !2690, size: 64, offset: 5312)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2665, file: !63, line: 544, baseType: !3000, size: 64, offset: 5376)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !63, line: 45, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2665, file: !63, line: 545, baseType: !3003, size: 64, offset: 5440)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !63, line: 47, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2665, file: !63, line: 547, baseType: !488, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2665, file: !63, line: 548, baseType: !488, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2665, file: !63, line: 549, baseType: !488, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2665, file: !63, line: 550, baseType: !488, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2658, file: !2659, line: 289, baseType: !3010, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3012, line: 302, size: 1472, elements: !3013)
!3012 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!3013 = !{!3014, !3015, !3016, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3045, !3046, !3049, !3050, !3052, !3138, !3141, !3142, !3267}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3011, file: !3012, line: 303, baseType: !138, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3011, file: !3012, line: 304, baseType: !2031, size: 32, offset: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3011, file: !3012, line: 305, baseType: !3017, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3011, file: !3012, line: 306, baseType: !634, size: 64, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3011, file: !3012, line: 307, baseType: !457, size: 64, offset: 192)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3011, file: !3012, line: 308, baseType: !457, size: 64, offset: 256)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3011, file: !3012, line: 309, baseType: !138, size: 32, offset: 320)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3011, file: !3012, line: 310, baseType: !138, size: 32, offset: 352)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3011, file: !3012, line: 311, baseType: !138, size: 32, offset: 384)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3011, file: !3012, line: 312, baseType: !5, size: 32, offset: 416)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3011, file: !3012, line: 313, baseType: !2186, size: 16, offset: 448)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3011, file: !3012, line: 314, baseType: !2186, size: 16, offset: 464)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3011, file: !3012, line: 315, baseType: !3028, size: 352, offset: 480)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3029, line: 32, size: 352, elements: !3030)
!3029 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!3030 = !{!3031, !3033, !3034, !3035, !3036, !3038, !3042, !3044}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3028, file: !3029, line: 33, baseType: !3032, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3029, line: 9, baseType: !5)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3028, file: !3029, line: 34, baseType: !3032, size: 32, offset: 32)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3028, file: !3029, line: 35, baseType: !3032, size: 32, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3028, file: !3029, line: 36, baseType: !3032, size: 32, offset: 96)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3028, file: !3029, line: 37, baseType: !3037, size: 8, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3029, line: 7, baseType: !291)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3028, file: !3029, line: 38, baseType: !3039, size: 152, offset: 136)
!3039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3037, size: 152, elements: !3040)
!3040 = !{!3041}
!3041 = !DISubrange(count: 19)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3028, file: !3029, line: 39, baseType: !3043, size: 32, offset: 288)
!3043 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3029, line: 8, baseType: !5)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3028, file: !3029, line: 40, baseType: !3043, size: 32, offset: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3011, file: !3012, line: 316, baseType: !122, size: 64, offset: 832)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3011, file: !3012, line: 317, baseType: !3047, size: 64, offset: 896)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3012, line: 317, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3011, file: !3012, line: 318, baseType: !3010, size: 64, offset: 960)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3011, file: !3012, line: 323, baseType: !3051, size: 64, offset: 1024)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3011, file: !3012, line: 324, baseType: !3053, size: 64, offset: 1088)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !2659, line: 230, size: 2432, elements: !3056)
!3056 = !{!3057, !3086, !3087, !3088, !3110, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3133, !3134, !3135, !3136, !3137}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3055, file: !2659, line: 231, baseType: !3058, size: 1024)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !2659, line: 85, size: 1024, elements: !3059)
!3059 = !{!3060, !3075, !3076, !3077, !3078, !3079, !3083, !3084, !3085}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3058, file: !2659, line: 86, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !2659, line: 58, size: 256, elements: !3063)
!3063 = !{!3064, !3069, !3070, !3071, !3072, !3073, !3074}
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !3062, file: !2659, line: 59, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3062, file: !2659, line: 59, size: 64, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3065, file: !2659, line: 60, baseType: !3061, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3065, file: !2659, line: 61, baseType: !365, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3062, file: !2659, line: 63, baseType: !138, size: 32, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3062, file: !2659, line: 64, baseType: !138, size: 32, offset: 96)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3062, file: !2659, line: 65, baseType: !138, size: 32, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3062, file: !2659, line: 66, baseType: !138, size: 32, offset: 160)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3062, file: !2659, line: 67, baseType: !138, size: 32, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3062, file: !2659, line: 69, baseType: !2447, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3058, file: !2659, line: 87, baseType: !1445, size: 256, offset: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3058, file: !2659, line: 88, baseType: !729, size: 192, offset: 320)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3058, file: !2659, line: 89, baseType: !134, size: 32, offset: 512)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3058, file: !2659, line: 90, baseType: !3062, size: 256, offset: 576)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3058, file: !2659, line: 91, baseType: !3080, size: 64, offset: 832)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !366, line: 54, size: 64, elements: !3081)
!3081 = !{!3082}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3080, file: !366, line: 55, baseType: !369, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3058, file: !2659, line: 92, baseType: !134, size: 32, offset: 896)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3058, file: !2659, line: 93, baseType: !138, size: 32, offset: 928)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3058, file: !2659, line: 94, baseType: !3061, size: 64, offset: 960)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3055, file: !2659, line: 232, baseType: !2657, size: 64, offset: 1024)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3055, file: !2659, line: 233, baseType: !2657, size: 64, offset: 1088)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3055, file: !2659, line: 234, baseType: !3089, size: 64, offset: 1152)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !2659, line: 205, size: 320, elements: !3092)
!3092 = !{!3093, !3097, !3101, !3105, !3109}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !3091, file: !2659, line: 207, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!138, !3054}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !3091, file: !2659, line: 209, baseType: !3098, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{null, !3054, !138}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3091, file: !2659, line: 213, baseType: !3102, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{null, !3054}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3091, file: !2659, line: 218, baseType: !3106, size: 64, offset: 192)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!138, !3054, !2657}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !3091, file: !2659, line: 220, baseType: !3102, size: 64, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3055, file: !2659, line: 235, baseType: !3111, size: 64, offset: 1216)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3113)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !2659, line: 223, size: 128, elements: !3114)
!3114 = !{!3115, !3119}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3113, file: !2659, line: 224, baseType: !3116, size: 64)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!138, !3054, !419, !419, !577}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3113, file: !2659, line: 225, baseType: !3102, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3055, file: !2659, line: 236, baseType: !740, offset: 1280)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3055, file: !2659, line: 237, baseType: !138, size: 32, offset: 1280)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3055, file: !2659, line: 238, baseType: !138, size: 32, offset: 1312)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3055, file: !2659, line: 239, baseType: !1286, size: 128, offset: 1344)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3055, file: !2659, line: 240, baseType: !1286, size: 128, offset: 1472)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3055, file: !2659, line: 241, baseType: !122, size: 64, offset: 1600)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3055, file: !2659, line: 242, baseType: !122, size: 64, offset: 1664)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3055, file: !2659, line: 243, baseType: !291, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !3055, file: !2659, line: 244, baseType: !291, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3055, file: !2659, line: 245, baseType: !729, size: 192, offset: 1792)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3055, file: !2659, line: 246, baseType: !729, size: 192, offset: 1984)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3055, file: !2659, line: 247, baseType: !3132, size: 64, offset: 2176)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3055, file: !2659, line: 248, baseType: !5, size: 32, offset: 2240)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3055, file: !2659, line: 249, baseType: !5, size: 32, offset: 2272)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3055, file: !2659, line: 250, baseType: !138, size: 32, offset: 2304)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3055, file: !2659, line: 253, baseType: !2031, size: 32, offset: 2336)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3055, file: !2659, line: 254, baseType: !128, size: 64, offset: 2368)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3011, file: !3012, line: 325, baseType: !3139, size: 64, offset: 1152)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3011, file: !3012, line: 326, baseType: !128, size: 64, offset: 1216)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3011, file: !3012, line: 332, baseType: !3143, size: 64, offset: 1280)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3145)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3012, line: 254, size: 2176, elements: !3146)
!3146 = !{!3147, !3151, !3155, !3159, !3163, !3167, !3171, !3172, !3176, !3180, !3181, !3185, !3186, !3190, !3194, !3198, !3199, !3200, !3201, !3202, !3203, !3207, !3208, !3209, !3213, !3217, !3218, !3222, !3234, !3249, !3255, !3261, !3262, !3266}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3145, file: !3012, line: 255, baseType: !3148, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!2657, !3010, !358, !138}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3145, file: !3012, line: 257, baseType: !3152, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!138, !3010, !2657}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3145, file: !3012, line: 258, baseType: !3156, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{null, !3010, !2657}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3145, file: !3012, line: 259, baseType: !3160, size: 64, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!138, !2657, !358}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3145, file: !3012, line: 260, baseType: !3164, size: 64, offset: 256)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !2657, !358}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3145, file: !3012, line: 261, baseType: !3168, size: 64, offset: 320)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{null, !2657}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3145, file: !3012, line: 262, baseType: !3168, size: 64, offset: 384)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3145, file: !3012, line: 263, baseType: !3173, size: 64, offset: 448)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!138, !2657, !419, !138}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3145, file: !3012, line: 265, baseType: !3177, size: 64, offset: 512)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!138, !2657, !291}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3145, file: !3012, line: 266, baseType: !3168, size: 64, offset: 576)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3145, file: !3012, line: 267, baseType: !3182, size: 64, offset: 640)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!138, !2657}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3145, file: !3012, line: 268, baseType: !3182, size: 64, offset: 704)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3145, file: !3012, line: 269, baseType: !3187, size: 64, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!138, !2657, !5, !122}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3145, file: !3012, line: 271, baseType: !3191, size: 64, offset: 832)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!109, !2657, !5, !122}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3145, file: !3012, line: 273, baseType: !3195, size: 64, offset: 896)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{null, !2657, !3140}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3145, file: !3012, line: 274, baseType: !3168, size: 64, offset: 960)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3145, file: !3012, line: 275, baseType: !3168, size: 64, offset: 1024)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3145, file: !3012, line: 276, baseType: !3168, size: 64, offset: 1088)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3145, file: !3012, line: 277, baseType: !3168, size: 64, offset: 1152)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3145, file: !3012, line: 278, baseType: !3168, size: 64, offset: 1216)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3145, file: !3012, line: 279, baseType: !3204, size: 64, offset: 1280)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!138, !2657, !138}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3145, file: !3012, line: 280, baseType: !3168, size: 64, offset: 1344)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3145, file: !3012, line: 281, baseType: !3168, size: 64, offset: 1408)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3145, file: !3012, line: 282, baseType: !3210, size: 64, offset: 1472)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !2657, !138}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3145, file: !3012, line: 283, baseType: !3214, size: 64, offset: 1536)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{null, !2657, !459}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3145, file: !3012, line: 284, baseType: !3182, size: 64, offset: 1600)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3145, file: !3012, line: 285, baseType: !3219, size: 64, offset: 1664)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!138, !2657, !5, !5}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3145, file: !3012, line: 287, baseType: !3223, size: 64, offset: 1728)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!138, !2657, !3226}
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3228, line: 15, size: 64, elements: !3229)
!3228 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!3229 = !{!3230, !3231, !3232, !3233}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3227, file: !3228, line: 16, baseType: !187, size: 16)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3227, file: !3228, line: 17, baseType: !187, size: 16, offset: 16)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3227, file: !3228, line: 18, baseType: !187, size: 16, offset: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3227, file: !3228, line: 19, baseType: !187, size: 16, offset: 48)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !3145, file: !3012, line: 288, baseType: !3235, size: 64, offset: 1792)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!138, !2657, !3238}
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !3240, line: 10, size: 128, elements: !3241)
!3240 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!3241 = !{!3242, !3243, !3244, !3248}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !3239, file: !3240, line: 12, baseType: !895, size: 16)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !3239, file: !3240, line: 13, baseType: !895, size: 16, offset: 16)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !3239, file: !3240, line: 14, baseType: !3245, size: 80, offset: 32)
!3245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 80, elements: !3246)
!3246 = !{!3247}
!3247 = !DISubrange(count: 5)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !3239, file: !3240, line: 15, baseType: !895, size: 16, offset: 112)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3145, file: !3012, line: 289, baseType: !3250, size: 64, offset: 1856)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!138, !2657, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3012, line: 251, flags: DIFlagFwdDecl)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3145, file: !3012, line: 291, baseType: !3256, size: 64, offset: 1920)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!138, !2657, !3259}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3012, line: 252, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3145, file: !3012, line: 292, baseType: !3256, size: 64, offset: 1984)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3145, file: !3012, line: 293, baseType: !3263, size: 64, offset: 2048)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{null, !2657, !717}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3145, file: !3012, line: 299, baseType: !767, size: 64, offset: 2112)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3011, file: !3012, line: 333, baseType: !102, size: 128, offset: 1344)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2658, file: !2659, line: 290, baseType: !3143, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2658, file: !2659, line: 291, baseType: !138, size: 32, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !2658, file: !2659, line: 294, baseType: !3271, size: 384, offset: 320)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !3272, line: 133, size: 384, elements: !3273)
!3272 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!3273 = !{!3274, !3275, !3276, !3277, !3278}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3271, file: !3272, line: 134, baseType: !733, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3271, file: !3272, line: 135, baseType: !233, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3271, file: !3272, line: 136, baseType: !5, size: 32, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3271, file: !3272, line: 137, baseType: !102, size: 128, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3271, file: !3272, line: 138, baseType: !102, size: 128, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !2658, file: !2659, line: 295, baseType: !3280, size: 64, offset: 704)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !3272, line: 215, size: 128, elements: !3282)
!3282 = !{!3283, !3328}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3281, file: !3272, line: 216, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !3272, line: 175, size: 1216, elements: !3286)
!3286 = !{!3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3298, !3302, !3306, !3307, !3308, !3312, !3313, !3317, !3318, !3322, !3326, !3327}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3285, file: !3272, line: 176, baseType: !138, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3285, file: !3272, line: 177, baseType: !483, size: 64, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3285, file: !3272, line: 178, baseType: !138, size: 32, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3285, file: !3272, line: 179, baseType: !138, size: 32, offset: 160)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3285, file: !3272, line: 184, baseType: !3182, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3285, file: !3272, line: 185, baseType: !3168, size: 64, offset: 256)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3285, file: !3272, line: 186, baseType: !3168, size: 64, offset: 320)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3285, file: !3272, line: 187, baseType: !3295, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!574, !2657, !358, !3132, !577}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3285, file: !3272, line: 189, baseType: !3299, size: 64, offset: 448)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!574, !2657, !358, !419, !577}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3285, file: !3272, line: 191, baseType: !3303, size: 64, offset: 512)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!138, !2657, !358, !5, !122}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3285, file: !3272, line: 193, baseType: !3303, size: 64, offset: 576)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3285, file: !3272, line: 195, baseType: !3195, size: 64, offset: 640)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3285, file: !3272, line: 196, baseType: !3309, size: 64, offset: 704)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!1544, !2657, !358, !1546}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3285, file: !3272, line: 198, baseType: !3182, size: 64, offset: 768)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3285, file: !3272, line: 203, baseType: !3314, size: 64, offset: 832)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{null, !2657, !419, !483, !138}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3285, file: !3272, line: 205, baseType: !3168, size: 64, offset: 896)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !3285, file: !3272, line: 206, baseType: !3319, size: 64, offset: 960)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{null, !2657, !5}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !3285, file: !3272, line: 207, baseType: !3323, size: 64, offset: 1024)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!138, !2657, !419, !483, !138}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3285, file: !3272, line: 210, baseType: !634, size: 64, offset: 1088)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3285, file: !3272, line: 212, baseType: !138, size: 32, offset: 1152)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3281, file: !3272, line: 217, baseType: !2657, size: 64, offset: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !2658, file: !2659, line: 297, baseType: !729, size: 192, offset: 768)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !2658, file: !2659, line: 298, baseType: !729, size: 192, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !2658, file: !2659, line: 299, baseType: !729, size: 192, offset: 1152)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !2658, file: !2659, line: 300, baseType: !810, size: 256, offset: 1344)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !2658, file: !2659, line: 301, baseType: !729, size: 192, offset: 1600)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !2658, file: !2659, line: 302, baseType: !740, offset: 1792)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !2658, file: !2659, line: 303, baseType: !740, offset: 1792)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2658, file: !2659, line: 305, baseType: !3028, size: 352, offset: 1792)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !2658, file: !2659, line: 305, baseType: !3028, size: 352, offset: 2144)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !2658, file: !2659, line: 306, baseType: !3238, size: 64, offset: 2496)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2658, file: !2659, line: 307, baseType: !3340, size: 512, offset: 2560)
!3340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 512, elements: !1792)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !2658, file: !2659, line: 308, baseType: !2097, size: 64, offset: 3072)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !2658, file: !2659, line: 313, baseType: !2097, size: 64, offset: 3136)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2658, file: !2659, line: 314, baseType: !122, size: 64, offset: 3200)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2658, file: !2659, line: 315, baseType: !138, size: 32, offset: 3264)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !2658, file: !2659, line: 316, baseType: !3227, size: 64, offset: 3296)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !2658, file: !2659, line: 317, baseType: !122, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !2658, file: !2659, line: 318, baseType: !122, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !2658, file: !2659, line: 319, baseType: !122, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !2658, file: !2659, line: 320, baseType: !138, size: 32, offset: 3456)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !2658, file: !2659, line: 321, baseType: !122, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !2658, file: !2659, line: 322, baseType: !122, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !2658, file: !2659, line: 323, baseType: !122, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !2658, file: !2659, line: 324, baseType: !5, size: 32, offset: 3584)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !2658, file: !2659, line: 325, baseType: !138, size: 32, offset: 3616)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2658, file: !2659, line: 327, baseType: !2657, size: 64, offset: 3648)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2658, file: !2659, line: 328, baseType: !1598, size: 64, offset: 3712)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2658, file: !2659, line: 329, baseType: !1286, size: 128, offset: 3776)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2658, file: !2659, line: 330, baseType: !1286, size: 128, offset: 3904)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !2658, file: !2659, line: 331, baseType: !1445, size: 256, offset: 4032)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !2658, file: !2659, line: 332, baseType: !128, size: 64, offset: 4288)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2658, file: !2659, line: 333, baseType: !128, size: 64, offset: 4352)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !2658, file: !2659, line: 334, baseType: !740, offset: 4416)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !2658, file: !2659, line: 335, baseType: !102, size: 128, offset: 4416)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !2658, file: !2659, line: 339, baseType: !138, size: 32, offset: 4544)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2658, file: !2659, line: 340, baseType: !3132, size: 64, offset: 4608)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !2658, file: !2659, line: 341, baseType: !138, size: 32, offset: 4672)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !2658, file: !2659, line: 343, baseType: !1445, size: 256, offset: 4736)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2658, file: !2659, line: 344, baseType: !3054, size: 64, offset: 4992)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2604, file: !2605, line: 175, baseType: !3370, size: 32, offset: 3200)
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !263, line: 805, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 798, size: 32, elements: !3372)
!3372 = !{!3373, !3374}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3371, file: !263, line: 803, baseType: !393, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3371, file: !263, line: 804, baseType: !740, offset: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2604, file: !2605, line: 176, baseType: !169, size: 64, offset: 3264)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2604, file: !2605, line: 176, baseType: !169, size: 64, offset: 3328)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2604, file: !2605, line: 176, baseType: !169, size: 64, offset: 3392)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2604, file: !2605, line: 176, baseType: !169, size: 64, offset: 3456)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2604, file: !2605, line: 177, baseType: !169, size: 64, offset: 3520)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2604, file: !2605, line: 178, baseType: !169, size: 64, offset: 3584)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2604, file: !2605, line: 179, baseType: !2553, size: 128, offset: 3648)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2604, file: !2605, line: 180, baseType: !122, size: 64, offset: 3776)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2604, file: !2605, line: 180, baseType: !122, size: 64, offset: 3840)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2604, file: !2605, line: 180, baseType: !122, size: 64, offset: 3904)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2604, file: !2605, line: 180, baseType: !122, size: 64, offset: 3968)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2604, file: !2605, line: 181, baseType: !122, size: 64, offset: 4032)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2604, file: !2605, line: 181, baseType: !122, size: 64, offset: 4096)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2604, file: !2605, line: 181, baseType: !122, size: 64, offset: 4160)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2604, file: !2605, line: 181, baseType: !122, size: 64, offset: 4224)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2604, file: !2605, line: 182, baseType: !122, size: 64, offset: 4288)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2604, file: !2605, line: 182, baseType: !122, size: 64, offset: 4352)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2604, file: !2605, line: 182, baseType: !122, size: 64, offset: 4416)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2604, file: !2605, line: 182, baseType: !122, size: 64, offset: 4480)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2604, file: !2605, line: 183, baseType: !122, size: 64, offset: 4544)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2604, file: !2605, line: 183, baseType: !122, size: 64, offset: 4608)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2604, file: !2605, line: 184, baseType: !3397, offset: 4672)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3398, line: 12, elements: !178)
!3398 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2604, file: !2605, line: 192, baseType: !171, size: 64, offset: 4672)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2604, file: !2605, line: 203, baseType: !3401, size: 2048, offset: 4736)
!3401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3402, size: 2048, elements: !1333)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3403, line: 43, size: 128, elements: !3404)
!3403 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3404 = !{!3405, !3406}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3402, file: !3403, line: 44, baseType: !579, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3402, file: !3403, line: 45, baseType: !579, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2604, file: !2605, line: 220, baseType: !488, size: 8, offset: 6784)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2604, file: !2605, line: 221, baseType: !2186, size: 16, offset: 6800)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2604, file: !2605, line: 222, baseType: !2186, size: 16, offset: 6816)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2604, file: !2605, line: 224, baseType: !316, size: 64, offset: 6848)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2604, file: !2605, line: 227, baseType: !729, size: 192, offset: 6912)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2604, file: !2605, line: 233, baseType: !729, size: 192, offset: 7104)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !114, file: !115, line: 970, baseType: !3414, size: 64, offset: 9280)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2605, line: 20, size: 16576, elements: !3416)
!3416 = !{!3417, !3418, !3419, !3420}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3415, file: !2605, line: 21, baseType: !740)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3415, file: !2605, line: 22, baseType: !130, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3415, file: !2605, line: 23, baseType: !1286, size: 128, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3415, file: !2605, line: 24, baseType: !3421, size: 16384, offset: 192)
!3421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3422, size: 16384, elements: !1792)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2615, line: 49, size: 256, elements: !3423)
!3423 = !{!3424}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3422, file: !2615, line: 50, baseType: !3425, size: 256)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2615, line: 35, size: 256, elements: !3426)
!3426 = !{!3427, !3434, !3435, !3441}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3425, file: !2615, line: 37, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3429, line: 19, baseType: !3430)
!3429 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3429, line: 18, baseType: !3432)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{null, !138}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3425, file: !2615, line: 38, baseType: !122, size: 64, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3425, file: !2615, line: 44, baseType: !3436, size: 64, offset: 128)
!3436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3429, line: 22, baseType: !3437)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3429, line: 21, baseType: !3439)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3425, file: !2615, line: 46, baseType: !2619, size: 64, offset: 192)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !114, file: !115, line: 971, baseType: !2619, size: 64, offset: 9344)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !114, file: !115, line: 972, baseType: !2619, size: 64, offset: 9408)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !114, file: !115, line: 974, baseType: !2619, size: 64, offset: 9472)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !114, file: !115, line: 975, baseType: !2614, size: 192, offset: 9536)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !114, file: !115, line: 976, baseType: !122, size: 64, offset: 9728)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !114, file: !115, line: 977, baseType: !577, size: 64, offset: 9792)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !114, file: !115, line: 978, baseType: !5, size: 32, offset: 9856)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !114, file: !115, line: 980, baseType: !374, size: 64, offset: 9920)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !114, file: !115, line: 989, baseType: !3451, size: 128, offset: 9984)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3452, line: 35, size: 128, elements: !3453)
!3452 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3453 = !{!3454, !3455, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3451, file: !3452, line: 36, baseType: !138, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3451, file: !3452, line: 37, baseType: !134, size: 32, offset: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3451, file: !3452, line: 38, baseType: !3457, size: 64, offset: 64)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3452, line: 23, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !114, file: !115, line: 992, baseType: !169, size: 64, offset: 10112)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !114, file: !115, line: 993, baseType: !169, size: 64, offset: 10176)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !114, file: !115, line: 996, baseType: !740, offset: 10240)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !114, file: !115, line: 999, baseType: !233, offset: 10240)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !114, file: !115, line: 1001, baseType: !3464, size: 64, offset: 10240)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !115, line: 636, size: 64, elements: !3465)
!3465 = !{!3466}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3464, file: !115, line: 637, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !114, file: !115, line: 1005, baseType: !276, size: 128, offset: 10304)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !114, file: !115, line: 1007, baseType: !113, size: 64, offset: 10432)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !114, file: !115, line: 1009, baseType: !3471, size: 64, offset: 10496)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !115, line: 1009, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !114, file: !115, line: 1043, baseType: !128, size: 64, offset: 10560)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !114, file: !115, line: 1046, baseType: !3475, size: 64, offset: 10624)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !115, line: 41, flags: DIFlagFwdDecl)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !114, file: !115, line: 1050, baseType: !3478, size: 64, offset: 10688)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !115, line: 42, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !114, file: !115, line: 1054, baseType: !3481, size: 64, offset: 10752)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !115, line: 55, flags: DIFlagFwdDecl)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !114, file: !115, line: 1056, baseType: !1233, size: 64, offset: 10816)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !114, file: !115, line: 1058, baseType: !3485, size: 64, offset: 10880)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3487, line: 99, size: 704, elements: !3488)
!3487 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3494, !3495, !3514, !3515}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3486, file: !3487, line: 100, baseType: !733, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3486, file: !3487, line: 101, baseType: !134, size: 32, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3486, file: !3487, line: 102, baseType: !134, size: 32, offset: 96)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3486, file: !3487, line: 105, baseType: !740, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3486, file: !3487, line: 107, baseType: !187, size: 16, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3486, file: !3487, line: 109, baseType: !799, size: 128, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3486, file: !3487, line: 110, baseType: !3496, size: 64, offset: 320)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3487, line: 73, size: 448, elements: !3498)
!3498 = !{!3499, !3502, !3503, !3508, !3513}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3497, file: !3487, line: 74, baseType: !3500, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3487, line: 74, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3497, file: !3487, line: 75, baseType: !3485, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, scope: !3497, file: !3487, line: 83, baseType: !3504, size: 128, offset: 128)
!3504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3497, file: !3487, line: 83, size: 128, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3504, file: !3487, line: 84, baseType: !102, size: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3504, file: !3487, line: 85, baseType: !970, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, scope: !3497, file: !3487, line: 87, baseType: !3509, size: 128, offset: 256)
!3509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3497, file: !3487, line: 87, size: 128, elements: !3510)
!3510 = !{!3511, !3512}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3509, file: !3487, line: 88, baseType: !643, size: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3509, file: !3487, line: 89, baseType: !371, size: 128, align: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3497, file: !3487, line: 92, baseType: !5, size: 32, offset: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3486, file: !3487, line: 111, baseType: !639, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3486, file: !3487, line: 113, baseType: !1445, size: 256, offset: 448)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !114, file: !115, line: 1061, baseType: !3517, size: 64, offset: 10944)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !115, line: 43, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !114, file: !115, line: 1064, baseType: !122, size: 64, offset: 11008)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !114, file: !115, line: 1065, baseType: !3521, size: 64, offset: 11072)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2615, line: 14, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2615, line: 12, size: 384, elements: !3524)
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3523, file: !2615, line: 13, baseType: !3526, size: 384)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3523, file: !2615, line: 13, size: 384, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3526, file: !2615, line: 13, baseType: !138, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3526, file: !2615, line: 13, baseType: !138, size: 32, offset: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3526, file: !2615, line: 13, baseType: !138, size: 32, offset: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3526, file: !2615, line: 13, baseType: !3532, size: 256, offset: 128)
!3532 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3533, line: 32, size: 256, elements: !3534)
!3533 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3540, !3553, !3559, !3568, !3588, !3593}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3532, file: !3533, line: 37, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3533, line: 34, size: 64, elements: !3537)
!3537 = !{!3538, !3539}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3536, file: !3533, line: 35, baseType: !2530, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3536, file: !3533, line: 36, baseType: !435, size: 32, offset: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3532, file: !3533, line: 45, baseType: !3541, size: 192)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3533, line: 40, size: 192, elements: !3542)
!3542 = !{!3543, !3545, !3546, !3552}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3541, file: !3533, line: 41, baseType: !3544, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !260, line: 95, baseType: !138)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3541, file: !3533, line: 42, baseType: !138, size: 32, offset: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3541, file: !3533, line: 43, baseType: !3547, size: 64, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3533, line: 11, baseType: !3548)
!3548 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3533, line: 8, size: 64, elements: !3549)
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3548, file: !3533, line: 9, baseType: !138, size: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3548, file: !3533, line: 10, baseType: !128, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3541, file: !3533, line: 44, baseType: !138, size: 32, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3532, file: !3533, line: 52, baseType: !3554, size: 128)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3533, line: 48, size: 128, elements: !3555)
!3555 = !{!3556, !3557, !3558}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3554, file: !3533, line: 49, baseType: !2530, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3554, file: !3533, line: 50, baseType: !435, size: 32, offset: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3554, file: !3533, line: 51, baseType: !3547, size: 64, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3532, file: !3533, line: 61, baseType: !3560, size: 256)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3533, line: 55, size: 256, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565, !3567}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3560, file: !3533, line: 56, baseType: !2530, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3560, file: !3533, line: 57, baseType: !435, size: 32, offset: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3560, file: !3533, line: 58, baseType: !138, size: 32, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3560, file: !3533, line: 59, baseType: !3566, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !260, line: 94, baseType: !576)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3560, file: !3533, line: 60, baseType: !3566, size: 64, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3532, file: !3533, line: 95, baseType: !3569, size: 256)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3533, line: 64, size: 256, elements: !3570)
!3570 = !{!3571, !3572}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3569, file: !3533, line: 65, baseType: !128, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, scope: !3569, file: !3533, line: 77, baseType: !3573, size: 192, offset: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3569, file: !3533, line: 77, size: 192, elements: !3574)
!3574 = !{!3575, !3576, !3583}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3573, file: !3533, line: 82, baseType: !2186, size: 16)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3573, file: !3533, line: 88, baseType: !3577, size: 192)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3573, file: !3533, line: 84, size: 192, elements: !3578)
!3578 = !{!3579, !3581, !3582}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3577, file: !3533, line: 85, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 64, elements: !254)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3577, file: !3533, line: 86, baseType: !128, size: 64, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3577, file: !3533, line: 87, baseType: !128, size: 64, offset: 128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3573, file: !3533, line: 93, baseType: !3584, size: 96)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3573, file: !3533, line: 90, size: 96, elements: !3585)
!3585 = !{!3586, !3587}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3584, file: !3533, line: 91, baseType: !3580, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3584, file: !3533, line: 92, baseType: !125, size: 32, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3532, file: !3533, line: 101, baseType: !3589, size: 128)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3533, line: 98, size: 128, elements: !3590)
!3590 = !{!3591, !3592}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3589, file: !3533, line: 99, baseType: !109, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3589, file: !3533, line: 100, baseType: !138, size: 32, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3532, file: !3533, line: 108, baseType: !3594, size: 128)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3532, file: !3533, line: 104, size: 128, elements: !3595)
!3595 = !{!3596, !3597, !3598}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3594, file: !3533, line: 105, baseType: !128, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3594, file: !3533, line: 106, baseType: !138, size: 32, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3594, file: !3533, line: 107, baseType: !5, size: 32, offset: 96)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !114, file: !115, line: 1067, baseType: !3397, offset: 11136)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !114, file: !115, line: 1099, baseType: !3601, size: 64, offset: 11136)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !115, line: 56, flags: DIFlagFwdDecl)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !114, file: !115, line: 1103, baseType: !102, size: 128, offset: 11200)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !114, file: !115, line: 1104, baseType: !3605, size: 64, offset: 11328)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !115, line: 46, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !114, file: !115, line: 1105, baseType: !729, size: 192, offset: 11392)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !114, file: !115, line: 1106, baseType: !5, size: 32, offset: 11584)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !114, file: !115, line: 1109, baseType: !3610, size: 128, offset: 11648)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3611, size: 128, elements: !2145)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !115, line: 51, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !114, file: !115, line: 1110, baseType: !729, size: 192, offset: 11776)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !114, file: !115, line: 1111, baseType: !102, size: 128, offset: 11968)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !114, file: !115, line: 1173, baseType: !3616, size: 64, offset: 12096)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3618, line: 62, size: 256, align: 256, elements: !3619)
!3618 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3619 = !{!3620, !3621, !3622, !3627}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3617, file: !3618, line: 75, baseType: !125, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3617, file: !3618, line: 90, baseType: !125, size: 32, offset: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3617, file: !3618, line: 124, baseType: !3623, size: 64, offset: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3617, file: !3618, line: 109, size: 64, elements: !3624)
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3623, file: !3618, line: 110, baseType: !170, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3623, file: !3618, line: 112, baseType: !170, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3617, file: !3618, line: 144, baseType: !125, size: 32, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !114, file: !115, line: 1174, baseType: !124, size: 32, offset: 12160)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !114, file: !115, line: 1179, baseType: !122, size: 64, offset: 12224)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !114, file: !115, line: 1182, baseType: !3631, size: 128, offset: 12288)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2377, line: 76, size: 128, elements: !3632)
!3632 = !{!3633, !3638, !3639}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3631, file: !2377, line: 85, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3635, line: 7, size: 64, elements: !3636)
!3635 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3636 = !{!3637}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3634, file: !3635, line: 12, baseType: !305, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3631, file: !2377, line: 88, baseType: !488, size: 8, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3631, file: !2377, line: 95, baseType: !488, size: 8, offset: 72)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !115, line: 1184, baseType: !3641, size: 128, offset: 12416)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !115, line: 1184, size: 128, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3641, file: !115, line: 1185, baseType: !130, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3641, file: !115, line: 1186, baseType: !371, size: 128, align: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !114, file: !115, line: 1190, baseType: !1701, size: 64, offset: 12544)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !114, file: !115, line: 1192, baseType: !3647, size: 128, offset: 12608)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2377, line: 64, size: 128, elements: !3648)
!3648 = !{!3649, !3650, !3651}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3647, file: !2377, line: 65, baseType: !782, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3647, file: !2377, line: 67, baseType: !125, size: 32, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3647, file: !2377, line: 68, baseType: !125, size: 32, offset: 96)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !114, file: !115, line: 1206, baseType: !138, size: 32, offset: 12736)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !114, file: !115, line: 1207, baseType: !138, size: 32, offset: 12768)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !114, file: !115, line: 1209, baseType: !122, size: 64, offset: 12800)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !114, file: !115, line: 1219, baseType: !169, size: 64, offset: 12864)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !114, file: !115, line: 1220, baseType: !169, size: 64, offset: 12928)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !114, file: !115, line: 1317, baseType: !138, size: 32, offset: 12992)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !114, file: !115, line: 1319, baseType: !113, size: 64, offset: 13056)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !114, file: !115, line: 1322, baseType: !3660, size: 64, offset: 13120)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !115, line: 1322, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !114, file: !115, line: 1326, baseType: !130, size: 32, offset: 13184)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !114, file: !115, line: 1342, baseType: !128, size: 64, offset: 13248)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !114, file: !115, line: 1343, baseType: !170, size: 64, offset: 13312)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !114, file: !115, line: 1344, baseType: !169, size: 64, offset: 13376)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !114, file: !115, line: 1345, baseType: !170, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !114, file: !115, line: 1346, baseType: !170, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !114, file: !115, line: 1347, baseType: !170, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !114, file: !115, line: 1348, baseType: !371, size: 128, align: 64, offset: 13504)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !114, file: !115, line: 1358, baseType: !3671, size: 34816, offset: 13824)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3672, line: 485, size: 34816, elements: !3673)
!3672 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3673 = !{!3674, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3703, !3704, !3705, !3706, !3707, !3708, !3711, !3712, !3713}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3671, file: !3672, line: 487, baseType: !3675, size: 192)
!3675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3676, size: 192, elements: !655)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3677, line: 16, size: 64, elements: !3678)
!3677 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3676, file: !3677, line: 17, baseType: !894, size: 16)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3676, file: !3677, line: 18, baseType: !894, size: 16, offset: 16)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3676, file: !3677, line: 19, baseType: !894, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3676, file: !3677, line: 19, baseType: !894, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3676, file: !3677, line: 19, baseType: !894, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3676, file: !3677, line: 19, baseType: !894, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3676, file: !3677, line: 19, baseType: !894, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3676, file: !3677, line: 20, baseType: !894, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3676, file: !3677, line: 20, baseType: !894, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3676, file: !3677, line: 20, baseType: !894, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3676, file: !3677, line: 20, baseType: !894, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3676, file: !3677, line: 20, baseType: !894, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3676, file: !3677, line: 20, baseType: !894, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3671, file: !3672, line: 491, baseType: !122, size: 64, offset: 192)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3671, file: !3672, line: 495, baseType: !187, size: 16, offset: 256)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3671, file: !3672, line: 496, baseType: !187, size: 16, offset: 272)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3671, file: !3672, line: 497, baseType: !187, size: 16, offset: 288)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3671, file: !3672, line: 498, baseType: !187, size: 16, offset: 304)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3671, file: !3672, line: 502, baseType: !122, size: 64, offset: 320)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3671, file: !3672, line: 503, baseType: !122, size: 64, offset: 384)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3671, file: !3672, line: 514, baseType: !3700, size: 256, offset: 448)
!3700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3701, size: 256, elements: !2105)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3672, line: 483, flags: DIFlagFwdDecl)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3671, file: !3672, line: 516, baseType: !122, size: 64, offset: 704)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3671, file: !3672, line: 518, baseType: !122, size: 64, offset: 768)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3671, file: !3672, line: 520, baseType: !122, size: 64, offset: 832)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3671, file: !3672, line: 521, baseType: !122, size: 64, offset: 896)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3671, file: !3672, line: 522, baseType: !122, size: 64, offset: 960)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3671, file: !3672, line: 528, baseType: !3709, size: 64, offset: 1024)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3672, line: 10, flags: DIFlagFwdDecl)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3671, file: !3672, line: 535, baseType: !122, size: 64, offset: 1088)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3671, file: !3672, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3671, file: !3672, line: 540, baseType: !3714, size: 33280, offset: 1536)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3715, line: 317, size: 33280, elements: !3716)
!3715 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3716 = !{!3717, !3718, !3719}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3714, file: !3715, line: 330, baseType: !5, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3714, file: !3715, line: 337, baseType: !122, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3714, file: !3715, line: 348, baseType: !3720, size: 32768, offset: 512)
!3720 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3715, line: 304, size: 32768, elements: !3721)
!3721 = !{!3722, !3737, !3774, !3824, !3837}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3720, file: !3715, line: 305, baseType: !3723, size: 896)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3715, line: 12, size: 896, elements: !3724)
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3736}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3723, file: !3715, line: 13, baseType: !124, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3723, file: !3715, line: 14, baseType: !124, size: 32, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3723, file: !3715, line: 15, baseType: !124, size: 32, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3723, file: !3715, line: 16, baseType: !124, size: 32, offset: 96)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3723, file: !3715, line: 17, baseType: !124, size: 32, offset: 128)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3723, file: !3715, line: 18, baseType: !124, size: 32, offset: 160)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3723, file: !3715, line: 19, baseType: !124, size: 32, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3723, file: !3715, line: 22, baseType: !3733, size: 640, offset: 224)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 640, elements: !3734)
!3734 = !{!3735}
!3735 = !DISubrange(count: 20)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3723, file: !3715, line: 25, baseType: !124, size: 32, offset: 864)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3720, file: !3715, line: 306, baseType: !3738, size: 4096, align: 128)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3715, line: 34, size: 4096, align: 128, elements: !3739)
!3739 = !{!3740, !3741, !3742, !3743, !3744, !3759, !3760, !3761, !3763, !3765, !3769}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3738, file: !3715, line: 35, baseType: !894, size: 16)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3738, file: !3715, line: 36, baseType: !894, size: 16, offset: 16)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3738, file: !3715, line: 37, baseType: !894, size: 16, offset: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3738, file: !3715, line: 38, baseType: !894, size: 16, offset: 48)
!3744 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !3715, line: 39, baseType: !3745, size: 128, offset: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3738, file: !3715, line: 39, size: 128, elements: !3746)
!3746 = !{!3747, !3752}
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !3745, file: !3715, line: 40, baseType: !3748, size: 128)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3745, file: !3715, line: 40, size: 128, elements: !3749)
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3748, file: !3715, line: 41, baseType: !169, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3748, file: !3715, line: 42, baseType: !169, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, scope: !3745, file: !3715, line: 44, baseType: !3753, size: 128)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3745, file: !3715, line: 44, size: 128, elements: !3754)
!3754 = !{!3755, !3756, !3757, !3758}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3753, file: !3715, line: 45, baseType: !124, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3753, file: !3715, line: 46, baseType: !124, size: 32, offset: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3753, file: !3715, line: 47, baseType: !124, size: 32, offset: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3753, file: !3715, line: 48, baseType: !124, size: 32, offset: 96)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3738, file: !3715, line: 51, baseType: !124, size: 32, offset: 192)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3738, file: !3715, line: 52, baseType: !124, size: 32, offset: 224)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3738, file: !3715, line: 55, baseType: !3762, size: 1024, offset: 256)
!3762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 1024, elements: !1324)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3738, file: !3715, line: 58, baseType: !3764, size: 2048, offset: 1280)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 2048, elements: !1792)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3738, file: !3715, line: 60, baseType: !3766, size: 384, offset: 3328)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 384, elements: !3767)
!3767 = !{!3768}
!3768 = !DISubrange(count: 12)
!3769 = !DIDerivedType(tag: DW_TAG_member, scope: !3738, file: !3715, line: 62, baseType: !3770, size: 384, offset: 3712)
!3770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3738, file: !3715, line: 62, size: 384, elements: !3771)
!3771 = !{!3772, !3773}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3770, file: !3715, line: 63, baseType: !3766, size: 384)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3770, file: !3715, line: 64, baseType: !3766, size: 384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3720, file: !3715, line: 307, baseType: !3775, size: 1088)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3715, line: 79, size: 1088, elements: !3776)
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3823}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3775, file: !3715, line: 80, baseType: !124, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3775, file: !3715, line: 81, baseType: !124, size: 32, offset: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3775, file: !3715, line: 82, baseType: !124, size: 32, offset: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3775, file: !3715, line: 83, baseType: !124, size: 32, offset: 96)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3775, file: !3715, line: 84, baseType: !124, size: 32, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3775, file: !3715, line: 85, baseType: !124, size: 32, offset: 160)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3775, file: !3715, line: 86, baseType: !124, size: 32, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3775, file: !3715, line: 88, baseType: !3733, size: 640, offset: 224)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3775, file: !3715, line: 89, baseType: !289, size: 8, offset: 864)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3775, file: !3715, line: 90, baseType: !289, size: 8, offset: 872)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3775, file: !3715, line: 91, baseType: !289, size: 8, offset: 880)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3775, file: !3715, line: 92, baseType: !289, size: 8, offset: 888)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3775, file: !3715, line: 93, baseType: !289, size: 8, offset: 896)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3775, file: !3715, line: 94, baseType: !289, size: 8, offset: 904)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3775, file: !3715, line: 95, baseType: !3792, size: 64, offset: 960)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3794, line: 11, size: 128, elements: !3795)
!3794 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3795 = !{!3796, !3797}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3793, file: !3794, line: 12, baseType: !109, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3793, file: !3794, line: 13, baseType: !3798, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3800, line: 56, size: 1344, elements: !3801)
!3800 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3801 = !{!3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3799, file: !3800, line: 61, baseType: !122, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3799, file: !3800, line: 62, baseType: !122, size: 64, offset: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3799, file: !3800, line: 63, baseType: !122, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3799, file: !3800, line: 64, baseType: !122, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3799, file: !3800, line: 65, baseType: !122, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3799, file: !3800, line: 66, baseType: !122, size: 64, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3799, file: !3800, line: 68, baseType: !122, size: 64, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3799, file: !3800, line: 69, baseType: !122, size: 64, offset: 448)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3799, file: !3800, line: 70, baseType: !122, size: 64, offset: 512)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3799, file: !3800, line: 71, baseType: !122, size: 64, offset: 576)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3799, file: !3800, line: 72, baseType: !122, size: 64, offset: 640)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3799, file: !3800, line: 73, baseType: !122, size: 64, offset: 704)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3799, file: !3800, line: 74, baseType: !122, size: 64, offset: 768)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3799, file: !3800, line: 75, baseType: !122, size: 64, offset: 832)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3799, file: !3800, line: 76, baseType: !122, size: 64, offset: 896)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3799, file: !3800, line: 81, baseType: !122, size: 64, offset: 960)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3799, file: !3800, line: 83, baseType: !122, size: 64, offset: 1024)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3799, file: !3800, line: 84, baseType: !122, size: 64, offset: 1088)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3799, file: !3800, line: 85, baseType: !122, size: 64, offset: 1152)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3799, file: !3800, line: 86, baseType: !122, size: 64, offset: 1216)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3799, file: !3800, line: 87, baseType: !122, size: 64, offset: 1280)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3775, file: !3715, line: 96, baseType: !124, size: 32, offset: 1024)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3720, file: !3715, line: 308, baseType: !3825, size: 4608, align: 512)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3715, line: 289, size: 4608, align: 512, elements: !3826)
!3826 = !{!3827, !3828, !3835}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3825, file: !3715, line: 290, baseType: !3738, size: 4096, align: 128)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3825, file: !3715, line: 291, baseType: !3829, size: 512, offset: 4096)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3715, line: 268, size: 512, elements: !3830)
!3830 = !{!3831, !3832, !3833}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3829, file: !3715, line: 269, baseType: !169, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3829, file: !3715, line: 270, baseType: !169, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3829, file: !3715, line: 271, baseType: !3834, size: 384, offset: 128)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 384, elements: !2204)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3825, file: !3715, line: 292, baseType: !3836, offset: 4608)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, elements: !2300)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3720, file: !3715, line: 309, baseType: !3838, size: 32768)
!3838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 32768, elements: !3839)
!3839 = !{!3840}
!3840 = !DISubrange(count: 4096)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldsem_waiter", file: !1, line: 49, size: 192, elements: !3846)
!3846 = !{!3847, !3848}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3845, file: !1, line: 50, baseType: !102, size: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3845, file: !1, line: 51, baseType: !113, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3852)
!3852 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !98)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !169)
!3856 = !{!"rsp"}
!3857 = !{i32 7, !"Dwarf Version", i32 4}
!3858 = !{i32 2, !"Debug Info Version", i32 3}
!3859 = !{i32 1, !"wchar_size", i32 2}
!3860 = !{i32 1, !"Code Model", i32 2}
!3861 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3862 = distinct !DISubprogram(name: "__init_ldsem", scope: !1, file: !1, line: 57, type: !3863, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{null, !3865, !457, !3866}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!3867 = !DILocalVariable(name: "v", arg: 1, scope: !3868, file: !3869, line: 84, type: !3872)
!3868 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3869, file: !3869, line: 84, type: !3870, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3869 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3870 = !DISubroutineType(types: !3871)
!3871 = !{null, !3872, !577}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3874)
!3874 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3875 = !DILocation(line: 84, column: 74, scope: !3868, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 855, column: 2, scope: !3877, inlinedAt: !3882)
!3877 = distinct !DISubprogram(name: "atomic64_set", scope: !3878, file: !3878, line: 853, type: !3879, scopeLine: 854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3878 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3879 = !DISubroutineType(types: !3880)
!3880 = !{null, !3881, !94}
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!3882 = distinct !DILocation(line: 41, column: 2, scope: !3883, inlinedAt: !3886)
!3883 = distinct !DISubprogram(name: "atomic_long_set", scope: !734, file: !734, line: 39, type: !3884, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{null, !1414, !109}
!3886 = distinct !DILocation(line: 67, column: 2, scope: !3862)
!3887 = !DILocalVariable(name: "size", arg: 2, scope: !3868, file: !3869, line: 84, type: !577)
!3888 = !DILocation(line: 84, column: 84, scope: !3868, inlinedAt: !3876)
!3889 = !DILocalVariable(name: "v", arg: 1, scope: !3877, file: !3878, line: 853, type: !3881)
!3890 = !DILocation(line: 853, column: 26, scope: !3877, inlinedAt: !3882)
!3891 = !DILocalVariable(name: "i", arg: 2, scope: !3877, file: !3878, line: 853, type: !94)
!3892 = !DILocation(line: 853, column: 33, scope: !3877, inlinedAt: !3882)
!3893 = !DILocalVariable(name: "v", arg: 1, scope: !3883, file: !734, line: 39, type: !1414)
!3894 = !DILocation(line: 39, column: 32, scope: !3883, inlinedAt: !3886)
!3895 = !DILocalVariable(name: "i", arg: 2, scope: !3883, file: !734, line: 39, type: !109)
!3896 = !DILocation(line: 39, column: 40, scope: !3883, inlinedAt: !3886)
!3897 = !DILocalVariable(name: "sem", arg: 1, scope: !3862, file: !1, line: 57, type: !3865)
!3898 = !DILocation(line: 57, column: 40, scope: !3862)
!3899 = !DILocalVariable(name: "name", arg: 2, scope: !3862, file: !1, line: 57, type: !457)
!3900 = !DILocation(line: 57, column: 57, scope: !3862)
!3901 = !DILocalVariable(name: "key", arg: 3, scope: !3862, file: !1, line: 58, type: !3866)
!3902 = !DILocation(line: 58, column: 28, scope: !3862)
!3903 = !DILocation(line: 67, column: 19, scope: !3862)
!3904 = !DILocation(line: 67, column: 24, scope: !3862)
!3905 = !DILocation(line: 41, column: 15, scope: !3883, inlinedAt: !3886)
!3906 = !DILocation(line: 41, column: 18, scope: !3883, inlinedAt: !3886)
!3907 = !DILocation(line: 855, column: 26, scope: !3877, inlinedAt: !3882)
!3908 = !DILocation(line: 86, column: 20, scope: !3868, inlinedAt: !3876)
!3909 = !DILocation(line: 86, column: 23, scope: !3868, inlinedAt: !3876)
!3910 = !DILocation(line: 86, column: 2, scope: !3868, inlinedAt: !3876)
!3911 = !DILocation(line: 87, column: 2, scope: !3868, inlinedAt: !3876)
!3912 = !DILocation(line: 856, column: 20, scope: !3877, inlinedAt: !3882)
!3913 = !DILocation(line: 856, column: 23, scope: !3877, inlinedAt: !3882)
!3914 = !DILocation(line: 856, column: 2, scope: !3877, inlinedAt: !3882)
!3915 = !DILocation(line: 68, column: 2, scope: !3862)
!3916 = !DILocation(line: 68, column: 7, scope: !3862)
!3917 = !DILocation(line: 68, column: 20, scope: !3862)
!3918 = !DILocation(line: 69, column: 2, scope: !3862)
!3919 = !DILocation(line: 69, column: 2, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3862, file: !1, line: 69, column: 2)
!3921 = !DILocation(line: 70, column: 18, scope: !3862)
!3922 = !DILocation(line: 70, column: 23, scope: !3862)
!3923 = !DILocation(line: 70, column: 2, scope: !3862)
!3924 = !DILocation(line: 71, column: 18, scope: !3862)
!3925 = !DILocation(line: 71, column: 23, scope: !3862)
!3926 = !DILocation(line: 71, column: 2, scope: !3862)
!3927 = !DILocation(line: 72, column: 1, scope: !3862)
!3928 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3929, file: !3929, line: 33, type: !3930, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3929 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3930 = !DISubroutineType(types: !3931)
!3931 = !{null, !101}
!3932 = !DILocalVariable(name: "list", arg: 1, scope: !3928, file: !3929, line: 33, type: !101)
!3933 = !DILocation(line: 33, column: 53, scope: !3928)
!3934 = !DILocation(line: 35, column: 2, scope: !3928)
!3935 = !DILocation(line: 35, column: 2, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3928, file: !3929, line: 35, column: 2)
!3937 = !DILocation(line: 35, column: 2, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3936, file: !3929, line: 35, column: 2)
!3939 = !DILocation(line: 35, column: 2, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3936, file: !3929, line: 35, column: 2)
!3941 = !DILocation(line: 36, column: 15, scope: !3928)
!3942 = !DILocation(line: 36, column: 2, scope: !3928)
!3943 = !DILocation(line: 36, column: 8, scope: !3928)
!3944 = !DILocation(line: 36, column: 13, scope: !3928)
!3945 = !DILocation(line: 37, column: 1, scope: !3928)
!3946 = distinct !DISubprogram(name: "ldsem_down_read", scope: !1, file: !1, line: 337, type: !3947, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!138, !3865, !109}
!3949 = !DILocalVariable(name: "sem", arg: 1, scope: !3946, file: !1, line: 337, type: !3865)
!3950 = !DILocation(line: 337, column: 50, scope: !3946)
!3951 = !DILocalVariable(name: "timeout", arg: 2, scope: !3946, file: !1, line: 337, type: !109)
!3952 = !DILocation(line: 337, column: 60, scope: !3946)
!3953 = !DILocation(line: 339, column: 2, scope: !3946)
!3954 = !DILocation(line: 339, column: 2, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3946, file: !1, line: 339, column: 2)
!3956 = !DILocation(line: 339, column: 2, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3955, file: !1, line: 339, column: 2)
!3958 = !DILocation(line: 340, column: 34, scope: !3946)
!3959 = !DILocation(line: 340, column: 42, scope: !3946)
!3960 = !DILocation(line: 340, column: 9, scope: !3946)
!3961 = !DILocation(line: 340, column: 2, scope: !3946)
!3962 = distinct !DISubprogram(name: "__ldsem_down_read_nested", scope: !1, file: !1, line: 295, type: !3963, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!138, !3865, !138, !109}
!3965 = !DILocalVariable(name: "i", arg: 1, scope: !3966, file: !3967, line: 158, type: !94)
!3966 = distinct !DISubprogram(name: "arch_atomic64_add_return", scope: !3967, file: !3967, line: 158, type: !3968, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3967 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/lizy2001/genbc/linux")
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!94, !94, !3881}
!3970 = !DILocation(line: 158, column: 57, scope: !3966, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 883, column: 9, scope: !3972, inlinedAt: !3973)
!3972 = distinct !DISubprogram(name: "atomic64_add_return", scope: !3878, file: !3878, line: 880, type: !3968, scopeLine: 881, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3973 = distinct !DILocation(line: 59, column: 9, scope: !3974, inlinedAt: !3977)
!3974 = distinct !DISubprogram(name: "atomic_long_add_return", scope: !734, file: !734, line: 57, type: !3975, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!109, !109, !1414}
!3977 = distinct !DILocation(line: 302, column: 10, scope: !3962)
!3978 = !DILocalVariable(name: "v", arg: 2, scope: !3966, file: !3967, line: 158, type: !3881)
!3979 = !DILocation(line: 158, column: 72, scope: !3966, inlinedAt: !3971)
!3980 = !DILocalVariable(name: "__ret", scope: !3981, file: !3967, line: 160, type: !94)
!3981 = distinct !DILexicalBlock(scope: !3966, file: !3967, line: 160, column: 13)
!3982 = !DILocation(line: 160, column: 13, scope: !3981, inlinedAt: !3971)
!3983 = !DILocalVariable(name: "v", arg: 1, scope: !3984, file: !3869, line: 99, type: !3872)
!3984 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !3869, file: !3869, line: 99, type: !3870, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!3985 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 882, column: 2, scope: !3972, inlinedAt: !3973)
!3987 = !DILocalVariable(name: "size", arg: 2, scope: !3984, file: !3869, line: 99, type: !577)
!3988 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !3986)
!3989 = !DILocalVariable(name: "i", arg: 1, scope: !3972, file: !3878, line: 880, type: !94)
!3990 = !DILocation(line: 880, column: 25, scope: !3972, inlinedAt: !3973)
!3991 = !DILocalVariable(name: "v", arg: 2, scope: !3972, file: !3878, line: 880, type: !3881)
!3992 = !DILocation(line: 880, column: 40, scope: !3972, inlinedAt: !3973)
!3993 = !DILocalVariable(name: "i", arg: 1, scope: !3974, file: !734, line: 57, type: !109)
!3994 = !DILocation(line: 57, column: 29, scope: !3974, inlinedAt: !3977)
!3995 = !DILocalVariable(name: "v", arg: 2, scope: !3974, file: !734, line: 57, type: !1414)
!3996 = !DILocation(line: 57, column: 47, scope: !3974, inlinedAt: !3977)
!3997 = !DILocalVariable(name: "sem", arg: 1, scope: !3962, file: !1, line: 295, type: !3865)
!3998 = !DILocation(line: 295, column: 58, scope: !3962)
!3999 = !DILocalVariable(name: "subclass", arg: 2, scope: !3962, file: !1, line: 296, type: !138)
!4000 = !DILocation(line: 296, column: 13, scope: !3962)
!4001 = !DILocalVariable(name: "timeout", arg: 3, scope: !3962, file: !1, line: 296, type: !109)
!4002 = !DILocation(line: 296, column: 28, scope: !3962)
!4003 = !DILocalVariable(name: "count", scope: !3962, file: !1, line: 298, type: !109)
!4004 = !DILocation(line: 298, column: 7, scope: !3962)
!4005 = !DILocation(line: 300, column: 2, scope: !3962)
!4006 = !DILocation(line: 300, column: 2, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !3962, file: !1, line: 300, column: 2)
!4008 = !DILocation(line: 302, column: 51, scope: !3962)
!4009 = !DILocation(line: 302, column: 56, scope: !3962)
!4010 = !DILocation(line: 59, column: 29, scope: !3974, inlinedAt: !3977)
!4011 = !DILocation(line: 59, column: 32, scope: !3974, inlinedAt: !3977)
!4012 = !DILocation(line: 882, column: 31, scope: !3972, inlinedAt: !3973)
!4013 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !3986)
!4014 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !3986)
!4015 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !3986)
!4016 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !3986)
!4017 = !DILocation(line: 883, column: 34, scope: !3972, inlinedAt: !3973)
!4018 = !DILocation(line: 883, column: 37, scope: !3972, inlinedAt: !3973)
!4019 = !DILocation(line: 160, column: 9, scope: !3966, inlinedAt: !3971)
!4020 = !{i32 -2146518057}
!4021 = !DILocation(line: 160, column: 11, scope: !3966, inlinedAt: !3971)
!4022 = !DILocation(line: 302, column: 8, scope: !3962)
!4023 = !DILocation(line: 303, column: 6, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !3962, file: !1, line: 303, column: 6)
!4025 = !DILocation(line: 303, column: 12, scope: !4024)
!4026 = !DILocation(line: 303, column: 6, scope: !3962)
!4027 = !DILocation(line: 304, column: 3, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4024, file: !1, line: 303, column: 18)
!4029 = !DILocation(line: 304, column: 3, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4028, file: !1, line: 304, column: 3)
!4031 = !DILocation(line: 305, column: 25, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4028, file: !1, line: 305, column: 7)
!4033 = !DILocation(line: 305, column: 30, scope: !4032)
!4034 = !DILocation(line: 305, column: 37, scope: !4032)
!4035 = !DILocation(line: 305, column: 8, scope: !4032)
!4036 = !DILocation(line: 305, column: 7, scope: !4028)
!4037 = !DILocation(line: 306, column: 4, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4032, file: !1, line: 305, column: 47)
!4039 = !DILocation(line: 306, column: 4, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4038, file: !1, line: 306, column: 4)
!4041 = !DILocation(line: 307, column: 4, scope: !4038)
!4042 = !DILocation(line: 309, column: 2, scope: !4028)
!4043 = !DILocation(line: 310, column: 2, scope: !3962)
!4044 = !DILocation(line: 310, column: 2, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !3962, file: !1, line: 310, column: 2)
!4046 = !DILocation(line: 311, column: 2, scope: !3962)
!4047 = !DILocation(line: 312, column: 1, scope: !3962)
!4048 = distinct !DISubprogram(name: "ldsem_down_read_trylock", scope: !1, file: !1, line: 346, type: !4049, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!138, !3865}
!4051 = !DILocalVariable(name: "v", arg: 1, scope: !4052, file: !3967, line: 188, type: !3881)
!4052 = distinct !DISubprogram(name: "arch_atomic64_try_cmpxchg", scope: !3967, file: !3967, line: 188, type: !4053, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!488, !3881, !3853, !94}
!4055 = !DILocation(line: 188, column: 67, scope: !4052, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 1506, column: 9, scope: !4057, inlinedAt: !4058)
!4057 = distinct !DISubprogram(name: "atomic64_try_cmpxchg", scope: !3878, file: !3878, line: 1502, type: !4053, scopeLine: 1503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4058 = distinct !DILocation(line: 437, column: 9, scope: !4059, inlinedAt: !4063)
!4059 = distinct !DISubprogram(name: "atomic_long_try_cmpxchg", scope: !734, file: !734, line: 435, type: !4060, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!488, !1414, !4062, !109}
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!4063 = distinct !DILocation(line: 351, column: 7, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !1, line: 351, column: 7)
!4065 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 350, column: 21)
!4066 = !DILocalVariable(name: "old", arg: 2, scope: !4052, file: !3967, line: 188, type: !3853)
!4067 = !DILocation(line: 188, column: 75, scope: !4052, inlinedAt: !4056)
!4068 = !DILocalVariable(name: "new", arg: 3, scope: !4052, file: !3967, line: 188, type: !94)
!4069 = !DILocation(line: 188, column: 84, scope: !4052, inlinedAt: !4056)
!4070 = !DILocalVariable(name: "success", scope: !4071, file: !3967, line: 190, type: !488)
!4071 = distinct !DILexicalBlock(scope: !4052, file: !3967, line: 190, column: 9)
!4072 = !DILocation(line: 190, column: 9, scope: !4071, inlinedAt: !4056)
!4073 = !DILocalVariable(name: "_old", scope: !4071, file: !3967, line: 190, type: !3853)
!4074 = !DILocalVariable(name: "__old", scope: !4071, file: !3967, line: 190, type: !94)
!4075 = !DILocalVariable(name: "__new", scope: !4071, file: !3967, line: 190, type: !94)
!4076 = !DILocalVariable(name: "__ptr", scope: !4071, file: !3967, line: 190, type: !3854)
!4077 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4078)
!4078 = distinct !DILocation(line: 1505, column: 2, scope: !4057, inlinedAt: !4058)
!4079 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4078)
!4080 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 1504, column: 2, scope: !4057, inlinedAt: !4058)
!4082 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4081)
!4083 = !DILocalVariable(name: "v", arg: 1, scope: !4057, file: !3878, line: 1502, type: !3881)
!4084 = !DILocation(line: 1502, column: 34, scope: !4057, inlinedAt: !4058)
!4085 = !DILocalVariable(name: "old", arg: 2, scope: !4057, file: !3878, line: 1502, type: !3853)
!4086 = !DILocation(line: 1502, column: 42, scope: !4057, inlinedAt: !4058)
!4087 = !DILocalVariable(name: "new", arg: 3, scope: !4057, file: !3878, line: 1502, type: !94)
!4088 = !DILocation(line: 1502, column: 51, scope: !4057, inlinedAt: !4058)
!4089 = !DILocalVariable(name: "v", arg: 1, scope: !4059, file: !734, line: 435, type: !1414)
!4090 = !DILocation(line: 435, column: 40, scope: !4059, inlinedAt: !4063)
!4091 = !DILocalVariable(name: "old", arg: 2, scope: !4059, file: !734, line: 435, type: !4062)
!4092 = !DILocation(line: 435, column: 49, scope: !4059, inlinedAt: !4063)
!4093 = !DILocalVariable(name: "new", arg: 3, scope: !4059, file: !734, line: 435, type: !109)
!4094 = !DILocation(line: 435, column: 59, scope: !4059, inlinedAt: !4063)
!4095 = !DILocalVariable(name: "v", arg: 1, scope: !4096, file: !3869, line: 69, type: !3872)
!4096 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3869, file: !3869, line: 69, type: !3870, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4097 = !DILocation(line: 69, column: 73, scope: !4096, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 837, column: 2, scope: !4099, inlinedAt: !4104)
!4099 = distinct !DISubprogram(name: "atomic64_read", scope: !3878, file: !3878, line: 835, type: !4100, scopeLine: 836, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{!94, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!4104 = distinct !DILocation(line: 29, column: 9, scope: !4105, inlinedAt: !4110)
!4105 = distinct !DISubprogram(name: "atomic_long_read", scope: !734, file: !734, line: 27, type: !4106, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!109, !4108}
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!4110 = distinct !DILocation(line: 348, column: 15, scope: !4048)
!4111 = !DILocalVariable(name: "size", arg: 2, scope: !4096, file: !3869, line: 69, type: !577)
!4112 = !DILocation(line: 69, column: 83, scope: !4096, inlinedAt: !4098)
!4113 = !DILocalVariable(name: "v", arg: 1, scope: !4099, file: !3878, line: 835, type: !4102)
!4114 = !DILocation(line: 835, column: 33, scope: !4099, inlinedAt: !4104)
!4115 = !DILocalVariable(name: "v", arg: 1, scope: !4105, file: !734, line: 27, type: !4108)
!4116 = !DILocation(line: 27, column: 39, scope: !4105, inlinedAt: !4110)
!4117 = !DILocalVariable(name: "sem", arg: 1, scope: !4048, file: !1, line: 346, type: !3865)
!4118 = !DILocation(line: 346, column: 50, scope: !4048)
!4119 = !DILocalVariable(name: "count", scope: !4048, file: !1, line: 348, type: !109)
!4120 = !DILocation(line: 348, column: 7, scope: !4048)
!4121 = !DILocation(line: 348, column: 33, scope: !4048)
!4122 = !DILocation(line: 348, column: 38, scope: !4048)
!4123 = !DILocation(line: 29, column: 23, scope: !4105, inlinedAt: !4110)
!4124 = !DILocation(line: 837, column: 25, scope: !4099, inlinedAt: !4104)
!4125 = !DILocation(line: 71, column: 19, scope: !4096, inlinedAt: !4098)
!4126 = !DILocation(line: 71, column: 22, scope: !4096, inlinedAt: !4098)
!4127 = !DILocation(line: 71, column: 2, scope: !4096, inlinedAt: !4098)
!4128 = !DILocation(line: 72, column: 2, scope: !4096, inlinedAt: !4098)
!4129 = !DILocation(line: 838, column: 28, scope: !4099, inlinedAt: !4104)
!4130 = !DILocation(line: 838, column: 9, scope: !4099, inlinedAt: !4104)
!4131 = !DILocation(line: 350, column: 2, scope: !4048)
!4132 = !DILocation(line: 350, column: 9, scope: !4048)
!4133 = !DILocation(line: 350, column: 15, scope: !4048)
!4134 = !DILocation(line: 351, column: 32, scope: !4064)
!4135 = !DILocation(line: 351, column: 37, scope: !4064)
!4136 = !DILocation(line: 351, column: 52, scope: !4064)
!4137 = !DILocation(line: 351, column: 58, scope: !4064)
!4138 = !DILocation(line: 437, column: 30, scope: !4059, inlinedAt: !4063)
!4139 = !DILocation(line: 437, column: 40, scope: !4059, inlinedAt: !4063)
!4140 = !DILocation(line: 437, column: 45, scope: !4059, inlinedAt: !4063)
!4141 = !DILocation(line: 1504, column: 31, scope: !4057, inlinedAt: !4058)
!4142 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4081)
!4143 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4081)
!4144 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4081)
!4145 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4081)
!4146 = !DILocation(line: 1505, column: 31, scope: !4057, inlinedAt: !4058)
!4147 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4078)
!4148 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4078)
!4149 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4078)
!4150 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4078)
!4151 = !DILocation(line: 1506, column: 35, scope: !4057, inlinedAt: !4058)
!4152 = !DILocation(line: 1506, column: 38, scope: !4057, inlinedAt: !4058)
!4153 = !DILocation(line: 1506, column: 43, scope: !4057, inlinedAt: !4058)
!4154 = !{i32 -2146510986, i32 -2146510792}
!4155 = !DILocation(line: 190, column: 9, scope: !4156, inlinedAt: !4056)
!4156 = distinct !DILexicalBlock(scope: !4071, file: !3967, line: 190, column: 9)
!4157 = !DILocation(line: 190, column: 9, scope: !4052, inlinedAt: !4056)
!4158 = !DILocation(line: 351, column: 7, scope: !4065)
!4159 = !DILocation(line: 352, column: 4, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !4064, file: !1, line: 351, column: 78)
!4161 = !DILocation(line: 352, column: 4, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4160, file: !1, line: 352, column: 4)
!4163 = !DILocation(line: 353, column: 4, scope: !4160)
!4164 = !DILocation(line: 353, column: 4, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4160, file: !1, line: 353, column: 4)
!4166 = !DILocation(line: 354, column: 4, scope: !4160)
!4167 = distinct !{!4167, !4131, !4168}
!4168 = !DILocation(line: 356, column: 2, scope: !4048)
!4169 = !DILocation(line: 357, column: 2, scope: !4048)
!4170 = !DILocation(line: 358, column: 1, scope: !4048)
!4171 = distinct !DISubprogram(name: "ldsem_down_write", scope: !1, file: !1, line: 363, type: !3947, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4172 = !DILocalVariable(name: "sem", arg: 1, scope: !4171, file: !1, line: 363, type: !3865)
!4173 = !DILocation(line: 363, column: 51, scope: !4171)
!4174 = !DILocalVariable(name: "timeout", arg: 2, scope: !4171, file: !1, line: 363, type: !109)
!4175 = !DILocation(line: 363, column: 61, scope: !4171)
!4176 = !DILocation(line: 365, column: 2, scope: !4171)
!4177 = !DILocation(line: 365, column: 2, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4171, file: !1, line: 365, column: 2)
!4179 = !DILocation(line: 365, column: 2, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4178, file: !1, line: 365, column: 2)
!4181 = !DILocation(line: 366, column: 35, scope: !4171)
!4182 = !DILocation(line: 366, column: 43, scope: !4171)
!4183 = !DILocation(line: 366, column: 9, scope: !4171)
!4184 = !DILocation(line: 366, column: 2, scope: !4171)
!4185 = distinct !DISubprogram(name: "__ldsem_down_write_nested", scope: !1, file: !1, line: 314, type: !3963, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4186 = !DILocation(line: 158, column: 57, scope: !3966, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 883, column: 9, scope: !3972, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 59, column: 9, scope: !3974, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 321, column: 10, scope: !4185)
!4190 = !DILocation(line: 158, column: 72, scope: !3966, inlinedAt: !4187)
!4191 = !DILocation(line: 160, column: 13, scope: !3981, inlinedAt: !4187)
!4192 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 882, column: 2, scope: !3972, inlinedAt: !4188)
!4194 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4193)
!4195 = !DILocation(line: 880, column: 25, scope: !3972, inlinedAt: !4188)
!4196 = !DILocation(line: 880, column: 40, scope: !3972, inlinedAt: !4188)
!4197 = !DILocation(line: 57, column: 29, scope: !3974, inlinedAt: !4189)
!4198 = !DILocation(line: 57, column: 47, scope: !3974, inlinedAt: !4189)
!4199 = !DILocalVariable(name: "sem", arg: 1, scope: !4185, file: !1, line: 314, type: !3865)
!4200 = !DILocation(line: 314, column: 59, scope: !4185)
!4201 = !DILocalVariable(name: "subclass", arg: 2, scope: !4185, file: !1, line: 315, type: !138)
!4202 = !DILocation(line: 315, column: 14, scope: !4185)
!4203 = !DILocalVariable(name: "timeout", arg: 3, scope: !4185, file: !1, line: 315, type: !109)
!4204 = !DILocation(line: 315, column: 29, scope: !4185)
!4205 = !DILocalVariable(name: "count", scope: !4185, file: !1, line: 317, type: !109)
!4206 = !DILocation(line: 317, column: 7, scope: !4185)
!4207 = !DILocation(line: 319, column: 2, scope: !4185)
!4208 = !DILocation(line: 319, column: 2, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4185, file: !1, line: 319, column: 2)
!4210 = !DILocation(line: 321, column: 52, scope: !4185)
!4211 = !DILocation(line: 321, column: 57, scope: !4185)
!4212 = !DILocation(line: 59, column: 29, scope: !3974, inlinedAt: !4189)
!4213 = !DILocation(line: 59, column: 32, scope: !3974, inlinedAt: !4189)
!4214 = !DILocation(line: 882, column: 31, scope: !3972, inlinedAt: !4188)
!4215 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4193)
!4216 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4193)
!4217 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4193)
!4218 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4193)
!4219 = !DILocation(line: 883, column: 34, scope: !3972, inlinedAt: !4188)
!4220 = !DILocation(line: 883, column: 37, scope: !3972, inlinedAt: !4188)
!4221 = !DILocation(line: 160, column: 9, scope: !3966, inlinedAt: !4187)
!4222 = !DILocation(line: 160, column: 11, scope: !3966, inlinedAt: !4187)
!4223 = !DILocation(line: 321, column: 8, scope: !4185)
!4224 = !DILocation(line: 322, column: 7, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4185, file: !1, line: 322, column: 6)
!4226 = !DILocation(line: 322, column: 13, scope: !4225)
!4227 = !DILocation(line: 322, column: 34, scope: !4225)
!4228 = !DILocation(line: 322, column: 6, scope: !4185)
!4229 = !DILocation(line: 323, column: 3, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4225, file: !1, line: 322, column: 56)
!4231 = !DILocation(line: 323, column: 3, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4230, file: !1, line: 323, column: 3)
!4233 = !DILocation(line: 324, column: 26, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4230, file: !1, line: 324, column: 7)
!4235 = !DILocation(line: 324, column: 31, scope: !4234)
!4236 = !DILocation(line: 324, column: 38, scope: !4234)
!4237 = !DILocation(line: 324, column: 8, scope: !4234)
!4238 = !DILocation(line: 324, column: 7, scope: !4230)
!4239 = !DILocation(line: 325, column: 4, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4234, file: !1, line: 324, column: 48)
!4241 = !DILocation(line: 325, column: 4, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4240, file: !1, line: 325, column: 4)
!4243 = !DILocation(line: 326, column: 4, scope: !4240)
!4244 = !DILocation(line: 328, column: 2, scope: !4230)
!4245 = !DILocation(line: 329, column: 2, scope: !4185)
!4246 = !DILocation(line: 329, column: 2, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4185, file: !1, line: 329, column: 2)
!4248 = !DILocation(line: 330, column: 2, scope: !4185)
!4249 = !DILocation(line: 331, column: 1, scope: !4185)
!4250 = distinct !DISubprogram(name: "ldsem_down_write_trylock", scope: !1, file: !1, line: 372, type: !4049, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4251 = !DILocation(line: 188, column: 67, scope: !4052, inlinedAt: !4252)
!4252 = distinct !DILocation(line: 1506, column: 9, scope: !4057, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 437, column: 9, scope: !4059, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 377, column: 7, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !1, line: 377, column: 7)
!4256 = distinct !DILexicalBlock(scope: !4250, file: !1, line: 376, column: 43)
!4257 = !DILocation(line: 188, column: 75, scope: !4052, inlinedAt: !4252)
!4258 = !DILocation(line: 188, column: 84, scope: !4052, inlinedAt: !4252)
!4259 = !DILocation(line: 190, column: 9, scope: !4071, inlinedAt: !4252)
!4260 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 1505, column: 2, scope: !4057, inlinedAt: !4253)
!4262 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4261)
!4263 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 1504, column: 2, scope: !4057, inlinedAt: !4253)
!4265 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4264)
!4266 = !DILocation(line: 1502, column: 34, scope: !4057, inlinedAt: !4253)
!4267 = !DILocation(line: 1502, column: 42, scope: !4057, inlinedAt: !4253)
!4268 = !DILocation(line: 1502, column: 51, scope: !4057, inlinedAt: !4253)
!4269 = !DILocation(line: 435, column: 40, scope: !4059, inlinedAt: !4254)
!4270 = !DILocation(line: 435, column: 49, scope: !4059, inlinedAt: !4254)
!4271 = !DILocation(line: 435, column: 59, scope: !4059, inlinedAt: !4254)
!4272 = !DILocation(line: 69, column: 73, scope: !4096, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 837, column: 2, scope: !4099, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 29, column: 9, scope: !4105, inlinedAt: !4275)
!4275 = distinct !DILocation(line: 374, column: 15, scope: !4250)
!4276 = !DILocation(line: 69, column: 83, scope: !4096, inlinedAt: !4273)
!4277 = !DILocation(line: 835, column: 33, scope: !4099, inlinedAt: !4274)
!4278 = !DILocation(line: 27, column: 39, scope: !4105, inlinedAt: !4275)
!4279 = !DILocalVariable(name: "sem", arg: 1, scope: !4250, file: !1, line: 372, type: !3865)
!4280 = !DILocation(line: 372, column: 51, scope: !4250)
!4281 = !DILocalVariable(name: "count", scope: !4250, file: !1, line: 374, type: !109)
!4282 = !DILocation(line: 374, column: 7, scope: !4250)
!4283 = !DILocation(line: 374, column: 33, scope: !4250)
!4284 = !DILocation(line: 374, column: 38, scope: !4250)
!4285 = !DILocation(line: 29, column: 23, scope: !4105, inlinedAt: !4275)
!4286 = !DILocation(line: 837, column: 25, scope: !4099, inlinedAt: !4274)
!4287 = !DILocation(line: 71, column: 19, scope: !4096, inlinedAt: !4273)
!4288 = !DILocation(line: 71, column: 22, scope: !4096, inlinedAt: !4273)
!4289 = !DILocation(line: 71, column: 2, scope: !4096, inlinedAt: !4273)
!4290 = !DILocation(line: 72, column: 2, scope: !4096, inlinedAt: !4273)
!4291 = !DILocation(line: 838, column: 28, scope: !4099, inlinedAt: !4274)
!4292 = !DILocation(line: 838, column: 9, scope: !4099, inlinedAt: !4274)
!4293 = !DILocation(line: 376, column: 2, scope: !4250)
!4294 = !DILocation(line: 376, column: 10, scope: !4250)
!4295 = !DILocation(line: 376, column: 16, scope: !4250)
!4296 = !DILocation(line: 376, column: 37, scope: !4250)
!4297 = !DILocation(line: 377, column: 32, scope: !4255)
!4298 = !DILocation(line: 377, column: 37, scope: !4255)
!4299 = !DILocation(line: 377, column: 52, scope: !4255)
!4300 = !DILocation(line: 377, column: 58, scope: !4255)
!4301 = !DILocation(line: 437, column: 30, scope: !4059, inlinedAt: !4254)
!4302 = !DILocation(line: 437, column: 40, scope: !4059, inlinedAt: !4254)
!4303 = !DILocation(line: 437, column: 45, scope: !4059, inlinedAt: !4254)
!4304 = !DILocation(line: 1504, column: 31, scope: !4057, inlinedAt: !4253)
!4305 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4264)
!4306 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4264)
!4307 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4264)
!4308 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4264)
!4309 = !DILocation(line: 1505, column: 31, scope: !4057, inlinedAt: !4253)
!4310 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4261)
!4311 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4261)
!4312 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4261)
!4313 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4261)
!4314 = !DILocation(line: 1506, column: 35, scope: !4057, inlinedAt: !4253)
!4315 = !DILocation(line: 1506, column: 38, scope: !4057, inlinedAt: !4253)
!4316 = !DILocation(line: 1506, column: 43, scope: !4057, inlinedAt: !4253)
!4317 = !DILocation(line: 190, column: 9, scope: !4156, inlinedAt: !4252)
!4318 = !DILocation(line: 190, column: 9, scope: !4052, inlinedAt: !4252)
!4319 = !DILocation(line: 377, column: 7, scope: !4256)
!4320 = !DILocation(line: 378, column: 4, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4255, file: !1, line: 377, column: 79)
!4322 = !DILocation(line: 378, column: 4, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4321, file: !1, line: 378, column: 4)
!4324 = !DILocation(line: 379, column: 4, scope: !4321)
!4325 = !DILocation(line: 379, column: 4, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4321, file: !1, line: 379, column: 4)
!4327 = !DILocation(line: 380, column: 4, scope: !4321)
!4328 = distinct !{!4328, !4293, !4329}
!4329 = !DILocation(line: 382, column: 2, scope: !4250)
!4330 = !DILocation(line: 383, column: 2, scope: !4250)
!4331 = !DILocation(line: 384, column: 1, scope: !4250)
!4332 = distinct !DISubprogram(name: "ldsem_up_read", scope: !1, file: !1, line: 389, type: !4333, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !3865}
!4335 = !DILocation(line: 158, column: 57, scope: !3966, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 883, column: 9, scope: !3972, inlinedAt: !4337)
!4337 = distinct !DILocation(line: 59, column: 9, scope: !3974, inlinedAt: !4338)
!4338 = distinct !DILocation(line: 395, column: 10, scope: !4332)
!4339 = !DILocation(line: 158, column: 72, scope: !3966, inlinedAt: !4336)
!4340 = !DILocation(line: 160, column: 13, scope: !3981, inlinedAt: !4336)
!4341 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4342)
!4342 = distinct !DILocation(line: 882, column: 2, scope: !3972, inlinedAt: !4337)
!4343 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4342)
!4344 = !DILocation(line: 880, column: 25, scope: !3972, inlinedAt: !4337)
!4345 = !DILocation(line: 880, column: 40, scope: !3972, inlinedAt: !4337)
!4346 = !DILocation(line: 57, column: 29, scope: !3974, inlinedAt: !4338)
!4347 = !DILocation(line: 57, column: 47, scope: !3974, inlinedAt: !4338)
!4348 = !DILocalVariable(name: "sem", arg: 1, scope: !4332, file: !1, line: 389, type: !3865)
!4349 = !DILocation(line: 389, column: 41, scope: !4332)
!4350 = !DILocalVariable(name: "count", scope: !4332, file: !1, line: 391, type: !109)
!4351 = !DILocation(line: 391, column: 7, scope: !4332)
!4352 = !DILocation(line: 393, column: 2, scope: !4332)
!4353 = !DILocation(line: 393, column: 2, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4332, file: !1, line: 393, column: 2)
!4355 = !DILocation(line: 395, column: 52, scope: !4332)
!4356 = !DILocation(line: 395, column: 57, scope: !4332)
!4357 = !DILocation(line: 59, column: 29, scope: !3974, inlinedAt: !4338)
!4358 = !DILocation(line: 59, column: 32, scope: !3974, inlinedAt: !4338)
!4359 = !DILocation(line: 882, column: 31, scope: !3972, inlinedAt: !4337)
!4360 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4342)
!4361 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4342)
!4362 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4342)
!4363 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4342)
!4364 = !DILocation(line: 883, column: 34, scope: !3972, inlinedAt: !4337)
!4365 = !DILocation(line: 883, column: 37, scope: !3972, inlinedAt: !4337)
!4366 = !DILocation(line: 160, column: 9, scope: !3966, inlinedAt: !4336)
!4367 = !DILocation(line: 160, column: 11, scope: !3966, inlinedAt: !4336)
!4368 = !DILocation(line: 395, column: 8, scope: !4332)
!4369 = !DILocation(line: 396, column: 6, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4332, file: !1, line: 396, column: 6)
!4371 = !DILocation(line: 396, column: 12, scope: !4370)
!4372 = !DILocation(line: 396, column: 16, scope: !4370)
!4373 = !DILocation(line: 396, column: 20, scope: !4370)
!4374 = !DILocation(line: 396, column: 26, scope: !4370)
!4375 = !DILocation(line: 396, column: 47, scope: !4370)
!4376 = !DILocation(line: 396, column: 6, scope: !4332)
!4377 = !DILocation(line: 397, column: 14, scope: !4370)
!4378 = !DILocation(line: 397, column: 3, scope: !4370)
!4379 = !DILocation(line: 398, column: 1, scope: !4332)
!4380 = distinct !DISubprogram(name: "ldsem_wake", scope: !1, file: !1, line: 143, type: !4333, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4381 = !DILocalVariable(name: "sem", arg: 1, scope: !4380, file: !1, line: 143, type: !3865)
!4382 = !DILocation(line: 143, column: 45, scope: !4380)
!4383 = !DILocalVariable(name: "flags", scope: !4380, file: !1, line: 145, type: !122)
!4384 = !DILocation(line: 145, column: 16, scope: !4380)
!4385 = !DILocation(line: 147, column: 2, scope: !4380)
!4386 = !DILocalVariable(name: "__dummy", scope: !4387, file: !1, line: 147, type: !122)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !1, line: 147, column: 2)
!4388 = distinct !DILexicalBlock(scope: !4380, file: !1, line: 147, column: 2)
!4389 = !DILocation(line: 147, column: 2, scope: !4387)
!4390 = !DILocalVariable(name: "__dummy2", scope: !4387, file: !1, line: 147, type: !122)
!4391 = !DILocation(line: 147, column: 2, scope: !4388)
!4392 = !DILocation(line: 147, column: 2, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4388, file: !1, line: 147, column: 2)
!4394 = !DILocation(line: 147, column: 2, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4393, file: !1, line: 147, column: 2)
!4396 = !DILocalVariable(name: "__dummy", scope: !4397, file: !1, line: 147, type: !122)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !1, line: 147, column: 2)
!4398 = distinct !DILexicalBlock(scope: !4395, file: !1, line: 147, column: 2)
!4399 = !DILocation(line: 147, column: 2, scope: !4397)
!4400 = !DILocalVariable(name: "__dummy2", scope: !4397, file: !1, line: 147, type: !122)
!4401 = !DILocation(line: 147, column: 2, scope: !4398)
!4402 = !DILocation(line: 147, column: 2, scope: !4403)
!4403 = distinct !DILexicalBlock(scope: !4393, file: !1, line: 147, column: 2)
!4404 = !{i32 -2143004000}
!4405 = !DILocation(line: 147, column: 2, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4403, file: !1, line: 147, column: 2)
!4407 = !DILocation(line: 148, column: 15, scope: !4380)
!4408 = !DILocation(line: 148, column: 2, scope: !4380)
!4409 = !DILocation(line: 149, column: 2, scope: !4380)
!4410 = !DILocalVariable(name: "__dummy", scope: !4411, file: !1, line: 149, type: !122)
!4411 = distinct !DILexicalBlock(scope: !4412, file: !1, line: 149, column: 2)
!4412 = distinct !DILexicalBlock(scope: !4380, file: !1, line: 149, column: 2)
!4413 = !DILocation(line: 149, column: 2, scope: !4411)
!4414 = !DILocalVariable(name: "__dummy2", scope: !4411, file: !1, line: 149, type: !122)
!4415 = !DILocation(line: 149, column: 2, scope: !4412)
!4416 = !DILocation(line: 149, column: 2, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4412, file: !1, line: 149, column: 2)
!4418 = !DILocation(line: 149, column: 2, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4417, file: !1, line: 149, column: 2)
!4420 = !DILocalVariable(name: "__dummy", scope: !4421, file: !1, line: 149, type: !122)
!4421 = distinct !DILexicalBlock(scope: !4422, file: !1, line: 149, column: 2)
!4422 = distinct !DILexicalBlock(scope: !4419, file: !1, line: 149, column: 2)
!4423 = !DILocation(line: 149, column: 2, scope: !4421)
!4424 = !DILocalVariable(name: "__dummy2", scope: !4421, file: !1, line: 149, type: !122)
!4425 = !DILocation(line: 149, column: 2, scope: !4422)
!4426 = !DILocation(line: 149, column: 2, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4417, file: !1, line: 149, column: 2)
!4428 = !{i32 -2143003145}
!4429 = !DILocation(line: 149, column: 2, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4427, file: !1, line: 149, column: 2)
!4431 = !DILocation(line: 150, column: 1, scope: !4380)
!4432 = distinct !DISubprogram(name: "ldsem_up_write", scope: !1, file: !1, line: 403, type: !4333, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4433 = !DILocation(line: 158, column: 57, scope: !3966, inlinedAt: !4434)
!4434 = distinct !DILocation(line: 883, column: 9, scope: !3972, inlinedAt: !4435)
!4435 = distinct !DILocation(line: 59, column: 9, scope: !3974, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 409, column: 10, scope: !4432)
!4437 = !DILocation(line: 158, column: 72, scope: !3966, inlinedAt: !4434)
!4438 = !DILocation(line: 160, column: 13, scope: !3981, inlinedAt: !4434)
!4439 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4440)
!4440 = distinct !DILocation(line: 882, column: 2, scope: !3972, inlinedAt: !4435)
!4441 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4440)
!4442 = !DILocation(line: 880, column: 25, scope: !3972, inlinedAt: !4435)
!4443 = !DILocation(line: 880, column: 40, scope: !3972, inlinedAt: !4435)
!4444 = !DILocation(line: 57, column: 29, scope: !3974, inlinedAt: !4436)
!4445 = !DILocation(line: 57, column: 47, scope: !3974, inlinedAt: !4436)
!4446 = !DILocalVariable(name: "sem", arg: 1, scope: !4432, file: !1, line: 403, type: !3865)
!4447 = !DILocation(line: 403, column: 42, scope: !4432)
!4448 = !DILocalVariable(name: "count", scope: !4432, file: !1, line: 405, type: !109)
!4449 = !DILocation(line: 405, column: 7, scope: !4432)
!4450 = !DILocation(line: 407, column: 2, scope: !4432)
!4451 = !DILocation(line: 407, column: 2, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4432, file: !1, line: 407, column: 2)
!4453 = !DILocation(line: 409, column: 53, scope: !4432)
!4454 = !DILocation(line: 409, column: 58, scope: !4432)
!4455 = !DILocation(line: 59, column: 29, scope: !3974, inlinedAt: !4436)
!4456 = !DILocation(line: 59, column: 32, scope: !3974, inlinedAt: !4436)
!4457 = !DILocation(line: 882, column: 31, scope: !3972, inlinedAt: !4435)
!4458 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4440)
!4459 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4440)
!4460 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4440)
!4461 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4440)
!4462 = !DILocation(line: 883, column: 34, scope: !3972, inlinedAt: !4435)
!4463 = !DILocation(line: 883, column: 37, scope: !3972, inlinedAt: !4435)
!4464 = !DILocation(line: 160, column: 9, scope: !3966, inlinedAt: !4434)
!4465 = !DILocation(line: 160, column: 11, scope: !3966, inlinedAt: !4434)
!4466 = !DILocation(line: 409, column: 8, scope: !4432)
!4467 = !DILocation(line: 410, column: 6, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4432, file: !1, line: 410, column: 6)
!4469 = !DILocation(line: 410, column: 12, scope: !4468)
!4470 = !DILocation(line: 410, column: 6, scope: !4432)
!4471 = !DILocation(line: 411, column: 14, scope: !4468)
!4472 = !DILocation(line: 411, column: 3, scope: !4468)
!4473 = !DILocation(line: 412, column: 1, scope: !4432)
!4474 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !3967, file: !3967, line: 32, type: !3879, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4475 = !DILocalVariable(name: "v", arg: 1, scope: !4474, file: !3967, line: 32, type: !3881)
!4476 = !DILocation(line: 32, column: 50, scope: !4474)
!4477 = !DILocalVariable(name: "i", arg: 2, scope: !4474, file: !3967, line: 32, type: !94)
!4478 = !DILocation(line: 32, column: 57, scope: !4474)
!4479 = !DILocation(line: 34, column: 2, scope: !4474)
!4480 = !DILocation(line: 34, column: 2, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4474, file: !3967, line: 34, column: 2)
!4482 = !DILocation(line: 35, column: 1, scope: !4474)
!4483 = distinct !DISubprogram(name: "kasan_check_write", scope: !4484, file: !4484, line: 38, type: !4485, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4484 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!488, !3872, !5}
!4487 = !DILocalVariable(name: "p", arg: 1, scope: !4483, file: !4484, line: 38, type: !3872)
!4488 = !DILocation(line: 38, column: 59, scope: !4483)
!4489 = !DILocalVariable(name: "size", arg: 2, scope: !4483, file: !4484, line: 38, type: !5)
!4490 = !DILocation(line: 38, column: 75, scope: !4483)
!4491 = !DILocation(line: 40, column: 2, scope: !4483)
!4492 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4493, file: !4493, line: 178, type: !4494, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4493 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4494 = !DISubroutineType(types: !4495)
!4495 = !{null, !3872, !577, !138}
!4496 = !DILocalVariable(name: "ptr", arg: 1, scope: !4492, file: !4493, line: 178, type: !3872)
!4497 = !DILocation(line: 178, column: 60, scope: !4492)
!4498 = !DILocalVariable(name: "size", arg: 2, scope: !4492, file: !4493, line: 178, type: !577)
!4499 = !DILocation(line: 178, column: 72, scope: !4492)
!4500 = !DILocalVariable(name: "type", arg: 3, scope: !4492, file: !4493, line: 179, type: !138)
!4501 = !DILocation(line: 179, column: 15, scope: !4492)
!4502 = !DILocation(line: 179, column: 23, scope: !4492)
!4503 = distinct !DISubprogram(name: "down_read_failed", scope: !1, file: !1, line: 156, type: !4504, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!3865, !3865, !109, !109}
!4506 = !DILocation(line: 158, column: 57, scope: !3966, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 883, column: 9, scope: !3972, inlinedAt: !4508)
!4508 = distinct !DILocation(line: 59, column: 9, scope: !3974, inlinedAt: !4509)
!4509 = distinct !DILocation(line: 213, column: 4, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !1, line: 212, column: 20)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !1, line: 212, column: 7)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !1, line: 205, column: 16)
!4513 = distinct !DILexicalBlock(scope: !4503, file: !1, line: 205, column: 6)
!4514 = !DILocation(line: 158, column: 72, scope: !3966, inlinedAt: !4507)
!4515 = !DILocation(line: 160, column: 13, scope: !3981, inlinedAt: !4507)
!4516 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4517)
!4517 = distinct !DILocation(line: 882, column: 2, scope: !3972, inlinedAt: !4508)
!4518 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4517)
!4519 = !DILocation(line: 880, column: 25, scope: !3972, inlinedAt: !4508)
!4520 = !DILocation(line: 880, column: 40, scope: !3972, inlinedAt: !4508)
!4521 = !DILocation(line: 57, column: 29, scope: !3974, inlinedAt: !4509)
!4522 = !DILocation(line: 57, column: 47, scope: !3974, inlinedAt: !4509)
!4523 = !DILocalVariable(name: "pscr_ret__", scope: !4524, file: !4525, line: 15, type: !113)
!4524 = distinct !DILexicalBlock(scope: !4526, file: !4525, line: 15, column: 9)
!4525 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!4526 = distinct !DISubprogram(name: "get_current", scope: !4525, file: !4525, line: 13, type: !4527, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!113}
!4529 = !DILocation(line: 15, column: 9, scope: !4524, inlinedAt: !4530)
!4530 = distinct !DILocation(line: 203, column: 2, scope: !4503)
!4531 = !DILocalVariable(name: "__vpp_verify", scope: !4532, file: !4525, line: 15, type: !1883)
!4532 = distinct !DILexicalBlock(scope: !4524, file: !4525, line: 15, column: 9)
!4533 = !DILocation(line: 15, column: 9, scope: !4532, inlinedAt: !4530)
!4534 = !DILocalVariable(name: "pfo_val__", scope: !4535, file: !4525, line: 15, type: !169)
!4535 = distinct !DILexicalBlock(scope: !4524, file: !4525, line: 15, column: 9)
!4536 = !DILocation(line: 15, column: 9, scope: !4535, inlinedAt: !4530)
!4537 = !DILocation(line: 15, column: 9, scope: !4524, inlinedAt: !4538)
!4538 = distinct !DILocation(line: 194, column: 3, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4540, file: !1, line: 194, column: 3)
!4540 = distinct !DILexicalBlock(scope: !4541, file: !1, line: 194, column: 3)
!4541 = distinct !DILexicalBlock(scope: !4542, file: !1, line: 194, column: 3)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !1, line: 193, column: 11)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !1, line: 193, column: 2)
!4544 = distinct !DILexicalBlock(scope: !4503, file: !1, line: 193, column: 2)
!4545 = !DILocation(line: 15, column: 9, scope: !4532, inlinedAt: !4538)
!4546 = !DILocation(line: 15, column: 9, scope: !4535, inlinedAt: !4538)
!4547 = !DILocation(line: 15, column: 9, scope: !4524, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 184, column: 18, scope: !4503)
!4549 = !DILocation(line: 15, column: 9, scope: !4532, inlinedAt: !4548)
!4550 = !DILocation(line: 15, column: 9, scope: !4535, inlinedAt: !4548)
!4551 = !DILocation(line: 15, column: 9, scope: !4524, inlinedAt: !4552)
!4552 = distinct !DILocation(line: 183, column: 16, scope: !4503)
!4553 = !DILocation(line: 15, column: 9, scope: !4532, inlinedAt: !4552)
!4554 = !DILocation(line: 15, column: 9, scope: !4535, inlinedAt: !4552)
!4555 = !DILocation(line: 188, column: 67, scope: !4052, inlinedAt: !4556)
!4556 = distinct !DILocation(line: 1506, column: 9, scope: !4057, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 437, column: 9, scope: !4059, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 170, column: 7, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !1, line: 170, column: 7)
!4560 = distinct !DILexicalBlock(scope: !4503, file: !1, line: 169, column: 5)
!4561 = !DILocation(line: 188, column: 75, scope: !4052, inlinedAt: !4556)
!4562 = !DILocation(line: 188, column: 84, scope: !4052, inlinedAt: !4556)
!4563 = !DILocation(line: 190, column: 9, scope: !4071, inlinedAt: !4556)
!4564 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 1505, column: 2, scope: !4057, inlinedAt: !4557)
!4566 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4565)
!4567 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4568)
!4568 = distinct !DILocation(line: 1504, column: 2, scope: !4057, inlinedAt: !4557)
!4569 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4568)
!4570 = !DILocation(line: 1502, column: 34, scope: !4057, inlinedAt: !4557)
!4571 = !DILocation(line: 1502, column: 42, scope: !4057, inlinedAt: !4557)
!4572 = !DILocation(line: 1502, column: 51, scope: !4057, inlinedAt: !4557)
!4573 = !DILocation(line: 435, column: 40, scope: !4059, inlinedAt: !4558)
!4574 = !DILocation(line: 435, column: 49, scope: !4059, inlinedAt: !4558)
!4575 = !DILocation(line: 435, column: 59, scope: !4059, inlinedAt: !4558)
!4576 = !DILocalVariable(name: "sem", arg: 1, scope: !4503, file: !1, line: 156, type: !3865)
!4577 = !DILocation(line: 156, column: 39, scope: !4503)
!4578 = !DILocalVariable(name: "count", arg: 2, scope: !4503, file: !1, line: 156, type: !109)
!4579 = !DILocation(line: 156, column: 49, scope: !4503)
!4580 = !DILocalVariable(name: "timeout", arg: 3, scope: !4503, file: !1, line: 156, type: !109)
!4581 = !DILocation(line: 156, column: 61, scope: !4503)
!4582 = !DILocalVariable(name: "waiter", scope: !4503, file: !1, line: 158, type: !3845)
!4583 = !DILocation(line: 158, column: 22, scope: !4503)
!4584 = !DILocalVariable(name: "adjust", scope: !4503, file: !1, line: 159, type: !109)
!4585 = !DILocation(line: 159, column: 7, scope: !4503)
!4586 = !DILocation(line: 162, column: 2, scope: !4503)
!4587 = !DILocation(line: 162, column: 2, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4503, file: !1, line: 162, column: 2)
!4589 = !DILocation(line: 162, column: 2, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4588, file: !1, line: 162, column: 2)
!4591 = !DILocation(line: 162, column: 2, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4588, file: !1, line: 162, column: 2)
!4593 = !{i32 -2143002618}
!4594 = !DILocation(line: 162, column: 2, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4592, file: !1, line: 162, column: 2)
!4596 = !DILocation(line: 169, column: 2, scope: !4503)
!4597 = !DILocation(line: 170, column: 32, scope: !4559)
!4598 = !DILocation(line: 170, column: 37, scope: !4559)
!4599 = !DILocation(line: 170, column: 52, scope: !4559)
!4600 = !DILocation(line: 170, column: 60, scope: !4559)
!4601 = !DILocation(line: 170, column: 58, scope: !4559)
!4602 = !DILocation(line: 437, column: 30, scope: !4059, inlinedAt: !4558)
!4603 = !DILocation(line: 437, column: 40, scope: !4059, inlinedAt: !4558)
!4604 = !DILocation(line: 437, column: 45, scope: !4059, inlinedAt: !4558)
!4605 = !DILocation(line: 1504, column: 31, scope: !4057, inlinedAt: !4557)
!4606 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4568)
!4607 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4568)
!4608 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4568)
!4609 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4568)
!4610 = !DILocation(line: 1505, column: 31, scope: !4057, inlinedAt: !4557)
!4611 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4565)
!4612 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4565)
!4613 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4565)
!4614 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4565)
!4615 = !DILocation(line: 1506, column: 35, scope: !4057, inlinedAt: !4557)
!4616 = !DILocation(line: 1506, column: 38, scope: !4057, inlinedAt: !4557)
!4617 = !DILocation(line: 1506, column: 43, scope: !4057, inlinedAt: !4557)
!4618 = !DILocation(line: 190, column: 9, scope: !4156, inlinedAt: !4556)
!4619 = !DILocation(line: 190, column: 9, scope: !4052, inlinedAt: !4556)
!4620 = !DILocation(line: 170, column: 7, scope: !4560)
!4621 = !DILocation(line: 171, column: 13, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4559, file: !1, line: 170, column: 69)
!4623 = !DILocation(line: 171, column: 10, scope: !4622)
!4624 = !DILocation(line: 172, column: 4, scope: !4622)
!4625 = !DILocation(line: 174, column: 7, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4560, file: !1, line: 174, column: 7)
!4627 = !DILocation(line: 174, column: 13, scope: !4626)
!4628 = !DILocation(line: 174, column: 7, scope: !4560)
!4629 = !DILocation(line: 175, column: 4, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4626, file: !1, line: 174, column: 18)
!4631 = !DILocation(line: 175, column: 4, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4630, file: !1, line: 175, column: 4)
!4633 = !DILocation(line: 175, column: 4, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4632, file: !1, line: 175, column: 4)
!4635 = !DILocation(line: 175, column: 4, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4632, file: !1, line: 175, column: 4)
!4637 = !{i32 -2143002202}
!4638 = !DILocation(line: 175, column: 4, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4636, file: !1, line: 175, column: 4)
!4640 = !DILocation(line: 176, column: 11, scope: !4630)
!4641 = !DILocation(line: 176, column: 4, scope: !4630)
!4642 = !DILocation(line: 178, column: 2, scope: !4560)
!4643 = distinct !{!4643, !4596, !4644}
!4644 = !DILocation(line: 178, column: 12, scope: !4503)
!4645 = !DILocation(line: 180, column: 24, scope: !4503)
!4646 = !DILocation(line: 180, column: 31, scope: !4503)
!4647 = !DILocation(line: 180, column: 36, scope: !4503)
!4648 = !DILocation(line: 180, column: 2, scope: !4503)
!4649 = !DILocation(line: 181, column: 2, scope: !4503)
!4650 = !DILocation(line: 181, column: 7, scope: !4503)
!4651 = !DILocation(line: 181, column: 19, scope: !4503)
!4652 = !{i32 -2146783716}
!4653 = !DILocation(line: 183, column: 9, scope: !4503)
!4654 = !DILocation(line: 183, column: 14, scope: !4503)
!4655 = !DILocation(line: 184, column: 2, scope: !4503)
!4656 = !DILocation(line: 187, column: 7, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4503, file: !1, line: 187, column: 6)
!4658 = !DILocation(line: 187, column: 13, scope: !4657)
!4659 = !DILocation(line: 187, column: 34, scope: !4657)
!4660 = !DILocation(line: 187, column: 6, scope: !4503)
!4661 = !DILocation(line: 188, column: 16, scope: !4657)
!4662 = !DILocation(line: 188, column: 3, scope: !4657)
!4663 = !DILocation(line: 190, column: 2, scope: !4503)
!4664 = !DILocation(line: 190, column: 2, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4503, file: !1, line: 190, column: 2)
!4666 = !DILocation(line: 190, column: 2, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4665, file: !1, line: 190, column: 2)
!4668 = !DILocation(line: 190, column: 2, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4665, file: !1, line: 190, column: 2)
!4670 = !{i32 -2143001746}
!4671 = !DILocation(line: 190, column: 2, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4669, file: !1, line: 190, column: 2)
!4673 = !DILocation(line: 193, column: 2, scope: !4503)
!4674 = !DILocation(line: 194, column: 3, scope: !4542)
!4675 = !DILocation(line: 194, column: 3, scope: !4541)
!4676 = !DILocation(line: 194, column: 3, scope: !4540)
!4677 = !DILocation(line: 194, column: 3, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4540, file: !1, line: 194, column: 3)
!4679 = !DILocation(line: 194, column: 3, scope: !4539)
!4680 = !{i32 -2143000003}
!4681 = !DILocalVariable(name: "___p1", scope: !4682, file: !1, line: 196, type: !113)
!4682 = distinct !DILexicalBlock(scope: !4683, file: !1, line: 196, column: 8)
!4683 = distinct !DILexicalBlock(scope: !4542, file: !1, line: 196, column: 7)
!4684 = !DILocation(line: 196, column: 8, scope: !4682)
!4685 = !DILocation(line: 196, column: 8, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4682, file: !1, line: 196, column: 8)
!4687 = !DILocation(line: 196, column: 8, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4686, file: !1, line: 196, column: 8)
!4689 = !DILocation(line: 196, column: 8, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4682, file: !1, line: 196, column: 8)
!4691 = !{i32 -2142996006}
!4692 = !DILocation(line: 196, column: 8, scope: !4683)
!4693 = !DILocation(line: 196, column: 7, scope: !4542)
!4694 = !DILocation(line: 197, column: 4, scope: !4683)
!4695 = !DILocation(line: 198, column: 8, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4542, file: !1, line: 198, column: 7)
!4697 = !DILocation(line: 198, column: 7, scope: !4542)
!4698 = !DILocation(line: 199, column: 4, scope: !4696)
!4699 = !DILocation(line: 200, column: 30, scope: !4542)
!4700 = !DILocation(line: 200, column: 13, scope: !4542)
!4701 = !DILocation(line: 200, column: 11, scope: !4542)
!4702 = !DILocation(line: 193, column: 2, scope: !4543)
!4703 = distinct !{!4703, !4704, !4705}
!4704 = !DILocation(line: 193, column: 2, scope: !4544)
!4705 = !DILocation(line: 201, column: 2, scope: !4544)
!4706 = !DILocation(line: 203, column: 2, scope: !4503)
!4707 = !DILocation(line: 205, column: 7, scope: !4513)
!4708 = !DILocation(line: 205, column: 6, scope: !4503)
!4709 = !DILocation(line: 211, column: 3, scope: !4512)
!4710 = !DILocation(line: 211, column: 3, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4512, file: !1, line: 211, column: 3)
!4712 = !DILocation(line: 211, column: 3, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4711, file: !1, line: 211, column: 3)
!4714 = !DILocation(line: 211, column: 3, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4711, file: !1, line: 211, column: 3)
!4716 = !{i32 -2142995623}
!4717 = !DILocation(line: 211, column: 3, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4715, file: !1, line: 211, column: 3)
!4719 = !DILocation(line: 212, column: 14, scope: !4511)
!4720 = !DILocation(line: 212, column: 7, scope: !4511)
!4721 = !DILocation(line: 212, column: 7, scope: !4512)
!4722 = !DILocation(line: 213, column: 46, scope: !4510)
!4723 = !DILocation(line: 213, column: 51, scope: !4510)
!4724 = !DILocation(line: 59, column: 29, scope: !3974, inlinedAt: !4509)
!4725 = !DILocation(line: 59, column: 32, scope: !3974, inlinedAt: !4509)
!4726 = !DILocation(line: 882, column: 31, scope: !3972, inlinedAt: !4508)
!4727 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4517)
!4728 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4517)
!4729 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4517)
!4730 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4517)
!4731 = !DILocation(line: 883, column: 34, scope: !3972, inlinedAt: !4508)
!4732 = !DILocation(line: 883, column: 37, scope: !3972, inlinedAt: !4508)
!4733 = !DILocation(line: 160, column: 9, scope: !3966, inlinedAt: !4507)
!4734 = !DILocation(line: 160, column: 11, scope: !3966, inlinedAt: !4507)
!4735 = !DILocation(line: 214, column: 4, scope: !4510)
!4736 = !DILocation(line: 214, column: 9, scope: !4510)
!4737 = !DILocation(line: 214, column: 21, scope: !4510)
!4738 = !DILocation(line: 215, column: 21, scope: !4510)
!4739 = !DILocation(line: 215, column: 4, scope: !4510)
!4740 = !DILocation(line: 216, column: 4, scope: !4510)
!4741 = !DILocation(line: 216, column: 4, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4510, file: !1, line: 216, column: 4)
!4743 = !DILocation(line: 216, column: 4, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4742, file: !1, line: 216, column: 4)
!4745 = !DILocation(line: 216, column: 4, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4742, file: !1, line: 216, column: 4)
!4747 = !{i32 -2142995172}
!4748 = !DILocation(line: 216, column: 4, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4746, file: !1, line: 216, column: 4)
!4750 = !DILocation(line: 217, column: 27, scope: !4510)
!4751 = !DILocation(line: 217, column: 4, scope: !4510)
!4752 = !DILocation(line: 218, column: 4, scope: !4510)
!4753 = !DILocation(line: 220, column: 3, scope: !4512)
!4754 = !DILocation(line: 220, column: 3, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4512, file: !1, line: 220, column: 3)
!4756 = !DILocation(line: 220, column: 3, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4755, file: !1, line: 220, column: 3)
!4758 = !DILocation(line: 220, column: 3, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4755, file: !1, line: 220, column: 3)
!4760 = !{i32 -2142994744}
!4761 = !DILocation(line: 220, column: 3, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4759, file: !1, line: 220, column: 3)
!4763 = !DILocation(line: 221, column: 2, scope: !4512)
!4764 = !DILocation(line: 223, column: 9, scope: !4503)
!4765 = !DILocation(line: 223, column: 2, scope: !4503)
!4766 = !DILocation(line: 224, column: 1, scope: !4503)
!4767 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4768, file: !4768, line: 656, type: !3439, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4768 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4769 = !DILocalVariable(name: "__edi", scope: !4770, file: !4768, line: 658, type: !122)
!4770 = distinct !DILexicalBlock(scope: !4767, file: !4768, line: 658, column: 2)
!4771 = !DILocation(line: 658, column: 2, scope: !4770)
!4772 = !DILocalVariable(name: "__esi", scope: !4770, file: !4768, line: 658, type: !122)
!4773 = !DILocalVariable(name: "__edx", scope: !4770, file: !4768, line: 658, type: !122)
!4774 = !DILocalVariable(name: "__ecx", scope: !4770, file: !4768, line: 658, type: !122)
!4775 = !DILocalVariable(name: "__eax", scope: !4770, file: !4768, line: 658, type: !122)
!4776 = !{i32 -2145783799, i32 -2145783067, i32 -2145782833, i32 -2145782782, i32 -2145782754, i32 -2145782729, i32 -2145783045, i32 -2145783032, i32 -2145782594, i32 -2145782475, i32 -2145782940, i32 -2145782913, i32 -2145782885, i32 -2145782855}
!4777 = !DILocation(line: 659, column: 1, scope: !4767)
!4778 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4768, file: !4768, line: 661, type: !3439, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4779 = !DILocalVariable(name: "__edi", scope: !4780, file: !4768, line: 663, type: !122)
!4780 = distinct !DILexicalBlock(scope: !4778, file: !4768, line: 663, column: 2)
!4781 = !DILocation(line: 663, column: 2, scope: !4780)
!4782 = !DILocalVariable(name: "__esi", scope: !4780, file: !4768, line: 663, type: !122)
!4783 = !DILocalVariable(name: "__edx", scope: !4780, file: !4768, line: 663, type: !122)
!4784 = !DILocalVariable(name: "__ecx", scope: !4780, file: !4768, line: 663, type: !122)
!4785 = !DILocalVariable(name: "__eax", scope: !4780, file: !4768, line: 663, type: !122)
!4786 = !{i32 -2145781215, i32 -2145780485, i32 -2145780251, i32 -2145780200, i32 -2145780172, i32 -2145780147, i32 -2145780463, i32 -2145780450, i32 -2145780012, i32 -2145779893, i32 -2145780358, i32 -2145780331, i32 -2145780303, i32 -2145780273}
!4787 = !DILocation(line: 664, column: 1, scope: !4778)
!4788 = distinct !DISubprogram(name: "list_add_tail", scope: !3929, file: !3929, line: 98, type: !4789, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{null, !101, !101}
!4791 = !DILocalVariable(name: "new", arg: 1, scope: !4788, file: !3929, line: 98, type: !101)
!4792 = !DILocation(line: 98, column: 52, scope: !4788)
!4793 = !DILocalVariable(name: "head", arg: 2, scope: !4788, file: !3929, line: 98, type: !101)
!4794 = !DILocation(line: 98, column: 75, scope: !4788)
!4795 = !DILocation(line: 100, column: 13, scope: !4788)
!4796 = !DILocation(line: 100, column: 18, scope: !4788)
!4797 = !DILocation(line: 100, column: 24, scope: !4788)
!4798 = !DILocation(line: 100, column: 30, scope: !4788)
!4799 = !DILocation(line: 100, column: 2, scope: !4788)
!4800 = !DILocation(line: 101, column: 1, scope: !4788)
!4801 = distinct !DISubprogram(name: "get_task_struct", scope: !4802, file: !4802, line: 102, type: !4803, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4802 = !DIFile(filename: "./include/linux/sched/task.h", directory: "/home/lizy2001/genbc/linux")
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!113, !113}
!4805 = !DILocalVariable(name: "t", arg: 1, scope: !4801, file: !4802, line: 102, type: !113)
!4806 = !DILocation(line: 102, column: 71, scope: !4801)
!4807 = !DILocation(line: 104, column: 16, scope: !4801)
!4808 = !DILocation(line: 104, column: 19, scope: !4801)
!4809 = !DILocation(line: 104, column: 2, scope: !4801)
!4810 = !DILocation(line: 105, column: 9, scope: !4801)
!4811 = !DILocation(line: 105, column: 2, scope: !4801)
!4812 = distinct !DISubprogram(name: "__ldsem_wake", scope: !1, file: !1, line: 135, type: !4333, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4813 = !DILocalVariable(name: "sem", arg: 1, scope: !4812, file: !1, line: 135, type: !3865)
!4814 = !DILocation(line: 135, column: 47, scope: !4812)
!4815 = !DILocation(line: 137, column: 19, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4812, file: !1, line: 137, column: 6)
!4817 = !DILocation(line: 137, column: 24, scope: !4816)
!4818 = !DILocation(line: 137, column: 7, scope: !4816)
!4819 = !DILocation(line: 137, column: 6, scope: !4812)
!4820 = !DILocation(line: 138, column: 23, scope: !4816)
!4821 = !DILocation(line: 138, column: 3, scope: !4816)
!4822 = !DILocation(line: 139, column: 24, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4816, file: !1, line: 139, column: 11)
!4824 = !DILocation(line: 139, column: 29, scope: !4823)
!4825 = !DILocation(line: 139, column: 12, scope: !4823)
!4826 = !DILocation(line: 139, column: 11, scope: !4816)
!4827 = !DILocation(line: 140, column: 24, scope: !4823)
!4828 = !DILocation(line: 140, column: 3, scope: !4823)
!4829 = !DILocation(line: 141, column: 1, scope: !4812)
!4830 = distinct !DISubprogram(name: "list_del", scope: !3929, file: !3929, line: 144, type: !3930, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4831 = !DILocalVariable(name: "entry", arg: 1, scope: !4830, file: !3929, line: 144, type: !101)
!4832 = !DILocation(line: 144, column: 47, scope: !4830)
!4833 = !DILocation(line: 146, column: 19, scope: !4830)
!4834 = !DILocation(line: 146, column: 2, scope: !4830)
!4835 = !DILocation(line: 147, column: 2, scope: !4830)
!4836 = !DILocation(line: 147, column: 9, scope: !4830)
!4837 = !DILocation(line: 147, column: 14, scope: !4830)
!4838 = !DILocation(line: 148, column: 2, scope: !4830)
!4839 = !DILocation(line: 148, column: 9, scope: !4830)
!4840 = !DILocation(line: 148, column: 14, scope: !4830)
!4841 = !DILocation(line: 149, column: 1, scope: !4830)
!4842 = distinct !DISubprogram(name: "put_task_struct", scope: !4802, file: !4802, line: 110, type: !4843, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{null, !113}
!4845 = !DILocalVariable(name: "t", arg: 1, scope: !4842, file: !4802, line: 110, type: !113)
!4846 = !DILocation(line: 110, column: 56, scope: !4842)
!4847 = !DILocation(line: 112, column: 29, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4842, file: !4802, line: 112, column: 6)
!4849 = !DILocation(line: 112, column: 32, scope: !4848)
!4850 = !DILocation(line: 112, column: 6, scope: !4848)
!4851 = !DILocation(line: 112, column: 6, scope: !4842)
!4852 = !DILocation(line: 113, column: 21, scope: !4848)
!4853 = !DILocation(line: 113, column: 3, scope: !4848)
!4854 = !DILocation(line: 114, column: 1, scope: !4842)
!4855 = distinct !DISubprogram(name: "__list_add", scope: !3929, file: !3929, line: 63, type: !4856, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4856 = !DISubroutineType(types: !4857)
!4857 = !{null, !101, !101, !101}
!4858 = !DILocalVariable(name: "new", arg: 1, scope: !4855, file: !3929, line: 63, type: !101)
!4859 = !DILocation(line: 63, column: 49, scope: !4855)
!4860 = !DILocalVariable(name: "prev", arg: 2, scope: !4855, file: !3929, line: 64, type: !101)
!4861 = !DILocation(line: 64, column: 28, scope: !4855)
!4862 = !DILocalVariable(name: "next", arg: 3, scope: !4855, file: !3929, line: 65, type: !101)
!4863 = !DILocation(line: 65, column: 28, scope: !4855)
!4864 = !DILocation(line: 67, column: 24, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4855, file: !3929, line: 67, column: 6)
!4866 = !DILocation(line: 67, column: 29, scope: !4865)
!4867 = !DILocation(line: 67, column: 35, scope: !4865)
!4868 = !DILocation(line: 67, column: 7, scope: !4865)
!4869 = !DILocation(line: 67, column: 6, scope: !4855)
!4870 = !DILocation(line: 68, column: 3, scope: !4865)
!4871 = !DILocation(line: 70, column: 15, scope: !4855)
!4872 = !DILocation(line: 70, column: 2, scope: !4855)
!4873 = !DILocation(line: 70, column: 8, scope: !4855)
!4874 = !DILocation(line: 70, column: 13, scope: !4855)
!4875 = !DILocation(line: 71, column: 14, scope: !4855)
!4876 = !DILocation(line: 71, column: 2, scope: !4855)
!4877 = !DILocation(line: 71, column: 7, scope: !4855)
!4878 = !DILocation(line: 71, column: 12, scope: !4855)
!4879 = !DILocation(line: 72, column: 14, scope: !4855)
!4880 = !DILocation(line: 72, column: 2, scope: !4855)
!4881 = !DILocation(line: 72, column: 7, scope: !4855)
!4882 = !DILocation(line: 72, column: 12, scope: !4855)
!4883 = !DILocation(line: 73, column: 2, scope: !4855)
!4884 = !DILocation(line: 73, column: 2, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4855, file: !3929, line: 73, column: 2)
!4886 = !DILocation(line: 73, column: 2, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4885, file: !3929, line: 73, column: 2)
!4888 = !DILocation(line: 73, column: 2, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4885, file: !3929, line: 73, column: 2)
!4890 = !DILocation(line: 74, column: 1, scope: !4855)
!4891 = distinct !DISubprogram(name: "__list_add_valid", scope: !3929, file: !3929, line: 45, type: !4892, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!488, !101, !101, !101}
!4894 = !DILocalVariable(name: "new", arg: 1, scope: !4891, file: !3929, line: 45, type: !101)
!4895 = !DILocation(line: 45, column: 55, scope: !4891)
!4896 = !DILocalVariable(name: "prev", arg: 2, scope: !4891, file: !3929, line: 46, type: !101)
!4897 = !DILocation(line: 46, column: 23, scope: !4891)
!4898 = !DILocalVariable(name: "next", arg: 3, scope: !4891, file: !3929, line: 47, type: !101)
!4899 = !DILocation(line: 47, column: 23, scope: !4891)
!4900 = !DILocation(line: 49, column: 2, scope: !4891)
!4901 = distinct !DISubprogram(name: "refcount_inc", scope: !84, file: !84, line: 265, type: !4902, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{null, !4904}
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!4905 = !DILocalVariable(name: "r", arg: 1, scope: !4901, file: !84, line: 265, type: !4904)
!4906 = !DILocation(line: 265, column: 45, scope: !4901)
!4907 = !DILocation(line: 267, column: 17, scope: !4901)
!4908 = !DILocation(line: 267, column: 2, scope: !4901)
!4909 = !DILocation(line: 268, column: 1, scope: !4901)
!4910 = distinct !DISubprogram(name: "__refcount_inc", scope: !84, file: !84, line: 248, type: !4911, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{null, !4904, !711}
!4913 = !DILocalVariable(name: "r", arg: 1, scope: !4910, file: !84, line: 248, type: !4904)
!4914 = !DILocation(line: 248, column: 47, scope: !4910)
!4915 = !DILocalVariable(name: "oldp", arg: 2, scope: !4910, file: !84, line: 248, type: !711)
!4916 = !DILocation(line: 248, column: 55, scope: !4910)
!4917 = !DILocation(line: 250, column: 20, scope: !4910)
!4918 = !DILocation(line: 250, column: 23, scope: !4910)
!4919 = !DILocation(line: 250, column: 2, scope: !4910)
!4920 = !DILocation(line: 251, column: 1, scope: !4910)
!4921 = distinct !DISubprogram(name: "__refcount_add", scope: !84, file: !84, line: 191, type: !4922, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{null, !138, !4904, !711}
!4924 = !DILocalVariable(name: "i", arg: 1, scope: !4925, file: !4926, line: 182, type: !138)
!4925 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !4926, file: !4926, line: 182, type: !4927, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4926 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!138, !138, !4929}
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!4930 = !DILocation(line: 182, column: 54, scope: !4925, inlinedAt: !4931)
!4931 = distinct !DILocation(line: 143, column: 9, scope: !4932, inlinedAt: !4933)
!4932 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !3878, file: !3878, line: 140, type: !4927, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4933 = distinct !DILocation(line: 193, column: 12, scope: !4921)
!4934 = !DILocalVariable(name: "v", arg: 2, scope: !4925, file: !4926, line: 182, type: !4929)
!4935 = !DILocation(line: 182, column: 67, scope: !4925, inlinedAt: !4931)
!4936 = !DILocalVariable(name: "__ret", scope: !4937, file: !4926, line: 184, type: !138)
!4937 = distinct !DILexicalBlock(scope: !4925, file: !4926, line: 184, column: 9)
!4938 = !DILocation(line: 184, column: 9, scope: !4937, inlinedAt: !4931)
!4939 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 142, column: 2, scope: !4932, inlinedAt: !4933)
!4941 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !4940)
!4942 = !DILocalVariable(name: "i", arg: 1, scope: !4932, file: !3878, line: 140, type: !138)
!4943 = !DILocation(line: 140, column: 30, scope: !4932, inlinedAt: !4933)
!4944 = !DILocalVariable(name: "v", arg: 2, scope: !4932, file: !3878, line: 140, type: !4929)
!4945 = !DILocation(line: 140, column: 43, scope: !4932, inlinedAt: !4933)
!4946 = !DILocalVariable(name: "i", arg: 1, scope: !4921, file: !84, line: 191, type: !138)
!4947 = !DILocation(line: 191, column: 39, scope: !4921)
!4948 = !DILocalVariable(name: "r", arg: 2, scope: !4921, file: !84, line: 191, type: !4904)
!4949 = !DILocation(line: 191, column: 54, scope: !4921)
!4950 = !DILocalVariable(name: "oldp", arg: 3, scope: !4921, file: !84, line: 191, type: !711)
!4951 = !DILocation(line: 191, column: 62, scope: !4921)
!4952 = !DILocalVariable(name: "old", scope: !4921, file: !84, line: 193, type: !138)
!4953 = !DILocation(line: 193, column: 6, scope: !4921)
!4954 = !DILocation(line: 193, column: 37, scope: !4921)
!4955 = !DILocation(line: 193, column: 41, scope: !4921)
!4956 = !DILocation(line: 193, column: 44, scope: !4921)
!4957 = !DILocation(line: 142, column: 31, scope: !4932, inlinedAt: !4933)
!4958 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !4940)
!4959 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !4940)
!4960 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !4940)
!4961 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !4940)
!4962 = !DILocation(line: 143, column: 39, scope: !4932, inlinedAt: !4933)
!4963 = !DILocation(line: 143, column: 42, scope: !4932, inlinedAt: !4933)
!4964 = !{i32 -2146540173}
!4965 = !DILocation(line: 195, column: 6, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4921, file: !84, line: 195, column: 6)
!4967 = !DILocation(line: 195, column: 6, scope: !4921)
!4968 = !DILocation(line: 196, column: 11, scope: !4966)
!4969 = !DILocation(line: 196, column: 4, scope: !4966)
!4970 = !DILocation(line: 196, column: 9, scope: !4966)
!4971 = !DILocation(line: 196, column: 3, scope: !4966)
!4972 = !DILocation(line: 198, column: 6, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4921, file: !84, line: 198, column: 6)
!4974 = !DILocation(line: 198, column: 6, scope: !4921)
!4975 = !DILocation(line: 199, column: 26, scope: !4973)
!4976 = !DILocation(line: 199, column: 3, scope: !4973)
!4977 = !DILocation(line: 200, column: 11, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4973, file: !84, line: 200, column: 11)
!4979 = !DILocation(line: 200, column: 11, scope: !4973)
!4980 = !DILocation(line: 201, column: 26, scope: !4978)
!4981 = !DILocation(line: 201, column: 3, scope: !4978)
!4982 = !DILocation(line: 202, column: 1, scope: !4921)
!4983 = distinct !DISubprogram(name: "list_empty", scope: !3929, file: !3929, line: 280, type: !4984, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!138, !4986}
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4987, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!4988 = !DILocalVariable(name: "head", arg: 1, scope: !4983, file: !3929, line: 280, type: !4986)
!4989 = !DILocation(line: 280, column: 54, scope: !4983)
!4990 = !DILocation(line: 282, column: 9, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4983, file: !3929, line: 282, column: 9)
!4992 = !DILocation(line: 282, column: 9, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4991, file: !3929, line: 282, column: 9)
!4994 = !DILocation(line: 282, column: 34, scope: !4983)
!4995 = !DILocation(line: 282, column: 31, scope: !4983)
!4996 = !DILocation(line: 282, column: 2, scope: !4983)
!4997 = distinct !DISubprogram(name: "__ldsem_wake_writer", scope: !1, file: !1, line: 119, type: !4333, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!4998 = !DILocalVariable(name: "sem", arg: 1, scope: !4997, file: !1, line: 119, type: !3865)
!4999 = !DILocation(line: 119, column: 54, scope: !4997)
!5000 = !DILocalVariable(name: "waiter", scope: !4997, file: !1, line: 121, type: !3844)
!5001 = !DILocation(line: 121, column: 23, scope: !4997)
!5002 = !DILocalVariable(name: "__mptr", scope: !5003, file: !1, line: 123, type: !128)
!5003 = distinct !DILexicalBlock(scope: !4997, file: !1, line: 123, column: 11)
!5004 = !DILocation(line: 123, column: 11, scope: !5003)
!5005 = !DILocation(line: 123, column: 11, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5003, file: !1, line: 123, column: 11)
!5007 = !DILocation(line: 123, column: 9, scope: !4997)
!5008 = !DILocation(line: 124, column: 18, scope: !4997)
!5009 = !DILocation(line: 124, column: 26, scope: !4997)
!5010 = !DILocation(line: 124, column: 2, scope: !4997)
!5011 = !DILocation(line: 125, column: 1, scope: !4997)
!5012 = distinct !DISubprogram(name: "__ldsem_wake_readers", scope: !1, file: !1, line: 74, type: !4333, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5013 = !DILocation(line: 188, column: 67, scope: !4052, inlinedAt: !5014)
!5014 = distinct !DILocation(line: 1506, column: 9, scope: !4057, inlinedAt: !5015)
!5015 = distinct !DILocation(line: 437, column: 9, scope: !4059, inlinedAt: !5016)
!5016 = distinct !DILocation(line: 90, column: 7, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5018, file: !1, line: 90, column: 7)
!5018 = distinct !DILexicalBlock(scope: !5012, file: !1, line: 87, column: 5)
!5019 = !DILocation(line: 188, column: 75, scope: !4052, inlinedAt: !5014)
!5020 = !DILocation(line: 188, column: 84, scope: !4052, inlinedAt: !5014)
!5021 = !DILocation(line: 190, column: 9, scope: !4071, inlinedAt: !5014)
!5022 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 1505, column: 2, scope: !4057, inlinedAt: !5015)
!5024 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !5023)
!5025 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !5026)
!5026 = distinct !DILocation(line: 1504, column: 2, scope: !4057, inlinedAt: !5015)
!5027 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !5026)
!5028 = !DILocation(line: 1502, column: 34, scope: !4057, inlinedAt: !5015)
!5029 = !DILocation(line: 1502, column: 42, scope: !4057, inlinedAt: !5015)
!5030 = !DILocation(line: 1502, column: 51, scope: !4057, inlinedAt: !5015)
!5031 = !DILocation(line: 435, column: 40, scope: !4059, inlinedAt: !5016)
!5032 = !DILocation(line: 435, column: 49, scope: !4059, inlinedAt: !5016)
!5033 = !DILocation(line: 435, column: 59, scope: !4059, inlinedAt: !5016)
!5034 = !DILocation(line: 158, column: 57, scope: !3966, inlinedAt: !5035)
!5035 = distinct !DILocation(line: 883, column: 9, scope: !3972, inlinedAt: !5036)
!5036 = distinct !DILocation(line: 59, column: 9, scope: !3974, inlinedAt: !5037)
!5037 = distinct !DILocation(line: 86, column: 10, scope: !5012)
!5038 = !DILocation(line: 158, column: 72, scope: !3966, inlinedAt: !5035)
!5039 = !DILocation(line: 160, column: 13, scope: !3981, inlinedAt: !5035)
!5040 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !5041)
!5041 = distinct !DILocation(line: 882, column: 2, scope: !3972, inlinedAt: !5036)
!5042 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !5041)
!5043 = !DILocation(line: 880, column: 25, scope: !3972, inlinedAt: !5036)
!5044 = !DILocation(line: 880, column: 40, scope: !3972, inlinedAt: !5036)
!5045 = !DILocation(line: 57, column: 29, scope: !3974, inlinedAt: !5037)
!5046 = !DILocation(line: 57, column: 47, scope: !3974, inlinedAt: !5037)
!5047 = !DILocalVariable(name: "sem", arg: 1, scope: !5012, file: !1, line: 74, type: !3865)
!5048 = !DILocation(line: 74, column: 55, scope: !5012)
!5049 = !DILocalVariable(name: "waiter", scope: !5012, file: !1, line: 76, type: !3844)
!5050 = !DILocation(line: 76, column: 23, scope: !5012)
!5051 = !DILocalVariable(name: "next", scope: !5012, file: !1, line: 76, type: !3844)
!5052 = !DILocation(line: 76, column: 32, scope: !5012)
!5053 = !DILocalVariable(name: "tsk", scope: !5012, file: !1, line: 77, type: !113)
!5054 = !DILocation(line: 77, column: 22, scope: !5012)
!5055 = !DILocalVariable(name: "adjust", scope: !5012, file: !1, line: 78, type: !109)
!5056 = !DILocation(line: 78, column: 7, scope: !5012)
!5057 = !DILocalVariable(name: "count", scope: !5012, file: !1, line: 78, type: !109)
!5058 = !DILocation(line: 78, column: 15, scope: !5012)
!5059 = !DILocation(line: 85, column: 11, scope: !5012)
!5060 = !DILocation(line: 85, column: 16, scope: !5012)
!5061 = !DILocation(line: 85, column: 29, scope: !5012)
!5062 = !DILocation(line: 85, column: 9, scope: !5012)
!5063 = !DILocation(line: 86, column: 33, scope: !5012)
!5064 = !DILocation(line: 86, column: 42, scope: !5012)
!5065 = !DILocation(line: 86, column: 47, scope: !5012)
!5066 = !DILocation(line: 59, column: 29, scope: !3974, inlinedAt: !5037)
!5067 = !DILocation(line: 59, column: 32, scope: !3974, inlinedAt: !5037)
!5068 = !DILocation(line: 882, column: 31, scope: !3972, inlinedAt: !5036)
!5069 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !5041)
!5070 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !5041)
!5071 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !5041)
!5072 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !5041)
!5073 = !DILocation(line: 883, column: 34, scope: !3972, inlinedAt: !5036)
!5074 = !DILocation(line: 883, column: 37, scope: !3972, inlinedAt: !5036)
!5075 = !DILocation(line: 160, column: 9, scope: !3966, inlinedAt: !5035)
!5076 = !DILocation(line: 160, column: 11, scope: !3966, inlinedAt: !5035)
!5077 = !DILocation(line: 86, column: 8, scope: !5012)
!5078 = !DILocation(line: 87, column: 2, scope: !5012)
!5079 = !DILocation(line: 88, column: 7, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5018, file: !1, line: 88, column: 7)
!5081 = !DILocation(line: 88, column: 13, scope: !5080)
!5082 = !DILocation(line: 88, column: 7, scope: !5018)
!5083 = !DILocation(line: 89, column: 4, scope: !5080)
!5084 = !DILocation(line: 90, column: 32, scope: !5017)
!5085 = !DILocation(line: 90, column: 37, scope: !5017)
!5086 = !DILocation(line: 90, column: 52, scope: !5017)
!5087 = !DILocation(line: 90, column: 60, scope: !5017)
!5088 = !DILocation(line: 90, column: 58, scope: !5017)
!5089 = !DILocation(line: 437, column: 30, scope: !4059, inlinedAt: !5016)
!5090 = !DILocation(line: 437, column: 40, scope: !4059, inlinedAt: !5016)
!5091 = !DILocation(line: 437, column: 45, scope: !4059, inlinedAt: !5016)
!5092 = !DILocation(line: 1504, column: 31, scope: !4057, inlinedAt: !5015)
!5093 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !5026)
!5094 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !5026)
!5095 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !5026)
!5096 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !5026)
!5097 = !DILocation(line: 1505, column: 31, scope: !4057, inlinedAt: !5015)
!5098 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !5023)
!5099 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !5023)
!5100 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !5023)
!5101 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !5023)
!5102 = !DILocation(line: 1506, column: 35, scope: !4057, inlinedAt: !5015)
!5103 = !DILocation(line: 1506, column: 38, scope: !4057, inlinedAt: !5015)
!5104 = !DILocation(line: 1506, column: 43, scope: !4057, inlinedAt: !5015)
!5105 = !DILocation(line: 190, column: 9, scope: !4156, inlinedAt: !5014)
!5106 = !DILocation(line: 190, column: 9, scope: !4052, inlinedAt: !5014)
!5107 = !DILocation(line: 90, column: 7, scope: !5018)
!5108 = !DILocation(line: 91, column: 4, scope: !5017)
!5109 = !DILocation(line: 92, column: 2, scope: !5018)
!5110 = distinct !{!5110, !5078, !5111}
!5111 = !DILocation(line: 92, column: 12, scope: !5012)
!5112 = !DILocalVariable(name: "__mptr", scope: !5113, file: !1, line: 94, type: !128)
!5113 = distinct !DILexicalBlock(scope: !5114, file: !1, line: 94, column: 2)
!5114 = distinct !DILexicalBlock(scope: !5012, file: !1, line: 94, column: 2)
!5115 = !DILocation(line: 94, column: 2, scope: !5113)
!5116 = !DILocation(line: 94, column: 2, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5113, file: !1, line: 94, column: 2)
!5118 = !DILocation(line: 94, column: 2, scope: !5114)
!5119 = !DILocalVariable(name: "__mptr", scope: !5120, file: !1, line: 94, type: !128)
!5120 = distinct !DILexicalBlock(scope: !5114, file: !1, line: 94, column: 2)
!5121 = !DILocation(line: 94, column: 2, scope: !5120)
!5122 = !DILocation(line: 94, column: 2, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5120, file: !1, line: 94, column: 2)
!5124 = !DILocation(line: 94, column: 2, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5114, file: !1, line: 94, column: 2)
!5126 = !DILocation(line: 95, column: 9, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5125, file: !1, line: 94, column: 64)
!5128 = !DILocation(line: 95, column: 17, scope: !5127)
!5129 = !DILocation(line: 95, column: 7, scope: !5127)
!5130 = !DILocation(line: 96, column: 3, scope: !5127)
!5131 = !DILocation(line: 96, column: 3, scope: !5132)
!5132 = distinct !DILexicalBlock(scope: !5127, file: !1, line: 96, column: 3)
!5133 = !DILocation(line: 96, column: 3, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5132, file: !1, line: 96, column: 3)
!5135 = !{i32 -2143007995}
!5136 = !DILocation(line: 96, column: 3, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5132, file: !1, line: 96, column: 3)
!5138 = !DILocation(line: 96, column: 3, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5137, file: !1, line: 96, column: 3)
!5140 = !DILocation(line: 96, column: 3, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5137, file: !1, line: 96, column: 3)
!5142 = !DILocation(line: 97, column: 19, scope: !5127)
!5143 = !DILocation(line: 97, column: 3, scope: !5127)
!5144 = !DILocation(line: 98, column: 19, scope: !5127)
!5145 = !DILocation(line: 98, column: 3, scope: !5127)
!5146 = !DILocation(line: 99, column: 2, scope: !5127)
!5147 = !DILocalVariable(name: "__mptr", scope: !5148, file: !1, line: 94, type: !128)
!5148 = distinct !DILexicalBlock(scope: !5125, file: !1, line: 94, column: 2)
!5149 = !DILocation(line: 94, column: 2, scope: !5148)
!5150 = !DILocation(line: 94, column: 2, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5148, file: !1, line: 94, column: 2)
!5152 = distinct !{!5152, !5118, !5153}
!5153 = !DILocation(line: 99, column: 2, scope: !5114)
!5154 = !DILocation(line: 100, column: 18, scope: !5012)
!5155 = !DILocation(line: 100, column: 23, scope: !5012)
!5156 = !DILocation(line: 100, column: 2, scope: !5012)
!5157 = !DILocation(line: 101, column: 2, scope: !5012)
!5158 = !DILocation(line: 101, column: 7, scope: !5012)
!5159 = !DILocation(line: 101, column: 20, scope: !5012)
!5160 = !DILocation(line: 102, column: 1, scope: !5012)
!5161 = distinct !DISubprogram(name: "__list_del_entry", scope: !3929, file: !3929, line: 130, type: !3930, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5162 = !DILocalVariable(name: "entry", arg: 1, scope: !5161, file: !3929, line: 130, type: !101)
!5163 = !DILocation(line: 130, column: 55, scope: !5161)
!5164 = !DILocation(line: 132, column: 30, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5161, file: !3929, line: 132, column: 6)
!5166 = !DILocation(line: 132, column: 7, scope: !5165)
!5167 = !DILocation(line: 132, column: 6, scope: !5161)
!5168 = !DILocation(line: 133, column: 3, scope: !5165)
!5169 = !DILocation(line: 135, column: 13, scope: !5161)
!5170 = !DILocation(line: 135, column: 20, scope: !5161)
!5171 = !DILocation(line: 135, column: 26, scope: !5161)
!5172 = !DILocation(line: 135, column: 33, scope: !5161)
!5173 = !DILocation(line: 135, column: 2, scope: !5161)
!5174 = !DILocation(line: 136, column: 1, scope: !5161)
!5175 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3929, file: !3929, line: 51, type: !5176, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{!488, !101}
!5178 = !DILocalVariable(name: "entry", arg: 1, scope: !5175, file: !3929, line: 51, type: !101)
!5179 = !DILocation(line: 51, column: 61, scope: !5175)
!5180 = !DILocation(line: 53, column: 2, scope: !5175)
!5181 = distinct !DISubprogram(name: "__list_del", scope: !3929, file: !3929, line: 110, type: !4789, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5182 = !DILocalVariable(name: "prev", arg: 1, scope: !5181, file: !3929, line: 110, type: !101)
!5183 = !DILocation(line: 110, column: 50, scope: !5181)
!5184 = !DILocalVariable(name: "next", arg: 2, scope: !5181, file: !3929, line: 110, type: !101)
!5185 = !DILocation(line: 110, column: 75, scope: !5181)
!5186 = !DILocation(line: 112, column: 15, scope: !5181)
!5187 = !DILocation(line: 112, column: 2, scope: !5181)
!5188 = !DILocation(line: 112, column: 8, scope: !5181)
!5189 = !DILocation(line: 112, column: 13, scope: !5181)
!5190 = !DILocation(line: 113, column: 2, scope: !5181)
!5191 = !DILocation(line: 113, column: 2, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5181, file: !3929, line: 113, column: 2)
!5193 = !DILocation(line: 113, column: 2, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5192, file: !3929, line: 113, column: 2)
!5195 = !DILocation(line: 113, column: 2, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5192, file: !3929, line: 113, column: 2)
!5197 = !DILocation(line: 114, column: 1, scope: !5181)
!5198 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !84, file: !84, line: 331, type: !5199, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!488, !4904}
!5201 = !DILocalVariable(name: "r", arg: 1, scope: !5198, file: !84, line: 331, type: !4904)
!5202 = !DILocation(line: 331, column: 67, scope: !5198)
!5203 = !DILocation(line: 333, column: 33, scope: !5198)
!5204 = !DILocation(line: 333, column: 9, scope: !5198)
!5205 = !DILocation(line: 333, column: 2, scope: !5198)
!5206 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !84, file: !84, line: 313, type: !5207, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!488, !4904, !711}
!5209 = !DILocalVariable(name: "r", arg: 1, scope: !5206, file: !84, line: 313, type: !4904)
!5210 = !DILocation(line: 313, column: 69, scope: !5206)
!5211 = !DILocalVariable(name: "oldp", arg: 2, scope: !5206, file: !84, line: 313, type: !711)
!5212 = !DILocation(line: 313, column: 77, scope: !5206)
!5213 = !DILocation(line: 315, column: 36, scope: !5206)
!5214 = !DILocation(line: 315, column: 39, scope: !5206)
!5215 = !DILocation(line: 315, column: 9, scope: !5206)
!5216 = !DILocation(line: 315, column: 2, scope: !5206)
!5217 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !84, file: !84, line: 270, type: !5218, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!488, !138, !4904, !711}
!5220 = !DILocalVariable(name: "i", arg: 1, scope: !5221, file: !4926, line: 188, type: !138)
!5221 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !4926, file: !4926, line: 188, type: !4927, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5222 = !DILocation(line: 188, column: 54, scope: !5221, inlinedAt: !5223)
!5223 = distinct !DILocation(line: 221, column: 9, scope: !5224, inlinedAt: !5225)
!5224 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !3878, file: !3878, line: 218, type: !4927, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5225 = distinct !DILocation(line: 272, column: 12, scope: !5217)
!5226 = !DILocalVariable(name: "v", arg: 2, scope: !5221, file: !4926, line: 188, type: !4929)
!5227 = !DILocation(line: 188, column: 67, scope: !5221, inlinedAt: !5223)
!5228 = !DILocalVariable(name: "__ret", scope: !5229, file: !4926, line: 190, type: !138)
!5229 = distinct !DILexicalBlock(scope: !5221, file: !4926, line: 190, column: 9)
!5230 = !DILocation(line: 190, column: 9, scope: !5229, inlinedAt: !5223)
!5231 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !5232)
!5232 = distinct !DILocation(line: 220, column: 2, scope: !5224, inlinedAt: !5225)
!5233 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !5232)
!5234 = !DILocalVariable(name: "i", arg: 1, scope: !5224, file: !3878, line: 218, type: !138)
!5235 = !DILocation(line: 218, column: 30, scope: !5224, inlinedAt: !5225)
!5236 = !DILocalVariable(name: "v", arg: 2, scope: !5224, file: !3878, line: 218, type: !4929)
!5237 = !DILocation(line: 218, column: 43, scope: !5224, inlinedAt: !5225)
!5238 = !DILocalVariable(name: "i", arg: 1, scope: !5217, file: !84, line: 270, type: !138)
!5239 = !DILocation(line: 270, column: 61, scope: !5217)
!5240 = !DILocalVariable(name: "r", arg: 2, scope: !5217, file: !84, line: 270, type: !4904)
!5241 = !DILocation(line: 270, column: 76, scope: !5217)
!5242 = !DILocalVariable(name: "oldp", arg: 3, scope: !5217, file: !84, line: 270, type: !711)
!5243 = !DILocation(line: 270, column: 84, scope: !5217)
!5244 = !DILocalVariable(name: "old", scope: !5217, file: !84, line: 272, type: !138)
!5245 = !DILocation(line: 272, column: 6, scope: !5217)
!5246 = !DILocation(line: 272, column: 37, scope: !5217)
!5247 = !DILocation(line: 272, column: 41, scope: !5217)
!5248 = !DILocation(line: 272, column: 44, scope: !5217)
!5249 = !DILocation(line: 220, column: 31, scope: !5224, inlinedAt: !5225)
!5250 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !5232)
!5251 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !5232)
!5252 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !5232)
!5253 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !5232)
!5254 = !DILocation(line: 221, column: 39, scope: !5224, inlinedAt: !5225)
!5255 = !DILocation(line: 221, column: 42, scope: !5224, inlinedAt: !5225)
!5256 = !{i32 -2146538821}
!5257 = !DILocation(line: 274, column: 6, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5217, file: !84, line: 274, column: 6)
!5259 = !DILocation(line: 274, column: 6, scope: !5217)
!5260 = !DILocation(line: 275, column: 11, scope: !5258)
!5261 = !DILocation(line: 275, column: 4, scope: !5258)
!5262 = !DILocation(line: 275, column: 9, scope: !5258)
!5263 = !DILocation(line: 275, column: 3, scope: !5258)
!5264 = !DILocation(line: 277, column: 6, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5217, file: !84, line: 277, column: 6)
!5266 = !DILocation(line: 277, column: 13, scope: !5265)
!5267 = !DILocation(line: 277, column: 10, scope: !5265)
!5268 = !DILocation(line: 277, column: 6, scope: !5217)
!5269 = !DILocation(line: 278, column: 3, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5265, file: !84, line: 277, column: 16)
!5271 = !{i32 -2144223156}
!5272 = !DILocation(line: 279, column: 3, scope: !5270)
!5273 = !DILocation(line: 282, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5217, file: !84, line: 282, column: 6)
!5275 = !DILocation(line: 282, column: 6, scope: !5217)
!5276 = !DILocation(line: 283, column: 26, scope: !5274)
!5277 = !DILocation(line: 283, column: 3, scope: !5274)
!5278 = !DILocation(line: 285, column: 2, scope: !5217)
!5279 = !DILocation(line: 286, column: 1, scope: !5217)
!5280 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !3967, file: !3967, line: 20, type: !4100, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5281 = !DILocalVariable(name: "v", arg: 1, scope: !5280, file: !3967, line: 20, type: !4102)
!5282 = !DILocation(line: 20, column: 56, scope: !5280)
!5283 = !DILocation(line: 22, column: 9, scope: !5280)
!5284 = !DILocation(line: 22, column: 2, scope: !5280)
!5285 = distinct !DISubprogram(name: "kasan_check_read", scope: !4484, file: !4484, line: 34, type: !4485, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5286 = !DILocalVariable(name: "p", arg: 1, scope: !5285, file: !4484, line: 34, type: !3872)
!5287 = !DILocation(line: 34, column: 58, scope: !5285)
!5288 = !DILocalVariable(name: "size", arg: 2, scope: !5285, file: !4484, line: 34, type: !5)
!5289 = !DILocation(line: 34, column: 74, scope: !5285)
!5290 = !DILocation(line: 36, column: 2, scope: !5285)
!5291 = distinct !DISubprogram(name: "down_write_failed", scope: !1, file: !1, line: 230, type: !4504, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5292 = !DILocation(line: 15, column: 9, scope: !4524, inlinedAt: !5293)
!5293 = distinct !DILocation(line: 285, column: 2, scope: !5291)
!5294 = !DILocation(line: 15, column: 9, scope: !4532, inlinedAt: !5293)
!5295 = !DILocation(line: 15, column: 9, scope: !4535, inlinedAt: !5293)
!5296 = !DILocation(line: 158, column: 57, scope: !3966, inlinedAt: !5297)
!5297 = distinct !DILocation(line: 883, column: 9, scope: !3972, inlinedAt: !5298)
!5298 = distinct !DILocation(line: 59, column: 9, scope: !3974, inlinedAt: !5299)
!5299 = distinct !DILocation(line: 271, column: 3, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5291, file: !1, line: 270, column: 6)
!5301 = !DILocation(line: 158, column: 72, scope: !3966, inlinedAt: !5297)
!5302 = !DILocation(line: 160, column: 13, scope: !3981, inlinedAt: !5297)
!5303 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !5304)
!5304 = distinct !DILocation(line: 882, column: 2, scope: !3972, inlinedAt: !5298)
!5305 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !5304)
!5306 = !DILocation(line: 880, column: 25, scope: !3972, inlinedAt: !5298)
!5307 = !DILocation(line: 880, column: 40, scope: !3972, inlinedAt: !5298)
!5308 = !DILocation(line: 57, column: 29, scope: !3974, inlinedAt: !5299)
!5309 = !DILocation(line: 57, column: 47, scope: !3974, inlinedAt: !5299)
!5310 = !DILocation(line: 15, column: 9, scope: !4524, inlinedAt: !5311)
!5311 = distinct !DILocation(line: 264, column: 3, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5313, file: !1, line: 264, column: 3)
!5313 = distinct !DILexicalBlock(scope: !5314, file: !1, line: 264, column: 3)
!5314 = distinct !DILexicalBlock(scope: !5315, file: !1, line: 264, column: 3)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !1, line: 258, column: 11)
!5316 = distinct !DILexicalBlock(scope: !5317, file: !1, line: 258, column: 2)
!5317 = distinct !DILexicalBlock(scope: !5291, file: !1, line: 258, column: 2)
!5318 = !DILocation(line: 15, column: 9, scope: !4532, inlinedAt: !5311)
!5319 = !DILocation(line: 15, column: 9, scope: !4535, inlinedAt: !5311)
!5320 = !DILocation(line: 15, column: 9, scope: !4524, inlinedAt: !5321)
!5321 = distinct !DILocation(line: 257, column: 2, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5323, file: !1, line: 257, column: 2)
!5323 = distinct !DILexicalBlock(scope: !5324, file: !1, line: 257, column: 2)
!5324 = distinct !DILexicalBlock(scope: !5291, file: !1, line: 257, column: 2)
!5325 = !DILocation(line: 15, column: 9, scope: !4532, inlinedAt: !5321)
!5326 = !DILocation(line: 15, column: 9, scope: !4535, inlinedAt: !5321)
!5327 = !DILocation(line: 15, column: 9, scope: !4524, inlinedAt: !5328)
!5328 = distinct !DILocation(line: 255, column: 16, scope: !5291)
!5329 = !DILocation(line: 15, column: 9, scope: !4532, inlinedAt: !5328)
!5330 = !DILocation(line: 15, column: 9, scope: !4535, inlinedAt: !5328)
!5331 = !DILocation(line: 188, column: 67, scope: !4052, inlinedAt: !5332)
!5332 = distinct !DILocation(line: 1506, column: 9, scope: !4057, inlinedAt: !5333)
!5333 = distinct !DILocation(line: 437, column: 9, scope: !4059, inlinedAt: !5334)
!5334 = distinct !DILocation(line: 245, column: 7, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5336, file: !1, line: 245, column: 7)
!5336 = distinct !DILexicalBlock(scope: !5291, file: !1, line: 244, column: 5)
!5337 = !DILocation(line: 188, column: 75, scope: !4052, inlinedAt: !5332)
!5338 = !DILocation(line: 188, column: 84, scope: !4052, inlinedAt: !5332)
!5339 = !DILocation(line: 190, column: 9, scope: !4071, inlinedAt: !5332)
!5340 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !5341)
!5341 = distinct !DILocation(line: 1505, column: 2, scope: !4057, inlinedAt: !5333)
!5342 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !5341)
!5343 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !5344)
!5344 = distinct !DILocation(line: 1504, column: 2, scope: !4057, inlinedAt: !5333)
!5345 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !5344)
!5346 = !DILocation(line: 1502, column: 34, scope: !4057, inlinedAt: !5333)
!5347 = !DILocation(line: 1502, column: 42, scope: !4057, inlinedAt: !5333)
!5348 = !DILocation(line: 1502, column: 51, scope: !4057, inlinedAt: !5333)
!5349 = !DILocation(line: 435, column: 40, scope: !4059, inlinedAt: !5334)
!5350 = !DILocation(line: 435, column: 49, scope: !4059, inlinedAt: !5334)
!5351 = !DILocation(line: 435, column: 59, scope: !4059, inlinedAt: !5334)
!5352 = !DILocalVariable(name: "sem", arg: 1, scope: !5291, file: !1, line: 230, type: !3865)
!5353 = !DILocation(line: 230, column: 40, scope: !5291)
!5354 = !DILocalVariable(name: "count", arg: 2, scope: !5291, file: !1, line: 230, type: !109)
!5355 = !DILocation(line: 230, column: 50, scope: !5291)
!5356 = !DILocalVariable(name: "timeout", arg: 3, scope: !5291, file: !1, line: 230, type: !109)
!5357 = !DILocation(line: 230, column: 62, scope: !5291)
!5358 = !DILocalVariable(name: "waiter", scope: !5291, file: !1, line: 232, type: !3845)
!5359 = !DILocation(line: 232, column: 22, scope: !5291)
!5360 = !DILocalVariable(name: "adjust", scope: !5291, file: !1, line: 233, type: !109)
!5361 = !DILocation(line: 233, column: 7, scope: !5291)
!5362 = !DILocalVariable(name: "locked", scope: !5291, file: !1, line: 234, type: !138)
!5363 = !DILocation(line: 234, column: 6, scope: !5291)
!5364 = !DILocation(line: 237, column: 2, scope: !5291)
!5365 = !DILocation(line: 237, column: 2, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5291, file: !1, line: 237, column: 2)
!5367 = !DILocation(line: 237, column: 2, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5366, file: !1, line: 237, column: 2)
!5369 = !DILocation(line: 237, column: 2, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5366, file: !1, line: 237, column: 2)
!5371 = !{i32 -2142994252}
!5372 = !DILocation(line: 237, column: 2, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5370, file: !1, line: 237, column: 2)
!5374 = !DILocation(line: 244, column: 2, scope: !5291)
!5375 = !DILocation(line: 245, column: 32, scope: !5335)
!5376 = !DILocation(line: 245, column: 37, scope: !5335)
!5377 = !DILocation(line: 245, column: 52, scope: !5335)
!5378 = !DILocation(line: 245, column: 60, scope: !5335)
!5379 = !DILocation(line: 245, column: 58, scope: !5335)
!5380 = !DILocation(line: 437, column: 30, scope: !4059, inlinedAt: !5334)
!5381 = !DILocation(line: 437, column: 40, scope: !4059, inlinedAt: !5334)
!5382 = !DILocation(line: 437, column: 45, scope: !4059, inlinedAt: !5334)
!5383 = !DILocation(line: 1504, column: 31, scope: !4057, inlinedAt: !5333)
!5384 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !5344)
!5385 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !5344)
!5386 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !5344)
!5387 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !5344)
!5388 = !DILocation(line: 1505, column: 31, scope: !4057, inlinedAt: !5333)
!5389 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !5341)
!5390 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !5341)
!5391 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !5341)
!5392 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !5341)
!5393 = !DILocation(line: 1506, column: 35, scope: !4057, inlinedAt: !5333)
!5394 = !DILocation(line: 1506, column: 38, scope: !4057, inlinedAt: !5333)
!5395 = !DILocation(line: 1506, column: 43, scope: !4057, inlinedAt: !5333)
!5396 = !DILocation(line: 190, column: 9, scope: !4156, inlinedAt: !5332)
!5397 = !DILocation(line: 190, column: 9, scope: !4052, inlinedAt: !5332)
!5398 = !DILocation(line: 245, column: 7, scope: !5336)
!5399 = !DILocation(line: 246, column: 4, scope: !5335)
!5400 = !DILocation(line: 247, column: 8, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5336, file: !1, line: 247, column: 7)
!5402 = !DILocation(line: 247, column: 14, scope: !5401)
!5403 = !DILocation(line: 247, column: 35, scope: !5401)
!5404 = !DILocation(line: 247, column: 7, scope: !5336)
!5405 = !DILocation(line: 248, column: 4, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5401, file: !1, line: 247, column: 57)
!5407 = !DILocation(line: 248, column: 4, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5406, file: !1, line: 248, column: 4)
!5409 = !DILocation(line: 248, column: 4, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5408, file: !1, line: 248, column: 4)
!5411 = !DILocation(line: 248, column: 4, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5408, file: !1, line: 248, column: 4)
!5413 = !{i32 -2142993821}
!5414 = !DILocation(line: 248, column: 4, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5412, file: !1, line: 248, column: 4)
!5416 = !DILocation(line: 249, column: 11, scope: !5406)
!5417 = !DILocation(line: 249, column: 4, scope: !5406)
!5418 = !DILocation(line: 251, column: 2, scope: !5336)
!5419 = distinct !{!5419, !5374, !5420}
!5420 = !DILocation(line: 251, column: 12, scope: !5291)
!5421 = !DILocation(line: 253, column: 24, scope: !5291)
!5422 = !DILocation(line: 253, column: 31, scope: !5291)
!5423 = !DILocation(line: 253, column: 36, scope: !5291)
!5424 = !DILocation(line: 253, column: 2, scope: !5291)
!5425 = !DILocation(line: 255, column: 9, scope: !5291)
!5426 = !DILocation(line: 255, column: 14, scope: !5291)
!5427 = !DILocation(line: 257, column: 2, scope: !5291)
!5428 = !DILocation(line: 257, column: 2, scope: !5324)
!5429 = !DILocation(line: 257, column: 2, scope: !5323)
!5430 = !DILocation(line: 257, column: 2, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5323, file: !1, line: 257, column: 2)
!5432 = !DILocation(line: 257, column: 2, scope: !5322)
!5433 = !{i32 -2142992064}
!5434 = !DILocation(line: 258, column: 2, scope: !5291)
!5435 = !DILocation(line: 259, column: 8, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5315, file: !1, line: 259, column: 7)
!5437 = !DILocation(line: 259, column: 7, scope: !5315)
!5438 = !DILocation(line: 260, column: 4, scope: !5436)
!5439 = !DILocation(line: 261, column: 3, scope: !5315)
!5440 = !DILocation(line: 261, column: 3, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5315, file: !1, line: 261, column: 3)
!5442 = !DILocation(line: 261, column: 3, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5441, file: !1, line: 261, column: 3)
!5444 = !DILocation(line: 261, column: 3, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5441, file: !1, line: 261, column: 3)
!5446 = !{i32 -2142991736}
!5447 = !DILocation(line: 261, column: 3, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5445, file: !1, line: 261, column: 3)
!5449 = !DILocation(line: 262, column: 30, scope: !5315)
!5450 = !DILocation(line: 262, column: 13, scope: !5315)
!5451 = !DILocation(line: 262, column: 11, scope: !5315)
!5452 = !DILocation(line: 263, column: 3, scope: !5315)
!5453 = !DILocation(line: 263, column: 3, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5315, file: !1, line: 263, column: 3)
!5455 = !DILocation(line: 263, column: 3, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5454, file: !1, line: 263, column: 3)
!5457 = !DILocation(line: 263, column: 3, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5454, file: !1, line: 263, column: 3)
!5459 = !{i32 -2142991324}
!5460 = !DILocation(line: 263, column: 3, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5458, file: !1, line: 263, column: 3)
!5462 = !DILocation(line: 264, column: 3, scope: !5315)
!5463 = !DILocation(line: 264, column: 3, scope: !5314)
!5464 = !DILocation(line: 264, column: 3, scope: !5313)
!5465 = !DILocation(line: 264, column: 3, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5313, file: !1, line: 264, column: 3)
!5467 = !DILocation(line: 264, column: 3, scope: !5312)
!5468 = !{i32 -2142989581}
!5469 = !DILocation(line: 265, column: 27, scope: !5315)
!5470 = !DILocation(line: 265, column: 12, scope: !5315)
!5471 = !DILocation(line: 265, column: 10, scope: !5315)
!5472 = !DILocation(line: 266, column: 7, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5315, file: !1, line: 266, column: 7)
!5474 = !DILocation(line: 266, column: 7, scope: !5315)
!5475 = !DILocation(line: 267, column: 4, scope: !5473)
!5476 = !DILocation(line: 258, column: 2, scope: !5316)
!5477 = distinct !{!5477, !5478, !5479}
!5478 = !DILocation(line: 258, column: 2, scope: !5317)
!5479 = !DILocation(line: 268, column: 2, scope: !5317)
!5480 = !DILocation(line: 270, column: 7, scope: !5300)
!5481 = !DILocation(line: 270, column: 6, scope: !5291)
!5482 = !DILocation(line: 271, column: 45, scope: !5300)
!5483 = !DILocation(line: 271, column: 50, scope: !5300)
!5484 = !DILocation(line: 59, column: 29, scope: !3974, inlinedAt: !5299)
!5485 = !DILocation(line: 59, column: 32, scope: !3974, inlinedAt: !5299)
!5486 = !DILocation(line: 882, column: 31, scope: !3972, inlinedAt: !5298)
!5487 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !5304)
!5488 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !5304)
!5489 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !5304)
!5490 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !5304)
!5491 = !DILocation(line: 883, column: 34, scope: !3972, inlinedAt: !5298)
!5492 = !DILocation(line: 883, column: 37, scope: !3972, inlinedAt: !5298)
!5493 = !DILocation(line: 160, column: 9, scope: !3966, inlinedAt: !5297)
!5494 = !DILocation(line: 160, column: 11, scope: !3966, inlinedAt: !5297)
!5495 = !DILocation(line: 271, column: 3, scope: !5300)
!5496 = !DILocation(line: 272, column: 19, scope: !5291)
!5497 = !DILocation(line: 272, column: 2, scope: !5291)
!5498 = !DILocation(line: 280, column: 7, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5291, file: !1, line: 280, column: 6)
!5500 = !DILocation(line: 280, column: 14, scope: !5499)
!5501 = !DILocation(line: 280, column: 29, scope: !5499)
!5502 = !DILocation(line: 280, column: 34, scope: !5499)
!5503 = !DILocation(line: 280, column: 17, scope: !5499)
!5504 = !DILocation(line: 280, column: 6, scope: !5291)
!5505 = !DILocation(line: 281, column: 24, scope: !5499)
!5506 = !DILocation(line: 281, column: 3, scope: !5499)
!5507 = !DILocation(line: 283, column: 2, scope: !5291)
!5508 = !DILocation(line: 283, column: 2, scope: !5509)
!5509 = distinct !DILexicalBlock(scope: !5291, file: !1, line: 283, column: 2)
!5510 = !DILocation(line: 283, column: 2, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5509, file: !1, line: 283, column: 2)
!5512 = !DILocation(line: 283, column: 2, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5509, file: !1, line: 283, column: 2)
!5514 = !{i32 -2142989218}
!5515 = !DILocation(line: 283, column: 2, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5513, file: !1, line: 283, column: 2)
!5517 = !DILocation(line: 285, column: 2, scope: !5291)
!5518 = !DILocation(line: 288, column: 7, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5291, file: !1, line: 288, column: 6)
!5520 = !DILocation(line: 288, column: 6, scope: !5291)
!5521 = !DILocation(line: 289, column: 3, scope: !5519)
!5522 = !DILocation(line: 290, column: 9, scope: !5291)
!5523 = !DILocation(line: 290, column: 2, scope: !5291)
!5524 = !DILocation(line: 291, column: 1, scope: !5291)
!5525 = distinct !DISubprogram(name: "writer_trylock", scope: !1, file: !1, line: 104, type: !4049, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5526 = !DILocation(line: 188, column: 67, scope: !4052, inlinedAt: !5527)
!5527 = distinct !DILocation(line: 1506, column: 9, scope: !4057, inlinedAt: !5528)
!5528 = distinct !DILocation(line: 437, column: 9, scope: !4059, inlinedAt: !5529)
!5529 = distinct !DILocation(line: 114, column: 7, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5531, file: !1, line: 114, column: 7)
!5531 = distinct !DILexicalBlock(scope: !5525, file: !1, line: 111, column: 5)
!5532 = !DILocation(line: 188, column: 75, scope: !4052, inlinedAt: !5527)
!5533 = !DILocation(line: 188, column: 84, scope: !4052, inlinedAt: !5527)
!5534 = !DILocation(line: 190, column: 9, scope: !4071, inlinedAt: !5527)
!5535 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !5536)
!5536 = distinct !DILocation(line: 1505, column: 2, scope: !4057, inlinedAt: !5528)
!5537 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !5536)
!5538 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !5539)
!5539 = distinct !DILocation(line: 1504, column: 2, scope: !4057, inlinedAt: !5528)
!5540 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !5539)
!5541 = !DILocation(line: 1502, column: 34, scope: !4057, inlinedAt: !5528)
!5542 = !DILocation(line: 1502, column: 42, scope: !4057, inlinedAt: !5528)
!5543 = !DILocation(line: 1502, column: 51, scope: !4057, inlinedAt: !5528)
!5544 = !DILocation(line: 435, column: 40, scope: !4059, inlinedAt: !5529)
!5545 = !DILocation(line: 435, column: 49, scope: !4059, inlinedAt: !5529)
!5546 = !DILocation(line: 435, column: 59, scope: !4059, inlinedAt: !5529)
!5547 = !DILocation(line: 158, column: 57, scope: !3966, inlinedAt: !5548)
!5548 = distinct !DILocation(line: 883, column: 9, scope: !3972, inlinedAt: !5549)
!5549 = distinct !DILocation(line: 59, column: 9, scope: !3974, inlinedAt: !5550)
!5550 = distinct !DILocation(line: 110, column: 15, scope: !5525)
!5551 = !DILocation(line: 158, column: 72, scope: !3966, inlinedAt: !5548)
!5552 = !DILocation(line: 160, column: 13, scope: !3981, inlinedAt: !5548)
!5553 = !DILocation(line: 99, column: 79, scope: !3984, inlinedAt: !5554)
!5554 = distinct !DILocation(line: 882, column: 2, scope: !3972, inlinedAt: !5549)
!5555 = !DILocation(line: 99, column: 89, scope: !3984, inlinedAt: !5554)
!5556 = !DILocation(line: 880, column: 25, scope: !3972, inlinedAt: !5549)
!5557 = !DILocation(line: 880, column: 40, scope: !3972, inlinedAt: !5549)
!5558 = !DILocation(line: 57, column: 29, scope: !3974, inlinedAt: !5550)
!5559 = !DILocation(line: 57, column: 47, scope: !3974, inlinedAt: !5550)
!5560 = !DILocalVariable(name: "sem", arg: 1, scope: !5525, file: !1, line: 104, type: !3865)
!5561 = !DILocation(line: 104, column: 55, scope: !5525)
!5562 = !DILocalVariable(name: "count", scope: !5525, file: !1, line: 110, type: !109)
!5563 = !DILocation(line: 110, column: 7, scope: !5525)
!5564 = !DILocation(line: 110, column: 58, scope: !5525)
!5565 = !DILocation(line: 110, column: 63, scope: !5525)
!5566 = !DILocation(line: 59, column: 29, scope: !3974, inlinedAt: !5550)
!5567 = !DILocation(line: 59, column: 32, scope: !3974, inlinedAt: !5550)
!5568 = !DILocation(line: 882, column: 31, scope: !3972, inlinedAt: !5549)
!5569 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !5554)
!5570 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !5554)
!5571 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !5554)
!5572 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !5554)
!5573 = !DILocation(line: 883, column: 34, scope: !3972, inlinedAt: !5549)
!5574 = !DILocation(line: 883, column: 37, scope: !3972, inlinedAt: !5549)
!5575 = !DILocation(line: 160, column: 9, scope: !3966, inlinedAt: !5548)
!5576 = !DILocation(line: 160, column: 11, scope: !3966, inlinedAt: !5548)
!5577 = !DILocation(line: 111, column: 2, scope: !5525)
!5578 = !DILocation(line: 112, column: 8, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5531, file: !1, line: 112, column: 7)
!5580 = !DILocation(line: 112, column: 14, scope: !5579)
!5581 = !DILocation(line: 112, column: 35, scope: !5579)
!5582 = !DILocation(line: 112, column: 7, scope: !5531)
!5583 = !DILocation(line: 113, column: 4, scope: !5579)
!5584 = !DILocation(line: 114, column: 32, scope: !5530)
!5585 = !DILocation(line: 114, column: 37, scope: !5530)
!5586 = !DILocation(line: 114, column: 52, scope: !5530)
!5587 = !DILocation(line: 114, column: 58, scope: !5530)
!5588 = !DILocation(line: 437, column: 30, scope: !4059, inlinedAt: !5529)
!5589 = !DILocation(line: 437, column: 40, scope: !4059, inlinedAt: !5529)
!5590 = !DILocation(line: 437, column: 45, scope: !4059, inlinedAt: !5529)
!5591 = !DILocation(line: 1504, column: 31, scope: !4057, inlinedAt: !5528)
!5592 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !5539)
!5593 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !5539)
!5594 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !5539)
!5595 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !5539)
!5596 = !DILocation(line: 1505, column: 31, scope: !4057, inlinedAt: !5528)
!5597 = !DILocation(line: 101, column: 20, scope: !3984, inlinedAt: !5536)
!5598 = !DILocation(line: 101, column: 23, scope: !3984, inlinedAt: !5536)
!5599 = !DILocation(line: 101, column: 2, scope: !3984, inlinedAt: !5536)
!5600 = !DILocation(line: 102, column: 2, scope: !3984, inlinedAt: !5536)
!5601 = !DILocation(line: 1506, column: 35, scope: !4057, inlinedAt: !5528)
!5602 = !DILocation(line: 1506, column: 38, scope: !4057, inlinedAt: !5528)
!5603 = !DILocation(line: 1506, column: 43, scope: !4057, inlinedAt: !5528)
!5604 = !DILocation(line: 190, column: 9, scope: !4156, inlinedAt: !5527)
!5605 = !DILocation(line: 190, column: 9, scope: !4052, inlinedAt: !5527)
!5606 = !DILocation(line: 114, column: 7, scope: !5531)
!5607 = !DILocation(line: 115, column: 4, scope: !5530)
!5608 = !DILocation(line: 116, column: 2, scope: !5531)
!5609 = distinct !{!5609, !5577, !5610}
!5610 = !DILocation(line: 116, column: 12, scope: !5525)
!5611 = !DILocation(line: 117, column: 1, scope: !5525)
!5612 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4768, file: !4768, line: 666, type: !5613, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5613 = !DISubroutineType(types: !5614)
!5614 = !{!122}
!5615 = !DILocalVariable(name: "f", scope: !5612, file: !4768, line: 668, type: !122)
!5616 = !DILocation(line: 668, column: 16, scope: !5612)
!5617 = !DILocation(line: 670, column: 6, scope: !5612)
!5618 = !DILocation(line: 670, column: 4, scope: !5612)
!5619 = !DILocation(line: 671, column: 2, scope: !5612)
!5620 = !DILocation(line: 672, column: 9, scope: !5612)
!5621 = !DILocation(line: 672, column: 2, scope: !5612)
!5622 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4768, file: !4768, line: 651, type: !5623, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5623 = !DISubroutineType(types: !5624)
!5624 = !{null, !122}
!5625 = !DILocalVariable(name: "f", arg: 1, scope: !5622, file: !4768, line: 651, type: !122)
!5626 = !DILocation(line: 651, column: 65, scope: !5622)
!5627 = !DILocalVariable(name: "__edi", scope: !5628, file: !4768, line: 653, type: !122)
!5628 = distinct !DILexicalBlock(scope: !5622, file: !4768, line: 653, column: 2)
!5629 = !DILocation(line: 653, column: 2, scope: !5628)
!5630 = !DILocalVariable(name: "__esi", scope: !5628, file: !4768, line: 653, type: !122)
!5631 = !DILocalVariable(name: "__edx", scope: !5628, file: !4768, line: 653, type: !122)
!5632 = !DILocalVariable(name: "__ecx", scope: !5628, file: !4768, line: 653, type: !122)
!5633 = !DILocalVariable(name: "__eax", scope: !5628, file: !4768, line: 653, type: !122)
!5634 = !{i32 -2145786426, i32 -2145785676, i32 -2145785442, i32 -2145785391, i32 -2145785363, i32 -2145785338, i32 -2145785654, i32 -2145785641, i32 -2145785203, i32 -2145785084, i32 -2145785549, i32 -2145785522, i32 -2145785494, i32 -2145785464}
!5635 = !DILocation(line: 654, column: 1, scope: !5622)
!5636 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4768, file: !4768, line: 646, type: !5613, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !178)
!5637 = !DILocalVariable(name: "__ret", scope: !5638, file: !4768, line: 648, type: !122)
!5638 = distinct !DILexicalBlock(scope: !5636, file: !4768, line: 648, column: 9)
!5639 = !DILocation(line: 648, column: 9, scope: !5638)
!5640 = !DILocalVariable(name: "__edi", scope: !5638, file: !4768, line: 648, type: !122)
!5641 = !DILocalVariable(name: "__esi", scope: !5638, file: !4768, line: 648, type: !122)
!5642 = !DILocalVariable(name: "__edx", scope: !5638, file: !4768, line: 648, type: !122)
!5643 = !DILocalVariable(name: "__ecx", scope: !5638, file: !4768, line: 648, type: !122)
!5644 = !DILocalVariable(name: "__eax", scope: !5638, file: !4768, line: 648, type: !122)
!5645 = !DILocation(line: 648, column: 9, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5647, file: !4768, line: 648, column: 9)
!5647 = distinct !DILexicalBlock(scope: !5638, file: !4768, line: 648, column: 9)
!5648 = !{i32 -2145790893, i32 -2145788578, i32 -2145788344, i32 -2145788293, i32 -2145788265, i32 -2145788240, i32 -2145788556, i32 -2145788543, i32 -2145788105, i32 -2145787986, i32 -2145788451, i32 -2145788424, i32 -2145788396, i32 -2145788366}
!5649 = !DILocalVariable(name: "__mask", scope: !5650, file: !4768, line: 648, type: !122)
!5650 = distinct !DILexicalBlock(scope: !5646, file: !4768, line: 648, column: 9)
!5651 = !DILocation(line: 648, column: 9, scope: !5650)
!5652 = !DILocation(line: 648, column: 9, scope: !5647)
!5653 = !DILocation(line: 648, column: 2, scope: !5636)
