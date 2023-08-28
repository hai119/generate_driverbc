; ModuleID = '../bcout/drivers/input/ff-core.llvm.bc'
source_filename = "drivers/input/ff-core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.lock_class_key = type {}
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.47, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.50 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i64, i64 }
%union.anon.50 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.46, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
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
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.60 }
%union.anon.60 = type { %struct.anon.61 }
%struct.anon.61 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.module = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.3, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.52 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.53, i32 }
%union.anon.53 = type { %struct.kuid_t }
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
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.59, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.54 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.55 = type { %struct.callback_head }
%union.anon.56 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.18 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.25, %union.anon.29, %struct.key_restriction* }
%union.anon.23 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.24 = type { i64 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.26, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.26 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.29 = type { %union.key_payload }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.32, %union.anon.33, i32 }
%struct.request_queue = type opaque
%union.anon.32 = type { %struct.list_head }
%union.anon.33 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.34 }
%struct.anon.34 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.38 }
%struct.anon.38 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.45, i32, [12 x i8] }
%union.anon.45 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.46 = type { %struct.callback_head }
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
%struct.kmem_cache = type opaque
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.input_dev_poller = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
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
%struct.input_value = type { i16, i16, i32 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.ff_rumble_effect = type { i16, i16 }

@.str = private unnamed_addr constant [44 x i8] c"cannot allocate device without any effects\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cannot allocate more than FF_MAX_EFFECTS effects\0A\00", align 1
@input_ff_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str.2 = private unnamed_addr constant [11 x i8] c"&ff->mutex\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @input_ff_upload(%struct.input_dev* %dev, %struct.ff_effect* %effect, %struct.file* %file) #0 !dbg !3759 {
entry:
  %lock.addr.i90 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i90, metadata !3762, metadata !DIExpression()), !dbg !3768
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3770, metadata !DIExpression()), !dbg !3772
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  %file.addr = alloca %struct.file*, align 8
  %ff = alloca %struct.ff_device*, align 8
  %old = alloca %struct.ff_effect*, align 8
  %ret = alloca i32, align 4
  %id = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !3774, metadata !DIExpression()), !dbg !3775
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !3776, metadata !DIExpression()), !dbg !3777
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !3778, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff, metadata !3780, metadata !DIExpression()), !dbg !3781
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3782
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 20, !dbg !3783
  %1 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8, !dbg !3783
  store %struct.ff_device* %1, %struct.ff_device** %ff, align 8, !dbg !3781
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old, metadata !3784, metadata !DIExpression()), !dbg !3785
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3786, metadata !DIExpression()), !dbg !3787
  store i32 0, i32* %ret, align 4, !dbg !3787
  call void @llvm.dbg.declare(metadata i32* %id, metadata !3788, metadata !DIExpression()), !dbg !3789
  %2 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3790
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %2, i32 0, i32 5, !dbg !3792
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !3790
  %call = call zeroext i1 @test_bit(i64 21, i64* %arraydecay) #10, !dbg !3793
  br i1 %call, label %if.end, label %if.then, !dbg !3794

if.then:                                          ; preds = %entry
  store i32 -38, i32* %retval, align 4, !dbg !3795
  br label %return, !dbg !3795

if.end:                                           ; preds = %entry
  %3 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3796
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %3, i32 0, i32 0, !dbg !3798
  %4 = load i16, i16* %type, align 8, !dbg !3798
  %conv = zext i16 %4 to i32, !dbg !3796
  %cmp = icmp slt i32 %conv, 80, !dbg !3799
  br i1 %cmp, label %if.then12, label %lor.lhs.false, !dbg !3800

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3801
  %type3 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %5, i32 0, i32 0, !dbg !3802
  %6 = load i16, i16* %type3, align 8, !dbg !3802
  %conv4 = zext i16 %6 to i32, !dbg !3801
  %cmp5 = icmp sgt i32 %conv4, 87, !dbg !3803
  br i1 %cmp5, label %if.then12, label %lor.lhs.false7, !dbg !3804

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %7 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3805
  %type8 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %7, i32 0, i32 0, !dbg !3806
  %8 = load i16, i16* %type8, align 8, !dbg !3806
  %conv9 = zext i16 %8 to i64, !dbg !3805
  %9 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3807
  %ffbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 12, !dbg !3808
  %arraydecay10 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit, i64 0, i64 0, !dbg !3807
  %call11 = call zeroext i1 @test_bit(i64 %conv9, i64* %arraydecay10) #10, !dbg !3809
  br i1 %call11, label %if.end13, label %if.then12, !dbg !3810

if.then12:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !3811
  br label %return, !dbg !3811

if.end13:                                         ; preds = %lor.lhs.false7
  %10 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3813
  %type14 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %10, i32 0, i32 0, !dbg !3815
  %11 = load i16, i16* %type14, align 8, !dbg !3815
  %conv15 = zext i16 %11 to i32, !dbg !3813
  %cmp16 = icmp eq i32 %conv15, 81, !dbg !3816
  br i1 %cmp16, label %land.lhs.true, label %if.end37, !dbg !3817

land.lhs.true:                                    ; preds = %if.end13
  %12 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3818
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %12, i32 0, i32 5, !dbg !3819
  %periodic = bitcast %union.anon* %u to %struct.ff_periodic_effect*, !dbg !3820
  %waveform = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic, i32 0, i32 0, !dbg !3821
  %13 = load i16, i16* %waveform, align 8, !dbg !3821
  %conv18 = zext i16 %13 to i32, !dbg !3818
  %cmp19 = icmp slt i32 %conv18, 88, !dbg !3822
  br i1 %cmp19, label %if.then36, label %lor.lhs.false21, !dbg !3823

lor.lhs.false21:                                  ; preds = %land.lhs.true
  %14 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3824
  %u22 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %14, i32 0, i32 5, !dbg !3825
  %periodic23 = bitcast %union.anon* %u22 to %struct.ff_periodic_effect*, !dbg !3826
  %waveform24 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic23, i32 0, i32 0, !dbg !3827
  %15 = load i16, i16* %waveform24, align 8, !dbg !3827
  %conv25 = zext i16 %15 to i32, !dbg !3824
  %cmp26 = icmp sgt i32 %conv25, 93, !dbg !3828
  br i1 %cmp26, label %if.then36, label %lor.lhs.false28, !dbg !3829

lor.lhs.false28:                                  ; preds = %lor.lhs.false21
  %16 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3830
  %u29 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %16, i32 0, i32 5, !dbg !3831
  %periodic30 = bitcast %union.anon* %u29 to %struct.ff_periodic_effect*, !dbg !3832
  %waveform31 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic30, i32 0, i32 0, !dbg !3833
  %17 = load i16, i16* %waveform31, align 8, !dbg !3833
  %conv32 = zext i16 %17 to i64, !dbg !3830
  %18 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3834
  %ffbit33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 12, !dbg !3835
  %arraydecay34 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit33, i64 0, i64 0, !dbg !3834
  %call35 = call zeroext i1 @test_bit(i64 %conv32, i64* %arraydecay34) #10, !dbg !3836
  br i1 %call35, label %if.end37, label %if.then36, !dbg !3837

if.then36:                                        ; preds = %lor.lhs.false28, %lor.lhs.false21, %land.lhs.true
  store i32 -22, i32* %retval, align 4, !dbg !3838
  br label %return, !dbg !3838

if.end37:                                         ; preds = %lor.lhs.false28, %if.end13
  %19 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3840
  %type38 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %19, i32 0, i32 0, !dbg !3842
  %20 = load i16, i16* %type38, align 8, !dbg !3842
  %conv39 = zext i16 %20 to i64, !dbg !3840
  %21 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3843
  %ffbit40 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %21, i32 0, i32 7, !dbg !3844
  %arraydecay41 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit40, i64 0, i64 0, !dbg !3843
  %call42 = call zeroext i1 @test_bit(i64 %conv39, i64* %arraydecay41) #10, !dbg !3845
  br i1 %call42, label %if.end47, label %if.then43, !dbg !3846

if.then43:                                        ; preds = %if.end37
  %22 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3847
  %23 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3849
  %call44 = call i32 @compat_effect(%struct.ff_device* %22, %struct.ff_effect* %23) #10, !dbg !3850
  store i32 %call44, i32* %ret, align 4, !dbg !3851
  %24 = load i32, i32* %ret, align 4, !dbg !3852
  %tobool = icmp ne i32 %24, 0, !dbg !3852
  br i1 %tobool, label %if.then45, label %if.end46, !dbg !3854

if.then45:                                        ; preds = %if.then43
  %25 = load i32, i32* %ret, align 4, !dbg !3855
  store i32 %25, i32* %retval, align 4, !dbg !3856
  br label %return, !dbg !3856

if.end46:                                         ; preds = %if.then43
  br label %if.end47, !dbg !3857

if.end47:                                         ; preds = %if.end46, %if.end37
  %26 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3858
  %mutex = getelementptr inbounds %struct.ff_device, %struct.ff_device* %26, i32 0, i32 8, !dbg !3859
  call void @mutex_lock(%struct.mutex* %mutex) #10, !dbg !3860
  %27 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3861
  %id48 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %27, i32 0, i32 1, !dbg !3863
  %28 = load i16, i16* %id48, align 2, !dbg !3863
  %conv49 = sext i16 %28 to i32, !dbg !3861
  %cmp50 = icmp eq i32 %conv49, -1, !dbg !3864
  br i1 %cmp50, label %if.then52, label %if.else, !dbg !3865

if.then52:                                        ; preds = %if.end47
  store i32 0, i32* %id, align 4, !dbg !3866
  br label %for.cond, !dbg !3869

for.cond:                                         ; preds = %for.inc, %if.then52
  %29 = load i32, i32* %id, align 4, !dbg !3870
  %30 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3872
  %max_effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %30, i32 0, i32 9, !dbg !3873
  %31 = load i32, i32* %max_effects, align 8, !dbg !3873
  %cmp53 = icmp slt i32 %29, %31, !dbg !3874
  br i1 %cmp53, label %for.body, label %for.end, !dbg !3875

for.body:                                         ; preds = %for.cond
  %32 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3876
  %effect_owners = getelementptr inbounds %struct.ff_device, %struct.ff_device* %32, i32 0, i32 11, !dbg !3878
  %33 = load i32, i32* %id, align 4, !dbg !3879
  %idxprom = sext i32 %33 to i64, !dbg !3876
  %arrayidx = getelementptr [0 x %struct.file*], [0 x %struct.file*]* %effect_owners, i64 0, i64 %idxprom, !dbg !3876
  %34 = load %struct.file*, %struct.file** %arrayidx, align 8, !dbg !3876
  %tobool55 = icmp ne %struct.file* %34, null, !dbg !3876
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !3880

if.then56:                                        ; preds = %for.body
  br label %for.end, !dbg !3881

if.end57:                                         ; preds = %for.body
  br label %for.inc, !dbg !3882

for.inc:                                          ; preds = %if.end57
  %35 = load i32, i32* %id, align 4, !dbg !3883
  %inc = add i32 %35, 1, !dbg !3883
  store i32 %inc, i32* %id, align 4, !dbg !3883
  br label %for.cond, !dbg !3884, !llvm.loop !3885

for.end:                                          ; preds = %if.then56, %for.cond
  %36 = load i32, i32* %id, align 4, !dbg !3887
  %37 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3889
  %max_effects58 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %37, i32 0, i32 9, !dbg !3890
  %38 = load i32, i32* %max_effects58, align 8, !dbg !3890
  %cmp59 = icmp sge i32 %36, %38, !dbg !3891
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !3892

if.then61:                                        ; preds = %for.end
  store i32 -28, i32* %ret, align 4, !dbg !3893
  br label %out, !dbg !3895

if.end62:                                         ; preds = %for.end
  %39 = load i32, i32* %id, align 4, !dbg !3896
  %conv63 = trunc i32 %39 to i16, !dbg !3896
  %40 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3897
  %id64 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %40, i32 0, i32 1, !dbg !3898
  store i16 %conv63, i16* %id64, align 2, !dbg !3899
  store %struct.ff_effect* null, %struct.ff_effect** %old, align 8, !dbg !3900
  br label %if.end77, !dbg !3901

if.else:                                          ; preds = %if.end47
  %41 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3902
  %id65 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %41, i32 0, i32 1, !dbg !3904
  %42 = load i16, i16* %id65, align 2, !dbg !3904
  %conv66 = sext i16 %42 to i32, !dbg !3902
  store i32 %conv66, i32* %id, align 4, !dbg !3905
  %43 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3906
  %44 = load i32, i32* %id, align 4, !dbg !3907
  %45 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !3908
  %call67 = call i32 @check_effect_access(%struct.ff_device* %43, i32 %44, %struct.file* %45) #10, !dbg !3909
  store i32 %call67, i32* %ret, align 4, !dbg !3910
  %46 = load i32, i32* %ret, align 4, !dbg !3911
  %tobool68 = icmp ne i32 %46, 0, !dbg !3911
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !3913

if.then69:                                        ; preds = %if.else
  br label %out, !dbg !3914

if.end70:                                         ; preds = %if.else
  %47 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3915
  %effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %47, i32 0, i32 10, !dbg !3916
  %48 = load %struct.ff_effect*, %struct.ff_effect** %effects, align 8, !dbg !3916
  %49 = load i32, i32* %id, align 4, !dbg !3917
  %idxprom71 = sext i32 %49 to i64, !dbg !3915
  %arrayidx72 = getelementptr %struct.ff_effect, %struct.ff_effect* %48, i64 %idxprom71, !dbg !3915
  store %struct.ff_effect* %arrayidx72, %struct.ff_effect** %old, align 8, !dbg !3918
  %50 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3919
  %51 = load %struct.ff_effect*, %struct.ff_effect** %old, align 8, !dbg !3921
  %call73 = call i32 @check_effects_compatible(%struct.ff_effect* %50, %struct.ff_effect* %51) #10, !dbg !3922
  %tobool74 = icmp ne i32 %call73, 0, !dbg !3922
  br i1 %tobool74, label %if.end76, label %if.then75, !dbg !3923

if.then75:                                        ; preds = %if.end70
  store i32 -22, i32* %ret, align 4, !dbg !3924
  br label %out, !dbg !3926

if.end76:                                         ; preds = %if.end70
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %if.end62
  %52 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3927
  %upload = getelementptr inbounds %struct.ff_device, %struct.ff_device* %52, i32 0, i32 0, !dbg !3928
  %53 = load i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)** %upload, align 8, !dbg !3928
  %54 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3929
  %55 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3930
  %56 = load %struct.ff_effect*, %struct.ff_effect** %old, align 8, !dbg !3931
  %call78 = call i32 %53(%struct.input_dev* %54, %struct.ff_effect* %55, %struct.ff_effect* %56) #10, !dbg !3927
  store i32 %call78, i32* %ret, align 4, !dbg !3932
  %57 = load i32, i32* %ret, align 4, !dbg !3933
  %tobool79 = icmp ne i32 %57, 0, !dbg !3933
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !3935

if.then80:                                        ; preds = %if.end77
  br label %out, !dbg !3936

if.end81:                                         ; preds = %if.end77
  %58 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3937
  %event_lock = getelementptr inbounds %struct.input_dev, %struct.input_dev* %58, i32 0, i32 36, !dbg !3938
  store %struct.spinlock* %event_lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #11, !dbg !3939
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3942, !srcloc !3944
  %59 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3945
  %60 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %59, i32 0, i32 0, !dbg !3945
  %rlock.i = bitcast %union.anon.0* %60 to %struct.raw_spinlock*, !dbg !3945
  %61 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3947
  %effects82 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %61, i32 0, i32 10, !dbg !3948
  %62 = load %struct.ff_effect*, %struct.ff_effect** %effects82, align 8, !dbg !3948
  %63 = load i32, i32* %id, align 4, !dbg !3949
  %idxprom83 = sext i32 %63 to i64, !dbg !3947
  %arrayidx84 = getelementptr %struct.ff_effect, %struct.ff_effect* %62, i64 %idxprom83, !dbg !3947
  %64 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3950
  %65 = bitcast %struct.ff_effect* %arrayidx84 to i8*, !dbg !3951
  %66 = bitcast %struct.ff_effect* %64 to i8*, !dbg !3951
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 48, i1 false), !dbg !3951
  %67 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !3952
  %68 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3953
  %effect_owners85 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %68, i32 0, i32 11, !dbg !3954
  %69 = load i32, i32* %id, align 4, !dbg !3955
  %idxprom86 = sext i32 %69 to i64, !dbg !3953
  %arrayidx87 = getelementptr [0 x %struct.file*], [0 x %struct.file*]* %effect_owners85, i64 0, i64 %idxprom86, !dbg !3953
  store %struct.file* %67, %struct.file** %arrayidx87, align 8, !dbg !3956
  %70 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3957
  %event_lock88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %70, i32 0, i32 36, !dbg !3958
  store %struct.spinlock* %event_lock88, %struct.spinlock** %lock.addr.i90, align 8
  call void @arch_local_irq_enable() #11, !dbg !3959
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !3962, !srcloc !3964
  %71 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i90, align 8, !dbg !3965
  %72 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %71, i32 0, i32 0, !dbg !3965
  %rlock.i91 = bitcast %union.anon.0* %72 to %struct.raw_spinlock*, !dbg !3965
  br label %out, !dbg !3967

out:                                              ; preds = %if.end81, %if.then80, %if.then75, %if.then69, %if.then61
  call void @llvm.dbg.label(metadata !3968), !dbg !3969
  %73 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3970
  %mutex89 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %73, i32 0, i32 8, !dbg !3971
  call void @mutex_unlock(%struct.mutex* %mutex89) #10, !dbg !3972
  %74 = load i32, i32* %ret, align 4, !dbg !3973
  store i32 %74, i32* %retval, align 4, !dbg !3974
  br label %return, !dbg !3974

return:                                           ; preds = %out, %if.then45, %if.then36, %if.then12, %if.then
  %75 = load i32, i32* %retval, align 4, !dbg !3975
  ret i32 %75, !dbg !3975
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !3976 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !3983, metadata !DIExpression()), !dbg !3986
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !3988, metadata !DIExpression()), !dbg !3989
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !3990, metadata !DIExpression()), !dbg !3991
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3992, metadata !DIExpression()), !dbg !3994
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3996, metadata !DIExpression()), !dbg !3997
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3998, metadata !DIExpression()), !dbg !4006
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4008, metadata !DIExpression()), !dbg !4009
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4010, metadata !DIExpression()), !dbg !4011
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4012, metadata !DIExpression()), !dbg !4013
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4014
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4015
  %div = sdiv i64 %1, 64, !dbg !4015
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4016
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4014
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4017
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4018
  %conv.i = trunc i64 %4 to i32, !dbg !4018
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #11, !dbg !4019
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4020
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4020
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #11, !dbg !4020
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4021
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4021
  br i1 %8, label %cond.true, label %cond.false, !dbg !4021

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4021
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4021
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4022
  %and.i = and i64 %11, 63, !dbg !4023
  %shl.i = shl i64 1, %and.i, !dbg !4024
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4025
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4026
  %shr.i = ashr i64 %13, 6, !dbg !4027
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4025
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4025
  %and1.i = and i64 %shl.i, %14, !dbg !4028
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4029
  %conv = zext i1 %cmp.i to i32, !dbg !4021
  br label %cond.end, !dbg !4021

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4021
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4021
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4030
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4031
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !4032, !srcloc !4033
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4032
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4034
  %tobool.i = trunc i8 %20 to i1, !dbg !4034
  %conv2 = zext i1 %tobool.i to i32, !dbg !4021
  br label %cond.end, !dbg !4021

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4021
  %tobool = icmp ne i32 %cond, 0, !dbg !4021
  ret i1 %tobool, !dbg !4035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @compat_effect(%struct.ff_device* %ff, %struct.ff_effect* %effect) #0 !dbg !4036 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.ff_device*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  %magnitude = alloca i32, align 4
  %__UNIQUE_ID___x204 = alloca i32, align 4
  %__UNIQUE_ID___y205 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.ff_device* %ff, %struct.ff_device** %ff.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff.addr, metadata !4039, metadata !DIExpression()), !dbg !4040
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !4041, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.declare(metadata i32* %magnitude, metadata !4043, metadata !DIExpression()), !dbg !4044
  %0 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4045
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 0, !dbg !4046
  %1 = load i16, i16* %type, align 8, !dbg !4046
  %conv = zext i16 %1 to i32, !dbg !4045
  switch i32 %conv, label %sw.default [
    i32 80, label %sw.bb
  ], !dbg !4047

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ff_device*, %struct.ff_device** %ff.addr, align 8, !dbg !4048
  %ffbit = getelementptr inbounds %struct.ff_device, %struct.ff_device* %2, i32 0, i32 7, !dbg !4051
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit, i64 0, i64 0, !dbg !4048
  %call = call zeroext i1 @test_bit(i64 81, i64* %arraydecay) #10, !dbg !4052
  br i1 %call, label %if.end, label %if.then, !dbg !4053

if.then:                                          ; preds = %sw.bb
  store i32 -22, i32* %retval, align 4, !dbg !4054
  br label %return, !dbg !4054

if.end:                                           ; preds = %sw.bb
  %3 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4055
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %3, i32 0, i32 5, !dbg !4056
  %rumble = bitcast %union.anon* %u to %struct.ff_rumble_effect*, !dbg !4057
  %strong_magnitude = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble, i32 0, i32 0, !dbg !4058
  %4 = load i16, i16* %strong_magnitude, align 8, !dbg !4058
  %conv1 = zext i16 %4 to i32, !dbg !4055
  %div = sdiv i32 %conv1, 3, !dbg !4059
  %5 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4060
  %u2 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %5, i32 0, i32 5, !dbg !4061
  %rumble3 = bitcast %union.anon* %u2 to %struct.ff_rumble_effect*, !dbg !4062
  %weak_magnitude = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble3, i32 0, i32 1, !dbg !4063
  %6 = load i16, i16* %weak_magnitude, align 2, !dbg !4063
  %conv4 = zext i16 %6 to i32, !dbg !4060
  %div5 = sdiv i32 %conv4, 6, !dbg !4064
  %add = add i32 %div, %div5, !dbg !4065
  store i32 %add, i32* %magnitude, align 4, !dbg !4066
  %7 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4067
  %type6 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %7, i32 0, i32 0, !dbg !4068
  store i16 81, i16* %type6, align 8, !dbg !4069
  %8 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4070
  %u7 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %8, i32 0, i32 5, !dbg !4071
  %periodic = bitcast %union.anon* %u7 to %struct.ff_periodic_effect*, !dbg !4072
  %waveform = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic, i32 0, i32 0, !dbg !4073
  store i16 90, i16* %waveform, align 8, !dbg !4074
  %9 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4075
  %u8 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %9, i32 0, i32 5, !dbg !4076
  %periodic9 = bitcast %union.anon* %u8 to %struct.ff_periodic_effect*, !dbg !4077
  %period = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic9, i32 0, i32 1, !dbg !4078
  store i16 50, i16* %period, align 2, !dbg !4079
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x204, metadata !4080, metadata !DIExpression()), !dbg !4082
  %10 = load i32, i32* %magnitude, align 4, !dbg !4082
  store i32 %10, i32* %__UNIQUE_ID___x204, align 4, !dbg !4082
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y205, metadata !4083, metadata !DIExpression()), !dbg !4082
  store i32 32767, i32* %__UNIQUE_ID___y205, align 4, !dbg !4082
  %11 = load i32, i32* %__UNIQUE_ID___x204, align 4, !dbg !4082
  %12 = load i32, i32* %__UNIQUE_ID___y205, align 4, !dbg !4082
  %cmp = icmp sgt i32 %11, %12, !dbg !4082
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4082

cond.true:                                        ; preds = %if.end
  %13 = load i32, i32* %__UNIQUE_ID___x204, align 4, !dbg !4082
  br label %cond.end, !dbg !4082

cond.false:                                       ; preds = %if.end
  %14 = load i32, i32* %__UNIQUE_ID___y205, align 4, !dbg !4082
  br label %cond.end, !dbg !4082

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !4082
  store i32 %cond, i32* %tmp, align 4, !dbg !4082
  %15 = load i32, i32* %tmp, align 4, !dbg !4082
  %conv11 = trunc i32 %15 to i16, !dbg !4084
  %16 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4085
  %u12 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %16, i32 0, i32 5, !dbg !4086
  %periodic13 = bitcast %union.anon* %u12 to %struct.ff_periodic_effect*, !dbg !4087
  %magnitude14 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic13, i32 0, i32 2, !dbg !4088
  store i16 %conv11, i16* %magnitude14, align 4, !dbg !4089
  %17 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4090
  %u15 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %17, i32 0, i32 5, !dbg !4091
  %periodic16 = bitcast %union.anon* %u15 to %struct.ff_periodic_effect*, !dbg !4092
  %offset = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic16, i32 0, i32 3, !dbg !4093
  store i16 0, i16* %offset, align 2, !dbg !4094
  %18 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4095
  %u17 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %18, i32 0, i32 5, !dbg !4096
  %periodic18 = bitcast %union.anon* %u17 to %struct.ff_periodic_effect*, !dbg !4097
  %phase = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic18, i32 0, i32 4, !dbg !4098
  store i16 0, i16* %phase, align 8, !dbg !4099
  %19 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4100
  %u19 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %19, i32 0, i32 5, !dbg !4101
  %periodic20 = bitcast %union.anon* %u19 to %struct.ff_periodic_effect*, !dbg !4102
  %envelope = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic20, i32 0, i32 5, !dbg !4103
  %attack_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope, i32 0, i32 0, !dbg !4104
  store i16 0, i16* %attack_length, align 2, !dbg !4105
  %20 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4106
  %u21 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %20, i32 0, i32 5, !dbg !4107
  %periodic22 = bitcast %union.anon* %u21 to %struct.ff_periodic_effect*, !dbg !4108
  %envelope23 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic22, i32 0, i32 5, !dbg !4109
  %attack_level = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope23, i32 0, i32 1, !dbg !4110
  store i16 0, i16* %attack_level, align 2, !dbg !4111
  %21 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4112
  %u24 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %21, i32 0, i32 5, !dbg !4113
  %periodic25 = bitcast %union.anon* %u24 to %struct.ff_periodic_effect*, !dbg !4114
  %envelope26 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic25, i32 0, i32 5, !dbg !4115
  %fade_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope26, i32 0, i32 2, !dbg !4116
  store i16 0, i16* %fade_length, align 2, !dbg !4117
  %22 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4118
  %u27 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %22, i32 0, i32 5, !dbg !4119
  %periodic28 = bitcast %union.anon* %u27 to %struct.ff_periodic_effect*, !dbg !4120
  %envelope29 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic28, i32 0, i32 5, !dbg !4121
  %fade_level = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope29, i32 0, i32 3, !dbg !4122
  store i16 0, i16* %fade_level, align 2, !dbg !4123
  store i32 0, i32* %retval, align 4, !dbg !4124
  br label %return, !dbg !4124

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4125
  br label %return, !dbg !4125

return:                                           ; preds = %sw.default, %cond.end, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !4126
  ret i32 %23, !dbg !4126
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @check_effect_access(%struct.ff_device* %ff, i32 %effect_id, %struct.file* %file) #0 !dbg !4127 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.ff_device*, align 8
  %effect_id.addr = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  store %struct.ff_device* %ff, %struct.ff_device** %ff.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff.addr, metadata !4130, metadata !DIExpression()), !dbg !4131
  store i32 %effect_id, i32* %effect_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %effect_id.addr, metadata !4132, metadata !DIExpression()), !dbg !4133
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4134, metadata !DIExpression()), !dbg !4135
  %0 = load i32, i32* %effect_id.addr, align 4, !dbg !4136
  %cmp = icmp slt i32 %0, 0, !dbg !4138
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4139

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %effect_id.addr, align 4, !dbg !4140
  %2 = load %struct.ff_device*, %struct.ff_device** %ff.addr, align 8, !dbg !4141
  %max_effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %2, i32 0, i32 9, !dbg !4142
  %3 = load i32, i32* %max_effects, align 8, !dbg !4142
  %cmp1 = icmp sge i32 %1, %3, !dbg !4143
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !4144

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load %struct.ff_device*, %struct.ff_device** %ff.addr, align 8, !dbg !4145
  %effect_owners = getelementptr inbounds %struct.ff_device, %struct.ff_device* %4, i32 0, i32 11, !dbg !4146
  %5 = load i32, i32* %effect_id.addr, align 4, !dbg !4147
  %idxprom = sext i32 %5 to i64, !dbg !4145
  %arrayidx = getelementptr [0 x %struct.file*], [0 x %struct.file*]* %effect_owners, i64 0, i64 %idxprom, !dbg !4145
  %6 = load %struct.file*, %struct.file** %arrayidx, align 8, !dbg !4145
  %tobool = icmp ne %struct.file* %6, null, !dbg !4145
  br i1 %tobool, label %if.end, label %if.then, !dbg !4148

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, i32* %retval, align 4, !dbg !4149
  br label %return, !dbg !4149

if.end:                                           ; preds = %lor.lhs.false2
  %7 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4150
  %tobool3 = icmp ne %struct.file* %7, null, !dbg !4150
  br i1 %tobool3, label %land.lhs.true, label %if.end9, !dbg !4152

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.ff_device*, %struct.ff_device** %ff.addr, align 8, !dbg !4153
  %effect_owners4 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %8, i32 0, i32 11, !dbg !4154
  %9 = load i32, i32* %effect_id.addr, align 4, !dbg !4155
  %idxprom5 = sext i32 %9 to i64, !dbg !4153
  %arrayidx6 = getelementptr [0 x %struct.file*], [0 x %struct.file*]* %effect_owners4, i64 0, i64 %idxprom5, !dbg !4153
  %10 = load %struct.file*, %struct.file** %arrayidx6, align 8, !dbg !4153
  %11 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4156
  %cmp7 = icmp ne %struct.file* %10, %11, !dbg !4157
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !4158

if.then8:                                         ; preds = %land.lhs.true
  store i32 -13, i32* %retval, align 4, !dbg !4159
  br label %return, !dbg !4159

if.end9:                                          ; preds = %land.lhs.true, %if.end
  store i32 0, i32* %retval, align 4, !dbg !4160
  br label %return, !dbg !4160

return:                                           ; preds = %if.end9, %if.then8, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4161
  ret i32 %12, !dbg !4161
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @check_effects_compatible(%struct.ff_effect* %e1, %struct.ff_effect* %e2) #0 !dbg !4162 {
entry:
  %e1.addr = alloca %struct.ff_effect*, align 8
  %e2.addr = alloca %struct.ff_effect*, align 8
  store %struct.ff_effect* %e1, %struct.ff_effect** %e1.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %e1.addr, metadata !4165, metadata !DIExpression()), !dbg !4166
  store %struct.ff_effect* %e2, %struct.ff_effect** %e2.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %e2.addr, metadata !4167, metadata !DIExpression()), !dbg !4168
  %0 = load %struct.ff_effect*, %struct.ff_effect** %e1.addr, align 8, !dbg !4169
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 0, !dbg !4170
  %1 = load i16, i16* %type, align 8, !dbg !4170
  %conv = zext i16 %1 to i32, !dbg !4169
  %2 = load %struct.ff_effect*, %struct.ff_effect** %e2.addr, align 8, !dbg !4171
  %type1 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %2, i32 0, i32 0, !dbg !4172
  %3 = load i16, i16* %type1, align 8, !dbg !4172
  %conv2 = zext i16 %3 to i32, !dbg !4171
  %cmp = icmp eq i32 %conv, %conv2, !dbg !4173
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4174

land.rhs:                                         ; preds = %entry
  %4 = load %struct.ff_effect*, %struct.ff_effect** %e1.addr, align 8, !dbg !4175
  %type4 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %4, i32 0, i32 0, !dbg !4176
  %5 = load i16, i16* %type4, align 8, !dbg !4176
  %conv5 = zext i16 %5 to i32, !dbg !4175
  %cmp6 = icmp ne i32 %conv5, 81, !dbg !4177
  br i1 %cmp6, label %lor.end, label %lor.rhs, !dbg !4178

lor.rhs:                                          ; preds = %land.rhs
  %6 = load %struct.ff_effect*, %struct.ff_effect** %e1.addr, align 8, !dbg !4179
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %6, i32 0, i32 5, !dbg !4180
  %periodic = bitcast %union.anon* %u to %struct.ff_periodic_effect*, !dbg !4181
  %waveform = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic, i32 0, i32 0, !dbg !4182
  %7 = load i16, i16* %waveform, align 8, !dbg !4182
  %conv8 = zext i16 %7 to i32, !dbg !4179
  %8 = load %struct.ff_effect*, %struct.ff_effect** %e2.addr, align 8, !dbg !4183
  %u9 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %8, i32 0, i32 5, !dbg !4184
  %periodic10 = bitcast %union.anon* %u9 to %struct.ff_periodic_effect*, !dbg !4185
  %waveform11 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic10, i32 0, i32 0, !dbg !4186
  %9 = load i16, i16* %waveform11, align 8, !dbg !4186
  %conv12 = zext i16 %9 to i32, !dbg !4183
  %cmp13 = icmp eq i32 %conv8, %conv12, !dbg !4187
  br label %lor.end, !dbg !4178

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %10 = phi i1 [ true, %land.rhs ], [ %cmp13, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %11 = phi i1 [ false, %entry ], [ %10, %lor.end ], !dbg !4188
  %land.ext = zext i1 %11 to i32, !dbg !4174
  ret i32 %land.ext, !dbg !4189
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @input_ff_erase(%struct.input_dev* %dev, i32 %effect_id, %struct.file* %file) #0 !dbg !4190 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %effect_id.addr = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %ff = alloca %struct.ff_device*, align 8
  %ret = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4193, metadata !DIExpression()), !dbg !4194
  store i32 %effect_id, i32* %effect_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %effect_id.addr, metadata !4195, metadata !DIExpression()), !dbg !4196
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4197, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff, metadata !4199, metadata !DIExpression()), !dbg !4200
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4201
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 20, !dbg !4202
  %1 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8, !dbg !4202
  store %struct.ff_device* %1, %struct.ff_device** %ff, align 8, !dbg !4200
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4203, metadata !DIExpression()), !dbg !4204
  %2 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4205
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %2, i32 0, i32 5, !dbg !4207
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4205
  %call = call zeroext i1 @test_bit(i64 21, i64* %arraydecay) #10, !dbg !4208
  br i1 %call, label %if.end, label %if.then, !dbg !4209

if.then:                                          ; preds = %entry
  store i32 -38, i32* %retval, align 4, !dbg !4210
  br label %return, !dbg !4210

if.end:                                           ; preds = %entry
  %3 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4211
  %mutex = getelementptr inbounds %struct.ff_device, %struct.ff_device* %3, i32 0, i32 8, !dbg !4212
  call void @mutex_lock(%struct.mutex* %mutex) #10, !dbg !4213
  %4 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4214
  %5 = load i32, i32* %effect_id.addr, align 4, !dbg !4215
  %6 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4216
  %call2 = call i32 @erase_effect(%struct.input_dev* %4, i32 %5, %struct.file* %6) #10, !dbg !4217
  store i32 %call2, i32* %ret, align 4, !dbg !4218
  %7 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4219
  %mutex3 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %7, i32 0, i32 8, !dbg !4220
  call void @mutex_unlock(%struct.mutex* %mutex3) #10, !dbg !4221
  %8 = load i32, i32* %ret, align 4, !dbg !4222
  store i32 %8, i32* %retval, align 4, !dbg !4223
  br label %return, !dbg !4223

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4224
  ret i32 %9, !dbg !4224
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @erase_effect(%struct.input_dev* %dev, i32 %effect_id, %struct.file* %file) #0 !dbg !4225 {
entry:
  %lock.addr.i21 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i21, metadata !3762, metadata !DIExpression()), !dbg !4226
  %lock.addr.i19 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i19, metadata !3770, metadata !DIExpression()), !dbg !4232
  %lock.addr.i17 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i17, metadata !3762, metadata !DIExpression()), !dbg !4234
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3770, metadata !DIExpression()), !dbg !4236
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %effect_id.addr = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %ff = alloca %struct.ff_device*, align 8
  %error = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4238, metadata !DIExpression()), !dbg !4239
  store i32 %effect_id, i32* %effect_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %effect_id.addr, metadata !4240, metadata !DIExpression()), !dbg !4241
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4242, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff, metadata !4244, metadata !DIExpression()), !dbg !4245
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4246
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 20, !dbg !4247
  %1 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8, !dbg !4247
  store %struct.ff_device* %1, %struct.ff_device** %ff, align 8, !dbg !4245
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4248, metadata !DIExpression()), !dbg !4249
  %2 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4250
  %3 = load i32, i32* %effect_id.addr, align 4, !dbg !4251
  %4 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4252
  %call = call i32 @check_effect_access(%struct.ff_device* %2, i32 %3, %struct.file* %4) #10, !dbg !4253
  store i32 %call, i32* %error, align 4, !dbg !4254
  %5 = load i32, i32* %error, align 4, !dbg !4255
  %tobool = icmp ne i32 %5, 0, !dbg !4255
  br i1 %tobool, label %if.then, label %if.end, !dbg !4257

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %error, align 4, !dbg !4258
  store i32 %6, i32* %retval, align 4, !dbg !4259
  br label %return, !dbg !4259

if.end:                                           ; preds = %entry
  %7 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4260
  %event_lock = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 36, !dbg !4261
  store %struct.spinlock* %event_lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #11, !dbg !4262
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4263, !srcloc !3944
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4264
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !4264
  %rlock.i = bitcast %union.anon.0* %9 to %struct.raw_spinlock*, !dbg !4264
  %10 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4265
  %playback = getelementptr inbounds %struct.ff_device, %struct.ff_device* %10, i32 0, i32 2, !dbg !4266
  %11 = load i32 (%struct.input_dev*, i32, i32)*, i32 (%struct.input_dev*, i32, i32)** %playback, align 8, !dbg !4266
  %12 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4267
  %13 = load i32, i32* %effect_id.addr, align 4, !dbg !4268
  %call2 = call i32 %11(%struct.input_dev* %12, i32 %13, i32 0) #10, !dbg !4265
  %14 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4269
  %effect_owners = getelementptr inbounds %struct.ff_device, %struct.ff_device* %14, i32 0, i32 11, !dbg !4270
  %15 = load i32, i32* %effect_id.addr, align 4, !dbg !4271
  %idxprom = sext i32 %15 to i64, !dbg !4269
  %arrayidx = getelementptr [0 x %struct.file*], [0 x %struct.file*]* %effect_owners, i64 0, i64 %idxprom, !dbg !4269
  store %struct.file* null, %struct.file** %arrayidx, align 8, !dbg !4272
  %16 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4273
  %event_lock3 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 36, !dbg !4274
  store %struct.spinlock* %event_lock3, %struct.spinlock** %lock.addr.i17, align 8
  call void @arch_local_irq_enable() #11, !dbg !4275
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4276, !srcloc !3964
  %17 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i17, align 8, !dbg !4277
  %18 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %17, i32 0, i32 0, !dbg !4277
  %rlock.i18 = bitcast %union.anon.0* %18 to %struct.raw_spinlock*, !dbg !4277
  %19 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4278
  %erase = getelementptr inbounds %struct.ff_device, %struct.ff_device* %19, i32 0, i32 1, !dbg !4279
  %20 = load i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32)** %erase, align 8, !dbg !4279
  %tobool4 = icmp ne i32 (%struct.input_dev*, i32)* %20, null, !dbg !4278
  br i1 %tobool4, label %if.then5, label %if.end16, !dbg !4280

if.then5:                                         ; preds = %if.end
  %21 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4281
  %erase6 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %21, i32 0, i32 1, !dbg !4282
  %22 = load i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32)** %erase6, align 8, !dbg !4282
  %23 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4283
  %24 = load i32, i32* %effect_id.addr, align 4, !dbg !4284
  %call7 = call i32 %22(%struct.input_dev* %23, i32 %24) #10, !dbg !4281
  store i32 %call7, i32* %error, align 4, !dbg !4285
  %25 = load i32, i32* %error, align 4, !dbg !4286
  %tobool8 = icmp ne i32 %25, 0, !dbg !4286
  br i1 %tobool8, label %if.then9, label %if.end15, !dbg !4287

if.then9:                                         ; preds = %if.then5
  %26 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4288
  %event_lock10 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 36, !dbg !4289
  store %struct.spinlock* %event_lock10, %struct.spinlock** %lock.addr.i19, align 8
  call void @arch_local_irq_disable() #11, !dbg !4290
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4291, !srcloc !3944
  %27 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i19, align 8, !dbg !4292
  %28 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %27, i32 0, i32 0, !dbg !4292
  %rlock.i20 = bitcast %union.anon.0* %28 to %struct.raw_spinlock*, !dbg !4292
  %29 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4293
  %30 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4294
  %effect_owners11 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %30, i32 0, i32 11, !dbg !4295
  %31 = load i32, i32* %effect_id.addr, align 4, !dbg !4296
  %idxprom12 = sext i32 %31 to i64, !dbg !4294
  %arrayidx13 = getelementptr [0 x %struct.file*], [0 x %struct.file*]* %effect_owners11, i64 0, i64 %idxprom12, !dbg !4294
  store %struct.file* %29, %struct.file** %arrayidx13, align 8, !dbg !4297
  %32 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4298
  %event_lock14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 36, !dbg !4299
  store %struct.spinlock* %event_lock14, %struct.spinlock** %lock.addr.i21, align 8
  call void @arch_local_irq_enable() #11, !dbg !4300
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4301, !srcloc !3964
  %33 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i21, align 8, !dbg !4302
  %34 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %33, i32 0, i32 0, !dbg !4302
  %rlock.i22 = bitcast %union.anon.0* %34 to %struct.raw_spinlock*, !dbg !4302
  %35 = load i32, i32* %error, align 4, !dbg !4303
  store i32 %35, i32* %retval, align 4, !dbg !4304
  br label %return, !dbg !4304

if.end15:                                         ; preds = %if.then5
  br label %if.end16, !dbg !4305

if.end16:                                         ; preds = %if.end15, %if.end
  store i32 0, i32* %retval, align 4, !dbg !4306
  br label %return, !dbg !4306

return:                                           ; preds = %if.end16, %if.then9, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !4307
  ret i32 %36, !dbg !4307
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @input_ff_flush(%struct.input_dev* %dev, %struct.file* %file) #0 !dbg !4308 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %file.addr = alloca %struct.file*, align 8
  %ff = alloca %struct.ff_device*, align 8
  %i = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4309, metadata !DIExpression()), !dbg !4310
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4311, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff, metadata !4313, metadata !DIExpression()), !dbg !4314
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4315
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 20, !dbg !4316
  %1 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8, !dbg !4316
  store %struct.ff_device* %1, %struct.ff_device** %ff, align 8, !dbg !4314
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4317, metadata !DIExpression()), !dbg !4318
  %2 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4319
  %mutex = getelementptr inbounds %struct.ff_device, %struct.ff_device* %2, i32 0, i32 8, !dbg !4320
  call void @mutex_lock(%struct.mutex* %mutex) #10, !dbg !4321
  store i32 0, i32* %i, align 4, !dbg !4322
  br label %for.cond, !dbg !4324

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !4325
  %4 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4327
  %max_effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %4, i32 0, i32 9, !dbg !4328
  %5 = load i32, i32* %max_effects, align 8, !dbg !4328
  %cmp = icmp slt i32 %3, %5, !dbg !4329
  br i1 %cmp, label %for.body, label %for.end, !dbg !4330

for.body:                                         ; preds = %for.cond
  %6 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4331
  %7 = load i32, i32* %i, align 4, !dbg !4332
  %8 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4333
  %call = call i32 @erase_effect(%struct.input_dev* %6, i32 %7, %struct.file* %8) #10, !dbg !4334
  br label %for.inc, !dbg !4334

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !4335
  %inc = add i32 %9, 1, !dbg !4335
  store i32 %inc, i32* %i, align 4, !dbg !4335
  br label %for.cond, !dbg !4336, !llvm.loop !4337

for.end:                                          ; preds = %for.cond
  %10 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4339
  %mutex2 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %10, i32 0, i32 8, !dbg !4340
  call void @mutex_unlock(%struct.mutex* %mutex2) #10, !dbg !4341
  ret i32 0, !dbg !4342
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @input_ff_event(%struct.input_dev* %dev, i32 %type, i32 %code, i32 %value) #0 !dbg !4343 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %type.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %ff = alloca %struct.ff_device*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4344, metadata !DIExpression()), !dbg !4345
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4346, metadata !DIExpression()), !dbg !4347
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff, metadata !4352, metadata !DIExpression()), !dbg !4353
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4354
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 20, !dbg !4355
  %1 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8, !dbg !4355
  store %struct.ff_device* %1, %struct.ff_device** %ff, align 8, !dbg !4353
  %2 = load i32, i32* %type.addr, align 4, !dbg !4356
  %cmp = icmp ne i32 %2, 21, !dbg !4358
  br i1 %cmp, label %if.then, label %if.end, !dbg !4359

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4360
  br label %return, !dbg !4360

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %code.addr, align 4, !dbg !4361
  switch i32 %3, label %sw.default [
    i32 96, label %sw.bb
    i32 97, label %sw.bb5
  ], !dbg !4362

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4363
  %ffbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 12, !dbg !4366
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit, i64 0, i64 0, !dbg !4363
  %call = call zeroext i1 @test_bit(i64 96, i64* %arraydecay) #10, !dbg !4367
  br i1 %call, label %lor.lhs.false, label %if.then3, !dbg !4368

lor.lhs.false:                                    ; preds = %sw.bb
  %5 = load i32, i32* %value.addr, align 4, !dbg !4369
  %cmp2 = icmp ugt i32 %5, 65535, !dbg !4370
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4371

if.then3:                                         ; preds = %lor.lhs.false, %sw.bb
  br label %sw.epilog, !dbg !4372

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4373
  %set_gain = getelementptr inbounds %struct.ff_device, %struct.ff_device* %6, i32 0, i32 3, !dbg !4374
  %7 = load void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)** %set_gain, align 8, !dbg !4374
  %8 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4375
  %9 = load i32, i32* %value.addr, align 4, !dbg !4376
  %conv = trunc i32 %9 to i16, !dbg !4376
  call void %7(%struct.input_dev* %8, i16 zeroext %conv) #10, !dbg !4373
  br label %sw.epilog, !dbg !4377

sw.bb5:                                           ; preds = %if.end
  %10 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4378
  %ffbit6 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 12, !dbg !4380
  %arraydecay7 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit6, i64 0, i64 0, !dbg !4378
  %call8 = call zeroext i1 @test_bit(i64 97, i64* %arraydecay7) #10, !dbg !4381
  br i1 %call8, label %lor.lhs.false9, label %if.then12, !dbg !4382

lor.lhs.false9:                                   ; preds = %sw.bb5
  %11 = load i32, i32* %value.addr, align 4, !dbg !4383
  %cmp10 = icmp ugt i32 %11, 65535, !dbg !4384
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4385

if.then12:                                        ; preds = %lor.lhs.false9, %sw.bb5
  br label %sw.epilog, !dbg !4386

if.end13:                                         ; preds = %lor.lhs.false9
  %12 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4387
  %set_autocenter = getelementptr inbounds %struct.ff_device, %struct.ff_device* %12, i32 0, i32 4, !dbg !4388
  %13 = load void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)** %set_autocenter, align 8, !dbg !4388
  %14 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4389
  %15 = load i32, i32* %value.addr, align 4, !dbg !4390
  %conv14 = trunc i32 %15 to i16, !dbg !4390
  call void %13(%struct.input_dev* %14, i16 zeroext %conv14) #10, !dbg !4387
  br label %sw.epilog, !dbg !4391

sw.default:                                       ; preds = %if.end
  %16 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4392
  %17 = load i32, i32* %code.addr, align 4, !dbg !4394
  %call15 = call i32 @check_effect_access(%struct.ff_device* %16, i32 %17, %struct.file* null) #10, !dbg !4395
  %cmp16 = icmp eq i32 %call15, 0, !dbg !4396
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !4397

if.then18:                                        ; preds = %sw.default
  %18 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4398
  %playback = getelementptr inbounds %struct.ff_device, %struct.ff_device* %18, i32 0, i32 2, !dbg !4399
  %19 = load i32 (%struct.input_dev*, i32, i32)*, i32 (%struct.input_dev*, i32, i32)** %playback, align 8, !dbg !4399
  %20 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4400
  %21 = load i32, i32* %code.addr, align 4, !dbg !4401
  %22 = load i32, i32* %value.addr, align 4, !dbg !4402
  %call19 = call i32 %19(%struct.input_dev* %20, i32 %21, i32 %22) #10, !dbg !4398
  br label %if.end20, !dbg !4398

if.end20:                                         ; preds = %if.then18, %sw.default
  br label %sw.epilog, !dbg !4403

sw.epilog:                                        ; preds = %if.end20, %if.end13, %if.then12, %if.end4, %if.then3
  store i32 0, i32* %retval, align 4, !dbg !4404
  br label %return, !dbg !4404

return:                                           ; preds = %sw.epilog, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !4405
  ret i32 %23, !dbg !4405
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @input_ff_create(%struct.input_dev* %dev, i32 %max_effects) #0 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %max_effects.addr = alloca i32, align 4
  %ff = alloca %struct.ff_device*, align 8
  %ff_dev_size = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4406, metadata !DIExpression()), !dbg !4407
  store i32 %max_effects, i32* %max_effects.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_effects.addr, metadata !4408, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff, metadata !4410, metadata !DIExpression()), !dbg !4411
  call void @llvm.dbg.declare(metadata i64* %ff_dev_size, metadata !4412, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4414, metadata !DIExpression()), !dbg !4415
  %0 = load i32, i32* %max_effects.addr, align 4, !dbg !4416
  %tobool = icmp ne i32 %0, 0, !dbg !4416
  br i1 %tobool, label %if.end, label %if.then, !dbg !4418

if.then:                                          ; preds = %entry
  %1 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4419
  %dev1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %1, i32 0, i32 40, !dbg !4419
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0)) #12, !dbg !4419
  store i32 -22, i32* %retval, align 4, !dbg !4421
  br label %return, !dbg !4421

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %max_effects.addr, align 4, !dbg !4422
  %cmp = icmp ugt i32 %2, 96, !dbg !4424
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !4425

if.then2:                                         ; preds = %if.end
  %3 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4426
  %dev3 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %3, i32 0, i32 40, !dbg !4426
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev3, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0)) #12, !dbg !4426
  store i32 -22, i32* %retval, align 4, !dbg !4428
  br label %return, !dbg !4428

if.end4:                                          ; preds = %if.end
  %4 = load i32, i32* %max_effects.addr, align 4, !dbg !4429
  %conv = zext i32 %4 to i64, !dbg !4429
  %mul = mul i64 %conv, 8, !dbg !4430
  %add = add i64 112, %mul, !dbg !4431
  store i64 %add, i64* %ff_dev_size, align 8, !dbg !4432
  %5 = load i64, i64* %ff_dev_size, align 8, !dbg !4433
  %6 = load i32, i32* %max_effects.addr, align 4, !dbg !4435
  %conv5 = zext i32 %6 to i64, !dbg !4435
  %cmp6 = icmp ult i64 %5, %conv5, !dbg !4436
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !4437

if.then8:                                         ; preds = %if.end4
  store i32 -22, i32* %retval, align 4, !dbg !4438
  br label %return, !dbg !4438

if.end9:                                          ; preds = %if.end4
  %7 = load i64, i64* %ff_dev_size, align 8, !dbg !4439
  %call = call i8* @kzalloc(i64 %7, i32 3264) #10, !dbg !4440
  %8 = bitcast i8* %call to %struct.ff_device*, !dbg !4440
  store %struct.ff_device* %8, %struct.ff_device** %ff, align 8, !dbg !4441
  %9 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4442
  %tobool10 = icmp ne %struct.ff_device* %9, null, !dbg !4442
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !4444

if.then11:                                        ; preds = %if.end9
  store i32 -12, i32* %retval, align 4, !dbg !4445
  br label %return, !dbg !4445

if.end12:                                         ; preds = %if.end9
  %10 = load i32, i32* %max_effects.addr, align 4, !dbg !4446
  %conv13 = zext i32 %10 to i64, !dbg !4446
  %call14 = call i8* @kcalloc(i64 %conv13, i64 48, i32 3264) #10, !dbg !4447
  %11 = bitcast i8* %call14 to %struct.ff_effect*, !dbg !4447
  %12 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4448
  %effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %12, i32 0, i32 10, !dbg !4449
  store %struct.ff_effect* %11, %struct.ff_effect** %effects, align 8, !dbg !4450
  %13 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4451
  %effects15 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %13, i32 0, i32 10, !dbg !4453
  %14 = load %struct.ff_effect*, %struct.ff_effect** %effects15, align 8, !dbg !4453
  %tobool16 = icmp ne %struct.ff_effect* %14, null, !dbg !4451
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4454

if.then17:                                        ; preds = %if.end12
  %15 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4455
  %16 = bitcast %struct.ff_device* %15 to i8*, !dbg !4455
  call void @kfree(i8* %16) #10, !dbg !4457
  store i32 -12, i32* %retval, align 4, !dbg !4458
  br label %return, !dbg !4458

if.end18:                                         ; preds = %if.end12
  %17 = load i32, i32* %max_effects.addr, align 4, !dbg !4459
  %18 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4460
  %max_effects19 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %18, i32 0, i32 9, !dbg !4461
  store i32 %17, i32* %max_effects19, align 8, !dbg !4462
  br label %do.body, !dbg !4463

do.body:                                          ; preds = %if.end18
  %19 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4464
  %mutex = getelementptr inbounds %struct.ff_device, %struct.ff_device* %19, i32 0, i32 8, !dbg !4464
  call void @__mutex_init(%struct.mutex* %mutex, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @input_ff_create.__key) #10, !dbg !4464
  br label %do.end, !dbg !4464

do.end:                                           ; preds = %do.body
  %20 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4466
  %21 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4467
  %ff20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 20, !dbg !4468
  store %struct.ff_device* %20, %struct.ff_device** %ff20, align 8, !dbg !4469
  %22 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4470
  %flush = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 33, !dbg !4471
  store i32 (%struct.input_dev*, %struct.file*)* @input_ff_flush, i32 (%struct.input_dev*, %struct.file*)** %flush, align 8, !dbg !4472
  %23 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4473
  %event = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 34, !dbg !4474
  store i32 (%struct.input_dev*, i32, i32, i32)* @input_ff_event, i32 (%struct.input_dev*, i32, i32, i32)** %event, align 8, !dbg !4475
  %24 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4476
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 5, !dbg !4477
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4476
  call void @__set_bit(i64 21, i64* %arraydecay) #10, !dbg !4478
  %25 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4479
  %ffbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 12, !dbg !4479
  %arraydecay21 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit, i64 0, i64 0, !dbg !4479
  %call22 = call i64 @find_first_bit(i64* %arraydecay21, i64 128) #10, !dbg !4479
  %conv23 = trunc i64 %call22 to i32, !dbg !4479
  store i32 %conv23, i32* %i, align 4, !dbg !4479
  br label %for.cond, !dbg !4479

for.cond:                                         ; preds = %for.inc, %do.end
  %26 = load i32, i32* %i, align 4, !dbg !4481
  %cmp24 = icmp slt i32 %26, 128, !dbg !4481
  br i1 %cmp24, label %for.body, label %for.end, !dbg !4479

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4, !dbg !4483
  %conv26 = sext i32 %27 to i64, !dbg !4483
  %28 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4484
  %ffbit27 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %28, i32 0, i32 7, !dbg !4485
  %arraydecay28 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit27, i64 0, i64 0, !dbg !4484
  call void @__set_bit(i64 %conv26, i64* %arraydecay28) #10, !dbg !4486
  br label %for.inc, !dbg !4486

for.inc:                                          ; preds = %for.body
  %29 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4481
  %ffbit29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 12, !dbg !4481
  %arraydecay30 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit29, i64 0, i64 0, !dbg !4481
  %30 = load i32, i32* %i, align 4, !dbg !4481
  %add31 = add i32 %30, 1, !dbg !4481
  %conv32 = sext i32 %add31 to i64, !dbg !4481
  %call33 = call i64 @find_next_bit(i64* %arraydecay30, i64 128, i64 %conv32) #10, !dbg !4481
  %conv34 = trunc i64 %call33 to i32, !dbg !4481
  store i32 %conv34, i32* %i, align 4, !dbg !4481
  br label %for.cond, !dbg !4481, !llvm.loop !4487

for.end:                                          ; preds = %for.cond
  %31 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4489
  %ffbit35 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %31, i32 0, i32 7, !dbg !4491
  %arraydecay36 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit35, i64 0, i64 0, !dbg !4489
  %call37 = call zeroext i1 @test_bit(i64 81, i64* %arraydecay36) #10, !dbg !4492
  br i1 %call37, label %if.then38, label %if.end41, !dbg !4493

if.then38:                                        ; preds = %for.end
  %32 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4494
  %ffbit39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 12, !dbg !4495
  %arraydecay40 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit39, i64 0, i64 0, !dbg !4494
  call void @__set_bit(i64 80, i64* %arraydecay40) #10, !dbg !4496
  br label %if.end41, !dbg !4496

if.end41:                                         ; preds = %if.then38, %for.end
  store i32 0, i32* %retval, align 4, !dbg !4497
  br label %return, !dbg !4497

return:                                           ; preds = %if.end41, %if.then17, %if.then11, %if.then8, %if.then2, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !4498
  ret i32 %33, !dbg !4498
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4499 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4502, metadata !DIExpression()), !dbg !4506
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4512, metadata !DIExpression()), !dbg !4513
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4514, metadata !DIExpression()), !dbg !4515
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4516, metadata !DIExpression()), !dbg !4517
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4518, metadata !DIExpression()), !dbg !4522
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4524, metadata !DIExpression()), !dbg !4528
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4530, metadata !DIExpression()), !dbg !4534
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4539, metadata !DIExpression()), !dbg !4540
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4541, metadata !DIExpression()), !dbg !4542
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4543, metadata !DIExpression()), !dbg !4544
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4545, metadata !DIExpression()), !dbg !4546
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4547, metadata !DIExpression()), !dbg !4548
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4549, metadata !DIExpression()), !dbg !4550
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4551, metadata !DIExpression()), !dbg !4552
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4553, metadata !DIExpression()), !dbg !4554
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  %0 = load i64, i64* %size.addr, align 8, !dbg !4559
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4560
  %or = or i32 %1, 256, !dbg !4561
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4562
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !4563
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4564

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4565
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4566
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4567

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4568
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4569
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4570
  %call.i.i = call i32 @get_order(i64 %7) #13, !dbg !4571
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4548
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4572
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4573
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4574
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4575
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4576
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4577
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !4578
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4578
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4578
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4578
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !4578
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4579
  br label %kmalloc.exit, !dbg !4579

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4580
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4581
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4581
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4583

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4584
  br label %kmalloc_index.exit.i, !dbg !4584

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4585
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4587
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4588

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4589
  br label %kmalloc_index.exit.i, !dbg !4589

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4590
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4592
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4593

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4594
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4595
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4596

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4597
  br label %kmalloc_index.exit.i, !dbg !4597

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4598
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4600
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4601

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4602
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4603
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4604

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4605
  br label %kmalloc_index.exit.i, !dbg !4605

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4606
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4608
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4609

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4610
  br label %kmalloc_index.exit.i, !dbg !4610

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4611
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4613
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4614

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4615
  br label %kmalloc_index.exit.i, !dbg !4615

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4616
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4618
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4619

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4620
  br label %kmalloc_index.exit.i, !dbg !4620

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4621
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4623
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4624

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4625
  br label %kmalloc_index.exit.i, !dbg !4625

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4626
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4628
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4629

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4630
  br label %kmalloc_index.exit.i, !dbg !4630

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4631
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4633
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4634

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4635
  br label %kmalloc_index.exit.i, !dbg !4635

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4636
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4638
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4639

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4640
  br label %kmalloc_index.exit.i, !dbg !4640

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4641
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4643
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4644

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4645
  br label %kmalloc_index.exit.i, !dbg !4645

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4646
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4648
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4649

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4650
  br label %kmalloc_index.exit.i, !dbg !4650

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4651
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4653
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4654

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4655
  br label %kmalloc_index.exit.i, !dbg !4655

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4656
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4658
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4659

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4660
  br label %kmalloc_index.exit.i, !dbg !4660

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4661
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4663
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4664

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4665
  br label %kmalloc_index.exit.i, !dbg !4665

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4666
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4668
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4669

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4670
  br label %kmalloc_index.exit.i, !dbg !4670

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4671
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4673
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4674

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4675
  br label %kmalloc_index.exit.i, !dbg !4675

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4676
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4678
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4679

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4680
  br label %kmalloc_index.exit.i, !dbg !4680

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4681
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4683
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4684

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4685
  br label %kmalloc_index.exit.i, !dbg !4685

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4686
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4688
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4689

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4690
  br label %kmalloc_index.exit.i, !dbg !4690

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4691
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4693
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4694

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4695
  br label %kmalloc_index.exit.i, !dbg !4695

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4696
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4698
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4699

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4700
  br label %kmalloc_index.exit.i, !dbg !4700

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4701
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4703
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4704

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4708
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4709

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4710
  br label %kmalloc_index.exit.i, !dbg !4710

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4711
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4713
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4714

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4715
  br label %kmalloc_index.exit.i, !dbg !4715

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4718
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4719

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4720
  br label %kmalloc_index.exit.i, !dbg !4720

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4721
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4723
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4724

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4725
  br label %kmalloc_index.exit.i, !dbg !4725

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !4726, !srcloc !4729
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 203) #7, !dbg !4730, !srcloc !4733
  unreachable, !dbg !4734

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4735
  store i32 %45, i32* %index.i, align 4, !dbg !4736
  %46 = load i32, i32* %index.i, align 4, !dbg !4737
  %tobool.i = icmp ne i32 %46, 0, !dbg !4737
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4739

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4740
  br label %kmalloc.exit, !dbg !4740

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4741
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4742
  %and.i.i = and i32 %48, 17, !dbg !4742
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4742
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4742
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4742
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4742
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4744

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4745
  br label %kmalloc_type.exit.i, !dbg !4745

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4746
  %and2.i.i = and i32 %49, 1, !dbg !4747
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4746
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4746
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4746
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4748
  br label %kmalloc_type.exit.i, !dbg !4748

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4749
  %idxprom.i = zext i32 %51 to i64, !dbg !4750
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4750
  %52 = load i32, i32* %index.i, align 4, !dbg !4751
  %idxprom6.i = zext i32 %52 to i64, !dbg !4750
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4750
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4750
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4752
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4753
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4754
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4755
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !4756
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4756
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4756
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4756
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !4756
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4517
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4757
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4758
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4759
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4760
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !4761
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4762
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4763
  store i8* %62, i8** %retval.i, align 8, !dbg !4764
  br label %kmalloc.exit, !dbg !4764

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4765
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4766
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !4767
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4767
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4767
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4767
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !4767
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4768
  br label %kmalloc.exit, !dbg !4768

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4769
  ret i8* %65, !dbg !4770
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !4771 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4774, metadata !DIExpression()), !dbg !4775
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4776, metadata !DIExpression()), !dbg !4777
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4778, metadata !DIExpression()), !dbg !4779
  %0 = load i64, i64* %n.addr, align 8, !dbg !4780
  %1 = load i64, i64* %size.addr, align 8, !dbg !4781
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4782
  %or = or i32 %2, 256, !dbg !4783
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #10, !dbg !4784
  ret i8* %call, !dbg !4785
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !4786 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4790, metadata !DIExpression()), !dbg !4792
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4794, metadata !DIExpression()), !dbg !4795
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4796, metadata !DIExpression()), !dbg !4798
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4800, metadata !DIExpression()), !dbg !4801
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4802, metadata !DIExpression()), !dbg !4803
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4804, metadata !DIExpression()), !dbg !4805
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4806
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4807
  %div = sdiv i64 %1, 64, !dbg !4807
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4808
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4806
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4809
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4810
  %conv.i = trunc i64 %4 to i32, !dbg !4810
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !4811
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4812
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4812
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #11, !dbg !4812
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4813
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4814
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4815
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4816
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #7, !dbg !4817, !srcloc !4818
  ret void, !dbg !4819
}

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #2

; Function Attrs: noredzone
declare dso_local i64 @find_next_bit(i64*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @input_ff_destroy(%struct.input_dev* %dev) #0 !dbg !4820 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %ff = alloca %struct.ff_device*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4821, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff, metadata !4823, metadata !DIExpression()), !dbg !4824
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4825
  %ff1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 20, !dbg !4826
  %1 = load %struct.ff_device*, %struct.ff_device** %ff1, align 8, !dbg !4826
  store %struct.ff_device* %1, %struct.ff_device** %ff, align 8, !dbg !4824
  %2 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4827
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %2, i32 0, i32 5, !dbg !4828
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4827
  call void @__clear_bit(i64 21, i64* %arraydecay) #10, !dbg !4829
  %3 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4830
  %tobool = icmp ne %struct.ff_device* %3, null, !dbg !4830
  br i1 %tobool, label %if.then, label %if.end6, !dbg !4832

if.then:                                          ; preds = %entry
  %4 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4833
  %destroy = getelementptr inbounds %struct.ff_device, %struct.ff_device* %4, i32 0, i32 5, !dbg !4836
  %5 = load void (%struct.ff_device*)*, void (%struct.ff_device*)** %destroy, align 8, !dbg !4836
  %tobool2 = icmp ne void (%struct.ff_device*)* %5, null, !dbg !4833
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !4837

if.then3:                                         ; preds = %if.then
  %6 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4838
  %destroy4 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %6, i32 0, i32 5, !dbg !4839
  %7 = load void (%struct.ff_device*)*, void (%struct.ff_device*)** %destroy4, align 8, !dbg !4839
  %8 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4840
  call void %7(%struct.ff_device* %8) #10, !dbg !4838
  br label %if.end, !dbg !4838

if.end:                                           ; preds = %if.then3, %if.then
  %9 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4841
  %private = getelementptr inbounds %struct.ff_device, %struct.ff_device* %9, i32 0, i32 6, !dbg !4842
  %10 = load i8*, i8** %private, align 8, !dbg !4842
  call void @kfree(i8* %10) #10, !dbg !4843
  %11 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4844
  %effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %11, i32 0, i32 10, !dbg !4845
  %12 = load %struct.ff_effect*, %struct.ff_effect** %effects, align 8, !dbg !4845
  %13 = bitcast %struct.ff_effect* %12 to i8*, !dbg !4844
  call void @kfree(i8* %13) #10, !dbg !4846
  %14 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4847
  %15 = bitcast %struct.ff_device* %14 to i8*, !dbg !4847
  call void @kfree(i8* %15) #10, !dbg !4848
  %16 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4849
  %ff5 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 20, !dbg !4850
  store %struct.ff_device* null, %struct.ff_device** %ff5, align 8, !dbg !4851
  br label %if.end6, !dbg !4852

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !4853
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clear_bit(i64 %nr, i64* %addr) #0 !dbg !4854 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4855, metadata !DIExpression()), !dbg !4857
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4859, metadata !DIExpression()), !dbg !4860
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4796, metadata !DIExpression()), !dbg !4861
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4800, metadata !DIExpression()), !dbg !4863
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4864, metadata !DIExpression()), !dbg !4865
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4868
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4869
  %div = sdiv i64 %1, 64, !dbg !4869
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4870
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4868
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4871
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4872
  %conv.i = trunc i64 %4 to i32, !dbg !4872
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !4873
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4874
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4874
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #11, !dbg !4874
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4875
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4876
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4877
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4878
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #7, !dbg !4879, !srcloc !4880
  ret void, !dbg !4881
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !4882 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !4886, metadata !DIExpression()), !dbg !4887
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !4888, metadata !DIExpression()), !dbg !4889
  ret i1 true, !dbg !4890
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !4891 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4895, metadata !DIExpression()), !dbg !4896
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4897, metadata !DIExpression()), !dbg !4898
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4899, metadata !DIExpression()), !dbg !4900
  ret void, !dbg !4901
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4902 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4904, metadata !DIExpression()), !dbg !4906
  %0 = load i64, i64* %__edi, align 8, !dbg !4906
  store i64 %0, i64* %__edi, align 8, !dbg !4906
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4907, metadata !DIExpression()), !dbg !4906
  %1 = load i64, i64* %__esi, align 8, !dbg !4906
  store i64 %1, i64* %__esi, align 8, !dbg !4906
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4908, metadata !DIExpression()), !dbg !4906
  %2 = load i64, i64* %__edx, align 8, !dbg !4906
  store i64 %2, i64* %__edx, align 8, !dbg !4906
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4909, metadata !DIExpression()), !dbg !4906
  %3 = load i64, i64* %__ecx, align 8, !dbg !4906
  store i64 %3, i64* %__ecx, align 8, !dbg !4906
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4910, metadata !DIExpression()), !dbg !4906
  %4 = load i64, i64* %__eax, align 8, !dbg !4906
  store i64 %4, i64* %__eax, align 8, !dbg !4906
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4906
  %6 = call i64 @llvm.read_register.i64(metadata !3753), !dbg !4906
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !4906, !srcloc !4911
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4906
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4906
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4906
  call void @llvm.write_register.i64(metadata !3753, i64 %asmresult1), !dbg !4906
  ret void, !dbg !4912
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !4913 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4914, metadata !DIExpression()), !dbg !4916
  %0 = load i64, i64* %__edi, align 8, !dbg !4916
  store i64 %0, i64* %__edi, align 8, !dbg !4916
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4917, metadata !DIExpression()), !dbg !4916
  %1 = load i64, i64* %__esi, align 8, !dbg !4916
  store i64 %1, i64* %__esi, align 8, !dbg !4916
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4918, metadata !DIExpression()), !dbg !4916
  %2 = load i64, i64* %__edx, align 8, !dbg !4916
  store i64 %2, i64* %__edx, align 8, !dbg !4916
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4919, metadata !DIExpression()), !dbg !4916
  %3 = load i64, i64* %__ecx, align 8, !dbg !4916
  store i64 %3, i64* %__ecx, align 8, !dbg !4916
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4920, metadata !DIExpression()), !dbg !4916
  %4 = load i64, i64* %__eax, align 8, !dbg !4916
  store i64 %4, i64* %__eax, align 8, !dbg !4916
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !4916
  %6 = call i64 @llvm.read_register.i64(metadata !3753), !dbg !4916
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #7, !dbg !4916, !srcloc !4921
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4916
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4916
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4916
  call void @llvm.write_register.i64(metadata !3753, i64 %asmresult1), !dbg !4916
  ret void, !dbg !4922
}

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #8

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #9 !dbg !4923 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4927, metadata !DIExpression()), !dbg !4931
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4933, metadata !DIExpression()), !dbg !4934
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4935, metadata !DIExpression()), !dbg !4936
  %0 = load i64, i64* %size.addr, align 8, !dbg !4937
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4939
  br i1 %1, label %if.then, label %if.end447, !dbg !4940

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4941
  %tobool = icmp ne i64 %2, 0, !dbg !4941
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4944

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4945
  br label %return, !dbg !4945

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4946
  %cmp = icmp ult i64 %3, 4096, !dbg !4948
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4949

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4950
  br label %return, !dbg !4950

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub = sub i64 %4, 1, !dbg !4951
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4951
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4951

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub4 = sub i64 %6, 1, !dbg !4951
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4951
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4951

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub6 = sub i64 %8, 1, !dbg !4951
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4951
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4951

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4951

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub9 = sub i64 %9, 1, !dbg !4951
  %and = and i64 %sub9, -9223372036854775808, !dbg !4951
  %tobool10 = icmp ne i64 %and, 0, !dbg !4951
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4951

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4951

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub13 = sub i64 %10, 1, !dbg !4951
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4951
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4951
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4951

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4951

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub18 = sub i64 %11, 1, !dbg !4951
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4951
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4951
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4951

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4951

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub23 = sub i64 %12, 1, !dbg !4951
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4951
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4951
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4951

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4951

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub28 = sub i64 %13, 1, !dbg !4951
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4951
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4951
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4951

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4951

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub33 = sub i64 %14, 1, !dbg !4951
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4951
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4951
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4951

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4951

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub38 = sub i64 %15, 1, !dbg !4951
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4951
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4951
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4951

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4951

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub43 = sub i64 %16, 1, !dbg !4951
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4951
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4951
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4951

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4951

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub48 = sub i64 %17, 1, !dbg !4951
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4951
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4951
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4951

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4951

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub53 = sub i64 %18, 1, !dbg !4951
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4951
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4951
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4951

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4951

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub58 = sub i64 %19, 1, !dbg !4951
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4951
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4951
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4951

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4951

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub63 = sub i64 %20, 1, !dbg !4951
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4951
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4951
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4951

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4951

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub68 = sub i64 %21, 1, !dbg !4951
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4951
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4951
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4951

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4951

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub73 = sub i64 %22, 1, !dbg !4951
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4951
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4951
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4951

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4951

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub78 = sub i64 %23, 1, !dbg !4951
  %and79 = and i64 %sub78, 562949953421312, !dbg !4951
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4951
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4951

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4951

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub83 = sub i64 %24, 1, !dbg !4951
  %and84 = and i64 %sub83, 281474976710656, !dbg !4951
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4951
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4951

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4951

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub88 = sub i64 %25, 1, !dbg !4951
  %and89 = and i64 %sub88, 140737488355328, !dbg !4951
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4951
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4951

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4951

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub93 = sub i64 %26, 1, !dbg !4951
  %and94 = and i64 %sub93, 70368744177664, !dbg !4951
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4951
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4951

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4951

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub98 = sub i64 %27, 1, !dbg !4951
  %and99 = and i64 %sub98, 35184372088832, !dbg !4951
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4951
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4951

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4951

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub103 = sub i64 %28, 1, !dbg !4951
  %and104 = and i64 %sub103, 17592186044416, !dbg !4951
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4951
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4951

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4951

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub108 = sub i64 %29, 1, !dbg !4951
  %and109 = and i64 %sub108, 8796093022208, !dbg !4951
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4951
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4951

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4951

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub113 = sub i64 %30, 1, !dbg !4951
  %and114 = and i64 %sub113, 4398046511104, !dbg !4951
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4951
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4951

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4951

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub118 = sub i64 %31, 1, !dbg !4951
  %and119 = and i64 %sub118, 2199023255552, !dbg !4951
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4951
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4951

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4951

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub123 = sub i64 %32, 1, !dbg !4951
  %and124 = and i64 %sub123, 1099511627776, !dbg !4951
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4951
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4951

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4951

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub128 = sub i64 %33, 1, !dbg !4951
  %and129 = and i64 %sub128, 549755813888, !dbg !4951
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4951
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4951

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4951

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub133 = sub i64 %34, 1, !dbg !4951
  %and134 = and i64 %sub133, 274877906944, !dbg !4951
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4951
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4951

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4951

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub138 = sub i64 %35, 1, !dbg !4951
  %and139 = and i64 %sub138, 137438953472, !dbg !4951
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4951
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4951

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4951

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub143 = sub i64 %36, 1, !dbg !4951
  %and144 = and i64 %sub143, 68719476736, !dbg !4951
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4951
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4951

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4951

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub148 = sub i64 %37, 1, !dbg !4951
  %and149 = and i64 %sub148, 34359738368, !dbg !4951
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4951
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4951

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4951

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub153 = sub i64 %38, 1, !dbg !4951
  %and154 = and i64 %sub153, 17179869184, !dbg !4951
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4951
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4951

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4951

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub158 = sub i64 %39, 1, !dbg !4951
  %and159 = and i64 %sub158, 8589934592, !dbg !4951
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4951
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4951

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4951

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub163 = sub i64 %40, 1, !dbg !4951
  %and164 = and i64 %sub163, 4294967296, !dbg !4951
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4951
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4951

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4951

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub168 = sub i64 %41, 1, !dbg !4951
  %and169 = and i64 %sub168, 2147483648, !dbg !4951
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4951
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4951

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4951

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub173 = sub i64 %42, 1, !dbg !4951
  %and174 = and i64 %sub173, 1073741824, !dbg !4951
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4951
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4951

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4951

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub178 = sub i64 %43, 1, !dbg !4951
  %and179 = and i64 %sub178, 536870912, !dbg !4951
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4951
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4951

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4951

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub183 = sub i64 %44, 1, !dbg !4951
  %and184 = and i64 %sub183, 268435456, !dbg !4951
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4951
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4951

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4951

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub188 = sub i64 %45, 1, !dbg !4951
  %and189 = and i64 %sub188, 134217728, !dbg !4951
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4951
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4951

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4951

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub193 = sub i64 %46, 1, !dbg !4951
  %and194 = and i64 %sub193, 67108864, !dbg !4951
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4951
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4951

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4951

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub198 = sub i64 %47, 1, !dbg !4951
  %and199 = and i64 %sub198, 33554432, !dbg !4951
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4951
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4951

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4951

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub203 = sub i64 %48, 1, !dbg !4951
  %and204 = and i64 %sub203, 16777216, !dbg !4951
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4951
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4951

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4951

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub208 = sub i64 %49, 1, !dbg !4951
  %and209 = and i64 %sub208, 8388608, !dbg !4951
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4951
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4951

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4951

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub213 = sub i64 %50, 1, !dbg !4951
  %and214 = and i64 %sub213, 4194304, !dbg !4951
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4951
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4951

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4951

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub218 = sub i64 %51, 1, !dbg !4951
  %and219 = and i64 %sub218, 2097152, !dbg !4951
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4951
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4951

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4951

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub223 = sub i64 %52, 1, !dbg !4951
  %and224 = and i64 %sub223, 1048576, !dbg !4951
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4951
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4951

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4951

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub228 = sub i64 %53, 1, !dbg !4951
  %and229 = and i64 %sub228, 524288, !dbg !4951
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4951
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4951

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4951

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub233 = sub i64 %54, 1, !dbg !4951
  %and234 = and i64 %sub233, 262144, !dbg !4951
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4951
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4951

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4951

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub238 = sub i64 %55, 1, !dbg !4951
  %and239 = and i64 %sub238, 131072, !dbg !4951
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4951
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4951

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4951

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub243 = sub i64 %56, 1, !dbg !4951
  %and244 = and i64 %sub243, 65536, !dbg !4951
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4951
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4951

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4951

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub248 = sub i64 %57, 1, !dbg !4951
  %and249 = and i64 %sub248, 32768, !dbg !4951
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4951
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4951

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4951

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub253 = sub i64 %58, 1, !dbg !4951
  %and254 = and i64 %sub253, 16384, !dbg !4951
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4951
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4951

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4951

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub258 = sub i64 %59, 1, !dbg !4951
  %and259 = and i64 %sub258, 8192, !dbg !4951
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4951
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4951

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4951

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub263 = sub i64 %60, 1, !dbg !4951
  %and264 = and i64 %sub263, 4096, !dbg !4951
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4951
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4951

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4951

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub268 = sub i64 %61, 1, !dbg !4951
  %and269 = and i64 %sub268, 2048, !dbg !4951
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4951
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4951

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4951

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub273 = sub i64 %62, 1, !dbg !4951
  %and274 = and i64 %sub273, 1024, !dbg !4951
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4951
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4951

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4951

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub278 = sub i64 %63, 1, !dbg !4951
  %and279 = and i64 %sub278, 512, !dbg !4951
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4951
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4951

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4951

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub283 = sub i64 %64, 1, !dbg !4951
  %and284 = and i64 %sub283, 256, !dbg !4951
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4951
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4951

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4951

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub288 = sub i64 %65, 1, !dbg !4951
  %and289 = and i64 %sub288, 128, !dbg !4951
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4951
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4951

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4951

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub293 = sub i64 %66, 1, !dbg !4951
  %and294 = and i64 %sub293, 64, !dbg !4951
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4951
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4951

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4951

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub298 = sub i64 %67, 1, !dbg !4951
  %and299 = and i64 %sub298, 32, !dbg !4951
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4951
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4951

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4951

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub303 = sub i64 %68, 1, !dbg !4951
  %and304 = and i64 %sub303, 16, !dbg !4951
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4951
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4951

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4951

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub308 = sub i64 %69, 1, !dbg !4951
  %and309 = and i64 %sub308, 8, !dbg !4951
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4951
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4951

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4951

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub313 = sub i64 %70, 1, !dbg !4951
  %and314 = and i64 %sub313, 4, !dbg !4951
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4951
  %71 = zext i1 %tobool315 to i64, !dbg !4951
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4951
  br label %cond.end, !dbg !4951

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4951
  br label %cond.end317, !dbg !4951

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4951
  br label %cond.end319, !dbg !4951

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4951
  br label %cond.end321, !dbg !4951

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4951
  br label %cond.end323, !dbg !4951

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4951
  br label %cond.end325, !dbg !4951

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4951
  br label %cond.end327, !dbg !4951

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4951
  br label %cond.end329, !dbg !4951

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4951
  br label %cond.end331, !dbg !4951

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4951
  br label %cond.end333, !dbg !4951

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4951
  br label %cond.end335, !dbg !4951

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4951
  br label %cond.end337, !dbg !4951

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4951
  br label %cond.end339, !dbg !4951

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4951
  br label %cond.end341, !dbg !4951

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4951
  br label %cond.end343, !dbg !4951

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4951
  br label %cond.end345, !dbg !4951

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4951
  br label %cond.end347, !dbg !4951

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4951
  br label %cond.end349, !dbg !4951

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4951
  br label %cond.end351, !dbg !4951

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4951
  br label %cond.end353, !dbg !4951

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4951
  br label %cond.end355, !dbg !4951

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4951
  br label %cond.end357, !dbg !4951

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4951
  br label %cond.end359, !dbg !4951

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4951
  br label %cond.end361, !dbg !4951

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4951
  br label %cond.end363, !dbg !4951

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4951
  br label %cond.end365, !dbg !4951

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4951
  br label %cond.end367, !dbg !4951

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4951
  br label %cond.end369, !dbg !4951

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4951
  br label %cond.end371, !dbg !4951

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4951
  br label %cond.end373, !dbg !4951

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4951
  br label %cond.end375, !dbg !4951

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4951
  br label %cond.end377, !dbg !4951

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4951
  br label %cond.end379, !dbg !4951

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4951
  br label %cond.end381, !dbg !4951

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4951
  br label %cond.end383, !dbg !4951

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4951
  br label %cond.end385, !dbg !4951

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4951
  br label %cond.end387, !dbg !4951

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4951
  br label %cond.end389, !dbg !4951

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4951
  br label %cond.end391, !dbg !4951

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4951
  br label %cond.end393, !dbg !4951

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4951
  br label %cond.end395, !dbg !4951

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4951
  br label %cond.end397, !dbg !4951

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4951
  br label %cond.end399, !dbg !4951

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4951
  br label %cond.end401, !dbg !4951

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4951
  br label %cond.end403, !dbg !4951

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4951
  br label %cond.end405, !dbg !4951

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4951
  br label %cond.end407, !dbg !4951

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4951
  br label %cond.end409, !dbg !4951

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4951
  br label %cond.end411, !dbg !4951

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4951
  br label %cond.end413, !dbg !4951

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4951
  br label %cond.end415, !dbg !4951

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4951
  br label %cond.end417, !dbg !4951

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4951
  br label %cond.end419, !dbg !4951

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4951
  br label %cond.end421, !dbg !4951

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4951
  br label %cond.end423, !dbg !4951

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4951
  br label %cond.end425, !dbg !4951

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4951
  br label %cond.end427, !dbg !4951

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4951
  br label %cond.end429, !dbg !4951

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4951
  br label %cond.end431, !dbg !4951

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4951
  br label %cond.end433, !dbg !4951

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4951
  br label %cond.end435, !dbg !4951

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4951
  br label %cond.end437, !dbg !4951

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4951
  br label %cond.end440, !dbg !4951

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4951

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4951
  br label %cond.end444, !dbg !4951

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4951
  %sub443 = sub i64 %72, 1, !dbg !4951
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !4951
  br label %cond.end444, !dbg !4951

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4951
  %sub446 = sub i32 %cond445, 12, !dbg !4952
  %add = add i32 %sub446, 1, !dbg !4953
  store i32 %add, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4955
  %dec = add i64 %73, -1, !dbg !4955
  store i64 %dec, i64* %size.addr, align 8, !dbg !4955
  %74 = load i64, i64* %size.addr, align 8, !dbg !4956
  %shr = lshr i64 %74, 12, !dbg !4956
  store i64 %shr, i64* %size.addr, align 8, !dbg !4956
  %75 = load i64, i64* %size.addr, align 8, !dbg !4957
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4934
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4958
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4959
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !4958, !srcloc !4960
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4958
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4961
  %add.i = add i32 %79, 1, !dbg !4962
  store i32 %add.i, i32* %retval, align 4, !dbg !4963
  br label %return, !dbg !4963

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4964
  ret i32 %80, !dbg !4964
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #9 !dbg !4965 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4927, metadata !DIExpression()), !dbg !4969
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4933, metadata !DIExpression()), !dbg !4971
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load i64, i64* %n.addr, align 8, !dbg !4974
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4971
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4975
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4976
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !4975, !srcloc !4960
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4975
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4977
  %add.i = add i32 %4, 1, !dbg !4978
  %sub = sub i32 %add.i, 1, !dbg !4979
  ret i32 %sub, !dbg !4980
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4981 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4993
  ret i8* %0, !dbg !4994
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4995 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4502, metadata !DIExpression()), !dbg !4996
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4512, metadata !DIExpression()), !dbg !5000
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4514, metadata !DIExpression()), !dbg !5001
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4516, metadata !DIExpression()), !dbg !5002
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4518, metadata !DIExpression()), !dbg !5003
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4524, metadata !DIExpression()), !dbg !5005
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4530, metadata !DIExpression()), !dbg !5007
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4539, metadata !DIExpression()), !dbg !5010
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4541, metadata !DIExpression()), !dbg !5011
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4543, metadata !DIExpression()), !dbg !5012
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4545, metadata !DIExpression()), !dbg !5013
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4547, metadata !DIExpression()), !dbg !5014
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4549, metadata !DIExpression()), !dbg !5015
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4551, metadata !DIExpression()), !dbg !5016
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4553, metadata !DIExpression()), !dbg !5017
  %retval = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %__a = alloca i64, align 8
  %__b = alloca i64, align 8
  %__d = alloca i64*, align 8
  %tmp = alloca i8, align 1
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5024, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5026, metadata !DIExpression()), !dbg !5029
  %0 = load i64, i64* %n.addr, align 8, !dbg !5029
  store i64 %0, i64* %__a, align 8, !dbg !5029
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5030, metadata !DIExpression()), !dbg !5029
  %1 = load i64, i64* %size.addr, align 8, !dbg !5029
  store i64 %1, i64* %__b, align 8, !dbg !5029
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5031, metadata !DIExpression()), !dbg !5029
  store i64* %bytes, i64** %__d, align 8, !dbg !5029
  %cmp = icmp eq i64* %__a, %__b, !dbg !5029
  %conv = zext i1 %cmp to i32, !dbg !5029
  %2 = load i64*, i64** %__d, align 8, !dbg !5029
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5029
  %conv2 = zext i1 %cmp1 to i32, !dbg !5029
  %3 = load i64, i64* %__a, align 8, !dbg !5029
  %4 = load i64, i64* %__b, align 8, !dbg !5029
  %5 = load i64*, i64** %__d, align 8, !dbg !5029
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5029
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5029
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5029
  store i64 %8, i64* %5, align 8, !dbg !5029
  %frombool = zext i1 %7 to i8, !dbg !5029
  store i8 %frombool, i8* %tmp, align 1, !dbg !5029
  %9 = load i8, i8* %tmp, align 1, !dbg !5029
  %tobool = trunc i8 %9 to i1, !dbg !5029
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !5033
  %lnot = xor i1 %call, true, !dbg !5033
  %lnot3 = xor i1 %lnot, true, !dbg !5033
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5033
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5033
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !5033
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5034

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !5035
  br label %return, !dbg !5035

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !5036
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5037
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !5038

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !5039
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5040
  br i1 %13, label %if.then6, label %if.end8, !dbg !5041

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !5042
  %15 = load i32, i32* %flags.addr, align 4, !dbg !5043
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !5044
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #7, !dbg !5045
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !5046

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !5047
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !5048
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5049

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !5050
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !5051
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !5052
  %call.i.i = call i32 @get_order(i64 %21) #13, !dbg !5053
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5014
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !5054
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5055
  %24 = load i32, i32* %order.i.i, align 4, !dbg !5056
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5057
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5058
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5059
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !5060
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5060
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5060
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5060
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !5060
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5061
  br label %kmalloc.exit, !dbg !5061

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !5062
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5063
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !5063
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5064

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5065
  br label %kmalloc_index.exit.i, !dbg !5065

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5066
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !5067
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5068

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5069
  br label %kmalloc_index.exit.i, !dbg !5069

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5070
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !5071
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5072

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5073
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !5074
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5075

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5076
  br label %kmalloc_index.exit.i, !dbg !5076

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5077
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !5078
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5079

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5080
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !5081
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5082

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5083
  br label %kmalloc_index.exit.i, !dbg !5083

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5084
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !5085
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5086

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5087
  br label %kmalloc_index.exit.i, !dbg !5087

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5088
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !5089
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5090

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5091
  br label %kmalloc_index.exit.i, !dbg !5091

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5092
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !5093
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5094

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5095
  br label %kmalloc_index.exit.i, !dbg !5095

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5096
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !5097
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5098

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5099
  br label %kmalloc_index.exit.i, !dbg !5099

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5100
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !5101
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5102

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5103
  br label %kmalloc_index.exit.i, !dbg !5103

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5104
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !5105
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5106

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5107
  br label %kmalloc_index.exit.i, !dbg !5107

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5108
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !5109
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5110

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5111
  br label %kmalloc_index.exit.i, !dbg !5111

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5112
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !5113
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5114

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5115
  br label %kmalloc_index.exit.i, !dbg !5115

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5116
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !5117
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5118

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5119
  br label %kmalloc_index.exit.i, !dbg !5119

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5120
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !5121
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5122

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5123
  br label %kmalloc_index.exit.i, !dbg !5123

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5124
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !5125
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5126

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5127
  br label %kmalloc_index.exit.i, !dbg !5127

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5128
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !5129
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5130

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5131
  br label %kmalloc_index.exit.i, !dbg !5131

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5132
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !5133
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5134

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5135
  br label %kmalloc_index.exit.i, !dbg !5135

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5136
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !5137
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5138

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5139
  br label %kmalloc_index.exit.i, !dbg !5139

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5140
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !5141
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5142

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5143
  br label %kmalloc_index.exit.i, !dbg !5143

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5144
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !5145
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5146

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5147
  br label %kmalloc_index.exit.i, !dbg !5147

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5148
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !5149
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5150

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5151
  br label %kmalloc_index.exit.i, !dbg !5151

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5152
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !5153
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5154

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5155
  br label %kmalloc_index.exit.i, !dbg !5155

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5156
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !5157
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5158

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5159
  br label %kmalloc_index.exit.i, !dbg !5159

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5160
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !5161
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5162

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5163
  br label %kmalloc_index.exit.i, !dbg !5163

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5164
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !5165
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5166

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5167
  br label %kmalloc_index.exit.i, !dbg !5167

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5168
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !5169
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5170

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5171
  br label %kmalloc_index.exit.i, !dbg !5171

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5172
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !5173
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5174

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5175
  br label %kmalloc_index.exit.i, !dbg !5175

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5176
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !5177
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5178

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5179
  br label %kmalloc_index.exit.i, !dbg !5179

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !5180, !srcloc !4729
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 203) #7, !dbg !5181, !srcloc !4733
  unreachable, !dbg !5182

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !5183
  store i32 %59, i32* %index.i, align 4, !dbg !5184
  %60 = load i32, i32* %index.i, align 4, !dbg !5185
  %tobool.i = icmp ne i32 %60, 0, !dbg !5185
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5186

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5187
  br label %kmalloc.exit, !dbg !5187

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !5188
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5189
  %and.i.i = and i32 %62, 17, !dbg !5189
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5189
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5189
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5189
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5189
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5190

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5191
  br label %kmalloc_type.exit.i, !dbg !5191

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5192
  %and2.i.i = and i32 %63, 1, !dbg !5193
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5192
  %64 = zext i1 %tobool3.i.i to i64, !dbg !5192
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5192
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5194
  br label %kmalloc_type.exit.i, !dbg !5194

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !5195
  %idxprom.i = zext i32 %65 to i64, !dbg !5196
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5196
  %66 = load i32, i32* %index.i, align 4, !dbg !5197
  %idxprom6.i = zext i32 %66 to i64, !dbg !5196
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5196
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5196
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5198
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !5199
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5200
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5201
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !5202
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5202
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5202
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5202
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !5202
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5002
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5203
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !5204
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5205
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5206
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !5207
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5208
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !5209
  store i8* %76, i8** %retval.i, align 8, !dbg !5210
  br label %kmalloc.exit, !dbg !5210

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !5211
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !5212
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !5213
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5213
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5213
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5213
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !5213
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5214
  br label %kmalloc.exit, !dbg !5214

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !5215
  store i8* %79, i8** %retval, align 8, !dbg !5216
  br label %return, !dbg !5216

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !5217
  %81 = load i32, i32* %flags.addr, align 4, !dbg !5218
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !5219
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !5219
  %maskedptr = and i64 %ptrint, 7, !dbg !5219
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !5219
  call void @llvm.assume(i1 %maskcond), !dbg !5219
  store i8* %call9, i8** %retval, align 8, !dbg !5220
  br label %return, !dbg !5220

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !5221
  ret i8* %82, !dbg !5221
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !5222 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5226, metadata !DIExpression()), !dbg !5227
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5228
  %tobool = trunc i8 %0 to i1, !dbg !5228
  %lnot = xor i1 %tobool, true, !dbg !5228
  %lnot1 = xor i1 %lnot, true, !dbg !5228
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5228
  %conv = sext i32 %lnot.ext to i64, !dbg !5228
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5228
  ret i1 %tobool2, !dbg !5229
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5230 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5231, metadata !DIExpression()), !dbg !5232
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5233, metadata !DIExpression()), !dbg !5234
  ret i1 true, !dbg !5235
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn }
attributes #9 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!3735}
!llvm.named.register.rsp = !{!3753}
!llvm.module.flags = !{!3754, !3755, !3756, !3757}
!llvm.ident = !{!3758}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 338, type: !515, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "input_ff_create", scope: !3, file: !3, line: 305, type: !4, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!3 = !DIFile(filename: "drivers/input/ff-core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !49}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !9, line: 131, size: 10432, elements: !10)
!9 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !15, !16, !17, !28, !33, !34, !38, !39, !40, !41, !42, !43, !47, !48, !50, !51, !52, !54, !74, !79, !2911, !2914, !2915, !2927, !2929, !2932, !2942, !2943, !2944, !2945, !2946, !2950, !2954, !2958, !2962, !3040, !3041, !3042, !3043, !3044, !3726, !3727, !3728, !3729, !3730, !3732, !3733}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !9, line: 132, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !8, file: !9, line: 133, baseType: !12, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !8, file: !9, line: 134, baseType: !12, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !8, file: !9, line: 135, baseType: !18, size: 64, offset: 192)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !19, line: 59, size: 64, elements: !20)
!19 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !25, !26, !27}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !18, file: !19, line: 60, baseType: !22, size: 16)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !24)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!24 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !18, file: !19, line: 61, baseType: !22, size: 16, offset: 16)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !18, file: !19, line: 62, baseType: !22, size: 16, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !18, file: !19, line: 63, baseType: !22, size: 16, offset: 48)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !8, file: !9, line: 137, baseType: !29, size: 64, offset: 256)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !31)
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !{!32}
!32 = !DISubrange(count: 1)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !8, file: !9, line: 139, baseType: !29, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !8, file: !9, line: 140, baseType: !35, size: 768, offset: 384)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 768, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 12)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !8, file: !9, line: 141, baseType: !29, size: 64, offset: 1152)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !8, file: !9, line: 142, baseType: !29, size: 64, offset: 1216)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !8, file: !9, line: 143, baseType: !29, size: 64, offset: 1280)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !8, file: !9, line: 144, baseType: !29, size: 64, offset: 1344)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !8, file: !9, line: 145, baseType: !29, size: 64, offset: 1408)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !8, file: !9, line: 146, baseType: !44, size: 128, offset: 1472)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 128, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 2)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !8, file: !9, line: 147, baseType: !29, size: 64, offset: 1600)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !8, file: !9, line: 149, baseType: !49, size: 32, offset: 1664)
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !8, file: !9, line: 151, baseType: !49, size: 32, offset: 1696)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !8, file: !9, line: 152, baseType: !49, size: 32, offset: 1728)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !8, file: !9, line: 153, baseType: !53, size: 64, offset: 1792)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !8, file: !9, line: 155, baseType: !55, size: 64, offset: 1856)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!6, !7, !58, !73}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !19, line: 114, size: 320, elements: !61)
!61 = !{!62, !65, !66, !67, !69}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !19, line: 116, baseType: !63, size: 8)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !64)
!64 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !60, file: !19, line: 117, baseType: !63, size: 8, offset: 8)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !60, file: !19, line: 118, baseType: !22, size: 16, offset: 16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !60, file: !19, line: 119, baseType: !68, size: 32, offset: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !49)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !60, file: !19, line: 120, baseType: !70, size: 256, offset: 64)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 32)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !8, file: !9, line: 158, baseType: !75, size: 64, offset: 1920)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!6, !7, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !8, file: !9, line: 161, baseType: !80, size: 64, offset: 1984)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !9, line: 534, size: 896, elements: !82)
!82 = !{!83, !152, !156, !160, !166, !167, !171, !172, !173, !210, !211, !212}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !81, file: !9, line: 535, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!6, !7, !87, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !19, line: 450, size: 384, elements: !89)
!89 = !{!90, !91, !94, !95, !100, !105}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !19, line: 451, baseType: !22, size: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !88, file: !19, line: 452, baseType: !92, size: 16, offset: 16)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !23, line: 23, baseType: !93)
!93 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !88, file: !19, line: 453, baseType: !22, size: 16, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !88, file: !19, line: 454, baseType: !96, size: 32, offset: 48)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !19, line: 316, size: 32, elements: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !96, file: !19, line: 317, baseType: !22, size: 16)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !96, file: !19, line: 318, baseType: !22, size: 16, offset: 16)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !88, file: !19, line: 455, baseType: !101, size: 32, offset: 80)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !19, line: 306, size: 32, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !101, file: !19, line: 307, baseType: !22, size: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !101, file: !19, line: 308, baseType: !22, size: 16, offset: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !88, file: !19, line: 463, baseType: !106, size: 256, offset: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !19, line: 457, size: 256, elements: !107)
!107 = !{!108, !119, !125, !137, !147}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !106, file: !19, line: 458, baseType: !109, size: 80)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !19, line: 345, size: 80, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !109, file: !19, line: 346, baseType: !92, size: 16)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !109, file: !19, line: 347, baseType: !113, size: 64, offset: 16)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !19, line: 333, size: 64, elements: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !113, file: !19, line: 334, baseType: !22, size: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !113, file: !19, line: 335, baseType: !22, size: 16, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !113, file: !19, line: 336, baseType: !22, size: 16, offset: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !113, file: !19, line: 337, baseType: !22, size: 16, offset: 48)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !106, file: !19, line: 459, baseType: !120, size: 96)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !19, line: 356, size: 96, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !120, file: !19, line: 357, baseType: !92, size: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !120, file: !19, line: 358, baseType: !92, size: 16, offset: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !120, file: !19, line: 359, baseType: !113, size: 64, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !106, file: !19, line: 460, baseType: !126, size: 256)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !19, line: 401, size: 256, elements: !127)
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !126, file: !19, line: 402, baseType: !22, size: 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !126, file: !19, line: 403, baseType: !22, size: 16, offset: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !126, file: !19, line: 404, baseType: !92, size: 16, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !126, file: !19, line: 405, baseType: !92, size: 16, offset: 48)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !126, file: !19, line: 406, baseType: !22, size: 16, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !126, file: !19, line: 408, baseType: !113, size: 64, offset: 80)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !126, file: !19, line: 410, baseType: !68, size: 32, offset: 160)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !126, file: !19, line: 411, baseType: !136, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !106, file: !19, line: 461, baseType: !138, size: 192)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 192, elements: !45)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !19, line: 372, size: 96, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !139, file: !19, line: 373, baseType: !22, size: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !139, file: !19, line: 374, baseType: !22, size: 16, offset: 16)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !139, file: !19, line: 376, baseType: !92, size: 16, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !139, file: !19, line: 377, baseType: !92, size: 16, offset: 48)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !139, file: !19, line: 379, baseType: !22, size: 16, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !139, file: !19, line: 380, baseType: !92, size: 16, offset: 80)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !106, file: !19, line: 462, baseType: !148, size: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !19, line: 422, size: 32, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !148, file: !19, line: 423, baseType: !22, size: 16)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !148, file: !19, line: 424, baseType: !22, size: 16, offset: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !81, file: !9, line: 537, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!6, !7, !6}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !81, file: !9, line: 539, baseType: !157, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!6, !7, !6, !6}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !81, file: !9, line: 540, baseType: !161, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !7, !164}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !165, line: 19, baseType: !22)
!165 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!166 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !81, file: !9, line: 541, baseType: !161, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !81, file: !9, line: 543, baseType: !168, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !80}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !81, file: !9, line: 545, baseType: !53, size: 64, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !81, file: !9, line: 547, baseType: !44, size: 128, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !81, file: !9, line: 549, baseType: !174, size: 192, offset: 576)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !175, line: 53, size: 192, elements: !176)
!175 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!176 = !{!177, !188, !204}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !174, file: !175, line: 54, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !179, line: 13, baseType: !180)
!179 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !181, line: 175, baseType: !182)
!181 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 173, size: 64, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !182, file: !181, line: 174, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !165, line: 22, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !23, line: 30, baseType: !187)
!187 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !174, file: !175, line: 55, baseType: !189, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !190, line: 83, baseType: !191)
!190 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !190, line: 71, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !190, line: 72, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !190, line: 72, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !194, file: !190, line: 73, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !190, line: 20, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !197, file: !190, line: 21, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !201, line: 25, baseType: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 25, elements: !203)
!203 = !{}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !174, file: !175, line: 59, baseType: !205, size: 128, offset: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !181, line: 178, size: 128, elements: !206)
!206 = !{!207, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !181, line: 179, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !205, file: !181, line: 179, baseType: !208, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !81, file: !9, line: 551, baseType: !6, size: 32, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !81, file: !9, line: 552, baseType: !87, size: 64, offset: 832)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !81, file: !9, line: 553, baseType: !213, offset: 896)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, elements: !2106)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !216, line: 916, size: 1856, align: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!217 = !{!218, !236, !2861, !2862, !2863, !2864, !2873, !2874, !2875, !2876, !2877, !2878, !2894, !2895, !2904, !2905, !2906, !2907, !2908, !2909, !2910}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !215, file: !216, line: 920, baseType: !219, size: 128)
!219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !216, line: 917, size: 128, elements: !220)
!220 = !{!221, !227}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !219, file: !216, line: 918, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !223, line: 58, size: 64, elements: !224)
!223 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !223, line: 59, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !219, file: !216, line: 919, baseType: !228, size: 128, align: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !181, line: 216, size: 128, align: 64, elements: !229)
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !181, line: 217, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !228, file: !181, line: 218, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !231}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !215, file: !216, line: 921, baseType: !237, size: 128, offset: 128)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !238, line: 8, size: 128, elements: !239)
!238 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!239 = !{!240, !244}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !237, file: !238, line: 9, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !243, line: 18, flags: DIFlagFwdDecl)
!243 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!244 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !237, file: !238, line: 10, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !243, line: 89, size: 1536, elements: !247)
!247 = !{!248, !249, !259, !267, !268, !287, !2829, !2831, !2843, !2844, !2845, !2846, !2847, !2853, !2854, !2855}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !246, file: !243, line: 91, baseType: !49, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !246, file: !243, line: 92, baseType: !250, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !251, line: 277, baseType: !252)
!251 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !251, line: 277, size: 32, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !252, file: !251, line: 277, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !251, line: 70, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !251, line: 65, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !256, file: !251, line: 66, baseType: !49, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !246, file: !243, line: 93, baseType: !260, size: 128, offset: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !261, line: 38, size: 128, elements: !262)
!261 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!262 = !{!263, !265}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !261, line: 39, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !260, file: !261, line: 39, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !246, file: !243, line: 94, baseType: !245, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !246, file: !243, line: 95, baseType: !269, size: 128, offset: 256)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !243, line: 47, size: 128, elements: !270)
!270 = !{!271, !284}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !243, line: 48, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !243, line: 48, size: 64, elements: !273)
!273 = !{!274, !280}
!274 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !243, line: 49, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !272, file: !243, line: 49, size: 64, elements: !276)
!276 = !{!277, !279}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !275, file: !243, line: 50, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !165, line: 21, baseType: !68)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !275, file: !243, line: 50, baseType: !278, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !272, file: !243, line: 52, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !165, line: 23, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !283)
!283 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !243, line: 54, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !246, file: !243, line: 96, baseType: !288, size: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !216, line: 610, size: 4224, elements: !290)
!290 = !{!291, !293, !294, !303, !310, !311, !465, !2540, !2541, !2542, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2805, !2813, !2814, !2815, !2825, !2826, !2827, !2828}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !289, file: !216, line: 611, baseType: !292, size: 16)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !181, line: 19, baseType: !24)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !289, file: !216, line: 612, baseType: !24, size: 16, offset: 16)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !289, file: !216, line: 613, baseType: !295, size: 32, offset: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !296, line: 23, baseType: !297)
!296 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !296, line: 21, size: 32, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !297, file: !296, line: 22, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !181, line: 32, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !302, line: 49, baseType: !49)
!302 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!303 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !289, file: !216, line: 614, baseType: !304, size: 32, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !296, line: 28, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !296, line: 26, size: 32, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !305, file: !296, line: 27, baseType: !308, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !181, line: 33, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !302, line: 50, baseType: !49)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !289, file: !216, line: 615, baseType: !49, size: 32, offset: 96)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !289, file: !216, line: 622, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !216, line: 1864, size: 1536, align: 512, elements: !315)
!315 = !{!316, !320, !333, !337, !343, !348, !354, !358, !362, !366, !370, !371, !377, !381, !406, !435, !445, !451, !456, !460, !461}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !314, file: !216, line: 1865, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!245, !288, !245, !49}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !314, file: !216, line: 1866, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!12, !245, !288, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !326, line: 10, size: 128, elements: !327)
!326 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!327 = !{!328, !332}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !325, file: !326, line: 11, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !53}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !325, file: !326, line: 12, baseType: !53, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !314, file: !216, line: 1867, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!6, !288, !6}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !314, file: !216, line: 1868, baseType: !338, size: 64, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!341, !288, !6}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !216, line: 581, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !314, file: !216, line: 1870, baseType: !344, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!6, !245, !347, !6}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !314, file: !216, line: 1872, baseType: !349, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!6, !288, !245, !292, !352}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !181, line: 30, baseType: !353)
!353 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !314, file: !216, line: 1873, baseType: !355, size: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!6, !245, !288, !245}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !314, file: !216, line: 1874, baseType: !359, size: 64, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!6, !288, !245}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !314, file: !216, line: 1875, baseType: !363, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!6, !288, !245, !12}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !314, file: !216, line: 1876, baseType: !367, size: 64, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!6, !288, !245, !292}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !314, file: !216, line: 1877, baseType: !359, size: 64, offset: 640)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !314, file: !216, line: 1878, baseType: !372, size: 64, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!6, !288, !245, !292, !375}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !181, line: 16, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !181, line: 13, baseType: !278)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !314, file: !216, line: 1879, baseType: !378, size: 64, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!6, !288, !245, !288, !245, !49}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !314, file: !216, line: 1881, baseType: !382, size: 64, offset: 832)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!6, !245, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !216, line: 219, size: 640, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !395, !403, !404, !405}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !386, file: !216, line: 220, baseType: !49, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !386, file: !216, line: 221, baseType: !292, size: 16, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !386, file: !216, line: 222, baseType: !295, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !386, file: !216, line: 223, baseType: !304, size: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !386, file: !216, line: 224, baseType: !393, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !181, line: 46, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !302, line: 88, baseType: !187)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !386, file: !216, line: 225, baseType: !396, size: 128, offset: 192)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !397, line: 13, size: 128, elements: !398)
!397 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!398 = !{!399, !401}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !396, file: !397, line: 14, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !397, line: 8, baseType: !186)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !396, file: !397, line: 15, baseType: !402, size: 64, offset: 64)
!402 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !386, file: !216, line: 226, baseType: !396, size: 128, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !386, file: !216, line: 227, baseType: !396, size: 128, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !386, file: !216, line: 234, baseType: !214, size: 64, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !314, file: !216, line: 1882, baseType: !407, size: 64, offset: 896)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!6, !410, !412, !278, !49}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !414, line: 22, size: 1152, elements: !415)
!414 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !417, !418, !419, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !413, file: !414, line: 23, baseType: !278, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !413, file: !414, line: 24, baseType: !292, size: 16, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !413, file: !414, line: 25, baseType: !49, size: 32, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !413, file: !414, line: 26, baseType: !420, size: 32, offset: 96)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !181, line: 104, baseType: !278)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !413, file: !414, line: 27, baseType: !281, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !413, file: !414, line: 28, baseType: !281, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !413, file: !414, line: 37, baseType: !281, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !413, file: !414, line: 38, baseType: !375, size: 32, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !413, file: !414, line: 39, baseType: !375, size: 32, offset: 352)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !413, file: !414, line: 40, baseType: !295, size: 32, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !413, file: !414, line: 41, baseType: !304, size: 32, offset: 416)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !413, file: !414, line: 42, baseType: !393, size: 64, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !413, file: !414, line: 43, baseType: !396, size: 128, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !413, file: !414, line: 44, baseType: !396, size: 128, offset: 640)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !413, file: !414, line: 45, baseType: !396, size: 128, offset: 768)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !413, file: !414, line: 46, baseType: !396, size: 128, offset: 896)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !413, file: !414, line: 47, baseType: !281, size: 64, offset: 1024)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !413, file: !414, line: 48, baseType: !281, size: 64, offset: 1088)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !314, file: !216, line: 1883, baseType: !436, size: 64, offset: 960)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!439, !245, !347, !442}
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !181, line: 60, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !302, line: 73, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !302, line: 15, baseType: !402)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 55, baseType: !443)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !302, line: 72, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !302, line: 16, baseType: !30)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !314, file: !216, line: 1884, baseType: !446, size: 64, offset: 1024)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!6, !288, !449, !281, !281}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !216, line: 50, flags: DIFlagFwdDecl)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !314, file: !216, line: 1886, baseType: !452, size: 64, offset: 1088)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!6, !288, !455, !6}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !314, file: !216, line: 1887, baseType: !457, size: 64, offset: 1152)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!6, !288, !245, !214, !49, !292}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !314, file: !216, line: 1890, baseType: !367, size: 64, offset: 1216)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !314, file: !216, line: 1891, baseType: !462, size: 64, offset: 1280)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!6, !288, !341, !6}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !289, file: !216, line: 623, baseType: !466, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !216, line: 1416, size: 9472, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !526, !2142, !2230, !2313, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2329, !2333, !2334, !2337, !2338, !2341, !2342, !2343, !2384, !2410, !2411, !2412, !2413, !2414, !2415, !2418, !2420, !2427, !2428, !2430, !2431, !2432, !2491, !2492, !2507, !2508, !2509, !2510, !2511, !2514, !2515, !2516, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !467, file: !216, line: 1417, baseType: !205, size: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !467, file: !216, line: 1418, baseType: !375, size: 32, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !467, file: !216, line: 1419, baseType: !64, size: 8, offset: 160)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !467, file: !216, line: 1420, baseType: !30, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !467, file: !216, line: 1421, baseType: !393, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !467, file: !216, line: 1422, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !216, line: 2228, size: 576, elements: !477)
!477 = !{!478, !479, !480, !487, !491, !495, !499, !503, !504, !514, !517, !518, !519, !523, !524, !525}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !476, file: !216, line: 2229, baseType: !12, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !476, file: !216, line: 2230, baseType: !6, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !476, file: !216, line: 2238, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!6, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !486, line: 28, flags: DIFlagFwdDecl)
!486 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!487 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !476, file: !216, line: 2239, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !216, line: 70, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !476, file: !216, line: 2240, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!245, !475, !6, !12, !53}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !476, file: !216, line: 2242, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !466}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !476, file: !216, line: 2243, baseType: !500, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !502, line: 76, flags: DIFlagFwdDecl)
!502 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !216, line: 2244, baseType: !475, size: 64, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !476, file: !216, line: 2245, baseType: !505, size: 64, offset: 512)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !181, line: 182, size: 64, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !505, file: !181, line: 183, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !181, line: 186, size: 128, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !181, line: 187, baseType: !508, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !509, file: !181, line: 187, baseType: !513, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !476, file: !216, line: 2247, baseType: !515, offset: 576)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !516, line: 187, elements: !203)
!516 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !476, file: !216, line: 2248, baseType: !515, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !476, file: !216, line: 2249, baseType: !515, offset: 576)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !476, file: !216, line: 2250, baseType: !520, offset: 576)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 3)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !476, file: !216, line: 2252, baseType: !515, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !476, file: !216, line: 2253, baseType: !515, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !476, file: !216, line: 2254, baseType: !515, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !467, file: !216, line: 1423, baseType: !527, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !216, line: 1935, size: 1472, elements: !530)
!530 = !{!531, !535, !539, !540, !544, !550, !554, !555, !556, !560, !564, !565, !566, !567, !573, !578, !579, !586, !587, !588, !589, !2126, !2141}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !529, file: !216, line: 1936, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!288, !466}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !529, file: !216, line: 1937, baseType: !536, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !288}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !529, file: !216, line: 1938, baseType: !536, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !529, file: !216, line: 1940, baseType: !541, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !288, !6}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !529, file: !216, line: 1941, baseType: !545, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!6, !288, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !216, line: 289, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !529, file: !216, line: 1942, baseType: !551, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!6, !288}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !529, file: !216, line: 1943, baseType: !536, size: 64, offset: 384)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !529, file: !216, line: 1944, baseType: !496, size: 64, offset: 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !529, file: !216, line: 1945, baseType: !557, size: 64, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!6, !466, !6}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !529, file: !216, line: 1946, baseType: !561, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!6, !466}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !529, file: !216, line: 1947, baseType: !561, size: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !529, file: !216, line: 1948, baseType: !561, size: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !529, file: !216, line: 1949, baseType: !561, size: 64, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !529, file: !216, line: 1950, baseType: !568, size: 64, offset: 832)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!6, !245, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !216, line: 57, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !529, file: !216, line: 1951, baseType: !574, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!6, !466, !577, !347}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !529, file: !216, line: 1952, baseType: !496, size: 64, offset: 960)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !529, file: !216, line: 1954, baseType: !580, size: 64, offset: 1024)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!6, !583, !245}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !585, line: 539, flags: DIFlagFwdDecl)
!585 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !529, file: !216, line: 1955, baseType: !580, size: 64, offset: 1088)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !529, file: !216, line: 1956, baseType: !580, size: 64, offset: 1152)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !529, file: !216, line: 1957, baseType: !580, size: 64, offset: 1216)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !529, file: !216, line: 1963, baseType: !590, size: 64, offset: 1280)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!6, !466, !593, !616}
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !595, line: 68, size: 512, align: 128, elements: !596)
!595 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!596 = !{!597, !598, !2118, !2125}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !594, file: !595, line: 69, baseType: !30, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !595, line: 77, baseType: !599, size: 320, offset: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !594, file: !595, line: 77, size: 320, elements: !600)
!600 = !{!601, !787, !792, !820, !828, !834, !2110, !2117}
!601 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !595, line: 78, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !599, file: !595, line: 78, size: 320, elements: !603)
!603 = !{!604, !605, !785, !786}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !602, file: !595, line: 84, baseType: !205, size: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !602, file: !595, line: 86, baseType: !606, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !216, line: 451, size: 1216, align: 64, elements: !608)
!608 = !{!609, !610, !618, !619, !624, !639, !648, !649, !650, !651, !778, !779, !782, !783, !784}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !607, file: !216, line: 452, baseType: !288, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !607, file: !216, line: 453, baseType: !611, size: 128, offset: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !612, line: 292, size: 128, elements: !613)
!612 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!613 = !{!614, !615, !617}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !611, file: !612, line: 293, baseType: !189)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !611, file: !612, line: 295, baseType: !616, size: 32)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !181, line: 148, baseType: !49)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !611, file: !612, line: 296, baseType: !53, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !607, file: !216, line: 454, baseType: !616, size: 32, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !607, file: !216, line: 455, baseType: !620, size: 32, offset: 224)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !181, line: 168, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 166, size: 32, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !621, file: !181, line: 167, baseType: !6, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !607, file: !216, line: 460, baseType: !625, size: 128, offset: 256)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !626, line: 125, size: 128, elements: !627)
!626 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!627 = !{!628, !638}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !625, file: !626, line: 126, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !626, line: 31, size: 64, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !629, file: !626, line: 32, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !626, line: 24, size: 192, align: 64, elements: !634)
!634 = !{!635, !636, !637}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !633, file: !626, line: 25, baseType: !30, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !633, file: !626, line: 26, baseType: !632, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !633, file: !626, line: 27, baseType: !632, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !625, file: !626, line: 127, baseType: !632, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !607, file: !216, line: 461, baseType: !640, size: 256, offset: 384)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !641, line: 35, size: 256, elements: !642)
!641 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!642 = !{!643, !644, !645, !647}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !640, file: !641, line: 36, baseType: !178, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !640, file: !641, line: 42, baseType: !178, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !640, file: !641, line: 46, baseType: !646, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !190, line: 29, baseType: !197)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !640, file: !641, line: 47, baseType: !205, size: 128, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !607, file: !216, line: 462, baseType: !30, size: 64, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !607, file: !216, line: 463, baseType: !30, size: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !607, file: !216, line: 464, baseType: !30, size: 64, offset: 768)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !607, file: !216, line: 465, baseType: !652, size: 64, offset: 832)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !216, line: 367, size: 1408, elements: !655)
!655 = !{!656, !660, !664, !668, !672, !676, !682, !688, !692, !697, !701, !705, !709, !735, !746, !752, !753, !754, !758, !763, !767, !774}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !654, file: !216, line: 368, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!6, !593, !548}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !654, file: !216, line: 369, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!6, !214, !593}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !654, file: !216, line: 372, baseType: !665, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!6, !606, !548}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !654, file: !216, line: 375, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!6, !593}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !654, file: !216, line: 381, baseType: !673, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!6, !214, !606, !208, !49}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !654, file: !216, line: 383, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !216, line: 290, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !654, file: !216, line: 385, baseType: !683, size: 64, offset: 384)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!6, !214, !606, !393, !49, !49, !686, !687}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !654, file: !216, line: 388, baseType: !689, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!6, !214, !606, !393, !49, !49, !593, !53}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !654, file: !216, line: 393, baseType: !693, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!696, !606, !696}
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !181, line: 125, baseType: !281)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !654, file: !216, line: 394, baseType: !698, size: 64, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !593, !49, !49}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !654, file: !216, line: 395, baseType: !702, size: 64, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!6, !593, !616}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !654, file: !216, line: 396, baseType: !706, size: 64, offset: 704)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{null, !593}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !654, file: !216, line: 397, baseType: !710, size: 64, offset: 768)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!439, !713, !733}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !216, line: 320, size: 384, elements: !715)
!715 = !{!716, !717, !718, !722, !723, !724, !725, !726}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !714, file: !216, line: 321, baseType: !214, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !714, file: !216, line: 326, baseType: !393, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !714, file: !216, line: 327, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !713, !402, !402}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !714, file: !216, line: 328, baseType: !53, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !714, file: !216, line: 329, baseType: !6, size: 32, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !714, file: !216, line: 330, baseType: !164, size: 16, offset: 288)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !714, file: !216, line: 331, baseType: !164, size: 16, offset: 304)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !714, file: !216, line: 332, baseType: !727, size: 64, offset: 320)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !714, file: !216, line: 332, size: 64, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !727, file: !216, line: 333, baseType: !49, size: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !727, file: !216, line: 334, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !216, line: 334, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !216, line: 64, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !654, file: !216, line: 402, baseType: !736, size: 64, offset: 832)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!6, !606, !593, !593, !739}
!739 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !740, line: 15, baseType: !49, size: 32, elements: !741)
!740 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!741 = !{!742, !743, !744, !745}
!742 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!743 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!744 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!745 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !654, file: !216, line: 404, baseType: !747, size: 64, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!352, !593, !750}
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !751, line: 305, baseType: !49)
!751 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!752 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !654, file: !216, line: 405, baseType: !706, size: 64, offset: 960)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !654, file: !216, line: 406, baseType: !669, size: 64, offset: 1024)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !654, file: !216, line: 407, baseType: !755, size: 64, offset: 1088)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!6, !593, !30, !30}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !654, file: !216, line: 409, baseType: !759, size: 64, offset: 1152)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !593, !762, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !654, file: !216, line: 410, baseType: !764, size: 64, offset: 1216)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!6, !606, !593}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !654, file: !216, line: 413, baseType: !768, size: 64, offset: 1280)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!6, !771, !214, !773}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !216, line: 61, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !654, file: !216, line: 415, baseType: !775, size: 64, offset: 1344)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !214}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !216, line: 466, baseType: !30, size: 64, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !607, file: !216, line: 467, baseType: !780, size: 32, offset: 960)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !781, line: 8, baseType: !278)
!781 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!782 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !607, file: !216, line: 468, baseType: !189, offset: 992)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !607, file: !216, line: 469, baseType: !205, size: 128, offset: 1024)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !607, file: !216, line: 470, baseType: !53, size: 64, offset: 1152)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !602, file: !595, line: 87, baseType: !30, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !602, file: !595, line: 94, baseType: !30, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !595, line: 96, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !599, file: !595, line: 96, size: 64, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !788, file: !595, line: 101, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !181, line: 143, baseType: !281)
!792 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !595, line: 103, baseType: !793, size: 320)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !599, file: !595, line: 103, size: 320, elements: !794)
!794 = !{!795, !805, !808, !809}
!795 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !595, line: 104, baseType: !796, size: 128)
!796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !595, line: 104, size: 128, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !796, file: !595, line: 105, baseType: !205, size: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !595, line: 106, baseType: !800, size: 128)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !796, file: !595, line: 106, size: 128, elements: !801)
!801 = !{!802, !803, !804}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !800, file: !595, line: 107, baseType: !593, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !800, file: !595, line: 109, baseType: !6, size: 32, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !800, file: !595, line: 110, baseType: !6, size: 32, offset: 96)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !793, file: !595, line: 117, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !595, line: 117, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !793, file: !595, line: 119, baseType: !53, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !793, file: !595, line: 120, baseType: !810, size: 64, offset: 256)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !793, file: !595, line: 120, size: 64, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !810, file: !595, line: 121, baseType: !53, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !810, file: !595, line: 122, baseType: !30, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !810, file: !595, line: 123, baseType: !815, size: 32)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !810, file: !595, line: 123, size: 32, elements: !816)
!816 = !{!817, !818, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !815, file: !595, line: 124, baseType: !49, size: 16, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !815, file: !595, line: 125, baseType: !49, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !815, file: !595, line: 126, baseType: !49, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !595, line: 130, baseType: !821, size: 192)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !599, file: !595, line: 130, size: 192, elements: !822)
!822 = !{!823, !824, !825, !826, !827}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !821, file: !595, line: 131, baseType: !30, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !821, file: !595, line: 134, baseType: !64, size: 8, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !821, file: !595, line: 135, baseType: !64, size: 8, offset: 72)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !821, file: !595, line: 136, baseType: !620, size: 32, offset: 96)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !821, file: !595, line: 137, baseType: !49, size: 32, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !595, line: 139, baseType: !829, size: 256)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !599, file: !595, line: 139, size: 256, elements: !830)
!830 = !{!831, !832, !833}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !829, file: !595, line: 140, baseType: !30, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !829, file: !595, line: 141, baseType: !620, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !829, file: !595, line: 143, baseType: !205, size: 128, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !595, line: 145, baseType: !835, size: 256)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !599, file: !595, line: 145, size: 256, elements: !836)
!836 = !{!837, !838, !840, !841, !2109}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !835, file: !595, line: 146, baseType: !30, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !835, file: !595, line: 147, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !585, line: 509, baseType: !593)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !835, file: !595, line: 148, baseType: !30, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !595, line: 149, baseType: !842, size: 64, offset: 192)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !835, file: !595, line: 149, size: 64, elements: !843)
!843 = !{!844, !2108}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !842, file: !595, line: 150, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !595, line: 388, size: 7296, elements: !847)
!847 = !{!848, !2104}
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !595, line: 389, baseType: !849, size: 7296)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !595, line: 389, size: 7296, elements: !850)
!850 = !{!851, !889, !890, !891, !895, !896, !897, !898, !899, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !940, !948, !951, !989, !990, !2088, !2089, !2092, !2093, !2094, !2097, !2098, !2099, !2102, !2103}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !849, file: !595, line: 390, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !595, line: 305, size: 1472, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862, !869, !870, !875, !876, !879, !883, !884, !885, !886, !887}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !853, file: !595, line: 308, baseType: !30, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !853, file: !595, line: 309, baseType: !30, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !853, file: !595, line: 313, baseType: !852, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !853, file: !595, line: 313, baseType: !852, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !853, file: !595, line: 315, baseType: !633, size: 192, align: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !853, file: !595, line: 323, baseType: !30, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !853, file: !595, line: 327, baseType: !845, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !853, file: !595, line: 333, baseType: !863, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !585, line: 284, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !585, line: 284, size: 64, elements: !865)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !864, file: !585, line: 284, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !868, line: 19, baseType: !30)
!868 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!869 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !853, file: !595, line: 334, baseType: !30, size: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !853, file: !595, line: 343, baseType: !871, size: 256, offset: 704)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !853, file: !595, line: 340, size: 256, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !871, file: !595, line: 341, baseType: !633, size: 192, align: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !871, file: !595, line: 342, baseType: !30, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !853, file: !595, line: 351, baseType: !205, size: 128, offset: 960)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !853, file: !595, line: 353, baseType: !877, size: 64, offset: 1088)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !595, line: 353, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !853, file: !595, line: 356, baseType: !880, size: 64, offset: 1152)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !595, line: 356, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !853, file: !595, line: 359, baseType: !30, size: 64, offset: 1216)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !853, file: !595, line: 361, baseType: !214, size: 64, offset: 1280)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !853, file: !595, line: 362, baseType: !53, size: 64, offset: 1344)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !853, file: !595, line: 365, baseType: !178, size: 64, offset: 1408)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !853, file: !595, line: 373, baseType: !888, offset: 1472)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !595, line: 296, elements: !203)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !849, file: !595, line: 391, baseType: !629, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !849, file: !595, line: 392, baseType: !281, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !849, file: !595, line: 394, baseType: !892, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!30, !214, !30, !30, !30, !30}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !849, file: !595, line: 398, baseType: !30, size: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !849, file: !595, line: 399, baseType: !30, size: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !849, file: !595, line: 405, baseType: !30, size: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !849, file: !595, line: 406, baseType: !30, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !849, file: !595, line: 407, baseType: !900, size: 64, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !585, line: 286, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !585, line: 286, size: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !902, file: !585, line: 286, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !868, line: 18, baseType: !30)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !849, file: !595, line: 416, baseType: !620, size: 32, offset: 576)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !849, file: !595, line: 428, baseType: !620, size: 32, offset: 608)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !849, file: !595, line: 437, baseType: !620, size: 32, offset: 640)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !849, file: !595, line: 447, baseType: !620, size: 32, offset: 672)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !849, file: !595, line: 450, baseType: !178, size: 64, offset: 704)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !849, file: !595, line: 452, baseType: !6, size: 32, offset: 768)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !849, file: !595, line: 454, baseType: !189, offset: 800)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !849, file: !595, line: 457, baseType: !640, size: 256, offset: 832)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !849, file: !595, line: 459, baseType: !205, size: 128, offset: 1088)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !849, file: !595, line: 466, baseType: !30, size: 64, offset: 1216)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !849, file: !595, line: 467, baseType: !30, size: 64, offset: 1280)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !849, file: !595, line: 469, baseType: !30, size: 64, offset: 1344)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !849, file: !595, line: 470, baseType: !30, size: 64, offset: 1408)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !849, file: !595, line: 471, baseType: !180, size: 64, offset: 1472)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !849, file: !595, line: 472, baseType: !30, size: 64, offset: 1536)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !849, file: !595, line: 473, baseType: !30, size: 64, offset: 1600)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !849, file: !595, line: 474, baseType: !30, size: 64, offset: 1664)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !849, file: !595, line: 475, baseType: !30, size: 64, offset: 1728)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !849, file: !595, line: 477, baseType: !189, offset: 1792)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !849, file: !595, line: 478, baseType: !30, size: 64, offset: 1792)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !849, file: !595, line: 478, baseType: !30, size: 64, offset: 1856)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !849, file: !595, line: 478, baseType: !30, size: 64, offset: 1920)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !849, file: !595, line: 478, baseType: !30, size: 64, offset: 1984)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !849, file: !595, line: 479, baseType: !30, size: 64, offset: 2048)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !849, file: !595, line: 479, baseType: !30, size: 64, offset: 2112)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !849, file: !595, line: 479, baseType: !30, size: 64, offset: 2176)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !849, file: !595, line: 480, baseType: !30, size: 64, offset: 2240)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !849, file: !595, line: 480, baseType: !30, size: 64, offset: 2304)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !849, file: !595, line: 480, baseType: !30, size: 64, offset: 2368)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !849, file: !595, line: 480, baseType: !30, size: 64, offset: 2432)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !849, file: !595, line: 482, baseType: !937, size: 2816, offset: 2496)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2816, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 44)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !849, file: !595, line: 488, baseType: !941, size: 256, offset: 5312)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !942, line: 60, size: 256, elements: !943)
!942 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !941, file: !942, line: 61, baseType: !945, size: 256)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 4)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !849, file: !595, line: 490, baseType: !949, size: 64, offset: 5568)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !595, line: 490, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !849, file: !595, line: 493, baseType: !952, size: 896, offset: 5632)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !953, line: 53, baseType: !954)
!953 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !953, line: 13, size: 896, elements: !955)
!955 = !{!956, !957, !958, !959, !962, !963, !964, !965, !985, !986, !987}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !954, file: !953, line: 18, baseType: !281, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !954, file: !953, line: 28, baseType: !180, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !954, file: !953, line: 31, baseType: !640, size: 256, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !954, file: !953, line: 32, baseType: !960, size: 64, offset: 384)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !953, line: 32, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !954, file: !953, line: 37, baseType: !24, size: 16, offset: 448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !954, file: !953, line: 40, baseType: !174, size: 192, offset: 512)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !954, file: !953, line: 41, baseType: !53, size: 64, offset: 704)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !954, file: !953, line: 42, baseType: !966, size: 64, offset: 768)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !969, line: 13, size: 896, elements: !970)
!969 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!970 = !{!971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !968, file: !969, line: 14, baseType: !53, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !968, file: !969, line: 15, baseType: !30, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !968, file: !969, line: 17, baseType: !30, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !968, file: !969, line: 17, baseType: !30, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !968, file: !969, line: 19, baseType: !402, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !968, file: !969, line: 21, baseType: !402, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !968, file: !969, line: 22, baseType: !402, size: 64, offset: 384)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !968, file: !969, line: 23, baseType: !402, size: 64, offset: 448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !968, file: !969, line: 24, baseType: !402, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !968, file: !969, line: 25, baseType: !402, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !968, file: !969, line: 26, baseType: !402, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !968, file: !969, line: 27, baseType: !402, size: 64, offset: 704)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !968, file: !969, line: 28, baseType: !402, size: 64, offset: 768)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !968, file: !969, line: 29, baseType: !402, size: 64, offset: 832)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !954, file: !953, line: 44, baseType: !620, size: 32, offset: 832)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !954, file: !953, line: 50, baseType: !164, size: 16, offset: 864)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !954, file: !953, line: 51, baseType: !988, size: 16, offset: 880)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !165, line: 18, baseType: !92)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !595, line: 495, baseType: !30, size: 64, offset: 6528)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !849, file: !595, line: 497, baseType: !991, size: 64, offset: 6592)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !595, line: 381, size: 384, elements: !993)
!993 = !{!994, !995, !2087}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !992, file: !595, line: 382, baseType: !620, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !992, file: !595, line: 383, baseType: !996, size: 128, offset: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !595, line: 376, size: 128, elements: !997)
!997 = !{!998, !2085}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !996, file: !595, line: 377, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1001, line: 640, size: 48640, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1002 = !{!1003, !1009, !1011, !1012, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1029, !1047, !1058, !1147, !1148, !1149, !1157, !1158, !1160, !1161, !1162, !1163, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1248, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1287, !1289, !1290, !1291, !1303, !1304, !1305, !1306, !1307, !1308, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1332, !1337, !1519, !1520, !1521, !1522, !1526, !1529, !1532, !1535, !1538, !1541, !1642, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1690, !1691, !1692, !1693, !1694, !1699, !1700, !1701, !1704, !1705, !1708, !1711, !1714, !1717, !1760, !1763, !1764, !1843, !1844, !1847, !1848, !1851, !1852, !1853, !1857, !1858, !1859, !1872, !1873, !1874, !1884, !1889, !1892, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1000, file: !1001, line: 646, baseType: !1004, size: 128)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1005, line: 56, size: 128, elements: !1006)
!1005 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1004, file: !1005, line: 57, baseType: !30, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1004, file: !1005, line: 58, baseType: !278, size: 32, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1000, file: !1001, line: 649, baseType: !1010, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !402)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1000, file: !1001, line: 657, baseType: !53, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1000, file: !1001, line: 658, baseType: !1013, size: 32, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1014, line: 113, baseType: !1015)
!1014 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1014, line: 111, size: 32, elements: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1015, file: !1014, line: 112, baseType: !620, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !1001, line: 660, baseType: !49, size: 32, offset: 288)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1000, file: !1001, line: 661, baseType: !49, size: 32, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1000, file: !1001, line: 684, baseType: !6, size: 32, offset: 352)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1000, file: !1001, line: 686, baseType: !6, size: 32, offset: 384)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1000, file: !1001, line: 687, baseType: !6, size: 32, offset: 416)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1000, file: !1001, line: 688, baseType: !6, size: 32, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1000, file: !1001, line: 689, baseType: !49, size: 32, offset: 480)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1000, file: !1001, line: 691, baseType: !1026, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1001, line: 691, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1000, file: !1001, line: 692, baseType: !1030, size: 832, offset: 576)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1001, line: 451, size: 832, elements: !1031)
!1031 = !{!1032, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1030, file: !1001, line: 453, baseType: !1033, size: 128)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1001, line: 325, size: 128, elements: !1034)
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1033, file: !1001, line: 326, baseType: !30, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1033, file: !1001, line: 327, baseType: !278, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1030, file: !1001, line: 454, baseType: !633, size: 192, align: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1030, file: !1001, line: 455, baseType: !205, size: 128, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1030, file: !1001, line: 456, baseType: !49, size: 32, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1030, file: !1001, line: 458, baseType: !281, size: 64, offset: 512)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1030, file: !1001, line: 459, baseType: !281, size: 64, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1030, file: !1001, line: 460, baseType: !281, size: 64, offset: 640)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1030, file: !1001, line: 461, baseType: !281, size: 64, offset: 704)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1030, file: !1001, line: 463, baseType: !281, size: 64, offset: 768)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1030, file: !1001, line: 465, baseType: !1046, offset: 832)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1001, line: 415, elements: !203)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1000, file: !1001, line: 693, baseType: !1048, size: 384, offset: 1408)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1001, line: 489, size: 384, elements: !1049)
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1048, file: !1001, line: 490, baseType: !205, size: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1048, file: !1001, line: 491, baseType: !30, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1048, file: !1001, line: 492, baseType: !30, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1048, file: !1001, line: 493, baseType: !49, size: 32, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1048, file: !1001, line: 494, baseType: !24, size: 16, offset: 288)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1048, file: !1001, line: 495, baseType: !24, size: 16, offset: 304)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1048, file: !1001, line: 497, baseType: !1057, size: 64, offset: 320)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1000, file: !1001, line: 697, baseType: !1059, size: 1792, offset: 1792)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1001, line: 507, size: 1792, elements: !1060)
!1060 = !{!1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1144, !1145}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1059, file: !1001, line: 508, baseType: !633, size: 192, align: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1059, file: !1001, line: 515, baseType: !281, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1059, file: !1001, line: 516, baseType: !281, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1059, file: !1001, line: 517, baseType: !281, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1059, file: !1001, line: 518, baseType: !281, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1059, file: !1001, line: 519, baseType: !281, size: 64, offset: 448)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1059, file: !1001, line: 526, baseType: !185, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1059, file: !1001, line: 527, baseType: !281, size: 64, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1059, file: !1001, line: 528, baseType: !49, size: 32, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1059, file: !1001, line: 554, baseType: !49, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1059, file: !1001, line: 555, baseType: !49, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1059, file: !1001, line: 556, baseType: !49, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1059, file: !1001, line: 557, baseType: !49, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1059, file: !1001, line: 563, baseType: !1075, size: 512, offset: 704)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1076, line: 118, size: 512, elements: !1077)
!1076 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!1077 = !{!1078, !1086, !1087, !1096, !1139, !1141, !1142, !1143}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1075, file: !1076, line: 119, baseType: !1079, size: 256)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1080, line: 9, size: 256, elements: !1081)
!1080 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1079, file: !1080, line: 10, baseType: !633, size: 192, align: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1079, file: !1080, line: 11, baseType: !1084, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1085, line: 29, baseType: !185)
!1085 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1075, file: !1076, line: 120, baseType: !1084, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1075, file: !1076, line: 121, baseType: !1088, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!1091, !1095}
!1091 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1076, line: 65, baseType: !49, size: 32, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!1094 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1075, file: !1076, line: 122, baseType: !1097, size: 64, offset: 384)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1076, line: 159, size: 512, align: 512, elements: !1099)
!1099 = !{!1100, !1120, !1121, !1124, !1129, !1130, !1134, !1138}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1098, file: !1076, line: 160, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1076, line: 214, size: 4608, align: 512, elements: !1103)
!1103 = !{!1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1102, file: !1076, line: 215, baseType: !646)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1102, file: !1076, line: 216, baseType: !49, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1102, file: !1076, line: 217, baseType: !49, size: 32, offset: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1102, file: !1076, line: 218, baseType: !49, size: 32, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1102, file: !1076, line: 219, baseType: !49, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1102, file: !1076, line: 220, baseType: !49, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1102, file: !1076, line: 221, baseType: !49, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1102, file: !1076, line: 222, baseType: !49, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1102, file: !1076, line: 233, baseType: !1084, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1102, file: !1076, line: 234, baseType: !1095, size: 64, offset: 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1102, file: !1076, line: 235, baseType: !1084, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1102, file: !1076, line: 236, baseType: !1095, size: 64, offset: 320)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1102, file: !1076, line: 237, baseType: !1117, size: 4096, offset: 512)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1098, size: 4096, elements: !1118)
!1118 = !{!1119}
!1119 = !DISubrange(count: 8)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1098, file: !1076, line: 161, baseType: !49, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1098, file: !1076, line: 162, baseType: !1122, size: 32, offset: 96)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !181, line: 27, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !302, line: 96, baseType: !6)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1098, file: !1076, line: 163, baseType: !1125, size: 32, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !251, line: 276, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !251, line: 276, size: 32, elements: !1127)
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1126, file: !251, line: 276, baseType: !255, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1098, file: !1076, line: 164, baseType: !1095, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1098, file: !1076, line: 165, baseType: !1131, size: 128, offset: 256)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1080, line: 14, size: 128, elements: !1132)
!1132 = !{!1133}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1131, file: !1080, line: 15, baseType: !625, size: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1098, file: !1076, line: 166, baseType: !1135, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!1084}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1098, file: !1076, line: 167, baseType: !1084, size: 64, offset: 448)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1075, file: !1076, line: 123, baseType: !1140, size: 8, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !165, line: 17, baseType: !63)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1075, file: !1076, line: 124, baseType: !1140, size: 8, offset: 456)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1075, file: !1076, line: 125, baseType: !1140, size: 8, offset: 464)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1075, file: !1076, line: 126, baseType: !1140, size: 8, offset: 472)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1059, file: !1001, line: 572, baseType: !1075, size: 512, offset: 1216)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1059, file: !1001, line: 580, baseType: !1146, size: 64, offset: 1728)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1000, file: !1001, line: 721, baseType: !49, size: 32, offset: 3584)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1000, file: !1001, line: 722, baseType: !6, size: 32, offset: 3616)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1000, file: !1001, line: 723, baseType: !1150, size: 64, offset: 3648)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1153, line: 17, baseType: !1154)
!1153 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1153, line: 17, size: 64, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1154, file: !1153, line: 17, baseType: !29, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1000, file: !1001, line: 724, baseType: !1152, size: 64, offset: 3712)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1000, file: !1001, line: 749, baseType: !1159, offset: 3776)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1001, line: 290, elements: !203)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1000, file: !1001, line: 751, baseType: !205, size: 128, offset: 3776)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1000, file: !1001, line: 757, baseType: !845, size: 64, offset: 3904)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1000, file: !1001, line: 758, baseType: !845, size: 64, offset: 3968)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1000, file: !1001, line: 761, baseType: !1164, size: 320, offset: 4032)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !942, line: 34, size: 320, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1164, file: !942, line: 35, baseType: !281, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1164, file: !942, line: 36, baseType: !1168, size: 256, offset: 64)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 256, elements: !946)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1000, file: !1001, line: 766, baseType: !6, size: 32, offset: 4352)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1000, file: !1001, line: 767, baseType: !6, size: 32, offset: 4384)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1000, file: !1001, line: 768, baseType: !6, size: 32, offset: 4416)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1000, file: !1001, line: 770, baseType: !6, size: 32, offset: 4448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1000, file: !1001, line: 772, baseType: !30, size: 64, offset: 4480)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1000, file: !1001, line: 775, baseType: !49, size: 32, offset: 4544)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1000, file: !1001, line: 778, baseType: !49, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1000, file: !1001, line: 779, baseType: !49, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1000, file: !1001, line: 780, baseType: !49, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1000, file: !1001, line: 803, baseType: !49, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1000, file: !1001, line: 806, baseType: !49, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1000, file: !1001, line: 807, baseType: !49, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1000, file: !1001, line: 809, baseType: !49, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1000, file: !1001, line: 815, baseType: !49, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1000, file: !1001, line: 831, baseType: !30, size: 64, offset: 4672)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1000, file: !1001, line: 833, baseType: !1185, size: 384, offset: 4736)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1186, line: 25, size: 384, elements: !1187)
!1186 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!1187 = !{!1188, !1193}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1185, file: !1186, line: 26, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!402, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !1186, line: 27, baseType: !1194, size: 320, offset: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !1186, line: 27, size: 320, elements: !1195)
!1195 = !{!1196, !1206, !1238}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1194, file: !1186, line: 36, baseType: !1197, size: 320)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !1186, line: 29, size: 320, elements: !1198)
!1198 = !{!1199, !1201, !1202, !1203, !1204, !1205}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1197, file: !1186, line: 30, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1197, file: !1186, line: 31, baseType: !278, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !1186, line: 32, baseType: !278, size: 32, offset: 96)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1197, file: !1186, line: 33, baseType: !278, size: 32, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1197, file: !1186, line: 34, baseType: !281, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1197, file: !1186, line: 35, baseType: !1200, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1194, file: !1186, line: 46, baseType: !1207, size: 192)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !1186, line: 38, size: 192, elements: !1208)
!1208 = !{!1209, !1210, !1216, !1237}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1207, file: !1186, line: 39, baseType: !1122, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1207, file: !1186, line: 40, baseType: !1211, size: 32, offset: 32)
!1211 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1186, line: 16, baseType: !49, size: 32, elements: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!1214 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!1215 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !1186, line: 41, baseType: !1217, size: 64, offset: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !1186, line: 41, size: 64, elements: !1218)
!1218 = !{!1219, !1227}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1217, file: !1186, line: 42, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1222, line: 7, size: 128, elements: !1223)
!1222 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1223 = !{!1224, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1221, file: !1222, line: 8, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !302, line: 93, baseType: !187)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1221, file: !1222, line: 9, baseType: !187, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1217, file: !1186, line: 43, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1230, line: 7, size: 64, elements: !1231)
!1230 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !{!1232, !1236}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1229, file: !1230, line: 8, baseType: !1233, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1230, line: 5, baseType: !1234)
!1234 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !165, line: 20, baseType: !1235)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !23, line: 26, baseType: !6)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1229, file: !1230, line: 9, baseType: !1234, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1207, file: !1186, line: 45, baseType: !281, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1194, file: !1186, line: 54, baseType: !1239, size: 256)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1194, file: !1186, line: 48, size: 256, elements: !1240)
!1240 = !{!1241, !1244, !1245, !1246, !1247}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1239, file: !1186, line: 49, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1186, line: 14, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1239, file: !1186, line: 50, baseType: !6, size: 32, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1239, file: !1186, line: 51, baseType: !6, size: 32, offset: 96)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1239, file: !1186, line: 52, baseType: !30, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1239, file: !1186, line: 53, baseType: !30, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1000, file: !1001, line: 835, baseType: !1249, size: 32, offset: 5120)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !181, line: 22, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !302, line: 28, baseType: !6)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1000, file: !1001, line: 836, baseType: !1249, size: 32, offset: 5152)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1000, file: !1001, line: 840, baseType: !30, size: 64, offset: 5184)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1000, file: !1001, line: 849, baseType: !999, size: 64, offset: 5248)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1000, file: !1001, line: 852, baseType: !999, size: 64, offset: 5312)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1000, file: !1001, line: 857, baseType: !205, size: 128, offset: 5376)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1000, file: !1001, line: 858, baseType: !205, size: 128, offset: 5504)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1000, file: !1001, line: 859, baseType: !999, size: 64, offset: 5632)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1000, file: !1001, line: 867, baseType: !205, size: 128, offset: 5696)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1000, file: !1001, line: 868, baseType: !205, size: 128, offset: 5824)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1000, file: !1001, line: 871, baseType: !1261, size: 64, offset: 5952)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1263, line: 59, size: 768, elements: !1264)
!1263 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !{!1265, !1266, !1267, !1268, !1270, !1271, !1278, !1279}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1262, file: !1263, line: 61, baseType: !1013, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1262, file: !1263, line: 62, baseType: !49, size: 32, offset: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1262, file: !1263, line: 63, baseType: !189, offset: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1262, file: !1263, line: 65, baseType: !1269, size: 256, offset: 64)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 256, elements: !946)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1262, file: !1263, line: 66, baseType: !505, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1262, file: !1263, line: 68, baseType: !1272, size: 128, offset: 384)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1273, line: 40, baseType: !1274)
!1273 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1273, line: 36, size: 128, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1274, file: !1273, line: 37, baseType: !189)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1274, file: !1273, line: 38, baseType: !205, size: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1262, file: !1263, line: 69, baseType: !228, size: 128, align: 64, offset: 512)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1262, file: !1263, line: 70, baseType: !1280, size: 128, offset: 640)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1281, size: 128, elements: !31)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1263, line: 54, size: 128, elements: !1282)
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1281, file: !1263, line: 55, baseType: !6, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1281, file: !1263, line: 56, baseType: !1285, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1263, line: 56, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1000, file: !1001, line: 872, baseType: !1288, size: 512, offset: 6016)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !509, size: 512, elements: !946)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1000, file: !1001, line: 873, baseType: !205, size: 128, offset: 6528)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1000, file: !1001, line: 874, baseType: !205, size: 128, offset: 6656)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1000, file: !1001, line: 876, baseType: !1292, size: 64, offset: 6784)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1294, line: 26, size: 192, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1293, file: !1294, line: 27, baseType: !49, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1293, file: !1294, line: 28, baseType: !1298, size: 128, offset: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1299, line: 43, size: 128, elements: !1300)
!1299 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1298, file: !1299, line: 44, baseType: !646)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1298, file: !1299, line: 45, baseType: !205, size: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1000, file: !1001, line: 879, baseType: !577, size: 64, offset: 6848)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1000, file: !1001, line: 882, baseType: !577, size: 64, offset: 6912)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1000, file: !1001, line: 884, baseType: !281, size: 64, offset: 6976)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1000, file: !1001, line: 885, baseType: !281, size: 64, offset: 7040)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1000, file: !1001, line: 890, baseType: !281, size: 64, offset: 7104)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1000, file: !1001, line: 891, baseType: !1309, size: 128, offset: 7168)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1001, line: 242, size: 128, elements: !1310)
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1309, file: !1001, line: 244, baseType: !281, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1309, file: !1001, line: 245, baseType: !281, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1309, file: !1001, line: 246, baseType: !646, offset: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1000, file: !1001, line: 900, baseType: !30, size: 64, offset: 7296)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1000, file: !1001, line: 901, baseType: !30, size: 64, offset: 7360)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1000, file: !1001, line: 904, baseType: !281, size: 64, offset: 7424)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1000, file: !1001, line: 907, baseType: !281, size: 64, offset: 7488)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1000, file: !1001, line: 910, baseType: !30, size: 64, offset: 7552)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1000, file: !1001, line: 911, baseType: !30, size: 64, offset: 7616)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1000, file: !1001, line: 914, baseType: !1321, size: 640, offset: 7680)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1322, line: 123, size: 640, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !{!1324, !1330, !1331}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1321, file: !1322, line: 124, baseType: !1325, size: 576)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 576, elements: !521)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1322, line: 108, size: 192, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1326, file: !1322, line: 109, baseType: !281, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1326, file: !1322, line: 110, baseType: !1131, size: 128, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1321, file: !1322, line: 125, baseType: !49, size: 32, offset: 576)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1321, file: !1322, line: 126, baseType: !49, size: 32, offset: 608)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1000, file: !1001, line: 917, baseType: !1333, size: 192, offset: 8320)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1322, line: 134, size: 192, elements: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1333, file: !1322, line: 135, baseType: !228, size: 128, align: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1333, file: !1322, line: 136, baseType: !49, size: 32, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1000, file: !1001, line: 923, baseType: !1338, size: 64, offset: 8512)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1341, line: 111, size: 1280, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1360, !1361, !1362, !1363, !1364, !1365, !1472, !1473, !1474, !1475, !1501, !1504, !1514}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1340, file: !1341, line: 112, baseType: !620, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1340, file: !1341, line: 120, baseType: !295, size: 32, offset: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1340, file: !1341, line: 121, baseType: !304, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1340, file: !1341, line: 122, baseType: !295, size: 32, offset: 96)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1340, file: !1341, line: 123, baseType: !304, size: 32, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1340, file: !1341, line: 124, baseType: !295, size: 32, offset: 160)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1340, file: !1341, line: 125, baseType: !304, size: 32, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1340, file: !1341, line: 126, baseType: !295, size: 32, offset: 224)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1340, file: !1341, line: 127, baseType: !304, size: 32, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1340, file: !1341, line: 128, baseType: !49, size: 32, offset: 288)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1340, file: !1341, line: 129, baseType: !1354, size: 64, offset: 320)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1355, line: 26, baseType: !1356)
!1355 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1355, line: 24, size: 64, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1356, file: !1355, line: 25, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, elements: !45)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1340, file: !1341, line: 130, baseType: !1354, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1340, file: !1341, line: 131, baseType: !1354, size: 64, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1340, file: !1341, line: 132, baseType: !1354, size: 64, offset: 512)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1340, file: !1341, line: 133, baseType: !1354, size: 64, offset: 576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1340, file: !1341, line: 135, baseType: !64, size: 8, offset: 640)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1340, file: !1341, line: 137, baseType: !1366, size: 64, offset: 704)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1368, line: 189, size: 1664, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1369 = !{!1370, !1371, !1374, !1379, !1380, !1383, !1384, !1389, !1390, !1391, !1392, !1394, !1395, !1396, !1397, !1398, !1436, !1457}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1367, file: !1368, line: 190, baseType: !1013, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1367, file: !1368, line: 191, baseType: !1372, size: 32, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1368, line: 28, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !181, line: 98, baseType: !1234)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1368, line: 192, baseType: !1375, size: 192, offset: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !1368, line: 192, size: 192, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1375, file: !1368, line: 193, baseType: !205, size: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1375, file: !1368, line: 194, baseType: !633, size: 192, align: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1367, file: !1368, line: 199, baseType: !640, size: 256, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1367, file: !1368, line: 200, baseType: !1381, size: 64, offset: 512)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1368, line: 200, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1367, file: !1368, line: 201, baseType: !53, size: 64, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1368, line: 202, baseType: !1385, size: 64, offset: 640)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !1368, line: 202, size: 64, elements: !1386)
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1385, file: !1368, line: 203, baseType: !400, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1385, file: !1368, line: 204, baseType: !400, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1367, file: !1368, line: 206, baseType: !400, size: 64, offset: 704)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1367, file: !1368, line: 207, baseType: !295, size: 32, offset: 768)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1367, file: !1368, line: 208, baseType: !304, size: 32, offset: 800)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1367, file: !1368, line: 209, baseType: !1393, size: 32, offset: 832)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1368, line: 31, baseType: !420)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1367, file: !1368, line: 210, baseType: !24, size: 16, offset: 864)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1367, file: !1368, line: 211, baseType: !24, size: 16, offset: 880)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1367, file: !1368, line: 215, baseType: !93, size: 16, offset: 896)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1367, file: !1368, line: 222, baseType: !30, size: 64, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1368, line: 239, baseType: !1399, size: 320, offset: 1024)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !1368, line: 239, size: 320, elements: !1400)
!1400 = !{!1401, !1428}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1399, file: !1368, line: 240, baseType: !1402, size: 320)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1368, line: 108, size: 320, elements: !1403)
!1403 = !{!1404, !1405, !1417, !1420, !1427}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1402, file: !1368, line: 110, baseType: !30, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !1368, line: 111, baseType: !1406, size: 64, offset: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !1368, line: 111, size: 64, elements: !1407)
!1407 = !{!1408, !1416}
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1368, line: 112, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1406, file: !1368, line: 112, size: 64, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1409, file: !1368, line: 114, baseType: !164, size: 16)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1409, file: !1368, line: 115, baseType: !1413, size: 48, offset: 16)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 48, elements: !1414)
!1414 = !{!1415}
!1415 = !DISubrange(count: 6)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1406, file: !1368, line: 121, baseType: !30, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1402, file: !1368, line: 123, baseType: !1418, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1368, line: 96, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1402, file: !1368, line: 124, baseType: !1421, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1368, line: 102, size: 192, elements: !1423)
!1423 = !{!1424, !1425, !1426}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1422, file: !1368, line: 103, baseType: !228, size: 128, align: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1422, file: !1368, line: 104, baseType: !1013, size: 32, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1422, file: !1368, line: 105, baseType: !352, size: 8, offset: 160)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1402, file: !1368, line: 125, baseType: !12, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1368, line: 241, baseType: !1429, size: 320)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !1368, line: 241, size: 320, elements: !1430)
!1430 = !{!1431, !1432, !1433, !1434, !1435}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1429, file: !1368, line: 242, baseType: !30, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1429, file: !1368, line: 243, baseType: !30, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1429, file: !1368, line: 244, baseType: !1418, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1429, file: !1368, line: 245, baseType: !1421, size: 64, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1429, file: !1368, line: 246, baseType: !347, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1367, file: !1368, line: 254, baseType: !1437, size: 256, offset: 1344)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1367, file: !1368, line: 254, size: 256, elements: !1438)
!1438 = !{!1439, !1445}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1437, file: !1368, line: 255, baseType: !1440, size: 256)
!1440 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1368, line: 128, size: 256, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1440, file: !1368, line: 129, baseType: !53, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1440, file: !1368, line: 130, baseType: !1444, size: 256)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !946)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1437, file: !1368, line: 256, baseType: !1446, size: 256)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !1368, line: 256, size: 256, elements: !1447)
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1446, file: !1368, line: 258, baseType: !205, size: 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1446, file: !1368, line: 259, baseType: !1450, size: 128, offset: 128)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1451, line: 22, size: 128, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1456}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1450, file: !1451, line: 23, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1451, line: 23, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1450, file: !1451, line: 24, baseType: !30, size: 64, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1367, file: !1368, line: 274, baseType: !1458, size: 64, offset: 1600)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1368, line: 170, size: 192, elements: !1460)
!1460 = !{!1461, !1470, !1471}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1459, file: !1368, line: 171, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1368, line: 165, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!6, !1366, !1466, !1468, !1366}
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1459, file: !1368, line: 172, baseType: !1366, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1459, file: !1368, line: 173, baseType: !1418, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1340, file: !1341, line: 138, baseType: !1366, size: 64, offset: 768)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1340, file: !1341, line: 139, baseType: !1366, size: 64, offset: 832)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1340, file: !1341, line: 140, baseType: !1366, size: 64, offset: 896)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1340, file: !1341, line: 145, baseType: !1476, size: 64, offset: 960)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1478, line: 13, size: 896, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1477, file: !1478, line: 14, baseType: !1013, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1477, file: !1478, line: 15, baseType: !620, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1477, file: !1478, line: 16, baseType: !620, size: 32, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1477, file: !1478, line: 21, baseType: !178, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1477, file: !1478, line: 27, baseType: !30, size: 64, offset: 192)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1477, file: !1478, line: 28, baseType: !30, size: 64, offset: 256)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1477, file: !1478, line: 29, baseType: !178, size: 64, offset: 320)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1477, file: !1478, line: 32, baseType: !509, size: 128, offset: 384)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1477, file: !1478, line: 33, baseType: !295, size: 32, offset: 512)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1477, file: !1478, line: 37, baseType: !178, size: 64, offset: 576)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1477, file: !1478, line: 44, baseType: !1491, size: 256, offset: 640)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1492, line: 15, size: 256, elements: !1493)
!1492 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1491, file: !1492, line: 16, baseType: !646)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1491, file: !1492, line: 18, baseType: !6, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1491, file: !1492, line: 19, baseType: !6, size: 32, offset: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1491, file: !1492, line: 20, baseType: !6, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1491, file: !1492, line: 21, baseType: !6, size: 32, offset: 96)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1491, file: !1492, line: 22, baseType: !30, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1491, file: !1492, line: 23, baseType: !30, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1340, file: !1341, line: 146, baseType: !1502, size: 64, offset: 1024)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !296, line: 18, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1340, file: !1341, line: 147, baseType: !1505, size: 64, offset: 1088)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1341, line: 25, size: 64, elements: !1507)
!1507 = !{!1508, !1509, !1510}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1506, file: !1341, line: 26, baseType: !620, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1506, file: !1341, line: 27, baseType: !6, size: 32, offset: 32)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1506, file: !1341, line: 28, baseType: !1511, offset: 64)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, elements: !1512)
!1512 = !{!1513}
!1513 = !DISubrange(count: 0)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !1341, line: 149, baseType: !1515, size: 128, offset: 1152)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !1341, line: 149, size: 128, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1515, file: !1341, line: 150, baseType: !6, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1515, file: !1341, line: 151, baseType: !228, size: 128, align: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1000, file: !1001, line: 926, baseType: !1338, size: 64, offset: 8576)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1000, file: !1001, line: 929, baseType: !1338, size: 64, offset: 8640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1000, file: !1001, line: 933, baseType: !1366, size: 64, offset: 8704)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1000, file: !1001, line: 943, baseType: !1523, size: 128, offset: 8768)
!1523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 128, elements: !1524)
!1524 = !{!1525}
!1525 = !DISubrange(count: 16)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1000, file: !1001, line: 945, baseType: !1527, size: 64, offset: 8896)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1001, line: 49, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1000, file: !1001, line: 956, baseType: !1530, size: 64, offset: 8960)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1001, line: 45, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1000, file: !1001, line: 959, baseType: !1533, size: 64, offset: 9024)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1001, line: 959, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1000, file: !1001, line: 962, baseType: !1536, size: 64, offset: 9088)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1001, line: 66, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1000, file: !1001, line: 966, baseType: !1539, size: 64, offset: 9152)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1001, line: 50, flags: DIFlagFwdDecl)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1000, file: !1001, line: 969, baseType: !1542, size: 64, offset: 9216)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1544, line: 82, size: 7296, elements: !1545)
!1544 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1581, !1590, !1591, !1593, !1594, !1595, !1598, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1628, !1629, !1636, !1637, !1638, !1639, !1640, !1641}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1543, file: !1544, line: 83, baseType: !1013, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1543, file: !1544, line: 84, baseType: !620, size: 32, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1543, file: !1544, line: 85, baseType: !6, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1543, file: !1544, line: 86, baseType: !205, size: 128, offset: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1543, file: !1544, line: 88, baseType: !1272, size: 128, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1543, file: !1544, line: 91, baseType: !999, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1543, file: !1544, line: 94, baseType: !1553, size: 192, offset: 448)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1554, line: 30, size: 192, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1555 = !{!1556, !1557}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1553, file: !1554, line: 31, baseType: !205, size: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1553, file: !1554, line: 32, baseType: !1558, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1559, line: 25, baseType: !1560)
!1559 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1559, line: 23, size: 64, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1560, file: !1559, line: 24, baseType: !29, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1543, file: !1544, line: 97, baseType: !505, size: 64, offset: 640)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1543, file: !1544, line: 100, baseType: !6, size: 32, offset: 704)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1543, file: !1544, line: 106, baseType: !6, size: 32, offset: 736)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1543, file: !1544, line: 107, baseType: !999, size: 64, offset: 768)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1543, file: !1544, line: 110, baseType: !6, size: 32, offset: 832)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1543, file: !1544, line: 111, baseType: !49, size: 32, offset: 864)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1543, file: !1544, line: 122, baseType: !49, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1543, file: !1544, line: 123, baseType: !49, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1543, file: !1544, line: 128, baseType: !6, size: 32, offset: 928)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1543, file: !1544, line: 129, baseType: !205, size: 128, offset: 960)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1543, file: !1544, line: 132, baseType: !1075, size: 512, offset: 1088)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1543, file: !1544, line: 133, baseType: !1084, size: 64, offset: 1600)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1543, file: !1544, line: 140, baseType: !1576, size: 256, offset: 1664)
!1576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1577, size: 256, elements: !45)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1544, line: 38, size: 128, elements: !1578)
!1578 = !{!1579, !1580}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1577, file: !1544, line: 39, baseType: !281, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1577, file: !1544, line: 40, baseType: !281, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1543, file: !1544, line: 146, baseType: !1582, size: 192, offset: 1920)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1544, line: 66, size: 192, elements: !1583)
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1582, file: !1544, line: 67, baseType: !1585, size: 192)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1544, line: 47, size: 192, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1585, file: !1544, line: 48, baseType: !180, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1585, file: !1544, line: 49, baseType: !180, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1585, file: !1544, line: 50, baseType: !180, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1543, file: !1544, line: 150, baseType: !1321, size: 640, offset: 2112)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1543, file: !1544, line: 153, baseType: !1592, size: 256, offset: 2752)
!1592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1261, size: 256, elements: !946)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1543, file: !1544, line: 159, baseType: !1261, size: 64, offset: 3008)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1543, file: !1544, line: 162, baseType: !6, size: 32, offset: 3072)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1543, file: !1544, line: 164, baseType: !1596, size: 64, offset: 3136)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1544, line: 164, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1543, file: !1544, line: 175, baseType: !1599, size: 32, offset: 3200)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !251, line: 805, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 798, size: 32, elements: !1601)
!1601 = !{!1602, !1603}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1600, file: !251, line: 803, baseType: !250, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1600, file: !251, line: 804, baseType: !189, offset: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1543, file: !1544, line: 176, baseType: !281, size: 64, offset: 3264)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1543, file: !1544, line: 176, baseType: !281, size: 64, offset: 3328)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1543, file: !1544, line: 176, baseType: !281, size: 64, offset: 3392)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1543, file: !1544, line: 176, baseType: !281, size: 64, offset: 3456)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1543, file: !1544, line: 177, baseType: !281, size: 64, offset: 3520)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1543, file: !1544, line: 178, baseType: !281, size: 64, offset: 3584)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1543, file: !1544, line: 179, baseType: !1309, size: 128, offset: 3648)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1543, file: !1544, line: 180, baseType: !30, size: 64, offset: 3776)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1543, file: !1544, line: 180, baseType: !30, size: 64, offset: 3840)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1543, file: !1544, line: 180, baseType: !30, size: 64, offset: 3904)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1543, file: !1544, line: 180, baseType: !30, size: 64, offset: 3968)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1543, file: !1544, line: 181, baseType: !30, size: 64, offset: 4032)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1543, file: !1544, line: 181, baseType: !30, size: 64, offset: 4096)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1543, file: !1544, line: 181, baseType: !30, size: 64, offset: 4160)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1543, file: !1544, line: 181, baseType: !30, size: 64, offset: 4224)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1543, file: !1544, line: 182, baseType: !30, size: 64, offset: 4288)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1543, file: !1544, line: 182, baseType: !30, size: 64, offset: 4352)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1543, file: !1544, line: 182, baseType: !30, size: 64, offset: 4416)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1543, file: !1544, line: 182, baseType: !30, size: 64, offset: 4480)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1543, file: !1544, line: 183, baseType: !30, size: 64, offset: 4544)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1543, file: !1544, line: 183, baseType: !30, size: 64, offset: 4608)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1543, file: !1544, line: 184, baseType: !1626, offset: 4672)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1627, line: 12, elements: !203)
!1627 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1543, file: !1544, line: 192, baseType: !283, size: 64, offset: 4672)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1543, file: !1544, line: 203, baseType: !1630, size: 2048, offset: 4736)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1631, size: 2048, elements: !1524)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1632, line: 43, size: 128, elements: !1633)
!1632 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1631, file: !1632, line: 44, baseType: !444, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1631, file: !1632, line: 45, baseType: !444, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1543, file: !1544, line: 220, baseType: !352, size: 8, offset: 6784)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1543, file: !1544, line: 221, baseType: !93, size: 16, offset: 6800)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1543, file: !1544, line: 222, baseType: !93, size: 16, offset: 6816)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1543, file: !1544, line: 224, baseType: !845, size: 64, offset: 6848)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1543, file: !1544, line: 227, baseType: !174, size: 192, offset: 6912)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1543, file: !1544, line: 233, baseType: !174, size: 192, offset: 7104)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1000, file: !1001, line: 970, baseType: !1643, size: 64, offset: 9280)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1544, line: 20, size: 16576, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1644, file: !1544, line: 21, baseType: !189)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1644, file: !1544, line: 22, baseType: !1013, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1644, file: !1544, line: 23, baseType: !1272, size: 128, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1644, file: !1544, line: 24, baseType: !1650, size: 16384, offset: 192)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1651, size: 16384, elements: !1671)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1554, line: 49, size: 256, elements: !1652)
!1652 = !{!1653}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1651, file: !1554, line: 50, baseType: !1654, size: 256)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1554, line: 35, size: 256, elements: !1655)
!1655 = !{!1656, !1663, !1664, !1670}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1654, file: !1554, line: 37, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1658, line: 19, baseType: !1659)
!1658 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1658, line: 18, baseType: !1661)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !6}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1654, file: !1554, line: 38, baseType: !30, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1654, file: !1554, line: 44, baseType: !1665, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1658, line: 22, baseType: !1666)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1658, line: 21, baseType: !1668)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1654, file: !1554, line: 46, baseType: !1558, size: 64, offset: 192)
!1671 = !{!1672}
!1672 = !DISubrange(count: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1000, file: !1001, line: 971, baseType: !1558, size: 64, offset: 9344)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1000, file: !1001, line: 972, baseType: !1558, size: 64, offset: 9408)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1000, file: !1001, line: 974, baseType: !1558, size: 64, offset: 9472)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1000, file: !1001, line: 975, baseType: !1553, size: 192, offset: 9536)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1000, file: !1001, line: 976, baseType: !30, size: 64, offset: 9728)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1000, file: !1001, line: 977, baseType: !442, size: 64, offset: 9792)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1000, file: !1001, line: 978, baseType: !49, size: 32, offset: 9856)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1000, file: !1001, line: 980, baseType: !231, size: 64, offset: 9920)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1000, file: !1001, line: 989, baseType: !1682, size: 128, offset: 9984)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1683, line: 35, size: 128, elements: !1684)
!1683 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !{!1685, !1686, !1687}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1682, file: !1683, line: 36, baseType: !6, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1682, file: !1683, line: 37, baseType: !620, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1682, file: !1683, line: 38, baseType: !1688, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1683, line: 23, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1000, file: !1001, line: 992, baseType: !281, size: 64, offset: 10112)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1000, file: !1001, line: 993, baseType: !281, size: 64, offset: 10176)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1000, file: !1001, line: 996, baseType: !189, offset: 10240)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1000, file: !1001, line: 999, baseType: !646, offset: 10240)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1000, file: !1001, line: 1001, baseType: !1695, size: 64, offset: 10240)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1001, line: 636, size: 64, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1695, file: !1001, line: 637, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1000, file: !1001, line: 1005, baseType: !625, size: 128, offset: 10304)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1000, file: !1001, line: 1007, baseType: !999, size: 64, offset: 10432)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1000, file: !1001, line: 1009, baseType: !1702, size: 64, offset: 10496)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1001, line: 1009, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1000, file: !1001, line: 1043, baseType: !53, size: 64, offset: 10560)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1000, file: !1001, line: 1046, baseType: !1706, size: 64, offset: 10624)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1001, line: 41, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1000, file: !1001, line: 1050, baseType: !1709, size: 64, offset: 10688)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1001, line: 42, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1000, file: !1001, line: 1054, baseType: !1712, size: 64, offset: 10752)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1001, line: 55, flags: DIFlagFwdDecl)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1000, file: !1001, line: 1056, baseType: !1715, size: 64, offset: 10816)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1001, line: 40, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1000, file: !1001, line: 1058, baseType: !1718, size: 64, offset: 10880)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1720, line: 99, size: 704, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1727, !1728, !1747, !1748}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1719, file: !1720, line: 100, baseType: !178, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1719, file: !1720, line: 101, baseType: !620, size: 32, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1719, file: !1720, line: 102, baseType: !620, size: 32, offset: 96)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1719, file: !1720, line: 105, baseType: !189, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1719, file: !1720, line: 107, baseType: !24, size: 16, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1719, file: !1720, line: 109, baseType: !611, size: 128, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1719, file: !1720, line: 110, baseType: !1729, size: 64, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1720, line: 73, size: 448, elements: !1731)
!1731 = !{!1732, !1735, !1736, !1741, !1746}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1730, file: !1720, line: 74, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1720, line: 74, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1730, file: !1720, line: 75, baseType: !1718, size: 64, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !1720, line: 83, baseType: !1737, size: 128, offset: 128)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1730, file: !1720, line: 83, size: 128, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1737, file: !1720, line: 84, baseType: !205, size: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1737, file: !1720, line: 85, baseType: !806, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !1720, line: 87, baseType: !1742, size: 128, offset: 256)
!1742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1730, file: !1720, line: 87, size: 128, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1742, file: !1720, line: 88, baseType: !509, size: 128)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1742, file: !1720, line: 89, baseType: !228, size: 128, align: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1730, file: !1720, line: 92, baseType: !49, size: 32, offset: 384)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1719, file: !1720, line: 111, baseType: !505, size: 64, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1719, file: !1720, line: 113, baseType: !1749, size: 256, offset: 448)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1750, line: 102, size: 256, elements: !1751)
!1750 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1751 = !{!1752, !1753, !1754}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1749, file: !1750, line: 103, baseType: !178, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1749, file: !1750, line: 104, baseType: !205, size: 128, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1749, file: !1750, line: 105, baseType: !1755, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1750, line: 21, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1000, file: !1001, line: 1061, baseType: !1761, size: 64, offset: 10944)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1001, line: 43, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1000, file: !1001, line: 1064, baseType: !30, size: 64, offset: 11008)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1000, file: !1001, line: 1065, baseType: !1765, size: 64, offset: 11072)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1554, line: 14, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1554, line: 12, size: 384, elements: !1768)
!1768 = !{!1769}
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1767, file: !1554, line: 13, baseType: !1770, size: 384)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1554, line: 13, size: 384, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1775}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1770, file: !1554, line: 13, baseType: !6, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1770, file: !1554, line: 13, baseType: !6, size: 32, offset: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1770, file: !1554, line: 13, baseType: !6, size: 32, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1770, file: !1554, line: 13, baseType: !1776, size: 256, offset: 128)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1777, line: 32, size: 256, elements: !1778)
!1777 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1778 = !{!1779, !1784, !1797, !1803, !1812, !1832, !1837}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1776, file: !1777, line: 37, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1777, line: 34, size: 64, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1780, file: !1777, line: 35, baseType: !1250, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1780, file: !1777, line: 36, baseType: !301, size: 32, offset: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1776, file: !1777, line: 45, baseType: !1785, size: 192)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1777, line: 40, size: 192, elements: !1786)
!1786 = !{!1787, !1789, !1790, !1796}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1785, file: !1777, line: 41, baseType: !1788, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !302, line: 95, baseType: !6)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1785, file: !1777, line: 42, baseType: !6, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1785, file: !1777, line: 43, baseType: !1791, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1777, line: 11, baseType: !1792)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1777, line: 8, size: 64, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1792, file: !1777, line: 9, baseType: !6, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1792, file: !1777, line: 10, baseType: !53, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1785, file: !1777, line: 44, baseType: !6, size: 32, offset: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1776, file: !1777, line: 52, baseType: !1798, size: 128)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1777, line: 48, size: 128, elements: !1799)
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1798, file: !1777, line: 49, baseType: !1250, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1798, file: !1777, line: 50, baseType: !301, size: 32, offset: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1798, file: !1777, line: 51, baseType: !1791, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1776, file: !1777, line: 61, baseType: !1804, size: 256)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1777, line: 55, size: 256, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1809, !1811}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1804, file: !1777, line: 56, baseType: !1250, size: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1804, file: !1777, line: 57, baseType: !301, size: 32, offset: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1804, file: !1777, line: 58, baseType: !6, size: 32, offset: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1804, file: !1777, line: 59, baseType: !1810, size: 64, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !302, line: 94, baseType: !441)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1804, file: !1777, line: 60, baseType: !1810, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1776, file: !1777, line: 95, baseType: !1813, size: 256)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1777, line: 64, size: 256, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1813, file: !1777, line: 65, baseType: !53, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1777, line: 77, baseType: !1817, size: 192, offset: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1777, line: 77, size: 192, elements: !1818)
!1818 = !{!1819, !1820, !1827}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1817, file: !1777, line: 82, baseType: !93, size: 16)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1817, file: !1777, line: 88, baseType: !1821, size: 192)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !1777, line: 84, size: 192, elements: !1822)
!1822 = !{!1823, !1825, !1826}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1821, file: !1777, line: 85, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !1118)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1821, file: !1777, line: 86, baseType: !53, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1821, file: !1777, line: 87, baseType: !53, size: 64, offset: 128)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1817, file: !1777, line: 93, baseType: !1828, size: 96)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1817, file: !1777, line: 90, size: 96, elements: !1829)
!1829 = !{!1830, !1831}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1828, file: !1777, line: 91, baseType: !1824, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1828, file: !1777, line: 92, baseType: !68, size: 32, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1776, file: !1777, line: 101, baseType: !1833, size: 128)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1777, line: 98, size: 128, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1833, file: !1777, line: 99, baseType: !402, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1833, file: !1777, line: 100, baseType: !6, size: 32, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1776, file: !1777, line: 108, baseType: !1838, size: 128)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1776, file: !1777, line: 104, size: 128, elements: !1839)
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1838, file: !1777, line: 105, baseType: !53, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1838, file: !1777, line: 106, baseType: !6, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1838, file: !1777, line: 107, baseType: !49, size: 32, offset: 96)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1000, file: !1001, line: 1067, baseType: !1626, offset: 11136)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1000, file: !1001, line: 1099, baseType: !1845, size: 64, offset: 11136)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1001, line: 56, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1000, file: !1001, line: 1103, baseType: !205, size: 128, offset: 11200)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1000, file: !1001, line: 1104, baseType: !1849, size: 64, offset: 11328)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1001, line: 46, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1000, file: !1001, line: 1105, baseType: !174, size: 192, offset: 11392)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1000, file: !1001, line: 1106, baseType: !49, size: 32, offset: 11584)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1000, file: !1001, line: 1109, baseType: !1854, size: 128, offset: 11648)
!1854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1855, size: 128, elements: !45)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1001, line: 51, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1000, file: !1001, line: 1110, baseType: !174, size: 192, offset: 11776)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1000, file: !1001, line: 1111, baseType: !205, size: 128, offset: 11968)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1000, file: !1001, line: 1173, baseType: !1860, size: 64, offset: 12096)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1862, line: 62, size: 256, align: 256, elements: !1863)
!1862 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1863 = !{!1864, !1865, !1866, !1871}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1861, file: !1862, line: 75, baseType: !68, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1861, file: !1862, line: 90, baseType: !68, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1861, file: !1862, line: 124, baseType: !1867, size: 64, offset: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1861, file: !1862, line: 109, size: 64, elements: !1868)
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1867, file: !1862, line: 110, baseType: !282, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1867, file: !1862, line: 112, baseType: !282, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1861, file: !1862, line: 144, baseType: !68, size: 32, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1000, file: !1001, line: 1174, baseType: !278, size: 32, offset: 12160)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1000, file: !1001, line: 1179, baseType: !30, size: 64, offset: 12224)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1000, file: !1001, line: 1182, baseType: !1875, size: 128, offset: 12288)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !942, line: 76, size: 128, elements: !1876)
!1876 = !{!1877, !1882, !1883}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1875, file: !942, line: 85, baseType: !1878, size: 64)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1879, line: 7, size: 64, elements: !1880)
!1879 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !{!1881}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1878, file: !1879, line: 12, baseType: !1154, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1875, file: !942, line: 88, baseType: !352, size: 8, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1875, file: !942, line: 95, baseType: !352, size: 8, offset: 72)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !1001, line: 1184, baseType: !1885, size: 128, offset: 12416)
!1885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !1001, line: 1184, size: 128, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1885, file: !1001, line: 1185, baseType: !1013, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1885, file: !1001, line: 1186, baseType: !228, size: 128, align: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1000, file: !1001, line: 1190, baseType: !1890, size: 64, offset: 12544)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1001, line: 53, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1000, file: !1001, line: 1192, baseType: !1893, size: 128, offset: 12608)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !942, line: 64, size: 128, elements: !1894)
!1894 = !{!1895, !1896, !1897}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1893, file: !942, line: 65, baseType: !593, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1893, file: !942, line: 67, baseType: !68, size: 32, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1893, file: !942, line: 68, baseType: !68, size: 32, offset: 96)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1000, file: !1001, line: 1206, baseType: !6, size: 32, offset: 12736)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1000, file: !1001, line: 1207, baseType: !6, size: 32, offset: 12768)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1000, file: !1001, line: 1209, baseType: !30, size: 64, offset: 12800)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1000, file: !1001, line: 1219, baseType: !281, size: 64, offset: 12864)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1000, file: !1001, line: 1220, baseType: !281, size: 64, offset: 12928)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1000, file: !1001, line: 1317, baseType: !6, size: 32, offset: 12992)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1000, file: !1001, line: 1319, baseType: !999, size: 64, offset: 13056)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1000, file: !1001, line: 1322, baseType: !1906, size: 64, offset: 13120)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1001, line: 1322, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1000, file: !1001, line: 1326, baseType: !1013, size: 32, offset: 13184)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1000, file: !1001, line: 1342, baseType: !53, size: 64, offset: 13248)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1000, file: !1001, line: 1343, baseType: !282, size: 64, offset: 13312)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1000, file: !1001, line: 1344, baseType: !281, size: 64, offset: 13376)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1000, file: !1001, line: 1345, baseType: !282, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1000, file: !1001, line: 1346, baseType: !282, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1000, file: !1001, line: 1347, baseType: !282, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1000, file: !1001, line: 1348, baseType: !228, size: 128, align: 64, offset: 13504)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1000, file: !1001, line: 1358, baseType: !1917, size: 34816, offset: 13824)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1918, line: 485, size: 34816, elements: !1919)
!1918 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1919 = !{!1920, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1949, !1950, !1951, !1952, !1953, !1954, !1957, !1958, !1959}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1917, file: !1918, line: 487, baseType: !1921, size: 192)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1922, size: 192, elements: !521)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1923, line: 16, size: 64, elements: !1924)
!1923 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1922, file: !1923, line: 17, baseType: !164, size: 16)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1922, file: !1923, line: 18, baseType: !164, size: 16, offset: 16)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1922, file: !1923, line: 19, baseType: !164, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1922, file: !1923, line: 19, baseType: !164, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1922, file: !1923, line: 19, baseType: !164, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1922, file: !1923, line: 19, baseType: !164, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1922, file: !1923, line: 19, baseType: !164, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1922, file: !1923, line: 20, baseType: !164, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1922, file: !1923, line: 20, baseType: !164, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1922, file: !1923, line: 20, baseType: !164, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1922, file: !1923, line: 20, baseType: !164, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1922, file: !1923, line: 20, baseType: !164, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1922, file: !1923, line: 20, baseType: !164, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1917, file: !1918, line: 491, baseType: !30, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1917, file: !1918, line: 495, baseType: !24, size: 16, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1917, file: !1918, line: 496, baseType: !24, size: 16, offset: 272)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1917, file: !1918, line: 497, baseType: !24, size: 16, offset: 288)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1917, file: !1918, line: 498, baseType: !24, size: 16, offset: 304)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1917, file: !1918, line: 502, baseType: !30, size: 64, offset: 320)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1917, file: !1918, line: 503, baseType: !30, size: 64, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1917, file: !1918, line: 514, baseType: !1946, size: 256, offset: 448)
!1946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1947, size: 256, elements: !946)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1918, line: 483, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1917, file: !1918, line: 516, baseType: !30, size: 64, offset: 704)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1917, file: !1918, line: 518, baseType: !30, size: 64, offset: 768)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1917, file: !1918, line: 520, baseType: !30, size: 64, offset: 832)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1917, file: !1918, line: 521, baseType: !30, size: 64, offset: 896)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1917, file: !1918, line: 522, baseType: !30, size: 64, offset: 960)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1917, file: !1918, line: 528, baseType: !1955, size: 64, offset: 1024)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1918, line: 10, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1917, file: !1918, line: 535, baseType: !30, size: 64, offset: 1088)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1917, file: !1918, line: 537, baseType: !49, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1917, file: !1918, line: 540, baseType: !1960, size: 33280, offset: 1536)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1961, line: 317, size: 33280, elements: !1962)
!1961 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1960, file: !1961, line: 330, baseType: !49, size: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1960, file: !1961, line: 337, baseType: !30, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1960, file: !1961, line: 348, baseType: !1966, size: 32768, offset: 512)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1961, line: 304, size: 32768, elements: !1967)
!1967 = !{!1968, !1983, !2018, !2068, !2081}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1966, file: !1961, line: 305, baseType: !1969, size: 896)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1961, line: 12, size: 896, elements: !1970)
!1970 = !{!1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1982}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1969, file: !1961, line: 13, baseType: !278, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1969, file: !1961, line: 14, baseType: !278, size: 32, offset: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1969, file: !1961, line: 15, baseType: !278, size: 32, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1969, file: !1961, line: 16, baseType: !278, size: 32, offset: 96)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1969, file: !1961, line: 17, baseType: !278, size: 32, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1969, file: !1961, line: 18, baseType: !278, size: 32, offset: 160)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1969, file: !1961, line: 19, baseType: !278, size: 32, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1969, file: !1961, line: 22, baseType: !1979, size: 640, offset: 224)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 640, elements: !1980)
!1980 = !{!1981}
!1981 = !DISubrange(count: 20)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1969, file: !1961, line: 25, baseType: !278, size: 32, offset: 864)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1966, file: !1961, line: 306, baseType: !1984, size: 4096, align: 128)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1961, line: 34, size: 4096, align: 128, elements: !1985)
!1985 = !{!1986, !1987, !1988, !1989, !1990, !2005, !2006, !2007, !2009, !2011, !2013}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1984, file: !1961, line: 35, baseType: !164, size: 16)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1984, file: !1961, line: 36, baseType: !164, size: 16, offset: 16)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1984, file: !1961, line: 37, baseType: !164, size: 16, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1984, file: !1961, line: 38, baseType: !164, size: 16, offset: 48)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1984, file: !1961, line: 39, baseType: !1991, size: 128, offset: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1984, file: !1961, line: 39, size: 128, elements: !1992)
!1992 = !{!1993, !1998}
!1993 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !1961, line: 40, baseType: !1994, size: 128)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1961, line: 40, size: 128, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1994, file: !1961, line: 41, baseType: !281, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1994, file: !1961, line: 42, baseType: !281, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !1961, line: 44, baseType: !1999, size: 128)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1991, file: !1961, line: 44, size: 128, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2004}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1999, file: !1961, line: 45, baseType: !278, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1999, file: !1961, line: 46, baseType: !278, size: 32, offset: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1999, file: !1961, line: 47, baseType: !278, size: 32, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1999, file: !1961, line: 48, baseType: !278, size: 32, offset: 96)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1984, file: !1961, line: 51, baseType: !278, size: 32, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1984, file: !1961, line: 52, baseType: !278, size: 32, offset: 224)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1984, file: !1961, line: 55, baseType: !2008, size: 1024, offset: 256)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 1024, elements: !71)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1984, file: !1961, line: 58, baseType: !2010, size: 2048, offset: 1280)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 2048, elements: !1671)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1984, file: !1961, line: 60, baseType: !2012, size: 384, offset: 3328)
!2012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 384, elements: !36)
!2013 = !DIDerivedType(tag: DW_TAG_member, scope: !1984, file: !1961, line: 62, baseType: !2014, size: 384, offset: 3712)
!2014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1984, file: !1961, line: 62, size: 384, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2014, file: !1961, line: 63, baseType: !2012, size: 384)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2014, file: !1961, line: 64, baseType: !2012, size: 384)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1966, file: !1961, line: 307, baseType: !2019, size: 1088)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1961, line: 79, size: 1088, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2067}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2019, file: !1961, line: 80, baseType: !278, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2019, file: !1961, line: 81, baseType: !278, size: 32, offset: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2019, file: !1961, line: 82, baseType: !278, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2019, file: !1961, line: 83, baseType: !278, size: 32, offset: 96)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2019, file: !1961, line: 84, baseType: !278, size: 32, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2019, file: !1961, line: 85, baseType: !278, size: 32, offset: 160)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2019, file: !1961, line: 86, baseType: !278, size: 32, offset: 192)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2019, file: !1961, line: 88, baseType: !1979, size: 640, offset: 224)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2019, file: !1961, line: 89, baseType: !1140, size: 8, offset: 864)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2019, file: !1961, line: 90, baseType: !1140, size: 8, offset: 872)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2019, file: !1961, line: 91, baseType: !1140, size: 8, offset: 880)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2019, file: !1961, line: 92, baseType: !1140, size: 8, offset: 888)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2019, file: !1961, line: 93, baseType: !1140, size: 8, offset: 896)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2019, file: !1961, line: 94, baseType: !1140, size: 8, offset: 904)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2019, file: !1961, line: 95, baseType: !2036, size: 64, offset: 960)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2038, line: 11, size: 128, elements: !2039)
!2038 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2037, file: !2038, line: 12, baseType: !402, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2037, file: !2038, line: 13, baseType: !2042, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2044, line: 56, size: 1344, elements: !2045)
!2044 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2045 = !{!2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2043, file: !2044, line: 61, baseType: !30, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2043, file: !2044, line: 62, baseType: !30, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2043, file: !2044, line: 63, baseType: !30, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2043, file: !2044, line: 64, baseType: !30, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2043, file: !2044, line: 65, baseType: !30, size: 64, offset: 256)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2043, file: !2044, line: 66, baseType: !30, size: 64, offset: 320)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2043, file: !2044, line: 68, baseType: !30, size: 64, offset: 384)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2043, file: !2044, line: 69, baseType: !30, size: 64, offset: 448)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2043, file: !2044, line: 70, baseType: !30, size: 64, offset: 512)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2043, file: !2044, line: 71, baseType: !30, size: 64, offset: 576)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2043, file: !2044, line: 72, baseType: !30, size: 64, offset: 640)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2043, file: !2044, line: 73, baseType: !30, size: 64, offset: 704)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2043, file: !2044, line: 74, baseType: !30, size: 64, offset: 768)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2043, file: !2044, line: 75, baseType: !30, size: 64, offset: 832)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2043, file: !2044, line: 76, baseType: !30, size: 64, offset: 896)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2043, file: !2044, line: 81, baseType: !30, size: 64, offset: 960)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2043, file: !2044, line: 83, baseType: !30, size: 64, offset: 1024)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2043, file: !2044, line: 84, baseType: !30, size: 64, offset: 1088)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2043, file: !2044, line: 85, baseType: !30, size: 64, offset: 1152)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2043, file: !2044, line: 86, baseType: !30, size: 64, offset: 1216)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2043, file: !2044, line: 87, baseType: !30, size: 64, offset: 1280)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2019, file: !1961, line: 96, baseType: !278, size: 32, offset: 1024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1966, file: !1961, line: 308, baseType: !2069, size: 4608, align: 512)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1961, line: 289, size: 4608, align: 512, elements: !2070)
!2070 = !{!2071, !2072, !2079}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2069, file: !1961, line: 290, baseType: !1984, size: 4096, align: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2069, file: !1961, line: 291, baseType: !2073, size: 512, offset: 4096)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1961, line: 268, size: 512, elements: !2074)
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2073, file: !1961, line: 269, baseType: !281, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2073, file: !1961, line: 270, baseType: !281, size: 64, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2073, file: !1961, line: 271, baseType: !2078, size: 384, offset: 128)
!2078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 384, elements: !1414)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2069, file: !1961, line: 292, baseType: !2080, offset: 4608)
!2080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1140, elements: !1512)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1966, file: !1961, line: 309, baseType: !2082, size: 32768)
!2082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1140, size: 32768, elements: !2083)
!2083 = !{!2084}
!2084 = !DISubrange(count: 4096)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !996, file: !595, line: 378, baseType: !2086, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !992, file: !595, line: 384, baseType: !1293, size: 192, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !849, file: !595, line: 500, baseType: !189, offset: 6656)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !849, file: !595, line: 501, baseType: !2090, size: 64, offset: 6656)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !595, line: 387, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !849, file: !595, line: 516, baseType: !1502, size: 64, offset: 6720)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !849, file: !595, line: 519, baseType: !214, size: 64, offset: 6784)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !849, file: !595, line: 521, baseType: !2095, size: 64, offset: 6848)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !595, line: 521, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !849, file: !595, line: 545, baseType: !620, size: 32, offset: 6912)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !849, file: !595, line: 548, baseType: !352, size: 8, offset: 6944)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !849, file: !595, line: 550, baseType: !2100, offset: 6952)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2101, line: 142, elements: !203)
!2101 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !849, file: !595, line: 554, baseType: !1749, size: 256, offset: 6976)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !849, file: !595, line: 557, baseType: !278, size: 32, offset: 7232)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !846, file: !595, line: 565, baseType: !2105, offset: 7296)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, elements: !2106)
!2106 = !{!2107}
!2107 = !DISubrange(count: -1)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !842, file: !595, line: 151, baseType: !620, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !835, file: !595, line: 156, baseType: !189, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !595, line: 159, baseType: !2111, size: 128)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !599, file: !595, line: 159, size: 128, elements: !2112)
!2112 = !{!2113, !2116}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2111, file: !595, line: 161, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !595, line: 161, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2111, file: !595, line: 162, baseType: !53, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !599, file: !595, line: 176, baseType: !228, size: 128, align: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !594, file: !595, line: 179, baseType: !2119, size: 32, offset: 384)
!2119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !594, file: !595, line: 179, size: 32, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2124}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2119, file: !595, line: 184, baseType: !620, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2119, file: !595, line: 192, baseType: !49, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2119, file: !595, line: 194, baseType: !49, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2119, file: !595, line: 195, baseType: !6, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !594, file: !595, line: 199, baseType: !620, size: 32, offset: 416)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !529, file: !216, line: 1964, baseType: !2127, size: 64, offset: 1344)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!402, !466, !2130}
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2132, line: 12, size: 256, elements: !2133)
!2132 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2133 = !{!2134, !2135, !2136, !2137, !2138}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2131, file: !2132, line: 13, baseType: !616, size: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2131, file: !2132, line: 16, baseType: !6, size: 32, offset: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2131, file: !2132, line: 23, baseType: !30, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2131, file: !2132, line: 30, baseType: !30, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2131, file: !2132, line: 33, baseType: !2139, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !595, line: 27, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !529, file: !216, line: 1966, baseType: !2127, size: 64, offset: 1408)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !467, file: !216, line: 1424, baseType: !2143, size: 64, offset: 448)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2145)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2146, line: 322, size: 704, elements: !2147)
!2146 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!2147 = !{!2148, !2199, !2203, !2207, !2208, !2209, !2210, !2211, !2216, !2221, !2225}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2145, file: !2146, line: 323, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!6, !2152}
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2146, line: 294, size: 1600, elements: !2154)
!2154 = !{!2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2184, !2185, !2186}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2153, file: !2146, line: 295, baseType: !509, size: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2153, file: !2146, line: 296, baseType: !205, size: 128, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2153, file: !2146, line: 297, baseType: !205, size: 128, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2153, file: !2146, line: 298, baseType: !205, size: 128, offset: 384)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2153, file: !2146, line: 299, baseType: !174, size: 192, offset: 512)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2153, file: !2146, line: 300, baseType: !189, offset: 704)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2153, file: !2146, line: 301, baseType: !620, size: 32, offset: 704)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2153, file: !2146, line: 302, baseType: !466, size: 64, offset: 768)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2153, file: !2146, line: 303, baseType: !2164, size: 64, offset: 832)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2146, line: 68, size: 64, elements: !2165)
!2165 = !{!2166, !2178}
!2166 = !DIDerivedType(tag: DW_TAG_member, scope: !2164, file: !2146, line: 69, baseType: !2167, size: 32)
!2167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2164, file: !2146, line: 69, size: 32, elements: !2168)
!2168 = !{!2169, !2170, !2171}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2167, file: !2146, line: 70, baseType: !295, size: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2167, file: !2146, line: 71, baseType: !304, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2167, file: !2146, line: 72, baseType: !2172, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2173, line: 24, baseType: !2174)
!2173 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2173, line: 22, size: 32, elements: !2175)
!2175 = !{!2176}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2174, file: !2173, line: 23, baseType: !2177, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2173, line: 20, baseType: !301)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2164, file: !2146, line: 74, baseType: !2179, size: 32, offset: 32)
!2179 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2146, line: 54, baseType: !49, size: 32, elements: !2180)
!2180 = !{!2181, !2182, !2183}
!2181 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!2182 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!2183 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2153, file: !2146, line: 304, baseType: !393, size: 64, offset: 896)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2153, file: !2146, line: 305, baseType: !30, size: 64, offset: 960)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2153, file: !2146, line: 306, baseType: !2187, size: 576, offset: 1024)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2146, line: 205, size: 576, elements: !2188)
!2188 = !{!2189, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2187, file: !2146, line: 206, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2146, line: 66, baseType: !187)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2187, file: !2146, line: 207, baseType: !2190, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2187, file: !2146, line: 208, baseType: !2190, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2187, file: !2146, line: 209, baseType: !2190, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2187, file: !2146, line: 210, baseType: !2190, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2187, file: !2146, line: 211, baseType: !2190, size: 64, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2187, file: !2146, line: 212, baseType: !2190, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2187, file: !2146, line: 213, baseType: !400, size: 64, offset: 448)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2187, file: !2146, line: 214, baseType: !400, size: 64, offset: 512)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2145, file: !2146, line: 324, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!2152, !466, !6}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2145, file: !2146, line: 325, baseType: !2204, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2152}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2145, file: !2146, line: 326, baseType: !2149, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2145, file: !2146, line: 327, baseType: !2149, size: 64, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2145, file: !2146, line: 328, baseType: !2149, size: 64, offset: 320)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2145, file: !2146, line: 329, baseType: !557, size: 64, offset: 384)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2145, file: !2146, line: 332, baseType: !2212, size: 64, offset: 448)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!2215, !288}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2145, file: !2146, line: 333, baseType: !2217, size: 64, offset: 512)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!6, !288, !2220}
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2145, file: !2146, line: 335, baseType: !2222, size: 64, offset: 576)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!6, !288, !2215}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2145, file: !2146, line: 337, baseType: !2226, size: 64, offset: 640)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!6, !466, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !467, file: !216, line: 1425, baseType: !2231, size: 64, offset: 512)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2233)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2146, line: 428, size: 704, elements: !2234)
!2234 = !{!2235, !2239, !2240, !2244, !2245, !2246, !2261, !2284, !2288, !2289, !2312}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2233, file: !2146, line: 429, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!6, !466, !6, !6, !410}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2233, file: !2146, line: 430, baseType: !557, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2233, file: !2146, line: 431, baseType: !2241, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!6, !466, !49}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2233, file: !2146, line: 432, baseType: !2241, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2233, file: !2146, line: 433, baseType: !557, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2233, file: !2146, line: 434, baseType: !2247, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!6, !466, !6, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2146, line: 415, size: 256, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2251, file: !2146, line: 416, baseType: !6, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2251, file: !2146, line: 417, baseType: !49, size: 32, offset: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2251, file: !2146, line: 418, baseType: !49, size: 32, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2251, file: !2146, line: 420, baseType: !49, size: 32, offset: 96)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2251, file: !2146, line: 421, baseType: !49, size: 32, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2251, file: !2146, line: 422, baseType: !49, size: 32, offset: 160)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2251, file: !2146, line: 423, baseType: !49, size: 32, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2251, file: !2146, line: 424, baseType: !49, size: 32, offset: 224)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2233, file: !2146, line: 435, baseType: !2262, size: 64, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!6, !466, !2164, !2265}
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2146, line: 343, size: 960, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2266, file: !2146, line: 344, baseType: !6, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2266, file: !2146, line: 345, baseType: !281, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2266, file: !2146, line: 346, baseType: !281, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2266, file: !2146, line: 347, baseType: !281, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2266, file: !2146, line: 348, baseType: !281, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2266, file: !2146, line: 349, baseType: !281, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2266, file: !2146, line: 350, baseType: !281, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2266, file: !2146, line: 351, baseType: !185, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2266, file: !2146, line: 353, baseType: !185, size: 64, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2266, file: !2146, line: 354, baseType: !6, size: 32, offset: 576)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2266, file: !2146, line: 355, baseType: !6, size: 32, offset: 608)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2266, file: !2146, line: 356, baseType: !281, size: 64, offset: 640)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2266, file: !2146, line: 357, baseType: !281, size: 64, offset: 704)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2266, file: !2146, line: 358, baseType: !281, size: 64, offset: 768)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2266, file: !2146, line: 359, baseType: !185, size: 64, offset: 832)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2266, file: !2146, line: 360, baseType: !6, size: 32, offset: 896)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2233, file: !2146, line: 436, baseType: !2285, size: 64, offset: 448)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!6, !466, !2229, !2265}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2233, file: !2146, line: 438, baseType: !2262, size: 64, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2233, file: !2146, line: 439, baseType: !2290, size: 64, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!6, !466, !2293}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2146, line: 409, size: 1408, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2294, file: !2146, line: 410, baseType: !49, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2294, file: !2146, line: 411, baseType: !2298, size: 1344, offset: 64)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2299, size: 1344, elements: !521)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2146, line: 395, size: 448, elements: !2300)
!2300 = !{!2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2311}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2299, file: !2146, line: 396, baseType: !49, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2299, file: !2146, line: 397, baseType: !49, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2299, file: !2146, line: 399, baseType: !49, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2299, file: !2146, line: 400, baseType: !49, size: 32, offset: 96)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2299, file: !2146, line: 401, baseType: !49, size: 32, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2299, file: !2146, line: 402, baseType: !49, size: 32, offset: 160)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2299, file: !2146, line: 403, baseType: !49, size: 32, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2299, file: !2146, line: 404, baseType: !283, size: 64, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2299, file: !2146, line: 405, baseType: !2310, size: 64, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !181, line: 126, baseType: !281)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2299, file: !2146, line: 406, baseType: !2310, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2233, file: !2146, line: 440, baseType: !2241, size: 64, offset: 640)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !467, file: !216, line: 1426, baseType: !2314, size: 64, offset: 576)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2316)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !216, line: 49, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !467, file: !216, line: 1427, baseType: !30, size: 64, offset: 640)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !467, file: !216, line: 1428, baseType: !30, size: 64, offset: 704)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !467, file: !216, line: 1429, baseType: !30, size: 64, offset: 768)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !467, file: !216, line: 1430, baseType: !245, size: 64, offset: 832)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !467, file: !216, line: 1431, baseType: !640, size: 256, offset: 896)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !467, file: !216, line: 1432, baseType: !6, size: 32, offset: 1152)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !467, file: !216, line: 1433, baseType: !620, size: 32, offset: 1184)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !467, file: !216, line: 1437, baseType: !2325, size: 64, offset: 1216)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2328)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !216, line: 1437, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !467, file: !216, line: 1449, baseType: !2330, size: 64, offset: 1280)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !261, line: 34, size: 64, elements: !2331)
!2331 = !{!2332}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2330, file: !261, line: 35, baseType: !264, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !467, file: !216, line: 1450, baseType: !205, size: 128, offset: 1344)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !467, file: !216, line: 1451, baseType: !2335, size: 64, offset: 1472)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !216, line: 699, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !467, file: !216, line: 1452, baseType: !1715, size: 64, offset: 1536)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !467, file: !216, line: 1453, baseType: !2339, size: 64, offset: 1600)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !216, line: 1453, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !467, file: !216, line: 1454, baseType: !509, size: 128, offset: 1664)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !467, file: !216, line: 1455, baseType: !49, size: 32, offset: 1792)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !467, file: !216, line: 1456, baseType: !2344, size: 2432, offset: 1856)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2146, line: 518, size: 2432, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2350, !2382}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2344, file: !2146, line: 519, baseType: !49, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2344, file: !2146, line: 520, baseType: !640, size: 256, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2344, file: !2146, line: 521, baseType: !2349, size: 192, offset: 320)
!2349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 192, elements: !521)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2344, file: !2146, line: 522, baseType: !2351, size: 1728, offset: 512)
!2351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2352, size: 1728, elements: !521)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2146, line: 222, size: 576, elements: !2353)
!2353 = !{!2354, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2352, file: !2146, line: 223, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2146, line: 443, size: 256, elements: !2357)
!2357 = !{!2358, !2359, !2372, !2373}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2356, file: !2146, line: 444, baseType: !6, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2356, file: !2146, line: 445, baseType: !2360, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2362)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2146, line: 310, size: 512, elements: !2363)
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2362, file: !2146, line: 311, baseType: !557, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2362, file: !2146, line: 312, baseType: !557, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2362, file: !2146, line: 313, baseType: !557, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2362, file: !2146, line: 314, baseType: !557, size: 64, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2362, file: !2146, line: 315, baseType: !2149, size: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2362, file: !2146, line: 316, baseType: !2149, size: 64, offset: 320)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2362, file: !2146, line: 317, baseType: !2149, size: 64, offset: 384)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2362, file: !2146, line: 318, baseType: !2226, size: 64, offset: 448)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2356, file: !2146, line: 446, baseType: !500, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2356, file: !2146, line: 447, baseType: !2355, size: 64, offset: 192)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2352, file: !2146, line: 224, baseType: !6, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2352, file: !2146, line: 226, baseType: !205, size: 128, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2352, file: !2146, line: 227, baseType: !30, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2352, file: !2146, line: 228, baseType: !49, size: 32, offset: 320)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2352, file: !2146, line: 229, baseType: !49, size: 32, offset: 352)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2352, file: !2146, line: 230, baseType: !2190, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2352, file: !2146, line: 231, baseType: !2190, size: 64, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2352, file: !2146, line: 232, baseType: !53, size: 64, offset: 512)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2344, file: !2146, line: 523, baseType: !2383, size: 192, offset: 2240)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2360, size: 192, elements: !521)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !467, file: !216, line: 1458, baseType: !2385, size: 2112, offset: 4288)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !216, line: 1410, size: 2112, elements: !2386)
!2386 = !{!2387, !2388, !2389}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2385, file: !216, line: 1411, baseType: !6, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2385, file: !216, line: 1412, baseType: !1272, size: 128, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2385, file: !216, line: 1413, baseType: !2390, size: 1920, offset: 192)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2391, size: 1920, elements: !521)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2392, line: 12, size: 640, elements: !2393)
!2392 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2393 = !{!2394, !2402, !2403, !2408, !2409}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2391, file: !2392, line: 13, baseType: !2395, size: 320)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2396, line: 17, size: 320, elements: !2397)
!2396 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2397 = !{!2398, !2399, !2400, !2401}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2395, file: !2396, line: 18, baseType: !6, size: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2395, file: !2396, line: 19, baseType: !6, size: 32, offset: 32)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2395, file: !2396, line: 20, baseType: !1272, size: 128, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2395, file: !2396, line: 22, baseType: !228, size: 128, align: 64, offset: 192)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2391, file: !2392, line: 14, baseType: !73, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2391, file: !2392, line: 15, baseType: !2404, size: 64, offset: 384)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2405, line: 16, size: 64, elements: !2406)
!2405 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2406 = !{!2407}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2404, file: !2405, line: 17, baseType: !999, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2391, file: !2392, line: 16, baseType: !1272, size: 128, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2391, file: !2392, line: 17, baseType: !620, size: 32, offset: 576)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !467, file: !216, line: 1465, baseType: !53, size: 64, offset: 6400)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !467, file: !216, line: 1468, baseType: !278, size: 32, offset: 6464)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !467, file: !216, line: 1470, baseType: !400, size: 64, offset: 6528)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !467, file: !216, line: 1471, baseType: !400, size: 64, offset: 6592)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !467, file: !216, line: 1473, baseType: !68, size: 32, offset: 6656)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !467, file: !216, line: 1474, baseType: !2416, size: 64, offset: 6720)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !216, line: 603, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !467, file: !216, line: 1477, baseType: !2419, size: 256, offset: 6784)
!2419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !71)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !467, file: !216, line: 1478, baseType: !2421, size: 128, offset: 7040)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2422, line: 18, baseType: !2423)
!2422 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2422, line: 16, size: 128, elements: !2424)
!2424 = !{!2425}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2423, file: !2422, line: 17, baseType: !2426, size: 128)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 128, elements: !1524)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !467, file: !216, line: 1480, baseType: !49, size: 32, offset: 7168)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !467, file: !216, line: 1481, baseType: !2429, size: 32, offset: 7200)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !181, line: 150, baseType: !49)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !467, file: !216, line: 1487, baseType: !174, size: 192, offset: 7232)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !467, file: !216, line: 1493, baseType: !12, size: 64, offset: 7424)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !467, file: !216, line: 1495, baseType: !2433, size: 64, offset: 7488)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2435)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !243, line: 135, size: 1024, align: 512, elements: !2436)
!2436 = !{!2437, !2441, !2442, !2449, !2455, !2459, !2463, !2467, !2468, !2472, !2476, !2481, !2485}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2435, file: !243, line: 136, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!6, !245, !49}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2435, file: !243, line: 137, baseType: !2438, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2435, file: !243, line: 138, baseType: !2443, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!6, !2446, !2448}
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2435, file: !243, line: 139, baseType: !2450, size: 64, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!6, !2446, !49, !12, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2435, file: !243, line: 141, baseType: !2456, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!6, !2446}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2435, file: !243, line: 142, baseType: !2460, size: 64, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!6, !245}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2435, file: !243, line: 143, baseType: !2464, size: 64, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !245}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2435, file: !243, line: 144, baseType: !2464, size: 64, offset: 448)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2435, file: !243, line: 145, baseType: !2469, size: 64, offset: 512)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !245, !288}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2435, file: !243, line: 146, baseType: !2473, size: 64, offset: 576)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!347, !245, !347, !6}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2435, file: !243, line: 147, baseType: !2477, size: 64, offset: 640)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!241, !2480}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2435, file: !243, line: 148, baseType: !2482, size: 64, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!6, !410, !352}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2435, file: !243, line: 149, baseType: !2486, size: 64, offset: 768)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!245, !245, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !467, file: !216, line: 1500, baseType: !6, size: 32, offset: 7552)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !467, file: !216, line: 1502, baseType: !2493, size: 448, offset: 7616)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2132, line: 60, size: 448, elements: !2494)
!2494 = !{!2495, !2500, !2501, !2502, !2503, !2504, !2505}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2493, file: !2132, line: 61, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!30, !2499, !2130}
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2493, file: !2132, line: 63, baseType: !2496, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2493, file: !2132, line: 66, baseType: !402, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2493, file: !2132, line: 67, baseType: !6, size: 32, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2493, file: !2132, line: 68, baseType: !49, size: 32, offset: 224)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2493, file: !2132, line: 71, baseType: !205, size: 128, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2493, file: !2132, line: 77, baseType: !2506, size: 64, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !467, file: !216, line: 1505, baseType: !178, size: 64, offset: 8064)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !467, file: !216, line: 1508, baseType: !178, size: 64, offset: 8128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !467, file: !216, line: 1511, baseType: !6, size: 32, offset: 8192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !467, file: !216, line: 1514, baseType: !780, size: 32, offset: 8224)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !467, file: !216, line: 1517, baseType: !2512, size: 64, offset: 8256)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1750, line: 18, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !467, file: !216, line: 1518, baseType: !505, size: 64, offset: 8320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !467, file: !216, line: 1525, baseType: !1502, size: 64, offset: 8384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !467, file: !216, line: 1532, baseType: !2517, size: 64, offset: 8448)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2518, line: 52, size: 64, elements: !2519)
!2518 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2519 = !{!2520}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2517, file: !2518, line: 53, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2518, line: 40, size: 256, elements: !2523)
!2523 = !{!2524, !2525, !2530}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2522, file: !2518, line: 42, baseType: !189)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2522, file: !2518, line: 44, baseType: !2526, size: 192)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2518, line: 28, size: 192, elements: !2527)
!2527 = !{!2528, !2529}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2526, file: !2518, line: 29, baseType: !205, size: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2526, file: !2518, line: 31, baseType: !402, size: 64, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2522, file: !2518, line: 49, baseType: !402, size: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !467, file: !216, line: 1533, baseType: !2517, size: 64, offset: 8512)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !467, file: !216, line: 1534, baseType: !228, size: 128, align: 64, offset: 8576)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !467, file: !216, line: 1535, baseType: !1749, size: 256, offset: 8704)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !467, file: !216, line: 1537, baseType: !174, size: 192, offset: 8960)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !467, file: !216, line: 1542, baseType: !6, size: 32, offset: 9152)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !467, file: !216, line: 1545, baseType: !189, offset: 9184)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !467, file: !216, line: 1546, baseType: !205, size: 128, offset: 9216)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !467, file: !216, line: 1548, baseType: !189, offset: 9344)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !467, file: !216, line: 1549, baseType: !205, size: 128, offset: 9344)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !289, file: !216, line: 624, baseType: !606, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !289, file: !216, line: 631, baseType: !30, size: 64, offset: 320)
!2542 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !216, line: 639, baseType: !2543, size: 32, offset: 384)
!2543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !216, line: 639, size: 32, elements: !2544)
!2544 = !{!2545, !2547}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2543, file: !216, line: 640, baseType: !2546, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2543, file: !216, line: 641, baseType: !49, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !289, file: !216, line: 643, baseType: !375, size: 32, offset: 416)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !289, file: !216, line: 644, baseType: !393, size: 64, offset: 448)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !289, file: !216, line: 645, baseType: !396, size: 128, offset: 512)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !289, file: !216, line: 646, baseType: !396, size: 128, offset: 640)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !289, file: !216, line: 647, baseType: !396, size: 128, offset: 768)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !289, file: !216, line: 648, baseType: !189, offset: 896)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !289, file: !216, line: 649, baseType: !24, size: 16, offset: 896)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !289, file: !216, line: 650, baseType: !1140, size: 8, offset: 912)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !289, file: !216, line: 651, baseType: !1140, size: 8, offset: 920)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !289, file: !216, line: 652, baseType: !2310, size: 64, offset: 960)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !289, file: !216, line: 659, baseType: !30, size: 64, offset: 1024)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !289, file: !216, line: 660, baseType: !640, size: 256, offset: 1088)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !289, file: !216, line: 662, baseType: !30, size: 64, offset: 1344)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !289, file: !216, line: 663, baseType: !30, size: 64, offset: 1408)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !289, file: !216, line: 665, baseType: !509, size: 128, offset: 1472)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !289, file: !216, line: 666, baseType: !205, size: 128, offset: 1600)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !289, file: !216, line: 675, baseType: !205, size: 128, offset: 1728)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !289, file: !216, line: 676, baseType: !205, size: 128, offset: 1856)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !289, file: !216, line: 677, baseType: !205, size: 128, offset: 1984)
!2567 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !216, line: 678, baseType: !2568, size: 128, offset: 2112)
!2568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !216, line: 678, size: 128, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2568, file: !216, line: 679, baseType: !505, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2568, file: !216, line: 680, baseType: !228, size: 128, align: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !289, file: !216, line: 682, baseType: !180, size: 64, offset: 2240)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !289, file: !216, line: 683, baseType: !180, size: 64, offset: 2304)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !289, file: !216, line: 684, baseType: !620, size: 32, offset: 2368)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !289, file: !216, line: 685, baseType: !620, size: 32, offset: 2400)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !289, file: !216, line: 686, baseType: !620, size: 32, offset: 2432)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !289, file: !216, line: 688, baseType: !620, size: 32, offset: 2464)
!2578 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !216, line: 690, baseType: !2579, size: 64, offset: 2496)
!2579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !216, line: 690, size: 64, elements: !2580)
!2580 = !{!2581, !2804}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2579, file: !216, line: 691, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !216, line: 1822, size: 2048, elements: !2585)
!2585 = !{!2586, !2587, !2591, !2596, !2600, !2601, !2602, !2606, !2619, !2620, !2628, !2632, !2633, !2637, !2638, !2642, !2647, !2648, !2652, !2656, !2764, !2768, !2769, !2773, !2774, !2778, !2782, !2787, !2791, !2795, !2799, !2803}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2584, file: !216, line: 1823, baseType: !500, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2584, file: !216, line: 1824, baseType: !2588, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!393, !214, !393, !6}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2584, file: !216, line: 1825, baseType: !2592, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!439, !214, !347, !442, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2584, file: !216, line: 1826, baseType: !2597, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!439, !214, !12, !442, !2595}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2584, file: !216, line: 1827, baseType: !710, size: 64, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2584, file: !216, line: 1828, baseType: !710, size: 64, offset: 320)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2584, file: !216, line: 1829, baseType: !2603, size: 64, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!6, !713, !352}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2584, file: !216, line: 1830, baseType: !2607, size: 64, offset: 448)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!6, !214, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !216, line: 1776, size: 128, elements: !2612)
!2612 = !{!2613, !2618}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2611, file: !216, line: 1777, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !216, line: 1773, baseType: !2615)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{!6, !2610, !12, !6, !393, !281, !49}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2611, file: !216, line: 1778, baseType: !393, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2584, file: !216, line: 1831, baseType: !2607, size: 64, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2584, file: !216, line: 1832, baseType: !2621, size: 64, offset: 576)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!2624, !214, !2626}
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2625, line: 52, baseType: !49)
!2625 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !486, line: 27, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2584, file: !216, line: 1833, baseType: !2629, size: 64, offset: 640)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!402, !214, !49, !30}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2584, file: !216, line: 1834, baseType: !2629, size: 64, offset: 704)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2584, file: !216, line: 1835, baseType: !2634, size: 64, offset: 768)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!6, !214, !852}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2584, file: !216, line: 1836, baseType: !30, size: 64, offset: 832)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2584, file: !216, line: 1837, baseType: !2639, size: 64, offset: 896)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!6, !288, !214}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2584, file: !216, line: 1838, baseType: !2643, size: 64, offset: 960)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!6, !214, !2646}
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !216, line: 1007, baseType: !53)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2584, file: !216, line: 1839, baseType: !2639, size: 64, offset: 1024)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2584, file: !216, line: 1840, baseType: !2649, size: 64, offset: 1088)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!6, !214, !393, !393, !6}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2584, file: !216, line: 1841, baseType: !2653, size: 64, offset: 1152)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DISubroutineType(types: !2655)
!2655 = !{!6, !6, !214, !6}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2584, file: !216, line: 1842, baseType: !2657, size: 64, offset: 1216)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!6, !214, !6, !2660}
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !216, line: 1062, size: 1664, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2694, !2695, !2696, !2709, !2740}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2661, file: !216, line: 1063, baseType: !2660, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2661, file: !216, line: 1064, baseType: !205, size: 128, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2661, file: !216, line: 1065, baseType: !509, size: 128, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2661, file: !216, line: 1066, baseType: !205, size: 128, offset: 320)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2661, file: !216, line: 1069, baseType: !205, size: 128, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2661, file: !216, line: 1072, baseType: !2646, size: 64, offset: 576)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2661, file: !216, line: 1073, baseType: !49, size: 32, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2661, file: !216, line: 1074, baseType: !64, size: 8, offset: 672)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2661, file: !216, line: 1075, baseType: !49, size: 32, offset: 704)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2661, file: !216, line: 1076, baseType: !6, size: 32, offset: 736)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2661, file: !216, line: 1077, baseType: !1272, size: 128, offset: 768)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2661, file: !216, line: 1078, baseType: !214, size: 64, offset: 896)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2661, file: !216, line: 1079, baseType: !393, size: 64, offset: 960)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2661, file: !216, line: 1080, baseType: !393, size: 64, offset: 1024)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2661, file: !216, line: 1082, baseType: !2678, size: 64, offset: 1088)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !216, line: 1314, size: 320, elements: !2680)
!2680 = !{!2681, !2689, !2690, !2691, !2692, !2693}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2679, file: !216, line: 1315, baseType: !2682)
!2682 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2683, line: 20, baseType: !2684)
!2683 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2683, line: 11, elements: !2685)
!2685 = !{!2686}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2684, file: !2683, line: 12, baseType: !2687)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !201, line: 33, baseType: !2688)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !201, line: 31, elements: !203)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2679, file: !216, line: 1316, baseType: !6, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2679, file: !216, line: 1317, baseType: !6, size: 32, offset: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2679, file: !216, line: 1318, baseType: !2678, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2679, file: !216, line: 1319, baseType: !214, size: 64, offset: 128)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2679, file: !216, line: 1320, baseType: !228, size: 128, align: 64, offset: 192)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2661, file: !216, line: 1084, baseType: !30, size: 64, offset: 1152)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2661, file: !216, line: 1085, baseType: !30, size: 64, offset: 1216)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2661, file: !216, line: 1087, baseType: !2697, size: 64, offset: 1280)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2699)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !216, line: 1011, size: 128, elements: !2700)
!2700 = !{!2701, !2705}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2699, file: !216, line: 1012, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{null, !2660, !2660}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2699, file: !216, line: 1013, baseType: !2706, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{null, !2660}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2661, file: !216, line: 1088, baseType: !2710, size: 64, offset: 1344)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2712)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !216, line: 1016, size: 512, elements: !2713)
!2713 = !{!2714, !2718, !2722, !2723, !2727, !2731, !2735, !2739}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2712, file: !216, line: 1017, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!2646, !2646}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2712, file: !216, line: 1018, baseType: !2719, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{null, !2646}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2712, file: !216, line: 1019, baseType: !2706, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2712, file: !216, line: 1020, baseType: !2724, size: 64, offset: 192)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!6, !2660, !6}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2712, file: !216, line: 1021, baseType: !2728, size: 64, offset: 256)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!352, !2660}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2712, file: !216, line: 1022, baseType: !2732, size: 64, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!6, !2660, !6, !208}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2712, file: !216, line: 1023, baseType: !2736, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{null, !2660, !687}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2712, file: !216, line: 1024, baseType: !2728, size: 64, offset: 448)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2661, file: !216, line: 1097, baseType: !2741, size: 256, offset: 1408)
!2741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2661, file: !216, line: 1089, size: 256, elements: !2742)
!2742 = !{!2743, !2752, !2758}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2741, file: !216, line: 1090, baseType: !2744, size: 256)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2745, line: 10, size: 256, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2746 = !{!2747, !2748, !2751}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2744, file: !2745, line: 11, baseType: !278, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2744, file: !2745, line: 12, baseType: !2749, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2745, line: 5, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2744, file: !2745, line: 13, baseType: !205, size: 128, offset: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2741, file: !216, line: 1091, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2745, line: 17, size: 64, elements: !2754)
!2754 = !{!2755}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2753, file: !2745, line: 18, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2745, line: 16, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2741, file: !216, line: 1096, baseType: !2759, size: 192)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2741, file: !216, line: 1092, size: 192, elements: !2760)
!2760 = !{!2761, !2762, !2763}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2759, file: !216, line: 1093, baseType: !205, size: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2759, file: !216, line: 1094, baseType: !6, size: 32, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2759, file: !216, line: 1095, baseType: !49, size: 32, offset: 160)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2584, file: !216, line: 1843, baseType: !2765, size: 64, offset: 1280)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!439, !214, !593, !6, !442, !2595, !6}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2584, file: !216, line: 1844, baseType: !892, size: 64, offset: 1344)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2584, file: !216, line: 1845, baseType: !2770, size: 64, offset: 1408)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!6, !6}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2584, file: !216, line: 1846, baseType: !2657, size: 64, offset: 1472)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2584, file: !216, line: 1847, baseType: !2775, size: 64, offset: 1536)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!439, !1890, !214, !2595, !442, !49}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2584, file: !216, line: 1848, baseType: !2779, size: 64, offset: 1600)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!439, !214, !2595, !1890, !442, !49}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2584, file: !216, line: 1849, baseType: !2783, size: 64, offset: 1664)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!6, !214, !402, !2786, !687}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2584, file: !216, line: 1850, baseType: !2788, size: 64, offset: 1728)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!402, !214, !6, !393, !393}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2584, file: !216, line: 1852, baseType: !2792, size: 64, offset: 1792)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{null, !583, !214}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2584, file: !216, line: 1856, baseType: !2796, size: 64, offset: 1856)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!439, !214, !393, !214, !393, !442, !49}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2584, file: !216, line: 1858, baseType: !2800, size: 64, offset: 1920)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!393, !214, !393, !214, !393, !393, !49}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2584, file: !216, line: 1861, baseType: !2649, size: 64, offset: 1984)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2579, file: !216, line: 692, baseType: !536, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !289, file: !216, line: 694, baseType: !2806, size: 64, offset: 2560)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !216, line: 1100, size: 384, elements: !2808)
!2808 = !{!2809, !2810, !2811, !2812}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2807, file: !216, line: 1101, baseType: !189)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2807, file: !216, line: 1102, baseType: !205, size: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2807, file: !216, line: 1103, baseType: !205, size: 128, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2807, file: !216, line: 1104, baseType: !205, size: 128, offset: 256)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !289, file: !216, line: 695, baseType: !607, size: 1216, align: 64, offset: 2624)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !289, file: !216, line: 696, baseType: !205, size: 128, offset: 3840)
!2815 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !216, line: 697, baseType: !2816, size: 64, offset: 3968)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !216, line: 697, size: 64, elements: !2817)
!2817 = !{!2818, !2819, !2820, !2823, !2824}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2816, file: !216, line: 698, baseType: !1890, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2816, file: !216, line: 699, baseType: !2335, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2816, file: !216, line: 700, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !216, line: 700, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2816, file: !216, line: 701, baseType: !347, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2816, file: !216, line: 702, baseType: !49, size: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !289, file: !216, line: 705, baseType: !68, size: 32, offset: 4032)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !289, file: !216, line: 708, baseType: !68, size: 32, offset: 4064)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !289, file: !216, line: 709, baseType: !2416, size: 64, offset: 4096)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !289, file: !216, line: 720, baseType: !53, size: 64, offset: 4160)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !246, file: !243, line: 98, baseType: !2830, size: 256, offset: 448)
!2830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !71)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !246, file: !243, line: 101, baseType: !2832, size: 32, offset: 704)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2833, line: 25, size: 32, elements: !2834)
!2833 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2834 = !{!2835}
!2835 = !DIDerivedType(tag: DW_TAG_member, scope: !2832, file: !2833, line: 26, baseType: !2836, size: 32)
!2836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2832, file: !2833, line: 26, size: 32, elements: !2837)
!2837 = !{!2838}
!2838 = !DIDerivedType(tag: DW_TAG_member, scope: !2836, file: !2833, line: 30, baseType: !2839, size: 32)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2836, file: !2833, line: 30, size: 32, elements: !2840)
!2840 = !{!2841, !2842}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2839, file: !2833, line: 31, baseType: !189)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2839, file: !2833, line: 32, baseType: !6, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !246, file: !243, line: 102, baseType: !2433, size: 64, offset: 768)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !246, file: !243, line: 103, baseType: !466, size: 64, offset: 832)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !246, file: !243, line: 104, baseType: !30, size: 64, offset: 896)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !246, file: !243, line: 105, baseType: !53, size: 64, offset: 960)
!2847 = !DIDerivedType(tag: DW_TAG_member, scope: !246, file: !243, line: 107, baseType: !2848, size: 128, offset: 1024)
!2848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !246, file: !243, line: 107, size: 128, elements: !2849)
!2849 = !{!2850, !2851}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2848, file: !243, line: 108, baseType: !205, size: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2848, file: !243, line: 109, baseType: !2852, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !246, file: !243, line: 111, baseType: !205, size: 128, offset: 1152)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !246, file: !243, line: 112, baseType: !205, size: 128, offset: 1280)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !246, file: !243, line: 120, baseType: !2856, size: 128, offset: 1408)
!2856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !246, file: !243, line: 116, size: 128, elements: !2857)
!2857 = !{!2858, !2859, !2860}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2856, file: !243, line: 117, baseType: !509, size: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2856, file: !243, line: 118, baseType: !260, size: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2856, file: !243, line: 119, baseType: !228, size: 128, align: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !215, file: !216, line: 922, baseType: !288, size: 64, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !215, file: !216, line: 923, baseType: !2582, size: 64, offset: 320)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !215, file: !216, line: 929, baseType: !189, offset: 384)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !215, file: !216, line: 930, baseType: !2865, size: 32, offset: 384)
!2865 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !216, line: 296, baseType: !49, size: 32, elements: !2866)
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872}
!2867 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!2868 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!2869 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!2870 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!2871 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!2872 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !215, file: !216, line: 931, baseType: !178, size: 64, offset: 448)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !215, file: !216, line: 932, baseType: !49, size: 32, offset: 512)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !215, file: !216, line: 933, baseType: !2429, size: 32, offset: 544)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !215, file: !216, line: 934, baseType: !174, size: 192, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !215, file: !216, line: 935, baseType: !393, size: 64, offset: 768)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !215, file: !216, line: 936, baseType: !2879, size: 192, offset: 832)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !216, line: 885, size: 192, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2891, !2892, !2893}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2879, file: !216, line: 886, baseType: !2682)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2879, file: !216, line: 887, baseType: !1261, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2879, file: !216, line: 888, baseType: !2884, size: 32, offset: 64)
!2884 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1263, line: 9, baseType: !49, size: 32, elements: !2885)
!2885 = !{!2886, !2887, !2888, !2889, !2890}
!2886 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!2887 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!2888 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!2889 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!2890 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2879, file: !216, line: 889, baseType: !295, size: 32, offset: 96)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2879, file: !216, line: 889, baseType: !295, size: 32, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2879, file: !216, line: 890, baseType: !6, size: 32, offset: 160)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !215, file: !216, line: 937, baseType: !1338, size: 64, offset: 1024)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !215, file: !216, line: 938, baseType: !2896, size: 256, offset: 1088)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !216, line: 896, size: 256, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2896, file: !216, line: 897, baseType: !30, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2896, file: !216, line: 898, baseType: !49, size: 32, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2896, file: !216, line: 899, baseType: !49, size: 32, offset: 96)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2896, file: !216, line: 902, baseType: !49, size: 32, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2896, file: !216, line: 903, baseType: !49, size: 32, offset: 160)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2896, file: !216, line: 904, baseType: !393, size: 64, offset: 192)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !215, file: !216, line: 940, baseType: !281, size: 64, offset: 1344)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !215, file: !216, line: 945, baseType: !53, size: 64, offset: 1408)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !215, file: !216, line: 949, baseType: !205, size: 128, offset: 1472)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !215, file: !216, line: 950, baseType: !205, size: 128, offset: 1600)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !215, file: !216, line: 952, baseType: !606, size: 64, offset: 1728)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !215, file: !216, line: 953, baseType: !780, size: 32, offset: 1792)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !215, file: !216, line: 954, baseType: !780, size: 32, offset: 1824)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !8, file: !9, line: 163, baseType: !2912, size: 64, offset: 2048)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !9, line: 24, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !8, file: !9, line: 165, baseType: !49, size: 32, offset: 2112)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !8, file: !9, line: 166, baseType: !2916, size: 320, offset: 2176)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2917, line: 11, size: 320, elements: !2918)
!2917 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2918 = !{!2919, !2920, !2921, !2926}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2916, file: !2917, line: 16, baseType: !509, size: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2916, file: !2917, line: 17, baseType: !30, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2916, file: !2917, line: 18, baseType: !2922, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !2925}
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2916, file: !2917, line: 19, baseType: !278, size: 32, offset: 256)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !8, file: !9, line: 168, baseType: !2928, size: 64, offset: 2496)
!2928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !45)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !8, file: !9, line: 170, baseType: !2930, size: 64, offset: 2560)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !9, line: 170, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !8, file: !9, line: 172, baseType: !2933, size: 64, offset: 2624)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !19, line: 90, size: 192, elements: !2935)
!2935 = !{!2936, !2937, !2938, !2939, !2940, !2941}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2934, file: !19, line: 91, baseType: !1235, size: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2934, file: !19, line: 92, baseType: !1235, size: 32, offset: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2934, file: !19, line: 93, baseType: !1235, size: 32, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !2934, file: !19, line: 94, baseType: !1235, size: 32, offset: 96)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !2934, file: !19, line: 95, baseType: !1235, size: 32, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !2934, file: !19, line: 96, baseType: !1235, size: 32, offset: 160)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !8, file: !9, line: 174, baseType: !35, size: 768, offset: 2688)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !8, file: !9, line: 175, baseType: !29, size: 64, offset: 3456)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !8, file: !9, line: 176, baseType: !29, size: 64, offset: 3520)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !8, file: !9, line: 177, baseType: !29, size: 64, offset: 3584)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !8, file: !9, line: 179, baseType: !2947, size: 64, offset: 3648)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!6, !7}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !8, file: !9, line: 180, baseType: !2951, size: 64, offset: 3712)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{null, !7}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !8, file: !9, line: 181, baseType: !2955, size: 64, offset: 3776)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!6, !7, !214}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !8, file: !9, line: 182, baseType: !2959, size: 64, offset: 3840)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!6, !7, !49, !49, !6}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !8, file: !9, line: 184, baseType: !2963, size: 64, offset: 3904)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !9, line: 337, size: 576, elements: !2965)
!2965 = !{!2966, !2967, !2968, !2969, !2970, !3038, !3039}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2964, file: !9, line: 339, baseType: !53, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2964, file: !9, line: 341, baseType: !6, size: 32, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2964, file: !9, line: 342, baseType: !12, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2964, file: !9, line: 344, baseType: !7, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2964, file: !9, line: 345, baseType: !2971, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !9, line: 302, size: 960, elements: !2973)
!2973 = !{!2974, !2975, !2979, !2990, !2994, !2998, !3027, !3031, !3032, !3033, !3034, !3035, !3036, !3037}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2972, file: !9, line: 304, baseType: !53, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2972, file: !9, line: 306, baseType: !2976, size: 64, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null, !2963, !49, !49, !6}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2972, file: !9, line: 307, baseType: !2980, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{null, !2963, !2983, !49}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2985)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !9, line: 32, size: 64, elements: !2986)
!2986 = !{!2987, !2988, !2989}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2985, file: !9, line: 33, baseType: !22, size: 16)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2985, file: !9, line: 34, baseType: !22, size: 16, offset: 16)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2985, file: !9, line: 35, baseType: !1235, size: 32, offset: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2972, file: !9, line: 309, baseType: !2991, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!352, !2963, !49, !49, !6}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2972, file: !9, line: 310, baseType: !2995, size: 64, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!352, !2971, !7}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !2972, file: !9, line: 311, baseType: !2999, size: 64, offset: 320)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!6, !2971, !7, !3002}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3004)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3005, line: 342, size: 1600, elements: !3006)
!3005 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3006 = !{!3007, !3009, !3010, !3011, !3012, !3013, !3015, !3017, !3018, !3019, !3020, !3021, !3022, !3024, !3025, !3026}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3004, file: !3005, line: 344, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3005, line: 14, baseType: !30)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3004, file: !3005, line: 346, baseType: !22, size: 16, offset: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3004, file: !3005, line: 347, baseType: !22, size: 16, offset: 80)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3004, file: !3005, line: 348, baseType: !22, size: 16, offset: 96)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3004, file: !3005, line: 349, baseType: !22, size: 16, offset: 112)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3004, file: !3005, line: 351, baseType: !3014, size: 64, offset: 128)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3008, size: 64, elements: !31)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3004, file: !3005, line: 352, baseType: !3016, size: 768, offset: 192)
!3016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3008, size: 768, elements: !36)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3004, file: !3005, line: 353, baseType: !3014, size: 64, offset: 960)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3004, file: !3005, line: 354, baseType: !3014, size: 64, offset: 1024)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3004, file: !3005, line: 355, baseType: !3014, size: 64, offset: 1088)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3004, file: !3005, line: 356, baseType: !3014, size: 64, offset: 1152)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3004, file: !3005, line: 357, baseType: !3014, size: 64, offset: 1216)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3004, file: !3005, line: 358, baseType: !3023, size: 128, offset: 1280)
!3023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3008, size: 128, elements: !45)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3004, file: !3005, line: 359, baseType: !3014, size: 64, offset: 1408)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3004, file: !3005, line: 360, baseType: !3014, size: 64, offset: 1472)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3004, file: !3005, line: 362, baseType: !3008, size: 64, offset: 1536)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !2972, file: !9, line: 312, baseType: !3028, size: 64, offset: 384)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !2963}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2972, file: !9, line: 313, baseType: !3028, size: 64, offset: 448)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !2972, file: !9, line: 315, baseType: !352, size: 8, offset: 512)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !2972, file: !9, line: 316, baseType: !6, size: 32, offset: 544)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2972, file: !9, line: 317, baseType: !12, size: 64, offset: 576)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2972, file: !9, line: 319, baseType: !3002, size: 64, offset: 640)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !2972, file: !9, line: 321, baseType: !205, size: 128, offset: 704)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2972, file: !9, line: 322, baseType: !205, size: 128, offset: 832)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !2964, file: !9, line: 347, baseType: !205, size: 128, offset: 320)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !2964, file: !9, line: 348, baseType: !205, size: 128, offset: 448)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !8, file: !9, line: 186, baseType: !189, offset: 3968)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !8, file: !9, line: 187, baseType: !174, size: 192, offset: 3968)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !8, file: !9, line: 189, baseType: !49, size: 32, offset: 4160)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !8, file: !9, line: 190, baseType: !352, size: 8, offset: 4192)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !8, file: !9, line: 192, baseType: !3045, size: 5568, offset: 4224)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !3046, line: 461, size: 5568, elements: !3047)
!3046 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!3047 = !{!3048, !3353, !3355, !3358, !3359, !3411, !3506, !3507, !3508, !3509, !3510, !3525, !3632, !3645, !3648, !3649, !3653, !3655, !3656, !3657, !3661, !3667, !3668, !3671, !3675, !3678, !3679, !3680, !3681, !3682, !3714, !3715, !3716, !3719, !3722, !3723, !3724, !3725}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3045, file: !3046, line: 462, baseType: !3049, size: 512)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3050, line: 64, size: 512, elements: !3051)
!3050 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3051 = !{!3052, !3053, !3054, !3056, !3096, !3204, !3343, !3348, !3349, !3350, !3351, !3352}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3049, file: !3050, line: 65, baseType: !12, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3049, file: !3050, line: 66, baseType: !205, size: 128, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3049, file: !3050, line: 67, baseType: !3055, size: 64, offset: 192)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3049, file: !3050, line: 68, baseType: !3057, size: 64, offset: 256)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3050, line: 192, size: 704, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3058, file: !3050, line: 193, baseType: !205, size: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3058, file: !3050, line: 194, baseType: !189, offset: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3058, file: !3050, line: 195, baseType: !3049, size: 512, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3058, file: !3050, line: 196, baseType: !3064, size: 64, offset: 640)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3066)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3050, line: 156, size: 192, elements: !3067)
!3067 = !{!3068, !3073, !3078}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3066, file: !3050, line: 157, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3070)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!6, !3057, !3055}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3066, file: !3050, line: 158, baseType: !3074, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3075)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!12, !3057, !3055}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3066, file: !3050, line: 159, baseType: !3079, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3080)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!6, !3057, !3055, !3083}
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3050, line: 148, size: 20736, elements: !3085)
!3085 = !{!3086, !3088, !3090, !3091, !3095}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3084, file: !3050, line: 149, baseType: !3087, size: 192)
!3087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 192, elements: !521)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3084, file: !3050, line: 150, baseType: !3089, size: 4096, offset: 192)
!3089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 4096, elements: !1671)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3084, file: !3050, line: 151, baseType: !6, size: 32, offset: 4288)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3084, file: !3050, line: 152, baseType: !3092, size: 16384, offset: 4320)
!3092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 16384, elements: !3093)
!3093 = !{!3094}
!3094 = !DISubrange(count: 2048)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3084, file: !3050, line: 153, baseType: !6, size: 32, offset: 20704)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3049, file: !3050, line: 69, baseType: !3097, size: 64, offset: 320)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3050, line: 138, size: 448, elements: !3099)
!3099 = !{!3100, !3104, !3123, !3125, !3158, !3194, !3198}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3098, file: !3050, line: 139, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{null, !3055}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3098, file: !3050, line: 140, baseType: !3105, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3107)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3108, line: 230, size: 128, elements: !3109)
!3108 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3109 = !{!3110, !3119}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3107, file: !3108, line: 231, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!439, !3055, !3114, !347}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3108, line: 30, size: 128, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3115, file: !3108, line: 31, baseType: !12, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3115, file: !3108, line: 32, baseType: !292, size: 16, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3107, file: !3108, line: 232, baseType: !3120, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!439, !3055, !3114, !12, !442}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3098, file: !3050, line: 141, baseType: !3124, size: 64, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3098, file: !3050, line: 142, baseType: !3126, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3129)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3108, line: 84, size: 320, elements: !3130)
!3130 = !{!3131, !3132, !3136, !3155, !3156}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3129, file: !3108, line: 85, baseType: !12, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3129, file: !3108, line: 86, baseType: !3133, size: 64, offset: 64)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!292, !3055, !3114, !6}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3129, file: !3108, line: 88, baseType: !3137, size: 64, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!292, !3055, !3140, !6}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3108, line: 168, size: 448, elements: !3142)
!3142 = !{!3143, !3144, !3145, !3146, !3150, !3151}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3141, file: !3108, line: 169, baseType: !3115, size: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3141, file: !3108, line: 170, baseType: !442, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3141, file: !3108, line: 171, baseType: !53, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3141, file: !3108, line: 172, baseType: !3147, size: 64, offset: 256)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!439, !214, !3055, !3140, !347, !393, !442}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3141, file: !3108, line: 174, baseType: !3147, size: 64, offset: 320)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3141, file: !3108, line: 176, baseType: !3152, size: 64, offset: 384)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!6, !214, !3055, !3140, !852}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3129, file: !3108, line: 90, baseType: !3124, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3129, file: !3108, line: 91, baseType: !3157, size: 64, offset: 256)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3098, file: !3050, line: 143, baseType: !3159, size: 64, offset: 256)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!3162, !3055}
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3165, line: 39, size: 384, elements: !3166)
!3165 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!3166 = !{!3167, !3173, !3177, !3181, !3189, !3193}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3164, file: !3165, line: 40, baseType: !3168, size: 32)
!3168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3165, line: 26, baseType: !49, size: 32, elements: !3169)
!3169 = !{!3170, !3171, !3172}
!3170 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!3171 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!3172 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3164, file: !3165, line: 41, baseType: !3174, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!352}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3164, file: !3165, line: 42, baseType: !3178, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!53}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3164, file: !3165, line: 43, baseType: !3182, size: 64, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!3185, !3187}
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3165, line: 19, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3164, file: !3165, line: 44, baseType: !3190, size: 64, offset: 256)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!3185}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3164, file: !3165, line: 45, baseType: !329, size: 64, offset: 320)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3098, file: !3050, line: 144, baseType: !3195, size: 64, offset: 320)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!3185, !3055}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3098, file: !3050, line: 145, baseType: !3199, size: 64, offset: 384)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{null, !3055, !3202, !3203}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3049, file: !3050, line: 70, baseType: !3205, size: 64, offset: 384)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !486, line: 123, size: 1024, elements: !3207)
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3336, !3337, !3338, !3339, !3340}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3206, file: !486, line: 124, baseType: !620, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3206, file: !486, line: 125, baseType: !620, size: 32, offset: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3206, file: !486, line: 135, baseType: !3205, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3206, file: !486, line: 136, baseType: !12, size: 64, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3206, file: !486, line: 138, baseType: !633, size: 192, align: 64, offset: 192)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3206, file: !486, line: 140, baseType: !3185, size: 64, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3206, file: !486, line: 141, baseType: !49, size: 32, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_member, scope: !3206, file: !486, line: 142, baseType: !3216, size: 256, offset: 512)
!3216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3206, file: !486, line: 142, size: 256, elements: !3217)
!3217 = !{!3218, !3264, !3268}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3216, file: !486, line: 143, baseType: !3219, size: 192)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !486, line: 91, size: 192, elements: !3220)
!3220 = !{!3221, !3222, !3223}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3219, file: !486, line: 92, baseType: !30, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3219, file: !486, line: 94, baseType: !629, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3219, file: !486, line: 100, baseType: !3224, size: 64, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !486, line: 180, size: 704, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3236, !3237, !3238, !3262, !3263}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3225, file: !486, line: 182, baseType: !3205, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3225, file: !486, line: 183, baseType: !49, size: 32, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3225, file: !486, line: 186, baseType: !3230, size: 192, offset: 128)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3231, line: 19, size: 192, elements: !3232)
!3231 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3232 = !{!3233, !3234, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3230, file: !3231, line: 20, baseType: !611, size: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3230, file: !3231, line: 21, baseType: !49, size: 32, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3230, file: !3231, line: 22, baseType: !49, size: 32, offset: 160)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3225, file: !486, line: 187, baseType: !278, size: 32, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3225, file: !486, line: 188, baseType: !278, size: 32, offset: 352)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3225, file: !486, line: 189, baseType: !3239, size: 64, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !486, line: 168, size: 320, elements: !3241)
!3241 = !{!3242, !3246, !3250, !3254, !3258}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3240, file: !486, line: 169, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!6, !583, !3224}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3240, file: !486, line: 171, baseType: !3247, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!6, !3205, !12, !292}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3240, file: !486, line: 173, baseType: !3251, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!6, !3205}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3240, file: !486, line: 174, baseType: !3255, size: 64, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!6, !3205, !3205, !12}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3240, file: !486, line: 176, baseType: !3259, size: 64, offset: 256)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!6, !583, !3205, !3224}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3225, file: !486, line: 192, baseType: !205, size: 128, offset: 448)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3225, file: !486, line: 194, baseType: !1272, size: 128, offset: 576)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3216, file: !486, line: 144, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !486, line: 103, size: 64, elements: !3266)
!3266 = !{!3267}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3265, file: !486, line: 104, baseType: !3205, size: 64)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3216, file: !486, line: 145, baseType: !3269, size: 256)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !486, line: 107, size: 256, elements: !3270)
!3270 = !{!3271, !3331, !3334, !3335}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3269, file: !486, line: 108, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3274)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !486, line: 217, size: 768, elements: !3275)
!3275 = !{!3276, !3296, !3300, !3304, !3308, !3312, !3316, !3320, !3321, !3322, !3323, !3327}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3274, file: !486, line: 222, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!6, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !486, line: 197, size: 1088, elements: !3282)
!3282 = !{!3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3281, file: !486, line: 199, baseType: !3205, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3281, file: !486, line: 200, baseType: !214, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3281, file: !486, line: 201, baseType: !583, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3281, file: !486, line: 202, baseType: !53, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3281, file: !486, line: 205, baseType: !174, size: 192, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3281, file: !486, line: 206, baseType: !174, size: 192, offset: 448)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3281, file: !486, line: 207, baseType: !6, size: 32, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3281, file: !486, line: 208, baseType: !205, size: 128, offset: 704)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3281, file: !486, line: 209, baseType: !347, size: 64, offset: 832)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3281, file: !486, line: 211, baseType: !442, size: 64, offset: 896)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3281, file: !486, line: 212, baseType: !352, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3281, file: !486, line: 213, baseType: !352, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3281, file: !486, line: 214, baseType: !880, size: 64, offset: 1024)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3274, file: !486, line: 223, baseType: !3297, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{null, !3280}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3274, file: !486, line: 236, baseType: !3301, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!6, !583, !53}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3274, file: !486, line: 238, baseType: !3305, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!53, !583, !2595}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3274, file: !486, line: 239, baseType: !3309, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!53, !583, !53, !2595}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3274, file: !486, line: 240, baseType: !3313, size: 64, offset: 320)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{null, !583, !53}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3274, file: !486, line: 242, baseType: !3317, size: 64, offset: 384)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!439, !3280, !347, !442, !393}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3274, file: !486, line: 252, baseType: !442, size: 64, offset: 448)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3274, file: !486, line: 259, baseType: !352, size: 8, offset: 512)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3274, file: !486, line: 260, baseType: !3317, size: 64, offset: 576)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3274, file: !486, line: 263, baseType: !3324, size: 64, offset: 640)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!2624, !3280, !2626}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3274, file: !486, line: 266, baseType: !3328, size: 64, offset: 704)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!6, !3280, !852}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3269, file: !486, line: 109, baseType: !3332, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !486, line: 31, flags: DIFlagFwdDecl)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3269, file: !486, line: 110, baseType: !393, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3269, file: !486, line: 111, baseType: !3205, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3206, file: !486, line: 148, baseType: !53, size: 64, offset: 768)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3206, file: !486, line: 154, baseType: !281, size: 64, offset: 832)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3206, file: !486, line: 156, baseType: !24, size: 16, offset: 896)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3206, file: !486, line: 157, baseType: !292, size: 16, offset: 912)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3206, file: !486, line: 158, baseType: !3341, size: 64, offset: 960)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !486, line: 32, flags: DIFlagFwdDecl)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3049, file: !3050, line: 71, baseType: !3344, size: 32, offset: 448)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3345, line: 19, size: 32, elements: !3346)
!3345 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3346 = !{!3347}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3344, file: !3345, line: 20, baseType: !1013, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3049, file: !3050, line: 75, baseType: !49, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3049, file: !3050, line: 76, baseType: !49, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3049, file: !3050, line: 77, baseType: !49, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3049, file: !3050, line: 78, baseType: !49, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3049, file: !3050, line: 79, baseType: !49, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3045, file: !3046, line: 463, baseType: !3354, size: 64, offset: 512)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3045, file: !3046, line: 465, baseType: !3356, size: 64, offset: 576)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !3046, line: 36, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3045, file: !3046, line: 467, baseType: !12, size: 64, offset: 640)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3045, file: !3046, line: 468, baseType: !3360, size: 64, offset: 704)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3362)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !3046, line: 87, size: 384, elements: !3363)
!3363 = !{!3364, !3365, !3366, !3370, !3375, !3379}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3362, file: !3046, line: 88, baseType: !12, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3362, file: !3046, line: 89, baseType: !3126, size: 64, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3362, file: !3046, line: 90, baseType: !3367, size: 64, offset: 128)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!6, !3354, !3083}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3362, file: !3046, line: 91, baseType: !3371, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!347, !3354, !3374, !3202, !3203}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3362, file: !3046, line: 93, baseType: !3376, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !3354}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3362, file: !3046, line: 95, baseType: !3380, size: 64, offset: 320)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3382)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3383, line: 278, size: 1472, elements: !3384)
!3383 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!3384 = !{!3385, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3382, file: !3383, line: 279, baseType: !3386, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!6, !3354}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3382, file: !3383, line: 280, baseType: !3376, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3382, file: !3383, line: 281, baseType: !3386, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3382, file: !3383, line: 282, baseType: !3386, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3382, file: !3383, line: 283, baseType: !3386, size: 64, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3382, file: !3383, line: 284, baseType: !3386, size: 64, offset: 320)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3382, file: !3383, line: 285, baseType: !3386, size: 64, offset: 384)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3382, file: !3383, line: 286, baseType: !3386, size: 64, offset: 448)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3382, file: !3383, line: 287, baseType: !3386, size: 64, offset: 512)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3382, file: !3383, line: 288, baseType: !3386, size: 64, offset: 576)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3382, file: !3383, line: 289, baseType: !3386, size: 64, offset: 640)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3382, file: !3383, line: 290, baseType: !3386, size: 64, offset: 704)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3382, file: !3383, line: 291, baseType: !3386, size: 64, offset: 768)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3382, file: !3383, line: 292, baseType: !3386, size: 64, offset: 832)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3382, file: !3383, line: 293, baseType: !3386, size: 64, offset: 896)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3382, file: !3383, line: 294, baseType: !3386, size: 64, offset: 960)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3382, file: !3383, line: 295, baseType: !3386, size: 64, offset: 1024)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3382, file: !3383, line: 296, baseType: !3386, size: 64, offset: 1088)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3382, file: !3383, line: 297, baseType: !3386, size: 64, offset: 1152)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3382, file: !3383, line: 298, baseType: !3386, size: 64, offset: 1216)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3382, file: !3383, line: 299, baseType: !3386, size: 64, offset: 1280)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3382, file: !3383, line: 300, baseType: !3386, size: 64, offset: 1344)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3382, file: !3383, line: 301, baseType: !3386, size: 64, offset: 1408)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3045, file: !3046, line: 470, baseType: !3412, size: 64, offset: 768)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3414, line: 82, size: 1408, elements: !3415)
!3414 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3501, !3504, !3505}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3413, file: !3414, line: 83, baseType: !12, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3413, file: !3414, line: 84, baseType: !12, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3413, file: !3414, line: 85, baseType: !3354, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3413, file: !3414, line: 86, baseType: !3126, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3413, file: !3414, line: 87, baseType: !3126, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3413, file: !3414, line: 88, baseType: !3126, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3413, file: !3414, line: 90, baseType: !3423, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!6, !3354, !3426}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3428, line: 95, size: 1152, elements: !3429)
!3428 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3441, !3453, !3465, !3466, !3467, !3468, !3469, !3477, !3478, !3479, !3480, !3481, !3482}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3427, file: !3428, line: 96, baseType: !12, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3427, file: !3428, line: 97, baseType: !3412, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3427, file: !3428, line: 99, baseType: !500, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3427, file: !3428, line: 100, baseType: !12, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3427, file: !3428, line: 102, baseType: !352, size: 8, offset: 256)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3427, file: !3428, line: 103, baseType: !3436, size: 32, offset: 288)
!3436 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3428, line: 44, baseType: !49, size: 32, elements: !3437)
!3437 = !{!3438, !3439, !3440}
!3438 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!3439 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!3440 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3427, file: !3428, line: 105, baseType: !3442, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3444)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3005, line: 262, size: 1600, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3452}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3444, file: !3005, line: 263, baseType: !2419, size: 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3444, file: !3005, line: 264, baseType: !2419, size: 256, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3444, file: !3005, line: 265, baseType: !3449, size: 1024, offset: 512)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1024, elements: !3450)
!3450 = !{!3451}
!3451 = !DISubrange(count: 128)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3444, file: !3005, line: 266, baseType: !3185, size: 64, offset: 1536)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3427, file: !3428, line: 106, baseType: !3454, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3456)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3005, line: 210, size: 256, elements: !3457)
!3457 = !{!3458, !3462, !3463, !3464}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3456, file: !3005, line: 211, baseType: !3459, size: 72)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 72, elements: !3460)
!3460 = !{!3461}
!3461 = !DISubrange(count: 9)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3456, file: !3005, line: 212, baseType: !3008, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3456, file: !3005, line: 213, baseType: !68, size: 32, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3456, file: !3005, line: 214, baseType: !68, size: 32, offset: 224)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3427, file: !3428, line: 108, baseType: !3386, size: 64, offset: 448)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3427, file: !3428, line: 109, baseType: !3376, size: 64, offset: 512)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3427, file: !3428, line: 110, baseType: !3386, size: 64, offset: 576)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3427, file: !3428, line: 111, baseType: !3376, size: 64, offset: 640)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3427, file: !3428, line: 112, baseType: !3470, size: 64, offset: 704)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!6, !3354, !3473}
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3383, line: 52, baseType: !3474)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3383, line: 50, size: 32, elements: !3475)
!3475 = !{!3476}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3474, file: !3383, line: 51, baseType: !6, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3427, file: !3428, line: 113, baseType: !3386, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3427, file: !3428, line: 114, baseType: !3126, size: 64, offset: 832)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3427, file: !3428, line: 115, baseType: !3126, size: 64, offset: 896)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3427, file: !3428, line: 117, baseType: !3380, size: 64, offset: 960)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3427, file: !3428, line: 118, baseType: !3376, size: 64, offset: 1024)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3427, file: !3428, line: 120, baseType: !3483, size: 64, offset: 1088)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3428, line: 120, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3413, file: !3414, line: 91, baseType: !3367, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3413, file: !3414, line: 92, baseType: !3386, size: 64, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3413, file: !3414, line: 93, baseType: !3376, size: 64, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3413, file: !3414, line: 94, baseType: !3386, size: 64, offset: 640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3413, file: !3414, line: 95, baseType: !3376, size: 64, offset: 704)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3413, file: !3414, line: 97, baseType: !3386, size: 64, offset: 768)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3413, file: !3414, line: 98, baseType: !3386, size: 64, offset: 832)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3413, file: !3414, line: 100, baseType: !3470, size: 64, offset: 896)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3413, file: !3414, line: 101, baseType: !3386, size: 64, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3413, file: !3414, line: 103, baseType: !3386, size: 64, offset: 1024)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3413, file: !3414, line: 105, baseType: !3386, size: 64, offset: 1088)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3413, file: !3414, line: 107, baseType: !3380, size: 64, offset: 1152)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3413, file: !3414, line: 109, baseType: !3498, size: 64, offset: 1216)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3500)
!3500 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3414, line: 109, flags: DIFlagFwdDecl)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3413, file: !3414, line: 111, baseType: !3502, size: 64, offset: 1280)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3414, line: 111, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3413, file: !3414, line: 112, baseType: !515, offset: 1344)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3413, file: !3414, line: 114, baseType: !352, size: 8, offset: 1344)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3045, file: !3046, line: 471, baseType: !3426, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3045, file: !3046, line: 473, baseType: !53, size: 64, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3045, file: !3046, line: 475, baseType: !53, size: 64, offset: 960)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3045, file: !3046, line: 480, baseType: !174, size: 192, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3045, file: !3046, line: 484, baseType: !3511, size: 576, offset: 1216)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !3046, line: 361, size: 576, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3516, !3517, !3518}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3511, file: !3046, line: 362, baseType: !205, size: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3511, file: !3046, line: 363, baseType: !205, size: 128, offset: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3511, file: !3046, line: 364, baseType: !205, size: 128, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3511, file: !3046, line: 365, baseType: !205, size: 128, offset: 384)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3511, file: !3046, line: 366, baseType: !352, size: 8, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3511, file: !3046, line: 367, baseType: !3519, size: 32, offset: 544)
!3519 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !3046, line: 343, baseType: !49, size: 32, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524}
!3521 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!3522 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!3523 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!3524 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3045, file: !3046, line: 485, baseType: !3526, size: 2304, offset: 1792)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3383, line: 565, size: 2304, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3602, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3625, !3629}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3526, file: !3383, line: 566, baseType: !3473, size: 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3526, file: !3383, line: 567, baseType: !49, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3526, file: !3383, line: 568, baseType: !49, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3526, file: !3383, line: 569, baseType: !352, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3526, file: !3383, line: 570, baseType: !352, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3526, file: !3383, line: 571, baseType: !352, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3526, file: !3383, line: 572, baseType: !352, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3526, file: !3383, line: 573, baseType: !352, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3526, file: !3383, line: 574, baseType: !352, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3526, file: !3383, line: 575, baseType: !352, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3526, file: !3383, line: 576, baseType: !352, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3526, file: !3383, line: 577, baseType: !278, size: 32, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3526, file: !3383, line: 578, baseType: !189, offset: 96)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3526, file: !3383, line: 580, baseType: !205, size: 128, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3526, file: !3383, line: 581, baseType: !1293, size: 192, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3526, file: !3383, line: 582, baseType: !3544, size: 64, offset: 448)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3546, line: 43, size: 1472, elements: !3547)
!3546 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3545, file: !3546, line: 44, baseType: !12, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3545, file: !3546, line: 45, baseType: !6, size: 32, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3545, file: !3546, line: 46, baseType: !205, size: 128, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3545, file: !3546, line: 47, baseType: !189, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3545, file: !3546, line: 48, baseType: !3553, size: 64, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3383, line: 533, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3545, file: !3546, line: 49, baseType: !2916, size: 320, offset: 320)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3545, file: !3546, line: 50, baseType: !30, size: 64, offset: 640)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3545, file: !3546, line: 51, baseType: !1084, size: 64, offset: 704)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3545, file: !3546, line: 52, baseType: !1084, size: 64, offset: 768)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3545, file: !3546, line: 53, baseType: !1084, size: 64, offset: 832)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3545, file: !3546, line: 54, baseType: !1084, size: 64, offset: 896)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3545, file: !3546, line: 55, baseType: !1084, size: 64, offset: 960)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3545, file: !3546, line: 56, baseType: !30, size: 64, offset: 1024)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3545, file: !3546, line: 57, baseType: !30, size: 64, offset: 1088)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3545, file: !3546, line: 58, baseType: !30, size: 64, offset: 1152)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3545, file: !3546, line: 59, baseType: !30, size: 64, offset: 1216)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3545, file: !3546, line: 60, baseType: !30, size: 64, offset: 1280)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3545, file: !3546, line: 61, baseType: !3354, size: 64, offset: 1344)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3545, file: !3546, line: 62, baseType: !352, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3545, file: !3546, line: 63, baseType: !352, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3526, file: !3383, line: 583, baseType: !352, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3526, file: !3383, line: 584, baseType: !352, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3526, file: !3383, line: 585, baseType: !352, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3526, file: !3383, line: 586, baseType: !49, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3526, file: !3383, line: 587, baseType: !49, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3526, file: !3383, line: 592, baseType: !1075, size: 512, offset: 576)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3526, file: !3383, line: 593, baseType: !281, size: 64, offset: 1088)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3526, file: !3383, line: 594, baseType: !1749, size: 256, offset: 1152)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3526, file: !3383, line: 595, baseType: !1272, size: 128, offset: 1408)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3526, file: !3383, line: 596, baseType: !3553, size: 64, offset: 1536)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3526, file: !3383, line: 597, baseType: !620, size: 32, offset: 1600)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3526, file: !3383, line: 598, baseType: !620, size: 32, offset: 1632)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3526, file: !3383, line: 599, baseType: !49, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3526, file: !3383, line: 600, baseType: !49, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3526, file: !3383, line: 601, baseType: !49, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3526, file: !3383, line: 602, baseType: !49, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3526, file: !3383, line: 603, baseType: !49, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3526, file: !3383, line: 604, baseType: !352, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3526, file: !3383, line: 605, baseType: !49, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3526, file: !3383, line: 606, baseType: !49, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3526, file: !3383, line: 607, baseType: !49, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3526, file: !3383, line: 608, baseType: !49, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3526, file: !3383, line: 609, baseType: !49, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3526, file: !3383, line: 610, baseType: !49, size: 32, offset: 1696)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3526, file: !3383, line: 611, baseType: !3595, size: 32, offset: 1728)
!3595 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3383, line: 524, baseType: !49, size: 32, elements: !3596)
!3596 = !{!3597, !3598, !3599, !3600, !3601}
!3597 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!3598 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!3599 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!3600 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!3601 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3526, file: !3383, line: 612, baseType: !3603, size: 32, offset: 1760)
!3603 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3383, line: 502, baseType: !49, size: 32, elements: !3604)
!3604 = !{!3605, !3606, !3607, !3608}
!3605 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!3606 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!3607 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!3608 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3526, file: !3383, line: 613, baseType: !6, size: 32, offset: 1792)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3526, file: !3383, line: 614, baseType: !6, size: 32, offset: 1824)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3526, file: !3383, line: 615, baseType: !281, size: 64, offset: 1856)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3526, file: !3383, line: 616, baseType: !281, size: 64, offset: 1920)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3526, file: !3383, line: 617, baseType: !281, size: 64, offset: 1984)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3526, file: !3383, line: 618, baseType: !281, size: 64, offset: 2048)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3526, file: !3383, line: 620, baseType: !3616, size: 64, offset: 2112)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3383, line: 536, size: 256, elements: !3618)
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3617, file: !3383, line: 537, baseType: !189)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3617, file: !3383, line: 538, baseType: !49, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3617, file: !3383, line: 540, baseType: !205, size: 128, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3617, file: !3383, line: 543, baseType: !3623, size: 64, offset: 192)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !3383, line: 534, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3526, file: !3383, line: 621, baseType: !3626, size: 64, offset: 2176)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{null, !3354, !1234}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3526, file: !3383, line: 622, baseType: !3630, size: 64, offset: 2240)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3383, line: 622, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3045, file: !3046, line: 486, baseType: !3633, size: 64, offset: 4096)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3383, line: 642, size: 1792, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3642, !3643, !3644}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3634, file: !3383, line: 643, baseType: !3382, size: 1472)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3634, file: !3383, line: 644, baseType: !3386, size: 64, offset: 1472)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3634, file: !3383, line: 645, baseType: !3639, size: 64, offset: 1536)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !3354, !352}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3634, file: !3383, line: 646, baseType: !3386, size: 64, offset: 1600)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3634, file: !3383, line: 647, baseType: !3376, size: 64, offset: 1664)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3634, file: !3383, line: 648, baseType: !3376, size: 64, offset: 1728)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3045, file: !3046, line: 493, baseType: !3646, size: 64, offset: 4160)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3046, line: 493, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3045, file: !3046, line: 499, baseType: !205, size: 128, offset: 4224)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3045, file: !3046, line: 502, baseType: !3650, size: 64, offset: 4352)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3652)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !3046, line: 502, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3045, file: !3046, line: 504, baseType: !3654, size: 64, offset: 4416)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3045, file: !3046, line: 505, baseType: !281, size: 64, offset: 4480)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3045, file: !3046, line: 510, baseType: !281, size: 64, offset: 4544)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3045, file: !3046, line: 511, baseType: !3658, size: 64, offset: 4608)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3660)
!3660 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !3046, line: 511, flags: DIFlagFwdDecl)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3045, file: !3046, line: 513, baseType: !3662, size: 64, offset: 4672)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !3046, line: 288, size: 128, elements: !3664)
!3664 = !{!3665, !3666}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3663, file: !3046, line: 293, baseType: !49, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3663, file: !3046, line: 294, baseType: !30, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3045, file: !3046, line: 515, baseType: !205, size: 128, offset: 4736)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3045, file: !3046, line: 526, baseType: !3669, offset: 4864)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3670, line: 5, elements: !203)
!3670 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3045, file: !3046, line: 528, baseType: !3672, size: 64, offset: 4864)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3674, line: 14, flags: DIFlagFwdDecl)
!3674 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3045, file: !3046, line: 529, baseType: !3676, size: 64, offset: 4928)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3414, line: 22, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3045, file: !3046, line: 534, baseType: !375, size: 32, offset: 4992)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3045, file: !3046, line: 535, baseType: !278, size: 32, offset: 5024)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3045, file: !3046, line: 537, baseType: !189, offset: 5056)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3045, file: !3046, line: 538, baseType: !205, size: 128, offset: 5056)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3045, file: !3046, line: 540, baseType: !3683, size: 64, offset: 5184)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3685, line: 54, size: 960, elements: !3686)
!3685 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3686 = !{!3687, !3688, !3689, !3690, !3691, !3692, !3693, !3697, !3701, !3702, !3703, !3704, !3708, !3712, !3713}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3684, file: !3685, line: 55, baseType: !12, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3684, file: !3685, line: 56, baseType: !500, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3684, file: !3685, line: 58, baseType: !3126, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3684, file: !3685, line: 59, baseType: !3126, size: 64, offset: 192)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3684, file: !3685, line: 60, baseType: !3055, size: 64, offset: 256)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3684, file: !3685, line: 62, baseType: !3367, size: 64, offset: 320)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3684, file: !3685, line: 63, baseType: !3694, size: 64, offset: 384)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!347, !3354, !3374}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3684, file: !3685, line: 65, baseType: !3698, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{null, !3683}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3684, file: !3685, line: 66, baseType: !3376, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3684, file: !3685, line: 68, baseType: !3386, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3684, file: !3685, line: 70, baseType: !3162, size: 64, offset: 640)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3684, file: !3685, line: 71, baseType: !3705, size: 64, offset: 704)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!3185, !3354}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3684, file: !3685, line: 73, baseType: !3709, size: 64, offset: 768)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !3354, !3202, !3203}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3684, file: !3685, line: 75, baseType: !3380, size: 64, offset: 832)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3684, file: !3685, line: 77, baseType: !3502, size: 64, offset: 896)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3045, file: !3046, line: 541, baseType: !3126, size: 64, offset: 5248)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3045, file: !3046, line: 543, baseType: !3376, size: 64, offset: 5312)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3045, file: !3046, line: 544, baseType: !3717, size: 64, offset: 5376)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !3046, line: 45, flags: DIFlagFwdDecl)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3045, file: !3046, line: 545, baseType: !3720, size: 64, offset: 5440)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !3046, line: 47, flags: DIFlagFwdDecl)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3045, file: !3046, line: 547, baseType: !352, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3045, file: !3046, line: 548, baseType: !352, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3045, file: !3046, line: 549, baseType: !352, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3045, file: !3046, line: 550, baseType: !352, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !8, file: !9, line: 194, baseType: !205, size: 128, offset: 9792)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !8, file: !9, line: 195, baseType: !205, size: 128, offset: 9920)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !8, file: !9, line: 197, baseType: !49, size: 32, offset: 10048)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !8, file: !9, line: 198, baseType: !49, size: 32, offset: 10080)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !8, file: !9, line: 199, baseType: !3731, size: 64, offset: 10112)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !8, file: !9, line: 201, baseType: !352, size: 8, offset: 10176)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !8, file: !9, line: 203, baseType: !3734, size: 192, offset: 10240)
!3734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1084, size: 192, elements: !521)
!3735 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3736, retainedTypes: !3749, globals: !3752, splitDebugInlining: false, nameTableKind: None)
!3736 = !{!739, !1091, !1211, !2179, !2865, !2884, !3168, !3436, !3519, !3595, !3603, !3737, !3742}
!3737 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3738, line: 10, baseType: !49, size: 32, elements: !3739)
!3738 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!3739 = !{!3740, !3741}
!3740 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!3741 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!3742 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !3743, line: 305, baseType: !49, size: 32, elements: !3744)
!3743 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!3744 = !{!3745, !3746, !3747, !3748}
!3745 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!3746 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!3747 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!3748 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!3749 = !{!616, !3750, !53, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!3752 = !{!0}
!3753 = !{!"rsp"}
!3754 = !{i32 7, !"Dwarf Version", i32 4}
!3755 = !{i32 2, !"Debug Info Version", i32 3}
!3756 = !{i32 1, !"wchar_size", i32 2}
!3757 = !{i32 1, !"Code Model", i32 2}
!3758 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3759 = distinct !DISubprogram(name: "input_ff_upload", scope: !3, file: !3, line: 92, type: !3760, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!6, !7, !87, !214}
!3762 = !DILocalVariable(name: "lock", arg: 1, scope: !3763, file: !3764, line: 402, type: !3767)
!3763 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !3764, file: !3764, line: 402, type: !3765, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!3764 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3765 = !DISubroutineType(types: !3766)
!3766 = !{null, !3767}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!3768 = !DILocation(line: 402, column: 57, scope: !3763, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 160, column: 2, scope: !3759)
!3770 = !DILocalVariable(name: "lock", arg: 1, scope: !3771, file: !3764, line: 377, type: !3767)
!3771 = distinct !DISubprogram(name: "spin_lock_irq", scope: !3764, file: !3764, line: 377, type: !3765, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!3772 = !DILocation(line: 377, column: 55, scope: !3771, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 157, column: 2, scope: !3759)
!3774 = !DILocalVariable(name: "dev", arg: 1, scope: !3759, file: !3, line: 92, type: !7)
!3775 = !DILocation(line: 92, column: 39, scope: !3759)
!3776 = !DILocalVariable(name: "effect", arg: 2, scope: !3759, file: !3, line: 92, type: !87)
!3777 = !DILocation(line: 92, column: 62, scope: !3759)
!3778 = !DILocalVariable(name: "file", arg: 3, scope: !3759, file: !3, line: 93, type: !214)
!3779 = !DILocation(line: 93, column: 20, scope: !3759)
!3780 = !DILocalVariable(name: "ff", scope: !3759, file: !3, line: 95, type: !80)
!3781 = !DILocation(line: 95, column: 20, scope: !3759)
!3782 = !DILocation(line: 95, column: 25, scope: !3759)
!3783 = !DILocation(line: 95, column: 30, scope: !3759)
!3784 = !DILocalVariable(name: "old", scope: !3759, file: !3, line: 96, type: !87)
!3785 = !DILocation(line: 96, column: 20, scope: !3759)
!3786 = !DILocalVariable(name: "ret", scope: !3759, file: !3, line: 97, type: !6)
!3787 = !DILocation(line: 97, column: 6, scope: !3759)
!3788 = !DILocalVariable(name: "id", scope: !3759, file: !3, line: 98, type: !6)
!3789 = !DILocation(line: 98, column: 6, scope: !3759)
!3790 = !DILocation(line: 100, column: 23, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 100, column: 6)
!3792 = !DILocation(line: 100, column: 28, scope: !3791)
!3793 = !DILocation(line: 100, column: 7, scope: !3791)
!3794 = !DILocation(line: 100, column: 6, scope: !3759)
!3795 = !DILocation(line: 101, column: 3, scope: !3791)
!3796 = !DILocation(line: 103, column: 6, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 103, column: 6)
!3798 = !DILocation(line: 103, column: 14, scope: !3797)
!3799 = !DILocation(line: 103, column: 19, scope: !3797)
!3800 = !DILocation(line: 103, column: 35, scope: !3797)
!3801 = !DILocation(line: 103, column: 38, scope: !3797)
!3802 = !DILocation(line: 103, column: 46, scope: !3797)
!3803 = !DILocation(line: 103, column: 51, scope: !3797)
!3804 = !DILocation(line: 103, column: 67, scope: !3797)
!3805 = !DILocation(line: 104, column: 16, scope: !3797)
!3806 = !DILocation(line: 104, column: 24, scope: !3797)
!3807 = !DILocation(line: 104, column: 30, scope: !3797)
!3808 = !DILocation(line: 104, column: 35, scope: !3797)
!3809 = !DILocation(line: 104, column: 7, scope: !3797)
!3810 = !DILocation(line: 103, column: 6, scope: !3759)
!3811 = !DILocation(line: 106, column: 3, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 104, column: 43)
!3813 = !DILocation(line: 109, column: 6, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 109, column: 6)
!3815 = !DILocation(line: 109, column: 14, scope: !3814)
!3816 = !DILocation(line: 109, column: 19, scope: !3814)
!3817 = !DILocation(line: 109, column: 34, scope: !3814)
!3818 = !DILocation(line: 110, column: 7, scope: !3814)
!3819 = !DILocation(line: 110, column: 15, scope: !3814)
!3820 = !DILocation(line: 110, column: 17, scope: !3814)
!3821 = !DILocation(line: 110, column: 26, scope: !3814)
!3822 = !DILocation(line: 110, column: 35, scope: !3814)
!3823 = !DILocation(line: 110, column: 53, scope: !3814)
!3824 = !DILocation(line: 111, column: 7, scope: !3814)
!3825 = !DILocation(line: 111, column: 15, scope: !3814)
!3826 = !DILocation(line: 111, column: 17, scope: !3814)
!3827 = !DILocation(line: 111, column: 26, scope: !3814)
!3828 = !DILocation(line: 111, column: 35, scope: !3814)
!3829 = !DILocation(line: 111, column: 53, scope: !3814)
!3830 = !DILocation(line: 112, column: 17, scope: !3814)
!3831 = !DILocation(line: 112, column: 25, scope: !3814)
!3832 = !DILocation(line: 112, column: 27, scope: !3814)
!3833 = !DILocation(line: 112, column: 36, scope: !3814)
!3834 = !DILocation(line: 112, column: 46, scope: !3814)
!3835 = !DILocation(line: 112, column: 51, scope: !3814)
!3836 = !DILocation(line: 112, column: 8, scope: !3814)
!3837 = !DILocation(line: 109, column: 6, scope: !3759)
!3838 = !DILocation(line: 114, column: 3, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 112, column: 60)
!3840 = !DILocation(line: 117, column: 16, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 117, column: 6)
!3842 = !DILocation(line: 117, column: 24, scope: !3841)
!3843 = !DILocation(line: 117, column: 30, scope: !3841)
!3844 = !DILocation(line: 117, column: 34, scope: !3841)
!3845 = !DILocation(line: 117, column: 7, scope: !3841)
!3846 = !DILocation(line: 117, column: 6, scope: !3759)
!3847 = !DILocation(line: 118, column: 23, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 117, column: 42)
!3849 = !DILocation(line: 118, column: 27, scope: !3848)
!3850 = !DILocation(line: 118, column: 9, scope: !3848)
!3851 = !DILocation(line: 118, column: 7, scope: !3848)
!3852 = !DILocation(line: 119, column: 7, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 119, column: 7)
!3854 = !DILocation(line: 119, column: 7, scope: !3848)
!3855 = !DILocation(line: 120, column: 11, scope: !3853)
!3856 = !DILocation(line: 120, column: 4, scope: !3853)
!3857 = !DILocation(line: 121, column: 2, scope: !3848)
!3858 = !DILocation(line: 123, column: 14, scope: !3759)
!3859 = !DILocation(line: 123, column: 18, scope: !3759)
!3860 = !DILocation(line: 123, column: 2, scope: !3759)
!3861 = !DILocation(line: 125, column: 6, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 125, column: 6)
!3863 = !DILocation(line: 125, column: 14, scope: !3862)
!3864 = !DILocation(line: 125, column: 17, scope: !3862)
!3865 = !DILocation(line: 125, column: 6, scope: !3759)
!3866 = !DILocation(line: 126, column: 11, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 126, column: 3)
!3868 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 125, column: 24)
!3869 = !DILocation(line: 126, column: 8, scope: !3867)
!3870 = !DILocation(line: 126, column: 16, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 126, column: 3)
!3872 = !DILocation(line: 126, column: 21, scope: !3871)
!3873 = !DILocation(line: 126, column: 25, scope: !3871)
!3874 = !DILocation(line: 126, column: 19, scope: !3871)
!3875 = !DILocation(line: 126, column: 3, scope: !3867)
!3876 = !DILocation(line: 127, column: 9, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 127, column: 8)
!3878 = !DILocation(line: 127, column: 13, scope: !3877)
!3879 = !DILocation(line: 127, column: 27, scope: !3877)
!3880 = !DILocation(line: 127, column: 8, scope: !3871)
!3881 = !DILocation(line: 128, column: 5, scope: !3877)
!3882 = !DILocation(line: 127, column: 29, scope: !3877)
!3883 = !DILocation(line: 126, column: 40, scope: !3871)
!3884 = !DILocation(line: 126, column: 3, scope: !3871)
!3885 = distinct !{!3885, !3875, !3886}
!3886 = !DILocation(line: 128, column: 5, scope: !3867)
!3887 = !DILocation(line: 130, column: 7, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3868, file: !3, line: 130, column: 7)
!3889 = !DILocation(line: 130, column: 13, scope: !3888)
!3890 = !DILocation(line: 130, column: 17, scope: !3888)
!3891 = !DILocation(line: 130, column: 10, scope: !3888)
!3892 = !DILocation(line: 130, column: 7, scope: !3868)
!3893 = !DILocation(line: 131, column: 8, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 130, column: 30)
!3895 = !DILocation(line: 132, column: 4, scope: !3894)
!3896 = !DILocation(line: 135, column: 16, scope: !3868)
!3897 = !DILocation(line: 135, column: 3, scope: !3868)
!3898 = !DILocation(line: 135, column: 11, scope: !3868)
!3899 = !DILocation(line: 135, column: 14, scope: !3868)
!3900 = !DILocation(line: 136, column: 7, scope: !3868)
!3901 = !DILocation(line: 138, column: 2, scope: !3868)
!3902 = !DILocation(line: 139, column: 8, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3862, file: !3, line: 138, column: 9)
!3904 = !DILocation(line: 139, column: 16, scope: !3903)
!3905 = !DILocation(line: 139, column: 6, scope: !3903)
!3906 = !DILocation(line: 141, column: 29, scope: !3903)
!3907 = !DILocation(line: 141, column: 33, scope: !3903)
!3908 = !DILocation(line: 141, column: 37, scope: !3903)
!3909 = !DILocation(line: 141, column: 9, scope: !3903)
!3910 = !DILocation(line: 141, column: 7, scope: !3903)
!3911 = !DILocation(line: 142, column: 7, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 142, column: 7)
!3913 = !DILocation(line: 142, column: 7, scope: !3903)
!3914 = !DILocation(line: 143, column: 4, scope: !3912)
!3915 = !DILocation(line: 145, column: 10, scope: !3903)
!3916 = !DILocation(line: 145, column: 14, scope: !3903)
!3917 = !DILocation(line: 145, column: 22, scope: !3903)
!3918 = !DILocation(line: 145, column: 7, scope: !3903)
!3919 = !DILocation(line: 147, column: 33, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 147, column: 7)
!3921 = !DILocation(line: 147, column: 41, scope: !3920)
!3922 = !DILocation(line: 147, column: 8, scope: !3920)
!3923 = !DILocation(line: 147, column: 7, scope: !3903)
!3924 = !DILocation(line: 148, column: 8, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3920, file: !3, line: 147, column: 47)
!3926 = !DILocation(line: 149, column: 4, scope: !3925)
!3927 = !DILocation(line: 153, column: 8, scope: !3759)
!3928 = !DILocation(line: 153, column: 12, scope: !3759)
!3929 = !DILocation(line: 153, column: 19, scope: !3759)
!3930 = !DILocation(line: 153, column: 24, scope: !3759)
!3931 = !DILocation(line: 153, column: 32, scope: !3759)
!3932 = !DILocation(line: 153, column: 6, scope: !3759)
!3933 = !DILocation(line: 154, column: 6, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 154, column: 6)
!3935 = !DILocation(line: 154, column: 6, scope: !3759)
!3936 = !DILocation(line: 155, column: 3, scope: !3934)
!3937 = !DILocation(line: 157, column: 17, scope: !3759)
!3938 = !DILocation(line: 157, column: 22, scope: !3759)
!3939 = !DILocation(line: 379, column: 2, scope: !3940, inlinedAt: !3773)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !3764, line: 379, column: 2)
!3941 = distinct !DILexicalBlock(scope: !3771, file: !3764, line: 379, column: 2)
!3942 = !DILocation(line: 379, column: 2, scope: !3943, inlinedAt: !3773)
!3943 = distinct !DILexicalBlock(scope: !3941, file: !3764, line: 379, column: 2)
!3944 = !{i32 -2145200846}
!3945 = !DILocation(line: 379, column: 2, scope: !3946, inlinedAt: !3773)
!3946 = distinct !DILexicalBlock(scope: !3943, file: !3764, line: 379, column: 2)
!3947 = !DILocation(line: 158, column: 2, scope: !3759)
!3948 = !DILocation(line: 158, column: 6, scope: !3759)
!3949 = !DILocation(line: 158, column: 14, scope: !3759)
!3950 = !DILocation(line: 158, column: 21, scope: !3759)
!3951 = !DILocation(line: 158, column: 20, scope: !3759)
!3952 = !DILocation(line: 159, column: 26, scope: !3759)
!3953 = !DILocation(line: 159, column: 2, scope: !3759)
!3954 = !DILocation(line: 159, column: 6, scope: !3759)
!3955 = !DILocation(line: 159, column: 20, scope: !3759)
!3956 = !DILocation(line: 159, column: 24, scope: !3759)
!3957 = !DILocation(line: 160, column: 19, scope: !3759)
!3958 = !DILocation(line: 160, column: 24, scope: !3759)
!3959 = !DILocation(line: 404, column: 2, scope: !3960, inlinedAt: !3769)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !3764, line: 404, column: 2)
!3961 = distinct !DILexicalBlock(scope: !3763, file: !3764, line: 404, column: 2)
!3962 = !DILocation(line: 404, column: 2, scope: !3963, inlinedAt: !3769)
!3963 = distinct !DILexicalBlock(scope: !3961, file: !3764, line: 404, column: 2)
!3964 = !{i32 -2145199098}
!3965 = !DILocation(line: 404, column: 2, scope: !3966, inlinedAt: !3769)
!3966 = distinct !DILexicalBlock(scope: !3963, file: !3764, line: 404, column: 2)
!3967 = !DILocation(line: 160, column: 2, scope: !3759)
!3968 = !DILabel(scope: !3759, name: "out", file: !3, line: 162)
!3969 = !DILocation(line: 162, column: 2, scope: !3759)
!3970 = !DILocation(line: 163, column: 16, scope: !3759)
!3971 = !DILocation(line: 163, column: 20, scope: !3759)
!3972 = !DILocation(line: 163, column: 2, scope: !3759)
!3973 = !DILocation(line: 164, column: 9, scope: !3759)
!3974 = !DILocation(line: 164, column: 2, scope: !3759)
!3975 = !DILocation(line: 165, column: 1, scope: !3759)
!3976 = distinct !DISubprogram(name: "test_bit", scope: !3977, file: !3977, line: 132, type: !3978, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!3977 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!352, !402, !3980}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3982)
!3982 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!3983 = !DILocalVariable(name: "nr", arg: 1, scope: !3984, file: !3985, line: 210, type: !402)
!3984 = distinct !DISubprogram(name: "variable_test_bit", scope: !3985, file: !3985, line: 210, type: !3978, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!3985 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3986 = !DILocation(line: 210, column: 52, scope: !3984, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 135, column: 9, scope: !3976)
!3988 = !DILocalVariable(name: "addr", arg: 2, scope: !3984, file: !3985, line: 210, type: !3980)
!3989 = !DILocation(line: 210, column: 86, scope: !3984, inlinedAt: !3987)
!3990 = !DILocalVariable(name: "oldbit", scope: !3984, file: !3985, line: 212, type: !352)
!3991 = !DILocation(line: 212, column: 7, scope: !3984, inlinedAt: !3987)
!3992 = !DILocalVariable(name: "nr", arg: 1, scope: !3993, file: !3985, line: 204, type: !402)
!3993 = distinct !DISubprogram(name: "constant_test_bit", scope: !3985, file: !3985, line: 204, type: !3978, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!3994 = !DILocation(line: 204, column: 52, scope: !3993, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 135, column: 9, scope: !3976)
!3996 = !DILocalVariable(name: "addr", arg: 2, scope: !3993, file: !3985, line: 204, type: !3980)
!3997 = !DILocation(line: 204, column: 86, scope: !3993, inlinedAt: !3995)
!3998 = !DILocalVariable(name: "v", arg: 1, scope: !3999, file: !4000, line: 69, type: !4003)
!3999 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4000, file: !4000, line: 69, type: !4001, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4000 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4001 = !DISubroutineType(types: !4002)
!4002 = !{null, !4003, !442}
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4005)
!4005 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4006 = !DILocation(line: 69, column: 73, scope: !3999, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 134, column: 2, scope: !3976)
!4008 = !DILocalVariable(name: "size", arg: 2, scope: !3999, file: !4000, line: 69, type: !442)
!4009 = !DILocation(line: 69, column: 83, scope: !3999, inlinedAt: !4007)
!4010 = !DILocalVariable(name: "nr", arg: 1, scope: !3976, file: !3977, line: 132, type: !402)
!4011 = !DILocation(line: 132, column: 34, scope: !3976)
!4012 = !DILocalVariable(name: "addr", arg: 2, scope: !3976, file: !3977, line: 132, type: !3980)
!4013 = !DILocation(line: 132, column: 68, scope: !3976)
!4014 = !DILocation(line: 134, column: 25, scope: !3976)
!4015 = !DILocation(line: 134, column: 32, scope: !3976)
!4016 = !DILocation(line: 134, column: 30, scope: !3976)
!4017 = !DILocation(line: 71, column: 19, scope: !3999, inlinedAt: !4007)
!4018 = !DILocation(line: 71, column: 22, scope: !3999, inlinedAt: !4007)
!4019 = !DILocation(line: 71, column: 2, scope: !3999, inlinedAt: !4007)
!4020 = !DILocation(line: 72, column: 2, scope: !3999, inlinedAt: !4007)
!4021 = !DILocation(line: 135, column: 9, scope: !3976)
!4022 = !DILocation(line: 206, column: 19, scope: !3993, inlinedAt: !3995)
!4023 = !DILocation(line: 206, column: 22, scope: !3993, inlinedAt: !3995)
!4024 = !DILocation(line: 206, column: 15, scope: !3993, inlinedAt: !3995)
!4025 = !DILocation(line: 207, column: 4, scope: !3993, inlinedAt: !3995)
!4026 = !DILocation(line: 207, column: 9, scope: !3993, inlinedAt: !3995)
!4027 = !DILocation(line: 207, column: 12, scope: !3993, inlinedAt: !3995)
!4028 = !DILocation(line: 206, column: 44, scope: !3993, inlinedAt: !3995)
!4029 = !DILocation(line: 207, column: 37, scope: !3993, inlinedAt: !3995)
!4030 = !DILocation(line: 217, column: 33, scope: !3984, inlinedAt: !3987)
!4031 = !DILocation(line: 217, column: 46, scope: !3984, inlinedAt: !3987)
!4032 = !DILocation(line: 214, column: 2, scope: !3984, inlinedAt: !3987)
!4033 = !{i32 -2146596407, i32 -2146596347}
!4034 = !DILocation(line: 219, column: 9, scope: !3984, inlinedAt: !3987)
!4035 = !DILocation(line: 135, column: 2, scope: !3976)
!4036 = distinct !DISubprogram(name: "compat_effect", scope: !3, file: !3, line: 51, type: !4037, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!6, !80, !87}
!4039 = !DILocalVariable(name: "ff", arg: 1, scope: !4036, file: !3, line: 51, type: !80)
!4040 = !DILocation(line: 51, column: 44, scope: !4036)
!4041 = !DILocalVariable(name: "effect", arg: 2, scope: !4036, file: !3, line: 51, type: !87)
!4042 = !DILocation(line: 51, column: 66, scope: !4036)
!4043 = !DILocalVariable(name: "magnitude", scope: !4036, file: !3, line: 53, type: !6)
!4044 = !DILocation(line: 53, column: 6, scope: !4036)
!4045 = !DILocation(line: 55, column: 10, scope: !4036)
!4046 = !DILocation(line: 55, column: 18, scope: !4036)
!4047 = !DILocation(line: 55, column: 2, scope: !4036)
!4048 = !DILocation(line: 57, column: 30, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 57, column: 7)
!4050 = distinct !DILexicalBlock(scope: !4036, file: !3, line: 55, column: 24)
!4051 = !DILocation(line: 57, column: 34, scope: !4049)
!4052 = !DILocation(line: 57, column: 8, scope: !4049)
!4053 = !DILocation(line: 57, column: 7, scope: !4050)
!4054 = !DILocation(line: 58, column: 4, scope: !4049)
!4055 = !DILocation(line: 64, column: 15, scope: !4050)
!4056 = !DILocation(line: 64, column: 23, scope: !4050)
!4057 = !DILocation(line: 64, column: 25, scope: !4050)
!4058 = !DILocation(line: 64, column: 32, scope: !4050)
!4059 = !DILocation(line: 64, column: 49, scope: !4050)
!4060 = !DILocation(line: 65, column: 8, scope: !4050)
!4061 = !DILocation(line: 65, column: 16, scope: !4050)
!4062 = !DILocation(line: 65, column: 18, scope: !4050)
!4063 = !DILocation(line: 65, column: 25, scope: !4050)
!4064 = !DILocation(line: 65, column: 40, scope: !4050)
!4065 = !DILocation(line: 64, column: 53, scope: !4050)
!4066 = !DILocation(line: 64, column: 13, scope: !4050)
!4067 = !DILocation(line: 67, column: 3, scope: !4050)
!4068 = !DILocation(line: 67, column: 11, scope: !4050)
!4069 = !DILocation(line: 67, column: 16, scope: !4050)
!4070 = !DILocation(line: 68, column: 3, scope: !4050)
!4071 = !DILocation(line: 68, column: 11, scope: !4050)
!4072 = !DILocation(line: 68, column: 13, scope: !4050)
!4073 = !DILocation(line: 68, column: 22, scope: !4050)
!4074 = !DILocation(line: 68, column: 31, scope: !4050)
!4075 = !DILocation(line: 69, column: 3, scope: !4050)
!4076 = !DILocation(line: 69, column: 11, scope: !4050)
!4077 = !DILocation(line: 69, column: 13, scope: !4050)
!4078 = !DILocation(line: 69, column: 22, scope: !4050)
!4079 = !DILocation(line: 69, column: 29, scope: !4050)
!4080 = !DILocalVariable(name: "__UNIQUE_ID___x204", scope: !4081, file: !3, line: 70, type: !6)
!4081 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 70, column: 34)
!4082 = !DILocation(line: 70, column: 34, scope: !4081)
!4083 = !DILocalVariable(name: "__UNIQUE_ID___y205", scope: !4081, file: !3, line: 70, type: !6)
!4084 = !DILocation(line: 70, column: 34, scope: !4050)
!4085 = !DILocation(line: 70, column: 3, scope: !4050)
!4086 = !DILocation(line: 70, column: 11, scope: !4050)
!4087 = !DILocation(line: 70, column: 13, scope: !4050)
!4088 = !DILocation(line: 70, column: 22, scope: !4050)
!4089 = !DILocation(line: 70, column: 32, scope: !4050)
!4090 = !DILocation(line: 71, column: 3, scope: !4050)
!4091 = !DILocation(line: 71, column: 11, scope: !4050)
!4092 = !DILocation(line: 71, column: 13, scope: !4050)
!4093 = !DILocation(line: 71, column: 22, scope: !4050)
!4094 = !DILocation(line: 71, column: 29, scope: !4050)
!4095 = !DILocation(line: 72, column: 3, scope: !4050)
!4096 = !DILocation(line: 72, column: 11, scope: !4050)
!4097 = !DILocation(line: 72, column: 13, scope: !4050)
!4098 = !DILocation(line: 72, column: 22, scope: !4050)
!4099 = !DILocation(line: 72, column: 28, scope: !4050)
!4100 = !DILocation(line: 73, column: 3, scope: !4050)
!4101 = !DILocation(line: 73, column: 11, scope: !4050)
!4102 = !DILocation(line: 73, column: 13, scope: !4050)
!4103 = !DILocation(line: 73, column: 22, scope: !4050)
!4104 = !DILocation(line: 73, column: 31, scope: !4050)
!4105 = !DILocation(line: 73, column: 45, scope: !4050)
!4106 = !DILocation(line: 74, column: 3, scope: !4050)
!4107 = !DILocation(line: 74, column: 11, scope: !4050)
!4108 = !DILocation(line: 74, column: 13, scope: !4050)
!4109 = !DILocation(line: 74, column: 22, scope: !4050)
!4110 = !DILocation(line: 74, column: 31, scope: !4050)
!4111 = !DILocation(line: 74, column: 44, scope: !4050)
!4112 = !DILocation(line: 75, column: 3, scope: !4050)
!4113 = !DILocation(line: 75, column: 11, scope: !4050)
!4114 = !DILocation(line: 75, column: 13, scope: !4050)
!4115 = !DILocation(line: 75, column: 22, scope: !4050)
!4116 = !DILocation(line: 75, column: 31, scope: !4050)
!4117 = !DILocation(line: 75, column: 43, scope: !4050)
!4118 = !DILocation(line: 76, column: 3, scope: !4050)
!4119 = !DILocation(line: 76, column: 11, scope: !4050)
!4120 = !DILocation(line: 76, column: 13, scope: !4050)
!4121 = !DILocation(line: 76, column: 22, scope: !4050)
!4122 = !DILocation(line: 76, column: 31, scope: !4050)
!4123 = !DILocation(line: 76, column: 42, scope: !4050)
!4124 = !DILocation(line: 78, column: 3, scope: !4050)
!4125 = !DILocation(line: 82, column: 3, scope: !4050)
!4126 = !DILocation(line: 84, column: 1, scope: !4036)
!4127 = distinct !DISubprogram(name: "check_effect_access", scope: !3, file: !3, line: 24, type: !4128, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!6, !80, !6, !214}
!4130 = !DILocalVariable(name: "ff", arg: 1, scope: !4127, file: !3, line: 24, type: !80)
!4131 = !DILocation(line: 24, column: 50, scope: !4127)
!4132 = !DILocalVariable(name: "effect_id", arg: 2, scope: !4127, file: !3, line: 24, type: !6)
!4133 = !DILocation(line: 24, column: 58, scope: !4127)
!4134 = !DILocalVariable(name: "file", arg: 3, scope: !4127, file: !3, line: 25, type: !214)
!4135 = !DILocation(line: 25, column: 18, scope: !4127)
!4136 = !DILocation(line: 27, column: 6, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 27, column: 6)
!4138 = !DILocation(line: 27, column: 16, scope: !4137)
!4139 = !DILocation(line: 27, column: 20, scope: !4137)
!4140 = !DILocation(line: 27, column: 23, scope: !4137)
!4141 = !DILocation(line: 27, column: 36, scope: !4137)
!4142 = !DILocation(line: 27, column: 40, scope: !4137)
!4143 = !DILocation(line: 27, column: 33, scope: !4137)
!4144 = !DILocation(line: 27, column: 52, scope: !4137)
!4145 = !DILocation(line: 28, column: 7, scope: !4137)
!4146 = !DILocation(line: 28, column: 11, scope: !4137)
!4147 = !DILocation(line: 28, column: 25, scope: !4137)
!4148 = !DILocation(line: 27, column: 6, scope: !4127)
!4149 = !DILocation(line: 29, column: 3, scope: !4137)
!4150 = !DILocation(line: 31, column: 6, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 31, column: 6)
!4152 = !DILocation(line: 31, column: 11, scope: !4151)
!4153 = !DILocation(line: 31, column: 14, scope: !4151)
!4154 = !DILocation(line: 31, column: 18, scope: !4151)
!4155 = !DILocation(line: 31, column: 32, scope: !4151)
!4156 = !DILocation(line: 31, column: 46, scope: !4151)
!4157 = !DILocation(line: 31, column: 43, scope: !4151)
!4158 = !DILocation(line: 31, column: 6, scope: !4127)
!4159 = !DILocation(line: 32, column: 3, scope: !4151)
!4160 = !DILocation(line: 34, column: 2, scope: !4127)
!4161 = !DILocation(line: 35, column: 1, scope: !4127)
!4162 = distinct !DISubprogram(name: "check_effects_compatible", scope: !3, file: !3, line: 40, type: !4163, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!6, !87, !87}
!4165 = !DILocalVariable(name: "e1", arg: 1, scope: !4162, file: !3, line: 40, type: !87)
!4166 = !DILocation(line: 40, column: 62, scope: !4162)
!4167 = !DILocalVariable(name: "e2", arg: 2, scope: !4162, file: !3, line: 41, type: !87)
!4168 = !DILocation(line: 41, column: 27, scope: !4162)
!4169 = !DILocation(line: 43, column: 9, scope: !4162)
!4170 = !DILocation(line: 43, column: 13, scope: !4162)
!4171 = !DILocation(line: 43, column: 21, scope: !4162)
!4172 = !DILocation(line: 43, column: 25, scope: !4162)
!4173 = !DILocation(line: 43, column: 18, scope: !4162)
!4174 = !DILocation(line: 43, column: 30, scope: !4162)
!4175 = !DILocation(line: 44, column: 10, scope: !4162)
!4176 = !DILocation(line: 44, column: 14, scope: !4162)
!4177 = !DILocation(line: 44, column: 19, scope: !4162)
!4178 = !DILocation(line: 44, column: 34, scope: !4162)
!4179 = !DILocation(line: 45, column: 3, scope: !4162)
!4180 = !DILocation(line: 45, column: 7, scope: !4162)
!4181 = !DILocation(line: 45, column: 9, scope: !4162)
!4182 = !DILocation(line: 45, column: 18, scope: !4162)
!4183 = !DILocation(line: 45, column: 30, scope: !4162)
!4184 = !DILocation(line: 45, column: 34, scope: !4162)
!4185 = !DILocation(line: 45, column: 36, scope: !4162)
!4186 = !DILocation(line: 45, column: 45, scope: !4162)
!4187 = !DILocation(line: 45, column: 27, scope: !4162)
!4188 = !DILocation(line: 0, scope: !4162)
!4189 = !DILocation(line: 43, column: 2, scope: !4162)
!4190 = distinct !DISubprogram(name: "input_ff_erase", scope: !3, file: !3, line: 211, type: !4191, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!6, !7, !6, !214}
!4193 = !DILocalVariable(name: "dev", arg: 1, scope: !4190, file: !3, line: 211, type: !7)
!4194 = !DILocation(line: 211, column: 38, scope: !4190)
!4195 = !DILocalVariable(name: "effect_id", arg: 2, scope: !4190, file: !3, line: 211, type: !6)
!4196 = !DILocation(line: 211, column: 47, scope: !4190)
!4197 = !DILocalVariable(name: "file", arg: 3, scope: !4190, file: !3, line: 211, type: !214)
!4198 = !DILocation(line: 211, column: 71, scope: !4190)
!4199 = !DILocalVariable(name: "ff", scope: !4190, file: !3, line: 213, type: !80)
!4200 = !DILocation(line: 213, column: 20, scope: !4190)
!4201 = !DILocation(line: 213, column: 25, scope: !4190)
!4202 = !DILocation(line: 213, column: 30, scope: !4190)
!4203 = !DILocalVariable(name: "ret", scope: !4190, file: !3, line: 214, type: !6)
!4204 = !DILocation(line: 214, column: 6, scope: !4190)
!4205 = !DILocation(line: 216, column: 23, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 216, column: 6)
!4207 = !DILocation(line: 216, column: 28, scope: !4206)
!4208 = !DILocation(line: 216, column: 7, scope: !4206)
!4209 = !DILocation(line: 216, column: 6, scope: !4190)
!4210 = !DILocation(line: 217, column: 3, scope: !4206)
!4211 = !DILocation(line: 219, column: 14, scope: !4190)
!4212 = !DILocation(line: 219, column: 18, scope: !4190)
!4213 = !DILocation(line: 219, column: 2, scope: !4190)
!4214 = !DILocation(line: 220, column: 21, scope: !4190)
!4215 = !DILocation(line: 220, column: 26, scope: !4190)
!4216 = !DILocation(line: 220, column: 37, scope: !4190)
!4217 = !DILocation(line: 220, column: 8, scope: !4190)
!4218 = !DILocation(line: 220, column: 6, scope: !4190)
!4219 = !DILocation(line: 221, column: 16, scope: !4190)
!4220 = !DILocation(line: 221, column: 20, scope: !4190)
!4221 = !DILocation(line: 221, column: 2, scope: !4190)
!4222 = !DILocation(line: 223, column: 9, scope: !4190)
!4223 = !DILocation(line: 223, column: 2, scope: !4190)
!4224 = !DILocation(line: 224, column: 1, scope: !4190)
!4225 = distinct !DISubprogram(name: "erase_effect", scope: !3, file: !3, line: 172, type: !4191, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4226 = !DILocation(line: 402, column: 57, scope: !3763, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 192, column: 4, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 189, column: 14)
!4229 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 189, column: 7)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 187, column: 17)
!4231 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 187, column: 6)
!4232 = !DILocation(line: 377, column: 55, scope: !3771, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 190, column: 4, scope: !4228)
!4234 = !DILocation(line: 402, column: 57, scope: !3763, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 185, column: 2, scope: !4225)
!4236 = !DILocation(line: 377, column: 55, scope: !3771, inlinedAt: !4237)
!4237 = distinct !DILocation(line: 182, column: 2, scope: !4225)
!4238 = !DILocalVariable(name: "dev", arg: 1, scope: !4225, file: !3, line: 172, type: !7)
!4239 = !DILocation(line: 172, column: 43, scope: !4225)
!4240 = !DILocalVariable(name: "effect_id", arg: 2, scope: !4225, file: !3, line: 172, type: !6)
!4241 = !DILocation(line: 172, column: 52, scope: !4225)
!4242 = !DILocalVariable(name: "file", arg: 3, scope: !4225, file: !3, line: 173, type: !214)
!4243 = !DILocation(line: 173, column: 17, scope: !4225)
!4244 = !DILocalVariable(name: "ff", scope: !4225, file: !3, line: 175, type: !80)
!4245 = !DILocation(line: 175, column: 20, scope: !4225)
!4246 = !DILocation(line: 175, column: 25, scope: !4225)
!4247 = !DILocation(line: 175, column: 30, scope: !4225)
!4248 = !DILocalVariable(name: "error", scope: !4225, file: !3, line: 176, type: !6)
!4249 = !DILocation(line: 176, column: 6, scope: !4225)
!4250 = !DILocation(line: 178, column: 30, scope: !4225)
!4251 = !DILocation(line: 178, column: 34, scope: !4225)
!4252 = !DILocation(line: 178, column: 45, scope: !4225)
!4253 = !DILocation(line: 178, column: 10, scope: !4225)
!4254 = !DILocation(line: 178, column: 8, scope: !4225)
!4255 = !DILocation(line: 179, column: 6, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 179, column: 6)
!4257 = !DILocation(line: 179, column: 6, scope: !4225)
!4258 = !DILocation(line: 180, column: 10, scope: !4256)
!4259 = !DILocation(line: 180, column: 3, scope: !4256)
!4260 = !DILocation(line: 182, column: 17, scope: !4225)
!4261 = !DILocation(line: 182, column: 22, scope: !4225)
!4262 = !DILocation(line: 379, column: 2, scope: !3940, inlinedAt: !4237)
!4263 = !DILocation(line: 379, column: 2, scope: !3943, inlinedAt: !4237)
!4264 = !DILocation(line: 379, column: 2, scope: !3946, inlinedAt: !4237)
!4265 = !DILocation(line: 183, column: 2, scope: !4225)
!4266 = !DILocation(line: 183, column: 6, scope: !4225)
!4267 = !DILocation(line: 183, column: 15, scope: !4225)
!4268 = !DILocation(line: 183, column: 20, scope: !4225)
!4269 = !DILocation(line: 184, column: 2, scope: !4225)
!4270 = !DILocation(line: 184, column: 6, scope: !4225)
!4271 = !DILocation(line: 184, column: 20, scope: !4225)
!4272 = !DILocation(line: 184, column: 31, scope: !4225)
!4273 = !DILocation(line: 185, column: 19, scope: !4225)
!4274 = !DILocation(line: 185, column: 24, scope: !4225)
!4275 = !DILocation(line: 404, column: 2, scope: !3960, inlinedAt: !4235)
!4276 = !DILocation(line: 404, column: 2, scope: !3963, inlinedAt: !4235)
!4277 = !DILocation(line: 404, column: 2, scope: !3966, inlinedAt: !4235)
!4278 = !DILocation(line: 187, column: 6, scope: !4231)
!4279 = !DILocation(line: 187, column: 10, scope: !4231)
!4280 = !DILocation(line: 187, column: 6, scope: !4225)
!4281 = !DILocation(line: 188, column: 11, scope: !4230)
!4282 = !DILocation(line: 188, column: 15, scope: !4230)
!4283 = !DILocation(line: 188, column: 21, scope: !4230)
!4284 = !DILocation(line: 188, column: 26, scope: !4230)
!4285 = !DILocation(line: 188, column: 9, scope: !4230)
!4286 = !DILocation(line: 189, column: 7, scope: !4229)
!4287 = !DILocation(line: 189, column: 7, scope: !4230)
!4288 = !DILocation(line: 190, column: 19, scope: !4228)
!4289 = !DILocation(line: 190, column: 24, scope: !4228)
!4290 = !DILocation(line: 379, column: 2, scope: !3940, inlinedAt: !4233)
!4291 = !DILocation(line: 379, column: 2, scope: !3943, inlinedAt: !4233)
!4292 = !DILocation(line: 379, column: 2, scope: !3946, inlinedAt: !4233)
!4293 = !DILocation(line: 191, column: 35, scope: !4228)
!4294 = !DILocation(line: 191, column: 4, scope: !4228)
!4295 = !DILocation(line: 191, column: 8, scope: !4228)
!4296 = !DILocation(line: 191, column: 22, scope: !4228)
!4297 = !DILocation(line: 191, column: 33, scope: !4228)
!4298 = !DILocation(line: 192, column: 21, scope: !4228)
!4299 = !DILocation(line: 192, column: 26, scope: !4228)
!4300 = !DILocation(line: 404, column: 2, scope: !3960, inlinedAt: !4227)
!4301 = !DILocation(line: 404, column: 2, scope: !3963, inlinedAt: !4227)
!4302 = !DILocation(line: 404, column: 2, scope: !3966, inlinedAt: !4227)
!4303 = !DILocation(line: 194, column: 11, scope: !4228)
!4304 = !DILocation(line: 194, column: 4, scope: !4228)
!4305 = !DILocation(line: 196, column: 2, scope: !4230)
!4306 = !DILocation(line: 198, column: 2, scope: !4225)
!4307 = !DILocation(line: 199, column: 1, scope: !4225)
!4308 = distinct !DISubprogram(name: "input_ff_flush", scope: !3, file: !3, line: 236, type: !2956, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4309 = !DILocalVariable(name: "dev", arg: 1, scope: !4308, file: !3, line: 236, type: !7)
!4310 = !DILocation(line: 236, column: 38, scope: !4308)
!4311 = !DILocalVariable(name: "file", arg: 2, scope: !4308, file: !3, line: 236, type: !214)
!4312 = !DILocation(line: 236, column: 56, scope: !4308)
!4313 = !DILocalVariable(name: "ff", scope: !4308, file: !3, line: 238, type: !80)
!4314 = !DILocation(line: 238, column: 20, scope: !4308)
!4315 = !DILocation(line: 238, column: 25, scope: !4308)
!4316 = !DILocation(line: 238, column: 30, scope: !4308)
!4317 = !DILocalVariable(name: "i", scope: !4308, file: !3, line: 239, type: !6)
!4318 = !DILocation(line: 239, column: 6, scope: !4308)
!4319 = !DILocation(line: 243, column: 14, scope: !4308)
!4320 = !DILocation(line: 243, column: 18, scope: !4308)
!4321 = !DILocation(line: 243, column: 2, scope: !4308)
!4322 = !DILocation(line: 245, column: 9, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 245, column: 2)
!4324 = !DILocation(line: 245, column: 7, scope: !4323)
!4325 = !DILocation(line: 245, column: 14, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 245, column: 2)
!4327 = !DILocation(line: 245, column: 18, scope: !4326)
!4328 = !DILocation(line: 245, column: 22, scope: !4326)
!4329 = !DILocation(line: 245, column: 16, scope: !4326)
!4330 = !DILocation(line: 245, column: 2, scope: !4323)
!4331 = !DILocation(line: 246, column: 16, scope: !4326)
!4332 = !DILocation(line: 246, column: 21, scope: !4326)
!4333 = !DILocation(line: 246, column: 24, scope: !4326)
!4334 = !DILocation(line: 246, column: 3, scope: !4326)
!4335 = !DILocation(line: 245, column: 36, scope: !4326)
!4336 = !DILocation(line: 245, column: 2, scope: !4326)
!4337 = distinct !{!4337, !4330, !4338}
!4338 = !DILocation(line: 246, column: 28, scope: !4323)
!4339 = !DILocation(line: 248, column: 16, scope: !4308)
!4340 = !DILocation(line: 248, column: 20, scope: !4308)
!4341 = !DILocation(line: 248, column: 2, scope: !4308)
!4342 = !DILocation(line: 250, column: 2, scope: !4308)
!4343 = distinct !DISubprogram(name: "input_ff_event", scope: !3, file: !3, line: 261, type: !2960, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4344 = !DILocalVariable(name: "dev", arg: 1, scope: !4343, file: !3, line: 261, type: !7)
!4345 = !DILocation(line: 261, column: 38, scope: !4343)
!4346 = !DILocalVariable(name: "type", arg: 2, scope: !4343, file: !3, line: 261, type: !49)
!4347 = !DILocation(line: 261, column: 56, scope: !4343)
!4348 = !DILocalVariable(name: "code", arg: 3, scope: !4343, file: !3, line: 262, type: !49)
!4349 = !DILocation(line: 262, column: 19, scope: !4343)
!4350 = !DILocalVariable(name: "value", arg: 4, scope: !4343, file: !3, line: 262, type: !6)
!4351 = !DILocation(line: 262, column: 29, scope: !4343)
!4352 = !DILocalVariable(name: "ff", scope: !4343, file: !3, line: 264, type: !80)
!4353 = !DILocation(line: 264, column: 20, scope: !4343)
!4354 = !DILocation(line: 264, column: 25, scope: !4343)
!4355 = !DILocation(line: 264, column: 30, scope: !4343)
!4356 = !DILocation(line: 266, column: 6, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 266, column: 6)
!4358 = !DILocation(line: 266, column: 11, scope: !4357)
!4359 = !DILocation(line: 266, column: 6, scope: !4343)
!4360 = !DILocation(line: 267, column: 3, scope: !4357)
!4361 = !DILocation(line: 269, column: 10, scope: !4343)
!4362 = !DILocation(line: 269, column: 2, scope: !4343)
!4363 = !DILocation(line: 271, column: 26, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 271, column: 7)
!4365 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 269, column: 16)
!4366 = !DILocation(line: 271, column: 31, scope: !4364)
!4367 = !DILocation(line: 271, column: 8, scope: !4364)
!4368 = !DILocation(line: 271, column: 38, scope: !4364)
!4369 = !DILocation(line: 271, column: 41, scope: !4364)
!4370 = !DILocation(line: 271, column: 47, scope: !4364)
!4371 = !DILocation(line: 271, column: 7, scope: !4365)
!4372 = !DILocation(line: 272, column: 4, scope: !4364)
!4373 = !DILocation(line: 274, column: 3, scope: !4365)
!4374 = !DILocation(line: 274, column: 7, scope: !4365)
!4375 = !DILocation(line: 274, column: 16, scope: !4365)
!4376 = !DILocation(line: 274, column: 21, scope: !4365)
!4377 = !DILocation(line: 275, column: 3, scope: !4365)
!4378 = !DILocation(line: 278, column: 32, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 278, column: 7)
!4380 = !DILocation(line: 278, column: 37, scope: !4379)
!4381 = !DILocation(line: 278, column: 8, scope: !4379)
!4382 = !DILocation(line: 278, column: 44, scope: !4379)
!4383 = !DILocation(line: 278, column: 47, scope: !4379)
!4384 = !DILocation(line: 278, column: 53, scope: !4379)
!4385 = !DILocation(line: 278, column: 7, scope: !4365)
!4386 = !DILocation(line: 279, column: 4, scope: !4379)
!4387 = !DILocation(line: 281, column: 3, scope: !4365)
!4388 = !DILocation(line: 281, column: 7, scope: !4365)
!4389 = !DILocation(line: 281, column: 22, scope: !4365)
!4390 = !DILocation(line: 281, column: 27, scope: !4365)
!4391 = !DILocation(line: 282, column: 3, scope: !4365)
!4392 = !DILocation(line: 285, column: 27, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 285, column: 7)
!4394 = !DILocation(line: 285, column: 31, scope: !4393)
!4395 = !DILocation(line: 285, column: 7, scope: !4393)
!4396 = !DILocation(line: 285, column: 43, scope: !4393)
!4397 = !DILocation(line: 285, column: 7, scope: !4365)
!4398 = !DILocation(line: 286, column: 4, scope: !4393)
!4399 = !DILocation(line: 286, column: 8, scope: !4393)
!4400 = !DILocation(line: 286, column: 17, scope: !4393)
!4401 = !DILocation(line: 286, column: 22, scope: !4393)
!4402 = !DILocation(line: 286, column: 28, scope: !4393)
!4403 = !DILocation(line: 287, column: 3, scope: !4365)
!4404 = !DILocation(line: 290, column: 2, scope: !4343)
!4405 = !DILocation(line: 291, column: 1, scope: !4343)
!4406 = !DILocalVariable(name: "dev", arg: 1, scope: !2, file: !3, line: 305, type: !7)
!4407 = !DILocation(line: 305, column: 39, scope: !2)
!4408 = !DILocalVariable(name: "max_effects", arg: 2, scope: !2, file: !3, line: 305, type: !49)
!4409 = !DILocation(line: 305, column: 57, scope: !2)
!4410 = !DILocalVariable(name: "ff", scope: !2, file: !3, line: 307, type: !80)
!4411 = !DILocation(line: 307, column: 20, scope: !2)
!4412 = !DILocalVariable(name: "ff_dev_size", scope: !2, file: !3, line: 308, type: !442)
!4413 = !DILocation(line: 308, column: 9, scope: !2)
!4414 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 309, type: !6)
!4415 = !DILocation(line: 309, column: 6, scope: !2)
!4416 = !DILocation(line: 311, column: 7, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !2, file: !3, line: 311, column: 6)
!4418 = !DILocation(line: 311, column: 6, scope: !2)
!4419 = !DILocation(line: 312, column: 3, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 311, column: 20)
!4421 = !DILocation(line: 313, column: 3, scope: !4420)
!4422 = !DILocation(line: 316, column: 6, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !2, file: !3, line: 316, column: 6)
!4424 = !DILocation(line: 316, column: 18, scope: !4423)
!4425 = !DILocation(line: 316, column: 6, scope: !2)
!4426 = !DILocation(line: 317, column: 3, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4423, file: !3, line: 316, column: 36)
!4428 = !DILocation(line: 318, column: 3, scope: !4427)
!4429 = !DILocation(line: 322, column: 5, scope: !2)
!4430 = !DILocation(line: 322, column: 17, scope: !2)
!4431 = !DILocation(line: 321, column: 41, scope: !2)
!4432 = !DILocation(line: 321, column: 14, scope: !2)
!4433 = !DILocation(line: 323, column: 6, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !2, file: !3, line: 323, column: 6)
!4435 = !DILocation(line: 323, column: 20, scope: !4434)
!4436 = !DILocation(line: 323, column: 18, scope: !4434)
!4437 = !DILocation(line: 323, column: 6, scope: !2)
!4438 = !DILocation(line: 324, column: 3, scope: !4434)
!4439 = !DILocation(line: 326, column: 15, scope: !2)
!4440 = !DILocation(line: 326, column: 7, scope: !2)
!4441 = !DILocation(line: 326, column: 5, scope: !2)
!4442 = !DILocation(line: 327, column: 7, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !2, file: !3, line: 327, column: 6)
!4444 = !DILocation(line: 327, column: 6, scope: !2)
!4445 = !DILocation(line: 328, column: 3, scope: !4443)
!4446 = !DILocation(line: 330, column: 24, scope: !2)
!4447 = !DILocation(line: 330, column: 16, scope: !2)
!4448 = !DILocation(line: 330, column: 2, scope: !2)
!4449 = !DILocation(line: 330, column: 6, scope: !2)
!4450 = !DILocation(line: 330, column: 14, scope: !2)
!4451 = !DILocation(line: 332, column: 7, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !2, file: !3, line: 332, column: 6)
!4453 = !DILocation(line: 332, column: 11, scope: !4452)
!4454 = !DILocation(line: 332, column: 6, scope: !2)
!4455 = !DILocation(line: 333, column: 9, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 332, column: 20)
!4457 = !DILocation(line: 333, column: 3, scope: !4456)
!4458 = !DILocation(line: 334, column: 3, scope: !4456)
!4459 = !DILocation(line: 337, column: 20, scope: !2)
!4460 = !DILocation(line: 337, column: 2, scope: !2)
!4461 = !DILocation(line: 337, column: 6, scope: !2)
!4462 = !DILocation(line: 337, column: 18, scope: !2)
!4463 = !DILocation(line: 338, column: 2, scope: !2)
!4464 = !DILocation(line: 338, column: 2, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !2, file: !3, line: 338, column: 2)
!4466 = !DILocation(line: 340, column: 12, scope: !2)
!4467 = !DILocation(line: 340, column: 2, scope: !2)
!4468 = !DILocation(line: 340, column: 7, scope: !2)
!4469 = !DILocation(line: 340, column: 10, scope: !2)
!4470 = !DILocation(line: 341, column: 2, scope: !2)
!4471 = !DILocation(line: 341, column: 7, scope: !2)
!4472 = !DILocation(line: 341, column: 13, scope: !2)
!4473 = !DILocation(line: 342, column: 2, scope: !2)
!4474 = !DILocation(line: 342, column: 7, scope: !2)
!4475 = !DILocation(line: 342, column: 13, scope: !2)
!4476 = !DILocation(line: 343, column: 19, scope: !2)
!4477 = !DILocation(line: 343, column: 24, scope: !2)
!4478 = !DILocation(line: 343, column: 2, scope: !2)
!4479 = !DILocation(line: 346, column: 2, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !2, file: !3, line: 346, column: 2)
!4481 = !DILocation(line: 346, column: 2, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 346, column: 2)
!4483 = !DILocation(line: 347, column: 13, scope: !4482)
!4484 = !DILocation(line: 347, column: 16, scope: !4482)
!4485 = !DILocation(line: 347, column: 20, scope: !4482)
!4486 = !DILocation(line: 347, column: 3, scope: !4482)
!4487 = distinct !{!4487, !4479, !4488}
!4488 = !DILocation(line: 347, column: 25, scope: !4480)
!4489 = !DILocation(line: 350, column: 28, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !2, file: !3, line: 350, column: 6)
!4491 = !DILocation(line: 350, column: 32, scope: !4490)
!4492 = !DILocation(line: 350, column: 6, scope: !4490)
!4493 = !DILocation(line: 350, column: 6, scope: !2)
!4494 = !DILocation(line: 351, column: 24, scope: !4490)
!4495 = !DILocation(line: 351, column: 29, scope: !4490)
!4496 = !DILocation(line: 351, column: 3, scope: !4490)
!4497 = !DILocation(line: 353, column: 2, scope: !2)
!4498 = !DILocation(line: 354, column: 1, scope: !2)
!4499 = distinct !DISubprogram(name: "kzalloc", scope: !3743, file: !3743, line: 662, type: !4500, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!53, !442, !616}
!4502 = !DILocalVariable(name: "s", arg: 1, scope: !4503, file: !3743, line: 445, type: !806)
!4503 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !3743, file: !3743, line: 445, type: !4504, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4504 = !DISubroutineType(types: !4505)
!4505 = !{!53, !806, !616, !442}
!4506 = !DILocation(line: 445, column: 72, scope: !4503, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 552, column: 10, scope: !4508, inlinedAt: !4511)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !3743, line: 540, column: 34)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3743, line: 540, column: 6)
!4510 = distinct !DISubprogram(name: "kmalloc", scope: !3743, file: !3743, line: 538, type: !4500, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4511 = distinct !DILocation(line: 664, column: 9, scope: !4499)
!4512 = !DILocalVariable(name: "flags", arg: 2, scope: !4503, file: !3743, line: 446, type: !616)
!4513 = !DILocation(line: 446, column: 9, scope: !4503, inlinedAt: !4507)
!4514 = !DILocalVariable(name: "size", arg: 3, scope: !4503, file: !3743, line: 446, type: !442)
!4515 = !DILocation(line: 446, column: 23, scope: !4503, inlinedAt: !4507)
!4516 = !DILocalVariable(name: "ret", scope: !4503, file: !3743, line: 448, type: !53)
!4517 = !DILocation(line: 448, column: 8, scope: !4503, inlinedAt: !4507)
!4518 = !DILocalVariable(name: "flags", arg: 1, scope: !4519, file: !3743, line: 318, type: !616)
!4519 = distinct !DISubprogram(name: "kmalloc_type", scope: !3743, file: !3743, line: 318, type: !4520, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!3742, !616}
!4522 = !DILocation(line: 318, column: 67, scope: !4519, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 553, column: 20, scope: !4508, inlinedAt: !4511)
!4524 = !DILocalVariable(name: "size", arg: 1, scope: !4525, file: !3743, line: 346, type: !442)
!4525 = distinct !DISubprogram(name: "kmalloc_index", scope: !3743, file: !3743, line: 346, type: !4526, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!49, !442}
!4528 = !DILocation(line: 346, column: 58, scope: !4525, inlinedAt: !4529)
!4529 = distinct !DILocation(line: 547, column: 11, scope: !4508, inlinedAt: !4511)
!4530 = !DILocalVariable(name: "size", arg: 1, scope: !4531, file: !3743, line: 472, type: !442)
!4531 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !3743, file: !3743, line: 472, type: !4532, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!53, !442, !616, !49}
!4534 = !DILocation(line: 472, column: 28, scope: !4531, inlinedAt: !4535)
!4535 = distinct !DILocation(line: 481, column: 9, scope: !4536, inlinedAt: !4537)
!4536 = distinct !DISubprogram(name: "kmalloc_large", scope: !3743, file: !3743, line: 478, type: !4500, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4537 = distinct !DILocation(line: 545, column: 11, scope: !4538, inlinedAt: !4511)
!4538 = distinct !DILexicalBlock(scope: !4508, file: !3743, line: 544, column: 7)
!4539 = !DILocalVariable(name: "flags", arg: 2, scope: !4531, file: !3743, line: 472, type: !616)
!4540 = !DILocation(line: 472, column: 40, scope: !4531, inlinedAt: !4535)
!4541 = !DILocalVariable(name: "order", arg: 3, scope: !4531, file: !3743, line: 472, type: !49)
!4542 = !DILocation(line: 472, column: 60, scope: !4531, inlinedAt: !4535)
!4543 = !DILocalVariable(name: "size", arg: 1, scope: !4536, file: !3743, line: 478, type: !442)
!4544 = !DILocation(line: 478, column: 51, scope: !4536, inlinedAt: !4537)
!4545 = !DILocalVariable(name: "flags", arg: 2, scope: !4536, file: !3743, line: 478, type: !616)
!4546 = !DILocation(line: 478, column: 63, scope: !4536, inlinedAt: !4537)
!4547 = !DILocalVariable(name: "order", scope: !4536, file: !3743, line: 480, type: !49)
!4548 = !DILocation(line: 480, column: 15, scope: !4536, inlinedAt: !4537)
!4549 = !DILocalVariable(name: "size", arg: 1, scope: !4510, file: !3743, line: 538, type: !442)
!4550 = !DILocation(line: 538, column: 45, scope: !4510, inlinedAt: !4511)
!4551 = !DILocalVariable(name: "flags", arg: 2, scope: !4510, file: !3743, line: 538, type: !616)
!4552 = !DILocation(line: 538, column: 57, scope: !4510, inlinedAt: !4511)
!4553 = !DILocalVariable(name: "index", scope: !4508, file: !3743, line: 542, type: !49)
!4554 = !DILocation(line: 542, column: 16, scope: !4508, inlinedAt: !4511)
!4555 = !DILocalVariable(name: "size", arg: 1, scope: !4499, file: !3743, line: 662, type: !442)
!4556 = !DILocation(line: 662, column: 36, scope: !4499)
!4557 = !DILocalVariable(name: "flags", arg: 2, scope: !4499, file: !3743, line: 662, type: !616)
!4558 = !DILocation(line: 662, column: 48, scope: !4499)
!4559 = !DILocation(line: 664, column: 17, scope: !4499)
!4560 = !DILocation(line: 664, column: 23, scope: !4499)
!4561 = !DILocation(line: 664, column: 29, scope: !4499)
!4562 = !DILocation(line: 540, column: 27, scope: !4509, inlinedAt: !4511)
!4563 = !DILocation(line: 540, column: 6, scope: !4509, inlinedAt: !4511)
!4564 = !DILocation(line: 540, column: 6, scope: !4510, inlinedAt: !4511)
!4565 = !DILocation(line: 544, column: 7, scope: !4538, inlinedAt: !4511)
!4566 = !DILocation(line: 544, column: 12, scope: !4538, inlinedAt: !4511)
!4567 = !DILocation(line: 544, column: 7, scope: !4508, inlinedAt: !4511)
!4568 = !DILocation(line: 545, column: 25, scope: !4538, inlinedAt: !4511)
!4569 = !DILocation(line: 545, column: 31, scope: !4538, inlinedAt: !4511)
!4570 = !DILocation(line: 480, column: 33, scope: !4536, inlinedAt: !4537)
!4571 = !DILocation(line: 480, column: 23, scope: !4536, inlinedAt: !4537)
!4572 = !DILocation(line: 481, column: 29, scope: !4536, inlinedAt: !4537)
!4573 = !DILocation(line: 481, column: 35, scope: !4536, inlinedAt: !4537)
!4574 = !DILocation(line: 481, column: 42, scope: !4536, inlinedAt: !4537)
!4575 = !DILocation(line: 474, column: 23, scope: !4531, inlinedAt: !4535)
!4576 = !DILocation(line: 474, column: 29, scope: !4531, inlinedAt: !4535)
!4577 = !DILocation(line: 474, column: 36, scope: !4531, inlinedAt: !4535)
!4578 = !DILocation(line: 474, column: 9, scope: !4531, inlinedAt: !4535)
!4579 = !DILocation(line: 545, column: 4, scope: !4538, inlinedAt: !4511)
!4580 = !DILocation(line: 547, column: 25, scope: !4508, inlinedAt: !4511)
!4581 = !DILocation(line: 348, column: 7, scope: !4582, inlinedAt: !4529)
!4582 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 348, column: 6)
!4583 = !DILocation(line: 348, column: 6, scope: !4525, inlinedAt: !4529)
!4584 = !DILocation(line: 349, column: 3, scope: !4582, inlinedAt: !4529)
!4585 = !DILocation(line: 351, column: 6, scope: !4586, inlinedAt: !4529)
!4586 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 351, column: 6)
!4587 = !DILocation(line: 351, column: 11, scope: !4586, inlinedAt: !4529)
!4588 = !DILocation(line: 351, column: 6, scope: !4525, inlinedAt: !4529)
!4589 = !DILocation(line: 352, column: 3, scope: !4586, inlinedAt: !4529)
!4590 = !DILocation(line: 354, column: 32, scope: !4591, inlinedAt: !4529)
!4591 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 354, column: 6)
!4592 = !DILocation(line: 354, column: 37, scope: !4591, inlinedAt: !4529)
!4593 = !DILocation(line: 354, column: 42, scope: !4591, inlinedAt: !4529)
!4594 = !DILocation(line: 354, column: 45, scope: !4591, inlinedAt: !4529)
!4595 = !DILocation(line: 354, column: 50, scope: !4591, inlinedAt: !4529)
!4596 = !DILocation(line: 354, column: 6, scope: !4525, inlinedAt: !4529)
!4597 = !DILocation(line: 355, column: 3, scope: !4591, inlinedAt: !4529)
!4598 = !DILocation(line: 356, column: 32, scope: !4599, inlinedAt: !4529)
!4599 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 356, column: 6)
!4600 = !DILocation(line: 356, column: 37, scope: !4599, inlinedAt: !4529)
!4601 = !DILocation(line: 356, column: 43, scope: !4599, inlinedAt: !4529)
!4602 = !DILocation(line: 356, column: 46, scope: !4599, inlinedAt: !4529)
!4603 = !DILocation(line: 356, column: 51, scope: !4599, inlinedAt: !4529)
!4604 = !DILocation(line: 356, column: 6, scope: !4525, inlinedAt: !4529)
!4605 = !DILocation(line: 357, column: 3, scope: !4599, inlinedAt: !4529)
!4606 = !DILocation(line: 358, column: 6, scope: !4607, inlinedAt: !4529)
!4607 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 358, column: 6)
!4608 = !DILocation(line: 358, column: 11, scope: !4607, inlinedAt: !4529)
!4609 = !DILocation(line: 358, column: 6, scope: !4525, inlinedAt: !4529)
!4610 = !DILocation(line: 358, column: 26, scope: !4607, inlinedAt: !4529)
!4611 = !DILocation(line: 359, column: 6, scope: !4612, inlinedAt: !4529)
!4612 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 359, column: 6)
!4613 = !DILocation(line: 359, column: 11, scope: !4612, inlinedAt: !4529)
!4614 = !DILocation(line: 359, column: 6, scope: !4525, inlinedAt: !4529)
!4615 = !DILocation(line: 359, column: 26, scope: !4612, inlinedAt: !4529)
!4616 = !DILocation(line: 360, column: 6, scope: !4617, inlinedAt: !4529)
!4617 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 360, column: 6)
!4618 = !DILocation(line: 360, column: 11, scope: !4617, inlinedAt: !4529)
!4619 = !DILocation(line: 360, column: 6, scope: !4525, inlinedAt: !4529)
!4620 = !DILocation(line: 360, column: 26, scope: !4617, inlinedAt: !4529)
!4621 = !DILocation(line: 361, column: 6, scope: !4622, inlinedAt: !4529)
!4622 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 361, column: 6)
!4623 = !DILocation(line: 361, column: 11, scope: !4622, inlinedAt: !4529)
!4624 = !DILocation(line: 361, column: 6, scope: !4525, inlinedAt: !4529)
!4625 = !DILocation(line: 361, column: 26, scope: !4622, inlinedAt: !4529)
!4626 = !DILocation(line: 362, column: 6, scope: !4627, inlinedAt: !4529)
!4627 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 362, column: 6)
!4628 = !DILocation(line: 362, column: 11, scope: !4627, inlinedAt: !4529)
!4629 = !DILocation(line: 362, column: 6, scope: !4525, inlinedAt: !4529)
!4630 = !DILocation(line: 362, column: 26, scope: !4627, inlinedAt: !4529)
!4631 = !DILocation(line: 363, column: 6, scope: !4632, inlinedAt: !4529)
!4632 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 363, column: 6)
!4633 = !DILocation(line: 363, column: 11, scope: !4632, inlinedAt: !4529)
!4634 = !DILocation(line: 363, column: 6, scope: !4525, inlinedAt: !4529)
!4635 = !DILocation(line: 363, column: 26, scope: !4632, inlinedAt: !4529)
!4636 = !DILocation(line: 364, column: 6, scope: !4637, inlinedAt: !4529)
!4637 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 364, column: 6)
!4638 = !DILocation(line: 364, column: 11, scope: !4637, inlinedAt: !4529)
!4639 = !DILocation(line: 364, column: 6, scope: !4525, inlinedAt: !4529)
!4640 = !DILocation(line: 364, column: 26, scope: !4637, inlinedAt: !4529)
!4641 = !DILocation(line: 365, column: 6, scope: !4642, inlinedAt: !4529)
!4642 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 365, column: 6)
!4643 = !DILocation(line: 365, column: 11, scope: !4642, inlinedAt: !4529)
!4644 = !DILocation(line: 365, column: 6, scope: !4525, inlinedAt: !4529)
!4645 = !DILocation(line: 365, column: 26, scope: !4642, inlinedAt: !4529)
!4646 = !DILocation(line: 366, column: 6, scope: !4647, inlinedAt: !4529)
!4647 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 366, column: 6)
!4648 = !DILocation(line: 366, column: 11, scope: !4647, inlinedAt: !4529)
!4649 = !DILocation(line: 366, column: 6, scope: !4525, inlinedAt: !4529)
!4650 = !DILocation(line: 366, column: 26, scope: !4647, inlinedAt: !4529)
!4651 = !DILocation(line: 367, column: 6, scope: !4652, inlinedAt: !4529)
!4652 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 367, column: 6)
!4653 = !DILocation(line: 367, column: 11, scope: !4652, inlinedAt: !4529)
!4654 = !DILocation(line: 367, column: 6, scope: !4525, inlinedAt: !4529)
!4655 = !DILocation(line: 367, column: 26, scope: !4652, inlinedAt: !4529)
!4656 = !DILocation(line: 368, column: 6, scope: !4657, inlinedAt: !4529)
!4657 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 368, column: 6)
!4658 = !DILocation(line: 368, column: 11, scope: !4657, inlinedAt: !4529)
!4659 = !DILocation(line: 368, column: 6, scope: !4525, inlinedAt: !4529)
!4660 = !DILocation(line: 368, column: 26, scope: !4657, inlinedAt: !4529)
!4661 = !DILocation(line: 369, column: 6, scope: !4662, inlinedAt: !4529)
!4662 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 369, column: 6)
!4663 = !DILocation(line: 369, column: 11, scope: !4662, inlinedAt: !4529)
!4664 = !DILocation(line: 369, column: 6, scope: !4525, inlinedAt: !4529)
!4665 = !DILocation(line: 369, column: 26, scope: !4662, inlinedAt: !4529)
!4666 = !DILocation(line: 370, column: 6, scope: !4667, inlinedAt: !4529)
!4667 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 370, column: 6)
!4668 = !DILocation(line: 370, column: 11, scope: !4667, inlinedAt: !4529)
!4669 = !DILocation(line: 370, column: 6, scope: !4525, inlinedAt: !4529)
!4670 = !DILocation(line: 370, column: 26, scope: !4667, inlinedAt: !4529)
!4671 = !DILocation(line: 371, column: 6, scope: !4672, inlinedAt: !4529)
!4672 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 371, column: 6)
!4673 = !DILocation(line: 371, column: 11, scope: !4672, inlinedAt: !4529)
!4674 = !DILocation(line: 371, column: 6, scope: !4525, inlinedAt: !4529)
!4675 = !DILocation(line: 371, column: 26, scope: !4672, inlinedAt: !4529)
!4676 = !DILocation(line: 372, column: 6, scope: !4677, inlinedAt: !4529)
!4677 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 372, column: 6)
!4678 = !DILocation(line: 372, column: 11, scope: !4677, inlinedAt: !4529)
!4679 = !DILocation(line: 372, column: 6, scope: !4525, inlinedAt: !4529)
!4680 = !DILocation(line: 372, column: 26, scope: !4677, inlinedAt: !4529)
!4681 = !DILocation(line: 373, column: 6, scope: !4682, inlinedAt: !4529)
!4682 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 373, column: 6)
!4683 = !DILocation(line: 373, column: 11, scope: !4682, inlinedAt: !4529)
!4684 = !DILocation(line: 373, column: 6, scope: !4525, inlinedAt: !4529)
!4685 = !DILocation(line: 373, column: 26, scope: !4682, inlinedAt: !4529)
!4686 = !DILocation(line: 374, column: 6, scope: !4687, inlinedAt: !4529)
!4687 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 374, column: 6)
!4688 = !DILocation(line: 374, column: 11, scope: !4687, inlinedAt: !4529)
!4689 = !DILocation(line: 374, column: 6, scope: !4525, inlinedAt: !4529)
!4690 = !DILocation(line: 374, column: 26, scope: !4687, inlinedAt: !4529)
!4691 = !DILocation(line: 375, column: 6, scope: !4692, inlinedAt: !4529)
!4692 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 375, column: 6)
!4693 = !DILocation(line: 375, column: 11, scope: !4692, inlinedAt: !4529)
!4694 = !DILocation(line: 375, column: 6, scope: !4525, inlinedAt: !4529)
!4695 = !DILocation(line: 375, column: 27, scope: !4692, inlinedAt: !4529)
!4696 = !DILocation(line: 376, column: 6, scope: !4697, inlinedAt: !4529)
!4697 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 376, column: 6)
!4698 = !DILocation(line: 376, column: 11, scope: !4697, inlinedAt: !4529)
!4699 = !DILocation(line: 376, column: 6, scope: !4525, inlinedAt: !4529)
!4700 = !DILocation(line: 376, column: 32, scope: !4697, inlinedAt: !4529)
!4701 = !DILocation(line: 377, column: 6, scope: !4702, inlinedAt: !4529)
!4702 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 377, column: 6)
!4703 = !DILocation(line: 377, column: 11, scope: !4702, inlinedAt: !4529)
!4704 = !DILocation(line: 377, column: 6, scope: !4525, inlinedAt: !4529)
!4705 = !DILocation(line: 377, column: 32, scope: !4702, inlinedAt: !4529)
!4706 = !DILocation(line: 378, column: 6, scope: !4707, inlinedAt: !4529)
!4707 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 378, column: 6)
!4708 = !DILocation(line: 378, column: 11, scope: !4707, inlinedAt: !4529)
!4709 = !DILocation(line: 378, column: 6, scope: !4525, inlinedAt: !4529)
!4710 = !DILocation(line: 378, column: 32, scope: !4707, inlinedAt: !4529)
!4711 = !DILocation(line: 379, column: 6, scope: !4712, inlinedAt: !4529)
!4712 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 379, column: 6)
!4713 = !DILocation(line: 379, column: 11, scope: !4712, inlinedAt: !4529)
!4714 = !DILocation(line: 379, column: 6, scope: !4525, inlinedAt: !4529)
!4715 = !DILocation(line: 379, column: 33, scope: !4712, inlinedAt: !4529)
!4716 = !DILocation(line: 380, column: 6, scope: !4717, inlinedAt: !4529)
!4717 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 380, column: 6)
!4718 = !DILocation(line: 380, column: 11, scope: !4717, inlinedAt: !4529)
!4719 = !DILocation(line: 380, column: 6, scope: !4525, inlinedAt: !4529)
!4720 = !DILocation(line: 380, column: 33, scope: !4717, inlinedAt: !4529)
!4721 = !DILocation(line: 381, column: 6, scope: !4722, inlinedAt: !4529)
!4722 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 381, column: 6)
!4723 = !DILocation(line: 381, column: 11, scope: !4722, inlinedAt: !4529)
!4724 = !DILocation(line: 381, column: 6, scope: !4525, inlinedAt: !4529)
!4725 = !DILocation(line: 381, column: 33, scope: !4722, inlinedAt: !4529)
!4726 = !DILocation(line: 382, column: 2, scope: !4727, inlinedAt: !4529)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !3743, line: 382, column: 2)
!4728 = distinct !DILexicalBlock(scope: !4525, file: !3743, line: 382, column: 2)
!4729 = !{i32 -2142813726, i32 -2142813697, i32 -2142813651, i32 -2142813593, i32 -2142813539, i32 -2142813485, i32 -2142813430, i32 -2142813399}
!4730 = !DILocation(line: 382, column: 2, scope: !4731, inlinedAt: !4529)
!4731 = distinct !DILexicalBlock(scope: !4732, file: !3743, line: 382, column: 2)
!4732 = distinct !DILexicalBlock(scope: !4728, file: !3743, line: 382, column: 2)
!4733 = !{i32 -2142812956, i32 -2142812949, i32 -2142812895, i32 -2142812864, i32 -2142812834}
!4734 = !DILocation(line: 382, column: 2, scope: !4732, inlinedAt: !4529)
!4735 = !DILocation(line: 386, column: 1, scope: !4525, inlinedAt: !4529)
!4736 = !DILocation(line: 547, column: 9, scope: !4508, inlinedAt: !4511)
!4737 = !DILocation(line: 549, column: 8, scope: !4738, inlinedAt: !4511)
!4738 = distinct !DILexicalBlock(scope: !4508, file: !3743, line: 549, column: 7)
!4739 = !DILocation(line: 549, column: 7, scope: !4508, inlinedAt: !4511)
!4740 = !DILocation(line: 550, column: 4, scope: !4738, inlinedAt: !4511)
!4741 = !DILocation(line: 553, column: 33, scope: !4508, inlinedAt: !4511)
!4742 = !DILocation(line: 325, column: 6, scope: !4743, inlinedAt: !4523)
!4743 = distinct !DILexicalBlock(scope: !4519, file: !3743, line: 325, column: 6)
!4744 = !DILocation(line: 325, column: 6, scope: !4519, inlinedAt: !4523)
!4745 = !DILocation(line: 326, column: 3, scope: !4743, inlinedAt: !4523)
!4746 = !DILocation(line: 332, column: 9, scope: !4519, inlinedAt: !4523)
!4747 = !DILocation(line: 332, column: 15, scope: !4519, inlinedAt: !4523)
!4748 = !DILocation(line: 332, column: 2, scope: !4519, inlinedAt: !4523)
!4749 = !DILocation(line: 336, column: 1, scope: !4519, inlinedAt: !4523)
!4750 = !DILocation(line: 553, column: 5, scope: !4508, inlinedAt: !4511)
!4751 = !DILocation(line: 553, column: 41, scope: !4508, inlinedAt: !4511)
!4752 = !DILocation(line: 554, column: 5, scope: !4508, inlinedAt: !4511)
!4753 = !DILocation(line: 554, column: 12, scope: !4508, inlinedAt: !4511)
!4754 = !DILocation(line: 448, column: 31, scope: !4503, inlinedAt: !4507)
!4755 = !DILocation(line: 448, column: 34, scope: !4503, inlinedAt: !4507)
!4756 = !DILocation(line: 448, column: 14, scope: !4503, inlinedAt: !4507)
!4757 = !DILocation(line: 450, column: 22, scope: !4503, inlinedAt: !4507)
!4758 = !DILocation(line: 450, column: 25, scope: !4503, inlinedAt: !4507)
!4759 = !DILocation(line: 450, column: 30, scope: !4503, inlinedAt: !4507)
!4760 = !DILocation(line: 450, column: 36, scope: !4503, inlinedAt: !4507)
!4761 = !DILocation(line: 450, column: 8, scope: !4503, inlinedAt: !4507)
!4762 = !DILocation(line: 450, column: 6, scope: !4503, inlinedAt: !4507)
!4763 = !DILocation(line: 451, column: 9, scope: !4503, inlinedAt: !4507)
!4764 = !DILocation(line: 552, column: 3, scope: !4508, inlinedAt: !4511)
!4765 = !DILocation(line: 557, column: 19, scope: !4510, inlinedAt: !4511)
!4766 = !DILocation(line: 557, column: 25, scope: !4510, inlinedAt: !4511)
!4767 = !DILocation(line: 557, column: 9, scope: !4510, inlinedAt: !4511)
!4768 = !DILocation(line: 557, column: 2, scope: !4510, inlinedAt: !4511)
!4769 = !DILocation(line: 558, column: 1, scope: !4510, inlinedAt: !4511)
!4770 = !DILocation(line: 664, column: 2, scope: !4499)
!4771 = distinct !DISubprogram(name: "kcalloc", scope: !3743, file: !3743, line: 601, type: !4772, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!53, !442, !442, !616}
!4774 = !DILocalVariable(name: "n", arg: 1, scope: !4771, file: !3743, line: 601, type: !442)
!4775 = !DILocation(line: 601, column: 36, scope: !4771)
!4776 = !DILocalVariable(name: "size", arg: 2, scope: !4771, file: !3743, line: 601, type: !442)
!4777 = !DILocation(line: 601, column: 46, scope: !4771)
!4778 = !DILocalVariable(name: "flags", arg: 3, scope: !4771, file: !3743, line: 601, type: !616)
!4779 = !DILocation(line: 601, column: 58, scope: !4771)
!4780 = !DILocation(line: 603, column: 23, scope: !4771)
!4781 = !DILocation(line: 603, column: 26, scope: !4771)
!4782 = !DILocation(line: 603, column: 32, scope: !4771)
!4783 = !DILocation(line: 603, column: 38, scope: !4771)
!4784 = !DILocation(line: 603, column: 9, scope: !4771)
!4785 = !DILocation(line: 603, column: 2, scope: !4771)
!4786 = distinct !DISubprogram(name: "__set_bit", scope: !3977, file: !3977, line: 25, type: !4787, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{null, !402, !4789}
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!4790 = !DILocalVariable(name: "nr", arg: 1, scope: !4791, file: !3985, line: 66, type: !402)
!4791 = distinct !DISubprogram(name: "arch___set_bit", scope: !3985, file: !3985, line: 66, type: !4787, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4792 = !DILocation(line: 66, column: 21, scope: !4791, inlinedAt: !4793)
!4793 = distinct !DILocation(line: 28, column: 2, scope: !4786)
!4794 = !DILocalVariable(name: "addr", arg: 2, scope: !4791, file: !3985, line: 66, type: !4789)
!4795 = !DILocation(line: 66, column: 49, scope: !4791, inlinedAt: !4793)
!4796 = !DILocalVariable(name: "v", arg: 1, scope: !4797, file: !4000, line: 39, type: !4003)
!4797 = distinct !DISubprogram(name: "instrument_write", scope: !4000, file: !4000, line: 39, type: !4001, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4798 = !DILocation(line: 39, column: 67, scope: !4797, inlinedAt: !4799)
!4799 = distinct !DILocation(line: 27, column: 2, scope: !4786)
!4800 = !DILocalVariable(name: "size", arg: 2, scope: !4797, file: !4000, line: 39, type: !442)
!4801 = !DILocation(line: 39, column: 77, scope: !4797, inlinedAt: !4799)
!4802 = !DILocalVariable(name: "nr", arg: 1, scope: !4786, file: !3977, line: 25, type: !402)
!4803 = !DILocation(line: 25, column: 35, scope: !4786)
!4804 = !DILocalVariable(name: "addr", arg: 2, scope: !4786, file: !3977, line: 25, type: !4789)
!4805 = !DILocation(line: 25, column: 63, scope: !4786)
!4806 = !DILocation(line: 27, column: 19, scope: !4786)
!4807 = !DILocation(line: 27, column: 26, scope: !4786)
!4808 = !DILocation(line: 27, column: 24, scope: !4786)
!4809 = !DILocation(line: 41, column: 20, scope: !4797, inlinedAt: !4799)
!4810 = !DILocation(line: 41, column: 23, scope: !4797, inlinedAt: !4799)
!4811 = !DILocation(line: 41, column: 2, scope: !4797, inlinedAt: !4799)
!4812 = !DILocation(line: 42, column: 2, scope: !4797, inlinedAt: !4799)
!4813 = !DILocation(line: 28, column: 17, scope: !4786)
!4814 = !DILocation(line: 28, column: 21, scope: !4786)
!4815 = !DILocation(line: 68, column: 44, scope: !4791, inlinedAt: !4793)
!4816 = !DILocation(line: 68, column: 56, scope: !4791, inlinedAt: !4793)
!4817 = !DILocation(line: 68, column: 2, scope: !4791, inlinedAt: !4793)
!4818 = !{i32 -2146605019}
!4819 = !DILocation(line: 29, column: 1, scope: !4786)
!4820 = distinct !DISubprogram(name: "input_ff_destroy", scope: !3, file: !3, line: 365, type: !2952, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4821 = !DILocalVariable(name: "dev", arg: 1, scope: !4820, file: !3, line: 365, type: !7)
!4822 = !DILocation(line: 365, column: 41, scope: !4820)
!4823 = !DILocalVariable(name: "ff", scope: !4820, file: !3, line: 367, type: !80)
!4824 = !DILocation(line: 367, column: 20, scope: !4820)
!4825 = !DILocation(line: 367, column: 25, scope: !4820)
!4826 = !DILocation(line: 367, column: 30, scope: !4820)
!4827 = !DILocation(line: 369, column: 21, scope: !4820)
!4828 = !DILocation(line: 369, column: 26, scope: !4820)
!4829 = !DILocation(line: 369, column: 2, scope: !4820)
!4830 = !DILocation(line: 370, column: 6, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 370, column: 6)
!4832 = !DILocation(line: 370, column: 6, scope: !4820)
!4833 = !DILocation(line: 371, column: 7, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 371, column: 7)
!4835 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 370, column: 10)
!4836 = !DILocation(line: 371, column: 11, scope: !4834)
!4837 = !DILocation(line: 371, column: 7, scope: !4835)
!4838 = !DILocation(line: 372, column: 4, scope: !4834)
!4839 = !DILocation(line: 372, column: 8, scope: !4834)
!4840 = !DILocation(line: 372, column: 16, scope: !4834)
!4841 = !DILocation(line: 373, column: 9, scope: !4835)
!4842 = !DILocation(line: 373, column: 13, scope: !4835)
!4843 = !DILocation(line: 373, column: 3, scope: !4835)
!4844 = !DILocation(line: 374, column: 9, scope: !4835)
!4845 = !DILocation(line: 374, column: 13, scope: !4835)
!4846 = !DILocation(line: 374, column: 3, scope: !4835)
!4847 = !DILocation(line: 375, column: 9, scope: !4835)
!4848 = !DILocation(line: 375, column: 3, scope: !4835)
!4849 = !DILocation(line: 376, column: 3, scope: !4835)
!4850 = !DILocation(line: 376, column: 8, scope: !4835)
!4851 = !DILocation(line: 376, column: 11, scope: !4835)
!4852 = !DILocation(line: 377, column: 2, scope: !4835)
!4853 = !DILocation(line: 378, column: 1, scope: !4820)
!4854 = distinct !DISubprogram(name: "__clear_bit", scope: !3977, file: !3977, line: 40, type: !4787, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4855 = !DILocalVariable(name: "nr", arg: 1, scope: !4856, file: !3985, line: 92, type: !402)
!4856 = distinct !DISubprogram(name: "arch___clear_bit", scope: !3985, file: !3985, line: 92, type: !4787, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4857 = !DILocation(line: 92, column: 23, scope: !4856, inlinedAt: !4858)
!4858 = distinct !DILocation(line: 43, column: 2, scope: !4854)
!4859 = !DILocalVariable(name: "addr", arg: 2, scope: !4856, file: !3985, line: 92, type: !4789)
!4860 = !DILocation(line: 92, column: 51, scope: !4856, inlinedAt: !4858)
!4861 = !DILocation(line: 39, column: 67, scope: !4797, inlinedAt: !4862)
!4862 = distinct !DILocation(line: 42, column: 2, scope: !4854)
!4863 = !DILocation(line: 39, column: 77, scope: !4797, inlinedAt: !4862)
!4864 = !DILocalVariable(name: "nr", arg: 1, scope: !4854, file: !3977, line: 40, type: !402)
!4865 = !DILocation(line: 40, column: 37, scope: !4854)
!4866 = !DILocalVariable(name: "addr", arg: 2, scope: !4854, file: !3977, line: 40, type: !4789)
!4867 = !DILocation(line: 40, column: 65, scope: !4854)
!4868 = !DILocation(line: 42, column: 19, scope: !4854)
!4869 = !DILocation(line: 42, column: 26, scope: !4854)
!4870 = !DILocation(line: 42, column: 24, scope: !4854)
!4871 = !DILocation(line: 41, column: 20, scope: !4797, inlinedAt: !4862)
!4872 = !DILocation(line: 41, column: 23, scope: !4797, inlinedAt: !4862)
!4873 = !DILocation(line: 41, column: 2, scope: !4797, inlinedAt: !4862)
!4874 = !DILocation(line: 42, column: 2, scope: !4797, inlinedAt: !4862)
!4875 = !DILocation(line: 43, column: 19, scope: !4854)
!4876 = !DILocation(line: 43, column: 23, scope: !4854)
!4877 = !DILocation(line: 94, column: 44, scope: !4856, inlinedAt: !4858)
!4878 = !DILocation(line: 94, column: 56, scope: !4856, inlinedAt: !4858)
!4879 = !DILocation(line: 94, column: 2, scope: !4856, inlinedAt: !4858)
!4880 = !{i32 -2146603820}
!4881 = !DILocation(line: 44, column: 1, scope: !4854)
!4882 = distinct !DISubprogram(name: "kasan_check_read", scope: !4883, file: !4883, line: 34, type: !4884, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4883 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!352, !4003, !49}
!4886 = !DILocalVariable(name: "p", arg: 1, scope: !4882, file: !4883, line: 34, type: !4003)
!4887 = !DILocation(line: 34, column: 58, scope: !4882)
!4888 = !DILocalVariable(name: "size", arg: 2, scope: !4882, file: !4883, line: 34, type: !49)
!4889 = !DILocation(line: 34, column: 74, scope: !4882)
!4890 = !DILocation(line: 36, column: 2, scope: !4882)
!4891 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4892, file: !4892, line: 178, type: !4893, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4892 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!4893 = !DISubroutineType(types: !4894)
!4894 = !{null, !4003, !442, !6}
!4895 = !DILocalVariable(name: "ptr", arg: 1, scope: !4891, file: !4892, line: 178, type: !4003)
!4896 = !DILocation(line: 178, column: 60, scope: !4891)
!4897 = !DILocalVariable(name: "size", arg: 2, scope: !4891, file: !4892, line: 178, type: !442)
!4898 = !DILocation(line: 178, column: 72, scope: !4891)
!4899 = !DILocalVariable(name: "type", arg: 3, scope: !4891, file: !4892, line: 179, type: !6)
!4900 = !DILocation(line: 179, column: 15, scope: !4891)
!4901 = !DILocation(line: 179, column: 23, scope: !4891)
!4902 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4903, file: !4903, line: 656, type: !1668, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4903 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4904 = !DILocalVariable(name: "__edi", scope: !4905, file: !4903, line: 658, type: !30)
!4905 = distinct !DILexicalBlock(scope: !4902, file: !4903, line: 658, column: 2)
!4906 = !DILocation(line: 658, column: 2, scope: !4905)
!4907 = !DILocalVariable(name: "__esi", scope: !4905, file: !4903, line: 658, type: !30)
!4908 = !DILocalVariable(name: "__edx", scope: !4905, file: !4903, line: 658, type: !30)
!4909 = !DILocalVariable(name: "__ecx", scope: !4905, file: !4903, line: 658, type: !30)
!4910 = !DILocalVariable(name: "__eax", scope: !4905, file: !4903, line: 658, type: !30)
!4911 = !{i32 -2145865627, i32 -2145864895, i32 -2145864661, i32 -2145864610, i32 -2145864582, i32 -2145864557, i32 -2145864873, i32 -2145864860, i32 -2145864422, i32 -2145864303, i32 -2145864768, i32 -2145864741, i32 -2145864713, i32 -2145864683}
!4912 = !DILocation(line: 659, column: 1, scope: !4902)
!4913 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4903, file: !4903, line: 661, type: !1668, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4914 = !DILocalVariable(name: "__edi", scope: !4915, file: !4903, line: 663, type: !30)
!4915 = distinct !DILexicalBlock(scope: !4913, file: !4903, line: 663, column: 2)
!4916 = !DILocation(line: 663, column: 2, scope: !4915)
!4917 = !DILocalVariable(name: "__esi", scope: !4915, file: !4903, line: 663, type: !30)
!4918 = !DILocalVariable(name: "__edx", scope: !4915, file: !4903, line: 663, type: !30)
!4919 = !DILocalVariable(name: "__ecx", scope: !4915, file: !4903, line: 663, type: !30)
!4920 = !DILocalVariable(name: "__eax", scope: !4915, file: !4903, line: 663, type: !30)
!4921 = !{i32 -2145863043, i32 -2145862313, i32 -2145862079, i32 -2145862028, i32 -2145862000, i32 -2145861975, i32 -2145862291, i32 -2145862278, i32 -2145861840, i32 -2145861721, i32 -2145862186, i32 -2145862159, i32 -2145862131, i32 -2145862101}
!4922 = !DILocation(line: 664, column: 1, scope: !4913)
!4923 = distinct !DISubprogram(name: "get_order", scope: !4924, file: !4924, line: 29, type: !4925, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4924 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!6, !30}
!4927 = !DILocalVariable(name: "x", arg: 1, scope: !4928, file: !3985, line: 366, type: !282)
!4928 = distinct !DISubprogram(name: "fls64", scope: !3985, file: !3985, line: 366, type: !4929, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!6, !282}
!4931 = !DILocation(line: 366, column: 40, scope: !4928, inlinedAt: !4932)
!4932 = distinct !DILocation(line: 46, column: 9, scope: !4923)
!4933 = !DILocalVariable(name: "bitpos", scope: !4928, file: !3985, line: 368, type: !6)
!4934 = !DILocation(line: 368, column: 6, scope: !4928, inlinedAt: !4932)
!4935 = !DILocalVariable(name: "size", arg: 1, scope: !4923, file: !4924, line: 29, type: !30)
!4936 = !DILocation(line: 29, column: 63, scope: !4923)
!4937 = !DILocation(line: 31, column: 27, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4923, file: !4924, line: 31, column: 6)
!4939 = !DILocation(line: 31, column: 6, scope: !4938)
!4940 = !DILocation(line: 31, column: 6, scope: !4923)
!4941 = !DILocation(line: 32, column: 8, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4943, file: !4924, line: 32, column: 7)
!4943 = distinct !DILexicalBlock(scope: !4938, file: !4924, line: 31, column: 34)
!4944 = !DILocation(line: 32, column: 7, scope: !4943)
!4945 = !DILocation(line: 33, column: 4, scope: !4942)
!4946 = !DILocation(line: 35, column: 7, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4943, file: !4924, line: 35, column: 7)
!4948 = !DILocation(line: 35, column: 12, scope: !4947)
!4949 = !DILocation(line: 35, column: 7, scope: !4943)
!4950 = !DILocation(line: 36, column: 4, scope: !4947)
!4951 = !DILocation(line: 38, column: 10, scope: !4943)
!4952 = !DILocation(line: 38, column: 28, scope: !4943)
!4953 = !DILocation(line: 38, column: 41, scope: !4943)
!4954 = !DILocation(line: 38, column: 3, scope: !4943)
!4955 = !DILocation(line: 41, column: 6, scope: !4923)
!4956 = !DILocation(line: 42, column: 7, scope: !4923)
!4957 = !DILocation(line: 46, column: 15, scope: !4923)
!4958 = !DILocation(line: 374, column: 2, scope: !4928, inlinedAt: !4932)
!4959 = !DILocation(line: 376, column: 14, scope: !4928, inlinedAt: !4932)
!4960 = !{i32 877195}
!4961 = !DILocation(line: 377, column: 9, scope: !4928, inlinedAt: !4932)
!4962 = !DILocation(line: 377, column: 16, scope: !4928, inlinedAt: !4932)
!4963 = !DILocation(line: 46, column: 2, scope: !4923)
!4964 = !DILocation(line: 48, column: 1, scope: !4923)
!4965 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4966, file: !4966, line: 30, type: !4967, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4966 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!6, !281}
!4969 = !DILocation(line: 366, column: 40, scope: !4928, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 32, column: 9, scope: !4965)
!4971 = !DILocation(line: 368, column: 6, scope: !4928, inlinedAt: !4970)
!4972 = !DILocalVariable(name: "n", arg: 1, scope: !4965, file: !4966, line: 30, type: !281)
!4973 = !DILocation(line: 30, column: 21, scope: !4965)
!4974 = !DILocation(line: 32, column: 15, scope: !4965)
!4975 = !DILocation(line: 374, column: 2, scope: !4928, inlinedAt: !4970)
!4976 = !DILocation(line: 376, column: 14, scope: !4928, inlinedAt: !4970)
!4977 = !DILocation(line: 377, column: 9, scope: !4928, inlinedAt: !4970)
!4978 = !DILocation(line: 377, column: 16, scope: !4928, inlinedAt: !4970)
!4979 = !DILocation(line: 32, column: 18, scope: !4965)
!4980 = !DILocation(line: 32, column: 2, scope: !4965)
!4981 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4982, file: !4982, line: 137, type: !4983, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4982 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!53, !806, !3185, !442, !616}
!4985 = !DILocalVariable(name: "s", arg: 1, scope: !4981, file: !4982, line: 137, type: !806)
!4986 = !DILocation(line: 137, column: 54, scope: !4981)
!4987 = !DILocalVariable(name: "object", arg: 2, scope: !4981, file: !4982, line: 137, type: !3185)
!4988 = !DILocation(line: 137, column: 69, scope: !4981)
!4989 = !DILocalVariable(name: "size", arg: 3, scope: !4981, file: !4982, line: 138, type: !442)
!4990 = !DILocation(line: 138, column: 12, scope: !4981)
!4991 = !DILocalVariable(name: "flags", arg: 4, scope: !4981, file: !4982, line: 138, type: !616)
!4992 = !DILocation(line: 138, column: 24, scope: !4981)
!4993 = !DILocation(line: 140, column: 17, scope: !4981)
!4994 = !DILocation(line: 140, column: 2, scope: !4981)
!4995 = distinct !DISubprogram(name: "kmalloc_array", scope: !3743, file: !3743, line: 584, type: !4772, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!4996 = !DILocation(line: 445, column: 72, scope: !4503, inlinedAt: !4997)
!4997 = distinct !DILocation(line: 552, column: 10, scope: !4508, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 591, column: 10, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4995, file: !3743, line: 590, column: 6)
!5000 = !DILocation(line: 446, column: 9, scope: !4503, inlinedAt: !4997)
!5001 = !DILocation(line: 446, column: 23, scope: !4503, inlinedAt: !4997)
!5002 = !DILocation(line: 448, column: 8, scope: !4503, inlinedAt: !4997)
!5003 = !DILocation(line: 318, column: 67, scope: !4519, inlinedAt: !5004)
!5004 = distinct !DILocation(line: 553, column: 20, scope: !4508, inlinedAt: !4998)
!5005 = !DILocation(line: 346, column: 58, scope: !4525, inlinedAt: !5006)
!5006 = distinct !DILocation(line: 547, column: 11, scope: !4508, inlinedAt: !4998)
!5007 = !DILocation(line: 472, column: 28, scope: !4531, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 481, column: 9, scope: !4536, inlinedAt: !5009)
!5009 = distinct !DILocation(line: 545, column: 11, scope: !4538, inlinedAt: !4998)
!5010 = !DILocation(line: 472, column: 40, scope: !4531, inlinedAt: !5008)
!5011 = !DILocation(line: 472, column: 60, scope: !4531, inlinedAt: !5008)
!5012 = !DILocation(line: 478, column: 51, scope: !4536, inlinedAt: !5009)
!5013 = !DILocation(line: 478, column: 63, scope: !4536, inlinedAt: !5009)
!5014 = !DILocation(line: 480, column: 15, scope: !4536, inlinedAt: !5009)
!5015 = !DILocation(line: 538, column: 45, scope: !4510, inlinedAt: !4998)
!5016 = !DILocation(line: 538, column: 57, scope: !4510, inlinedAt: !4998)
!5017 = !DILocation(line: 542, column: 16, scope: !4508, inlinedAt: !4998)
!5018 = !DILocalVariable(name: "n", arg: 1, scope: !4995, file: !3743, line: 584, type: !442)
!5019 = !DILocation(line: 584, column: 42, scope: !4995)
!5020 = !DILocalVariable(name: "size", arg: 2, scope: !4995, file: !3743, line: 584, type: !442)
!5021 = !DILocation(line: 584, column: 52, scope: !4995)
!5022 = !DILocalVariable(name: "flags", arg: 3, scope: !4995, file: !3743, line: 584, type: !616)
!5023 = !DILocation(line: 584, column: 64, scope: !4995)
!5024 = !DILocalVariable(name: "bytes", scope: !4995, file: !3743, line: 586, type: !442)
!5025 = !DILocation(line: 586, column: 9, scope: !4995)
!5026 = !DILocalVariable(name: "__a", scope: !5027, file: !3743, line: 588, type: !442)
!5027 = distinct !DILexicalBlock(scope: !5028, file: !3743, line: 588, column: 6)
!5028 = distinct !DILexicalBlock(scope: !4995, file: !3743, line: 588, column: 6)
!5029 = !DILocation(line: 588, column: 6, scope: !5027)
!5030 = !DILocalVariable(name: "__b", scope: !5027, file: !3743, line: 588, type: !442)
!5031 = !DILocalVariable(name: "__d", scope: !5027, file: !3743, line: 588, type: !5032)
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!5033 = !DILocation(line: 588, column: 6, scope: !5028)
!5034 = !DILocation(line: 588, column: 6, scope: !4995)
!5035 = !DILocation(line: 589, column: 3, scope: !5028)
!5036 = !DILocation(line: 590, column: 27, scope: !4999)
!5037 = !DILocation(line: 590, column: 6, scope: !4999)
!5038 = !DILocation(line: 590, column: 30, scope: !4999)
!5039 = !DILocation(line: 590, column: 54, scope: !4999)
!5040 = !DILocation(line: 590, column: 33, scope: !4999)
!5041 = !DILocation(line: 590, column: 6, scope: !4995)
!5042 = !DILocation(line: 591, column: 18, scope: !4999)
!5043 = !DILocation(line: 591, column: 25, scope: !4999)
!5044 = !DILocation(line: 540, column: 27, scope: !4509, inlinedAt: !4998)
!5045 = !DILocation(line: 540, column: 6, scope: !4509, inlinedAt: !4998)
!5046 = !DILocation(line: 540, column: 6, scope: !4510, inlinedAt: !4998)
!5047 = !DILocation(line: 544, column: 7, scope: !4538, inlinedAt: !4998)
!5048 = !DILocation(line: 544, column: 12, scope: !4538, inlinedAt: !4998)
!5049 = !DILocation(line: 544, column: 7, scope: !4508, inlinedAt: !4998)
!5050 = !DILocation(line: 545, column: 25, scope: !4538, inlinedAt: !4998)
!5051 = !DILocation(line: 545, column: 31, scope: !4538, inlinedAt: !4998)
!5052 = !DILocation(line: 480, column: 33, scope: !4536, inlinedAt: !5009)
!5053 = !DILocation(line: 480, column: 23, scope: !4536, inlinedAt: !5009)
!5054 = !DILocation(line: 481, column: 29, scope: !4536, inlinedAt: !5009)
!5055 = !DILocation(line: 481, column: 35, scope: !4536, inlinedAt: !5009)
!5056 = !DILocation(line: 481, column: 42, scope: !4536, inlinedAt: !5009)
!5057 = !DILocation(line: 474, column: 23, scope: !4531, inlinedAt: !5008)
!5058 = !DILocation(line: 474, column: 29, scope: !4531, inlinedAt: !5008)
!5059 = !DILocation(line: 474, column: 36, scope: !4531, inlinedAt: !5008)
!5060 = !DILocation(line: 474, column: 9, scope: !4531, inlinedAt: !5008)
!5061 = !DILocation(line: 545, column: 4, scope: !4538, inlinedAt: !4998)
!5062 = !DILocation(line: 547, column: 25, scope: !4508, inlinedAt: !4998)
!5063 = !DILocation(line: 348, column: 7, scope: !4582, inlinedAt: !5006)
!5064 = !DILocation(line: 348, column: 6, scope: !4525, inlinedAt: !5006)
!5065 = !DILocation(line: 349, column: 3, scope: !4582, inlinedAt: !5006)
!5066 = !DILocation(line: 351, column: 6, scope: !4586, inlinedAt: !5006)
!5067 = !DILocation(line: 351, column: 11, scope: !4586, inlinedAt: !5006)
!5068 = !DILocation(line: 351, column: 6, scope: !4525, inlinedAt: !5006)
!5069 = !DILocation(line: 352, column: 3, scope: !4586, inlinedAt: !5006)
!5070 = !DILocation(line: 354, column: 32, scope: !4591, inlinedAt: !5006)
!5071 = !DILocation(line: 354, column: 37, scope: !4591, inlinedAt: !5006)
!5072 = !DILocation(line: 354, column: 42, scope: !4591, inlinedAt: !5006)
!5073 = !DILocation(line: 354, column: 45, scope: !4591, inlinedAt: !5006)
!5074 = !DILocation(line: 354, column: 50, scope: !4591, inlinedAt: !5006)
!5075 = !DILocation(line: 354, column: 6, scope: !4525, inlinedAt: !5006)
!5076 = !DILocation(line: 355, column: 3, scope: !4591, inlinedAt: !5006)
!5077 = !DILocation(line: 356, column: 32, scope: !4599, inlinedAt: !5006)
!5078 = !DILocation(line: 356, column: 37, scope: !4599, inlinedAt: !5006)
!5079 = !DILocation(line: 356, column: 43, scope: !4599, inlinedAt: !5006)
!5080 = !DILocation(line: 356, column: 46, scope: !4599, inlinedAt: !5006)
!5081 = !DILocation(line: 356, column: 51, scope: !4599, inlinedAt: !5006)
!5082 = !DILocation(line: 356, column: 6, scope: !4525, inlinedAt: !5006)
!5083 = !DILocation(line: 357, column: 3, scope: !4599, inlinedAt: !5006)
!5084 = !DILocation(line: 358, column: 6, scope: !4607, inlinedAt: !5006)
!5085 = !DILocation(line: 358, column: 11, scope: !4607, inlinedAt: !5006)
!5086 = !DILocation(line: 358, column: 6, scope: !4525, inlinedAt: !5006)
!5087 = !DILocation(line: 358, column: 26, scope: !4607, inlinedAt: !5006)
!5088 = !DILocation(line: 359, column: 6, scope: !4612, inlinedAt: !5006)
!5089 = !DILocation(line: 359, column: 11, scope: !4612, inlinedAt: !5006)
!5090 = !DILocation(line: 359, column: 6, scope: !4525, inlinedAt: !5006)
!5091 = !DILocation(line: 359, column: 26, scope: !4612, inlinedAt: !5006)
!5092 = !DILocation(line: 360, column: 6, scope: !4617, inlinedAt: !5006)
!5093 = !DILocation(line: 360, column: 11, scope: !4617, inlinedAt: !5006)
!5094 = !DILocation(line: 360, column: 6, scope: !4525, inlinedAt: !5006)
!5095 = !DILocation(line: 360, column: 26, scope: !4617, inlinedAt: !5006)
!5096 = !DILocation(line: 361, column: 6, scope: !4622, inlinedAt: !5006)
!5097 = !DILocation(line: 361, column: 11, scope: !4622, inlinedAt: !5006)
!5098 = !DILocation(line: 361, column: 6, scope: !4525, inlinedAt: !5006)
!5099 = !DILocation(line: 361, column: 26, scope: !4622, inlinedAt: !5006)
!5100 = !DILocation(line: 362, column: 6, scope: !4627, inlinedAt: !5006)
!5101 = !DILocation(line: 362, column: 11, scope: !4627, inlinedAt: !5006)
!5102 = !DILocation(line: 362, column: 6, scope: !4525, inlinedAt: !5006)
!5103 = !DILocation(line: 362, column: 26, scope: !4627, inlinedAt: !5006)
!5104 = !DILocation(line: 363, column: 6, scope: !4632, inlinedAt: !5006)
!5105 = !DILocation(line: 363, column: 11, scope: !4632, inlinedAt: !5006)
!5106 = !DILocation(line: 363, column: 6, scope: !4525, inlinedAt: !5006)
!5107 = !DILocation(line: 363, column: 26, scope: !4632, inlinedAt: !5006)
!5108 = !DILocation(line: 364, column: 6, scope: !4637, inlinedAt: !5006)
!5109 = !DILocation(line: 364, column: 11, scope: !4637, inlinedAt: !5006)
!5110 = !DILocation(line: 364, column: 6, scope: !4525, inlinedAt: !5006)
!5111 = !DILocation(line: 364, column: 26, scope: !4637, inlinedAt: !5006)
!5112 = !DILocation(line: 365, column: 6, scope: !4642, inlinedAt: !5006)
!5113 = !DILocation(line: 365, column: 11, scope: !4642, inlinedAt: !5006)
!5114 = !DILocation(line: 365, column: 6, scope: !4525, inlinedAt: !5006)
!5115 = !DILocation(line: 365, column: 26, scope: !4642, inlinedAt: !5006)
!5116 = !DILocation(line: 366, column: 6, scope: !4647, inlinedAt: !5006)
!5117 = !DILocation(line: 366, column: 11, scope: !4647, inlinedAt: !5006)
!5118 = !DILocation(line: 366, column: 6, scope: !4525, inlinedAt: !5006)
!5119 = !DILocation(line: 366, column: 26, scope: !4647, inlinedAt: !5006)
!5120 = !DILocation(line: 367, column: 6, scope: !4652, inlinedAt: !5006)
!5121 = !DILocation(line: 367, column: 11, scope: !4652, inlinedAt: !5006)
!5122 = !DILocation(line: 367, column: 6, scope: !4525, inlinedAt: !5006)
!5123 = !DILocation(line: 367, column: 26, scope: !4652, inlinedAt: !5006)
!5124 = !DILocation(line: 368, column: 6, scope: !4657, inlinedAt: !5006)
!5125 = !DILocation(line: 368, column: 11, scope: !4657, inlinedAt: !5006)
!5126 = !DILocation(line: 368, column: 6, scope: !4525, inlinedAt: !5006)
!5127 = !DILocation(line: 368, column: 26, scope: !4657, inlinedAt: !5006)
!5128 = !DILocation(line: 369, column: 6, scope: !4662, inlinedAt: !5006)
!5129 = !DILocation(line: 369, column: 11, scope: !4662, inlinedAt: !5006)
!5130 = !DILocation(line: 369, column: 6, scope: !4525, inlinedAt: !5006)
!5131 = !DILocation(line: 369, column: 26, scope: !4662, inlinedAt: !5006)
!5132 = !DILocation(line: 370, column: 6, scope: !4667, inlinedAt: !5006)
!5133 = !DILocation(line: 370, column: 11, scope: !4667, inlinedAt: !5006)
!5134 = !DILocation(line: 370, column: 6, scope: !4525, inlinedAt: !5006)
!5135 = !DILocation(line: 370, column: 26, scope: !4667, inlinedAt: !5006)
!5136 = !DILocation(line: 371, column: 6, scope: !4672, inlinedAt: !5006)
!5137 = !DILocation(line: 371, column: 11, scope: !4672, inlinedAt: !5006)
!5138 = !DILocation(line: 371, column: 6, scope: !4525, inlinedAt: !5006)
!5139 = !DILocation(line: 371, column: 26, scope: !4672, inlinedAt: !5006)
!5140 = !DILocation(line: 372, column: 6, scope: !4677, inlinedAt: !5006)
!5141 = !DILocation(line: 372, column: 11, scope: !4677, inlinedAt: !5006)
!5142 = !DILocation(line: 372, column: 6, scope: !4525, inlinedAt: !5006)
!5143 = !DILocation(line: 372, column: 26, scope: !4677, inlinedAt: !5006)
!5144 = !DILocation(line: 373, column: 6, scope: !4682, inlinedAt: !5006)
!5145 = !DILocation(line: 373, column: 11, scope: !4682, inlinedAt: !5006)
!5146 = !DILocation(line: 373, column: 6, scope: !4525, inlinedAt: !5006)
!5147 = !DILocation(line: 373, column: 26, scope: !4682, inlinedAt: !5006)
!5148 = !DILocation(line: 374, column: 6, scope: !4687, inlinedAt: !5006)
!5149 = !DILocation(line: 374, column: 11, scope: !4687, inlinedAt: !5006)
!5150 = !DILocation(line: 374, column: 6, scope: !4525, inlinedAt: !5006)
!5151 = !DILocation(line: 374, column: 26, scope: !4687, inlinedAt: !5006)
!5152 = !DILocation(line: 375, column: 6, scope: !4692, inlinedAt: !5006)
!5153 = !DILocation(line: 375, column: 11, scope: !4692, inlinedAt: !5006)
!5154 = !DILocation(line: 375, column: 6, scope: !4525, inlinedAt: !5006)
!5155 = !DILocation(line: 375, column: 27, scope: !4692, inlinedAt: !5006)
!5156 = !DILocation(line: 376, column: 6, scope: !4697, inlinedAt: !5006)
!5157 = !DILocation(line: 376, column: 11, scope: !4697, inlinedAt: !5006)
!5158 = !DILocation(line: 376, column: 6, scope: !4525, inlinedAt: !5006)
!5159 = !DILocation(line: 376, column: 32, scope: !4697, inlinedAt: !5006)
!5160 = !DILocation(line: 377, column: 6, scope: !4702, inlinedAt: !5006)
!5161 = !DILocation(line: 377, column: 11, scope: !4702, inlinedAt: !5006)
!5162 = !DILocation(line: 377, column: 6, scope: !4525, inlinedAt: !5006)
!5163 = !DILocation(line: 377, column: 32, scope: !4702, inlinedAt: !5006)
!5164 = !DILocation(line: 378, column: 6, scope: !4707, inlinedAt: !5006)
!5165 = !DILocation(line: 378, column: 11, scope: !4707, inlinedAt: !5006)
!5166 = !DILocation(line: 378, column: 6, scope: !4525, inlinedAt: !5006)
!5167 = !DILocation(line: 378, column: 32, scope: !4707, inlinedAt: !5006)
!5168 = !DILocation(line: 379, column: 6, scope: !4712, inlinedAt: !5006)
!5169 = !DILocation(line: 379, column: 11, scope: !4712, inlinedAt: !5006)
!5170 = !DILocation(line: 379, column: 6, scope: !4525, inlinedAt: !5006)
!5171 = !DILocation(line: 379, column: 33, scope: !4712, inlinedAt: !5006)
!5172 = !DILocation(line: 380, column: 6, scope: !4717, inlinedAt: !5006)
!5173 = !DILocation(line: 380, column: 11, scope: !4717, inlinedAt: !5006)
!5174 = !DILocation(line: 380, column: 6, scope: !4525, inlinedAt: !5006)
!5175 = !DILocation(line: 380, column: 33, scope: !4717, inlinedAt: !5006)
!5176 = !DILocation(line: 381, column: 6, scope: !4722, inlinedAt: !5006)
!5177 = !DILocation(line: 381, column: 11, scope: !4722, inlinedAt: !5006)
!5178 = !DILocation(line: 381, column: 6, scope: !4525, inlinedAt: !5006)
!5179 = !DILocation(line: 381, column: 33, scope: !4722, inlinedAt: !5006)
!5180 = !DILocation(line: 382, column: 2, scope: !4727, inlinedAt: !5006)
!5181 = !DILocation(line: 382, column: 2, scope: !4731, inlinedAt: !5006)
!5182 = !DILocation(line: 382, column: 2, scope: !4732, inlinedAt: !5006)
!5183 = !DILocation(line: 386, column: 1, scope: !4525, inlinedAt: !5006)
!5184 = !DILocation(line: 547, column: 9, scope: !4508, inlinedAt: !4998)
!5185 = !DILocation(line: 549, column: 8, scope: !4738, inlinedAt: !4998)
!5186 = !DILocation(line: 549, column: 7, scope: !4508, inlinedAt: !4998)
!5187 = !DILocation(line: 550, column: 4, scope: !4738, inlinedAt: !4998)
!5188 = !DILocation(line: 553, column: 33, scope: !4508, inlinedAt: !4998)
!5189 = !DILocation(line: 325, column: 6, scope: !4743, inlinedAt: !5004)
!5190 = !DILocation(line: 325, column: 6, scope: !4519, inlinedAt: !5004)
!5191 = !DILocation(line: 326, column: 3, scope: !4743, inlinedAt: !5004)
!5192 = !DILocation(line: 332, column: 9, scope: !4519, inlinedAt: !5004)
!5193 = !DILocation(line: 332, column: 15, scope: !4519, inlinedAt: !5004)
!5194 = !DILocation(line: 332, column: 2, scope: !4519, inlinedAt: !5004)
!5195 = !DILocation(line: 336, column: 1, scope: !4519, inlinedAt: !5004)
!5196 = !DILocation(line: 553, column: 5, scope: !4508, inlinedAt: !4998)
!5197 = !DILocation(line: 553, column: 41, scope: !4508, inlinedAt: !4998)
!5198 = !DILocation(line: 554, column: 5, scope: !4508, inlinedAt: !4998)
!5199 = !DILocation(line: 554, column: 12, scope: !4508, inlinedAt: !4998)
!5200 = !DILocation(line: 448, column: 31, scope: !4503, inlinedAt: !4997)
!5201 = !DILocation(line: 448, column: 34, scope: !4503, inlinedAt: !4997)
!5202 = !DILocation(line: 448, column: 14, scope: !4503, inlinedAt: !4997)
!5203 = !DILocation(line: 450, column: 22, scope: !4503, inlinedAt: !4997)
!5204 = !DILocation(line: 450, column: 25, scope: !4503, inlinedAt: !4997)
!5205 = !DILocation(line: 450, column: 30, scope: !4503, inlinedAt: !4997)
!5206 = !DILocation(line: 450, column: 36, scope: !4503, inlinedAt: !4997)
!5207 = !DILocation(line: 450, column: 8, scope: !4503, inlinedAt: !4997)
!5208 = !DILocation(line: 450, column: 6, scope: !4503, inlinedAt: !4997)
!5209 = !DILocation(line: 451, column: 9, scope: !4503, inlinedAt: !4997)
!5210 = !DILocation(line: 552, column: 3, scope: !4508, inlinedAt: !4998)
!5211 = !DILocation(line: 557, column: 19, scope: !4510, inlinedAt: !4998)
!5212 = !DILocation(line: 557, column: 25, scope: !4510, inlinedAt: !4998)
!5213 = !DILocation(line: 557, column: 9, scope: !4510, inlinedAt: !4998)
!5214 = !DILocation(line: 557, column: 2, scope: !4510, inlinedAt: !4998)
!5215 = !DILocation(line: 558, column: 1, scope: !4510, inlinedAt: !4998)
!5216 = !DILocation(line: 591, column: 3, scope: !4999)
!5217 = !DILocation(line: 592, column: 19, scope: !4995)
!5218 = !DILocation(line: 592, column: 26, scope: !4995)
!5219 = !DILocation(line: 592, column: 9, scope: !4995)
!5220 = !DILocation(line: 592, column: 2, scope: !4995)
!5221 = !DILocation(line: 593, column: 1, scope: !4995)
!5222 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5223, file: !5223, line: 52, type: !5224, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!5223 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5224 = !DISubroutineType(types: !5225)
!5225 = !{!352, !352}
!5226 = !DILocalVariable(name: "overflow", arg: 1, scope: !5222, file: !5223, line: 52, type: !352)
!5227 = !DILocation(line: 52, column: 60, scope: !5222)
!5228 = !DILocation(line: 54, column: 9, scope: !5222)
!5229 = !DILocation(line: 54, column: 2, scope: !5222)
!5230 = distinct !DISubprogram(name: "kasan_check_write", scope: !4883, file: !4883, line: 38, type: !4884, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3735, retainedNodes: !203)
!5231 = !DILocalVariable(name: "p", arg: 1, scope: !5230, file: !4883, line: 38, type: !4003)
!5232 = !DILocation(line: 38, column: 59, scope: !5230)
!5233 = !DILocalVariable(name: "size", arg: 2, scope: !5230, file: !4883, line: 38, type: !49)
!5234 = !DILocation(line: 38, column: 75, scope: !5230)
!5235 = !DILocation(line: 40, column: 2, scope: !5230)
