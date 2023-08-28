; ModuleID = '../bcout/drivers/input/ff-memless.llvm.bc'
source_filename = "drivers/input/ff-memless.c"
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
%struct.lock_class_key = type {}
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
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
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
%struct.ml_device = type { i8*, [16 x %struct.ml_effect_state], i32, %struct.timer_list, %struct.input_dev*, i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* }
%struct.ml_effect_state = type { %struct.ff_effect*, i64, i32, i64, i64, i64 }
%struct.ff_constant_effect = type { i16, %struct.ff_envelope }
%struct.ff_ramp_effect = type { i16, i16, %struct.ff_envelope }
%struct.ff_rumble_effect = type { i16, i16 }

@__UNIQUE_ID_file205 = internal constant [41 x i8] c"ff_memless.file=drivers/input/ff-memless\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license206 = internal constant [23 x i8] c"ff_memless.license=GPL\00", section ".modinfo", align 1, !dbg !3774
@__UNIQUE_ID_author207 = internal constant [58 x i8] c"ff_memless.author=Anssi Hannula <anssi.hannula@gmail.com>\00", section ".modinfo", align 1, !dbg !3779
@__UNIQUE_ID_description208 = internal constant [69 x i8] c"ff_memless.description=Force feedback support for memoryless devices\00", section ".modinfo", align 1, !dbg !3784
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@jiffies = external dso_local global i64, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"\013ff_memless: invalid type in get_compatible_type()\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"\013ff_memless: invalid type in ml_combine_effects()\0A\00", align 1
@sin_table = internal constant [91 x i32] [i32 0, i32 37478757, i32 74946098, i32 112390610, i32 149800886, i32 187165532, i32 224473165, i32 261712422, i32 298871958, i32 335940455, i32 372906621, i32 409759197, i32 446486956, i32 483078710, i32 519523314, i32 555809666, i32 591926714, i32 627863454, i32 663608942, i32 699152287, i32 734482664, i32 769589311, i32 804461533, i32 839088708, i32 873460289, i32 907565806, i32 941394869, i32 974937174, i32 1008182503, i32 1041120731, i32 1073741823, i32 1106035843, i32 1137992954, i32 1169603421, i32 1200857615, i32 1231746017, i32 1262259217, i32 1292387920, i32 1322122950, i32 1351455248, i32 1380375880, i32 1408876036, i32 1436947034, i32 1464580325, i32 1491767490, i32 1518500249, i32 1544770457, i32 1570570114, i32 1595891360, i32 1620726481, i32 1645067914, i32 1668908243, i32 1692240207, i32 1715056697, i32 1737350765, i32 1759115619, i32 1780344629, i32 1801031329, i32 1821169418, i32 1840752761, i32 1859775392, i32 1878231518, i32 1896115516, i32 1913421940, i32 1930145516, i32 1946281151, i32 1961823931, i32 1976769119, i32 1991112165, i32 2004848699, i32 2017974536, i32 2030485679, i32 2042378316, i32 2053648824, i32 2064293772, i32 2074309916, i32 2083694204, i32 2092443780, i32 2100555976, i32 2108028323, i32 2114858545, i32 2121044559, i32 2126584483, i32 2131476629, i32 2135719506, i32 2139311823, i32 2142252484, i32 2144540595, i32 2146175457, i32 2147156574, i32 2147483647], align 16, !dbg !3789
@get_envelope.empty_envelope = internal constant %struct.ff_envelope zeroinitializer, align 2, !dbg !3796
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_file205, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license206, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_author207, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__UNIQUE_ID_description208, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @input_ff_create_memless(%struct.input_dev* %dev, i8* %data, i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* %play_effect) #0 !dbg !3814 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.input_dev*, align 8
  %data.addr = alloca i8*, align 8
  %play_effect.addr = alloca i32 (%struct.input_dev*, i8*, %struct.ff_effect*)*, align 8
  %ml = alloca %struct.ml_device*, align 8
  %ff = alloca %struct.ff_device*, align 8
  %error = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !3817, metadata !DIExpression()), !dbg !3818
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3819, metadata !DIExpression()), !dbg !3820
  store i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* %play_effect, i32 (%struct.input_dev*, i8*, %struct.ff_effect*)** %play_effect.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.input_dev*, i8*, %struct.ff_effect*)** %play_effect.addr, metadata !3821, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.declare(metadata %struct.ml_device** %ml, metadata !3823, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff, metadata !3825, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3827, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3829, metadata !DIExpression()), !dbg !3830
  %call = call i8* @kzalloc(i64 840, i32 3264) #10, !dbg !3831
  %0 = bitcast i8* %call to %struct.ml_device*, !dbg !3831
  store %struct.ml_device* %0, %struct.ml_device** %ml, align 8, !dbg !3832
  %1 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !3833
  %tobool = icmp ne %struct.ml_device* %1, null, !dbg !3833
  br i1 %tobool, label %if.end, label %if.then, !dbg !3835

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !3836
  br label %return, !dbg !3836

if.end:                                           ; preds = %entry
  %2 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3837
  %3 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !3838
  %dev1 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %3, i32 0, i32 4, !dbg !3839
  store %struct.input_dev* %2, %struct.input_dev** %dev1, align 8, !dbg !3840
  %4 = load i8*, i8** %data.addr, align 8, !dbg !3841
  %5 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !3842
  %private = getelementptr inbounds %struct.ml_device, %struct.ml_device* %5, i32 0, i32 0, !dbg !3843
  store i8* %4, i8** %private, align 8, !dbg !3844
  %6 = load i32 (%struct.input_dev*, i8*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i8*, %struct.ff_effect*)** %play_effect.addr, align 8, !dbg !3845
  %7 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !3846
  %play_effect2 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %7, i32 0, i32 5, !dbg !3847
  store i32 (%struct.input_dev*, i8*, %struct.ff_effect*)* %6, i32 (%struct.input_dev*, i8*, %struct.ff_effect*)** %play_effect2, align 8, !dbg !3848
  %8 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !3849
  %gain = getelementptr inbounds %struct.ml_device, %struct.ml_device* %8, i32 0, i32 2, !dbg !3850
  store i32 65535, i32* %gain, align 8, !dbg !3851
  %9 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !3852
  %timer = getelementptr inbounds %struct.ml_device, %struct.ml_device* %9, i32 0, i32 3, !dbg !3852
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @ml_effect_timer, i32 0, i8* null, %struct.lock_class_key* null) #10, !dbg !3852
  %10 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3853
  %ffbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 12, !dbg !3854
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit, i64 0, i64 0, !dbg !3853
  call void @set_bit(i64 96, i64* %arraydecay) #10, !dbg !3855
  %11 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3856
  %call3 = call i32 @input_ff_create(%struct.input_dev* %11, i32 16) #10, !dbg !3857
  store i32 %call3, i32* %error, align 4, !dbg !3858
  %12 = load i32, i32* %error, align 4, !dbg !3859
  %tobool4 = icmp ne i32 %12, 0, !dbg !3859
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3861

if.then5:                                         ; preds = %if.end
  %13 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !3862
  %14 = bitcast %struct.ml_device* %13 to i8*, !dbg !3862
  call void @kfree(i8* %14) #10, !dbg !3864
  %15 = load i32, i32* %error, align 4, !dbg !3865
  store i32 %15, i32* %retval, align 4, !dbg !3866
  br label %return, !dbg !3866

if.end6:                                          ; preds = %if.end
  %16 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3867
  %ff7 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 20, !dbg !3868
  %17 = load %struct.ff_device*, %struct.ff_device** %ff7, align 8, !dbg !3868
  store %struct.ff_device* %17, %struct.ff_device** %ff, align 8, !dbg !3869
  %18 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !3870
  %19 = bitcast %struct.ml_device* %18 to i8*, !dbg !3870
  %20 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3871
  %private8 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %20, i32 0, i32 6, !dbg !3872
  store i8* %19, i8** %private8, align 8, !dbg !3873
  %21 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3874
  %upload = getelementptr inbounds %struct.ff_device, %struct.ff_device* %21, i32 0, i32 0, !dbg !3875
  store i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)* @ml_ff_upload, i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)** %upload, align 8, !dbg !3876
  %22 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3877
  %playback = getelementptr inbounds %struct.ff_device, %struct.ff_device* %22, i32 0, i32 2, !dbg !3878
  store i32 (%struct.input_dev*, i32, i32)* @ml_ff_playback, i32 (%struct.input_dev*, i32, i32)** %playback, align 8, !dbg !3879
  %23 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3880
  %set_gain = getelementptr inbounds %struct.ff_device, %struct.ff_device* %23, i32 0, i32 3, !dbg !3881
  store void (%struct.input_dev*, i16)* @ml_ff_set_gain, void (%struct.input_dev*, i16)** %set_gain, align 8, !dbg !3882
  %24 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3883
  %destroy = getelementptr inbounds %struct.ff_device, %struct.ff_device* %24, i32 0, i32 5, !dbg !3884
  store void (%struct.ff_device*)* @ml_ff_destroy, void (%struct.ff_device*)** %destroy, align 8, !dbg !3885
  %25 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3886
  %ffbit9 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %25, i32 0, i32 7, !dbg !3888
  %arraydecay10 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit9, i64 0, i64 0, !dbg !3886
  %call11 = call zeroext i1 @test_bit(i64 80, i64* %arraydecay10) #10, !dbg !3889
  br i1 %call11, label %if.then12, label %if.end21, !dbg !3890

if.then12:                                        ; preds = %if.end6
  %26 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3891
  %ffbit13 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 12, !dbg !3893
  %arraydecay14 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit13, i64 0, i64 0, !dbg !3891
  call void @set_bit(i64 81, i64* %arraydecay14) #10, !dbg !3894
  %27 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3895
  %ffbit15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 12, !dbg !3896
  %arraydecay16 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit15, i64 0, i64 0, !dbg !3895
  call void @set_bit(i64 90, i64* %arraydecay16) #10, !dbg !3897
  %28 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3898
  %ffbit17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 12, !dbg !3899
  %arraydecay18 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit17, i64 0, i64 0, !dbg !3898
  call void @set_bit(i64 89, i64* %arraydecay18) #10, !dbg !3900
  %29 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !3901
  %ffbit19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 12, !dbg !3902
  %arraydecay20 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit19, i64 0, i64 0, !dbg !3901
  call void @set_bit(i64 88, i64* %arraydecay20) #10, !dbg !3903
  br label %if.end21, !dbg !3904

if.end21:                                         ; preds = %if.then12, %if.end6
  store i32 0, i32* %i, align 4, !dbg !3905
  br label %for.cond, !dbg !3907

for.cond:                                         ; preds = %for.inc, %if.end21
  %30 = load i32, i32* %i, align 4, !dbg !3908
  %cmp = icmp slt i32 %30, 16, !dbg !3910
  br i1 %cmp, label %for.body, label %for.end, !dbg !3911

for.body:                                         ; preds = %for.cond
  %31 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !3912
  %effects = getelementptr inbounds %struct.ff_device, %struct.ff_device* %31, i32 0, i32 10, !dbg !3913
  %32 = load %struct.ff_effect*, %struct.ff_effect** %effects, align 8, !dbg !3913
  %33 = load i32, i32* %i, align 4, !dbg !3914
  %idxprom = sext i32 %33 to i64, !dbg !3912
  %arrayidx = getelementptr %struct.ff_effect, %struct.ff_effect* %32, i64 %idxprom, !dbg !3912
  %34 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !3915
  %states = getelementptr inbounds %struct.ml_device, %struct.ml_device* %34, i32 0, i32 1, !dbg !3916
  %35 = load i32, i32* %i, align 4, !dbg !3917
  %idxprom22 = sext i32 %35 to i64, !dbg !3915
  %arrayidx23 = getelementptr [16 x %struct.ml_effect_state], [16 x %struct.ml_effect_state]* %states, i64 0, i64 %idxprom22, !dbg !3915
  %effect = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %arrayidx23, i32 0, i32 0, !dbg !3918
  store %struct.ff_effect* %arrayidx, %struct.ff_effect** %effect, align 8, !dbg !3919
  br label %for.inc, !dbg !3915

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !dbg !3920
  %inc = add i32 %36, 1, !dbg !3920
  store i32 %inc, i32* %i, align 4, !dbg !3920
  br label %for.cond, !dbg !3921, !llvm.loop !3922

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3924
  br label %return, !dbg !3924

return:                                           ; preds = %for.end, %if.then5, %if.then
  %37 = load i32, i32* %retval, align 4, !dbg !3925
  ret i32 %37, !dbg !3925
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3926 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3929, metadata !DIExpression()), !dbg !3933
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3939, metadata !DIExpression()), !dbg !3940
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3941, metadata !DIExpression()), !dbg !3942
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3943, metadata !DIExpression()), !dbg !3944
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3945, metadata !DIExpression()), !dbg !3949
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3951, metadata !DIExpression()), !dbg !3955
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3957, metadata !DIExpression()), !dbg !3961
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3966, metadata !DIExpression()), !dbg !3967
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3968, metadata !DIExpression()), !dbg !3969
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3970, metadata !DIExpression()), !dbg !3971
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3972, metadata !DIExpression()), !dbg !3973
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3974, metadata !DIExpression()), !dbg !3975
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3976, metadata !DIExpression()), !dbg !3977
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3978, metadata !DIExpression()), !dbg !3979
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3980, metadata !DIExpression()), !dbg !3981
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3982, metadata !DIExpression()), !dbg !3983
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3984, metadata !DIExpression()), !dbg !3985
  %0 = load i64, i64* %size.addr, align 8, !dbg !3986
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3987
  %or = or i32 %1, 256, !dbg !3988
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3989
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #7, !dbg !3990
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3991

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3992
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3993
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3994

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3995
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3996
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3997
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !3998
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3975
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3999
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4000
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4001
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4002
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4003
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4004
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4005
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4005
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4005
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4005
  call void @llvm.assume(i1 %maskcond.i.i.i) #7, !dbg !4005
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4006
  br label %kmalloc.exit, !dbg !4006

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4007
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4008
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4008
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4010

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4011
  br label %kmalloc_index.exit.i, !dbg !4011

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4012
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4014
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4015

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4016
  br label %kmalloc_index.exit.i, !dbg !4016

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4017
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4019
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4020

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4021
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4022
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4023

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4024
  br label %kmalloc_index.exit.i, !dbg !4024

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4025
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4027
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4028

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4029
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4030
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4031

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4032
  br label %kmalloc_index.exit.i, !dbg !4032

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4033
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4035
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4036

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4037
  br label %kmalloc_index.exit.i, !dbg !4037

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4038
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4040
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4041

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4042
  br label %kmalloc_index.exit.i, !dbg !4042

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4043
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4045
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4046

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4047
  br label %kmalloc_index.exit.i, !dbg !4047

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4048
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4050
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4051

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4052
  br label %kmalloc_index.exit.i, !dbg !4052

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4053
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4055
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4056

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4057
  br label %kmalloc_index.exit.i, !dbg !4057

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4058
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4060
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4061

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4062
  br label %kmalloc_index.exit.i, !dbg !4062

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4063
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4065
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4066

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4067
  br label %kmalloc_index.exit.i, !dbg !4067

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4068
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4070
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4071

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4072
  br label %kmalloc_index.exit.i, !dbg !4072

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4073
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4075
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4076

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4077
  br label %kmalloc_index.exit.i, !dbg !4077

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4078
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4080
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4081

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4082
  br label %kmalloc_index.exit.i, !dbg !4082

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4083
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4085
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4086

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4087
  br label %kmalloc_index.exit.i, !dbg !4087

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4088
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4090
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4091

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4092
  br label %kmalloc_index.exit.i, !dbg !4092

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4093
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4095
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4096

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4097
  br label %kmalloc_index.exit.i, !dbg !4097

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4098
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4100
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4101

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4102
  br label %kmalloc_index.exit.i, !dbg !4102

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4103
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4105
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4106

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4107
  br label %kmalloc_index.exit.i, !dbg !4107

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4108
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4110
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4111

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4112
  br label %kmalloc_index.exit.i, !dbg !4112

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4113
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4115
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4116

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4117
  br label %kmalloc_index.exit.i, !dbg !4117

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4118
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4120
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4121

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4122
  br label %kmalloc_index.exit.i, !dbg !4122

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4123
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4125
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4126

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4127
  br label %kmalloc_index.exit.i, !dbg !4127

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4128
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4130
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4131

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4132
  br label %kmalloc_index.exit.i, !dbg !4132

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4133
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4135
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4136

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4137
  br label %kmalloc_index.exit.i, !dbg !4137

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4138
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4140
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4141

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4142
  br label %kmalloc_index.exit.i, !dbg !4142

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4143
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4145
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4146

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4147
  br label %kmalloc_index.exit.i, !dbg !4147

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4148
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4150
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4151

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4152
  br label %kmalloc_index.exit.i, !dbg !4152

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #7, !dbg !4153, !srcloc !4156
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #7, !dbg !4157, !srcloc !4160
  unreachable, !dbg !4161

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4162
  store i32 %45, i32* %index.i, align 4, !dbg !4163
  %46 = load i32, i32* %index.i, align 4, !dbg !4164
  %tobool.i = icmp ne i32 %46, 0, !dbg !4164
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4166

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4167
  br label %kmalloc.exit, !dbg !4167

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4168
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4169
  %and.i.i = and i32 %48, 17, !dbg !4169
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4169
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4169
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4169
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4169
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4171

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4172
  br label %kmalloc_type.exit.i, !dbg !4172

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4173
  %and2.i.i = and i32 %49, 1, !dbg !4174
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4173
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4173
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4173
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4175
  br label %kmalloc_type.exit.i, !dbg !4175

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4176
  %idxprom.i = zext i32 %51 to i64, !dbg !4177
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4177
  %52 = load i32, i32* %index.i, align 4, !dbg !4178
  %idxprom6.i = zext i32 %52 to i64, !dbg !4177
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4177
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4177
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4179
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4180
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4181
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4182
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4183
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4183
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4183
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4183
  call void @llvm.assume(i1 %maskcond.i.i) #7, !dbg !4183
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3944
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4184
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4185
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4186
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4187
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4188
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4189
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4190
  store i8* %62, i8** %retval.i, align 8, !dbg !4191
  br label %kmalloc.exit, !dbg !4191

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4192
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4193
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4194
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4194
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4194
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4194
  call void @llvm.assume(i1 %maskcond.i) #7, !dbg !4194
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4195
  br label %kmalloc.exit, !dbg !4195

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4196
  ret i8* %65, !dbg !4197
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ml_effect_timer(%struct.timer_list* %t) #0 !dbg !4198 {
entry:
  %lock.addr.i25 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i25, metadata !4199, metadata !DIExpression()), !dbg !4205
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4207, metadata !DIExpression()), !dbg !4208
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4209, metadata !DIExpression()), !dbg !4214
  %t.addr = alloca %struct.timer_list*, align 8
  %ml = alloca %struct.ml_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ml_device*, align 8
  %dev = alloca %struct.input_dev*, align 8
  %flags = alloca i64, align 8
  %tmp2 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp5 = alloca i32, align 4
  %__dummy9 = alloca i64, align 8
  %__dummy210 = alloca i64, align 8
  %tmp13 = alloca i32, align 4
  store %struct.timer_list* %t, %struct.timer_list** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %t.addr, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.declare(metadata %struct.ml_device** %ml, metadata !4223, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4225, metadata !DIExpression()), !dbg !4227
  %0 = load %struct.timer_list*, %struct.timer_list** %t.addr, align 8, !dbg !4227
  %1 = bitcast %struct.timer_list* %0 to i8*, !dbg !4227
  store i8* %1, i8** %__mptr, align 8, !dbg !4227
  br label %do.body, !dbg !4227

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4228

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4227
  %add.ptr = getelementptr i8, i8* %2, i64 -784, !dbg !4227
  %3 = bitcast i8* %add.ptr to %struct.ml_device*, !dbg !4227
  store %struct.ml_device* %3, %struct.ml_device** %tmp, align 8, !dbg !4228
  %4 = load %struct.ml_device*, %struct.ml_device** %tmp, align 8, !dbg !4227
  store %struct.ml_device* %4, %struct.ml_device** %ml, align 8, !dbg !4224
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev, metadata !4230, metadata !DIExpression()), !dbg !4231
  %5 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4232
  %dev1 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %5, i32 0, i32 4, !dbg !4233
  %6 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4233
  store %struct.input_dev* %6, %struct.input_dev** %dev, align 8, !dbg !4231
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4234, metadata !DIExpression()), !dbg !4235
  store i32 0, i32* %tmp2, align 4, !dbg !4236
  %7 = load i32, i32* %tmp2, align 4, !dbg !4239
  br label %do.body3, !dbg !4240

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4241

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4242, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4245, metadata !DIExpression()), !dbg !4244
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4244
  %conv = zext i1 %cmp to i32, !dbg !4244
  store i32 1, i32* %tmp5, align 4, !dbg !4244
  %8 = load i32, i32* %tmp5, align 4, !dbg !4244
  br label %do.body6, !dbg !4246

do.body6:                                         ; preds = %do.body4
  br label %do.body7, !dbg !4247

do.body7:                                         ; preds = %do.body6
  br label %do.body8, !dbg !4248

do.body8:                                         ; preds = %do.body7
  call void @llvm.dbg.declare(metadata i64* %__dummy9, metadata !4250, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.declare(metadata i64* %__dummy210, metadata !4254, metadata !DIExpression()), !dbg !4253
  %cmp11 = icmp eq i64* %__dummy9, %__dummy210, !dbg !4253
  %conv12 = zext i1 %cmp11 to i32, !dbg !4253
  store i32 1, i32* %tmp13, align 4, !dbg !4253
  %9 = load i32, i32* %tmp13, align 4, !dbg !4253
  %call = call i64 @arch_local_irq_save() #10, !dbg !4255
  store i64 %call, i64* %flags, align 8, !dbg !4255
  br label %do.end14, !dbg !4255

do.end14:                                         ; preds = %do.body8
  br label %do.end15, !dbg !4248

do.end15:                                         ; preds = %do.end14
  br label %do.body16, !dbg !4247

do.body16:                                        ; preds = %do.end15
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4256, !srcloc !4257
  br label %do.body17, !dbg !4256

do.body17:                                        ; preds = %do.body16
  %10 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4258
  %event_lock = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 36, !dbg !4258
  store %struct.spinlock* %event_lock, %struct.spinlock** %lock.addr.i, align 8
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4259
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !4260
  %rlock.i = bitcast %union.anon.0* %12 to %struct.raw_spinlock*, !dbg !4260
  br label %do.end19, !dbg !4258

do.end19:                                         ; preds = %do.body17
  br label %do.end20, !dbg !4256

do.end20:                                         ; preds = %do.end19
  br label %do.end21, !dbg !4247

do.end21:                                         ; preds = %do.end20
  br label %do.end22, !dbg !4246

do.end22:                                         ; preds = %do.end21
  br label %do.end23, !dbg !4241

do.end23:                                         ; preds = %do.end22
  %13 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4261
  call void @ml_play_effects(%struct.ml_device* %13) #10, !dbg !4262
  %14 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4263
  %event_lock24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 36, !dbg !4264
  %15 = load i64, i64* %flags, align 8, !dbg !4265
  store %struct.spinlock* %event_lock24, %struct.spinlock** %lock.addr.i25, align 8
  store i64 %15, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !327, metadata !4266, metadata !DIExpression()) #7, !dbg !4269
  call void @llvm.dbg.declare(metadata !327, metadata !4270, metadata !DIExpression()) #7, !dbg !4269
  store i32 1, i32* %tmp.i, align 4, !dbg !4269
  %16 = load i32, i32* %tmp.i, align 4, !dbg !4269
  call void @llvm.dbg.declare(metadata !327, metadata !4271, metadata !DIExpression()) #7, !dbg !4276
  call void @llvm.dbg.declare(metadata !327, metadata !4277, metadata !DIExpression()) #7, !dbg !4276
  store i32 1, i32* %tmp8.i, align 4, !dbg !4276
  %17 = load i32, i32* %tmp8.i, align 4, !dbg !4276
  %18 = load i64, i64* %flags.addr.i, align 8, !dbg !4278
  call void @arch_local_irq_restore(i64 %18) #12, !dbg !4278
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4279, !srcloc !4281
  %19 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i25, align 8, !dbg !4282
  %20 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %19, i32 0, i32 0, !dbg !4282
  %rlock.i26 = bitcast %union.anon.0* %20 to %struct.raw_spinlock*, !dbg !4282
  ret void, !dbg !4284
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !4285 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4291, metadata !DIExpression()), !dbg !4294
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4296, metadata !DIExpression()), !dbg !4297
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4298, metadata !DIExpression()), !dbg !4306
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4308, metadata !DIExpression()), !dbg !4309
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4310, metadata !DIExpression()), !dbg !4311
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4312, metadata !DIExpression()), !dbg !4313
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4314
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4315
  %div = sdiv i64 %1, 64, !dbg !4315
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4316
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4314
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4317
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4318
  %conv.i = trunc i64 %4 to i32, !dbg !4318
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !4319
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4320
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4320
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !4320
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4321
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4322
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4323
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #7, !dbg !4325
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4326

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4327
  %12 = bitcast i64* %11 to i8*, !dbg !4327
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4327
  %shr.i = ashr i64 %13, 3, !dbg !4327
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4327
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4329
  %and.i = and i64 %14, 7, !dbg !4329
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4329
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4329
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #7, !dbg !4330, !srcloc !4331
  br label %arch_set_bit.exit, !dbg !4332

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4333
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4335
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #7, !dbg !4336, !srcloc !4337
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4338
}

; Function Attrs: noredzone
declare dso_local i32 @input_ff_create(%struct.input_dev*, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ml_ff_upload(%struct.input_dev* %dev, %struct.ff_effect* %effect, %struct.ff_effect* %old) #0 !dbg !4339 {
entry:
  %lock.addr.i22 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i22, metadata !4340, metadata !DIExpression()), !dbg !4344
  %retval.i12 = alloca i64, align 8
  %m.addr.i13 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i13, metadata !4346, metadata !DIExpression()), !dbg !4351
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4346, metadata !DIExpression()), !dbg !4355
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4357, metadata !DIExpression()), !dbg !4359
  %dev.addr = alloca %struct.input_dev*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  %old.addr = alloca %struct.ff_effect*, align 8
  %ml = alloca %struct.ml_device*, align 8
  %state = alloca %struct.ml_effect_state*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4361, metadata !DIExpression()), !dbg !4362
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !4363, metadata !DIExpression()), !dbg !4364
  store %struct.ff_effect* %old, %struct.ff_effect** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old.addr, metadata !4365, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.declare(metadata %struct.ml_device** %ml, metadata !4367, metadata !DIExpression()), !dbg !4368
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4369
  %ff = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 20, !dbg !4370
  %1 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4370
  %private = getelementptr inbounds %struct.ff_device, %struct.ff_device* %1, i32 0, i32 6, !dbg !4371
  %2 = load i8*, i8** %private, align 8, !dbg !4371
  %3 = bitcast i8* %2 to %struct.ml_device*, !dbg !4369
  store %struct.ml_device* %3, %struct.ml_device** %ml, align 8, !dbg !4368
  call void @llvm.dbg.declare(metadata %struct.ml_effect_state** %state, metadata !4372, metadata !DIExpression()), !dbg !4374
  %4 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4375
  %states = getelementptr inbounds %struct.ml_device, %struct.ml_device* %4, i32 0, i32 1, !dbg !4376
  %5 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4377
  %id = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %5, i32 0, i32 1, !dbg !4378
  %6 = load i16, i16* %id, align 2, !dbg !4378
  %idxprom = sext i16 %6 to i64, !dbg !4375
  %arrayidx = getelementptr [16 x %struct.ml_effect_state], [16 x %struct.ml_effect_state]* %states, i64 0, i64 %idxprom, !dbg !4375
  store %struct.ml_effect_state* %arrayidx, %struct.ml_effect_state** %state, align 8, !dbg !4374
  %7 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4379
  %event_lock = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 36, !dbg !4380
  store %struct.spinlock* %event_lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #12, !dbg !4381
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4384, !srcloc !4386
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4387
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !4387
  %rlock.i = bitcast %union.anon.0* %9 to %struct.raw_spinlock*, !dbg !4387
  %10 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4389
  %flags = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %10, i32 0, i32 1, !dbg !4390
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #10, !dbg !4391
  br i1 %call, label %if.then, label %if.end, !dbg !4392

if.then:                                          ; preds = %entry
  %11 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4393
  %flags1 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %11, i32 0, i32 1, !dbg !4394
  call void @__clear_bit(i64 1, i64* %flags1) #10, !dbg !4395
  %12 = load volatile i64, i64* @jiffies, align 8, !dbg !4396
  %13 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4397
  %effect2 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %13, i32 0, i32 0, !dbg !4398
  %14 = load %struct.ff_effect*, %struct.ff_effect** %effect2, align 8, !dbg !4398
  %replay = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %14, i32 0, i32 4, !dbg !4399
  %delay = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay, i32 0, i32 1, !dbg !4400
  %15 = load i16, i16* %delay, align 2, !dbg !4400
  %conv = zext i16 %15 to i32, !dbg !4397
  store i32 %conv, i32* %m.addr.i, align 4
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !4401
  %17 = call i1 @llvm.is.constant.i32(i32 %16) #7, !dbg !4403
  br i1 %17, label %if.then.i, label %if.else.i, !dbg !4404

if.then.i:                                        ; preds = %if.then
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !4405
  %cmp.i = icmp slt i32 %18, 0, !dbg !4408
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4409

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4410
  br label %msecs_to_jiffies.exit, !dbg !4410

if.end.i:                                         ; preds = %if.then.i
  %19 = load i32, i32* %m.addr.i, align 4, !dbg !4411
  %call.i = call i64 @_msecs_to_jiffies(i32 %19) #12, !dbg !4412
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4413
  br label %msecs_to_jiffies.exit, !dbg !4413

if.else.i:                                        ; preds = %if.then
  %20 = load i32, i32* %m.addr.i, align 4, !dbg !4414
  %call2.i = call i64 @__msecs_to_jiffies(i32 %20) #12, !dbg !4416
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4417
  br label %msecs_to_jiffies.exit, !dbg !4417

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %21 = load i64, i64* %retval.i, align 8, !dbg !4418
  %add = add i64 %12, %21, !dbg !4419
  %22 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4420
  %play_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %22, i32 0, i32 3, !dbg !4421
  store i64 %add, i64* %play_at, align 8, !dbg !4422
  %23 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4423
  %play_at4 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %23, i32 0, i32 3, !dbg !4424
  %24 = load i64, i64* %play_at4, align 8, !dbg !4424
  %25 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4425
  %effect5 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %25, i32 0, i32 0, !dbg !4426
  %26 = load %struct.ff_effect*, %struct.ff_effect** %effect5, align 8, !dbg !4426
  %replay6 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %26, i32 0, i32 4, !dbg !4427
  %length = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay6, i32 0, i32 0, !dbg !4428
  %27 = load i16, i16* %length, align 2, !dbg !4428
  %conv7 = zext i16 %27 to i32, !dbg !4425
  store i32 %conv7, i32* %m.addr.i13, align 4
  %28 = load i32, i32* %m.addr.i13, align 4, !dbg !4429
  %29 = call i1 @llvm.is.constant.i32(i32 %28) #7, !dbg !4430
  br i1 %29, label %if.then.i15, label %if.else.i20, !dbg !4431

if.then.i15:                                      ; preds = %msecs_to_jiffies.exit
  %30 = load i32, i32* %m.addr.i13, align 4, !dbg !4432
  %cmp.i14 = icmp slt i32 %30, 0, !dbg !4433
  br i1 %cmp.i14, label %if.then1.i16, label %if.end.i18, !dbg !4434

if.then1.i16:                                     ; preds = %if.then.i15
  store i64 4611686018427387902, i64* %retval.i12, align 8, !dbg !4435
  br label %msecs_to_jiffies.exit21, !dbg !4435

if.end.i18:                                       ; preds = %if.then.i15
  %31 = load i32, i32* %m.addr.i13, align 4, !dbg !4436
  %call.i17 = call i64 @_msecs_to_jiffies(i32 %31) #12, !dbg !4437
  store i64 %call.i17, i64* %retval.i12, align 8, !dbg !4438
  br label %msecs_to_jiffies.exit21, !dbg !4438

if.else.i20:                                      ; preds = %msecs_to_jiffies.exit
  %32 = load i32, i32* %m.addr.i13, align 4, !dbg !4439
  %call2.i19 = call i64 @__msecs_to_jiffies(i32 %32) #12, !dbg !4440
  store i64 %call2.i19, i64* %retval.i12, align 8, !dbg !4441
  br label %msecs_to_jiffies.exit21, !dbg !4441

msecs_to_jiffies.exit21:                          ; preds = %if.then1.i16, %if.end.i18, %if.else.i20
  %33 = load i64, i64* %retval.i12, align 8, !dbg !4442
  %add9 = add i64 %24, %33, !dbg !4443
  %34 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4444
  %stop_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %34, i32 0, i32 4, !dbg !4445
  store i64 %add9, i64* %stop_at, align 8, !dbg !4446
  %35 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4447
  %play_at10 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %35, i32 0, i32 3, !dbg !4448
  %36 = load i64, i64* %play_at10, align 8, !dbg !4448
  %37 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4449
  %adj_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %37, i32 0, i32 5, !dbg !4450
  store i64 %36, i64* %adj_at, align 8, !dbg !4451
  %38 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4452
  call void @ml_schedule_timer(%struct.ml_device* %38) #10, !dbg !4453
  br label %if.end, !dbg !4454

if.end:                                           ; preds = %msecs_to_jiffies.exit21, %entry
  %39 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4455
  %event_lock11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 36, !dbg !4456
  store %struct.spinlock* %event_lock11, %struct.spinlock** %lock.addr.i22, align 8
  call void @arch_local_irq_enable() #12, !dbg !4457
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !4460, !srcloc !4462
  %40 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i22, align 8, !dbg !4463
  %41 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %40, i32 0, i32 0, !dbg !4463
  %rlock.i23 = bitcast %union.anon.0* %41 to %struct.raw_spinlock*, !dbg !4463
  ret i32 0, !dbg !4465
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ml_ff_playback(%struct.input_dev* %dev, i32 %effect_id, i32 %value) #0 !dbg !4466 {
entry:
  %retval.i16 = alloca i64, align 8
  %m.addr.i17 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i17, metadata !4346, metadata !DIExpression()), !dbg !4467
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4346, metadata !DIExpression()), !dbg !4471
  %dev.addr = alloca %struct.input_dev*, align 8
  %effect_id.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %ml = alloca %struct.ml_device*, align 8
  %state = alloca %struct.ml_effect_state*, align 8
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4473, metadata !DIExpression()), !dbg !4474
  store i32 %effect_id, i32* %effect_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %effect_id.addr, metadata !4475, metadata !DIExpression()), !dbg !4476
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4477, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.declare(metadata %struct.ml_device** %ml, metadata !4479, metadata !DIExpression()), !dbg !4480
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4481
  %ff = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 20, !dbg !4482
  %1 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4482
  %private = getelementptr inbounds %struct.ff_device, %struct.ff_device* %1, i32 0, i32 6, !dbg !4483
  %2 = load i8*, i8** %private, align 8, !dbg !4483
  %3 = bitcast i8* %2 to %struct.ml_device*, !dbg !4481
  store %struct.ml_device* %3, %struct.ml_device** %ml, align 8, !dbg !4480
  call void @llvm.dbg.declare(metadata %struct.ml_effect_state** %state, metadata !4484, metadata !DIExpression()), !dbg !4485
  %4 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4486
  %states = getelementptr inbounds %struct.ml_device, %struct.ml_device* %4, i32 0, i32 1, !dbg !4487
  %5 = load i32, i32* %effect_id.addr, align 4, !dbg !4488
  %idxprom = sext i32 %5 to i64, !dbg !4486
  %arrayidx = getelementptr [16 x %struct.ml_effect_state], [16 x %struct.ml_effect_state]* %states, i64 0, i64 %idxprom, !dbg !4486
  store %struct.ml_effect_state* %arrayidx, %struct.ml_effect_state** %state, align 8, !dbg !4485
  %6 = load i32, i32* %value.addr, align 4, !dbg !4489
  %cmp = icmp sgt i32 %6, 0, !dbg !4490
  br i1 %cmp, label %if.then, label %if.else, !dbg !4491

if.then:                                          ; preds = %entry
  store i32 0, i32* %tmp, align 4, !dbg !4492
  %7 = load i32, i32* %tmp, align 4, !dbg !4495
  %8 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4496
  %flags = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %8, i32 0, i32 1, !dbg !4497
  call void @__set_bit(i64 0, i64* %flags) #10, !dbg !4498
  %9 = load i32, i32* %value.addr, align 4, !dbg !4499
  %10 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4500
  %count = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %10, i32 0, i32 2, !dbg !4501
  store i32 %9, i32* %count, align 8, !dbg !4502
  %11 = load volatile i64, i64* @jiffies, align 8, !dbg !4503
  %12 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4504
  %effect = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %12, i32 0, i32 0, !dbg !4505
  %13 = load %struct.ff_effect*, %struct.ff_effect** %effect, align 8, !dbg !4505
  %replay = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %13, i32 0, i32 4, !dbg !4506
  %delay = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay, i32 0, i32 1, !dbg !4507
  %14 = load i16, i16* %delay, align 2, !dbg !4507
  %conv = zext i16 %14 to i32, !dbg !4504
  store i32 %conv, i32* %m.addr.i, align 4
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !4508
  %16 = call i1 @llvm.is.constant.i32(i32 %15) #7, !dbg !4509
  br i1 %16, label %if.then.i, label %if.else.i, !dbg !4510

if.then.i:                                        ; preds = %if.then
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !4511
  %cmp.i = icmp slt i32 %17, 0, !dbg !4512
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4513

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4514
  br label %msecs_to_jiffies.exit, !dbg !4514

if.end.i:                                         ; preds = %if.then.i
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !4515
  %call.i = call i64 @_msecs_to_jiffies(i32 %18) #12, !dbg !4516
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4517
  br label %msecs_to_jiffies.exit, !dbg !4517

if.else.i:                                        ; preds = %if.then
  %19 = load i32, i32* %m.addr.i, align 4, !dbg !4518
  %call2.i = call i64 @__msecs_to_jiffies(i32 %19) #12, !dbg !4519
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4520
  br label %msecs_to_jiffies.exit, !dbg !4520

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %20 = load i64, i64* %retval.i, align 8, !dbg !4521
  %add = add i64 %11, %20, !dbg !4522
  %21 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4523
  %play_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %21, i32 0, i32 3, !dbg !4524
  store i64 %add, i64* %play_at, align 8, !dbg !4525
  %22 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4526
  %play_at1 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %22, i32 0, i32 3, !dbg !4527
  %23 = load i64, i64* %play_at1, align 8, !dbg !4527
  %24 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4528
  %effect2 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %24, i32 0, i32 0, !dbg !4529
  %25 = load %struct.ff_effect*, %struct.ff_effect** %effect2, align 8, !dbg !4529
  %replay3 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %25, i32 0, i32 4, !dbg !4530
  %length = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay3, i32 0, i32 0, !dbg !4531
  %26 = load i16, i16* %length, align 2, !dbg !4531
  %conv4 = zext i16 %26 to i32, !dbg !4528
  store i32 %conv4, i32* %m.addr.i17, align 4
  %27 = load i32, i32* %m.addr.i17, align 4, !dbg !4532
  %28 = call i1 @llvm.is.constant.i32(i32 %27) #7, !dbg !4533
  br i1 %28, label %if.then.i19, label %if.else.i24, !dbg !4534

if.then.i19:                                      ; preds = %msecs_to_jiffies.exit
  %29 = load i32, i32* %m.addr.i17, align 4, !dbg !4535
  %cmp.i18 = icmp slt i32 %29, 0, !dbg !4536
  br i1 %cmp.i18, label %if.then1.i20, label %if.end.i22, !dbg !4537

if.then1.i20:                                     ; preds = %if.then.i19
  store i64 4611686018427387902, i64* %retval.i16, align 8, !dbg !4538
  br label %msecs_to_jiffies.exit25, !dbg !4538

if.end.i22:                                       ; preds = %if.then.i19
  %30 = load i32, i32* %m.addr.i17, align 4, !dbg !4539
  %call.i21 = call i64 @_msecs_to_jiffies(i32 %30) #12, !dbg !4540
  store i64 %call.i21, i64* %retval.i16, align 8, !dbg !4541
  br label %msecs_to_jiffies.exit25, !dbg !4541

if.else.i24:                                      ; preds = %msecs_to_jiffies.exit
  %31 = load i32, i32* %m.addr.i17, align 4, !dbg !4542
  %call2.i23 = call i64 @__msecs_to_jiffies(i32 %31) #12, !dbg !4543
  store i64 %call2.i23, i64* %retval.i16, align 8, !dbg !4544
  br label %msecs_to_jiffies.exit25, !dbg !4544

msecs_to_jiffies.exit25:                          ; preds = %if.then1.i20, %if.end.i22, %if.else.i24
  %32 = load i64, i64* %retval.i16, align 8, !dbg !4545
  %add6 = add i64 %23, %32, !dbg !4546
  %33 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4547
  %stop_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %33, i32 0, i32 4, !dbg !4548
  store i64 %add6, i64* %stop_at, align 8, !dbg !4549
  %34 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4550
  %play_at7 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %34, i32 0, i32 3, !dbg !4551
  %35 = load i64, i64* %play_at7, align 8, !dbg !4551
  %36 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4552
  %adj_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %36, i32 0, i32 5, !dbg !4553
  store i64 %35, i64* %adj_at, align 8, !dbg !4554
  br label %if.end15, !dbg !4555

if.else:                                          ; preds = %entry
  store i32 0, i32* %tmp8, align 4, !dbg !4556
  %37 = load i32, i32* %tmp8, align 4, !dbg !4560
  %38 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4561
  %flags9 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %38, i32 0, i32 1, !dbg !4563
  %call10 = call zeroext i1 @test_bit(i64 1, i64* %flags9) #10, !dbg !4564
  br i1 %call10, label %if.then11, label %if.else13, !dbg !4565

if.then11:                                        ; preds = %if.else
  %39 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4566
  %flags12 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %39, i32 0, i32 1, !dbg !4567
  call void @__set_bit(i64 2, i64* %flags12) #10, !dbg !4568
  br label %if.end, !dbg !4568

if.else13:                                        ; preds = %if.else
  %40 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4569
  %flags14 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %40, i32 0, i32 1, !dbg !4570
  call void @__clear_bit(i64 0, i64* %flags14) #10, !dbg !4571
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end, %msecs_to_jiffies.exit25
  %41 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4572
  call void @ml_play_effects(%struct.ml_device* %41) #10, !dbg !4573
  ret i32 0, !dbg !4574
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ml_ff_set_gain(%struct.input_dev* %dev, i16 zeroext %gain) #0 !dbg !4575 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %gain.addr = alloca i16, align 2
  %ml = alloca %struct.ml_device*, align 8
  %i = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4576, metadata !DIExpression()), !dbg !4577
  store i16 %gain, i16* %gain.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %gain.addr, metadata !4578, metadata !DIExpression()), !dbg !4579
  call void @llvm.dbg.declare(metadata %struct.ml_device** %ml, metadata !4580, metadata !DIExpression()), !dbg !4581
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4582
  %ff = getelementptr inbounds %struct.input_dev, %struct.input_dev* %0, i32 0, i32 20, !dbg !4583
  %1 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4583
  %private = getelementptr inbounds %struct.ff_device, %struct.ff_device* %1, i32 0, i32 6, !dbg !4584
  %2 = load i8*, i8** %private, align 8, !dbg !4584
  %3 = bitcast i8* %2 to %struct.ml_device*, !dbg !4582
  store %struct.ml_device* %3, %struct.ml_device** %ml, align 8, !dbg !4581
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4585, metadata !DIExpression()), !dbg !4586
  %4 = load i16, i16* %gain.addr, align 2, !dbg !4587
  %conv = zext i16 %4 to i32, !dbg !4587
  %5 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4588
  %gain1 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %5, i32 0, i32 2, !dbg !4589
  store i32 %conv, i32* %gain1, align 8, !dbg !4590
  store i32 0, i32* %i, align 4, !dbg !4591
  br label %for.cond, !dbg !4593

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !4594
  %cmp = icmp slt i32 %6, 16, !dbg !4596
  br i1 %cmp, label %for.body, label %for.end, !dbg !4597

for.body:                                         ; preds = %for.cond
  %7 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4598
  %states = getelementptr inbounds %struct.ml_device, %struct.ml_device* %7, i32 0, i32 1, !dbg !4599
  %8 = load i32, i32* %i, align 4, !dbg !4600
  %idxprom = sext i32 %8 to i64, !dbg !4598
  %arrayidx = getelementptr [16 x %struct.ml_effect_state], [16 x %struct.ml_effect_state]* %states, i64 0, i64 %idxprom, !dbg !4598
  %flags = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %arrayidx, i32 0, i32 1, !dbg !4601
  call void @__clear_bit(i64 1, i64* %flags) #10, !dbg !4602
  br label %for.inc, !dbg !4602

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !4603
  %inc = add i32 %9, 1, !dbg !4603
  store i32 %inc, i32* %i, align 4, !dbg !4603
  br label %for.cond, !dbg !4604, !llvm.loop !4605

for.end:                                          ; preds = %for.cond
  %10 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4607
  call void @ml_play_effects(%struct.ml_device* %10) #10, !dbg !4608
  ret void, !dbg !4609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ml_ff_destroy(%struct.ff_device* %ff) #0 !dbg !4610 {
entry:
  %ff.addr = alloca %struct.ff_device*, align 8
  %ml = alloca %struct.ml_device*, align 8
  store %struct.ff_device* %ff, %struct.ff_device** %ff.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff.addr, metadata !4611, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.declare(metadata %struct.ml_device** %ml, metadata !4613, metadata !DIExpression()), !dbg !4614
  %0 = load %struct.ff_device*, %struct.ff_device** %ff.addr, align 8, !dbg !4615
  %private = getelementptr inbounds %struct.ff_device, %struct.ff_device* %0, i32 0, i32 6, !dbg !4616
  %1 = load i8*, i8** %private, align 8, !dbg !4616
  %2 = bitcast i8* %1 to %struct.ml_device*, !dbg !4615
  store %struct.ml_device* %2, %struct.ml_device** %ml, align 8, !dbg !4614
  %3 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4617
  %timer = getelementptr inbounds %struct.ml_device, %struct.ml_device* %3, i32 0, i32 3, !dbg !4617
  %call = call i32 @del_timer(%struct.timer_list* %timer) #10, !dbg !4617
  %4 = load %struct.ml_device*, %struct.ml_device** %ml, align 8, !dbg !4618
  %private1 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %4, i32 0, i32 0, !dbg !4619
  %5 = load i8*, i8** %private1, align 8, !dbg !4619
  call void @kfree(i8* %5) #10, !dbg !4620
  ret void, !dbg !4621
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !4622 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !4628, metadata !DIExpression()), !dbg !4630
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !4632, metadata !DIExpression()), !dbg !4633
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !4634, metadata !DIExpression()), !dbg !4635
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4636, metadata !DIExpression()), !dbg !4638
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4640, metadata !DIExpression()), !dbg !4641
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4642, metadata !DIExpression()), !dbg !4644
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4646, metadata !DIExpression()), !dbg !4647
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4650, metadata !DIExpression()), !dbg !4651
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4652
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4653
  %div = sdiv i64 %1, 64, !dbg !4653
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4654
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4652
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4655
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4656
  %conv.i = trunc i64 %4 to i32, !dbg !4656
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !4657
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4658
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4658
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !4658
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4659
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !4659
  br i1 %8, label %cond.true, label %cond.false, !dbg !4659

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !4659
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !4659
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !4660
  %and.i = and i64 %11, 63, !dbg !4661
  %shl.i = shl i64 1, %and.i, !dbg !4662
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !4663
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4664
  %shr.i = ashr i64 %13, 6, !dbg !4665
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !4663
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !4663
  %and1.i = and i64 %shl.i, %14, !dbg !4666
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !4667
  %conv = zext i1 %cmp.i to i32, !dbg !4659
  br label %cond.end, !dbg !4659

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !4659
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !4659
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !4668
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !4669
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !4670, !srcloc !4671
  store i8 %19, i8* %oldbit.i, align 1, !dbg !4670
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !4672
  %tobool.i = trunc i8 %20 to i1, !dbg !4672
  %conv2 = zext i1 %tobool.i to i32, !dbg !4659
  br label %cond.end, !dbg !4659

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4659
  %tobool = icmp ne i32 %cond, 0, !dbg !4659
  ret i1 %tobool, !dbg !4673
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !4674 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4678, metadata !DIExpression()), !dbg !4682
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4684, metadata !DIExpression()), !dbg !4685
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4686, metadata !DIExpression()), !dbg !4687
  %0 = load i64, i64* %size.addr, align 8, !dbg !4688
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4690
  br i1 %1, label %if.then, label %if.end447, !dbg !4691

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4692
  %tobool = icmp ne i64 %2, 0, !dbg !4692
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4695

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4696
  br label %return, !dbg !4696

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4697
  %cmp = icmp ult i64 %3, 4096, !dbg !4699
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4700

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4701
  br label %return, !dbg !4701

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub = sub i64 %4, 1, !dbg !4702
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4702
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4702

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub4 = sub i64 %6, 1, !dbg !4702
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4702
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4702

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub6 = sub i64 %8, 1, !dbg !4702
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4702
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4702

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4702

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub9 = sub i64 %9, 1, !dbg !4702
  %and = and i64 %sub9, -9223372036854775808, !dbg !4702
  %tobool10 = icmp ne i64 %and, 0, !dbg !4702
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4702

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4702

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub13 = sub i64 %10, 1, !dbg !4702
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4702
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4702
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4702

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4702

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub18 = sub i64 %11, 1, !dbg !4702
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4702
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4702
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4702

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4702

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub23 = sub i64 %12, 1, !dbg !4702
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4702
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4702
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4702

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4702

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub28 = sub i64 %13, 1, !dbg !4702
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4702
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4702
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4702

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4702

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub33 = sub i64 %14, 1, !dbg !4702
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4702
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4702
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4702

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4702

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub38 = sub i64 %15, 1, !dbg !4702
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4702
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4702
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4702

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4702

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub43 = sub i64 %16, 1, !dbg !4702
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4702
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4702
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4702

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4702

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub48 = sub i64 %17, 1, !dbg !4702
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4702
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4702
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4702

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4702

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub53 = sub i64 %18, 1, !dbg !4702
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4702
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4702
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4702

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4702

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub58 = sub i64 %19, 1, !dbg !4702
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4702
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4702
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4702

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4702

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub63 = sub i64 %20, 1, !dbg !4702
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4702
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4702
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4702

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4702

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub68 = sub i64 %21, 1, !dbg !4702
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4702
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4702
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4702

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4702

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub73 = sub i64 %22, 1, !dbg !4702
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4702
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4702
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4702

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4702

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub78 = sub i64 %23, 1, !dbg !4702
  %and79 = and i64 %sub78, 562949953421312, !dbg !4702
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4702
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4702

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4702

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub83 = sub i64 %24, 1, !dbg !4702
  %and84 = and i64 %sub83, 281474976710656, !dbg !4702
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4702
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4702

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4702

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub88 = sub i64 %25, 1, !dbg !4702
  %and89 = and i64 %sub88, 140737488355328, !dbg !4702
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4702
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4702

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4702

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub93 = sub i64 %26, 1, !dbg !4702
  %and94 = and i64 %sub93, 70368744177664, !dbg !4702
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4702
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4702

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4702

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub98 = sub i64 %27, 1, !dbg !4702
  %and99 = and i64 %sub98, 35184372088832, !dbg !4702
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4702
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4702

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4702

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub103 = sub i64 %28, 1, !dbg !4702
  %and104 = and i64 %sub103, 17592186044416, !dbg !4702
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4702
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4702

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4702

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub108 = sub i64 %29, 1, !dbg !4702
  %and109 = and i64 %sub108, 8796093022208, !dbg !4702
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4702
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4702

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4702

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub113 = sub i64 %30, 1, !dbg !4702
  %and114 = and i64 %sub113, 4398046511104, !dbg !4702
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4702
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4702

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4702

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub118 = sub i64 %31, 1, !dbg !4702
  %and119 = and i64 %sub118, 2199023255552, !dbg !4702
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4702
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4702

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4702

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub123 = sub i64 %32, 1, !dbg !4702
  %and124 = and i64 %sub123, 1099511627776, !dbg !4702
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4702
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4702

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4702

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub128 = sub i64 %33, 1, !dbg !4702
  %and129 = and i64 %sub128, 549755813888, !dbg !4702
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4702
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4702

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4702

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub133 = sub i64 %34, 1, !dbg !4702
  %and134 = and i64 %sub133, 274877906944, !dbg !4702
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4702
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4702

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4702

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub138 = sub i64 %35, 1, !dbg !4702
  %and139 = and i64 %sub138, 137438953472, !dbg !4702
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4702
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4702

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4702

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub143 = sub i64 %36, 1, !dbg !4702
  %and144 = and i64 %sub143, 68719476736, !dbg !4702
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4702
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4702

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4702

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub148 = sub i64 %37, 1, !dbg !4702
  %and149 = and i64 %sub148, 34359738368, !dbg !4702
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4702
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4702

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4702

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub153 = sub i64 %38, 1, !dbg !4702
  %and154 = and i64 %sub153, 17179869184, !dbg !4702
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4702
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4702

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4702

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub158 = sub i64 %39, 1, !dbg !4702
  %and159 = and i64 %sub158, 8589934592, !dbg !4702
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4702
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4702

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4702

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub163 = sub i64 %40, 1, !dbg !4702
  %and164 = and i64 %sub163, 4294967296, !dbg !4702
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4702
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4702

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4702

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub168 = sub i64 %41, 1, !dbg !4702
  %and169 = and i64 %sub168, 2147483648, !dbg !4702
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4702
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4702

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4702

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub173 = sub i64 %42, 1, !dbg !4702
  %and174 = and i64 %sub173, 1073741824, !dbg !4702
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4702
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4702

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4702

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub178 = sub i64 %43, 1, !dbg !4702
  %and179 = and i64 %sub178, 536870912, !dbg !4702
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4702
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4702

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4702

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub183 = sub i64 %44, 1, !dbg !4702
  %and184 = and i64 %sub183, 268435456, !dbg !4702
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4702
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4702

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4702

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub188 = sub i64 %45, 1, !dbg !4702
  %and189 = and i64 %sub188, 134217728, !dbg !4702
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4702
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4702

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4702

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub193 = sub i64 %46, 1, !dbg !4702
  %and194 = and i64 %sub193, 67108864, !dbg !4702
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4702
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4702

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4702

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub198 = sub i64 %47, 1, !dbg !4702
  %and199 = and i64 %sub198, 33554432, !dbg !4702
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4702
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4702

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4702

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub203 = sub i64 %48, 1, !dbg !4702
  %and204 = and i64 %sub203, 16777216, !dbg !4702
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4702
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4702

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4702

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub208 = sub i64 %49, 1, !dbg !4702
  %and209 = and i64 %sub208, 8388608, !dbg !4702
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4702
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4702

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4702

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub213 = sub i64 %50, 1, !dbg !4702
  %and214 = and i64 %sub213, 4194304, !dbg !4702
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4702
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4702

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4702

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub218 = sub i64 %51, 1, !dbg !4702
  %and219 = and i64 %sub218, 2097152, !dbg !4702
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4702
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4702

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4702

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub223 = sub i64 %52, 1, !dbg !4702
  %and224 = and i64 %sub223, 1048576, !dbg !4702
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4702
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4702

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4702

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub228 = sub i64 %53, 1, !dbg !4702
  %and229 = and i64 %sub228, 524288, !dbg !4702
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4702
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4702

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4702

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub233 = sub i64 %54, 1, !dbg !4702
  %and234 = and i64 %sub233, 262144, !dbg !4702
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4702
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4702

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4702

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub238 = sub i64 %55, 1, !dbg !4702
  %and239 = and i64 %sub238, 131072, !dbg !4702
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4702
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4702

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4702

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub243 = sub i64 %56, 1, !dbg !4702
  %and244 = and i64 %sub243, 65536, !dbg !4702
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4702
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4702

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4702

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub248 = sub i64 %57, 1, !dbg !4702
  %and249 = and i64 %sub248, 32768, !dbg !4702
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4702
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4702

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4702

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub253 = sub i64 %58, 1, !dbg !4702
  %and254 = and i64 %sub253, 16384, !dbg !4702
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4702
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4702

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4702

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub258 = sub i64 %59, 1, !dbg !4702
  %and259 = and i64 %sub258, 8192, !dbg !4702
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4702
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4702

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4702

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub263 = sub i64 %60, 1, !dbg !4702
  %and264 = and i64 %sub263, 4096, !dbg !4702
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4702
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4702

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4702

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub268 = sub i64 %61, 1, !dbg !4702
  %and269 = and i64 %sub268, 2048, !dbg !4702
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4702
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4702

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4702

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub273 = sub i64 %62, 1, !dbg !4702
  %and274 = and i64 %sub273, 1024, !dbg !4702
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4702
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4702

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4702

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub278 = sub i64 %63, 1, !dbg !4702
  %and279 = and i64 %sub278, 512, !dbg !4702
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4702
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4702

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4702

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub283 = sub i64 %64, 1, !dbg !4702
  %and284 = and i64 %sub283, 256, !dbg !4702
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4702
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4702

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4702

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub288 = sub i64 %65, 1, !dbg !4702
  %and289 = and i64 %sub288, 128, !dbg !4702
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4702
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4702

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4702

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub293 = sub i64 %66, 1, !dbg !4702
  %and294 = and i64 %sub293, 64, !dbg !4702
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4702
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4702

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4702

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub298 = sub i64 %67, 1, !dbg !4702
  %and299 = and i64 %sub298, 32, !dbg !4702
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4702
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4702

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4702

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub303 = sub i64 %68, 1, !dbg !4702
  %and304 = and i64 %sub303, 16, !dbg !4702
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4702
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4702

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4702

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub308 = sub i64 %69, 1, !dbg !4702
  %and309 = and i64 %sub308, 8, !dbg !4702
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4702
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4702

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4702

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub313 = sub i64 %70, 1, !dbg !4702
  %and314 = and i64 %sub313, 4, !dbg !4702
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4702
  %71 = zext i1 %tobool315 to i64, !dbg !4702
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4702
  br label %cond.end, !dbg !4702

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4702
  br label %cond.end317, !dbg !4702

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4702
  br label %cond.end319, !dbg !4702

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4702
  br label %cond.end321, !dbg !4702

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4702
  br label %cond.end323, !dbg !4702

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4702
  br label %cond.end325, !dbg !4702

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4702
  br label %cond.end327, !dbg !4702

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4702
  br label %cond.end329, !dbg !4702

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4702
  br label %cond.end331, !dbg !4702

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4702
  br label %cond.end333, !dbg !4702

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4702
  br label %cond.end335, !dbg !4702

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4702
  br label %cond.end337, !dbg !4702

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4702
  br label %cond.end339, !dbg !4702

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4702
  br label %cond.end341, !dbg !4702

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4702
  br label %cond.end343, !dbg !4702

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4702
  br label %cond.end345, !dbg !4702

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4702
  br label %cond.end347, !dbg !4702

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4702
  br label %cond.end349, !dbg !4702

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4702
  br label %cond.end351, !dbg !4702

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4702
  br label %cond.end353, !dbg !4702

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4702
  br label %cond.end355, !dbg !4702

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4702
  br label %cond.end357, !dbg !4702

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4702
  br label %cond.end359, !dbg !4702

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4702
  br label %cond.end361, !dbg !4702

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4702
  br label %cond.end363, !dbg !4702

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4702
  br label %cond.end365, !dbg !4702

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4702
  br label %cond.end367, !dbg !4702

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4702
  br label %cond.end369, !dbg !4702

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4702
  br label %cond.end371, !dbg !4702

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4702
  br label %cond.end373, !dbg !4702

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4702
  br label %cond.end375, !dbg !4702

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4702
  br label %cond.end377, !dbg !4702

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4702
  br label %cond.end379, !dbg !4702

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4702
  br label %cond.end381, !dbg !4702

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4702
  br label %cond.end383, !dbg !4702

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4702
  br label %cond.end385, !dbg !4702

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4702
  br label %cond.end387, !dbg !4702

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4702
  br label %cond.end389, !dbg !4702

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4702
  br label %cond.end391, !dbg !4702

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4702
  br label %cond.end393, !dbg !4702

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4702
  br label %cond.end395, !dbg !4702

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4702
  br label %cond.end397, !dbg !4702

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4702
  br label %cond.end399, !dbg !4702

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4702
  br label %cond.end401, !dbg !4702

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4702
  br label %cond.end403, !dbg !4702

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4702
  br label %cond.end405, !dbg !4702

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4702
  br label %cond.end407, !dbg !4702

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4702
  br label %cond.end409, !dbg !4702

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4702
  br label %cond.end411, !dbg !4702

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4702
  br label %cond.end413, !dbg !4702

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4702
  br label %cond.end415, !dbg !4702

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4702
  br label %cond.end417, !dbg !4702

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4702
  br label %cond.end419, !dbg !4702

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4702
  br label %cond.end421, !dbg !4702

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4702
  br label %cond.end423, !dbg !4702

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4702
  br label %cond.end425, !dbg !4702

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4702
  br label %cond.end427, !dbg !4702

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4702
  br label %cond.end429, !dbg !4702

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4702
  br label %cond.end431, !dbg !4702

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4702
  br label %cond.end433, !dbg !4702

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4702
  br label %cond.end435, !dbg !4702

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4702
  br label %cond.end437, !dbg !4702

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4702
  br label %cond.end440, !dbg !4702

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4702

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4702
  br label %cond.end444, !dbg !4702

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4702
  %sub443 = sub i64 %72, 1, !dbg !4702
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4702
  br label %cond.end444, !dbg !4702

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4702
  %sub446 = sub i32 %cond445, 12, !dbg !4703
  %add = add i32 %sub446, 1, !dbg !4704
  store i32 %add, i32* %retval, align 4, !dbg !4705
  br label %return, !dbg !4705

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4706
  %dec = add i64 %73, -1, !dbg !4706
  store i64 %dec, i64* %size.addr, align 8, !dbg !4706
  %74 = load i64, i64* %size.addr, align 8, !dbg !4707
  %shr = lshr i64 %74, 12, !dbg !4707
  store i64 %shr, i64* %size.addr, align 8, !dbg !4707
  %75 = load i64, i64* %size.addr, align 8, !dbg !4708
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4685
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4709
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4710
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #6, !dbg !4709, !srcloc !4711
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4709
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4712
  %add.i = add i32 %79, 1, !dbg !4713
  store i32 %add.i, i32* %retval, align 4, !dbg !4714
  br label %return, !dbg !4714

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4715
  ret i32 %80, !dbg !4715
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !4716 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4678, metadata !DIExpression()), !dbg !4720
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4684, metadata !DIExpression()), !dbg !4722
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4723, metadata !DIExpression()), !dbg !4724
  %0 = load i64, i64* %n.addr, align 8, !dbg !4725
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4722
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4726
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4727
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #6, !dbg !4726, !srcloc !4711
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4726
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4728
  %add.i = add i32 %4, 1, !dbg !4729
  %sub = sub i32 %add.i, 1, !dbg !4730
  ret i32 %sub, !dbg !4731
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4732 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4735, metadata !DIExpression()), !dbg !4736
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4739, metadata !DIExpression()), !dbg !4740
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4741, metadata !DIExpression()), !dbg !4742
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4743
  ret i8* %0, !dbg !4744
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4745 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4749, metadata !DIExpression()), !dbg !4750
  %call = call i64 @arch_local_save_flags() #10, !dbg !4751
  store i64 %call, i64* %f, align 8, !dbg !4752
  call void @arch_local_irq_disable() #10, !dbg !4753
  %0 = load i64, i64* %f, align 8, !dbg !4754
  ret i64 %0, !dbg !4755
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ml_play_effects(%struct.ml_device* %ml) #0 !dbg !4756 {
entry:
  %ml.addr = alloca %struct.ml_device*, align 8
  %effect = alloca %struct.ff_effect, align 8
  %handled_bm = alloca [1 x i64], align 8
  store %struct.ml_device* %ml, %struct.ml_device** %ml.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ml_device** %ml.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  call void @llvm.dbg.declare(metadata %struct.ff_effect* %effect, metadata !4761, metadata !DIExpression()), !dbg !4762
  call void @llvm.dbg.declare(metadata [1 x i64]* %handled_bm, metadata !4763, metadata !DIExpression()), !dbg !4764
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %handled_bm, i64 0, i64 0, !dbg !4765
  %0 = bitcast i64* %arraydecay to i8*, !dbg !4765
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false), !dbg !4765
  br label %while.cond, !dbg !4766

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !4767
  %arraydecay1 = getelementptr inbounds [1 x i64], [1 x i64]* %handled_bm, i64 0, i64 0, !dbg !4768
  %call = call i32 @ml_get_combo_effect(%struct.ml_device* %1, i64* %arraydecay1, %struct.ff_effect* %effect) #10, !dbg !4769
  %tobool = icmp ne i32 %call, 0, !dbg !4766
  br i1 %tobool, label %while.body, label %while.end, !dbg !4766

while.body:                                       ; preds = %while.cond
  %2 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !4770
  %play_effect = getelementptr inbounds %struct.ml_device, %struct.ml_device* %2, i32 0, i32 5, !dbg !4771
  %3 = load i32 (%struct.input_dev*, i8*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i8*, %struct.ff_effect*)** %play_effect, align 8, !dbg !4771
  %4 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !4772
  %dev = getelementptr inbounds %struct.ml_device, %struct.ml_device* %4, i32 0, i32 4, !dbg !4773
  %5 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4773
  %6 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !4774
  %private = getelementptr inbounds %struct.ml_device, %struct.ml_device* %6, i32 0, i32 0, !dbg !4775
  %7 = load i8*, i8** %private, align 8, !dbg !4775
  %call2 = call i32 %3(%struct.input_dev* %5, i8* %7, %struct.ff_effect* %effect) #10, !dbg !4770
  br label %while.cond, !dbg !4766, !llvm.loop !4776

while.end:                                        ; preds = %while.cond
  %8 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !4778
  call void @ml_schedule_timer(%struct.ml_device* %8) #10, !dbg !4779
  ret void, !dbg !4780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !4781 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4782, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4785, metadata !DIExpression()), !dbg !4784
  %0 = load i64, i64* %__edi, align 8, !dbg !4784
  store i64 %0, i64* %__edi, align 8, !dbg !4784
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4786, metadata !DIExpression()), !dbg !4784
  %1 = load i64, i64* %__esi, align 8, !dbg !4784
  store i64 %1, i64* %__esi, align 8, !dbg !4784
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4787, metadata !DIExpression()), !dbg !4784
  %2 = load i64, i64* %__edx, align 8, !dbg !4784
  store i64 %2, i64* %__edx, align 8, !dbg !4784
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4788, metadata !DIExpression()), !dbg !4784
  %3 = load i64, i64* %__ecx, align 8, !dbg !4784
  store i64 %3, i64* %__ecx, align 8, !dbg !4784
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4789, metadata !DIExpression()), !dbg !4784
  %4 = load i64, i64* %__eax, align 8, !dbg !4784
  store i64 %4, i64* %__eax, align 8, !dbg !4784
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !4784
  %6 = call i64 @llvm.read_register.i64(metadata !3808), !dbg !4790
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #7, !dbg !4790, !srcloc !4793
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4790
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4790
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4790
  call void @llvm.write_register.i64(metadata !3808, i64 %asmresult1), !dbg !4790
  %8 = load i64, i64* %__eax, align 8, !dbg !4790
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !4794, metadata !DIExpression()), !dbg !4796
  store i64 -1, i64* %__mask, align 8, !dbg !4796
  %9 = load i64, i64* %__mask, align 8, !dbg !4796
  store i64 %9, i64* %tmp, align 8, !dbg !4796
  %10 = load i64, i64* %tmp, align 8, !dbg !4796
  %and = and i64 %8, %10, !dbg !4790
  store i64 %and, i64* %__ret, align 8, !dbg !4790
  %11 = load i64, i64* %__ret, align 8, !dbg !4784
  store i64 %11, i64* %tmp2, align 8, !dbg !4797
  %12 = load i64, i64* %tmp2, align 8, !dbg !4784
  ret i64 %12, !dbg !4798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4799 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4800, metadata !DIExpression()), !dbg !4802
  %0 = load i64, i64* %__edi, align 8, !dbg !4802
  store i64 %0, i64* %__edi, align 8, !dbg !4802
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4803, metadata !DIExpression()), !dbg !4802
  %1 = load i64, i64* %__esi, align 8, !dbg !4802
  store i64 %1, i64* %__esi, align 8, !dbg !4802
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4804, metadata !DIExpression()), !dbg !4802
  %2 = load i64, i64* %__edx, align 8, !dbg !4802
  store i64 %2, i64* %__edx, align 8, !dbg !4802
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4805, metadata !DIExpression()), !dbg !4802
  %3 = load i64, i64* %__ecx, align 8, !dbg !4802
  store i64 %3, i64* %__ecx, align 8, !dbg !4802
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4806, metadata !DIExpression()), !dbg !4802
  %4 = load i64, i64* %__eax, align 8, !dbg !4802
  store i64 %4, i64* %__eax, align 8, !dbg !4802
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4802
  %6 = call i64 @llvm.read_register.i64(metadata !3808), !dbg !4802
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #7, !dbg !4802, !srcloc !4807
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4802
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4802
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4802
  call void @llvm.write_register.i64(metadata !3808, i64 %asmresult1), !dbg !4802
  ret void, !dbg !4808
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ml_get_combo_effect(%struct.ml_device* %ml, i64* %effect_handled, %struct.ff_effect* %combo_effect) #0 !dbg !4809 {
entry:
  %retval.i62 = alloca i64, align 8
  %m.addr.i63 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i63, metadata !4346, metadata !DIExpression()), !dbg !4812
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4346, metadata !DIExpression()), !dbg !4822
  %ml.addr = alloca %struct.ml_device*, align 8
  %effect_handled.addr = alloca i64*, align 8
  %combo_effect.addr = alloca %struct.ff_effect*, align 8
  %effect = alloca %struct.ff_effect*, align 8
  %state = alloca %struct.ml_effect_state*, align 8
  %effect_type = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ml_device* %ml, %struct.ml_device** %ml.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ml_device** %ml.addr, metadata !4824, metadata !DIExpression()), !dbg !4825
  store i64* %effect_handled, i64** %effect_handled.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %effect_handled.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  store %struct.ff_effect* %combo_effect, %struct.ff_effect** %combo_effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %combo_effect.addr, metadata !4828, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect, metadata !4830, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.declare(metadata %struct.ml_effect_state** %state, metadata !4832, metadata !DIExpression()), !dbg !4833
  call void @llvm.dbg.declare(metadata i32* %effect_type, metadata !4834, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4836, metadata !DIExpression()), !dbg !4837
  %0 = load %struct.ff_effect*, %struct.ff_effect** %combo_effect.addr, align 8, !dbg !4838
  %1 = bitcast %struct.ff_effect* %0 to i8*, !dbg !4839
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 48, i1 false), !dbg !4839
  store i32 0, i32* %i, align 4, !dbg !4840
  br label %for.cond, !dbg !4841

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !4842
  %cmp = icmp slt i32 %2, 16, !dbg !4843
  br i1 %cmp, label %for.body, label %for.end, !dbg !4844

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !4845
  %conv = sext i32 %3 to i64, !dbg !4845
  %4 = load i64*, i64** %effect_handled.addr, align 8, !dbg !4847
  %call = call zeroext i1 @__test_and_set_bit(i64 %conv, i64* %4) #10, !dbg !4848
  br i1 %call, label %if.then, label %if.end, !dbg !4849

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4850

if.end:                                           ; preds = %for.body
  %5 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !4851
  %states = getelementptr inbounds %struct.ml_device, %struct.ml_device* %5, i32 0, i32 1, !dbg !4852
  %6 = load i32, i32* %i, align 4, !dbg !4853
  %idxprom = sext i32 %6 to i64, !dbg !4851
  %arrayidx = getelementptr [16 x %struct.ml_effect_state], [16 x %struct.ml_effect_state]* %states, i64 0, i64 %idxprom, !dbg !4851
  store %struct.ml_effect_state* %arrayidx, %struct.ml_effect_state** %state, align 8, !dbg !4854
  %7 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4855
  %effect1 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %7, i32 0, i32 0, !dbg !4856
  %8 = load %struct.ff_effect*, %struct.ff_effect** %effect1, align 8, !dbg !4856
  store %struct.ff_effect* %8, %struct.ff_effect** %effect, align 8, !dbg !4857
  %9 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4858
  %flags = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %9, i32 0, i32 1, !dbg !4860
  %call2 = call zeroext i1 @test_bit(i64 0, i64* %flags) #10, !dbg !4861
  br i1 %call2, label %if.end4, label %if.then3, !dbg !4862

if.then3:                                         ; preds = %if.end
  br label %for.inc, !dbg !4863

if.end4:                                          ; preds = %if.end
  %10 = load volatile i64, i64* @jiffies, align 8, !dbg !4864
  %11 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4864
  %play_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %11, i32 0, i32 3, !dbg !4864
  %12 = load i64, i64* %play_at, align 8, !dbg !4864
  %sub = sub i64 %10, %12, !dbg !4864
  %cmp5 = icmp slt i64 %sub, 0, !dbg !4864
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !4866

if.then7:                                         ; preds = %if.end4
  br label %for.inc, !dbg !4867

if.end8:                                          ; preds = %if.end4
  %13 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !4868
  %dev = getelementptr inbounds %struct.ml_device, %struct.ml_device* %13, i32 0, i32 4, !dbg !4869
  %14 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4869
  %ff = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 20, !dbg !4870
  %15 = load %struct.ff_device*, %struct.ff_device** %ff, align 8, !dbg !4870
  %16 = load %struct.ff_effect*, %struct.ff_effect** %effect, align 8, !dbg !4871
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %16, i32 0, i32 0, !dbg !4872
  %17 = load i16, i16* %type, align 8, !dbg !4872
  %conv9 = zext i16 %17 to i32, !dbg !4871
  %call10 = call i32 @get_compatible_type(%struct.ff_device* %15, i32 %conv9) #10, !dbg !4873
  store i32 %call10, i32* %effect_type, align 4, !dbg !4874
  %18 = load %struct.ff_effect*, %struct.ff_effect** %combo_effect.addr, align 8, !dbg !4875
  %type11 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %18, i32 0, i32 0, !dbg !4877
  %19 = load i16, i16* %type11, align 8, !dbg !4877
  %conv12 = zext i16 %19 to i32, !dbg !4875
  %20 = load i32, i32* %effect_type, align 4, !dbg !4878
  %cmp13 = icmp ne i32 %conv12, %20, !dbg !4879
  br i1 %cmp13, label %if.then15, label %if.end25, !dbg !4880

if.then15:                                        ; preds = %if.end8
  %21 = load %struct.ff_effect*, %struct.ff_effect** %combo_effect.addr, align 8, !dbg !4881
  %type16 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %21, i32 0, i32 0, !dbg !4884
  %22 = load i16, i16* %type16, align 8, !dbg !4884
  %conv17 = zext i16 %22 to i32, !dbg !4881
  %cmp18 = icmp ne i32 %conv17, 0, !dbg !4885
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !4886

if.then20:                                        ; preds = %if.then15
  %23 = load i32, i32* %i, align 4, !dbg !4887
  %conv21 = sext i32 %23 to i64, !dbg !4887
  %24 = load i64*, i64** %effect_handled.addr, align 8, !dbg !4889
  call void @__clear_bit(i64 %conv21, i64* %24) #10, !dbg !4890
  br label %for.inc, !dbg !4891

if.end22:                                         ; preds = %if.then15
  %25 = load i32, i32* %effect_type, align 4, !dbg !4892
  %conv23 = trunc i32 %25 to i16, !dbg !4892
  %26 = load %struct.ff_effect*, %struct.ff_effect** %combo_effect.addr, align 8, !dbg !4893
  %type24 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %26, i32 0, i32 0, !dbg !4894
  store i16 %conv23, i16* %type24, align 8, !dbg !4895
  br label %if.end25, !dbg !4896

if.end25:                                         ; preds = %if.end22, %if.end8
  %27 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4897
  %flags26 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %27, i32 0, i32 1, !dbg !4898
  %call27 = call zeroext i1 @__test_and_clear_bit(i64 2, i64* %flags26) #10, !dbg !4899
  br i1 %call27, label %if.then28, label %if.else, !dbg !4900

if.then28:                                        ; preds = %if.end25
  %28 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4901
  %flags29 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %28, i32 0, i32 1, !dbg !4903
  call void @__clear_bit(i64 1, i64* %flags29) #10, !dbg !4904
  %29 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4905
  %flags30 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %29, i32 0, i32 1, !dbg !4906
  call void @__clear_bit(i64 0, i64* %flags30) #10, !dbg !4907
  br label %if.end57, !dbg !4908

if.else:                                          ; preds = %if.end25
  %30 = load %struct.ff_effect*, %struct.ff_effect** %effect, align 8, !dbg !4909
  %replay = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %30, i32 0, i32 4, !dbg !4910
  %length = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay, i32 0, i32 0, !dbg !4911
  %31 = load i16, i16* %length, align 2, !dbg !4911
  %conv31 = zext i16 %31 to i32, !dbg !4909
  %tobool = icmp ne i32 %conv31, 0, !dbg !4909
  br i1 %tobool, label %land.lhs.true, label %if.else54, !dbg !4912

land.lhs.true:                                    ; preds = %if.else
  %32 = load volatile i64, i64* @jiffies, align 8, !dbg !4913
  %33 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4913
  %stop_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %33, i32 0, i32 4, !dbg !4913
  %34 = load i64, i64* %stop_at, align 8, !dbg !4913
  %sub32 = sub i64 %32, %34, !dbg !4913
  %cmp33 = icmp sge i64 %sub32, 0, !dbg !4913
  br i1 %cmp33, label %if.then35, label %if.else54, !dbg !4914

if.then35:                                        ; preds = %land.lhs.true
  %35 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4915
  %flags36 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %35, i32 0, i32 1, !dbg !4916
  call void @__clear_bit(i64 1, i64* %flags36) #10, !dbg !4917
  %36 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4918
  %count = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %36, i32 0, i32 2, !dbg !4919
  %37 = load i32, i32* %count, align 8, !dbg !4920
  %dec = add i32 %37, -1, !dbg !4920
  store i32 %dec, i32* %count, align 8, !dbg !4920
  %cmp37 = icmp sle i32 %dec, 0, !dbg !4921
  br i1 %cmp37, label %if.then39, label %if.else41, !dbg !4922

if.then39:                                        ; preds = %if.then35
  %38 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4923
  %flags40 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %38, i32 0, i32 1, !dbg !4925
  call void @__clear_bit(i64 0, i64* %flags40) #10, !dbg !4926
  br label %if.end53, !dbg !4927

if.else41:                                        ; preds = %if.then35
  %39 = load volatile i64, i64* @jiffies, align 8, !dbg !4928
  %40 = load %struct.ff_effect*, %struct.ff_effect** %effect, align 8, !dbg !4929
  %replay42 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %40, i32 0, i32 4, !dbg !4930
  %delay = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay42, i32 0, i32 1, !dbg !4931
  %41 = load i16, i16* %delay, align 2, !dbg !4931
  %conv43 = zext i16 %41 to i32, !dbg !4929
  store i32 %conv43, i32* %m.addr.i, align 4
  %42 = load i32, i32* %m.addr.i, align 4, !dbg !4932
  %43 = call i1 @llvm.is.constant.i32(i32 %42) #7, !dbg !4933
  br i1 %43, label %if.then.i, label %if.else.i, !dbg !4934

if.then.i:                                        ; preds = %if.else41
  %44 = load i32, i32* %m.addr.i, align 4, !dbg !4935
  %cmp.i = icmp slt i32 %44, 0, !dbg !4936
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4937

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4938
  br label %msecs_to_jiffies.exit, !dbg !4938

if.end.i:                                         ; preds = %if.then.i
  %45 = load i32, i32* %m.addr.i, align 4, !dbg !4939
  %call.i = call i64 @_msecs_to_jiffies(i32 %45) #12, !dbg !4940
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4941
  br label %msecs_to_jiffies.exit, !dbg !4941

if.else.i:                                        ; preds = %if.else41
  %46 = load i32, i32* %m.addr.i, align 4, !dbg !4942
  %call2.i = call i64 @__msecs_to_jiffies(i32 %46) #12, !dbg !4943
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4944
  br label %msecs_to_jiffies.exit, !dbg !4944

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %47 = load i64, i64* %retval.i, align 8, !dbg !4945
  %add = add i64 %39, %47, !dbg !4946
  %48 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4947
  %play_at45 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %48, i32 0, i32 3, !dbg !4948
  store i64 %add, i64* %play_at45, align 8, !dbg !4949
  %49 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4950
  %play_at46 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %49, i32 0, i32 3, !dbg !4951
  %50 = load i64, i64* %play_at46, align 8, !dbg !4951
  %51 = load %struct.ff_effect*, %struct.ff_effect** %effect, align 8, !dbg !4952
  %replay47 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %51, i32 0, i32 4, !dbg !4953
  %length48 = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay47, i32 0, i32 0, !dbg !4954
  %52 = load i16, i16* %length48, align 2, !dbg !4954
  %conv49 = zext i16 %52 to i32, !dbg !4952
  store i32 %conv49, i32* %m.addr.i63, align 4
  %53 = load i32, i32* %m.addr.i63, align 4, !dbg !4955
  %54 = call i1 @llvm.is.constant.i32(i32 %53) #7, !dbg !4956
  br i1 %54, label %if.then.i65, label %if.else.i70, !dbg !4957

if.then.i65:                                      ; preds = %msecs_to_jiffies.exit
  %55 = load i32, i32* %m.addr.i63, align 4, !dbg !4958
  %cmp.i64 = icmp slt i32 %55, 0, !dbg !4959
  br i1 %cmp.i64, label %if.then1.i66, label %if.end.i68, !dbg !4960

if.then1.i66:                                     ; preds = %if.then.i65
  store i64 4611686018427387902, i64* %retval.i62, align 8, !dbg !4961
  br label %msecs_to_jiffies.exit71, !dbg !4961

if.end.i68:                                       ; preds = %if.then.i65
  %56 = load i32, i32* %m.addr.i63, align 4, !dbg !4962
  %call.i67 = call i64 @_msecs_to_jiffies(i32 %56) #12, !dbg !4963
  store i64 %call.i67, i64* %retval.i62, align 8, !dbg !4964
  br label %msecs_to_jiffies.exit71, !dbg !4964

if.else.i70:                                      ; preds = %msecs_to_jiffies.exit
  %57 = load i32, i32* %m.addr.i63, align 4, !dbg !4965
  %call2.i69 = call i64 @__msecs_to_jiffies(i32 %57) #12, !dbg !4966
  store i64 %call2.i69, i64* %retval.i62, align 8, !dbg !4967
  br label %msecs_to_jiffies.exit71, !dbg !4967

msecs_to_jiffies.exit71:                          ; preds = %if.then1.i66, %if.end.i68, %if.else.i70
  %58 = load i64, i64* %retval.i62, align 8, !dbg !4968
  %add51 = add i64 %50, %58, !dbg !4969
  %59 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4970
  %stop_at52 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %59, i32 0, i32 4, !dbg !4971
  store i64 %add51, i64* %stop_at52, align 8, !dbg !4972
  br label %if.end53

if.end53:                                         ; preds = %msecs_to_jiffies.exit71, %if.then39
  br label %if.end56, !dbg !4973

if.else54:                                        ; preds = %land.lhs.true, %if.else
  %60 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4974
  %flags55 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %60, i32 0, i32 1, !dbg !4976
  call void @__set_bit(i64 1, i64* %flags55) #10, !dbg !4977
  %61 = load volatile i64, i64* @jiffies, align 8, !dbg !4978
  %62 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4979
  %adj_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %62, i32 0, i32 5, !dbg !4980
  store i64 %61, i64* %adj_at, align 8, !dbg !4981
  %63 = load %struct.ff_effect*, %struct.ff_effect** %combo_effect.addr, align 8, !dbg !4982
  %64 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !4983
  %65 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !4984
  %gain = getelementptr inbounds %struct.ml_device, %struct.ml_device* %65, i32 0, i32 2, !dbg !4985
  %66 = load i32, i32* %gain, align 8, !dbg !4985
  call void @ml_combine_effects(%struct.ff_effect* %63, %struct.ml_effect_state* %64, i32 %66) #10, !dbg !4986
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.end53
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then28
  br label %for.inc, !dbg !4987

for.inc:                                          ; preds = %if.end57, %if.then20, %if.then7, %if.then3, %if.then
  %67 = load i32, i32* %i, align 4, !dbg !4988
  %inc = add i32 %67, 1, !dbg !4988
  store i32 %inc, i32* %i, align 4, !dbg !4988
  br label %for.cond, !dbg !4989, !llvm.loop !4990

for.end:                                          ; preds = %for.cond
  %68 = load %struct.ff_effect*, %struct.ff_effect** %combo_effect.addr, align 8, !dbg !4992
  %type58 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %68, i32 0, i32 0, !dbg !4993
  %69 = load i16, i16* %type58, align 8, !dbg !4993
  %conv59 = zext i16 %69 to i32, !dbg !4992
  %cmp60 = icmp ne i32 %conv59, 0, !dbg !4994
  %conv61 = zext i1 %cmp60 to i32, !dbg !4994
  ret i32 %conv61, !dbg !4995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ml_schedule_timer(%struct.ml_device* %ml) #0 !dbg !4996 {
entry:
  %ml.addr = alloca %struct.ml_device*, align 8
  %state = alloca %struct.ml_effect_state*, align 8
  %now = alloca i64, align 8
  %earliest = alloca i64, align 8
  %next_at = alloca i64, align 8
  %events = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  store %struct.ml_device* %ml, %struct.ml_device** %ml.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ml_device** %ml.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  call void @llvm.dbg.declare(metadata %struct.ml_effect_state** %state, metadata !4999, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.declare(metadata i64* %now, metadata !5001, metadata !DIExpression()), !dbg !5002
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !5003
  store i64 %0, i64* %now, align 8, !dbg !5002
  call void @llvm.dbg.declare(metadata i64* %earliest, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i64 0, i64* %earliest, align 8, !dbg !5005
  call void @llvm.dbg.declare(metadata i64* %next_at, metadata !5006, metadata !DIExpression()), !dbg !5007
  call void @llvm.dbg.declare(metadata i32* %events, metadata !5008, metadata !DIExpression()), !dbg !5009
  store i32 0, i32* %events, align 4, !dbg !5009
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5010, metadata !DIExpression()), !dbg !5011
  store i32 0, i32* %tmp, align 4, !dbg !5012
  %1 = load i32, i32* %tmp, align 4, !dbg !5015
  store i32 0, i32* %i, align 4, !dbg !5016
  br label %for.cond, !dbg !5018

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5019
  %cmp = icmp slt i32 %2, 16, !dbg !5021
  br i1 %cmp, label %for.body, label %for.end, !dbg !5022

for.body:                                         ; preds = %for.cond
  %3 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !5023
  %states = getelementptr inbounds %struct.ml_device, %struct.ml_device* %3, i32 0, i32 1, !dbg !5025
  %4 = load i32, i32* %i, align 4, !dbg !5026
  %idxprom = sext i32 %4 to i64, !dbg !5023
  %arrayidx = getelementptr [16 x %struct.ml_effect_state], [16 x %struct.ml_effect_state]* %states, i64 0, i64 %idxprom, !dbg !5023
  store %struct.ml_effect_state* %arrayidx, %struct.ml_effect_state** %state, align 8, !dbg !5027
  %5 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !5028
  %flags = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %5, i32 0, i32 1, !dbg !5030
  %call = call zeroext i1 @test_bit(i64 0, i64* %flags) #10, !dbg !5031
  br i1 %call, label %if.end, label %if.then, !dbg !5032

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5033

if.end:                                           ; preds = %for.body
  %6 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !5034
  %flags1 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %6, i32 0, i32 1, !dbg !5036
  %call2 = call zeroext i1 @test_bit(i64 1, i64* %flags1) #10, !dbg !5037
  br i1 %call2, label %if.then3, label %if.else, !dbg !5038

if.then3:                                         ; preds = %if.end
  %7 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !5039
  %call4 = call i64 @calculate_next_time(%struct.ml_effect_state* %7) #10, !dbg !5040
  store i64 %call4, i64* %next_at, align 8, !dbg !5041
  br label %if.end5, !dbg !5042

if.else:                                          ; preds = %if.end
  %8 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state, align 8, !dbg !5043
  %play_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %8, i32 0, i32 3, !dbg !5044
  %9 = load i64, i64* %play_at, align 8, !dbg !5044
  store i64 %9, i64* %next_at, align 8, !dbg !5045
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %10 = load i64, i64* %next_at, align 8, !dbg !5046
  %11 = load i64, i64* %now, align 8, !dbg !5046
  %sub = sub i64 %10, %11, !dbg !5046
  %cmp6 = icmp sge i64 %sub, 0, !dbg !5046
  br i1 %cmp6, label %land.lhs.true, label %if.end11, !dbg !5048

land.lhs.true:                                    ; preds = %if.end5
  %12 = load i32, i32* %events, align 4, !dbg !5049
  %inc = add i32 %12, 1, !dbg !5049
  store i32 %inc, i32* %events, align 4, !dbg !5049
  %cmp7 = icmp eq i32 %inc, 1, !dbg !5050
  br i1 %cmp7, label %if.then10, label %lor.lhs.false, !dbg !5051

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load i64, i64* %next_at, align 8, !dbg !5052
  %14 = load i64, i64* %earliest, align 8, !dbg !5052
  %sub8 = sub i64 %13, %14, !dbg !5052
  %cmp9 = icmp slt i64 %sub8, 0, !dbg !5052
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5053

if.then10:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %15 = load i64, i64* %next_at, align 8, !dbg !5054
  store i64 %15, i64* %earliest, align 8, !dbg !5055
  br label %if.end11, !dbg !5056

if.end11:                                         ; preds = %if.then10, %lor.lhs.false, %if.end5
  br label %for.inc, !dbg !5057

for.inc:                                          ; preds = %if.end11, %if.then
  %16 = load i32, i32* %i, align 4, !dbg !5058
  %inc12 = add i32 %16, 1, !dbg !5058
  store i32 %inc12, i32* %i, align 4, !dbg !5058
  br label %for.cond, !dbg !5059, !llvm.loop !5060

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %events, align 4, !dbg !5062
  %tobool = icmp ne i32 %17, 0, !dbg !5062
  br i1 %tobool, label %if.else16, label %if.then13, !dbg !5064

if.then13:                                        ; preds = %for.end
  store i32 0, i32* %tmp14, align 4, !dbg !5065
  %18 = load i32, i32* %tmp14, align 4, !dbg !5069
  %19 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !5070
  %timer = getelementptr inbounds %struct.ml_device, %struct.ml_device* %19, i32 0, i32 3, !dbg !5071
  %call15 = call i32 @del_timer(%struct.timer_list* %timer) #10, !dbg !5072
  br label %if.end20, !dbg !5073

if.else16:                                        ; preds = %for.end
  store i32 0, i32* %tmp17, align 4, !dbg !5074
  %20 = load i32, i32* %tmp17, align 4, !dbg !5078
  %21 = load %struct.ml_device*, %struct.ml_device** %ml.addr, align 8, !dbg !5079
  %timer18 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %21, i32 0, i32 3, !dbg !5080
  %22 = load i64, i64* %earliest, align 8, !dbg !5081
  %call19 = call i32 @mod_timer(%struct.timer_list* %timer18, i64 %22) #10, !dbg !5082
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then13
  ret void, !dbg !5083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__test_and_set_bit(i64 %nr, i64* %addr) #0 !dbg !5084 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5087, metadata !DIExpression()), !dbg !5089
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5091, metadata !DIExpression()), !dbg !5092
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5093, metadata !DIExpression()), !dbg !5094
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5095, metadata !DIExpression()), !dbg !5096
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5097, metadata !DIExpression()), !dbg !5098
  %0 = load i64, i64* %nr.addr, align 8, !dbg !5099
  %1 = load i64*, i64** %addr.addr, align 8, !dbg !5100
  call void @__instrument_read_write_bitop(i64 %0, i64* %1) #10, !dbg !5101
  %2 = load i64, i64* %nr.addr, align 8, !dbg !5102
  %3 = load i64*, i64** %addr.addr, align 8, !dbg !5103
  store i64 %2, i64* %nr.addr.i, align 8
  store i64* %3, i64** %addr.addr.i, align 8
  %4 = load i64*, i64** %addr.addr.i, align 8, !dbg !5104
  %5 = load i64, i64* %nr.addr.i, align 8, !dbg !5105
  %6 = call i8 asm " btsq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %4, i64 %5) #7, !dbg !5106, !srcloc !5107
  store i8 %6, i8* %oldbit.i, align 1, !dbg !5106
  %7 = load i8, i8* %oldbit.i, align 1, !dbg !5108
  %tobool.i = trunc i8 %7 to i1, !dbg !5108
  ret i1 %tobool.i, !dbg !5109
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @get_compatible_type(%struct.ff_device* %ff, i32 %effect_type) #0 !dbg !5110 {
entry:
  %retval = alloca i32, align 4
  %ff.addr = alloca %struct.ff_device*, align 8
  %effect_type.addr = alloca i32, align 4
  store %struct.ff_device* %ff, %struct.ff_device** %ff.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_device** %ff.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  store i32 %effect_type, i32* %effect_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %effect_type.addr, metadata !5115, metadata !DIExpression()), !dbg !5116
  %0 = load i32, i32* %effect_type.addr, align 4, !dbg !5117
  %conv = sext i32 %0 to i64, !dbg !5117
  %1 = load %struct.ff_device*, %struct.ff_device** %ff.addr, align 8, !dbg !5119
  %ffbit = getelementptr inbounds %struct.ff_device, %struct.ff_device* %1, i32 0, i32 7, !dbg !5120
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit, i64 0, i64 0, !dbg !5119
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %arraydecay) #10, !dbg !5121
  br i1 %call, label %if.then, label %if.end, !dbg !5122

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %effect_type.addr, align 4, !dbg !5123
  store i32 %2, i32* %retval, align 4, !dbg !5124
  br label %return, !dbg !5124

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %effect_type.addr, align 4, !dbg !5125
  %cmp = icmp eq i32 %3, 81, !dbg !5127
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !5128

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.ff_device*, %struct.ff_device** %ff.addr, align 8, !dbg !5129
  %ffbit2 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %4, i32 0, i32 7, !dbg !5130
  %arraydecay3 = getelementptr inbounds [2 x i64], [2 x i64]* %ffbit2, i64 0, i64 0, !dbg !5129
  %call4 = call zeroext i1 @test_bit(i64 80, i64* %arraydecay3) #10, !dbg !5131
  br i1 %call4, label %if.then6, label %if.end7, !dbg !5132

if.then6:                                         ; preds = %land.lhs.true
  store i32 80, i32* %retval, align 4, !dbg !5133
  br label %return, !dbg !5133

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0)) #13, !dbg !5134
  store i32 0, i32* %retval, align 4, !dbg !5135
  br label %return, !dbg !5135

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !5136
  ret i32 %5, !dbg !5136
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clear_bit(i64 %nr, i64* %addr) #0 !dbg !5137 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5138, metadata !DIExpression()), !dbg !5140
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5142, metadata !DIExpression()), !dbg !5143
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5144, metadata !DIExpression()), !dbg !5146
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5148, metadata !DIExpression()), !dbg !5149
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5154
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5155
  %div = sdiv i64 %1, 64, !dbg !5155
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5156
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5154
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5157
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5158
  %conv.i = trunc i64 %4 to i32, !dbg !5158
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5159
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5160
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5160
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !5160
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5161
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5162
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5163
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5164
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #7, !dbg !5165, !srcloc !5166
  ret void, !dbg !5167
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__test_and_clear_bit(i64 %nr, i64* %addr) #0 !dbg !5168 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5169, metadata !DIExpression()), !dbg !5171
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5173, metadata !DIExpression()), !dbg !5174
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5175, metadata !DIExpression()), !dbg !5176
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5179, metadata !DIExpression()), !dbg !5180
  %0 = load i64, i64* %nr.addr, align 8, !dbg !5181
  %1 = load i64*, i64** %addr.addr, align 8, !dbg !5182
  call void @__instrument_read_write_bitop(i64 %0, i64* %1) #10, !dbg !5183
  %2 = load i64, i64* %nr.addr, align 8, !dbg !5184
  %3 = load i64*, i64** %addr.addr, align 8, !dbg !5185
  store i64 %2, i64* %nr.addr.i, align 8
  store i64* %3, i64** %addr.addr.i, align 8
  %4 = load i64*, i64** %addr.addr.i, align 8, !dbg !5186
  %5 = load i64, i64* %nr.addr.i, align 8, !dbg !5187
  %6 = call i8 asm sideeffect " btrq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %4, i64 %5) #7, !dbg !5188, !srcloc !5189
  store i8 %6, i8* %oldbit.i, align 1, !dbg !5188
  %7 = load i8, i8* %oldbit.i, align 1, !dbg !5190
  %tobool.i = trunc i8 %7 to i1, !dbg !5190
  ret i1 %tobool.i, !dbg !5191
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !5192 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5193, metadata !DIExpression()), !dbg !5195
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5197, metadata !DIExpression()), !dbg !5198
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5144, metadata !DIExpression()), !dbg !5199
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5148, metadata !DIExpression()), !dbg !5201
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5204, metadata !DIExpression()), !dbg !5205
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5206
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5207
  %div = sdiv i64 %1, 64, !dbg !5207
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5208
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5206
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5209
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5210
  %conv.i = trunc i64 %4 to i32, !dbg !5210
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5211
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5212
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5212
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !5212
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5213
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5214
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !5215
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !5216
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #7, !dbg !5217, !srcloc !5218
  ret void, !dbg !5219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ml_combine_effects(%struct.ff_effect* %effect, %struct.ml_effect_state* %state, i32 %gain) #0 !dbg !5220 {
entry:
  %effect.addr = alloca %struct.ff_effect*, align 8
  %state.addr = alloca %struct.ml_effect_state*, align 8
  %gain.addr = alloca i32, align 4
  %new = alloca %struct.ff_effect*, align 8
  %strong = alloca i32, align 4
  %weak = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %level = alloca i16, align 2
  %__UNIQUE_ID___x215 = alloca i32, align 4
  %__UNIQUE_ID___x213 = alloca i32, align 4
  %__UNIQUE_ID___y214 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___y216 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %__UNIQUE_ID___x219 = alloca i32, align 4
  %__UNIQUE_ID___x217 = alloca i32, align 4
  %__UNIQUE_ID___y218 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  %__UNIQUE_ID___y220 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %__UNIQUE_ID___x221 = alloca i32, align 4
  %__UNIQUE_ID___y222 = alloca i32, align 4
  %tmp105 = alloca i32, align 4
  %__UNIQUE_ID___x223 = alloca i32, align 4
  %__UNIQUE_ID___y224 = alloca i32, align 4
  %tmp121 = alloca i32, align 4
  %__x = alloca i16, align 2
  %tmp134 = alloca i32, align 4
  %__UNIQUE_ID___x225 = alloca i32, align 4
  %__UNIQUE_ID___y226 = alloca i32, align 4
  %tmp174 = alloca i32, align 4
  %__UNIQUE_ID___x227 = alloca i32, align 4
  %__UNIQUE_ID___y228 = alloca i32, align 4
  %tmp190 = alloca i32, align 4
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  store %struct.ml_effect_state* %state, %struct.ml_effect_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ml_effect_state** %state.addr, metadata !5225, metadata !DIExpression()), !dbg !5226
  store i32 %gain, i32* %gain.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gain.addr, metadata !5227, metadata !DIExpression()), !dbg !5228
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %new, metadata !5229, metadata !DIExpression()), !dbg !5230
  %0 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5231
  %effect1 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %0, i32 0, i32 0, !dbg !5232
  %1 = load %struct.ff_effect*, %struct.ff_effect** %effect1, align 8, !dbg !5232
  store %struct.ff_effect* %1, %struct.ff_effect** %new, align 8, !dbg !5230
  call void @llvm.dbg.declare(metadata i32* %strong, metadata !5233, metadata !DIExpression()), !dbg !5234
  call void @llvm.dbg.declare(metadata i32* %weak, metadata !5235, metadata !DIExpression()), !dbg !5236
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5237, metadata !DIExpression()), !dbg !5238
  call void @llvm.dbg.declare(metadata i32* %x, metadata !5239, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.declare(metadata i32* %y, metadata !5241, metadata !DIExpression()), !dbg !5242
  call void @llvm.dbg.declare(metadata i16* %level, metadata !5243, metadata !DIExpression()), !dbg !5244
  %2 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5245
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %2, i32 0, i32 0, !dbg !5246
  %3 = load i16, i16* %type, align 8, !dbg !5246
  %conv = zext i16 %3 to i32, !dbg !5245
  switch i32 %conv, label %sw.default [
    i32 82, label %sw.bb
    i32 80, label %sw.bb59
    i32 81, label %sw.bb132
  ], !dbg !5247

sw.bb:                                            ; preds = %entry
  %4 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5248
  %direction = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %4, i32 0, i32 2, !dbg !5250
  %5 = load i16, i16* %direction, align 4, !dbg !5250
  %conv2 = zext i16 %5 to i32, !dbg !5248
  %mul = mul i32 %conv2, 360, !dbg !5251
  %div = sdiv i32 %mul, 65535, !dbg !5252
  store i32 %div, i32* %i, align 4, !dbg !5253
  %6 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5254
  %7 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5255
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %7, i32 0, i32 5, !dbg !5256
  %constant = bitcast %union.anon* %u to %struct.ff_constant_effect*, !dbg !5257
  %level3 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant, i32 0, i32 0, !dbg !5258
  %8 = load i16, i16* %level3, align 8, !dbg !5258
  %conv4 = sext i16 %8 to i32, !dbg !5255
  %9 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5259
  %u5 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %9, i32 0, i32 5, !dbg !5260
  %constant6 = bitcast %union.anon* %u5 to %struct.ff_constant_effect*, !dbg !5261
  %envelope = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant6, i32 0, i32 1, !dbg !5262
  %call = call i32 @apply_envelope(%struct.ml_effect_state* %6, i32 %conv4, %struct.ff_envelope* %envelope) #10, !dbg !5263
  %conv7 = trunc i32 %call to i16, !dbg !5263
  %call8 = call signext i16 @fixp_new16(i16 signext %conv7) #10, !dbg !5264
  store i16 %call8, i16* %level, align 2, !dbg !5265
  %10 = load i32, i32* %i, align 4, !dbg !5266
  %call9 = call i32 @fixp_sin32(i32 %10) #10, !dbg !5266
  %shr = ashr i32 %call9, 16, !dbg !5266
  %conv10 = trunc i32 %shr to i16, !dbg !5266
  %11 = load i16, i16* %level, align 2, !dbg !5267
  %call11 = call signext i16 @fixp_mult(i16 signext %conv10, i16 signext %11) #10, !dbg !5268
  %conv12 = sext i16 %call11 to i32, !dbg !5268
  %12 = load i32, i32* %gain.addr, align 4, !dbg !5269
  %mul13 = mul i32 %conv12, %12, !dbg !5270
  %div14 = sdiv i32 %mul13, 65535, !dbg !5271
  store i32 %div14, i32* %x, align 4, !dbg !5272
  %13 = load i32, i32* %i, align 4, !dbg !5273
  %add = add i32 %13, 90, !dbg !5273
  %call15 = call i32 @fixp_sin32(i32 %add) #10, !dbg !5273
  %shr16 = ashr i32 %call15, 16, !dbg !5273
  %sub = sub i32 0, %shr16, !dbg !5274
  %conv17 = trunc i32 %sub to i16, !dbg !5274
  %14 = load i16, i16* %level, align 2, !dbg !5275
  %call18 = call signext i16 @fixp_mult(i16 signext %conv17, i16 signext %14) #10, !dbg !5276
  %conv19 = sext i16 %call18 to i32, !dbg !5276
  %15 = load i32, i32* %gain.addr, align 4, !dbg !5277
  %mul20 = mul i32 %conv19, %15, !dbg !5278
  %div21 = sdiv i32 %mul20, 65535, !dbg !5279
  store i32 %div21, i32* %y, align 4, !dbg !5280
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x215, metadata !5281, metadata !DIExpression()), !dbg !5283
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x213, metadata !5284, metadata !DIExpression()), !dbg !5286
  %16 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5286
  %u22 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %16, i32 0, i32 5, !dbg !5286
  %ramp = bitcast %union.anon* %u22 to %struct.ff_ramp_effect*, !dbg !5286
  %start_level = getelementptr inbounds %struct.ff_ramp_effect, %struct.ff_ramp_effect* %ramp, i32 0, i32 0, !dbg !5286
  %17 = load i16, i16* %start_level, align 8, !dbg !5286
  %conv23 = sext i16 %17 to i32, !dbg !5286
  %18 = load i32, i32* %x, align 4, !dbg !5286
  %add24 = add i32 %conv23, %18, !dbg !5286
  store i32 %add24, i32* %__UNIQUE_ID___x213, align 4, !dbg !5286
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y214, metadata !5287, metadata !DIExpression()), !dbg !5286
  store i32 -128, i32* %__UNIQUE_ID___y214, align 4, !dbg !5286
  %19 = load i32, i32* %__UNIQUE_ID___x213, align 4, !dbg !5286
  %20 = load i32, i32* %__UNIQUE_ID___y214, align 4, !dbg !5286
  %cmp = icmp sgt i32 %19, %20, !dbg !5286
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5286

cond.true:                                        ; preds = %sw.bb
  %21 = load i32, i32* %__UNIQUE_ID___x213, align 4, !dbg !5286
  br label %cond.end, !dbg !5286

cond.false:                                       ; preds = %sw.bb
  %22 = load i32, i32* %__UNIQUE_ID___y214, align 4, !dbg !5286
  br label %cond.end, !dbg !5286

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ], !dbg !5286
  store i32 %cond, i32* %tmp, align 4, !dbg !5286
  %23 = load i32, i32* %tmp, align 4, !dbg !5286
  store i32 %23, i32* %__UNIQUE_ID___x215, align 4, !dbg !5283
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y216, metadata !5288, metadata !DIExpression()), !dbg !5283
  store i32 127, i32* %__UNIQUE_ID___y216, align 4, !dbg !5283
  %24 = load i32, i32* %__UNIQUE_ID___x215, align 4, !dbg !5283
  %25 = load i32, i32* %__UNIQUE_ID___y216, align 4, !dbg !5283
  %cmp27 = icmp slt i32 %24, %25, !dbg !5283
  br i1 %cmp27, label %cond.true29, label %cond.false30, !dbg !5283

cond.true29:                                      ; preds = %cond.end
  %26 = load i32, i32* %__UNIQUE_ID___x215, align 4, !dbg !5283
  br label %cond.end31, !dbg !5283

cond.false30:                                     ; preds = %cond.end
  %27 = load i32, i32* %__UNIQUE_ID___y216, align 4, !dbg !5283
  br label %cond.end31, !dbg !5283

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i32 [ %26, %cond.true29 ], [ %27, %cond.false30 ], !dbg !5283
  store i32 %cond32, i32* %tmp26, align 4, !dbg !5283
  %28 = load i32, i32* %tmp26, align 4, !dbg !5283
  %conv33 = trunc i32 %28 to i16, !dbg !5289
  %29 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5290
  %u34 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %29, i32 0, i32 5, !dbg !5291
  %ramp35 = bitcast %union.anon* %u34 to %struct.ff_ramp_effect*, !dbg !5292
  %start_level36 = getelementptr inbounds %struct.ff_ramp_effect, %struct.ff_ramp_effect* %ramp35, i32 0, i32 0, !dbg !5293
  store i16 %conv33, i16* %start_level36, align 8, !dbg !5294
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x219, metadata !5295, metadata !DIExpression()), !dbg !5297
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x217, metadata !5298, metadata !DIExpression()), !dbg !5300
  %30 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5300
  %u37 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %30, i32 0, i32 5, !dbg !5300
  %ramp38 = bitcast %union.anon* %u37 to %struct.ff_ramp_effect*, !dbg !5300
  %end_level = getelementptr inbounds %struct.ff_ramp_effect, %struct.ff_ramp_effect* %ramp38, i32 0, i32 1, !dbg !5300
  %31 = load i16, i16* %end_level, align 2, !dbg !5300
  %conv39 = sext i16 %31 to i32, !dbg !5300
  %32 = load i32, i32* %y, align 4, !dbg !5300
  %add40 = add i32 %conv39, %32, !dbg !5300
  store i32 %add40, i32* %__UNIQUE_ID___x217, align 4, !dbg !5300
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y218, metadata !5301, metadata !DIExpression()), !dbg !5300
  store i32 -128, i32* %__UNIQUE_ID___y218, align 4, !dbg !5300
  %33 = load i32, i32* %__UNIQUE_ID___x217, align 4, !dbg !5300
  %34 = load i32, i32* %__UNIQUE_ID___y218, align 4, !dbg !5300
  %cmp42 = icmp sgt i32 %33, %34, !dbg !5300
  br i1 %cmp42, label %cond.true44, label %cond.false45, !dbg !5300

cond.true44:                                      ; preds = %cond.end31
  %35 = load i32, i32* %__UNIQUE_ID___x217, align 4, !dbg !5300
  br label %cond.end46, !dbg !5300

cond.false45:                                     ; preds = %cond.end31
  %36 = load i32, i32* %__UNIQUE_ID___y218, align 4, !dbg !5300
  br label %cond.end46, !dbg !5300

cond.end46:                                       ; preds = %cond.false45, %cond.true44
  %cond47 = phi i32 [ %35, %cond.true44 ], [ %36, %cond.false45 ], !dbg !5300
  store i32 %cond47, i32* %tmp41, align 4, !dbg !5300
  %37 = load i32, i32* %tmp41, align 4, !dbg !5300
  store i32 %37, i32* %__UNIQUE_ID___x219, align 4, !dbg !5297
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y220, metadata !5302, metadata !DIExpression()), !dbg !5297
  store i32 127, i32* %__UNIQUE_ID___y220, align 4, !dbg !5297
  %38 = load i32, i32* %__UNIQUE_ID___x219, align 4, !dbg !5297
  %39 = load i32, i32* %__UNIQUE_ID___y220, align 4, !dbg !5297
  %cmp49 = icmp slt i32 %38, %39, !dbg !5297
  br i1 %cmp49, label %cond.true51, label %cond.false52, !dbg !5297

cond.true51:                                      ; preds = %cond.end46
  %40 = load i32, i32* %__UNIQUE_ID___x219, align 4, !dbg !5297
  br label %cond.end53, !dbg !5297

cond.false52:                                     ; preds = %cond.end46
  %41 = load i32, i32* %__UNIQUE_ID___y220, align 4, !dbg !5297
  br label %cond.end53, !dbg !5297

cond.end53:                                       ; preds = %cond.false52, %cond.true51
  %cond54 = phi i32 [ %40, %cond.true51 ], [ %41, %cond.false52 ], !dbg !5297
  store i32 %cond54, i32* %tmp48, align 4, !dbg !5297
  %42 = load i32, i32* %tmp48, align 4, !dbg !5297
  %conv55 = trunc i32 %42 to i16, !dbg !5303
  %43 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5304
  %u56 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %43, i32 0, i32 5, !dbg !5305
  %ramp57 = bitcast %union.anon* %u56 to %struct.ff_ramp_effect*, !dbg !5306
  %end_level58 = getelementptr inbounds %struct.ff_ramp_effect, %struct.ff_ramp_effect* %ramp57, i32 0, i32 1, !dbg !5307
  store i16 %conv55, i16* %end_level58, align 2, !dbg !5308
  br label %sw.epilog, !dbg !5309

sw.bb59:                                          ; preds = %entry
  %44 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5310
  %u60 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %44, i32 0, i32 5, !dbg !5311
  %rumble = bitcast %union.anon* %u60 to %struct.ff_rumble_effect*, !dbg !5312
  %strong_magnitude = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble, i32 0, i32 0, !dbg !5313
  %45 = load i16, i16* %strong_magnitude, align 8, !dbg !5313
  %conv61 = zext i16 %45 to i32, !dbg !5314
  %46 = load i32, i32* %gain.addr, align 4, !dbg !5315
  %mul62 = mul i32 %conv61, %46, !dbg !5316
  %div63 = udiv i32 %mul62, 65535, !dbg !5317
  store i32 %div63, i32* %strong, align 4, !dbg !5318
  %47 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5319
  %u64 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %47, i32 0, i32 5, !dbg !5320
  %rumble65 = bitcast %union.anon* %u64 to %struct.ff_rumble_effect*, !dbg !5321
  %weak_magnitude = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble65, i32 0, i32 1, !dbg !5322
  %48 = load i16, i16* %weak_magnitude, align 2, !dbg !5322
  %conv66 = zext i16 %48 to i32, !dbg !5323
  %49 = load i32, i32* %gain.addr, align 4, !dbg !5324
  %mul67 = mul i32 %conv66, %49, !dbg !5325
  %div68 = udiv i32 %mul67, 65535, !dbg !5326
  store i32 %div68, i32* %weak, align 4, !dbg !5327
  %50 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5328
  %u69 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %50, i32 0, i32 5, !dbg !5330
  %rumble70 = bitcast %union.anon* %u69 to %struct.ff_rumble_effect*, !dbg !5331
  %strong_magnitude71 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble70, i32 0, i32 0, !dbg !5332
  %51 = load i16, i16* %strong_magnitude71, align 8, !dbg !5332
  %conv72 = zext i16 %51 to i32, !dbg !5328
  %52 = load i32, i32* %strong, align 4, !dbg !5333
  %add73 = add i32 %conv72, %52, !dbg !5334
  %tobool = icmp ne i32 %add73, 0, !dbg !5334
  br i1 %tobool, label %if.then, label %if.else, !dbg !5335

if.then:                                          ; preds = %sw.bb59
  %53 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5336
  %direction74 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %53, i32 0, i32 2, !dbg !5337
  %54 = load i16, i16* %direction74, align 4, !dbg !5337
  %55 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5338
  %u75 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %55, i32 0, i32 5, !dbg !5339
  %rumble76 = bitcast %union.anon* %u75 to %struct.ff_rumble_effect*, !dbg !5340
  %strong_magnitude77 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble76, i32 0, i32 0, !dbg !5341
  %56 = load i16, i16* %strong_magnitude77, align 8, !dbg !5341
  %57 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5342
  %direction78 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %57, i32 0, i32 2, !dbg !5343
  %58 = load i16, i16* %direction78, align 4, !dbg !5343
  %59 = load i32, i32* %strong, align 4, !dbg !5344
  %conv79 = trunc i32 %59 to i16, !dbg !5344
  %call80 = call zeroext i16 @ml_calculate_direction(i16 zeroext %54, i16 zeroext %56, i16 zeroext %58, i16 zeroext %conv79) #10, !dbg !5345
  %60 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5346
  %direction81 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %60, i32 0, i32 2, !dbg !5347
  store i16 %call80, i16* %direction81, align 4, !dbg !5348
  br label %if.end99, !dbg !5346

if.else:                                          ; preds = %sw.bb59
  %61 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5349
  %u82 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %61, i32 0, i32 5, !dbg !5351
  %rumble83 = bitcast %union.anon* %u82 to %struct.ff_rumble_effect*, !dbg !5352
  %weak_magnitude84 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble83, i32 0, i32 1, !dbg !5353
  %62 = load i16, i16* %weak_magnitude84, align 2, !dbg !5353
  %conv85 = zext i16 %62 to i32, !dbg !5349
  %63 = load i32, i32* %weak, align 4, !dbg !5354
  %add86 = add i32 %conv85, %63, !dbg !5355
  %tobool87 = icmp ne i32 %add86, 0, !dbg !5355
  br i1 %tobool87, label %if.then88, label %if.else97, !dbg !5356

if.then88:                                        ; preds = %if.else
  %64 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5357
  %direction89 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %64, i32 0, i32 2, !dbg !5358
  %65 = load i16, i16* %direction89, align 4, !dbg !5358
  %66 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5359
  %u90 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %66, i32 0, i32 5, !dbg !5360
  %rumble91 = bitcast %union.anon* %u90 to %struct.ff_rumble_effect*, !dbg !5361
  %weak_magnitude92 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble91, i32 0, i32 1, !dbg !5362
  %67 = load i16, i16* %weak_magnitude92, align 2, !dbg !5362
  %68 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5363
  %direction93 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %68, i32 0, i32 2, !dbg !5364
  %69 = load i16, i16* %direction93, align 4, !dbg !5364
  %70 = load i32, i32* %weak, align 4, !dbg !5365
  %conv94 = trunc i32 %70 to i16, !dbg !5365
  %call95 = call zeroext i16 @ml_calculate_direction(i16 zeroext %65, i16 zeroext %67, i16 zeroext %69, i16 zeroext %conv94) #10, !dbg !5366
  %71 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5367
  %direction96 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %71, i32 0, i32 2, !dbg !5368
  store i16 %call95, i16* %direction96, align 4, !dbg !5369
  br label %if.end, !dbg !5367

if.else97:                                        ; preds = %if.else
  %72 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5370
  %direction98 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %72, i32 0, i32 2, !dbg !5371
  store i16 0, i16* %direction98, align 4, !dbg !5372
  br label %if.end

if.end:                                           ; preds = %if.else97, %if.then88
  br label %if.end99

if.end99:                                         ; preds = %if.end, %if.then
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x221, metadata !5373, metadata !DIExpression()), !dbg !5375
  %73 = load i32, i32* %strong, align 4, !dbg !5375
  %74 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5375
  %u100 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %74, i32 0, i32 5, !dbg !5375
  %rumble101 = bitcast %union.anon* %u100 to %struct.ff_rumble_effect*, !dbg !5375
  %strong_magnitude102 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble101, i32 0, i32 0, !dbg !5375
  %75 = load i16, i16* %strong_magnitude102, align 8, !dbg !5375
  %conv103 = zext i16 %75 to i32, !dbg !5375
  %add104 = add i32 %73, %conv103, !dbg !5375
  store i32 %add104, i32* %__UNIQUE_ID___x221, align 4, !dbg !5375
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y222, metadata !5376, metadata !DIExpression()), !dbg !5375
  store i32 65535, i32* %__UNIQUE_ID___y222, align 4, !dbg !5375
  %76 = load i32, i32* %__UNIQUE_ID___x221, align 4, !dbg !5375
  %77 = load i32, i32* %__UNIQUE_ID___y222, align 4, !dbg !5375
  %cmp106 = icmp ult i32 %76, %77, !dbg !5375
  br i1 %cmp106, label %cond.true108, label %cond.false109, !dbg !5375

cond.true108:                                     ; preds = %if.end99
  %78 = load i32, i32* %__UNIQUE_ID___x221, align 4, !dbg !5375
  br label %cond.end110, !dbg !5375

cond.false109:                                    ; preds = %if.end99
  %79 = load i32, i32* %__UNIQUE_ID___y222, align 4, !dbg !5375
  br label %cond.end110, !dbg !5375

cond.end110:                                      ; preds = %cond.false109, %cond.true108
  %cond111 = phi i32 [ %78, %cond.true108 ], [ %79, %cond.false109 ], !dbg !5375
  store i32 %cond111, i32* %tmp105, align 4, !dbg !5375
  %80 = load i32, i32* %tmp105, align 4, !dbg !5375
  %conv112 = trunc i32 %80 to i16, !dbg !5377
  %81 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5378
  %u113 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %81, i32 0, i32 5, !dbg !5379
  %rumble114 = bitcast %union.anon* %u113 to %struct.ff_rumble_effect*, !dbg !5380
  %strong_magnitude115 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble114, i32 0, i32 0, !dbg !5381
  store i16 %conv112, i16* %strong_magnitude115, align 8, !dbg !5382
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x223, metadata !5383, metadata !DIExpression()), !dbg !5385
  %82 = load i32, i32* %weak, align 4, !dbg !5385
  %83 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5385
  %u116 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %83, i32 0, i32 5, !dbg !5385
  %rumble117 = bitcast %union.anon* %u116 to %struct.ff_rumble_effect*, !dbg !5385
  %weak_magnitude118 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble117, i32 0, i32 1, !dbg !5385
  %84 = load i16, i16* %weak_magnitude118, align 2, !dbg !5385
  %conv119 = zext i16 %84 to i32, !dbg !5385
  %add120 = add i32 %82, %conv119, !dbg !5385
  store i32 %add120, i32* %__UNIQUE_ID___x223, align 4, !dbg !5385
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y224, metadata !5386, metadata !DIExpression()), !dbg !5385
  store i32 65535, i32* %__UNIQUE_ID___y224, align 4, !dbg !5385
  %85 = load i32, i32* %__UNIQUE_ID___x223, align 4, !dbg !5385
  %86 = load i32, i32* %__UNIQUE_ID___y224, align 4, !dbg !5385
  %cmp122 = icmp ult i32 %85, %86, !dbg !5385
  br i1 %cmp122, label %cond.true124, label %cond.false125, !dbg !5385

cond.true124:                                     ; preds = %cond.end110
  %87 = load i32, i32* %__UNIQUE_ID___x223, align 4, !dbg !5385
  br label %cond.end126, !dbg !5385

cond.false125:                                    ; preds = %cond.end110
  %88 = load i32, i32* %__UNIQUE_ID___y224, align 4, !dbg !5385
  br label %cond.end126, !dbg !5385

cond.end126:                                      ; preds = %cond.false125, %cond.true124
  %cond127 = phi i32 [ %87, %cond.true124 ], [ %88, %cond.false125 ], !dbg !5385
  store i32 %cond127, i32* %tmp121, align 4, !dbg !5385
  %89 = load i32, i32* %tmp121, align 4, !dbg !5385
  %conv128 = trunc i32 %89 to i16, !dbg !5387
  %90 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5388
  %u129 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %90, i32 0, i32 5, !dbg !5389
  %rumble130 = bitcast %union.anon* %u129 to %struct.ff_rumble_effect*, !dbg !5390
  %weak_magnitude131 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble130, i32 0, i32 1, !dbg !5391
  store i16 %conv128, i16* %weak_magnitude131, align 2, !dbg !5392
  br label %sw.epilog, !dbg !5393

sw.bb132:                                         ; preds = %entry
  %91 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5394
  call void @llvm.dbg.declare(metadata i16* %__x, metadata !5395, metadata !DIExpression()), !dbg !5397
  %92 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5397
  %u133 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %92, i32 0, i32 5, !dbg !5397
  %periodic = bitcast %union.anon* %u133 to %struct.ff_periodic_effect*, !dbg !5397
  %magnitude = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic, i32 0, i32 2, !dbg !5397
  %93 = load i16, i16* %magnitude, align 4, !dbg !5397
  store i16 %93, i16* %__x, align 2, !dbg !5397
  %94 = load i16, i16* %__x, align 2, !dbg !5397
  %conv135 = sext i16 %94 to i32, !dbg !5397
  %cmp136 = icmp slt i32 %conv135, 0, !dbg !5397
  br i1 %cmp136, label %cond.true138, label %cond.false141, !dbg !5397

cond.true138:                                     ; preds = %sw.bb132
  %95 = load i16, i16* %__x, align 2, !dbg !5397
  %conv139 = sext i16 %95 to i32, !dbg !5397
  %sub140 = sub i32 0, %conv139, !dbg !5397
  br label %cond.end143, !dbg !5397

cond.false141:                                    ; preds = %sw.bb132
  %96 = load i16, i16* %__x, align 2, !dbg !5397
  %conv142 = sext i16 %96 to i32, !dbg !5397
  br label %cond.end143, !dbg !5397

cond.end143:                                      ; preds = %cond.false141, %cond.true138
  %cond144 = phi i32 [ %sub140, %cond.true138 ], [ %conv142, %cond.false141 ], !dbg !5397
  store i32 %cond144, i32* %tmp134, align 4, !dbg !5397
  %97 = load i32, i32* %tmp134, align 4, !dbg !5397
  %98 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5398
  %u145 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %98, i32 0, i32 5, !dbg !5399
  %periodic146 = bitcast %union.anon* %u145 to %struct.ff_periodic_effect*, !dbg !5400
  %envelope147 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic146, i32 0, i32 5, !dbg !5401
  %call148 = call i32 @apply_envelope(%struct.ml_effect_state* %91, i32 %97, %struct.ff_envelope* %envelope147) #10, !dbg !5402
  store i32 %call148, i32* %i, align 4, !dbg !5403
  %99 = load i32, i32* %i, align 4, !dbg !5404
  %100 = load i32, i32* %gain.addr, align 4, !dbg !5405
  %mul149 = mul i32 %99, %100, !dbg !5406
  %div150 = udiv i32 %mul149, 32767, !dbg !5407
  store i32 %div150, i32* %i, align 4, !dbg !5408
  %101 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5409
  %u151 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %101, i32 0, i32 5, !dbg !5411
  %rumble152 = bitcast %union.anon* %u151 to %struct.ff_rumble_effect*, !dbg !5412
  %strong_magnitude153 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble152, i32 0, i32 0, !dbg !5413
  %102 = load i16, i16* %strong_magnitude153, align 8, !dbg !5413
  %conv154 = zext i16 %102 to i32, !dbg !5409
  %103 = load i32, i32* %i, align 4, !dbg !5414
  %add155 = add i32 %conv154, %103, !dbg !5415
  %tobool156 = icmp ne i32 %add155, 0, !dbg !5415
  br i1 %tobool156, label %if.then157, label %if.else166, !dbg !5416

if.then157:                                       ; preds = %cond.end143
  %104 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5417
  %direction158 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %104, i32 0, i32 2, !dbg !5418
  %105 = load i16, i16* %direction158, align 4, !dbg !5418
  %106 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5419
  %u159 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %106, i32 0, i32 5, !dbg !5420
  %rumble160 = bitcast %union.anon* %u159 to %struct.ff_rumble_effect*, !dbg !5421
  %strong_magnitude161 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble160, i32 0, i32 0, !dbg !5422
  %107 = load i16, i16* %strong_magnitude161, align 8, !dbg !5422
  %108 = load %struct.ff_effect*, %struct.ff_effect** %new, align 8, !dbg !5423
  %direction162 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %108, i32 0, i32 2, !dbg !5424
  %109 = load i16, i16* %direction162, align 4, !dbg !5424
  %110 = load i32, i32* %i, align 4, !dbg !5425
  %conv163 = trunc i32 %110 to i16, !dbg !5425
  %call164 = call zeroext i16 @ml_calculate_direction(i16 zeroext %105, i16 zeroext %107, i16 zeroext %109, i16 zeroext %conv163) #10, !dbg !5426
  %111 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5427
  %direction165 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %111, i32 0, i32 2, !dbg !5428
  store i16 %call164, i16* %direction165, align 4, !dbg !5429
  br label %if.end168, !dbg !5427

if.else166:                                       ; preds = %cond.end143
  %112 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5430
  %direction167 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %112, i32 0, i32 2, !dbg !5431
  store i16 0, i16* %direction167, align 4, !dbg !5432
  br label %if.end168

if.end168:                                        ; preds = %if.else166, %if.then157
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x225, metadata !5433, metadata !DIExpression()), !dbg !5435
  %113 = load i32, i32* %i, align 4, !dbg !5435
  %114 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5435
  %u169 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %114, i32 0, i32 5, !dbg !5435
  %rumble170 = bitcast %union.anon* %u169 to %struct.ff_rumble_effect*, !dbg !5435
  %strong_magnitude171 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble170, i32 0, i32 0, !dbg !5435
  %115 = load i16, i16* %strong_magnitude171, align 8, !dbg !5435
  %conv172 = zext i16 %115 to i32, !dbg !5435
  %add173 = add i32 %113, %conv172, !dbg !5435
  store i32 %add173, i32* %__UNIQUE_ID___x225, align 4, !dbg !5435
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y226, metadata !5436, metadata !DIExpression()), !dbg !5435
  store i32 65535, i32* %__UNIQUE_ID___y226, align 4, !dbg !5435
  %116 = load i32, i32* %__UNIQUE_ID___x225, align 4, !dbg !5435
  %117 = load i32, i32* %__UNIQUE_ID___y226, align 4, !dbg !5435
  %cmp175 = icmp ult i32 %116, %117, !dbg !5435
  br i1 %cmp175, label %cond.true177, label %cond.false178, !dbg !5435

cond.true177:                                     ; preds = %if.end168
  %118 = load i32, i32* %__UNIQUE_ID___x225, align 4, !dbg !5435
  br label %cond.end179, !dbg !5435

cond.false178:                                    ; preds = %if.end168
  %119 = load i32, i32* %__UNIQUE_ID___y226, align 4, !dbg !5435
  br label %cond.end179, !dbg !5435

cond.end179:                                      ; preds = %cond.false178, %cond.true177
  %cond180 = phi i32 [ %118, %cond.true177 ], [ %119, %cond.false178 ], !dbg !5435
  store i32 %cond180, i32* %tmp174, align 4, !dbg !5435
  %120 = load i32, i32* %tmp174, align 4, !dbg !5435
  %conv181 = trunc i32 %120 to i16, !dbg !5437
  %121 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5438
  %u182 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %121, i32 0, i32 5, !dbg !5439
  %rumble183 = bitcast %union.anon* %u182 to %struct.ff_rumble_effect*, !dbg !5440
  %strong_magnitude184 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble183, i32 0, i32 0, !dbg !5441
  store i16 %conv181, i16* %strong_magnitude184, align 8, !dbg !5442
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x227, metadata !5443, metadata !DIExpression()), !dbg !5445
  %122 = load i32, i32* %i, align 4, !dbg !5445
  %123 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5445
  %u185 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %123, i32 0, i32 5, !dbg !5445
  %rumble186 = bitcast %union.anon* %u185 to %struct.ff_rumble_effect*, !dbg !5445
  %weak_magnitude187 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble186, i32 0, i32 1, !dbg !5445
  %124 = load i16, i16* %weak_magnitude187, align 2, !dbg !5445
  %conv188 = zext i16 %124 to i32, !dbg !5445
  %add189 = add i32 %122, %conv188, !dbg !5445
  store i32 %add189, i32* %__UNIQUE_ID___x227, align 4, !dbg !5445
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y228, metadata !5446, metadata !DIExpression()), !dbg !5445
  store i32 65535, i32* %__UNIQUE_ID___y228, align 4, !dbg !5445
  %125 = load i32, i32* %__UNIQUE_ID___x227, align 4, !dbg !5445
  %126 = load i32, i32* %__UNIQUE_ID___y228, align 4, !dbg !5445
  %cmp191 = icmp ult i32 %125, %126, !dbg !5445
  br i1 %cmp191, label %cond.true193, label %cond.false194, !dbg !5445

cond.true193:                                     ; preds = %cond.end179
  %127 = load i32, i32* %__UNIQUE_ID___x227, align 4, !dbg !5445
  br label %cond.end195, !dbg !5445

cond.false194:                                    ; preds = %cond.end179
  %128 = load i32, i32* %__UNIQUE_ID___y228, align 4, !dbg !5445
  br label %cond.end195, !dbg !5445

cond.end195:                                      ; preds = %cond.false194, %cond.true193
  %cond196 = phi i32 [ %127, %cond.true193 ], [ %128, %cond.false194 ], !dbg !5445
  store i32 %cond196, i32* %tmp190, align 4, !dbg !5445
  %129 = load i32, i32* %tmp190, align 4, !dbg !5445
  %conv197 = trunc i32 %129 to i16, !dbg !5447
  %130 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5448
  %u198 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %130, i32 0, i32 5, !dbg !5449
  %rumble199 = bitcast %union.anon* %u198 to %struct.ff_rumble_effect*, !dbg !5450
  %weak_magnitude200 = getelementptr inbounds %struct.ff_rumble_effect, %struct.ff_rumble_effect* %rumble199, i32 0, i32 1, !dbg !5451
  store i16 %conv197, i16* %weak_magnitude200, align 2, !dbg !5452
  br label %sw.epilog, !dbg !5453

sw.default:                                       ; preds = %entry
  %call201 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0)) #13, !dbg !5454
  br label %sw.epilog, !dbg !5455

sw.epilog:                                        ; preds = %sw.default, %cond.end195, %cond.end126, %cond.end53
  ret void, !dbg !5456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__instrument_read_write_bitop(i64 %nr, i64* %addr) #0 !dbg !5457 {
entry:
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5458, metadata !DIExpression()), !dbg !5460
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5464, metadata !DIExpression()), !dbg !5465
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5468, metadata !DIExpression()), !dbg !5469
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5470
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5471
  %div = sdiv i64 %1, 64, !dbg !5471
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5472
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5470
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5473
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5474
  %conv.i = trunc i64 %4 to i32, !dbg !5474
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !5475
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5476
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5476
  call void @kcsan_check_access(i8* %5, i64 %6, i32 3) #12, !dbg !5476
  ret void, !dbg !5477
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5478 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5482, metadata !DIExpression()), !dbg !5483
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5484, metadata !DIExpression()), !dbg !5485
  ret i1 true, !dbg !5486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5487 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5491, metadata !DIExpression()), !dbg !5492
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5493, metadata !DIExpression()), !dbg !5494
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  ret void, !dbg !5497
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #9

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !5498 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  %0 = load i32, i32* %m.addr, align 4, !dbg !5501
  %conv = zext i32 %0 to i64, !dbg !5501
  %add = add i64 %conv, 4, !dbg !5502
  %sub = sub i64 %add, 1, !dbg !5503
  %div = sdiv i64 %sub, 4, !dbg !5504
  ret i64 %div, !dbg !5505
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal signext i16 @fixp_new16(i16 signext %a) #0 !dbg !5506 {
entry:
  %a.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %a.addr, metadata !5509, metadata !DIExpression()), !dbg !5510
  %0 = load i16, i16* %a.addr, align 2, !dbg !5511
  %conv = sext i16 %0 to i32, !dbg !5512
  %shr = ashr i32 %conv, 8, !dbg !5513
  %conv1 = trunc i32 %shr to i16, !dbg !5514
  ret i16 %conv1, !dbg !5515
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @apply_envelope(%struct.ml_effect_state* %state, i32 %value, %struct.ff_envelope* %envelope) #0 !dbg !5516 {
entry:
  %retval.i76 = alloca i64, align 8
  %m.addr.i77 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i77, metadata !4346, metadata !DIExpression()), !dbg !5520
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4346, metadata !DIExpression()), !dbg !5524
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.ml_effect_state*, align 8
  %value.addr = alloca i32, align 4
  %envelope.addr = alloca %struct.ff_envelope*, align 8
  %effect = alloca %struct.ff_effect*, align 8
  %now = alloca i64, align 8
  %time_from_level = alloca i32, align 4
  %time_of_envelope = alloca i32, align 4
  %envelope_level = alloca i32, align 4
  %difference = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__UNIQUE_ID___x209 = alloca i16, align 2
  %__UNIQUE_ID___y210 = alloca i16, align 2
  %tmp10 = alloca i32, align 4
  %__UNIQUE_ID___x211 = alloca i16, align 2
  %__UNIQUE_ID___y212 = alloca i16, align 2
  %tmp41 = alloca i32, align 4
  %__x = alloca i32, align 4
  %tmp54 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %tmp64 = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  %tmp66 = alloca i32, align 4
  store %struct.ml_effect_state* %state, %struct.ml_effect_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ml_effect_state** %state.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  store %struct.ff_envelope* %envelope, %struct.ff_envelope** %envelope.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_envelope** %envelope.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect, metadata !5532, metadata !DIExpression()), !dbg !5533
  %0 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5534
  %effect1 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %0, i32 0, i32 0, !dbg !5535
  %1 = load %struct.ff_effect*, %struct.ff_effect** %effect1, align 8, !dbg !5535
  store %struct.ff_effect* %1, %struct.ff_effect** %effect, align 8, !dbg !5533
  call void @llvm.dbg.declare(metadata i64* %now, metadata !5536, metadata !DIExpression()), !dbg !5537
  %2 = load volatile i64, i64* @jiffies, align 8, !dbg !5538
  store i64 %2, i64* %now, align 8, !dbg !5537
  call void @llvm.dbg.declare(metadata i32* %time_from_level, metadata !5539, metadata !DIExpression()), !dbg !5540
  call void @llvm.dbg.declare(metadata i32* %time_of_envelope, metadata !5541, metadata !DIExpression()), !dbg !5542
  call void @llvm.dbg.declare(metadata i32* %envelope_level, metadata !5543, metadata !DIExpression()), !dbg !5544
  call void @llvm.dbg.declare(metadata i32* %difference, metadata !5545, metadata !DIExpression()), !dbg !5546
  %3 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope.addr, align 8, !dbg !5547
  %attack_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %3, i32 0, i32 0, !dbg !5548
  %4 = load i16, i16* %attack_length, align 2, !dbg !5548
  %conv = zext i16 %4 to i32, !dbg !5547
  %tobool = icmp ne i32 %conv, 0, !dbg !5547
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !5549

land.lhs.true:                                    ; preds = %entry
  %5 = load i64, i64* %now, align 8, !dbg !5550
  %6 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5550
  %play_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %6, i32 0, i32 3, !dbg !5550
  %7 = load i64, i64* %play_at, align 8, !dbg !5550
  %8 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope.addr, align 8, !dbg !5550
  %attack_length2 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %8, i32 0, i32 0, !dbg !5550
  %9 = load i16, i16* %attack_length2, align 2, !dbg !5550
  %conv3 = zext i16 %9 to i32, !dbg !5550
  store i32 %conv3, i32* %m.addr.i, align 4
  %10 = load i32, i32* %m.addr.i, align 4, !dbg !5551
  %11 = call i1 @llvm.is.constant.i32(i32 %10) #7, !dbg !5552
  br i1 %11, label %if.then.i, label %if.else.i, !dbg !5553

if.then.i:                                        ; preds = %land.lhs.true
  %12 = load i32, i32* %m.addr.i, align 4, !dbg !5554
  %cmp.i = icmp slt i32 %12, 0, !dbg !5555
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5556

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5557
  br label %msecs_to_jiffies.exit, !dbg !5557

if.end.i:                                         ; preds = %if.then.i
  %13 = load i32, i32* %m.addr.i, align 4, !dbg !5558
  %call.i = call i64 @_msecs_to_jiffies(i32 %13) #12, !dbg !5559
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5560
  br label %msecs_to_jiffies.exit, !dbg !5560

if.else.i:                                        ; preds = %land.lhs.true
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !5561
  %call2.i = call i64 @__msecs_to_jiffies(i32 %14) #12, !dbg !5562
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5563
  br label %msecs_to_jiffies.exit, !dbg !5563

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %15 = load i64, i64* %retval.i, align 8, !dbg !5564
  %add = add i64 %7, %15, !dbg !5550
  %sub = sub i64 %5, %add, !dbg !5550
  %cmp = icmp slt i64 %sub, 0, !dbg !5550
  br i1 %cmp, label %if.then, label %if.else, !dbg !5565

if.then:                                          ; preds = %msecs_to_jiffies.exit
  store i32 0, i32* %tmp, align 4, !dbg !5566
  %16 = load i32, i32* %tmp, align 4, !dbg !5570
  %17 = load i64, i64* %now, align 8, !dbg !5571
  %18 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5572
  %play_at5 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %18, i32 0, i32 3, !dbg !5573
  %19 = load i64, i64* %play_at5, align 8, !dbg !5573
  %sub6 = sub i64 %17, %19, !dbg !5574
  %call7 = call i32 @jiffies_to_msecs(i64 %sub6) #10, !dbg !5575
  store i32 %call7, i32* %time_from_level, align 4, !dbg !5576
  %20 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope.addr, align 8, !dbg !5577
  %attack_length8 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %20, i32 0, i32 0, !dbg !5578
  %21 = load i16, i16* %attack_length8, align 2, !dbg !5578
  %conv9 = zext i16 %21 to i32, !dbg !5577
  store i32 %conv9, i32* %time_of_envelope, align 4, !dbg !5579
  call void @llvm.dbg.declare(metadata i16* %__UNIQUE_ID___x209, metadata !5580, metadata !DIExpression()), !dbg !5582
  %22 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope.addr, align 8, !dbg !5582
  %attack_level = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %22, i32 0, i32 1, !dbg !5582
  %23 = load i16, i16* %attack_level, align 2, !dbg !5582
  store i16 %23, i16* %__UNIQUE_ID___x209, align 2, !dbg !5582
  call void @llvm.dbg.declare(metadata i16* %__UNIQUE_ID___y210, metadata !5583, metadata !DIExpression()), !dbg !5582
  store i16 32767, i16* %__UNIQUE_ID___y210, align 2, !dbg !5582
  %24 = load i16, i16* %__UNIQUE_ID___x209, align 2, !dbg !5582
  %conv11 = zext i16 %24 to i32, !dbg !5582
  %25 = load i16, i16* %__UNIQUE_ID___y210, align 2, !dbg !5582
  %conv12 = zext i16 %25 to i32, !dbg !5582
  %cmp13 = icmp slt i32 %conv11, %conv12, !dbg !5582
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !5582

cond.true:                                        ; preds = %if.then
  %26 = load i16, i16* %__UNIQUE_ID___x209, align 2, !dbg !5582
  %conv15 = zext i16 %26 to i32, !dbg !5582
  br label %cond.end, !dbg !5582

cond.false:                                       ; preds = %if.then
  %27 = load i16, i16* %__UNIQUE_ID___y210, align 2, !dbg !5582
  %conv16 = zext i16 %27 to i32, !dbg !5582
  br label %cond.end, !dbg !5582

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv15, %cond.true ], [ %conv16, %cond.false ], !dbg !5582
  store i32 %cond, i32* %tmp10, align 4, !dbg !5582
  %28 = load i32, i32* %tmp10, align 4, !dbg !5582
  store i32 %28, i32* %envelope_level, align 4, !dbg !5584
  br label %if.end53, !dbg !5585

if.else:                                          ; preds = %msecs_to_jiffies.exit, %entry
  %29 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope.addr, align 8, !dbg !5586
  %fade_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %29, i32 0, i32 2, !dbg !5587
  %30 = load i16, i16* %fade_length, align 2, !dbg !5587
  %conv17 = zext i16 %30 to i32, !dbg !5586
  %tobool18 = icmp ne i32 %conv17, 0, !dbg !5586
  br i1 %tobool18, label %land.lhs.true19, label %if.else52, !dbg !5588

land.lhs.true19:                                  ; preds = %if.else
  %31 = load %struct.ff_effect*, %struct.ff_effect** %effect, align 8, !dbg !5589
  %replay = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %31, i32 0, i32 4, !dbg !5590
  %length = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay, i32 0, i32 0, !dbg !5591
  %32 = load i16, i16* %length, align 2, !dbg !5591
  %conv20 = zext i16 %32 to i32, !dbg !5589
  %tobool21 = icmp ne i32 %conv20, 0, !dbg !5589
  br i1 %tobool21, label %land.lhs.true22, label %if.else52, !dbg !5592

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %33 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5593
  %stop_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %33, i32 0, i32 4, !dbg !5593
  %34 = load i64, i64* %stop_at, align 8, !dbg !5593
  %35 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope.addr, align 8, !dbg !5593
  %fade_length23 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %35, i32 0, i32 2, !dbg !5593
  %36 = load i16, i16* %fade_length23, align 2, !dbg !5593
  %conv24 = zext i16 %36 to i32, !dbg !5593
  store i32 %conv24, i32* %m.addr.i77, align 4
  %37 = load i32, i32* %m.addr.i77, align 4, !dbg !5594
  %38 = call i1 @llvm.is.constant.i32(i32 %37) #7, !dbg !5595
  br i1 %38, label %if.then.i79, label %if.else.i84, !dbg !5596

if.then.i79:                                      ; preds = %land.lhs.true22
  %39 = load i32, i32* %m.addr.i77, align 4, !dbg !5597
  %cmp.i78 = icmp slt i32 %39, 0, !dbg !5598
  br i1 %cmp.i78, label %if.then1.i80, label %if.end.i82, !dbg !5599

if.then1.i80:                                     ; preds = %if.then.i79
  store i64 4611686018427387902, i64* %retval.i76, align 8, !dbg !5600
  br label %msecs_to_jiffies.exit85, !dbg !5600

if.end.i82:                                       ; preds = %if.then.i79
  %40 = load i32, i32* %m.addr.i77, align 4, !dbg !5601
  %call.i81 = call i64 @_msecs_to_jiffies(i32 %40) #12, !dbg !5602
  store i64 %call.i81, i64* %retval.i76, align 8, !dbg !5603
  br label %msecs_to_jiffies.exit85, !dbg !5603

if.else.i84:                                      ; preds = %land.lhs.true22
  %41 = load i32, i32* %m.addr.i77, align 4, !dbg !5604
  %call2.i83 = call i64 @__msecs_to_jiffies(i32 %41) #12, !dbg !5605
  store i64 %call2.i83, i64* %retval.i76, align 8, !dbg !5606
  br label %msecs_to_jiffies.exit85, !dbg !5606

msecs_to_jiffies.exit85:                          ; preds = %if.then1.i80, %if.end.i82, %if.else.i84
  %42 = load i64, i64* %retval.i76, align 8, !dbg !5607
  %sub26 = sub i64 %34, %42, !dbg !5593
  %43 = load i64, i64* %now, align 8, !dbg !5593
  %sub27 = sub i64 %sub26, %43, !dbg !5593
  %cmp28 = icmp slt i64 %sub27, 0, !dbg !5593
  br i1 %cmp28, label %land.lhs.true30, label %if.else52, !dbg !5608

land.lhs.true30:                                  ; preds = %msecs_to_jiffies.exit85
  %44 = load i64, i64* %now, align 8, !dbg !5609
  %45 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5609
  %stop_at31 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %45, i32 0, i32 4, !dbg !5609
  %46 = load i64, i64* %stop_at31, align 8, !dbg !5609
  %sub32 = sub i64 %44, %46, !dbg !5609
  %cmp33 = icmp slt i64 %sub32, 0, !dbg !5609
  br i1 %cmp33, label %if.then35, label %if.else52, !dbg !5610

if.then35:                                        ; preds = %land.lhs.true30
  %47 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5611
  %stop_at36 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %47, i32 0, i32 4, !dbg !5613
  %48 = load i64, i64* %stop_at36, align 8, !dbg !5613
  %49 = load i64, i64* %now, align 8, !dbg !5614
  %sub37 = sub i64 %48, %49, !dbg !5615
  %call38 = call i32 @jiffies_to_msecs(i64 %sub37) #10, !dbg !5616
  store i32 %call38, i32* %time_from_level, align 4, !dbg !5617
  %50 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope.addr, align 8, !dbg !5618
  %fade_length39 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %50, i32 0, i32 2, !dbg !5619
  %51 = load i16, i16* %fade_length39, align 2, !dbg !5619
  %conv40 = zext i16 %51 to i32, !dbg !5618
  store i32 %conv40, i32* %time_of_envelope, align 4, !dbg !5620
  call void @llvm.dbg.declare(metadata i16* %__UNIQUE_ID___x211, metadata !5621, metadata !DIExpression()), !dbg !5623
  %52 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope.addr, align 8, !dbg !5623
  %fade_level = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %52, i32 0, i32 3, !dbg !5623
  %53 = load i16, i16* %fade_level, align 2, !dbg !5623
  store i16 %53, i16* %__UNIQUE_ID___x211, align 2, !dbg !5623
  call void @llvm.dbg.declare(metadata i16* %__UNIQUE_ID___y212, metadata !5624, metadata !DIExpression()), !dbg !5623
  store i16 32767, i16* %__UNIQUE_ID___y212, align 2, !dbg !5623
  %54 = load i16, i16* %__UNIQUE_ID___x211, align 2, !dbg !5623
  %conv42 = zext i16 %54 to i32, !dbg !5623
  %55 = load i16, i16* %__UNIQUE_ID___y212, align 2, !dbg !5623
  %conv43 = zext i16 %55 to i32, !dbg !5623
  %cmp44 = icmp slt i32 %conv42, %conv43, !dbg !5623
  br i1 %cmp44, label %cond.true46, label %cond.false48, !dbg !5623

cond.true46:                                      ; preds = %if.then35
  %56 = load i16, i16* %__UNIQUE_ID___x211, align 2, !dbg !5623
  %conv47 = zext i16 %56 to i32, !dbg !5623
  br label %cond.end50, !dbg !5623

cond.false48:                                     ; preds = %if.then35
  %57 = load i16, i16* %__UNIQUE_ID___y212, align 2, !dbg !5623
  %conv49 = zext i16 %57 to i32, !dbg !5623
  br label %cond.end50, !dbg !5623

cond.end50:                                       ; preds = %cond.false48, %cond.true46
  %cond51 = phi i32 [ %conv47, %cond.true46 ], [ %conv49, %cond.false48 ], !dbg !5623
  store i32 %cond51, i32* %tmp41, align 4, !dbg !5623
  %58 = load i32, i32* %tmp41, align 4, !dbg !5623
  store i32 %58, i32* %envelope_level, align 4, !dbg !5625
  br label %if.end, !dbg !5626

if.else52:                                        ; preds = %land.lhs.true30, %msecs_to_jiffies.exit85, %land.lhs.true19, %if.else
  %59 = load i32, i32* %value.addr, align 4, !dbg !5627
  store i32 %59, i32* %retval, align 4, !dbg !5628
  br label %return, !dbg !5628

if.end:                                           ; preds = %cond.end50
  br label %if.end53

if.end53:                                         ; preds = %if.end, %cond.end
  call void @llvm.dbg.declare(metadata i32* %__x, metadata !5629, metadata !DIExpression()), !dbg !5631
  %60 = load i32, i32* %value.addr, align 4, !dbg !5631
  store i32 %60, i32* %__x, align 4, !dbg !5631
  %61 = load i32, i32* %__x, align 4, !dbg !5631
  %cmp55 = icmp slt i32 %61, 0, !dbg !5631
  br i1 %cmp55, label %cond.true57, label %cond.false59, !dbg !5631

cond.true57:                                      ; preds = %if.end53
  %62 = load i32, i32* %__x, align 4, !dbg !5631
  %sub58 = sub i32 0, %62, !dbg !5631
  br label %cond.end60, !dbg !5631

cond.false59:                                     ; preds = %if.end53
  %63 = load i32, i32* %__x, align 4, !dbg !5631
  br label %cond.end60, !dbg !5631

cond.end60:                                       ; preds = %cond.false59, %cond.true57
  %cond61 = phi i32 [ %sub58, %cond.true57 ], [ %63, %cond.false59 ], !dbg !5631
  store i32 %cond61, i32* %tmp54, align 4, !dbg !5631
  %64 = load i32, i32* %tmp54, align 4, !dbg !5631
  %65 = load i32, i32* %envelope_level, align 4, !dbg !5632
  %sub62 = sub i32 %64, %65, !dbg !5633
  store i32 %sub62, i32* %difference, align 4, !dbg !5634
  store i32 0, i32* %tmp63, align 4, !dbg !5635
  %66 = load i32, i32* %tmp63, align 4, !dbg !5638
  store i32 0, i32* %tmp64, align 4, !dbg !5639
  %67 = load i32, i32* %tmp64, align 4, !dbg !5642
  store i32 0, i32* %tmp65, align 4, !dbg !5643
  %68 = load i32, i32* %tmp65, align 4, !dbg !5646
  %69 = load i32, i32* %difference, align 4, !dbg !5647
  %70 = load i32, i32* %time_from_level, align 4, !dbg !5648
  %mul = mul i32 %69, %70, !dbg !5649
  %71 = load i32, i32* %time_of_envelope, align 4, !dbg !5650
  %div = sdiv i32 %mul, %71, !dbg !5651
  store i32 %div, i32* %difference, align 4, !dbg !5652
  store i32 0, i32* %tmp66, align 4, !dbg !5653
  %72 = load i32, i32* %tmp66, align 4, !dbg !5656
  %73 = load i32, i32* %value.addr, align 4, !dbg !5657
  %cmp67 = icmp slt i32 %73, 0, !dbg !5658
  br i1 %cmp67, label %cond.true69, label %cond.false72, !dbg !5657

cond.true69:                                      ; preds = %cond.end60
  %74 = load i32, i32* %difference, align 4, !dbg !5659
  %75 = load i32, i32* %envelope_level, align 4, !dbg !5660
  %add70 = add i32 %74, %75, !dbg !5661
  %sub71 = sub i32 0, %add70, !dbg !5662
  br label %cond.end74, !dbg !5657

cond.false72:                                     ; preds = %cond.end60
  %76 = load i32, i32* %difference, align 4, !dbg !5663
  %77 = load i32, i32* %envelope_level, align 4, !dbg !5664
  %add73 = add i32 %76, %77, !dbg !5665
  br label %cond.end74, !dbg !5657

cond.end74:                                       ; preds = %cond.false72, %cond.true69
  %cond75 = phi i32 [ %sub71, %cond.true69 ], [ %add73, %cond.false72 ], !dbg !5657
  store i32 %cond75, i32* %retval, align 4, !dbg !5666
  br label %return, !dbg !5666

return:                                           ; preds = %cond.end74, %if.else52
  %78 = load i32, i32* %retval, align 4, !dbg !5667
  ret i32 %78, !dbg !5667
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal signext i16 @fixp_mult(i16 signext %a, i16 signext %b) #0 !dbg !5668 {
entry:
  %a.addr = alloca i16, align 2
  %b.addr = alloca i16, align 2
  store i16 %a, i16* %a.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %a.addr, metadata !5671, metadata !DIExpression()), !dbg !5672
  store i16 %b, i16* %b.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %b.addr, metadata !5673, metadata !DIExpression()), !dbg !5674
  %0 = load i16, i16* %a.addr, align 2, !dbg !5675
  %conv = sext i16 %0 to i32, !dbg !5676
  %mul = mul i32 %conv, 256, !dbg !5677
  %div = sdiv i32 %mul, 32767, !dbg !5678
  %conv1 = trunc i32 %div to i16, !dbg !5679
  store i16 %conv1, i16* %a.addr, align 2, !dbg !5680
  %1 = load i16, i16* %a.addr, align 2, !dbg !5681
  %conv2 = sext i16 %1 to i32, !dbg !5681
  %2 = load i16, i16* %b.addr, align 2, !dbg !5682
  %conv3 = sext i16 %2 to i32, !dbg !5682
  %mul4 = mul i32 %conv2, %conv3, !dbg !5683
  %shr = ashr i32 %mul4, 8, !dbg !5684
  %conv5 = trunc i32 %shr to i16, !dbg !5685
  ret i16 %conv5, !dbg !5686
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fixp_sin32(i32 %degrees) #0 !dbg !5687 {
entry:
  %degrees.addr = alloca i32, align 4
  store i32 %degrees, i32* %degrees.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %degrees.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  %0 = load i32, i32* %degrees.addr, align 4, !dbg !5692
  %rem = srem i32 %0, 360, !dbg !5693
  %add = add i32 %rem, 360, !dbg !5694
  %rem1 = srem i32 %add, 360, !dbg !5695
  store i32 %rem1, i32* %degrees.addr, align 4, !dbg !5696
  %1 = load i32, i32* %degrees.addr, align 4, !dbg !5697
  %call = call i32 @__fixp_sin32(i32 %1) #10, !dbg !5698
  ret i32 %call, !dbg !5699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @ml_calculate_direction(i16 zeroext %direction, i16 zeroext %force, i16 zeroext %new_direction, i16 zeroext %new_force) #0 !dbg !5700 {
entry:
  %retval = alloca i16, align 2
  %direction.addr = alloca i16, align 2
  %force.addr = alloca i16, align 2
  %new_direction.addr = alloca i16, align 2
  %new_force.addr = alloca i16, align 2
  store i16 %direction, i16* %direction.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %direction.addr, metadata !5703, metadata !DIExpression()), !dbg !5704
  store i16 %force, i16* %force.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %force.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  store i16 %new_direction, i16* %new_direction.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %new_direction.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  store i16 %new_force, i16* %new_force.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %new_force.addr, metadata !5709, metadata !DIExpression()), !dbg !5710
  %0 = load i16, i16* %force.addr, align 2, !dbg !5711
  %tobool = icmp ne i16 %0, 0, !dbg !5711
  br i1 %tobool, label %if.end, label %if.then, !dbg !5713

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %new_direction.addr, align 2, !dbg !5714
  store i16 %1, i16* %retval, align 2, !dbg !5715
  br label %return, !dbg !5715

if.end:                                           ; preds = %entry
  %2 = load i16, i16* %new_force.addr, align 2, !dbg !5716
  %tobool1 = icmp ne i16 %2, 0, !dbg !5716
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5718

if.then2:                                         ; preds = %if.end
  %3 = load i16, i16* %direction.addr, align 2, !dbg !5719
  store i16 %3, i16* %retval, align 2, !dbg !5720
  br label %return, !dbg !5720

if.end3:                                          ; preds = %if.end
  %4 = load i16, i16* %direction.addr, align 2, !dbg !5721
  %conv = zext i16 %4 to i32, !dbg !5721
  %shr = ashr i32 %conv, 1, !dbg !5722
  %5 = load i16, i16* %force.addr, align 2, !dbg !5723
  %conv4 = zext i16 %5 to i32, !dbg !5723
  %mul = mul i32 %shr, %conv4, !dbg !5724
  %6 = load i16, i16* %new_direction.addr, align 2, !dbg !5725
  %conv5 = zext i16 %6 to i32, !dbg !5725
  %shr6 = ashr i32 %conv5, 1, !dbg !5726
  %7 = load i16, i16* %new_force.addr, align 2, !dbg !5727
  %conv7 = zext i16 %7 to i32, !dbg !5727
  %mul8 = mul i32 %shr6, %conv7, !dbg !5728
  %add = add i32 %mul, %mul8, !dbg !5729
  %8 = load i16, i16* %force.addr, align 2, !dbg !5730
  %conv9 = zext i16 %8 to i32, !dbg !5730
  %9 = load i16, i16* %new_force.addr, align 2, !dbg !5731
  %conv10 = zext i16 %9 to i32, !dbg !5731
  %add11 = add i32 %conv9, %conv10, !dbg !5732
  %div = udiv i32 %add, %add11, !dbg !5733
  %shl = shl i32 %div, 1, !dbg !5734
  %conv12 = trunc i32 %shl to i16, !dbg !5735
  store i16 %conv12, i16* %retval, align 2, !dbg !5736
  br label %return, !dbg !5736

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %10 = load i16, i16* %retval, align 2, !dbg !5737
  ret i16 %10, !dbg !5737
}

; Function Attrs: noredzone
declare dso_local i32 @jiffies_to_msecs(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__fixp_sin32(i32 %degrees) #0 !dbg !5738 {
entry:
  %degrees.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %negative = alloca i8, align 1
  store i32 %degrees, i32* %degrees.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %degrees.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5741, metadata !DIExpression()), !dbg !5742
  call void @llvm.dbg.declare(metadata i8* %negative, metadata !5743, metadata !DIExpression()), !dbg !5744
  store i8 0, i8* %negative, align 1, !dbg !5744
  %0 = load i32, i32* %degrees.addr, align 4, !dbg !5745
  %cmp = icmp sgt i32 %0, 180, !dbg !5747
  br i1 %cmp, label %if.then, label %if.end, !dbg !5748

if.then:                                          ; preds = %entry
  store i8 1, i8* %negative, align 1, !dbg !5749
  %1 = load i32, i32* %degrees.addr, align 4, !dbg !5751
  %sub = sub i32 %1, 180, !dbg !5751
  store i32 %sub, i32* %degrees.addr, align 4, !dbg !5751
  br label %if.end, !dbg !5752

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %degrees.addr, align 4, !dbg !5753
  %cmp1 = icmp sgt i32 %2, 90, !dbg !5755
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !5756

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %degrees.addr, align 4, !dbg !5757
  %sub3 = sub i32 180, %3, !dbg !5758
  store i32 %sub3, i32* %degrees.addr, align 4, !dbg !5759
  br label %if.end4, !dbg !5760

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load i32, i32* %degrees.addr, align 4, !dbg !5761
  %idxprom = sext i32 %4 to i64, !dbg !5762
  %arrayidx = getelementptr [91 x i32], [91 x i32]* @sin_table, i64 0, i64 %idxprom, !dbg !5762
  %5 = load i32, i32* %arrayidx, align 4, !dbg !5762
  store i32 %5, i32* %ret, align 4, !dbg !5763
  %6 = load i8, i8* %negative, align 1, !dbg !5764
  %tobool = trunc i8 %6 to i1, !dbg !5764
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5764

cond.true:                                        ; preds = %if.end4
  %7 = load i32, i32* %ret, align 4, !dbg !5765
  %sub5 = sub i32 0, %7, !dbg !5766
  br label %cond.end, !dbg !5764

cond.false:                                       ; preds = %if.end4
  %8 = load i32, i32* %ret, align 4, !dbg !5767
  br label %cond.end, !dbg !5764

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub5, %cond.true ], [ %8, %cond.false ], !dbg !5764
  ret i32 %cond, !dbg !5768
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @calculate_next_time(%struct.ml_effect_state* %state) #0 !dbg !5769 {
entry:
  %retval.i57 = alloca i64, align 8
  %m.addr.i58 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i58, metadata !4346, metadata !DIExpression()), !dbg !5772
  %retval.i47 = alloca i64, align 8
  %m.addr.i48 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i48, metadata !4346, metadata !DIExpression()), !dbg !5778
  %retval.i37 = alloca i64, align 8
  %m.addr.i38 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i38, metadata !4346, metadata !DIExpression()), !dbg !5780
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4346, metadata !DIExpression()), !dbg !5785
  %retval = alloca i64, align 8
  %state.addr = alloca %struct.ml_effect_state*, align 8
  %envelope = alloca %struct.ff_envelope*, align 8
  %attack_stop = alloca i64, align 8
  %fade_start = alloca i64, align 8
  %next_fade = alloca i64, align 8
  store %struct.ml_effect_state* %state, %struct.ml_effect_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ml_effect_state** %state.addr, metadata !5787, metadata !DIExpression()), !dbg !5788
  call void @llvm.dbg.declare(metadata %struct.ff_envelope** %envelope, metadata !5789, metadata !DIExpression()), !dbg !5790
  %0 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5791
  %effect = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %0, i32 0, i32 0, !dbg !5792
  %1 = load %struct.ff_effect*, %struct.ff_effect** %effect, align 8, !dbg !5792
  %call = call %struct.ff_envelope* @get_envelope(%struct.ff_effect* %1) #10, !dbg !5793
  store %struct.ff_envelope* %call, %struct.ff_envelope** %envelope, align 8, !dbg !5790
  call void @llvm.dbg.declare(metadata i64* %attack_stop, metadata !5794, metadata !DIExpression()), !dbg !5795
  call void @llvm.dbg.declare(metadata i64* %fade_start, metadata !5796, metadata !DIExpression()), !dbg !5797
  call void @llvm.dbg.declare(metadata i64* %next_fade, metadata !5798, metadata !DIExpression()), !dbg !5799
  %2 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope, align 8, !dbg !5800
  %attack_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %2, i32 0, i32 0, !dbg !5801
  %3 = load i16, i16* %attack_length, align 2, !dbg !5801
  %tobool = icmp ne i16 %3, 0, !dbg !5800
  br i1 %tobool, label %if.then, label %if.end8, !dbg !5802

if.then:                                          ; preds = %entry
  %4 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5803
  %play_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %4, i32 0, i32 3, !dbg !5804
  %5 = load i64, i64* %play_at, align 8, !dbg !5804
  %6 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope, align 8, !dbg !5805
  %attack_length1 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %6, i32 0, i32 0, !dbg !5806
  %7 = load i16, i16* %attack_length1, align 2, !dbg !5806
  %conv = zext i16 %7 to i32, !dbg !5805
  store i32 %conv, i32* %m.addr.i, align 4
  %8 = load i32, i32* %m.addr.i, align 4, !dbg !5807
  %9 = call i1 @llvm.is.constant.i32(i32 %8) #7, !dbg !5808
  br i1 %9, label %if.then.i, label %if.else.i, !dbg !5809

if.then.i:                                        ; preds = %if.then
  %10 = load i32, i32* %m.addr.i, align 4, !dbg !5810
  %cmp.i = icmp slt i32 %10, 0, !dbg !5811
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5812

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !5813
  br label %msecs_to_jiffies.exit, !dbg !5813

if.end.i:                                         ; preds = %if.then.i
  %11 = load i32, i32* %m.addr.i, align 4, !dbg !5814
  %call.i = call i64 @_msecs_to_jiffies(i32 %11) #12, !dbg !5815
  store i64 %call.i, i64* %retval.i, align 8, !dbg !5816
  br label %msecs_to_jiffies.exit, !dbg !5816

if.else.i:                                        ; preds = %if.then
  %12 = load i32, i32* %m.addr.i, align 4, !dbg !5817
  %call2.i = call i64 @__msecs_to_jiffies(i32 %12) #12, !dbg !5818
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !5819
  br label %msecs_to_jiffies.exit, !dbg !5819

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %13 = load i64, i64* %retval.i, align 8, !dbg !5820
  %add = add i64 %5, %13, !dbg !5821
  store i64 %add, i64* %attack_stop, align 8, !dbg !5822
  %14 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5823
  %adj_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %14, i32 0, i32 5, !dbg !5823
  %15 = load i64, i64* %adj_at, align 8, !dbg !5823
  %16 = load i64, i64* %attack_stop, align 8, !dbg !5823
  %sub = sub i64 %15, %16, !dbg !5823
  %cmp = icmp slt i64 %sub, 0, !dbg !5823
  br i1 %cmp, label %if.then4, label %if.end, !dbg !5824

if.then4:                                         ; preds = %msecs_to_jiffies.exit
  %17 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5825
  %adj_at5 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %17, i32 0, i32 5, !dbg !5826
  %18 = load i64, i64* %adj_at5, align 8, !dbg !5826
  store i32 50, i32* %m.addr.i38, align 4
  %19 = load i32, i32* %m.addr.i38, align 4, !dbg !5827
  %20 = call i1 @llvm.is.constant.i32(i32 %19) #7, !dbg !5828
  br i1 %20, label %if.then.i40, label %if.else.i45, !dbg !5829

if.then.i40:                                      ; preds = %if.then4
  %21 = load i32, i32* %m.addr.i38, align 4, !dbg !5830
  %cmp.i39 = icmp slt i32 %21, 0, !dbg !5831
  br i1 %cmp.i39, label %if.then1.i41, label %if.end.i43, !dbg !5832

if.then1.i41:                                     ; preds = %if.then.i40
  store i64 4611686018427387902, i64* %retval.i37, align 8, !dbg !5833
  br label %msecs_to_jiffies.exit46, !dbg !5833

if.end.i43:                                       ; preds = %if.then.i40
  %22 = load i32, i32* %m.addr.i38, align 4, !dbg !5834
  %call.i42 = call i64 @_msecs_to_jiffies(i32 %22) #12, !dbg !5835
  store i64 %call.i42, i64* %retval.i37, align 8, !dbg !5836
  br label %msecs_to_jiffies.exit46, !dbg !5836

if.else.i45:                                      ; preds = %if.then4
  %23 = load i32, i32* %m.addr.i38, align 4, !dbg !5837
  %call2.i44 = call i64 @__msecs_to_jiffies(i32 %23) #12, !dbg !5838
  store i64 %call2.i44, i64* %retval.i37, align 8, !dbg !5839
  br label %msecs_to_jiffies.exit46, !dbg !5839

msecs_to_jiffies.exit46:                          ; preds = %if.then1.i41, %if.end.i43, %if.else.i45
  %24 = load i64, i64* %retval.i37, align 8, !dbg !5840
  %add7 = add i64 %18, %24, !dbg !5841
  store i64 %add7, i64* %retval, align 8, !dbg !5842
  br label %return, !dbg !5842

if.end:                                           ; preds = %msecs_to_jiffies.exit
  br label %if.end8, !dbg !5843

if.end8:                                          ; preds = %if.end, %entry
  %25 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5844
  %effect9 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %25, i32 0, i32 0, !dbg !5845
  %26 = load %struct.ff_effect*, %struct.ff_effect** %effect9, align 8, !dbg !5845
  %replay = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %26, i32 0, i32 4, !dbg !5846
  %length = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay, i32 0, i32 0, !dbg !5847
  %27 = load i16, i16* %length, align 2, !dbg !5847
  %tobool10 = icmp ne i16 %27, 0, !dbg !5844
  br i1 %tobool10, label %if.then11, label %if.end35, !dbg !5848

if.then11:                                        ; preds = %if.end8
  %28 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope, align 8, !dbg !5849
  %fade_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %28, i32 0, i32 2, !dbg !5850
  %29 = load i16, i16* %fade_length, align 2, !dbg !5850
  %tobool12 = icmp ne i16 %29, 0, !dbg !5849
  br i1 %tobool12, label %if.then13, label %if.end33, !dbg !5851

if.then13:                                        ; preds = %if.then11
  %30 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5852
  %stop_at = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %30, i32 0, i32 4, !dbg !5853
  %31 = load i64, i64* %stop_at, align 8, !dbg !5853
  %32 = load %struct.ff_envelope*, %struct.ff_envelope** %envelope, align 8, !dbg !5854
  %fade_length14 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %32, i32 0, i32 2, !dbg !5855
  %33 = load i16, i16* %fade_length14, align 2, !dbg !5855
  %conv15 = zext i16 %33 to i32, !dbg !5854
  store i32 %conv15, i32* %m.addr.i48, align 4
  %34 = load i32, i32* %m.addr.i48, align 4, !dbg !5856
  %35 = call i1 @llvm.is.constant.i32(i32 %34) #7, !dbg !5857
  br i1 %35, label %if.then.i50, label %if.else.i55, !dbg !5858

if.then.i50:                                      ; preds = %if.then13
  %36 = load i32, i32* %m.addr.i48, align 4, !dbg !5859
  %cmp.i49 = icmp slt i32 %36, 0, !dbg !5860
  br i1 %cmp.i49, label %if.then1.i51, label %if.end.i53, !dbg !5861

if.then1.i51:                                     ; preds = %if.then.i50
  store i64 4611686018427387902, i64* %retval.i47, align 8, !dbg !5862
  br label %msecs_to_jiffies.exit56, !dbg !5862

if.end.i53:                                       ; preds = %if.then.i50
  %37 = load i32, i32* %m.addr.i48, align 4, !dbg !5863
  %call.i52 = call i64 @_msecs_to_jiffies(i32 %37) #12, !dbg !5864
  store i64 %call.i52, i64* %retval.i47, align 8, !dbg !5865
  br label %msecs_to_jiffies.exit56, !dbg !5865

if.else.i55:                                      ; preds = %if.then13
  %38 = load i32, i32* %m.addr.i48, align 4, !dbg !5866
  %call2.i54 = call i64 @__msecs_to_jiffies(i32 %38) #12, !dbg !5867
  store i64 %call2.i54, i64* %retval.i47, align 8, !dbg !5868
  br label %msecs_to_jiffies.exit56, !dbg !5868

msecs_to_jiffies.exit56:                          ; preds = %if.then1.i51, %if.end.i53, %if.else.i55
  %39 = load i64, i64* %retval.i47, align 8, !dbg !5869
  %sub17 = sub i64 %31, %39, !dbg !5870
  store i64 %sub17, i64* %fade_start, align 8, !dbg !5871
  %40 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5872
  %adj_at18 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %40, i32 0, i32 5, !dbg !5872
  %41 = load i64, i64* %adj_at18, align 8, !dbg !5872
  %42 = load i64, i64* %fade_start, align 8, !dbg !5872
  %sub19 = sub i64 %41, %42, !dbg !5872
  %cmp20 = icmp slt i64 %sub19, 0, !dbg !5872
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5874

if.then22:                                        ; preds = %msecs_to_jiffies.exit56
  %43 = load i64, i64* %fade_start, align 8, !dbg !5875
  store i64 %43, i64* %retval, align 8, !dbg !5876
  br label %return, !dbg !5876

if.end23:                                         ; preds = %msecs_to_jiffies.exit56
  %44 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5877
  %adj_at24 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %44, i32 0, i32 5, !dbg !5878
  %45 = load i64, i64* %adj_at24, align 8, !dbg !5878
  store i32 50, i32* %m.addr.i58, align 4
  %46 = load i32, i32* %m.addr.i58, align 4, !dbg !5879
  %47 = call i1 @llvm.is.constant.i32(i32 %46) #7, !dbg !5880
  br i1 %47, label %if.then.i60, label %if.else.i65, !dbg !5881

if.then.i60:                                      ; preds = %if.end23
  %48 = load i32, i32* %m.addr.i58, align 4, !dbg !5882
  %cmp.i59 = icmp slt i32 %48, 0, !dbg !5883
  br i1 %cmp.i59, label %if.then1.i61, label %if.end.i63, !dbg !5884

if.then1.i61:                                     ; preds = %if.then.i60
  store i64 4611686018427387902, i64* %retval.i57, align 8, !dbg !5885
  br label %msecs_to_jiffies.exit66, !dbg !5885

if.end.i63:                                       ; preds = %if.then.i60
  %49 = load i32, i32* %m.addr.i58, align 4, !dbg !5886
  %call.i62 = call i64 @_msecs_to_jiffies(i32 %49) #12, !dbg !5887
  store i64 %call.i62, i64* %retval.i57, align 8, !dbg !5888
  br label %msecs_to_jiffies.exit66, !dbg !5888

if.else.i65:                                      ; preds = %if.end23
  %50 = load i32, i32* %m.addr.i58, align 4, !dbg !5889
  %call2.i64 = call i64 @__msecs_to_jiffies(i32 %50) #12, !dbg !5890
  store i64 %call2.i64, i64* %retval.i57, align 8, !dbg !5891
  br label %msecs_to_jiffies.exit66, !dbg !5891

msecs_to_jiffies.exit66:                          ; preds = %if.then1.i61, %if.end.i63, %if.else.i65
  %51 = load i64, i64* %retval.i57, align 8, !dbg !5892
  %add26 = add i64 %45, %51, !dbg !5893
  store i64 %add26, i64* %next_fade, align 8, !dbg !5894
  %52 = load i64, i64* %next_fade, align 8, !dbg !5895
  %53 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5895
  %stop_at27 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %53, i32 0, i32 4, !dbg !5895
  %54 = load i64, i64* %stop_at27, align 8, !dbg !5895
  %sub28 = sub i64 %52, %54, !dbg !5895
  %cmp29 = icmp slt i64 %sub28, 0, !dbg !5895
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !5897

if.then31:                                        ; preds = %msecs_to_jiffies.exit66
  %55 = load i64, i64* %next_fade, align 8, !dbg !5898
  store i64 %55, i64* %retval, align 8, !dbg !5899
  br label %return, !dbg !5899

if.end32:                                         ; preds = %msecs_to_jiffies.exit66
  br label %if.end33, !dbg !5900

if.end33:                                         ; preds = %if.end32, %if.then11
  %56 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5901
  %stop_at34 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %56, i32 0, i32 4, !dbg !5902
  %57 = load i64, i64* %stop_at34, align 8, !dbg !5902
  store i64 %57, i64* %retval, align 8, !dbg !5903
  br label %return, !dbg !5903

if.end35:                                         ; preds = %if.end8
  %58 = load %struct.ml_effect_state*, %struct.ml_effect_state** %state.addr, align 8, !dbg !5904
  %play_at36 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %58, i32 0, i32 3, !dbg !5905
  %59 = load i64, i64* %play_at36, align 8, !dbg !5905
  store i64 %59, i64* %retval, align 8, !dbg !5906
  br label %return, !dbg !5906

return:                                           ; preds = %if.end35, %if.end33, %if.then31, %if.then22, %msecs_to_jiffies.exit46
  %60 = load i64, i64* %retval, align 8, !dbg !5907
  ret i64 %60, !dbg !5907
}

; Function Attrs: noredzone
declare dso_local i32 @del_timer(%struct.timer_list*) #2

; Function Attrs: noredzone
declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.ff_envelope* @get_envelope(%struct.ff_effect* %effect) #0 !dbg !3798 {
entry:
  %retval = alloca %struct.ff_envelope*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !5908, metadata !DIExpression()), !dbg !5909
  %0 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5910
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 0, !dbg !5911
  %1 = load i16, i16* %type, align 8, !dbg !5911
  %conv = zext i16 %1 to i32, !dbg !5910
  switch i32 %conv, label %sw.default [
    i32 81, label %sw.bb
    i32 82, label %sw.bb1
  ], !dbg !5912

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5913
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %2, i32 0, i32 5, !dbg !5915
  %periodic = bitcast %union.anon* %u to %struct.ff_periodic_effect*, !dbg !5916
  %envelope = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic, i32 0, i32 5, !dbg !5917
  store %struct.ff_envelope* %envelope, %struct.ff_envelope** %retval, align 8, !dbg !5918
  br label %return, !dbg !5918

sw.bb1:                                           ; preds = %entry
  %3 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !5919
  %u2 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %3, i32 0, i32 5, !dbg !5920
  %constant = bitcast %union.anon* %u2 to %struct.ff_constant_effect*, !dbg !5921
  %envelope3 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant, i32 0, i32 1, !dbg !5922
  store %struct.ff_envelope* %envelope3, %struct.ff_envelope** %retval, align 8, !dbg !5923
  br label %return, !dbg !5923

sw.default:                                       ; preds = %entry
  store %struct.ff_envelope* @get_envelope.empty_envelope, %struct.ff_envelope** %retval, align 8, !dbg !5924
  br label %return, !dbg !5924

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %4 = load %struct.ff_envelope*, %struct.ff_envelope** %retval, align 8, !dbg !5925
  ret %struct.ff_envelope* %4, !dbg !5925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5926 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5929, metadata !DIExpression()), !dbg !5930
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5931, metadata !DIExpression()), !dbg !5933
  %0 = load i64, i64* %__edi, align 8, !dbg !5933
  store i64 %0, i64* %__edi, align 8, !dbg !5933
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5934, metadata !DIExpression()), !dbg !5933
  %1 = load i64, i64* %__esi, align 8, !dbg !5933
  store i64 %1, i64* %__esi, align 8, !dbg !5933
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5935, metadata !DIExpression()), !dbg !5933
  %2 = load i64, i64* %__edx, align 8, !dbg !5933
  store i64 %2, i64* %__edx, align 8, !dbg !5933
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5936, metadata !DIExpression()), !dbg !5933
  %3 = load i64, i64* %__ecx, align 8, !dbg !5933
  store i64 %3, i64* %__ecx, align 8, !dbg !5933
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5937, metadata !DIExpression()), !dbg !5933
  %4 = load i64, i64* %__eax, align 8, !dbg !5933
  store i64 %4, i64* %__eax, align 8, !dbg !5933
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5933
  %6 = call i64 @llvm.read_register.i64(metadata !3808), !dbg !5933
  %7 = load i64, i64* %f.addr, align 8, !dbg !5933
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #7, !dbg !5933, !srcloc !5938
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5933
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5933
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5933
  call void @llvm.write_register.i64(metadata !3808, i64 %asmresult1), !dbg !5933
  ret void, !dbg !5939
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !5940 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5941, metadata !DIExpression()), !dbg !5943
  %0 = load i64, i64* %__edi, align 8, !dbg !5943
  store i64 %0, i64* %__edi, align 8, !dbg !5943
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5944, metadata !DIExpression()), !dbg !5943
  %1 = load i64, i64* %__esi, align 8, !dbg !5943
  store i64 %1, i64* %__esi, align 8, !dbg !5943
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5945, metadata !DIExpression()), !dbg !5943
  %2 = load i64, i64* %__edx, align 8, !dbg !5943
  store i64 %2, i64* %__edx, align 8, !dbg !5943
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5946, metadata !DIExpression()), !dbg !5943
  %3 = load i64, i64* %__ecx, align 8, !dbg !5943
  store i64 %3, i64* %__ecx, align 8, !dbg !5943
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5947, metadata !DIExpression()), !dbg !5943
  %4 = load i64, i64* %__eax, align 8, !dbg !5943
  store i64 %4, i64* %__eax, align 8, !dbg !5943
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !5943
  %6 = call i64 @llvm.read_register.i64(metadata !3808), !dbg !5943
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #7, !dbg !5943, !srcloc !5948
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5943
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5943
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5943
  call void @llvm.write_register.i64(metadata !3808, i64 %asmresult1), !dbg !5943
  ret void, !dbg !5949
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5950 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5951, metadata !DIExpression()), !dbg !5952
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5953, metadata !DIExpression()), !dbg !5954
  ret i1 true, !dbg !5955
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3808}
!llvm.module.flags = !{!3809, !3810, !3811, !3812}
!llvm.ident = !{!3813}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file205", scope: !2, file: !3, line: 24, type: !3805, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !92, globals: !3773, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/ff-memless.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !87}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !14, line: 65, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !19, line: 16, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !31, line: 296, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!37 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !40, line: 9, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!46 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !48, line: 26, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !54, line: 44, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !60, line: 343, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !67, line: 524, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !67, line: 502, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !81, line: 305, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!91 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!92 = !{!93, !95, !96, !178, !524, !3769, !180, !205, !1331, !290, !3770, !3772}
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !94, line: 148, baseType: !7)
!94 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ml_device", file: !3, line: 47, size: 6720, elements: !98)
!98 = !{!99, !100, !186, !187, !207, !3765}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !97, file: !3, line: 48, baseType: !95, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !97, file: !3, line: 49, baseType: !101, size: 6144, offset: 64)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 6144, elements: !184)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ml_effect_state", file: !3, line: 38, size: 384, elements: !103)
!103 = !{!104, !177, !179, !181, !182, !183}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "effect", scope: !102, file: !3, line: 39, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !107, line: 450, size: 384, elements: !108)
!107 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!108 = !{!109, !113, !116, !117, !122, !127}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !107, line: 451, baseType: !110, size: 16)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !111, line: 24, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!112 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !106, file: !107, line: 452, baseType: !114, size: 16, offset: 16)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !111, line: 23, baseType: !115)
!115 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !106, file: !107, line: 453, baseType: !110, size: 16, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !106, file: !107, line: 454, baseType: !118, size: 32, offset: 48)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !107, line: 316, size: 32, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !118, file: !107, line: 317, baseType: !110, size: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !118, file: !107, line: 318, baseType: !110, size: 16, offset: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !106, file: !107, line: 455, baseType: !123, size: 32, offset: 80)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !107, line: 306, size: 32, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !123, file: !107, line: 307, baseType: !110, size: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !123, file: !107, line: 308, baseType: !110, size: 16, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !106, file: !107, line: 463, baseType: !128, size: 256, offset: 128)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !107, line: 457, size: 256, elements: !129)
!129 = !{!130, !141, !147, !160, !172}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !128, file: !107, line: 458, baseType: !131, size: 80)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !107, line: 345, size: 80, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !131, file: !107, line: 346, baseType: !114, size: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !131, file: !107, line: 347, baseType: !135, size: 64, offset: 16)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !107, line: 333, size: 64, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !135, file: !107, line: 334, baseType: !110, size: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !135, file: !107, line: 335, baseType: !110, size: 16, offset: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !135, file: !107, line: 336, baseType: !110, size: 16, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !135, file: !107, line: 337, baseType: !110, size: 16, offset: 48)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !128, file: !107, line: 459, baseType: !142, size: 96)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !107, line: 356, size: 96, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !142, file: !107, line: 357, baseType: !114, size: 16)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !142, file: !107, line: 358, baseType: !114, size: 16, offset: 16)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !142, file: !107, line: 359, baseType: !135, size: 64, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !128, file: !107, line: 460, baseType: !148, size: 256)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !107, line: 401, size: 256, elements: !149)
!149 = !{!150, !151, !152, !153, !154, !155, !156, !158}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !148, file: !107, line: 402, baseType: !110, size: 16)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !148, file: !107, line: 403, baseType: !110, size: 16, offset: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !148, file: !107, line: 404, baseType: !114, size: 16, offset: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !148, file: !107, line: 405, baseType: !114, size: 16, offset: 48)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !148, file: !107, line: 406, baseType: !110, size: 16, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !148, file: !107, line: 408, baseType: !135, size: 64, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !148, file: !107, line: 410, baseType: !157, size: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !111, line: 27, baseType: !7)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !148, file: !107, line: 411, baseType: !159, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !128, file: !107, line: 461, baseType: !161, size: 192)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 192, elements: !170)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !107, line: 372, size: 96, elements: !163)
!163 = !{!164, !165, !166, !167, !168, !169}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !162, file: !107, line: 373, baseType: !110, size: 16)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !162, file: !107, line: 374, baseType: !110, size: 16, offset: 16)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !162, file: !107, line: 376, baseType: !114, size: 16, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !162, file: !107, line: 377, baseType: !114, size: 16, offset: 48)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !162, file: !107, line: 379, baseType: !110, size: 16, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !162, file: !107, line: 380, baseType: !114, size: 16, offset: 80)
!170 = !{!171}
!171 = !DISubrange(count: 2)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !128, file: !107, line: 462, baseType: !173, size: 32)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !107, line: 422, size: 32, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !173, file: !107, line: 423, baseType: !110, size: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !173, file: !107, line: 424, baseType: !110, size: 16, offset: 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !3, line: 40, baseType: !178, size: 64, offset: 64)
!178 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !102, file: !3, line: 41, baseType: !180, size: 32, offset: 128)
!180 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "play_at", scope: !102, file: !3, line: 42, baseType: !178, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "stop_at", scope: !102, file: !3, line: 43, baseType: !178, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "adj_at", scope: !102, file: !3, line: 44, baseType: !178, size: 64, offset: 320)
!184 = !{!185}
!185 = !DISubrange(count: 16)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "gain", scope: !97, file: !3, line: 50, baseType: !180, size: 32, offset: 6208)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !97, file: !3, line: 51, baseType: !188, size: 320, offset: 6272)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !189, line: 11, size: 320, elements: !190)
!189 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!190 = !{!191, !198, !199, !204}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !188, file: !189, line: 16, baseType: !192, size: 128)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !94, line: 186, size: 128, elements: !193)
!193 = !{!194, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !94, line: 187, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !192, file: !94, line: 187, baseType: !197, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !188, file: !189, line: 17, baseType: !178, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !188, file: !189, line: 18, baseType: !200, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !188, file: !189, line: 19, baseType: !205, size: 32, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !206, line: 21, baseType: !157)
!206 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !97, file: !3, line: 52, baseType: !208, size: 64, offset: 6592)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !210, line: 131, size: 10432, elements: !211)
!210 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!211 = !{!212, !216, !217, !218, !225, !229, !230, !234, !235, !236, !237, !238, !239, !241, !242, !243, !244, !245, !246, !265, !270, !2985, !2988, !2989, !2990, !2992, !2995, !3005, !3006, !3007, !3008, !3009, !3013, !3017, !3021, !3025, !3103, !3104, !3105, !3106, !3107, !3756, !3757, !3758, !3759, !3760, !3762, !3763}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !210, line: 132, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !209, file: !210, line: 133, baseType: !213, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !209, file: !210, line: 134, baseType: !213, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !209, file: !210, line: 135, baseType: !219, size: 64, offset: 192)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !107, line: 59, size: 64, elements: !220)
!220 = !{!221, !222, !223, !224}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !219, file: !107, line: 60, baseType: !110, size: 16)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !219, file: !107, line: 61, baseType: !110, size: 16, offset: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !219, file: !107, line: 62, baseType: !110, size: 16, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !219, file: !107, line: 63, baseType: !110, size: 16, offset: 48)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !209, file: !210, line: 137, baseType: !226, size: 64, offset: 256)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 64, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 1)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !209, file: !210, line: 139, baseType: !226, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !209, file: !210, line: 140, baseType: !231, size: 768, offset: 384)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 768, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 12)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !209, file: !210, line: 141, baseType: !226, size: 64, offset: 1152)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !209, file: !210, line: 142, baseType: !226, size: 64, offset: 1216)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !209, file: !210, line: 143, baseType: !226, size: 64, offset: 1280)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !209, file: !210, line: 144, baseType: !226, size: 64, offset: 1344)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !209, file: !210, line: 145, baseType: !226, size: 64, offset: 1408)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !209, file: !210, line: 146, baseType: !240, size: 128, offset: 1472)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 128, elements: !170)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !209, file: !210, line: 147, baseType: !226, size: 64, offset: 1600)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !209, file: !210, line: 149, baseType: !7, size: 32, offset: 1664)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !209, file: !210, line: 151, baseType: !7, size: 32, offset: 1696)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !209, file: !210, line: 152, baseType: !7, size: 32, offset: 1728)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !209, file: !210, line: 153, baseType: !95, size: 64, offset: 1792)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !209, file: !210, line: 155, baseType: !247, size: 64, offset: 1856)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!180, !208, !250, !264}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !107, line: 114, size: 320, elements: !253)
!253 = !{!254, !257, !258, !259, !260}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !252, file: !107, line: 116, baseType: !255, size: 8)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !111, line: 21, baseType: !256)
!256 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !252, file: !107, line: 117, baseType: !255, size: 8, offset: 8)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !252, file: !107, line: 118, baseType: !110, size: 16, offset: 16)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !252, file: !107, line: 119, baseType: !157, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !252, file: !107, line: 120, baseType: !261, size: 256, offset: 64)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 32)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !209, file: !210, line: 158, baseType: !266, size: 64, offset: 1920)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!180, !208, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !209, file: !210, line: 161, baseType: !271, size: 64, offset: 1984)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !210, line: 534, size: 896, elements: !273)
!273 = !{!274, !278, !282, !286, !291, !292, !296, !297, !298, !334, !335, !336}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !272, file: !210, line: 535, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!180, !208, !105, !105}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !272, file: !210, line: 537, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!180, !208, !180}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !272, file: !210, line: 539, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!180, !208, !180, !180}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !272, file: !210, line: 540, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !208, !290}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !206, line: 19, baseType: !110)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !272, file: !210, line: 541, baseType: !287, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !272, file: !210, line: 543, baseType: !293, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !271}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !272, file: !210, line: 545, baseType: !95, size: 64, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !272, file: !210, line: 547, baseType: !240, size: 128, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !272, file: !210, line: 549, baseType: !299, size: 192, offset: 576)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !300, line: 53, size: 192, elements: !301)
!300 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!301 = !{!302, !312, !328}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !299, file: !300, line: 54, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !304, line: 13, baseType: !305)
!304 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !94, line: 175, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 173, size: 64, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !306, file: !94, line: 174, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !206, line: 22, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !111, line: 30, baseType: !311)
!311 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !299, file: !300, line: 55, baseType: !313, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !314, line: 83, baseType: !315)
!314 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !314, line: 71, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, scope: !315, file: !314, line: 72, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !315, file: !314, line: 72, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !318, file: !314, line: 73, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !314, line: 20, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !321, file: !314, line: 21, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !325, line: 25, baseType: !326)
!325 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 25, elements: !327)
!327 = !{}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !299, file: !300, line: 59, baseType: !329, size: 128, offset: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !94, line: 178, size: 128, elements: !330)
!330 = !{!331, !333}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !94, line: 179, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !329, file: !94, line: 179, baseType: !332, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !272, file: !210, line: 551, baseType: !180, size: 32, offset: 768)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !272, file: !210, line: 552, baseType: !105, size: 64, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !272, file: !210, line: 553, baseType: !337, offset: 896)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, elements: !2201)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !340)
!340 = !{!341, !359, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2968, !2969, !2978, !2979, !2980, !2981, !2982, !2983, !2984}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !339, file: !31, line: 920, baseType: !342, size: 128)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !31, line: 917, size: 128, elements: !343)
!343 = !{!344, !350}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !342, file: !31, line: 918, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !346, line: 58, size: 64, elements: !347)
!346 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !346, line: 59, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !342, file: !31, line: 919, baseType: !351, size: 128, align: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !94, line: 216, size: 128, align: 64, elements: !352)
!352 = !{!353, !355}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !94, line: 217, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !351, file: !94, line: 218, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !354}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !339, file: !31, line: 921, baseType: !360, size: 128, offset: 128)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !361, line: 8, size: 128, elements: !362)
!361 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!362 = !{!363, !367}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !360, file: !361, line: 9, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !366, line: 18, flags: DIFlagFwdDecl)
!366 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!367 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !360, file: !361, line: 10, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !366, line: 89, size: 1536, elements: !370)
!370 = !{!371, !372, !382, !390, !391, !409, !2918, !2920, !2932, !2933, !2934, !2935, !2936, !2942, !2943, !2944}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !369, file: !366, line: 91, baseType: !7, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !369, file: !366, line: 92, baseType: !373, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !374, line: 277, baseType: !375)
!374 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !374, line: 277, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !375, file: !374, line: 277, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !374, line: 70, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !374, line: 65, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !379, file: !374, line: 66, baseType: !7, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !369, file: !366, line: 93, baseType: !383, size: 128, offset: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !384, line: 38, size: 128, elements: !385)
!384 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!385 = !{!386, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !384, line: 39, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !383, file: !384, line: 39, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !369, file: !366, line: 94, baseType: !368, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !369, file: !366, line: 95, baseType: !392, size: 128, offset: 256)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !366, line: 47, size: 128, elements: !393)
!393 = !{!394, !406}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !366, line: 48, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !366, line: 48, size: 64, elements: !396)
!396 = !{!397, !402}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !366, line: 49, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !366, line: 49, size: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !398, file: !366, line: 50, baseType: !205, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !398, file: !366, line: 50, baseType: !205, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !395, file: !366, line: 52, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !206, line: 23, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !111, line: 31, baseType: !405)
!405 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !366, line: 54, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !369, file: !366, line: 96, baseType: !410, size: 64, offset: 384)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !412)
!412 = !{!413, !415, !416, !425, !432, !433, !587, !2629, !2630, !2631, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2894, !2902, !2903, !2904, !2914, !2915, !2916, !2917}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !411, file: !31, line: 611, baseType: !414, size: 16)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !94, line: 19, baseType: !112)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !411, file: !31, line: 612, baseType: !112, size: 16, offset: 16)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !411, file: !31, line: 613, baseType: !417, size: 32, offset: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !418, line: 23, baseType: !419)
!418 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 21, size: 32, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !419, file: !418, line: 22, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !94, line: 32, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !424, line: 49, baseType: !7)
!424 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !411, file: !31, line: 614, baseType: !426, size: 32, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !418, line: 28, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !418, line: 26, size: 32, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !427, file: !418, line: 27, baseType: !430, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !94, line: 33, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !424, line: 50, baseType: !7)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !411, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !411, file: !31, line: 622, baseType: !434, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !437)
!437 = !{!438, !442, !455, !459, !465, !470, !476, !480, !484, !488, !492, !493, !499, !503, !528, !557, !567, !573, !578, !582, !583}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !436, file: !31, line: 1865, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!368, !410, !368, !7}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !436, file: !31, line: 1866, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!213, !368, !410, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !448, line: 10, size: 128, elements: !449)
!448 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!449 = !{!450, !454}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !447, file: !448, line: 11, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !95}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !447, file: !448, line: 12, baseType: !95, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !436, file: !31, line: 1867, baseType: !456, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!180, !410, !180}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !436, file: !31, line: 1868, baseType: !460, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !410, !180}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !436, file: !31, line: 1870, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!180, !368, !469, !180}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !436, file: !31, line: 1872, baseType: !471, size: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!180, !410, !368, !414, !474}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !94, line: 30, baseType: !475)
!475 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !436, file: !31, line: 1873, baseType: !477, size: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!180, !368, !410, !368}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !436, file: !31, line: 1874, baseType: !481, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!180, !410, !368}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !436, file: !31, line: 1875, baseType: !485, size: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!180, !410, !368, !213}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !436, file: !31, line: 1876, baseType: !489, size: 64, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!180, !410, !368, !414}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !436, file: !31, line: 1877, baseType: !481, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !436, file: !31, line: 1878, baseType: !494, size: 64, offset: 704)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!180, !410, !368, !414, !497}
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !94, line: 16, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !94, line: 13, baseType: !205)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !436, file: !31, line: 1879, baseType: !500, size: 64, offset: 768)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!180, !410, !368, !410, !368, !7}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !436, file: !31, line: 1881, baseType: !504, size: 64, offset: 832)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!180, !368, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !509)
!509 = !{!510, !511, !512, !513, !514, !517, !525, !526, !527}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !508, file: !31, line: 220, baseType: !7, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !508, file: !31, line: 221, baseType: !414, size: 16, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !508, file: !31, line: 222, baseType: !417, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !508, file: !31, line: 223, baseType: !426, size: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !508, file: !31, line: 224, baseType: !515, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !94, line: 46, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !424, line: 88, baseType: !311)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !508, file: !31, line: 225, baseType: !518, size: 128, offset: 192)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !519, line: 13, size: 128, elements: !520)
!519 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !523}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !518, file: !519, line: 14, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !519, line: 8, baseType: !310)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !518, file: !519, line: 15, baseType: !524, size: 64, offset: 64)
!524 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !508, file: !31, line: 226, baseType: !518, size: 128, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !508, file: !31, line: 227, baseType: !518, size: 128, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !508, file: !31, line: 234, baseType: !338, size: 64, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !436, file: !31, line: 1882, baseType: !529, size: 64, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!180, !532, !534, !205, !7}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !536, line: 22, size: 1152, elements: !537)
!536 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538, !539, !540, !541, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !535, file: !536, line: 23, baseType: !205, size: 32)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !535, file: !536, line: 24, baseType: !414, size: 16, offset: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !535, file: !536, line: 25, baseType: !7, size: 32, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !535, file: !536, line: 26, baseType: !542, size: 32, offset: 96)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !94, line: 104, baseType: !205)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !535, file: !536, line: 27, baseType: !403, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !535, file: !536, line: 28, baseType: !403, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !535, file: !536, line: 37, baseType: !403, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !535, file: !536, line: 38, baseType: !497, size: 32, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !535, file: !536, line: 39, baseType: !497, size: 32, offset: 352)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !535, file: !536, line: 40, baseType: !417, size: 32, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !535, file: !536, line: 41, baseType: !426, size: 32, offset: 416)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !535, file: !536, line: 42, baseType: !515, size: 64, offset: 448)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !535, file: !536, line: 43, baseType: !518, size: 128, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !535, file: !536, line: 44, baseType: !518, size: 128, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !535, file: !536, line: 45, baseType: !518, size: 128, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !535, file: !536, line: 46, baseType: !518, size: 128, offset: 896)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !535, file: !536, line: 47, baseType: !403, size: 64, offset: 1024)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !535, file: !536, line: 48, baseType: !403, size: 64, offset: 1088)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !436, file: !31, line: 1883, baseType: !558, size: 64, offset: 960)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!561, !368, !469, !564}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !94, line: 60, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !424, line: 73, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !424, line: 15, baseType: !524)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !94, line: 55, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !424, line: 72, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !424, line: 16, baseType: !178)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !436, file: !31, line: 1884, baseType: !568, size: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!180, !410, !571, !403, !403}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !436, file: !31, line: 1886, baseType: !574, size: 64, offset: 1088)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!180, !410, !577, !180}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !436, file: !31, line: 1887, baseType: !579, size: 64, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!180, !410, !368, !338, !7, !414}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !436, file: !31, line: 1890, baseType: !489, size: 64, offset: 1216)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !436, file: !31, line: 1891, baseType: !584, size: 64, offset: 1280)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!180, !410, !463, !180}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !411, file: !31, line: 623, baseType: !588, size: 64, offset: 192)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !642, !2237, !2319, !2402, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2418, !2422, !2423, !2426, !2427, !2430, !2431, !2432, !2473, !2499, !2500, !2501, !2502, !2503, !2504, !2507, !2509, !2516, !2517, !2519, !2520, !2521, !2580, !2581, !2596, !2597, !2598, !2599, !2600, !2603, !2604, !2605, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !589, file: !31, line: 1417, baseType: !329, size: 128)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !589, file: !31, line: 1418, baseType: !497, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !589, file: !31, line: 1419, baseType: !256, size: 8, offset: 160)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !589, file: !31, line: 1420, baseType: !178, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !589, file: !31, line: 1421, baseType: !515, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !589, file: !31, line: 1422, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !599)
!599 = !{!600, !601, !602, !609, !613, !617, !621, !625, !626, !630, !633, !634, !635, !639, !640, !641}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !598, file: !31, line: 2229, baseType: !213, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !598, file: !31, line: 2230, baseType: !180, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !598, file: !31, line: 2238, baseType: !603, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!180, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !608, line: 28, flags: DIFlagFwdDecl)
!608 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!609 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !598, file: !31, line: 2239, baseType: !610, size: 64, offset: 192)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !598, file: !31, line: 2240, baseType: !614, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!368, !597, !180, !213, !95}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !598, file: !31, line: 2242, baseType: !618, size: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !588}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !598, file: !31, line: 2243, baseType: !622, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !624, line: 76, flags: DIFlagFwdDecl)
!624 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !31, line: 2244, baseType: !597, size: 64, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !598, file: !31, line: 2245, baseType: !627, size: 64, offset: 512)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !94, line: 182, size: 64, elements: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !627, file: !94, line: 183, baseType: !195, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !598, file: !31, line: 2247, baseType: !631, offset: 576)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !632, line: 187, elements: !327)
!632 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !598, file: !31, line: 2248, baseType: !631, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !598, file: !31, line: 2249, baseType: !631, offset: 576)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !598, file: !31, line: 2250, baseType: !636, offset: 576)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, elements: !637)
!637 = !{!638}
!638 = !DISubrange(count: 3)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !598, file: !31, line: 2252, baseType: !631, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !598, file: !31, line: 2253, baseType: !631, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !598, file: !31, line: 2254, baseType: !631, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !589, file: !31, line: 1423, baseType: !643, size: 64, offset: 384)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !646)
!646 = !{!647, !651, !655, !656, !660, !666, !670, !671, !672, !676, !680, !681, !682, !683, !689, !694, !695, !702, !703, !704, !705, !2221, !2236}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !645, file: !31, line: 1936, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!410, !588}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !645, file: !31, line: 1937, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !410}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !645, file: !31, line: 1938, baseType: !652, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !645, file: !31, line: 1940, baseType: !657, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !410, !180}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !645, file: !31, line: 1941, baseType: !661, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!180, !410, !664}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !645, file: !31, line: 1942, baseType: !667, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!180, !410}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !645, file: !31, line: 1943, baseType: !652, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !645, file: !31, line: 1944, baseType: !618, size: 64, offset: 448)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !645, file: !31, line: 1945, baseType: !673, size: 64, offset: 512)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!180, !588, !180}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !645, file: !31, line: 1946, baseType: !677, size: 64, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!180, !588}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !645, file: !31, line: 1947, baseType: !677, size: 64, offset: 640)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !645, file: !31, line: 1948, baseType: !677, size: 64, offset: 704)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !645, file: !31, line: 1949, baseType: !677, size: 64, offset: 768)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !645, file: !31, line: 1950, baseType: !684, size: 64, offset: 832)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!180, !368, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !645, file: !31, line: 1951, baseType: !690, size: 64, offset: 896)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!180, !588, !693, !469}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !645, file: !31, line: 1952, baseType: !618, size: 64, offset: 960)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !645, file: !31, line: 1954, baseType: !696, size: 64, offset: 1024)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!180, !699, !368}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !701, line: 539, flags: DIFlagFwdDecl)
!701 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!702 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !645, file: !31, line: 1955, baseType: !696, size: 64, offset: 1088)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !645, file: !31, line: 1956, baseType: !696, size: 64, offset: 1152)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !645, file: !31, line: 1957, baseType: !696, size: 64, offset: 1216)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !645, file: !31, line: 1963, baseType: !706, size: 64, offset: 1280)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!180, !588, !709, !93}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !711, line: 68, size: 512, align: 128, elements: !712)
!711 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!712 = !{!713, !714, !2213, !2220}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !711, line: 69, baseType: !178, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !711, line: 77, baseType: !715, size: 320, offset: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !711, line: 77, size: 320, elements: !716)
!716 = !{!717, !895, !900, !928, !936, !942, !2205, !2212}
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !711, line: 78, baseType: !718, size: 320)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !711, line: 78, size: 320, elements: !719)
!719 = !{!720, !721, !893, !894}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !718, file: !711, line: 84, baseType: !329, size: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !718, file: !711, line: 86, baseType: !722, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !724)
!724 = !{!725, !726, !733, !734, !739, !754, !763, !764, !765, !766, !886, !887, !890, !891, !892}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !723, file: !31, line: 452, baseType: !410, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !723, file: !31, line: 453, baseType: !727, size: 128, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !728, line: 292, size: 128, elements: !729)
!728 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!729 = !{!730, !731, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !727, file: !728, line: 293, baseType: !313)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !727, file: !728, line: 295, baseType: !93, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !727, file: !728, line: 296, baseType: !95, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !723, file: !31, line: 454, baseType: !93, size: 32, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !723, file: !31, line: 455, baseType: !735, size: 32, offset: 224)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !94, line: 168, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !94, line: 166, size: 32, elements: !737)
!737 = !{!738}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !736, file: !94, line: 167, baseType: !180, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !723, file: !31, line: 460, baseType: !740, size: 128, offset: 256)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !741, line: 125, size: 128, elements: !742)
!741 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !753}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !740, file: !741, line: 126, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !741, line: 31, size: 64, elements: !745)
!745 = !{!746}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !744, file: !741, line: 32, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !741, line: 24, size: 192, align: 64, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !748, file: !741, line: 25, baseType: !178, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !748, file: !741, line: 26, baseType: !747, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !748, file: !741, line: 27, baseType: !747, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !740, file: !741, line: 127, baseType: !747, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !723, file: !31, line: 461, baseType: !755, size: 256, offset: 384)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !756, line: 35, size: 256, elements: !757)
!756 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!757 = !{!758, !759, !760, !762}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !755, file: !756, line: 36, baseType: !303, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !755, file: !756, line: 42, baseType: !303, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !755, file: !756, line: 46, baseType: !761, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !314, line: 29, baseType: !321)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !755, file: !756, line: 47, baseType: !329, size: 128, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !723, file: !31, line: 462, baseType: !178, size: 64, offset: 640)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !723, file: !31, line: 463, baseType: !178, size: 64, offset: 704)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !723, file: !31, line: 464, baseType: !178, size: 64, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !723, file: !31, line: 465, baseType: !767, size: 64, offset: 832)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !770)
!770 = !{!771, !775, !779, !783, !787, !791, !797, !803, !807, !812, !816, !820, !824, !850, !854, !860, !861, !862, !866, !871, !875, !882}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !769, file: !31, line: 368, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!180, !709, !664}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !769, file: !31, line: 369, baseType: !776, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!180, !338, !709}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !769, file: !31, line: 372, baseType: !780, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!180, !722, !664}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !769, file: !31, line: 375, baseType: !784, size: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!180, !709}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !769, file: !31, line: 381, baseType: !788, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!180, !338, !722, !332, !7}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !769, file: !31, line: 383, baseType: !792, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !795}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !769, file: !31, line: 385, baseType: !798, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!180, !338, !722, !515, !7, !7, !801, !802}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !769, file: !31, line: 388, baseType: !804, size: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!180, !338, !722, !515, !7, !7, !709, !95}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !769, file: !31, line: 393, baseType: !808, size: 64, offset: 512)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DISubroutineType(types: !810)
!810 = !{!811, !722, !811}
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !94, line: 125, baseType: !403)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !769, file: !31, line: 394, baseType: !813, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !709, !7, !7}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !769, file: !31, line: 395, baseType: !817, size: 64, offset: 640)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!180, !709, !93}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !769, file: !31, line: 396, baseType: !821, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !709}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !769, file: !31, line: 397, baseType: !825, size: 64, offset: 768)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!561, !828, !848}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !830)
!830 = !{!831, !832, !833, !837, !838, !839, !840, !841}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !829, file: !31, line: 321, baseType: !338, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !829, file: !31, line: 326, baseType: !515, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !829, file: !31, line: 327, baseType: !834, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !828, !524, !524}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !829, file: !31, line: 328, baseType: !95, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !829, file: !31, line: 329, baseType: !180, size: 32, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !829, file: !31, line: 330, baseType: !290, size: 16, offset: 288)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !829, file: !31, line: 331, baseType: !290, size: 16, offset: 304)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !829, file: !31, line: 332, baseType: !842, size: 64, offset: 320)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !829, file: !31, line: 332, size: 64, elements: !843)
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !842, file: !31, line: 333, baseType: !7, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !842, file: !31, line: 334, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !769, file: !31, line: 402, baseType: !851, size: 64, offset: 832)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!180, !722, !709, !709, !5}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !769, file: !31, line: 404, baseType: !855, size: 64, offset: 896)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!474, !709, !858}
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !859, line: 305, baseType: !7)
!859 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!860 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !769, file: !31, line: 405, baseType: !821, size: 64, offset: 960)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !769, file: !31, line: 406, baseType: !784, size: 64, offset: 1024)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !769, file: !31, line: 407, baseType: !863, size: 64, offset: 1088)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!180, !709, !178, !178}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !769, file: !31, line: 409, baseType: !867, size: 64, offset: 1152)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !709, !870, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !769, file: !31, line: 410, baseType: !872, size: 64, offset: 1216)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!180, !722, !709}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !769, file: !31, line: 413, baseType: !876, size: 64, offset: 1280)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!180, !879, !338, !881}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !769, file: !31, line: 415, baseType: !883, size: 64, offset: 1344)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !338}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !31, line: 466, baseType: !178, size: 64, offset: 896)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !723, file: !31, line: 467, baseType: !888, size: 32, offset: 960)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !889, line: 8, baseType: !205)
!889 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!890 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !723, file: !31, line: 468, baseType: !313, offset: 992)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !723, file: !31, line: 469, baseType: !329, size: 128, offset: 1024)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !723, file: !31, line: 470, baseType: !95, size: 64, offset: 1152)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !718, file: !711, line: 87, baseType: !178, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !718, file: !711, line: 94, baseType: !178, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !711, line: 96, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !711, line: 96, size: 64, elements: !897)
!897 = !{!898}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !896, file: !711, line: 101, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !94, line: 143, baseType: !403)
!900 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !711, line: 103, baseType: !901, size: 320)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !711, line: 103, size: 320, elements: !902)
!902 = !{!903, !913, !916, !917}
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !711, line: 104, baseType: !904, size: 128)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !711, line: 104, size: 128, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !904, file: !711, line: 105, baseType: !329, size: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !711, line: 106, baseType: !908, size: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !904, file: !711, line: 106, size: 128, elements: !909)
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !711, line: 107, baseType: !709, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !908, file: !711, line: 109, baseType: !180, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !908, file: !711, line: 110, baseType: !180, size: 32, offset: 96)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !901, file: !711, line: 117, baseType: !914, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !711, line: 117, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !901, file: !711, line: 119, baseType: !95, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !711, line: 120, baseType: !918, size: 64, offset: 256)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !901, file: !711, line: 120, size: 64, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !918, file: !711, line: 121, baseType: !95, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !918, file: !711, line: 122, baseType: !178, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !918, file: !711, line: 123, baseType: !923, size: 32)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !711, line: 123, size: 32, elements: !924)
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !923, file: !711, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !923, file: !711, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !923, file: !711, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !711, line: 130, baseType: !929, size: 192)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !711, line: 130, size: 192, elements: !930)
!930 = !{!931, !932, !933, !934, !935}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !929, file: !711, line: 131, baseType: !178, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !929, file: !711, line: 134, baseType: !256, size: 8, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !929, file: !711, line: 135, baseType: !256, size: 8, offset: 72)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !929, file: !711, line: 136, baseType: !735, size: 32, offset: 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !929, file: !711, line: 137, baseType: !7, size: 32, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !711, line: 139, baseType: !937, size: 256)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !711, line: 139, size: 256, elements: !938)
!938 = !{!939, !940, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !937, file: !711, line: 140, baseType: !178, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !937, file: !711, line: 141, baseType: !735, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !937, file: !711, line: 143, baseType: !329, size: 128, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !711, line: 145, baseType: !943, size: 256)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !711, line: 145, size: 256, elements: !944)
!944 = !{!945, !946, !948, !949, !2204}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !943, file: !711, line: 146, baseType: !178, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !943, file: !711, line: 147, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !701, line: 509, baseType: !709)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !943, file: !711, line: 148, baseType: !178, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !943, file: !711, line: 149, baseType: !950, size: 64, offset: 192)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !943, file: !711, line: 149, size: 64, elements: !951)
!951 = !{!952, !2203}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !950, file: !711, line: 150, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !711, line: 388, size: 7296, elements: !955)
!955 = !{!956, !2199}
!956 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !711, line: 389, baseType: !957, size: 7296)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !954, file: !711, line: 389, size: 7296, elements: !958)
!958 = !{!959, !997, !998, !999, !1003, !1004, !1005, !1006, !1007, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1048, !1056, !1059, !1097, !1098, !2183, !2184, !2187, !2188, !2189, !2192, !2193, !2194, !2197, !2198}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !957, file: !711, line: 390, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !711, line: 305, size: 1472, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969, !970, !977, !978, !983, !984, !987, !991, !992, !993, !994, !995}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !961, file: !711, line: 308, baseType: !178, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !961, file: !711, line: 309, baseType: !178, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !961, file: !711, line: 313, baseType: !960, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !961, file: !711, line: 313, baseType: !960, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !961, file: !711, line: 315, baseType: !748, size: 192, align: 64, offset: 256)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !961, file: !711, line: 323, baseType: !178, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !961, file: !711, line: 327, baseType: !953, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !961, file: !711, line: 333, baseType: !971, size: 64, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !701, line: 284, baseType: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !701, line: 284, size: 64, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !972, file: !701, line: 284, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !976, line: 19, baseType: !178)
!976 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !961, file: !711, line: 334, baseType: !178, size: 64, offset: 640)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !961, file: !711, line: 343, baseType: !979, size: 256, offset: 704)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !961, file: !711, line: 340, size: 256, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !979, file: !711, line: 341, baseType: !748, size: 192, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !979, file: !711, line: 342, baseType: !178, size: 64, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !961, file: !711, line: 351, baseType: !329, size: 128, offset: 960)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !961, file: !711, line: 353, baseType: !985, size: 64, offset: 1088)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !711, line: 353, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !961, file: !711, line: 356, baseType: !988, size: 64, offset: 1152)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!990 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !711, line: 356, flags: DIFlagFwdDecl)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !961, file: !711, line: 359, baseType: !178, size: 64, offset: 1216)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !961, file: !711, line: 361, baseType: !338, size: 64, offset: 1280)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !961, file: !711, line: 362, baseType: !95, size: 64, offset: 1344)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !961, file: !711, line: 365, baseType: !303, size: 64, offset: 1408)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !961, file: !711, line: 373, baseType: !996, offset: 1472)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !711, line: 296, elements: !327)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !957, file: !711, line: 391, baseType: !744, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !957, file: !711, line: 392, baseType: !403, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !957, file: !711, line: 394, baseType: !1000, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!178, !338, !178, !178, !178, !178}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !957, file: !711, line: 398, baseType: !178, size: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !957, file: !711, line: 399, baseType: !178, size: 64, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !957, file: !711, line: 405, baseType: !178, size: 64, offset: 384)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !957, file: !711, line: 406, baseType: !178, size: 64, offset: 448)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !957, file: !711, line: 407, baseType: !1008, size: 64, offset: 512)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !701, line: 286, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 286, size: 64, elements: !1011)
!1011 = !{!1012}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1010, file: !701, line: 286, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !976, line: 18, baseType: !178)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !957, file: !711, line: 416, baseType: !735, size: 32, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !957, file: !711, line: 428, baseType: !735, size: 32, offset: 608)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !957, file: !711, line: 437, baseType: !735, size: 32, offset: 640)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !957, file: !711, line: 447, baseType: !735, size: 32, offset: 672)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !957, file: !711, line: 450, baseType: !303, size: 64, offset: 704)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !957, file: !711, line: 452, baseType: !180, size: 32, offset: 768)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !957, file: !711, line: 454, baseType: !313, offset: 800)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !957, file: !711, line: 457, baseType: !755, size: 256, offset: 832)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !957, file: !711, line: 459, baseType: !329, size: 128, offset: 1088)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !957, file: !711, line: 466, baseType: !178, size: 64, offset: 1216)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !957, file: !711, line: 467, baseType: !178, size: 64, offset: 1280)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !957, file: !711, line: 469, baseType: !178, size: 64, offset: 1344)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !957, file: !711, line: 470, baseType: !178, size: 64, offset: 1408)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !957, file: !711, line: 471, baseType: !305, size: 64, offset: 1472)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !957, file: !711, line: 472, baseType: !178, size: 64, offset: 1536)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !957, file: !711, line: 473, baseType: !178, size: 64, offset: 1600)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !957, file: !711, line: 474, baseType: !178, size: 64, offset: 1664)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !957, file: !711, line: 475, baseType: !178, size: 64, offset: 1728)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !957, file: !711, line: 477, baseType: !313, offset: 1792)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !957, file: !711, line: 478, baseType: !178, size: 64, offset: 1792)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !957, file: !711, line: 478, baseType: !178, size: 64, offset: 1856)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !957, file: !711, line: 478, baseType: !178, size: 64, offset: 1920)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !957, file: !711, line: 478, baseType: !178, size: 64, offset: 1984)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !957, file: !711, line: 479, baseType: !178, size: 64, offset: 2048)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !957, file: !711, line: 479, baseType: !178, size: 64, offset: 2112)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !957, file: !711, line: 479, baseType: !178, size: 64, offset: 2176)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !957, file: !711, line: 480, baseType: !178, size: 64, offset: 2240)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !957, file: !711, line: 480, baseType: !178, size: 64, offset: 2304)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !957, file: !711, line: 480, baseType: !178, size: 64, offset: 2368)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !957, file: !711, line: 480, baseType: !178, size: 64, offset: 2432)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !957, file: !711, line: 482, baseType: !1045, size: 2816, offset: 2496)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 2816, elements: !1046)
!1046 = !{!1047}
!1047 = !DISubrange(count: 44)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !957, file: !711, line: 488, baseType: !1049, size: 256, offset: 5312)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1050, line: 60, size: 256, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1049, file: !1050, line: 61, baseType: !1053, size: 256)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 256, elements: !1054)
!1054 = !{!1055}
!1055 = !DISubrange(count: 4)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !957, file: !711, line: 490, baseType: !1057, size: 64, offset: 5568)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !711, line: 490, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !957, file: !711, line: 493, baseType: !1060, size: 896, offset: 5632)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1061, line: 53, baseType: !1062)
!1061 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1061, line: 13, size: 896, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1070, !1071, !1072, !1073, !1093, !1094, !1095}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1062, file: !1061, line: 18, baseType: !403, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1062, file: !1061, line: 28, baseType: !305, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1062, file: !1061, line: 31, baseType: !755, size: 256, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1062, file: !1061, line: 32, baseType: !1068, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1061, line: 32, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1062, file: !1061, line: 37, baseType: !112, size: 16, offset: 448)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1062, file: !1061, line: 40, baseType: !299, size: 192, offset: 512)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1062, file: !1061, line: 41, baseType: !95, size: 64, offset: 704)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1062, file: !1061, line: 42, baseType: !1074, size: 64, offset: 768)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1077, line: 13, size: 896, elements: !1078)
!1077 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1076, file: !1077, line: 14, baseType: !95, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1076, file: !1077, line: 15, baseType: !178, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1076, file: !1077, line: 17, baseType: !178, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1076, file: !1077, line: 17, baseType: !178, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1076, file: !1077, line: 19, baseType: !524, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1076, file: !1077, line: 21, baseType: !524, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1076, file: !1077, line: 22, baseType: !524, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1076, file: !1077, line: 23, baseType: !524, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1076, file: !1077, line: 24, baseType: !524, size: 64, offset: 512)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1076, file: !1077, line: 25, baseType: !524, size: 64, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1076, file: !1077, line: 26, baseType: !524, size: 64, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1076, file: !1077, line: 27, baseType: !524, size: 64, offset: 704)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1076, file: !1077, line: 28, baseType: !524, size: 64, offset: 768)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1076, file: !1077, line: 29, baseType: !524, size: 64, offset: 832)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1062, file: !1061, line: 44, baseType: !735, size: 32, offset: 832)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1062, file: !1061, line: 50, baseType: !290, size: 16, offset: 864)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1062, file: !1061, line: 51, baseType: !1096, size: 16, offset: 880)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !206, line: 18, baseType: !114)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !957, file: !711, line: 495, baseType: !178, size: 64, offset: 6528)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !957, file: !711, line: 497, baseType: !1099, size: 64, offset: 6592)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !711, line: 381, size: 384, elements: !1101)
!1101 = !{!1102, !1103, !2182}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1100, file: !711, line: 382, baseType: !735, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1100, file: !711, line: 383, baseType: !1104, size: 128, offset: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !711, line: 376, size: 128, elements: !1105)
!1105 = !{!1106, !2180}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1104, file: !711, line: 377, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1109, line: 640, size: 48640, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111, !1117, !1119, !1120, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1137, !1155, !1166, !1250, !1251, !1252, !1260, !1261, !1263, !1264, !1265, !1266, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1345, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1383, !1385, !1386, !1387, !1399, !1400, !1401, !1402, !1403, !1404, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1428, !1433, !1615, !1616, !1617, !1618, !1620, !1623, !1626, !1629, !1632, !1635, !1736, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1784, !1785, !1786, !1787, !1788, !1793, !1794, !1795, !1798, !1799, !1802, !1805, !1808, !1811, !1854, !1857, !1858, !1937, !1938, !1941, !1942, !1945, !1946, !1947, !1951, !1952, !1953, !1966, !1967, !1968, !1978, !1983, !1986, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1108, file: !1109, line: 646, baseType: !1112, size: 128)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1113, line: 56, size: 128, elements: !1114)
!1113 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1112, file: !1113, line: 57, baseType: !178, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1112, file: !1113, line: 58, baseType: !205, size: 32, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1108, file: !1109, line: 649, baseType: !1118, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !524)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1108, file: !1109, line: 657, baseType: !95, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1108, file: !1109, line: 658, baseType: !1121, size: 32, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1122, line: 113, baseType: !1123)
!1122 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1122, line: 111, size: 32, elements: !1124)
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1123, file: !1122, line: 112, baseType: !735, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1108, file: !1109, line: 660, baseType: !7, size: 32, offset: 288)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1108, file: !1109, line: 661, baseType: !7, size: 32, offset: 320)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1108, file: !1109, line: 684, baseType: !180, size: 32, offset: 352)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1108, file: !1109, line: 686, baseType: !180, size: 32, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1108, file: !1109, line: 687, baseType: !180, size: 32, offset: 416)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1108, file: !1109, line: 688, baseType: !180, size: 32, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1108, file: !1109, line: 689, baseType: !7, size: 32, offset: 480)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1108, file: !1109, line: 691, baseType: !1134, size: 64, offset: 512)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1109, line: 691, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1108, file: !1109, line: 692, baseType: !1138, size: 832, offset: 576)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1109, line: 451, size: 832, elements: !1139)
!1139 = !{!1140, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1138, file: !1109, line: 453, baseType: !1141, size: 128)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1109, line: 325, size: 128, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1141, file: !1109, line: 326, baseType: !178, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1141, file: !1109, line: 327, baseType: !205, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1138, file: !1109, line: 454, baseType: !748, size: 192, align: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1138, file: !1109, line: 455, baseType: !329, size: 128, offset: 320)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1138, file: !1109, line: 456, baseType: !7, size: 32, offset: 448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1138, file: !1109, line: 458, baseType: !403, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1138, file: !1109, line: 459, baseType: !403, size: 64, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1138, file: !1109, line: 460, baseType: !403, size: 64, offset: 640)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1138, file: !1109, line: 461, baseType: !403, size: 64, offset: 704)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1138, file: !1109, line: 463, baseType: !403, size: 64, offset: 768)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1138, file: !1109, line: 465, baseType: !1154, offset: 832)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1109, line: 415, elements: !327)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1108, file: !1109, line: 693, baseType: !1156, size: 384, offset: 1408)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1109, line: 489, size: 384, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163, !1164}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1156, file: !1109, line: 490, baseType: !329, size: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1156, file: !1109, line: 491, baseType: !178, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1156, file: !1109, line: 492, baseType: !178, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1156, file: !1109, line: 493, baseType: !7, size: 32, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1156, file: !1109, line: 494, baseType: !112, size: 16, offset: 288)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1156, file: !1109, line: 495, baseType: !112, size: 16, offset: 304)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1156, file: !1109, line: 497, baseType: !1165, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1108, file: !1109, line: 697, baseType: !1167, size: 1792, offset: 1792)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1109, line: 507, size: 1792, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1247, !1248}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1167, file: !1109, line: 508, baseType: !748, size: 192, align: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1167, file: !1109, line: 515, baseType: !403, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1167, file: !1109, line: 516, baseType: !403, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1167, file: !1109, line: 517, baseType: !403, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1167, file: !1109, line: 518, baseType: !403, size: 64, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1167, file: !1109, line: 519, baseType: !403, size: 64, offset: 448)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1167, file: !1109, line: 526, baseType: !309, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1167, file: !1109, line: 527, baseType: !403, size: 64, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1167, file: !1109, line: 528, baseType: !7, size: 32, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1167, file: !1109, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1167, file: !1109, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1167, file: !1109, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1167, file: !1109, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1167, file: !1109, line: 563, baseType: !1183, size: 512, offset: 704)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1184)
!1184 = !{!1185, !1193, !1194, !1199, !1242, !1244, !1245, !1246}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1183, file: !14, line: 119, baseType: !1186, size: 256)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1187, line: 9, size: 256, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1186, file: !1187, line: 10, baseType: !748, size: 192, align: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1186, file: !1187, line: 11, baseType: !1191, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1192, line: 29, baseType: !309)
!1192 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1183, file: !14, line: 120, baseType: !1191, size: 64, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1183, file: !14, line: 121, baseType: !1195, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!13, !1198}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1183, file: !14, line: 122, baseType: !1200, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1202)
!1202 = !{!1203, !1223, !1224, !1227, !1232, !1233, !1237, !1241}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1201, file: !14, line: 160, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1205, file: !14, line: 215, baseType: !761)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1205, file: !14, line: 216, baseType: !7, size: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1205, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1205, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1205, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1205, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1205, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1205, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1205, file: !14, line: 233, baseType: !1191, size: 64, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1205, file: !14, line: 234, baseType: !1198, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1205, file: !14, line: 235, baseType: !1191, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1205, file: !14, line: 236, baseType: !1198, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1205, file: !14, line: 237, baseType: !1220, size: 4096, offset: 512)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1201, size: 4096, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 8)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1201, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1201, file: !14, line: 162, baseType: !1225, size: 32, offset: 96)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !94, line: 27, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !424, line: 96, baseType: !180)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1201, file: !14, line: 163, baseType: !1228, size: 32, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !374, line: 276, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !374, line: 276, size: 32, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1229, file: !374, line: 276, baseType: !378, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1201, file: !14, line: 164, baseType: !1198, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1201, file: !14, line: 165, baseType: !1234, size: 128, offset: 256)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1187, line: 14, size: 128, elements: !1235)
!1235 = !{!1236}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1234, file: !1187, line: 15, baseType: !740, size: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1201, file: !14, line: 166, baseType: !1238, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1191}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1201, file: !14, line: 167, baseType: !1191, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1183, file: !14, line: 123, baseType: !1243, size: 8, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !206, line: 17, baseType: !255)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1183, file: !14, line: 124, baseType: !1243, size: 8, offset: 456)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1183, file: !14, line: 125, baseType: !1243, size: 8, offset: 464)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1183, file: !14, line: 126, baseType: !1243, size: 8, offset: 472)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1167, file: !1109, line: 572, baseType: !1183, size: 512, offset: 1216)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1167, file: !1109, line: 580, baseType: !1249, size: 64, offset: 1728)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1108, file: !1109, line: 721, baseType: !7, size: 32, offset: 3584)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1108, file: !1109, line: 722, baseType: !180, size: 32, offset: 3616)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1108, file: !1109, line: 723, baseType: !1253, size: 64, offset: 3648)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1256, line: 17, baseType: !1257)
!1256 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1256, line: 17, size: 64, elements: !1258)
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1257, file: !1256, line: 17, baseType: !226, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1108, file: !1109, line: 724, baseType: !1255, size: 64, offset: 3712)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1108, file: !1109, line: 749, baseType: !1262, offset: 3776)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1109, line: 290, elements: !327)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1108, file: !1109, line: 751, baseType: !329, size: 128, offset: 3776)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1108, file: !1109, line: 757, baseType: !953, size: 64, offset: 3904)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1108, file: !1109, line: 758, baseType: !953, size: 64, offset: 3968)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1108, file: !1109, line: 761, baseType: !1267, size: 320, offset: 4032)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1050, line: 34, size: 320, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1267, file: !1050, line: 35, baseType: !403, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1267, file: !1050, line: 36, baseType: !1271, size: 256, offset: 64)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 256, elements: !1054)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1108, file: !1109, line: 766, baseType: !180, size: 32, offset: 4352)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1108, file: !1109, line: 767, baseType: !180, size: 32, offset: 4384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1108, file: !1109, line: 768, baseType: !180, size: 32, offset: 4416)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1108, file: !1109, line: 770, baseType: !180, size: 32, offset: 4448)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1108, file: !1109, line: 772, baseType: !178, size: 64, offset: 4480)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1108, file: !1109, line: 775, baseType: !7, size: 32, offset: 4544)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1108, file: !1109, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1108, file: !1109, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1108, file: !1109, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1108, file: !1109, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1108, file: !1109, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1108, file: !1109, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1108, file: !1109, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1108, file: !1109, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1108, file: !1109, line: 831, baseType: !178, size: 64, offset: 4672)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1108, file: !1109, line: 833, baseType: !1288, size: 384, offset: 4736)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1289)
!1289 = !{!1290, !1295}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1288, file: !19, line: 26, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!524, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !19, line: 27, baseType: !1296, size: 320, offset: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !19, line: 27, size: 320, elements: !1297)
!1297 = !{!1298, !1308, !1335}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1296, file: !19, line: 36, baseType: !1299, size: 320)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1296, file: !19, line: 29, size: 320, elements: !1300)
!1300 = !{!1301, !1303, !1304, !1305, !1306, !1307}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1299, file: !19, line: 30, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1299, file: !19, line: 31, baseType: !205, size: 32, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !19, line: 32, baseType: !205, size: 32, offset: 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1299, file: !19, line: 33, baseType: !205, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1299, file: !19, line: 34, baseType: !403, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1299, file: !19, line: 35, baseType: !1302, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1296, file: !19, line: 46, baseType: !1309, size: 192)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1296, file: !19, line: 38, size: 192, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1334}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1309, file: !19, line: 39, baseType: !1225, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1309, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !19, line: 41, baseType: !1314, size: 64, offset: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !19, line: 41, size: 64, elements: !1315)
!1315 = !{!1316, !1324}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1314, file: !19, line: 42, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1319, line: 7, size: 128, elements: !1320)
!1319 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1320 = !{!1321, !1323}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1318, file: !1319, line: 8, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !424, line: 93, baseType: !311)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1318, file: !1319, line: 9, baseType: !311, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1314, file: !19, line: 43, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1327, line: 7, size: 64, elements: !1328)
!1327 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1328 = !{!1329, !1333}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1326, file: !1327, line: 8, baseType: !1330, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1327, line: 5, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !206, line: 20, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !111, line: 26, baseType: !180)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1326, file: !1327, line: 9, baseType: !1331, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1309, file: !19, line: 45, baseType: !403, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1296, file: !19, line: 54, baseType: !1336, size: 256)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1296, file: !19, line: 48, size: 256, elements: !1337)
!1337 = !{!1338, !1341, !1342, !1343, !1344}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1336, file: !19, line: 49, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1336, file: !19, line: 50, baseType: !180, size: 32, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1336, file: !19, line: 51, baseType: !180, size: 32, offset: 96)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1336, file: !19, line: 52, baseType: !178, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1336, file: !19, line: 53, baseType: !178, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1108, file: !1109, line: 835, baseType: !1346, size: 32, offset: 5120)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !94, line: 22, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !424, line: 28, baseType: !180)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1108, file: !1109, line: 836, baseType: !1346, size: 32, offset: 5152)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1108, file: !1109, line: 840, baseType: !178, size: 64, offset: 5184)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1108, file: !1109, line: 849, baseType: !1107, size: 64, offset: 5248)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1108, file: !1109, line: 852, baseType: !1107, size: 64, offset: 5312)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1108, file: !1109, line: 857, baseType: !329, size: 128, offset: 5376)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1108, file: !1109, line: 858, baseType: !329, size: 128, offset: 5504)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1108, file: !1109, line: 859, baseType: !1107, size: 64, offset: 5632)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1108, file: !1109, line: 867, baseType: !329, size: 128, offset: 5696)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1108, file: !1109, line: 868, baseType: !329, size: 128, offset: 5824)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1108, file: !1109, line: 871, baseType: !1358, size: 64, offset: 5952)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1366, !1367, !1374, !1375}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1359, file: !40, line: 61, baseType: !1121, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1359, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1359, file: !40, line: 63, baseType: !313, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1359, file: !40, line: 65, baseType: !1365, size: 256, offset: 64)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !627, size: 256, elements: !1054)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1359, file: !40, line: 66, baseType: !627, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1359, file: !40, line: 68, baseType: !1368, size: 128, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1369, line: 40, baseType: !1370)
!1369 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1369, line: 36, size: 128, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1370, file: !1369, line: 37, baseType: !313)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1370, file: !1369, line: 38, baseType: !329, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1359, file: !40, line: 69, baseType: !351, size: 128, align: 64, offset: 512)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1359, file: !40, line: 70, baseType: !1376, size: 128, offset: 640)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 128, elements: !227)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1377, file: !40, line: 55, baseType: !180, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1377, file: !40, line: 56, baseType: !1381, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1108, file: !1109, line: 872, baseType: !1384, size: 512, offset: 6016)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 512, elements: !1054)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1108, file: !1109, line: 873, baseType: !329, size: 128, offset: 6528)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1108, file: !1109, line: 874, baseType: !329, size: 128, offset: 6656)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1108, file: !1109, line: 876, baseType: !1388, size: 64, offset: 6784)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1390, line: 26, size: 192, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1389, file: !1390, line: 27, baseType: !7, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1389, file: !1390, line: 28, baseType: !1394, size: 128, offset: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1395, line: 43, size: 128, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1394, file: !1395, line: 44, baseType: !761)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1394, file: !1395, line: 45, baseType: !329, size: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1108, file: !1109, line: 879, baseType: !693, size: 64, offset: 6848)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1108, file: !1109, line: 882, baseType: !693, size: 64, offset: 6912)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1108, file: !1109, line: 884, baseType: !403, size: 64, offset: 6976)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1108, file: !1109, line: 885, baseType: !403, size: 64, offset: 7040)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1108, file: !1109, line: 890, baseType: !403, size: 64, offset: 7104)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1108, file: !1109, line: 891, baseType: !1405, size: 128, offset: 7168)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1109, line: 242, size: 128, elements: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1405, file: !1109, line: 244, baseType: !403, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1405, file: !1109, line: 245, baseType: !403, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1405, file: !1109, line: 246, baseType: !761, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1108, file: !1109, line: 900, baseType: !178, size: 64, offset: 7296)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1108, file: !1109, line: 901, baseType: !178, size: 64, offset: 7360)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1108, file: !1109, line: 904, baseType: !403, size: 64, offset: 7424)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1108, file: !1109, line: 907, baseType: !403, size: 64, offset: 7488)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1108, file: !1109, line: 910, baseType: !178, size: 64, offset: 7552)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1108, file: !1109, line: 911, baseType: !178, size: 64, offset: 7616)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1108, file: !1109, line: 914, baseType: !1417, size: 640, offset: 7680)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1418, line: 123, size: 640, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1419 = !{!1420, !1426, !1427}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1417, file: !1418, line: 124, baseType: !1421, size: 576)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 576, elements: !637)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1418, line: 108, size: 192, elements: !1423)
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1422, file: !1418, line: 109, baseType: !403, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1422, file: !1418, line: 110, baseType: !1234, size: 128, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1417, file: !1418, line: 125, baseType: !7, size: 32, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1417, file: !1418, line: 126, baseType: !7, size: 32, offset: 608)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1108, file: !1109, line: 917, baseType: !1429, size: 192, offset: 8320)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1418, line: 134, size: 192, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1429, file: !1418, line: 135, baseType: !351, size: 128, align: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1429, file: !1418, line: 136, baseType: !7, size: 32, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1108, file: !1109, line: 923, baseType: !1434, size: 64, offset: 8512)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1437, line: 111, size: 1280, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1456, !1457, !1458, !1459, !1460, !1461, !1568, !1569, !1570, !1571, !1597, !1600, !1610}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1436, file: !1437, line: 112, baseType: !735, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1436, file: !1437, line: 120, baseType: !417, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1436, file: !1437, line: 121, baseType: !426, size: 32, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1436, file: !1437, line: 122, baseType: !417, size: 32, offset: 96)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1436, file: !1437, line: 123, baseType: !426, size: 32, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1436, file: !1437, line: 124, baseType: !417, size: 32, offset: 160)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1436, file: !1437, line: 125, baseType: !426, size: 32, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1436, file: !1437, line: 126, baseType: !417, size: 32, offset: 224)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1436, file: !1437, line: 127, baseType: !426, size: 32, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1436, file: !1437, line: 128, baseType: !7, size: 32, offset: 288)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1436, file: !1437, line: 129, baseType: !1450, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1451, line: 26, baseType: !1452)
!1451 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1451, line: 24, size: 64, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1452, file: !1451, line: 25, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 64, elements: !170)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1436, file: !1437, line: 130, baseType: !1450, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1436, file: !1437, line: 131, baseType: !1450, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1436, file: !1437, line: 132, baseType: !1450, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1436, file: !1437, line: 133, baseType: !1450, size: 64, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1436, file: !1437, line: 135, baseType: !256, size: 8, offset: 640)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1436, file: !1437, line: 137, baseType: !1462, size: 64, offset: 704)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1464, line: 189, size: 1664, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1467, !1470, !1475, !1476, !1479, !1480, !1485, !1486, !1487, !1488, !1490, !1491, !1492, !1493, !1494, !1532, !1553}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1463, file: !1464, line: 190, baseType: !1121, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1463, file: !1464, line: 191, baseType: !1468, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1464, line: 28, baseType: !1469)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !94, line: 98, baseType: !1331)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1464, line: 192, baseType: !1471, size: 192, offset: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1463, file: !1464, line: 192, size: 192, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1471, file: !1464, line: 193, baseType: !329, size: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1471, file: !1464, line: 194, baseType: !748, size: 192, align: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1463, file: !1464, line: 199, baseType: !755, size: 256, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1463, file: !1464, line: 200, baseType: !1477, size: 64, offset: 512)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1464, line: 200, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1463, file: !1464, line: 201, baseType: !95, size: 64, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1464, line: 202, baseType: !1481, size: 64, offset: 640)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1463, file: !1464, line: 202, size: 64, elements: !1482)
!1482 = !{!1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1481, file: !1464, line: 203, baseType: !522, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1481, file: !1464, line: 204, baseType: !522, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1463, file: !1464, line: 206, baseType: !522, size: 64, offset: 704)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1463, file: !1464, line: 207, baseType: !417, size: 32, offset: 768)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1463, file: !1464, line: 208, baseType: !426, size: 32, offset: 800)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1463, file: !1464, line: 209, baseType: !1489, size: 32, offset: 832)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1464, line: 31, baseType: !542)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1463, file: !1464, line: 210, baseType: !112, size: 16, offset: 864)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1463, file: !1464, line: 211, baseType: !112, size: 16, offset: 880)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1463, file: !1464, line: 215, baseType: !115, size: 16, offset: 896)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1463, file: !1464, line: 222, baseType: !178, size: 64, offset: 960)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1464, line: 239, baseType: !1495, size: 320, offset: 1024)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1463, file: !1464, line: 239, size: 320, elements: !1496)
!1496 = !{!1497, !1524}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1495, file: !1464, line: 240, baseType: !1498, size: 320)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1464, line: 108, size: 320, elements: !1499)
!1499 = !{!1500, !1501, !1513, !1516, !1523}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1498, file: !1464, line: 110, baseType: !178, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1464, line: 111, baseType: !1502, size: 64, offset: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1464, line: 111, size: 64, elements: !1503)
!1503 = !{!1504, !1512}
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1502, file: !1464, line: 112, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1502, file: !1464, line: 112, size: 64, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1505, file: !1464, line: 114, baseType: !290, size: 16)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1505, file: !1464, line: 115, baseType: !1509, size: 48, offset: 16)
!1509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 48, elements: !1510)
!1510 = !{!1511}
!1511 = !DISubrange(count: 6)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1502, file: !1464, line: 121, baseType: !178, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1498, file: !1464, line: 123, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1464, line: 96, flags: DIFlagFwdDecl)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1498, file: !1464, line: 124, baseType: !1517, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1464, line: 102, size: 192, elements: !1519)
!1519 = !{!1520, !1521, !1522}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1518, file: !1464, line: 103, baseType: !351, size: 128, align: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1518, file: !1464, line: 104, baseType: !1121, size: 32, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1518, file: !1464, line: 105, baseType: !474, size: 8, offset: 160)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1498, file: !1464, line: 125, baseType: !213, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !1464, line: 241, baseType: !1525, size: 320)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1495, file: !1464, line: 241, size: 320, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1525, file: !1464, line: 242, baseType: !178, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1525, file: !1464, line: 243, baseType: !178, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1525, file: !1464, line: 244, baseType: !1514, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1525, file: !1464, line: 245, baseType: !1517, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1525, file: !1464, line: 246, baseType: !469, size: 64, offset: 256)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1463, file: !1464, line: 254, baseType: !1533, size: 256, offset: 1344)
!1533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1463, file: !1464, line: 254, size: 256, elements: !1534)
!1534 = !{!1535, !1541}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1533, file: !1464, line: 255, baseType: !1536, size: 256)
!1536 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1464, line: 128, size: 256, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1536, file: !1464, line: 129, baseType: !95, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1536, file: !1464, line: 130, baseType: !1540, size: 256)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !1054)
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1464, line: 256, baseType: !1542, size: 256)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1533, file: !1464, line: 256, size: 256, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1542, file: !1464, line: 258, baseType: !329, size: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1542, file: !1464, line: 259, baseType: !1546, size: 128, offset: 128)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1547, line: 22, size: 128, elements: !1548)
!1547 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1548 = !{!1549, !1552}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1546, file: !1547, line: 23, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1547, line: 23, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1546, file: !1547, line: 24, baseType: !178, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1463, file: !1464, line: 274, baseType: !1554, size: 64, offset: 1600)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1464, line: 170, size: 192, elements: !1556)
!1556 = !{!1557, !1566, !1567}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1555, file: !1464, line: 171, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1464, line: 165, baseType: !1559)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!180, !1462, !1562, !1564, !1462}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1555, file: !1464, line: 172, baseType: !1462, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1555, file: !1464, line: 173, baseType: !1514, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1436, file: !1437, line: 138, baseType: !1462, size: 64, offset: 768)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1436, file: !1437, line: 139, baseType: !1462, size: 64, offset: 832)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1436, file: !1437, line: 140, baseType: !1462, size: 64, offset: 896)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1436, file: !1437, line: 145, baseType: !1572, size: 64, offset: 960)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1574, line: 13, size: 896, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1573, file: !1574, line: 14, baseType: !1121, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1573, file: !1574, line: 15, baseType: !735, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1573, file: !1574, line: 16, baseType: !735, size: 32, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1573, file: !1574, line: 21, baseType: !303, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1573, file: !1574, line: 27, baseType: !178, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1573, file: !1574, line: 28, baseType: !178, size: 64, offset: 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1573, file: !1574, line: 29, baseType: !303, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1573, file: !1574, line: 32, baseType: !192, size: 128, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1573, file: !1574, line: 33, baseType: !417, size: 32, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1573, file: !1574, line: 37, baseType: !303, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1573, file: !1574, line: 44, baseType: !1587, size: 256, offset: 640)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1588, line: 15, size: 256, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1587, file: !1588, line: 16, baseType: !761)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1587, file: !1588, line: 18, baseType: !180, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1587, file: !1588, line: 19, baseType: !180, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1587, file: !1588, line: 20, baseType: !180, size: 32, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1587, file: !1588, line: 21, baseType: !180, size: 32, offset: 96)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1587, file: !1588, line: 22, baseType: !178, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1587, file: !1588, line: 23, baseType: !178, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1436, file: !1437, line: 146, baseType: !1598, size: 64, offset: 1024)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !711, line: 516, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1436, file: !1437, line: 147, baseType: !1601, size: 64, offset: 1088)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1437, line: 25, size: 64, elements: !1603)
!1603 = !{!1604, !1605, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1602, file: !1437, line: 26, baseType: !735, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1602, file: !1437, line: 27, baseType: !180, size: 32, offset: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1602, file: !1437, line: 28, baseType: !1607, offset: 64)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, elements: !1608)
!1608 = !{!1609}
!1609 = !DISubrange(count: 0)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1436, file: !1437, line: 149, baseType: !1611, size: 128, offset: 1152)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1436, file: !1437, line: 149, size: 128, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1611, file: !1437, line: 150, baseType: !180, size: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1611, file: !1437, line: 151, baseType: !351, size: 128, align: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1108, file: !1109, line: 926, baseType: !1434, size: 64, offset: 8576)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1108, file: !1109, line: 929, baseType: !1434, size: 64, offset: 8640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1108, file: !1109, line: 933, baseType: !1462, size: 64, offset: 8704)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1108, file: !1109, line: 943, baseType: !1619, size: 128, offset: 8768)
!1619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !184)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1108, file: !1109, line: 945, baseType: !1621, size: 64, offset: 8896)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1109, line: 49, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1108, file: !1109, line: 956, baseType: !1624, size: 64, offset: 8960)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1109, line: 45, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1108, file: !1109, line: 959, baseType: !1627, size: 64, offset: 9024)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1109, line: 959, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1108, file: !1109, line: 962, baseType: !1630, size: 64, offset: 9088)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1109, line: 66, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1108, file: !1109, line: 966, baseType: !1633, size: 64, offset: 9152)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1109, line: 50, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1108, file: !1109, line: 969, baseType: !1636, size: 64, offset: 9216)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1638, line: 82, size: 7296, elements: !1639)
!1638 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1639 = !{!1640, !1641, !1642, !1643, !1644, !1645, !1646, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1675, !1684, !1685, !1687, !1688, !1689, !1692, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1722, !1723, !1730, !1731, !1732, !1733, !1734, !1735}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1637, file: !1638, line: 83, baseType: !1121, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1637, file: !1638, line: 84, baseType: !735, size: 32, offset: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1637, file: !1638, line: 85, baseType: !180, size: 32, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1637, file: !1638, line: 86, baseType: !329, size: 128, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1637, file: !1638, line: 88, baseType: !1368, size: 128, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1637, file: !1638, line: 91, baseType: !1107, size: 64, offset: 384)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1637, file: !1638, line: 94, baseType: !1647, size: 192, offset: 448)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1648, line: 30, size: 192, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1647, file: !1648, line: 31, baseType: !329, size: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1647, file: !1648, line: 32, baseType: !1652, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1653, line: 25, baseType: !1654)
!1653 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1653, line: 23, size: 64, elements: !1655)
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1654, file: !1653, line: 24, baseType: !226, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1637, file: !1638, line: 97, baseType: !627, size: 64, offset: 640)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1637, file: !1638, line: 100, baseType: !180, size: 32, offset: 704)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1637, file: !1638, line: 106, baseType: !180, size: 32, offset: 736)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1637, file: !1638, line: 107, baseType: !1107, size: 64, offset: 768)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1637, file: !1638, line: 110, baseType: !180, size: 32, offset: 832)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1637, file: !1638, line: 111, baseType: !7, size: 32, offset: 864)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1637, file: !1638, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1637, file: !1638, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1637, file: !1638, line: 128, baseType: !180, size: 32, offset: 928)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1637, file: !1638, line: 129, baseType: !329, size: 128, offset: 960)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1637, file: !1638, line: 132, baseType: !1183, size: 512, offset: 1088)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1637, file: !1638, line: 133, baseType: !1191, size: 64, offset: 1600)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1637, file: !1638, line: 140, baseType: !1670, size: 256, offset: 1664)
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1671, size: 256, elements: !170)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1638, line: 38, size: 128, elements: !1672)
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1671, file: !1638, line: 39, baseType: !403, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1671, file: !1638, line: 40, baseType: !403, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1637, file: !1638, line: 146, baseType: !1676, size: 192, offset: 1920)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1638, line: 66, size: 192, elements: !1677)
!1677 = !{!1678}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1676, file: !1638, line: 67, baseType: !1679, size: 192)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1638, line: 47, size: 192, elements: !1680)
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1679, file: !1638, line: 48, baseType: !305, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1679, file: !1638, line: 49, baseType: !305, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1679, file: !1638, line: 50, baseType: !305, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1637, file: !1638, line: 150, baseType: !1417, size: 640, offset: 2112)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1637, file: !1638, line: 153, baseType: !1686, size: 256, offset: 2752)
!1686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1358, size: 256, elements: !1054)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1637, file: !1638, line: 159, baseType: !1358, size: 64, offset: 3008)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1637, file: !1638, line: 162, baseType: !180, size: 32, offset: 3072)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1637, file: !1638, line: 164, baseType: !1690, size: 64, offset: 3136)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1638, line: 164, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1637, file: !1638, line: 175, baseType: !1693, size: 32, offset: 3200)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !374, line: 805, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 798, size: 32, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1694, file: !374, line: 803, baseType: !373, size: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1694, file: !374, line: 804, baseType: !313, offset: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1637, file: !1638, line: 176, baseType: !403, size: 64, offset: 3264)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1637, file: !1638, line: 176, baseType: !403, size: 64, offset: 3328)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1637, file: !1638, line: 176, baseType: !403, size: 64, offset: 3392)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1637, file: !1638, line: 176, baseType: !403, size: 64, offset: 3456)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1637, file: !1638, line: 177, baseType: !403, size: 64, offset: 3520)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1637, file: !1638, line: 178, baseType: !403, size: 64, offset: 3584)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1637, file: !1638, line: 179, baseType: !1405, size: 128, offset: 3648)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1637, file: !1638, line: 180, baseType: !178, size: 64, offset: 3776)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1637, file: !1638, line: 180, baseType: !178, size: 64, offset: 3840)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1637, file: !1638, line: 180, baseType: !178, size: 64, offset: 3904)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1637, file: !1638, line: 180, baseType: !178, size: 64, offset: 3968)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1637, file: !1638, line: 181, baseType: !178, size: 64, offset: 4032)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1637, file: !1638, line: 181, baseType: !178, size: 64, offset: 4096)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1637, file: !1638, line: 181, baseType: !178, size: 64, offset: 4160)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1637, file: !1638, line: 181, baseType: !178, size: 64, offset: 4224)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1637, file: !1638, line: 182, baseType: !178, size: 64, offset: 4288)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1637, file: !1638, line: 182, baseType: !178, size: 64, offset: 4352)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1637, file: !1638, line: 182, baseType: !178, size: 64, offset: 4416)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1637, file: !1638, line: 182, baseType: !178, size: 64, offset: 4480)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1637, file: !1638, line: 183, baseType: !178, size: 64, offset: 4544)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1637, file: !1638, line: 183, baseType: !178, size: 64, offset: 4608)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1637, file: !1638, line: 184, baseType: !1720, offset: 4672)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1721, line: 12, elements: !327)
!1721 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1637, file: !1638, line: 192, baseType: !405, size: 64, offset: 4672)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1637, file: !1638, line: 203, baseType: !1724, size: 2048, offset: 4736)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1725, size: 2048, elements: !184)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1726, line: 43, size: 128, elements: !1727)
!1726 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1727 = !{!1728, !1729}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1725, file: !1726, line: 44, baseType: !566, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1725, file: !1726, line: 45, baseType: !566, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1637, file: !1638, line: 220, baseType: !474, size: 8, offset: 6784)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1637, file: !1638, line: 221, baseType: !115, size: 16, offset: 6800)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1637, file: !1638, line: 222, baseType: !115, size: 16, offset: 6816)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1637, file: !1638, line: 224, baseType: !953, size: 64, offset: 6848)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1637, file: !1638, line: 227, baseType: !299, size: 192, offset: 6912)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1637, file: !1638, line: 233, baseType: !299, size: 192, offset: 7104)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1108, file: !1109, line: 970, baseType: !1737, size: 64, offset: 9280)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1638, line: 20, size: 16576, elements: !1739)
!1739 = !{!1740, !1741, !1742, !1743}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1738, file: !1638, line: 21, baseType: !313)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1738, file: !1638, line: 22, baseType: !1121, size: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1738, file: !1638, line: 23, baseType: !1368, size: 128, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1738, file: !1638, line: 24, baseType: !1744, size: 16384, offset: 192)
!1744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1745, size: 16384, elements: !1765)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1648, line: 49, size: 256, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1745, file: !1648, line: 50, baseType: !1748, size: 256)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1648, line: 35, size: 256, elements: !1749)
!1749 = !{!1750, !1757, !1758, !1764}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1748, file: !1648, line: 37, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1752, line: 19, baseType: !1753)
!1752 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1752, line: 18, baseType: !1755)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !180}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1748, file: !1648, line: 38, baseType: !178, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1748, file: !1648, line: 44, baseType: !1759, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1752, line: 22, baseType: !1760)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1752, line: 21, baseType: !1762)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1748, file: !1648, line: 46, baseType: !1652, size: 64, offset: 192)
!1765 = !{!1766}
!1766 = !DISubrange(count: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1108, file: !1109, line: 971, baseType: !1652, size: 64, offset: 9344)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1108, file: !1109, line: 972, baseType: !1652, size: 64, offset: 9408)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1108, file: !1109, line: 974, baseType: !1652, size: 64, offset: 9472)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1108, file: !1109, line: 975, baseType: !1647, size: 192, offset: 9536)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1108, file: !1109, line: 976, baseType: !178, size: 64, offset: 9728)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1108, file: !1109, line: 977, baseType: !564, size: 64, offset: 9792)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1108, file: !1109, line: 978, baseType: !7, size: 32, offset: 9856)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1108, file: !1109, line: 980, baseType: !354, size: 64, offset: 9920)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1108, file: !1109, line: 989, baseType: !1776, size: 128, offset: 9984)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1777, line: 35, size: 128, elements: !1778)
!1777 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1778 = !{!1779, !1780, !1781}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1776, file: !1777, line: 36, baseType: !180, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1776, file: !1777, line: 37, baseType: !735, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1776, file: !1777, line: 38, baseType: !1782, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1777, line: 23, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1108, file: !1109, line: 992, baseType: !403, size: 64, offset: 10112)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1108, file: !1109, line: 993, baseType: !403, size: 64, offset: 10176)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1108, file: !1109, line: 996, baseType: !313, offset: 10240)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1108, file: !1109, line: 999, baseType: !761, offset: 10240)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1108, file: !1109, line: 1001, baseType: !1789, size: 64, offset: 10240)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1109, line: 636, size: 64, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1789, file: !1109, line: 637, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1108, file: !1109, line: 1005, baseType: !740, size: 128, offset: 10304)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1108, file: !1109, line: 1007, baseType: !1107, size: 64, offset: 10432)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1108, file: !1109, line: 1009, baseType: !1796, size: 64, offset: 10496)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1109, line: 1009, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1108, file: !1109, line: 1043, baseType: !95, size: 64, offset: 10560)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1108, file: !1109, line: 1046, baseType: !1800, size: 64, offset: 10624)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1109, line: 41, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1108, file: !1109, line: 1050, baseType: !1803, size: 64, offset: 10688)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1109, line: 42, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1108, file: !1109, line: 1054, baseType: !1806, size: 64, offset: 10752)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1109, line: 55, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1108, file: !1109, line: 1056, baseType: !1809, size: 64, offset: 10816)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1109, line: 40, flags: DIFlagFwdDecl)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1108, file: !1109, line: 1058, baseType: !1812, size: 64, offset: 10880)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1814, line: 99, size: 704, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !{!1816, !1817, !1818, !1819, !1820, !1821, !1822, !1841, !1842}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1813, file: !1814, line: 100, baseType: !303, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1813, file: !1814, line: 101, baseType: !735, size: 32, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1813, file: !1814, line: 102, baseType: !735, size: 32, offset: 96)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1813, file: !1814, line: 105, baseType: !313, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1813, file: !1814, line: 107, baseType: !112, size: 16, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1813, file: !1814, line: 109, baseType: !727, size: 128, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1813, file: !1814, line: 110, baseType: !1823, size: 64, offset: 320)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1814, line: 73, size: 448, elements: !1825)
!1825 = !{!1826, !1829, !1830, !1835, !1840}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1824, file: !1814, line: 74, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1814, line: 74, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1824, file: !1814, line: 75, baseType: !1812, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !1814, line: 83, baseType: !1831, size: 128, offset: 128)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !1814, line: 83, size: 128, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1831, file: !1814, line: 84, baseType: !329, size: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1831, file: !1814, line: 85, baseType: !914, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !1814, line: 87, baseType: !1836, size: 128, offset: 256)
!1836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !1814, line: 87, size: 128, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1836, file: !1814, line: 88, baseType: !192, size: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1836, file: !1814, line: 89, baseType: !351, size: 128, align: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1824, file: !1814, line: 92, baseType: !7, size: 32, offset: 384)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1813, file: !1814, line: 111, baseType: !627, size: 64, offset: 384)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1813, file: !1814, line: 113, baseType: !1843, size: 256, offset: 448)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1844, line: 102, size: 256, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1845 = !{!1846, !1847, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1843, file: !1844, line: 103, baseType: !303, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1843, file: !1844, line: 104, baseType: !329, size: 128, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1843, file: !1844, line: 105, baseType: !1849, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1844, line: 21, baseType: !1850)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{null, !1853}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1108, file: !1109, line: 1061, baseType: !1855, size: 64, offset: 10944)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1109, line: 43, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1108, file: !1109, line: 1064, baseType: !178, size: 64, offset: 11008)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1108, file: !1109, line: 1065, baseType: !1859, size: 64, offset: 11072)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1648, line: 14, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1648, line: 12, size: 384, elements: !1862)
!1862 = !{!1863}
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1861, file: !1648, line: 13, baseType: !1864, size: 384)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1861, file: !1648, line: 13, size: 384, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1864, file: !1648, line: 13, baseType: !180, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1864, file: !1648, line: 13, baseType: !180, size: 32, offset: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1864, file: !1648, line: 13, baseType: !180, size: 32, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1864, file: !1648, line: 13, baseType: !1870, size: 256, offset: 128)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1871, line: 32, size: 256, elements: !1872)
!1871 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1872 = !{!1873, !1878, !1891, !1897, !1906, !1926, !1931}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1870, file: !1871, line: 37, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !1871, line: 34, size: 64, elements: !1875)
!1875 = !{!1876, !1877}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1874, file: !1871, line: 35, baseType: !1347, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1874, file: !1871, line: 36, baseType: !423, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1870, file: !1871, line: 45, baseType: !1879, size: 192)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !1871, line: 40, size: 192, elements: !1880)
!1880 = !{!1881, !1883, !1884, !1890}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1879, file: !1871, line: 41, baseType: !1882, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !424, line: 95, baseType: !180)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1879, file: !1871, line: 42, baseType: !180, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1879, file: !1871, line: 43, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1871, line: 11, baseType: !1886)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1871, line: 8, size: 64, elements: !1887)
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1886, file: !1871, line: 9, baseType: !180, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1886, file: !1871, line: 10, baseType: !95, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1879, file: !1871, line: 44, baseType: !180, size: 32, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1870, file: !1871, line: 52, baseType: !1892, size: 128)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !1871, line: 48, size: 128, elements: !1893)
!1893 = !{!1894, !1895, !1896}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1892, file: !1871, line: 49, baseType: !1347, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1892, file: !1871, line: 50, baseType: !423, size: 32, offset: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1892, file: !1871, line: 51, baseType: !1885, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1870, file: !1871, line: 61, baseType: !1898, size: 256)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !1871, line: 55, size: 256, elements: !1899)
!1899 = !{!1900, !1901, !1902, !1903, !1905}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1898, file: !1871, line: 56, baseType: !1347, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1898, file: !1871, line: 57, baseType: !423, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1898, file: !1871, line: 58, baseType: !180, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1898, file: !1871, line: 59, baseType: !1904, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !424, line: 94, baseType: !563)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1898, file: !1871, line: 60, baseType: !1904, size: 64, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1870, file: !1871, line: 95, baseType: !1907, size: 256)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !1871, line: 64, size: 256, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1907, file: !1871, line: 65, baseType: !95, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, scope: !1907, file: !1871, line: 77, baseType: !1911, size: 192, offset: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1907, file: !1871, line: 77, size: 192, elements: !1912)
!1912 = !{!1913, !1914, !1921}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1911, file: !1871, line: 82, baseType: !115, size: 16)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1911, file: !1871, line: 88, baseType: !1915, size: 192)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1911, file: !1871, line: 84, size: 192, elements: !1916)
!1916 = !{!1917, !1919, !1920}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1915, file: !1871, line: 85, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 64, elements: !1221)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1915, file: !1871, line: 86, baseType: !95, size: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1915, file: !1871, line: 87, baseType: !95, size: 64, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1911, file: !1871, line: 93, baseType: !1922, size: 96)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1911, file: !1871, line: 90, size: 96, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1922, file: !1871, line: 91, baseType: !1918, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1922, file: !1871, line: 92, baseType: !157, size: 32, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1870, file: !1871, line: 101, baseType: !1927, size: 128)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !1871, line: 98, size: 128, elements: !1928)
!1928 = !{!1929, !1930}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1927, file: !1871, line: 99, baseType: !524, size: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1927, file: !1871, line: 100, baseType: !180, size: 32, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1870, file: !1871, line: 108, baseType: !1932, size: 128)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !1871, line: 104, size: 128, elements: !1933)
!1933 = !{!1934, !1935, !1936}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1932, file: !1871, line: 105, baseType: !95, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1932, file: !1871, line: 106, baseType: !180, size: 32, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1932, file: !1871, line: 107, baseType: !7, size: 32, offset: 96)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1108, file: !1109, line: 1067, baseType: !1720, offset: 11136)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1108, file: !1109, line: 1099, baseType: !1939, size: 64, offset: 11136)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1109, line: 56, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1108, file: !1109, line: 1103, baseType: !329, size: 128, offset: 11200)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1108, file: !1109, line: 1104, baseType: !1943, size: 64, offset: 11328)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1109, line: 46, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1108, file: !1109, line: 1105, baseType: !299, size: 192, offset: 11392)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1108, file: !1109, line: 1106, baseType: !7, size: 32, offset: 11584)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1108, file: !1109, line: 1109, baseType: !1948, size: 128, offset: 11648)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1949, size: 128, elements: !170)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1109, line: 51, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1108, file: !1109, line: 1110, baseType: !299, size: 192, offset: 11776)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1108, file: !1109, line: 1111, baseType: !329, size: 128, offset: 11968)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1108, file: !1109, line: 1173, baseType: !1954, size: 64, offset: 12096)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1956, line: 62, size: 256, align: 256, elements: !1957)
!1956 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1957 = !{!1958, !1959, !1960, !1965}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1955, file: !1956, line: 75, baseType: !157, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1955, file: !1956, line: 90, baseType: !157, size: 32, offset: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1955, file: !1956, line: 124, baseType: !1961, size: 64, offset: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1955, file: !1956, line: 109, size: 64, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1961, file: !1956, line: 110, baseType: !404, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1961, file: !1956, line: 112, baseType: !404, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1955, file: !1956, line: 144, baseType: !157, size: 32, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1108, file: !1109, line: 1174, baseType: !205, size: 32, offset: 12160)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1108, file: !1109, line: 1179, baseType: !178, size: 64, offset: 12224)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1108, file: !1109, line: 1182, baseType: !1969, size: 128, offset: 12288)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1050, line: 76, size: 128, elements: !1970)
!1970 = !{!1971, !1976, !1977}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1969, file: !1050, line: 85, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1973, line: 7, size: 64, elements: !1974)
!1973 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1974 = !{!1975}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1972, file: !1973, line: 12, baseType: !1257, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1969, file: !1050, line: 88, baseType: !474, size: 8, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1969, file: !1050, line: 95, baseType: !474, size: 8, offset: 72)
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !1109, line: 1184, baseType: !1979, size: 128, offset: 12416)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1108, file: !1109, line: 1184, size: 128, elements: !1980)
!1980 = !{!1981, !1982}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1979, file: !1109, line: 1185, baseType: !1121, size: 32)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1979, file: !1109, line: 1186, baseType: !351, size: 128, align: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1108, file: !1109, line: 1190, baseType: !1984, size: 64, offset: 12544)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1109, line: 53, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1108, file: !1109, line: 1192, baseType: !1987, size: 128, offset: 12608)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1050, line: 64, size: 128, elements: !1988)
!1988 = !{!1989, !1990, !1991}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1987, file: !1050, line: 65, baseType: !709, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1987, file: !1050, line: 67, baseType: !157, size: 32, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1987, file: !1050, line: 68, baseType: !157, size: 32, offset: 96)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1108, file: !1109, line: 1206, baseType: !180, size: 32, offset: 12736)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1108, file: !1109, line: 1207, baseType: !180, size: 32, offset: 12768)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1108, file: !1109, line: 1209, baseType: !178, size: 64, offset: 12800)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1108, file: !1109, line: 1219, baseType: !403, size: 64, offset: 12864)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1108, file: !1109, line: 1220, baseType: !403, size: 64, offset: 12928)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1108, file: !1109, line: 1317, baseType: !180, size: 32, offset: 12992)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1108, file: !1109, line: 1319, baseType: !1107, size: 64, offset: 13056)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1108, file: !1109, line: 1322, baseType: !2000, size: 64, offset: 13120)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2002, line: 9, flags: DIFlagFwdDecl)
!2002 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1108, file: !1109, line: 1326, baseType: !1121, size: 32, offset: 13184)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1108, file: !1109, line: 1342, baseType: !95, size: 64, offset: 13248)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1108, file: !1109, line: 1343, baseType: !404, size: 64, offset: 13312)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1108, file: !1109, line: 1344, baseType: !403, size: 64, offset: 13376)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1108, file: !1109, line: 1345, baseType: !404, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1108, file: !1109, line: 1346, baseType: !404, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1108, file: !1109, line: 1347, baseType: !404, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1108, file: !1109, line: 1348, baseType: !351, size: 128, align: 64, offset: 13504)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1108, file: !1109, line: 1358, baseType: !2012, size: 34816, offset: 13824)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2013, line: 485, size: 34816, elements: !2014)
!2013 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2014 = !{!2015, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2044, !2045, !2046, !2047, !2048, !2049, !2052, !2053, !2054}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2012, file: !2013, line: 487, baseType: !2016, size: 192)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2017, size: 192, elements: !637)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2018, line: 16, size: 64, elements: !2019)
!2018 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2017, file: !2018, line: 17, baseType: !290, size: 16)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2017, file: !2018, line: 18, baseType: !290, size: 16, offset: 16)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2017, file: !2018, line: 19, baseType: !290, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2017, file: !2018, line: 19, baseType: !290, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2017, file: !2018, line: 19, baseType: !290, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2017, file: !2018, line: 19, baseType: !290, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2017, file: !2018, line: 19, baseType: !290, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2017, file: !2018, line: 20, baseType: !290, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2017, file: !2018, line: 20, baseType: !290, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2017, file: !2018, line: 20, baseType: !290, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2017, file: !2018, line: 20, baseType: !290, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2017, file: !2018, line: 20, baseType: !290, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2017, file: !2018, line: 20, baseType: !290, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2012, file: !2013, line: 491, baseType: !178, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2012, file: !2013, line: 495, baseType: !112, size: 16, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2012, file: !2013, line: 496, baseType: !112, size: 16, offset: 272)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2012, file: !2013, line: 497, baseType: !112, size: 16, offset: 288)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2012, file: !2013, line: 498, baseType: !112, size: 16, offset: 304)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2012, file: !2013, line: 502, baseType: !178, size: 64, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2012, file: !2013, line: 503, baseType: !178, size: 64, offset: 384)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2012, file: !2013, line: 514, baseType: !2041, size: 256, offset: 448)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2042, size: 256, elements: !1054)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2013, line: 483, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2012, file: !2013, line: 516, baseType: !178, size: 64, offset: 704)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2012, file: !2013, line: 518, baseType: !178, size: 64, offset: 768)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2012, file: !2013, line: 520, baseType: !178, size: 64, offset: 832)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2012, file: !2013, line: 521, baseType: !178, size: 64, offset: 896)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2012, file: !2013, line: 522, baseType: !178, size: 64, offset: 960)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2012, file: !2013, line: 528, baseType: !2050, size: 64, offset: 1024)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2013, line: 10, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2012, file: !2013, line: 535, baseType: !178, size: 64, offset: 1088)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2012, file: !2013, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2012, file: !2013, line: 540, baseType: !2055, size: 33280, offset: 1536)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2056, line: 317, size: 33280, elements: !2057)
!2056 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2057 = !{!2058, !2059, !2060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2055, file: !2056, line: 330, baseType: !7, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2055, file: !2056, line: 337, baseType: !178, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2055, file: !2056, line: 348, baseType: !2061, size: 32768, offset: 512)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2056, line: 304, size: 32768, elements: !2062)
!2062 = !{!2063, !2078, !2113, !2163, !2176}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2061, file: !2056, line: 305, baseType: !2064, size: 896)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2056, line: 12, size: 896, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2077}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2064, file: !2056, line: 13, baseType: !205, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2064, file: !2056, line: 14, baseType: !205, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2064, file: !2056, line: 15, baseType: !205, size: 32, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2064, file: !2056, line: 16, baseType: !205, size: 32, offset: 96)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2064, file: !2056, line: 17, baseType: !205, size: 32, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2064, file: !2056, line: 18, baseType: !205, size: 32, offset: 160)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2064, file: !2056, line: 19, baseType: !205, size: 32, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2064, file: !2056, line: 22, baseType: !2074, size: 640, offset: 224)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 640, elements: !2075)
!2075 = !{!2076}
!2076 = !DISubrange(count: 20)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2064, file: !2056, line: 25, baseType: !205, size: 32, offset: 864)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2061, file: !2056, line: 306, baseType: !2079, size: 4096, align: 128)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2056, line: 34, size: 4096, align: 128, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2100, !2101, !2102, !2104, !2106, !2108}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2079, file: !2056, line: 35, baseType: !290, size: 16)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2079, file: !2056, line: 36, baseType: !290, size: 16, offset: 16)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2079, file: !2056, line: 37, baseType: !290, size: 16, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2079, file: !2056, line: 38, baseType: !290, size: 16, offset: 48)
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !2056, line: 39, baseType: !2086, size: 128, offset: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !2056, line: 39, size: 128, elements: !2087)
!2087 = !{!2088, !2093}
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !2086, file: !2056, line: 40, baseType: !2089, size: 128)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !2056, line: 40, size: 128, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2089, file: !2056, line: 41, baseType: !403, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2089, file: !2056, line: 42, baseType: !403, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2086, file: !2056, line: 44, baseType: !2094, size: 128)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !2056, line: 44, size: 128, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2099}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2094, file: !2056, line: 45, baseType: !205, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2094, file: !2056, line: 46, baseType: !205, size: 32, offset: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2094, file: !2056, line: 47, baseType: !205, size: 32, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2094, file: !2056, line: 48, baseType: !205, size: 32, offset: 96)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2079, file: !2056, line: 51, baseType: !205, size: 32, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2079, file: !2056, line: 52, baseType: !205, size: 32, offset: 224)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2079, file: !2056, line: 55, baseType: !2103, size: 1024, offset: 256)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 1024, elements: !262)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2079, file: !2056, line: 58, baseType: !2105, size: 2048, offset: 1280)
!2105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 2048, elements: !1765)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2079, file: !2056, line: 60, baseType: !2107, size: 384, offset: 3328)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 384, elements: !232)
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !2056, line: 62, baseType: !2109, size: 384, offset: 3712)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !2056, line: 62, size: 384, elements: !2110)
!2110 = !{!2111, !2112}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2109, file: !2056, line: 63, baseType: !2107, size: 384)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2109, file: !2056, line: 64, baseType: !2107, size: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2061, file: !2056, line: 307, baseType: !2114, size: 1088)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2056, line: 79, size: 1088, elements: !2115)
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2162}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2114, file: !2056, line: 80, baseType: !205, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2114, file: !2056, line: 81, baseType: !205, size: 32, offset: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2114, file: !2056, line: 82, baseType: !205, size: 32, offset: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2114, file: !2056, line: 83, baseType: !205, size: 32, offset: 96)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2114, file: !2056, line: 84, baseType: !205, size: 32, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2114, file: !2056, line: 85, baseType: !205, size: 32, offset: 160)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2114, file: !2056, line: 86, baseType: !205, size: 32, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2114, file: !2056, line: 88, baseType: !2074, size: 640, offset: 224)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2114, file: !2056, line: 89, baseType: !1243, size: 8, offset: 864)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2114, file: !2056, line: 90, baseType: !1243, size: 8, offset: 872)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2114, file: !2056, line: 91, baseType: !1243, size: 8, offset: 880)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2114, file: !2056, line: 92, baseType: !1243, size: 8, offset: 888)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2114, file: !2056, line: 93, baseType: !1243, size: 8, offset: 896)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2114, file: !2056, line: 94, baseType: !1243, size: 8, offset: 904)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2114, file: !2056, line: 95, baseType: !2131, size: 64, offset: 960)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2133, line: 11, size: 128, elements: !2134)
!2133 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2132, file: !2133, line: 12, baseType: !524, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2132, file: !2133, line: 13, baseType: !2137, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2139, line: 56, size: 1344, elements: !2140)
!2139 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2138, file: !2139, line: 61, baseType: !178, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2138, file: !2139, line: 62, baseType: !178, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2138, file: !2139, line: 63, baseType: !178, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2138, file: !2139, line: 64, baseType: !178, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2138, file: !2139, line: 65, baseType: !178, size: 64, offset: 256)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2138, file: !2139, line: 66, baseType: !178, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2138, file: !2139, line: 68, baseType: !178, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2138, file: !2139, line: 69, baseType: !178, size: 64, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2138, file: !2139, line: 70, baseType: !178, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2138, file: !2139, line: 71, baseType: !178, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2138, file: !2139, line: 72, baseType: !178, size: 64, offset: 640)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2138, file: !2139, line: 73, baseType: !178, size: 64, offset: 704)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2138, file: !2139, line: 74, baseType: !178, size: 64, offset: 768)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2138, file: !2139, line: 75, baseType: !178, size: 64, offset: 832)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2138, file: !2139, line: 76, baseType: !178, size: 64, offset: 896)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2138, file: !2139, line: 81, baseType: !178, size: 64, offset: 960)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2138, file: !2139, line: 83, baseType: !178, size: 64, offset: 1024)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2138, file: !2139, line: 84, baseType: !178, size: 64, offset: 1088)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2138, file: !2139, line: 85, baseType: !178, size: 64, offset: 1152)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2138, file: !2139, line: 86, baseType: !178, size: 64, offset: 1216)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2138, file: !2139, line: 87, baseType: !178, size: 64, offset: 1280)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2114, file: !2056, line: 96, baseType: !205, size: 32, offset: 1024)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2061, file: !2056, line: 308, baseType: !2164, size: 4608, align: 512)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2056, line: 289, size: 4608, align: 512, elements: !2165)
!2165 = !{!2166, !2167, !2174}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2164, file: !2056, line: 290, baseType: !2079, size: 4096, align: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2164, file: !2056, line: 291, baseType: !2168, size: 512, offset: 4096)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2056, line: 268, size: 512, elements: !2169)
!2169 = !{!2170, !2171, !2172}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2168, file: !2056, line: 269, baseType: !403, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2168, file: !2056, line: 270, baseType: !403, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2168, file: !2056, line: 271, baseType: !2173, size: 384, offset: 128)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 384, elements: !1510)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2164, file: !2056, line: 292, baseType: !2175, offset: 4608)
!2175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, elements: !1608)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2061, file: !2056, line: 309, baseType: !2177, size: 32768)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1243, size: 32768, elements: !2178)
!2178 = !{!2179}
!2179 = !DISubrange(count: 4096)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1104, file: !711, line: 378, baseType: !2181, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1100, file: !711, line: 384, baseType: !1389, size: 192, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !957, file: !711, line: 500, baseType: !313, offset: 6656)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !957, file: !711, line: 501, baseType: !2185, size: 64, offset: 6656)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !711, line: 387, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !957, file: !711, line: 516, baseType: !1598, size: 64, offset: 6720)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !957, file: !711, line: 519, baseType: !338, size: 64, offset: 6784)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !957, file: !711, line: 521, baseType: !2190, size: 64, offset: 6848)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !711, line: 521, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !957, file: !711, line: 545, baseType: !735, size: 32, offset: 6912)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !957, file: !711, line: 548, baseType: !474, size: 8, offset: 6944)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !957, file: !711, line: 550, baseType: !2195, offset: 6952)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2196, line: 142, elements: !327)
!2196 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !957, file: !711, line: 554, baseType: !1843, size: 256, offset: 6976)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !957, file: !711, line: 557, baseType: !205, size: 32, offset: 7232)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !954, file: !711, line: 565, baseType: !2200, offset: 7296)
!2200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, elements: !2201)
!2201 = !{!2202}
!2202 = !DISubrange(count: -1)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !950, file: !711, line: 151, baseType: !735, size: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !943, file: !711, line: 156, baseType: !313, offset: 256)
!2205 = !DIDerivedType(tag: DW_TAG_member, scope: !715, file: !711, line: 159, baseType: !2206, size: 128)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !715, file: !711, line: 159, size: 128, elements: !2207)
!2207 = !{!2208, !2211}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2206, file: !711, line: 161, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !711, line: 161, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2206, file: !711, line: 162, baseType: !95, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !715, file: !711, line: 176, baseType: !351, size: 128, align: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !711, line: 179, baseType: !2214, size: 32, offset: 384)
!2214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !711, line: 179, size: 32, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2214, file: !711, line: 184, baseType: !735, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2214, file: !711, line: 192, baseType: !7, size: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2214, file: !711, line: 194, baseType: !7, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2214, file: !711, line: 195, baseType: !180, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !710, file: !711, line: 199, baseType: !735, size: 32, offset: 416)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !645, file: !31, line: 1964, baseType: !2222, size: 64, offset: 1344)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!524, !588, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2227, line: 12, size: 256, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !{!2229, !2230, !2231, !2232, !2233}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2226, file: !2227, line: 13, baseType: !93, size: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2226, file: !2227, line: 16, baseType: !180, size: 32, offset: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2226, file: !2227, line: 23, baseType: !178, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2226, file: !2227, line: 30, baseType: !178, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2226, file: !2227, line: 33, baseType: !2234, size: 64, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !711, line: 27, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !645, file: !31, line: 1966, baseType: !2222, size: 64, offset: 1408)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !589, file: !31, line: 1424, baseType: !2238, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2240)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2241)
!2241 = !{!2242, !2288, !2292, !2296, !2297, !2298, !2299, !2300, !2305, !2310, !2314}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2240, file: !25, line: 323, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!180, !2246}
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2248)
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2273, !2274, !2275}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2247, file: !25, line: 295, baseType: !192, size: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2247, file: !25, line: 296, baseType: !329, size: 128, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2247, file: !25, line: 297, baseType: !329, size: 128, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2247, file: !25, line: 298, baseType: !329, size: 128, offset: 384)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2247, file: !25, line: 299, baseType: !299, size: 192, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2247, file: !25, line: 300, baseType: !313, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2247, file: !25, line: 301, baseType: !735, size: 32, offset: 704)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2247, file: !25, line: 302, baseType: !588, size: 64, offset: 768)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2247, file: !25, line: 303, baseType: !2258, size: 64, offset: 832)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2259)
!2259 = !{!2260, !2272}
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !25, line: 69, baseType: !2261, size: 32)
!2261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2258, file: !25, line: 69, size: 32, elements: !2262)
!2262 = !{!2263, !2264, !2265}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2261, file: !25, line: 70, baseType: !417, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2261, file: !25, line: 71, baseType: !426, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2261, file: !25, line: 72, baseType: !2266, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2267, line: 24, baseType: !2268)
!2267 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2267, line: 22, size: 32, elements: !2269)
!2269 = !{!2270}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2268, file: !2267, line: 23, baseType: !2271, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2267, line: 20, baseType: !423)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2258, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2247, file: !25, line: 304, baseType: !515, size: 64, offset: 896)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2247, file: !25, line: 305, baseType: !178, size: 64, offset: 960)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2247, file: !25, line: 306, baseType: !2276, size: 576, offset: 1024)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2277)
!2277 = !{!2278, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2276, file: !25, line: 206, baseType: !2279, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !311)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2276, file: !25, line: 207, baseType: !2279, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2276, file: !25, line: 208, baseType: !2279, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2276, file: !25, line: 209, baseType: !2279, size: 64, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2276, file: !25, line: 210, baseType: !2279, size: 64, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2276, file: !25, line: 211, baseType: !2279, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2276, file: !25, line: 212, baseType: !2279, size: 64, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2276, file: !25, line: 213, baseType: !522, size: 64, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2276, file: !25, line: 214, baseType: !522, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2240, file: !25, line: 324, baseType: !2289, size: 64, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!2246, !588, !180}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2240, file: !25, line: 325, baseType: !2293, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{null, !2246}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2240, file: !25, line: 326, baseType: !2243, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2240, file: !25, line: 327, baseType: !2243, size: 64, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2240, file: !25, line: 328, baseType: !2243, size: 64, offset: 320)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2240, file: !25, line: 329, baseType: !673, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2240, file: !25, line: 332, baseType: !2301, size: 64, offset: 448)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!2304, !410}
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2240, file: !25, line: 333, baseType: !2306, size: 64, offset: 512)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!180, !410, !2309}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2240, file: !25, line: 335, baseType: !2311, size: 64, offset: 576)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!180, !410, !2304}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2240, file: !25, line: 337, baseType: !2315, size: 64, offset: 640)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!180, !588, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !589, file: !31, line: 1425, baseType: !2320, size: 64, offset: 512)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2322)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2323)
!2323 = !{!2324, !2328, !2329, !2333, !2334, !2335, !2350, !2373, !2377, !2378, !2401}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2322, file: !25, line: 429, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!180, !588, !180, !180, !532}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2322, file: !25, line: 430, baseType: !673, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2322, file: !25, line: 431, baseType: !2330, size: 64, offset: 128)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!180, !588, !7}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2322, file: !25, line: 432, baseType: !2330, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2322, file: !25, line: 433, baseType: !673, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2322, file: !25, line: 434, baseType: !2336, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!180, !588, !180, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2340, file: !25, line: 416, baseType: !180, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2340, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2340, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2340, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2340, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2340, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2340, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2340, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2322, file: !25, line: 435, baseType: !2351, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!180, !588, !2258, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2355, file: !25, line: 344, baseType: !180, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2355, file: !25, line: 345, baseType: !403, size: 64, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2355, file: !25, line: 346, baseType: !403, size: 64, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2355, file: !25, line: 347, baseType: !403, size: 64, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2355, file: !25, line: 348, baseType: !403, size: 64, offset: 256)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2355, file: !25, line: 349, baseType: !403, size: 64, offset: 320)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2355, file: !25, line: 350, baseType: !403, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2355, file: !25, line: 351, baseType: !309, size: 64, offset: 448)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2355, file: !25, line: 353, baseType: !309, size: 64, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2355, file: !25, line: 354, baseType: !180, size: 32, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2355, file: !25, line: 355, baseType: !180, size: 32, offset: 608)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2355, file: !25, line: 356, baseType: !403, size: 64, offset: 640)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2355, file: !25, line: 357, baseType: !403, size: 64, offset: 704)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2355, file: !25, line: 358, baseType: !403, size: 64, offset: 768)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2355, file: !25, line: 359, baseType: !309, size: 64, offset: 832)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2355, file: !25, line: 360, baseType: !180, size: 32, offset: 896)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2322, file: !25, line: 436, baseType: !2374, size: 64, offset: 448)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!180, !588, !2318, !2354}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2322, file: !25, line: 438, baseType: !2351, size: 64, offset: 512)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2322, file: !25, line: 439, baseType: !2379, size: 64, offset: 576)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!180, !588, !2382}
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2384)
!2384 = !{!2385, !2386}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2383, file: !25, line: 410, baseType: !7, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2383, file: !25, line: 411, baseType: !2387, size: 1344, offset: 64)
!2387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2388, size: 1344, elements: !637)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2389)
!2389 = !{!2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2400}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2388, file: !25, line: 396, baseType: !7, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2388, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2388, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2388, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2388, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2388, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2388, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2388, file: !25, line: 404, baseType: !405, size: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2388, file: !25, line: 405, baseType: !2399, size: 64, offset: 320)
!2399 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !94, line: 126, baseType: !403)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2388, file: !25, line: 406, baseType: !2399, size: 64, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2322, file: !25, line: 440, baseType: !2330, size: 64, offset: 640)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !589, file: !31, line: 1426, baseType: !2403, size: 64, offset: 576)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !589, file: !31, line: 1427, baseType: !178, size: 64, offset: 640)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !589, file: !31, line: 1428, baseType: !178, size: 64, offset: 704)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !589, file: !31, line: 1429, baseType: !178, size: 64, offset: 768)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !589, file: !31, line: 1430, baseType: !368, size: 64, offset: 832)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !589, file: !31, line: 1431, baseType: !755, size: 256, offset: 896)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !589, file: !31, line: 1432, baseType: !180, size: 32, offset: 1152)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !589, file: !31, line: 1433, baseType: !735, size: 32, offset: 1184)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !589, file: !31, line: 1437, baseType: !2414, size: 64, offset: 1216)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2417)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !589, file: !31, line: 1449, baseType: !2419, size: 64, offset: 1280)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !384, line: 34, size: 64, elements: !2420)
!2420 = !{!2421}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2419, file: !384, line: 35, baseType: !387, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !589, file: !31, line: 1450, baseType: !329, size: 128, offset: 1344)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !589, file: !31, line: 1451, baseType: !2424, size: 64, offset: 1472)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !589, file: !31, line: 1452, baseType: !1809, size: 64, offset: 1536)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !589, file: !31, line: 1453, baseType: !2428, size: 64, offset: 1600)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !589, file: !31, line: 1454, baseType: !192, size: 128, offset: 1664)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !589, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !589, file: !31, line: 1456, baseType: !2433, size: 2432, offset: 1856)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2434)
!2434 = !{!2435, !2436, !2437, !2439, !2471}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2433, file: !25, line: 519, baseType: !7, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2433, file: !25, line: 520, baseType: !755, size: 256, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2433, file: !25, line: 521, baseType: !2438, size: 192, offset: 320)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 192, elements: !637)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2433, file: !25, line: 522, baseType: !2440, size: 1728, offset: 512)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2441, size: 1728, elements: !637)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2442)
!2442 = !{!2443, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2441, file: !25, line: 223, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2446)
!2446 = !{!2447, !2448, !2461, !2462}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2445, file: !25, line: 444, baseType: !180, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2445, file: !25, line: 445, baseType: !2449, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2451)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2452)
!2452 = !{!2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2451, file: !25, line: 311, baseType: !673, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2451, file: !25, line: 312, baseType: !673, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2451, file: !25, line: 313, baseType: !673, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2451, file: !25, line: 314, baseType: !673, size: 64, offset: 192)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2451, file: !25, line: 315, baseType: !2243, size: 64, offset: 256)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2451, file: !25, line: 316, baseType: !2243, size: 64, offset: 320)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2451, file: !25, line: 317, baseType: !2243, size: 64, offset: 384)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2451, file: !25, line: 318, baseType: !2315, size: 64, offset: 448)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2445, file: !25, line: 446, baseType: !622, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2445, file: !25, line: 447, baseType: !2444, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2441, file: !25, line: 224, baseType: !180, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2441, file: !25, line: 226, baseType: !329, size: 128, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2441, file: !25, line: 227, baseType: !178, size: 64, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2441, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2441, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2441, file: !25, line: 230, baseType: !2279, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2441, file: !25, line: 231, baseType: !2279, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2441, file: !25, line: 232, baseType: !95, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2433, file: !25, line: 523, baseType: !2472, size: 192, offset: 2240)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2449, size: 192, elements: !637)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !589, file: !31, line: 1458, baseType: !2474, size: 2112, offset: 4288)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2475)
!2475 = !{!2476, !2477, !2478}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2474, file: !31, line: 1411, baseType: !180, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2474, file: !31, line: 1412, baseType: !1368, size: 128, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2474, file: !31, line: 1413, baseType: !2479, size: 1920, offset: 192)
!2479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2480, size: 1920, elements: !637)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2481, line: 12, size: 640, elements: !2482)
!2481 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2482 = !{!2483, !2491, !2492, !2497, !2498}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2480, file: !2481, line: 13, baseType: !2484, size: 320)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2485, line: 17, size: 320, elements: !2486)
!2485 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2484, file: !2485, line: 18, baseType: !180, size: 32)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2484, file: !2485, line: 19, baseType: !180, size: 32, offset: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2484, file: !2485, line: 20, baseType: !1368, size: 128, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2484, file: !2485, line: 22, baseType: !351, size: 128, align: 64, offset: 192)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2480, file: !2481, line: 14, baseType: !264, size: 64, offset: 320)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2480, file: !2481, line: 15, baseType: !2493, size: 64, offset: 384)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2494, line: 16, size: 64, elements: !2495)
!2494 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2495 = !{!2496}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2493, file: !2494, line: 17, baseType: !1107, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2480, file: !2481, line: 16, baseType: !1368, size: 128, offset: 448)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2480, file: !2481, line: 17, baseType: !735, size: 32, offset: 576)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !589, file: !31, line: 1465, baseType: !95, size: 64, offset: 6400)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !589, file: !31, line: 1468, baseType: !205, size: 32, offset: 6464)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !589, file: !31, line: 1470, baseType: !522, size: 64, offset: 6528)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !589, file: !31, line: 1471, baseType: !522, size: 64, offset: 6592)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !589, file: !31, line: 1473, baseType: !157, size: 32, offset: 6656)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !589, file: !31, line: 1474, baseType: !2505, size: 64, offset: 6720)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !589, file: !31, line: 1477, baseType: !2508, size: 256, offset: 6784)
!2508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 256, elements: !262)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !589, file: !31, line: 1478, baseType: !2510, size: 128, offset: 7040)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2511, line: 18, baseType: !2512)
!2511 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2511, line: 16, size: 128, elements: !2513)
!2513 = !{!2514}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2512, file: !2511, line: 17, baseType: !2515, size: 128)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 128, elements: !184)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !589, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !589, file: !31, line: 1481, baseType: !2518, size: 32, offset: 7200)
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !94, line: 150, baseType: !7)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !589, file: !31, line: 1487, baseType: !299, size: 192, offset: 7232)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !589, file: !31, line: 1493, baseType: !213, size: 64, offset: 7424)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !589, file: !31, line: 1495, baseType: !2522, size: 64, offset: 7488)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2524)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !366, line: 135, size: 1024, align: 512, elements: !2525)
!2525 = !{!2526, !2530, !2531, !2538, !2544, !2548, !2552, !2556, !2557, !2561, !2565, !2570, !2574}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2524, file: !366, line: 136, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!180, !368, !7}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2524, file: !366, line: 137, baseType: !2527, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2524, file: !366, line: 138, baseType: !2532, size: 64, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!180, !2535, !2537}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2524, file: !366, line: 139, baseType: !2539, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!180, !2535, !7, !213, !2542}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2524, file: !366, line: 141, baseType: !2545, size: 64, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!180, !2535}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2524, file: !366, line: 142, baseType: !2549, size: 64, offset: 320)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!180, !368}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2524, file: !366, line: 143, baseType: !2553, size: 64, offset: 384)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{null, !368}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2524, file: !366, line: 144, baseType: !2553, size: 64, offset: 448)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2524, file: !366, line: 145, baseType: !2558, size: 64, offset: 512)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !368, !410}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2524, file: !366, line: 146, baseType: !2562, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!469, !368, !469, !180}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2524, file: !366, line: 147, baseType: !2566, size: 64, offset: 640)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!364, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2524, file: !366, line: 148, baseType: !2571, size: 64, offset: 704)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!180, !532, !474}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2524, file: !366, line: 149, baseType: !2575, size: 64, offset: 768)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!368, !368, !2578}
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !589, file: !31, line: 1500, baseType: !180, size: 32, offset: 7552)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !589, file: !31, line: 1502, baseType: !2582, size: 448, offset: 7616)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2227, line: 60, size: 448, elements: !2583)
!2583 = !{!2584, !2589, !2590, !2591, !2592, !2593, !2594}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2582, file: !2227, line: 61, baseType: !2585, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!178, !2588, !2225}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2582, file: !2227, line: 63, baseType: !2585, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2582, file: !2227, line: 66, baseType: !524, size: 64, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2582, file: !2227, line: 67, baseType: !180, size: 32, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2582, file: !2227, line: 68, baseType: !7, size: 32, offset: 224)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2582, file: !2227, line: 71, baseType: !329, size: 128, offset: 256)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2582, file: !2227, line: 77, baseType: !2595, size: 64, offset: 384)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !589, file: !31, line: 1505, baseType: !303, size: 64, offset: 8064)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !589, file: !31, line: 1508, baseType: !303, size: 64, offset: 8128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !589, file: !31, line: 1511, baseType: !180, size: 32, offset: 8192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !589, file: !31, line: 1514, baseType: !888, size: 32, offset: 8224)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !589, file: !31, line: 1517, baseType: !2601, size: 64, offset: 8256)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1844, line: 18, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !589, file: !31, line: 1518, baseType: !627, size: 64, offset: 8320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !589, file: !31, line: 1525, baseType: !1598, size: 64, offset: 8384)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !589, file: !31, line: 1532, baseType: !2606, size: 64, offset: 8448)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2607, line: 52, size: 64, elements: !2608)
!2607 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2606, file: !2607, line: 53, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2607, line: 40, size: 256, elements: !2612)
!2612 = !{!2613, !2614, !2619}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2611, file: !2607, line: 42, baseType: !313)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2611, file: !2607, line: 44, baseType: !2615, size: 192)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2607, line: 28, size: 192, elements: !2616)
!2616 = !{!2617, !2618}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2615, file: !2607, line: 29, baseType: !329, size: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2615, file: !2607, line: 31, baseType: !524, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2611, file: !2607, line: 49, baseType: !524, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !589, file: !31, line: 1533, baseType: !2606, size: 64, offset: 8512)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !589, file: !31, line: 1534, baseType: !351, size: 128, align: 64, offset: 8576)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !589, file: !31, line: 1535, baseType: !1843, size: 256, offset: 8704)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !589, file: !31, line: 1537, baseType: !299, size: 192, offset: 8960)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !589, file: !31, line: 1542, baseType: !180, size: 32, offset: 9152)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !589, file: !31, line: 1545, baseType: !313, offset: 9184)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !589, file: !31, line: 1546, baseType: !329, size: 128, offset: 9216)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !589, file: !31, line: 1548, baseType: !313, offset: 9344)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !589, file: !31, line: 1549, baseType: !329, size: 128, offset: 9344)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !411, file: !31, line: 624, baseType: !722, size: 64, offset: 256)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !411, file: !31, line: 631, baseType: !178, size: 64, offset: 320)
!2631 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !31, line: 639, baseType: !2632, size: 32, offset: 384)
!2632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !31, line: 639, size: 32, elements: !2633)
!2633 = !{!2634, !2636}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2632, file: !31, line: 640, baseType: !2635, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2632, file: !31, line: 641, baseType: !7, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !411, file: !31, line: 643, baseType: !497, size: 32, offset: 416)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !411, file: !31, line: 644, baseType: !515, size: 64, offset: 448)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !411, file: !31, line: 645, baseType: !518, size: 128, offset: 512)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !411, file: !31, line: 646, baseType: !518, size: 128, offset: 640)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !411, file: !31, line: 647, baseType: !518, size: 128, offset: 768)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !411, file: !31, line: 648, baseType: !313, offset: 896)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !411, file: !31, line: 649, baseType: !112, size: 16, offset: 896)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !411, file: !31, line: 650, baseType: !1243, size: 8, offset: 912)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !411, file: !31, line: 651, baseType: !1243, size: 8, offset: 920)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !411, file: !31, line: 652, baseType: !2399, size: 64, offset: 960)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !411, file: !31, line: 659, baseType: !178, size: 64, offset: 1024)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !411, file: !31, line: 660, baseType: !755, size: 256, offset: 1088)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !411, file: !31, line: 662, baseType: !178, size: 64, offset: 1344)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !411, file: !31, line: 663, baseType: !178, size: 64, offset: 1408)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !411, file: !31, line: 665, baseType: !192, size: 128, offset: 1472)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !411, file: !31, line: 666, baseType: !329, size: 128, offset: 1600)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !411, file: !31, line: 675, baseType: !329, size: 128, offset: 1728)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !411, file: !31, line: 676, baseType: !329, size: 128, offset: 1856)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !411, file: !31, line: 677, baseType: !329, size: 128, offset: 1984)
!2656 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !31, line: 678, baseType: !2657, size: 128, offset: 2112)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !31, line: 678, size: 128, elements: !2658)
!2658 = !{!2659, !2660}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2657, file: !31, line: 679, baseType: !627, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2657, file: !31, line: 680, baseType: !351, size: 128, align: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !411, file: !31, line: 682, baseType: !305, size: 64, offset: 2240)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !411, file: !31, line: 683, baseType: !305, size: 64, offset: 2304)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !411, file: !31, line: 684, baseType: !735, size: 32, offset: 2368)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !411, file: !31, line: 685, baseType: !735, size: 32, offset: 2400)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !411, file: !31, line: 686, baseType: !735, size: 32, offset: 2432)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !411, file: !31, line: 688, baseType: !735, size: 32, offset: 2464)
!2667 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !31, line: 690, baseType: !2668, size: 64, offset: 2496)
!2668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !31, line: 690, size: 64, elements: !2669)
!2669 = !{!2670, !2893}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2668, file: !31, line: 691, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2673)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2674)
!2674 = !{!2675, !2676, !2680, !2685, !2689, !2690, !2691, !2695, !2708, !2709, !2717, !2721, !2722, !2726, !2727, !2731, !2736, !2737, !2741, !2745, !2853, !2857, !2858, !2862, !2863, !2867, !2871, !2876, !2880, !2884, !2888, !2892}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2673, file: !31, line: 1823, baseType: !622, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2673, file: !31, line: 1824, baseType: !2677, size: 64, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!515, !338, !515, !180}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2673, file: !31, line: 1825, baseType: !2681, size: 64, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!561, !338, !469, !564, !2684}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2673, file: !31, line: 1826, baseType: !2686, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!561, !338, !213, !564, !2684}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2673, file: !31, line: 1827, baseType: !825, size: 64, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2673, file: !31, line: 1828, baseType: !825, size: 64, offset: 320)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2673, file: !31, line: 1829, baseType: !2692, size: 64, offset: 384)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!180, !828, !474}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2673, file: !31, line: 1830, baseType: !2696, size: 64, offset: 448)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!180, !338, !2699}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2701)
!2701 = !{!2702, !2707}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2700, file: !31, line: 1777, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2704)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!180, !2699, !213, !180, !515, !403, !7}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2700, file: !31, line: 1778, baseType: !515, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2673, file: !31, line: 1831, baseType: !2696, size: 64, offset: 512)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2673, file: !31, line: 1832, baseType: !2710, size: 64, offset: 576)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!2713, !338, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2714, line: 52, baseType: !7)
!2714 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !608, line: 27, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2673, file: !31, line: 1833, baseType: !2718, size: 64, offset: 640)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!524, !338, !7, !178}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2673, file: !31, line: 1834, baseType: !2718, size: 64, offset: 704)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2673, file: !31, line: 1835, baseType: !2723, size: 64, offset: 768)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!180, !338, !960}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2673, file: !31, line: 1836, baseType: !178, size: 64, offset: 832)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2673, file: !31, line: 1837, baseType: !2728, size: 64, offset: 896)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!180, !410, !338}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2673, file: !31, line: 1838, baseType: !2732, size: 64, offset: 960)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!180, !338, !2735}
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !95)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2673, file: !31, line: 1839, baseType: !2728, size: 64, offset: 1024)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2673, file: !31, line: 1840, baseType: !2738, size: 64, offset: 1088)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!180, !338, !515, !515, !180}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2673, file: !31, line: 1841, baseType: !2742, size: 64, offset: 1152)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!180, !180, !338, !180}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2673, file: !31, line: 1842, baseType: !2746, size: 64, offset: 1216)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!180, !338, !180, !2749}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2751)
!2751 = !{!2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2783, !2784, !2785, !2798, !2829}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2750, file: !31, line: 1063, baseType: !2749, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2750, file: !31, line: 1064, baseType: !329, size: 128, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2750, file: !31, line: 1065, baseType: !192, size: 128, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2750, file: !31, line: 1066, baseType: !329, size: 128, offset: 320)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2750, file: !31, line: 1069, baseType: !329, size: 128, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2750, file: !31, line: 1072, baseType: !2735, size: 64, offset: 576)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2750, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2750, file: !31, line: 1074, baseType: !256, size: 8, offset: 672)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2750, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2750, file: !31, line: 1076, baseType: !180, size: 32, offset: 736)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2750, file: !31, line: 1077, baseType: !1368, size: 128, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2750, file: !31, line: 1078, baseType: !338, size: 64, offset: 896)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2750, file: !31, line: 1079, baseType: !515, size: 64, offset: 960)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2750, file: !31, line: 1080, baseType: !515, size: 64, offset: 1024)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2750, file: !31, line: 1082, baseType: !2767, size: 64, offset: 1088)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2769)
!2769 = !{!2770, !2778, !2779, !2780, !2781, !2782}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2768, file: !31, line: 1315, baseType: !2771)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2772, line: 20, baseType: !2773)
!2772 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2772, line: 11, elements: !2774)
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2773, file: !2772, line: 12, baseType: !2776)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !325, line: 33, baseType: !2777)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !325, line: 31, elements: !327)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2768, file: !31, line: 1316, baseType: !180, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2768, file: !31, line: 1317, baseType: !180, size: 32, offset: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2768, file: !31, line: 1318, baseType: !2767, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2768, file: !31, line: 1319, baseType: !338, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2768, file: !31, line: 1320, baseType: !351, size: 128, align: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2750, file: !31, line: 1084, baseType: !178, size: 64, offset: 1152)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2750, file: !31, line: 1085, baseType: !178, size: 64, offset: 1216)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2750, file: !31, line: 1087, baseType: !2786, size: 64, offset: 1280)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2789)
!2789 = !{!2790, !2794}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2788, file: !31, line: 1012, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2749, !2749}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2788, file: !31, line: 1013, baseType: !2795, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{null, !2749}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2750, file: !31, line: 1088, baseType: !2799, size: 64, offset: 1344)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2801)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2802)
!2802 = !{!2803, !2807, !2811, !2812, !2816, !2820, !2824, !2828}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2801, file: !31, line: 1017, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!2735, !2735}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2801, file: !31, line: 1018, baseType: !2808, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2735}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2801, file: !31, line: 1019, baseType: !2795, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2801, file: !31, line: 1020, baseType: !2813, size: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{!180, !2749, !180}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2801, file: !31, line: 1021, baseType: !2817, size: 64, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DISubroutineType(types: !2819)
!2819 = !{!474, !2749}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2801, file: !31, line: 1022, baseType: !2821, size: 64, offset: 320)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!180, !2749, !180, !332}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2801, file: !31, line: 1023, baseType: !2825, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2749, !802}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2801, file: !31, line: 1024, baseType: !2817, size: 64, offset: 448)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2750, file: !31, line: 1097, baseType: !2830, size: 256, offset: 1408)
!2830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2750, file: !31, line: 1089, size: 256, elements: !2831)
!2831 = !{!2832, !2841, !2847}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2830, file: !31, line: 1090, baseType: !2833, size: 256)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2834, line: 10, size: 256, elements: !2835)
!2834 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2835 = !{!2836, !2837, !2840}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2833, file: !2834, line: 11, baseType: !205, size: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2833, file: !2834, line: 12, baseType: !2838, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2834, line: 5, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2833, file: !2834, line: 13, baseType: !329, size: 128, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2830, file: !31, line: 1091, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2834, line: 17, size: 64, elements: !2843)
!2843 = !{!2844}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2842, file: !2834, line: 18, baseType: !2845, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2834, line: 16, flags: DIFlagFwdDecl)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2830, file: !31, line: 1096, baseType: !2848, size: 192)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2830, file: !31, line: 1092, size: 192, elements: !2849)
!2849 = !{!2850, !2851, !2852}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2848, file: !31, line: 1093, baseType: !329, size: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2848, file: !31, line: 1094, baseType: !180, size: 32, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2848, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2673, file: !31, line: 1843, baseType: !2854, size: 64, offset: 1280)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!561, !338, !709, !180, !564, !2684, !180}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2673, file: !31, line: 1844, baseType: !1000, size: 64, offset: 1344)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2673, file: !31, line: 1845, baseType: !2859, size: 64, offset: 1408)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!180, !180}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2673, file: !31, line: 1846, baseType: !2746, size: 64, offset: 1472)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2673, file: !31, line: 1847, baseType: !2864, size: 64, offset: 1536)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!561, !1984, !338, !2684, !564, !7}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2673, file: !31, line: 1848, baseType: !2868, size: 64, offset: 1600)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!561, !338, !2684, !1984, !564, !7}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2673, file: !31, line: 1849, baseType: !2872, size: 64, offset: 1664)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!180, !338, !524, !2875, !802}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2673, file: !31, line: 1850, baseType: !2877, size: 64, offset: 1728)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!524, !338, !180, !515, !515}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2673, file: !31, line: 1852, baseType: !2881, size: 64, offset: 1792)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !699, !338}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2673, file: !31, line: 1856, baseType: !2885, size: 64, offset: 1856)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!561, !338, !515, !338, !515, !564, !7}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2673, file: !31, line: 1858, baseType: !2889, size: 64, offset: 1920)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!515, !338, !515, !338, !515, !515, !7}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2673, file: !31, line: 1861, baseType: !2738, size: 64, offset: 1984)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2668, file: !31, line: 692, baseType: !652, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !411, file: !31, line: 694, baseType: !2895, size: 64, offset: 2560)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2897)
!2897 = !{!2898, !2899, !2900, !2901}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2896, file: !31, line: 1101, baseType: !313)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2896, file: !31, line: 1102, baseType: !329, size: 128)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2896, file: !31, line: 1103, baseType: !329, size: 128, offset: 128)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2896, file: !31, line: 1104, baseType: !329, size: 128, offset: 256)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !411, file: !31, line: 695, baseType: !723, size: 1216, align: 64, offset: 2624)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !411, file: !31, line: 696, baseType: !329, size: 128, offset: 3840)
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !31, line: 697, baseType: !2905, size: 64, offset: 3968)
!2905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !31, line: 697, size: 64, elements: !2906)
!2906 = !{!2907, !2908, !2909, !2912, !2913}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2905, file: !31, line: 698, baseType: !1984, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2905, file: !31, line: 699, baseType: !2424, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2905, file: !31, line: 700, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2905, file: !31, line: 701, baseType: !469, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2905, file: !31, line: 702, baseType: !7, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !411, file: !31, line: 705, baseType: !157, size: 32, offset: 4032)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !411, file: !31, line: 708, baseType: !157, size: 32, offset: 4064)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !411, file: !31, line: 709, baseType: !2505, size: 64, offset: 4096)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !411, file: !31, line: 720, baseType: !95, size: 64, offset: 4160)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !369, file: !366, line: 98, baseType: !2919, size: 256, offset: 448)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !262)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !369, file: !366, line: 101, baseType: !2921, size: 32, offset: 704)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2922, line: 25, size: 32, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, scope: !2921, file: !2922, line: 26, baseType: !2925, size: 32)
!2925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2921, file: !2922, line: 26, size: 32, elements: !2926)
!2926 = !{!2927}
!2927 = !DIDerivedType(tag: DW_TAG_member, scope: !2925, file: !2922, line: 30, baseType: !2928, size: 32)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2925, file: !2922, line: 30, size: 32, elements: !2929)
!2929 = !{!2930, !2931}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2928, file: !2922, line: 31, baseType: !313)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2928, file: !2922, line: 32, baseType: !180, size: 32)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !369, file: !366, line: 102, baseType: !2522, size: 64, offset: 768)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !369, file: !366, line: 103, baseType: !588, size: 64, offset: 832)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !369, file: !366, line: 104, baseType: !178, size: 64, offset: 896)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !369, file: !366, line: 105, baseType: !95, size: 64, offset: 960)
!2936 = !DIDerivedType(tag: DW_TAG_member, scope: !369, file: !366, line: 107, baseType: !2937, size: 128, offset: 1024)
!2937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !366, line: 107, size: 128, elements: !2938)
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2937, file: !366, line: 108, baseType: !329, size: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2937, file: !366, line: 109, baseType: !2941, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !369, file: !366, line: 111, baseType: !329, size: 128, offset: 1152)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !369, file: !366, line: 112, baseType: !329, size: 128, offset: 1280)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !369, file: !366, line: 120, baseType: !2945, size: 128, offset: 1408)
!2945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !366, line: 116, size: 128, elements: !2946)
!2946 = !{!2947, !2948, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2945, file: !366, line: 117, baseType: !192, size: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2945, file: !366, line: 118, baseType: !383, size: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2945, file: !366, line: 119, baseType: !351, size: 128, align: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !339, file: !31, line: 922, baseType: !410, size: 64, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !339, file: !31, line: 923, baseType: !2671, size: 64, offset: 320)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !339, file: !31, line: 929, baseType: !313, offset: 384)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !339, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !339, file: !31, line: 931, baseType: !303, size: 64, offset: 448)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !339, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !339, file: !31, line: 933, baseType: !2518, size: 32, offset: 544)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !339, file: !31, line: 934, baseType: !299, size: 192, offset: 576)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !339, file: !31, line: 935, baseType: !515, size: 64, offset: 768)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !339, file: !31, line: 936, baseType: !2960, size: 192, offset: 832)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2960, file: !31, line: 886, baseType: !2771)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2960, file: !31, line: 887, baseType: !1358, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2960, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2960, file: !31, line: 889, baseType: !417, size: 32, offset: 96)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2960, file: !31, line: 889, baseType: !417, size: 32, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2960, file: !31, line: 890, baseType: !180, size: 32, offset: 160)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !339, file: !31, line: 937, baseType: !1434, size: 64, offset: 1024)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !339, file: !31, line: 938, baseType: !2970, size: 256, offset: 1088)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2977}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2970, file: !31, line: 897, baseType: !178, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2970, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2970, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2970, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2970, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2970, file: !31, line: 904, baseType: !515, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !339, file: !31, line: 940, baseType: !403, size: 64, offset: 1344)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !339, file: !31, line: 945, baseType: !95, size: 64, offset: 1408)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !339, file: !31, line: 949, baseType: !329, size: 128, offset: 1472)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !339, file: !31, line: 950, baseType: !329, size: 128, offset: 1600)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !339, file: !31, line: 952, baseType: !722, size: 64, offset: 1728)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !339, file: !31, line: 953, baseType: !888, size: 32, offset: 1792)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !339, file: !31, line: 954, baseType: !888, size: 32, offset: 1824)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !209, file: !210, line: 163, baseType: !2986, size: 64, offset: 2048)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !210, line: 24, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !209, file: !210, line: 165, baseType: !7, size: 32, offset: 2112)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !209, file: !210, line: 166, baseType: !188, size: 320, offset: 2176)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !209, file: !210, line: 168, baseType: !2991, size: 64, offset: 2496)
!2991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 64, elements: !170)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !209, file: !210, line: 170, baseType: !2993, size: 64, offset: 2560)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !210, line: 170, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !209, file: !210, line: 172, baseType: !2996, size: 64, offset: 2624)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !107, line: 90, size: 192, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002, !3003, !3004}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2997, file: !107, line: 91, baseType: !1332, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2997, file: !107, line: 92, baseType: !1332, size: 32, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2997, file: !107, line: 93, baseType: !1332, size: 32, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !2997, file: !107, line: 94, baseType: !1332, size: 32, offset: 96)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !2997, file: !107, line: 95, baseType: !1332, size: 32, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !2997, file: !107, line: 96, baseType: !1332, size: 32, offset: 160)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !209, file: !210, line: 174, baseType: !231, size: 768, offset: 2688)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !209, file: !210, line: 175, baseType: !226, size: 64, offset: 3456)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !209, file: !210, line: 176, baseType: !226, size: 64, offset: 3520)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !209, file: !210, line: 177, baseType: !226, size: 64, offset: 3584)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !209, file: !210, line: 179, baseType: !3010, size: 64, offset: 3648)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!180, !208}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !209, file: !210, line: 180, baseType: !3014, size: 64, offset: 3712)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !208}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !209, file: !210, line: 181, baseType: !3018, size: 64, offset: 3776)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!180, !208, !338}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !209, file: !210, line: 182, baseType: !3022, size: 64, offset: 3840)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!180, !208, !7, !7, !180}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !209, file: !210, line: 184, baseType: !3026, size: 64, offset: 3904)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !210, line: 337, size: 576, elements: !3028)
!3028 = !{!3029, !3030, !3031, !3032, !3033, !3101, !3102}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3027, file: !210, line: 339, baseType: !95, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3027, file: !210, line: 341, baseType: !180, size: 32, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3027, file: !210, line: 342, baseType: !213, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3027, file: !210, line: 344, baseType: !208, size: 64, offset: 192)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3027, file: !210, line: 345, baseType: !3034, size: 64, offset: 256)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !210, line: 302, size: 960, elements: !3036)
!3036 = !{!3037, !3038, !3042, !3053, !3057, !3061, !3090, !3094, !3095, !3096, !3097, !3098, !3099, !3100}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3035, file: !210, line: 304, baseType: !95, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3035, file: !210, line: 306, baseType: !3039, size: 64, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !3026, !7, !7, !180}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3035, file: !210, line: 307, baseType: !3043, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !3026, !3046, !7}
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3048)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !210, line: 32, size: 64, elements: !3049)
!3049 = !{!3050, !3051, !3052}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3048, file: !210, line: 33, baseType: !110, size: 16)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3048, file: !210, line: 34, baseType: !110, size: 16, offset: 16)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3048, file: !210, line: 35, baseType: !1332, size: 32, offset: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3035, file: !210, line: 309, baseType: !3054, size: 64, offset: 192)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!474, !3026, !7, !7, !180}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3035, file: !210, line: 310, baseType: !3058, size: 64, offset: 256)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!474, !3034, !208}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3035, file: !210, line: 311, baseType: !3062, size: 64, offset: 320)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!180, !3034, !208, !3065}
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3067)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3068, line: 342, size: 1600, elements: !3069)
!3068 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3069 = !{!3070, !3072, !3073, !3074, !3075, !3076, !3078, !3080, !3081, !3082, !3083, !3084, !3085, !3087, !3088, !3089}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3067, file: !3068, line: 344, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3068, line: 14, baseType: !178)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3067, file: !3068, line: 346, baseType: !110, size: 16, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3067, file: !3068, line: 347, baseType: !110, size: 16, offset: 80)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3067, file: !3068, line: 348, baseType: !110, size: 16, offset: 96)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3067, file: !3068, line: 349, baseType: !110, size: 16, offset: 112)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3067, file: !3068, line: 351, baseType: !3077, size: 64, offset: 128)
!3077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3071, size: 64, elements: !227)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3067, file: !3068, line: 352, baseType: !3079, size: 768, offset: 192)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3071, size: 768, elements: !232)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3067, file: !3068, line: 353, baseType: !3077, size: 64, offset: 960)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3067, file: !3068, line: 354, baseType: !3077, size: 64, offset: 1024)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3067, file: !3068, line: 355, baseType: !3077, size: 64, offset: 1088)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3067, file: !3068, line: 356, baseType: !3077, size: 64, offset: 1152)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3067, file: !3068, line: 357, baseType: !3077, size: 64, offset: 1216)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3067, file: !3068, line: 358, baseType: !3086, size: 128, offset: 1280)
!3086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3071, size: 128, elements: !170)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3067, file: !3068, line: 359, baseType: !3077, size: 64, offset: 1408)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3067, file: !3068, line: 360, baseType: !3077, size: 64, offset: 1472)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3067, file: !3068, line: 362, baseType: !3071, size: 64, offset: 1536)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3035, file: !210, line: 312, baseType: !3091, size: 64, offset: 384)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !3026}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3035, file: !210, line: 313, baseType: !3091, size: 64, offset: 448)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3035, file: !210, line: 315, baseType: !474, size: 8, offset: 512)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3035, file: !210, line: 316, baseType: !180, size: 32, offset: 544)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3035, file: !210, line: 317, baseType: !213, size: 64, offset: 576)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3035, file: !210, line: 319, baseType: !3065, size: 64, offset: 640)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3035, file: !210, line: 321, baseType: !329, size: 128, offset: 704)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3035, file: !210, line: 322, baseType: !329, size: 128, offset: 832)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3027, file: !210, line: 347, baseType: !329, size: 128, offset: 320)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3027, file: !210, line: 348, baseType: !329, size: 128, offset: 448)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !209, file: !210, line: 186, baseType: !313, offset: 3968)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !209, file: !210, line: 187, baseType: !299, size: 192, offset: 3968)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !209, file: !210, line: 189, baseType: !7, size: 32, offset: 4160)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !209, file: !210, line: 190, baseType: !474, size: 8, offset: 4192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !209, file: !210, line: 192, baseType: !3108, size: 5568, offset: 4224)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !3109)
!3109 = !{!3110, !3409, !3411, !3414, !3415, !3466, !3555, !3556, !3557, !3558, !3559, !3568, !3662, !3675, !3678, !3679, !3683, !3685, !3686, !3687, !3691, !3697, !3698, !3701, !3705, !3708, !3709, !3710, !3711, !3712, !3744, !3745, !3746, !3749, !3752, !3753, !3754, !3755}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3108, file: !60, line: 462, baseType: !3111, size: 512)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3112, line: 64, size: 512, elements: !3113)
!3112 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3113 = !{!3114, !3115, !3116, !3118, !3158, !3260, !3399, !3404, !3405, !3406, !3407, !3408}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3111, file: !3112, line: 65, baseType: !213, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3111, file: !3112, line: 66, baseType: !329, size: 128, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3111, file: !3112, line: 67, baseType: !3117, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3111, file: !3112, line: 68, baseType: !3119, size: 64, offset: 256)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3112, line: 192, size: 704, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3120, file: !3112, line: 193, baseType: !329, size: 128)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3120, file: !3112, line: 194, baseType: !313, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3120, file: !3112, line: 195, baseType: !3111, size: 512, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3120, file: !3112, line: 196, baseType: !3126, size: 64, offset: 640)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3128)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3112, line: 156, size: 192, elements: !3129)
!3129 = !{!3130, !3135, !3140}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3128, file: !3112, line: 157, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3132)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!180, !3119, !3117}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3128, file: !3112, line: 158, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3137)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!213, !3119, !3117}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3128, file: !3112, line: 159, baseType: !3141, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3142)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!180, !3119, !3117, !3145}
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3112, line: 148, size: 20736, elements: !3147)
!3147 = !{!3148, !3150, !3152, !3153, !3157}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3146, file: !3112, line: 149, baseType: !3149, size: 192)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 192, elements: !637)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3146, file: !3112, line: 150, baseType: !3151, size: 4096, offset: 192)
!3151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 4096, elements: !1765)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3146, file: !3112, line: 151, baseType: !180, size: 32, offset: 4288)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3146, file: !3112, line: 152, baseType: !3154, size: 16384, offset: 4320)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 16384, elements: !3155)
!3155 = !{!3156}
!3156 = !DISubrange(count: 2048)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3146, file: !3112, line: 153, baseType: !180, size: 32, offset: 20704)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3111, file: !3112, line: 69, baseType: !3159, size: 64, offset: 320)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3112, line: 138, size: 448, elements: !3161)
!3161 = !{!3162, !3166, !3185, !3187, !3220, !3250, !3254}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3160, file: !3112, line: 139, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{null, !3117}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3160, file: !3112, line: 140, baseType: !3167, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3169)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3170, line: 230, size: 128, elements: !3171)
!3170 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3171 = !{!3172, !3181}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3169, file: !3170, line: 231, baseType: !3173, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!561, !3117, !3176, !469}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3170, line: 30, size: 128, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3177, file: !3170, line: 31, baseType: !213, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3177, file: !3170, line: 32, baseType: !414, size: 16, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3169, file: !3170, line: 232, baseType: !3182, size: 64, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!561, !3117, !3176, !213, !564}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3160, file: !3112, line: 141, baseType: !3186, size: 64, offset: 128)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3160, file: !3112, line: 142, baseType: !3188, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3191)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3170, line: 84, size: 320, elements: !3192)
!3192 = !{!3193, !3194, !3198, !3217, !3218}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3191, file: !3170, line: 85, baseType: !213, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3191, file: !3170, line: 86, baseType: !3195, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!414, !3117, !3176, !180}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3191, file: !3170, line: 88, baseType: !3199, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!414, !3117, !3202, !180}
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3170, line: 168, size: 448, elements: !3204)
!3204 = !{!3205, !3206, !3207, !3208, !3212, !3213}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3203, file: !3170, line: 169, baseType: !3177, size: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3203, file: !3170, line: 170, baseType: !564, size: 64, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3203, file: !3170, line: 171, baseType: !95, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3203, file: !3170, line: 172, baseType: !3209, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!561, !338, !3117, !3202, !469, !515, !564}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3203, file: !3170, line: 174, baseType: !3209, size: 64, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3203, file: !3170, line: 176, baseType: !3214, size: 64, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!180, !338, !3117, !3202, !960}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3191, file: !3170, line: 90, baseType: !3186, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3191, file: !3170, line: 91, baseType: !3219, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3160, file: !3112, line: 143, baseType: !3221, size: 64, offset: 256)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!3224, !3117}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3226)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !3227)
!3227 = !{!3228, !3229, !3233, !3237, !3245, !3249}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3226, file: !48, line: 40, baseType: !47, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3226, file: !48, line: 41, baseType: !3230, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!474}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3226, file: !48, line: 42, baseType: !3234, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!95}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3226, file: !48, line: 43, baseType: !3238, size: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!3241, !3243}
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3226, file: !48, line: 44, baseType: !3246, size: 64, offset: 256)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!3241}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3226, file: !48, line: 45, baseType: !451, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3160, file: !3112, line: 144, baseType: !3251, size: 64, offset: 320)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!3241, !3117}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3160, file: !3112, line: 145, baseType: !3255, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{null, !3117, !3258, !3259}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3111, file: !3112, line: 70, baseType: !3261, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !608, line: 123, size: 1024, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3392, !3393, !3394, !3395, !3396}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3262, file: !608, line: 124, baseType: !735, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3262, file: !608, line: 125, baseType: !735, size: 32, offset: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3262, file: !608, line: 135, baseType: !3261, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3262, file: !608, line: 136, baseType: !213, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3262, file: !608, line: 138, baseType: !748, size: 192, align: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3262, file: !608, line: 140, baseType: !3241, size: 64, offset: 384)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3262, file: !608, line: 141, baseType: !7, size: 32, offset: 448)
!3271 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !608, line: 142, baseType: !3272, size: 256, offset: 512)
!3272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3262, file: !608, line: 142, size: 256, elements: !3273)
!3273 = !{!3274, !3320, !3324}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3272, file: !608, line: 143, baseType: !3275, size: 192)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !608, line: 91, size: 192, elements: !3276)
!3276 = !{!3277, !3278, !3279}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3275, file: !608, line: 92, baseType: !178, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3275, file: !608, line: 94, baseType: !744, size: 64, offset: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3275, file: !608, line: 100, baseType: !3280, size: 64, offset: 128)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !608, line: 180, size: 704, elements: !3282)
!3282 = !{!3283, !3284, !3285, !3292, !3293, !3294, !3318, !3319}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3281, file: !608, line: 182, baseType: !3261, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3281, file: !608, line: 183, baseType: !7, size: 32, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3281, file: !608, line: 186, baseType: !3286, size: 192, offset: 128)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3287, line: 19, size: 192, elements: !3288)
!3287 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3288 = !{!3289, !3290, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3286, file: !3287, line: 20, baseType: !727, size: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3286, file: !3287, line: 21, baseType: !7, size: 32, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3286, file: !3287, line: 22, baseType: !7, size: 32, offset: 160)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3281, file: !608, line: 187, baseType: !205, size: 32, offset: 320)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3281, file: !608, line: 188, baseType: !205, size: 32, offset: 352)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3281, file: !608, line: 189, baseType: !3295, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !608, line: 168, size: 320, elements: !3297)
!3297 = !{!3298, !3302, !3306, !3310, !3314}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3296, file: !608, line: 169, baseType: !3299, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!180, !699, !3280}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3296, file: !608, line: 171, baseType: !3303, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!180, !3261, !213, !414}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3296, file: !608, line: 173, baseType: !3307, size: 64, offset: 128)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!180, !3261}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3296, file: !608, line: 174, baseType: !3311, size: 64, offset: 192)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!180, !3261, !3261, !213}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3296, file: !608, line: 176, baseType: !3315, size: 64, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!180, !699, !3261, !3280}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3281, file: !608, line: 192, baseType: !329, size: 128, offset: 448)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3281, file: !608, line: 194, baseType: !1368, size: 128, offset: 576)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3272, file: !608, line: 144, baseType: !3321, size: 64)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !608, line: 103, size: 64, elements: !3322)
!3322 = !{!3323}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3321, file: !608, line: 104, baseType: !3261, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3272, file: !608, line: 145, baseType: !3325, size: 256)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !608, line: 107, size: 256, elements: !3326)
!3326 = !{!3327, !3387, !3390, !3391}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3325, file: !608, line: 108, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3330)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !608, line: 217, size: 768, elements: !3331)
!3331 = !{!3332, !3352, !3356, !3360, !3364, !3368, !3372, !3376, !3377, !3378, !3379, !3383}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3330, file: !608, line: 222, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!180, !3336}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !608, line: 197, size: 1088, elements: !3338)
!3338 = !{!3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3337, file: !608, line: 199, baseType: !3261, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3337, file: !608, line: 200, baseType: !338, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3337, file: !608, line: 201, baseType: !699, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3337, file: !608, line: 202, baseType: !95, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3337, file: !608, line: 205, baseType: !299, size: 192, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3337, file: !608, line: 206, baseType: !299, size: 192, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3337, file: !608, line: 207, baseType: !180, size: 32, offset: 640)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3337, file: !608, line: 208, baseType: !329, size: 128, offset: 704)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3337, file: !608, line: 209, baseType: !469, size: 64, offset: 832)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3337, file: !608, line: 211, baseType: !564, size: 64, offset: 896)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3337, file: !608, line: 212, baseType: !474, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3337, file: !608, line: 213, baseType: !474, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3337, file: !608, line: 214, baseType: !988, size: 64, offset: 1024)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3330, file: !608, line: 223, baseType: !3353, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{null, !3336}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3330, file: !608, line: 236, baseType: !3357, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!180, !699, !95}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3330, file: !608, line: 238, baseType: !3361, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!95, !699, !2684}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3330, file: !608, line: 239, baseType: !3365, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!95, !699, !95, !2684}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3330, file: !608, line: 240, baseType: !3369, size: 64, offset: 320)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{null, !699, !95}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3330, file: !608, line: 242, baseType: !3373, size: 64, offset: 384)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{!561, !3336, !469, !564, !515}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3330, file: !608, line: 252, baseType: !564, size: 64, offset: 448)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3330, file: !608, line: 259, baseType: !474, size: 8, offset: 512)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3330, file: !608, line: 260, baseType: !3373, size: 64, offset: 576)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3330, file: !608, line: 263, baseType: !3380, size: 64, offset: 640)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!2713, !3336, !2715}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3330, file: !608, line: 266, baseType: !3384, size: 64, offset: 704)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!180, !3336, !960}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3325, file: !608, line: 109, baseType: !3388, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !608, line: 31, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3325, file: !608, line: 110, baseType: !515, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3325, file: !608, line: 111, baseType: !3261, size: 64, offset: 192)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3262, file: !608, line: 148, baseType: !95, size: 64, offset: 768)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3262, file: !608, line: 154, baseType: !403, size: 64, offset: 832)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3262, file: !608, line: 156, baseType: !112, size: 16, offset: 896)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3262, file: !608, line: 157, baseType: !414, size: 16, offset: 912)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3262, file: !608, line: 158, baseType: !3397, size: 64, offset: 960)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !608, line: 32, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3111, file: !3112, line: 71, baseType: !3400, size: 32, offset: 448)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3401, line: 19, size: 32, elements: !3402)
!3401 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3402 = !{!3403}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3400, file: !3401, line: 20, baseType: !1121, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3111, file: !3112, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3111, file: !3112, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3111, file: !3112, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3111, file: !3112, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3111, file: !3112, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3108, file: !60, line: 463, baseType: !3410, size: 64, offset: 512)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3108, file: !60, line: 465, baseType: !3412, size: 64, offset: 576)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3108, file: !60, line: 467, baseType: !213, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3108, file: !60, line: 468, baseType: !3416, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3418)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3426, !3431, !3435}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3418, file: !60, line: 88, baseType: !213, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3418, file: !60, line: 89, baseType: !3188, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3418, file: !60, line: 90, baseType: !3423, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!180, !3410, !3145}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3418, file: !60, line: 91, baseType: !3427, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!469, !3410, !3430, !3258, !3259}
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3418, file: !60, line: 93, baseType: !3432, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{null, !3410}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3418, file: !60, line: 95, baseType: !3436, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3438)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3439)
!3439 = !{!3440, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3438, file: !67, line: 279, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!180, !3410}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3438, file: !67, line: 280, baseType: !3432, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3438, file: !67, line: 281, baseType: !3441, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3438, file: !67, line: 282, baseType: !3441, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3438, file: !67, line: 283, baseType: !3441, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3438, file: !67, line: 284, baseType: !3441, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3438, file: !67, line: 285, baseType: !3441, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3438, file: !67, line: 286, baseType: !3441, size: 64, offset: 448)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3438, file: !67, line: 287, baseType: !3441, size: 64, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3438, file: !67, line: 288, baseType: !3441, size: 64, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3438, file: !67, line: 289, baseType: !3441, size: 64, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3438, file: !67, line: 290, baseType: !3441, size: 64, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3438, file: !67, line: 291, baseType: !3441, size: 64, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3438, file: !67, line: 292, baseType: !3441, size: 64, offset: 832)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3438, file: !67, line: 293, baseType: !3441, size: 64, offset: 896)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3438, file: !67, line: 294, baseType: !3441, size: 64, offset: 960)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3438, file: !67, line: 295, baseType: !3441, size: 64, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3438, file: !67, line: 296, baseType: !3441, size: 64, offset: 1088)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3438, file: !67, line: 297, baseType: !3441, size: 64, offset: 1152)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3438, file: !67, line: 298, baseType: !3441, size: 64, offset: 1216)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3438, file: !67, line: 299, baseType: !3441, size: 64, offset: 1280)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3438, file: !67, line: 300, baseType: !3441, size: 64, offset: 1344)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3438, file: !67, line: 301, baseType: !3441, size: 64, offset: 1408)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3108, file: !60, line: 470, baseType: !3467, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3469, line: 82, size: 1408, elements: !3470)
!3469 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3550, !3553, !3554}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3468, file: !3469, line: 83, baseType: !213, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3468, file: !3469, line: 84, baseType: !213, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3468, file: !3469, line: 85, baseType: !3410, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3468, file: !3469, line: 86, baseType: !3188, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3468, file: !3469, line: 87, baseType: !3188, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3468, file: !3469, line: 88, baseType: !3188, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3468, file: !3469, line: 90, baseType: !3478, size: 64, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!180, !3410, !3481}
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3488, !3489, !3490, !3502, !3514, !3515, !3516, !3517, !3518, !3526, !3527, !3528, !3529, !3530, !3531}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3482, file: !54, line: 96, baseType: !213, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3482, file: !54, line: 97, baseType: !3467, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3482, file: !54, line: 99, baseType: !622, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3482, file: !54, line: 100, baseType: !213, size: 64, offset: 192)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3482, file: !54, line: 102, baseType: !474, size: 8, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3482, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3482, file: !54, line: 105, baseType: !3491, size: 64, offset: 320)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3068, line: 262, size: 1600, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3501}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !3068, line: 263, baseType: !2508, size: 256)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3493, file: !3068, line: 264, baseType: !2508, size: 256, offset: 256)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3493, file: !3068, line: 265, baseType: !3498, size: 1024, offset: 512)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 1024, elements: !3499)
!3499 = !{!3500}
!3500 = !DISubrange(count: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3493, file: !3068, line: 266, baseType: !3241, size: 64, offset: 1536)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3482, file: !54, line: 106, baseType: !3503, size: 64, offset: 384)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3505)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3068, line: 210, size: 256, elements: !3506)
!3506 = !{!3507, !3511, !3512, !3513}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3505, file: !3068, line: 211, baseType: !3508, size: 72)
!3508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 72, elements: !3509)
!3509 = !{!3510}
!3510 = !DISubrange(count: 9)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3505, file: !3068, line: 212, baseType: !3071, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3505, file: !3068, line: 213, baseType: !157, size: 32, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3505, file: !3068, line: 214, baseType: !157, size: 32, offset: 224)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3482, file: !54, line: 108, baseType: !3441, size: 64, offset: 448)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3482, file: !54, line: 109, baseType: !3432, size: 64, offset: 512)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3482, file: !54, line: 110, baseType: !3441, size: 64, offset: 576)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3482, file: !54, line: 111, baseType: !3432, size: 64, offset: 640)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3482, file: !54, line: 112, baseType: !3519, size: 64, offset: 704)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!180, !3410, !3522}
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3523)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3524)
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3523, file: !67, line: 51, baseType: !180, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3482, file: !54, line: 113, baseType: !3441, size: 64, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3482, file: !54, line: 114, baseType: !3188, size: 64, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3482, file: !54, line: 115, baseType: !3188, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3482, file: !54, line: 117, baseType: !3436, size: 64, offset: 960)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3482, file: !54, line: 118, baseType: !3432, size: 64, offset: 1024)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3482, file: !54, line: 120, baseType: !3532, size: 64, offset: 1088)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3468, file: !3469, line: 91, baseType: !3423, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3468, file: !3469, line: 92, baseType: !3441, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3468, file: !3469, line: 93, baseType: !3432, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3468, file: !3469, line: 94, baseType: !3441, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3468, file: !3469, line: 95, baseType: !3432, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3468, file: !3469, line: 97, baseType: !3441, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3468, file: !3469, line: 98, baseType: !3441, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3468, file: !3469, line: 100, baseType: !3519, size: 64, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3468, file: !3469, line: 101, baseType: !3441, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3468, file: !3469, line: 103, baseType: !3441, size: 64, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3468, file: !3469, line: 105, baseType: !3441, size: 64, offset: 1088)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3468, file: !3469, line: 107, baseType: !3436, size: 64, offset: 1152)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3468, file: !3469, line: 109, baseType: !3547, size: 64, offset: 1216)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3549)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3469, line: 109, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3468, file: !3469, line: 111, baseType: !3551, size: 64, offset: 1280)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3469, line: 111, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3468, file: !3469, line: 112, baseType: !631, offset: 1344)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3468, file: !3469, line: 114, baseType: !474, size: 8, offset: 1344)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3108, file: !60, line: 471, baseType: !3481, size: 64, offset: 832)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3108, file: !60, line: 473, baseType: !95, size: 64, offset: 896)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3108, file: !60, line: 475, baseType: !95, size: 64, offset: 960)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3108, file: !60, line: 480, baseType: !299, size: 192, offset: 1024)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3108, file: !60, line: 484, baseType: !3560, size: 576, offset: 1216)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3567}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3560, file: !60, line: 362, baseType: !329, size: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3560, file: !60, line: 363, baseType: !329, size: 128, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3560, file: !60, line: 364, baseType: !329, size: 128, offset: 256)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3560, file: !60, line: 365, baseType: !329, size: 128, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3560, file: !60, line: 366, baseType: !474, size: 8, offset: 512)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3560, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3108, file: !60, line: 485, baseType: !3569, size: 2304, offset: 1792)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3655, !3659}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3569, file: !67, line: 566, baseType: !3522, size: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3569, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3569, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3569, file: !67, line: 569, baseType: !474, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3569, file: !67, line: 570, baseType: !474, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3569, file: !67, line: 571, baseType: !474, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3569, file: !67, line: 572, baseType: !474, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3569, file: !67, line: 573, baseType: !474, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3569, file: !67, line: 574, baseType: !474, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3569, file: !67, line: 575, baseType: !474, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3569, file: !67, line: 576, baseType: !474, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3569, file: !67, line: 577, baseType: !205, size: 32, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3569, file: !67, line: 578, baseType: !313, offset: 96)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3569, file: !67, line: 580, baseType: !329, size: 128, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3569, file: !67, line: 581, baseType: !1389, size: 192, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3569, file: !67, line: 582, baseType: !3587, size: 64, offset: 448)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3589, line: 43, size: 1472, elements: !3590)
!3589 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3590 = !{!3591, !3592, !3593, !3594, !3595, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612}
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3588, file: !3589, line: 44, baseType: !213, size: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3588, file: !3589, line: 45, baseType: !180, size: 32, offset: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3588, file: !3589, line: 46, baseType: !329, size: 128, offset: 128)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3588, file: !3589, line: 47, baseType: !313, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3588, file: !3589, line: 48, baseType: !3596, size: 64, offset: 256)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3588, file: !3589, line: 49, baseType: !188, size: 320, offset: 320)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3588, file: !3589, line: 50, baseType: !178, size: 64, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3588, file: !3589, line: 51, baseType: !1191, size: 64, offset: 704)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3588, file: !3589, line: 52, baseType: !1191, size: 64, offset: 768)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3588, file: !3589, line: 53, baseType: !1191, size: 64, offset: 832)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3588, file: !3589, line: 54, baseType: !1191, size: 64, offset: 896)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3588, file: !3589, line: 55, baseType: !1191, size: 64, offset: 960)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3588, file: !3589, line: 56, baseType: !178, size: 64, offset: 1024)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3588, file: !3589, line: 57, baseType: !178, size: 64, offset: 1088)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3588, file: !3589, line: 58, baseType: !178, size: 64, offset: 1152)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3588, file: !3589, line: 59, baseType: !178, size: 64, offset: 1216)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3588, file: !3589, line: 60, baseType: !178, size: 64, offset: 1280)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3588, file: !3589, line: 61, baseType: !3410, size: 64, offset: 1344)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3588, file: !3589, line: 62, baseType: !474, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3588, file: !3589, line: 63, baseType: !474, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3569, file: !67, line: 583, baseType: !474, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3569, file: !67, line: 584, baseType: !474, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3569, file: !67, line: 585, baseType: !474, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3569, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3569, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3569, file: !67, line: 592, baseType: !1183, size: 512, offset: 576)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3569, file: !67, line: 593, baseType: !403, size: 64, offset: 1088)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3569, file: !67, line: 594, baseType: !1843, size: 256, offset: 1152)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3569, file: !67, line: 595, baseType: !1368, size: 128, offset: 1408)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3569, file: !67, line: 596, baseType: !3596, size: 64, offset: 1536)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3569, file: !67, line: 597, baseType: !735, size: 32, offset: 1600)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3569, file: !67, line: 598, baseType: !735, size: 32, offset: 1632)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3569, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3569, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3569, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3569, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3569, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3569, file: !67, line: 604, baseType: !474, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3569, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3569, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3569, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3569, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3569, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3569, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3569, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3569, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3569, file: !67, line: 613, baseType: !180, size: 32, offset: 1792)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3569, file: !67, line: 614, baseType: !180, size: 32, offset: 1824)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3569, file: !67, line: 615, baseType: !403, size: 64, offset: 1856)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3569, file: !67, line: 616, baseType: !403, size: 64, offset: 1920)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3569, file: !67, line: 617, baseType: !403, size: 64, offset: 1984)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3569, file: !67, line: 618, baseType: !403, size: 64, offset: 2048)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3569, file: !67, line: 620, baseType: !3646, size: 64, offset: 2112)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3647, file: !67, line: 537, baseType: !313)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3647, file: !67, line: 538, baseType: !7, size: 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3647, file: !67, line: 540, baseType: !329, size: 128, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3647, file: !67, line: 543, baseType: !3653, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3569, file: !67, line: 621, baseType: !3656, size: 64, offset: 2176)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{null, !3410, !1331}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3569, file: !67, line: 622, baseType: !3660, size: 64, offset: 2240)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3108, file: !60, line: 486, baseType: !3663, size: 64, offset: 4096)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3672, !3673, !3674}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3664, file: !67, line: 643, baseType: !3438, size: 1472)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3664, file: !67, line: 644, baseType: !3441, size: 64, offset: 1472)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3664, file: !67, line: 645, baseType: !3669, size: 64, offset: 1536)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3410, !474}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3664, file: !67, line: 646, baseType: !3441, size: 64, offset: 1600)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3664, file: !67, line: 647, baseType: !3432, size: 64, offset: 1664)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3664, file: !67, line: 648, baseType: !3432, size: 64, offset: 1728)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3108, file: !60, line: 493, baseType: !3676, size: 64, offset: 4160)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3108, file: !60, line: 499, baseType: !329, size: 128, offset: 4224)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3108, file: !60, line: 502, baseType: !3680, size: 64, offset: 4352)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3682)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3108, file: !60, line: 504, baseType: !3684, size: 64, offset: 4416)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3108, file: !60, line: 505, baseType: !403, size: 64, offset: 4480)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3108, file: !60, line: 510, baseType: !403, size: 64, offset: 4544)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3108, file: !60, line: 511, baseType: !3688, size: 64, offset: 4608)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3690)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3108, file: !60, line: 513, baseType: !3692, size: 64, offset: 4672)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3694)
!3694 = !{!3695, !3696}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3693, file: !60, line: 293, baseType: !7, size: 32)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3693, file: !60, line: 294, baseType: !178, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3108, file: !60, line: 515, baseType: !329, size: 128, offset: 4736)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3108, file: !60, line: 526, baseType: !3699, offset: 4864)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3700, line: 5, elements: !327)
!3700 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3108, file: !60, line: 528, baseType: !3702, size: 64, offset: 4864)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3704, line: 14, flags: DIFlagFwdDecl)
!3704 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3108, file: !60, line: 529, baseType: !3706, size: 64, offset: 4928)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3469, line: 22, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3108, file: !60, line: 534, baseType: !497, size: 32, offset: 4992)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3108, file: !60, line: 535, baseType: !205, size: 32, offset: 5024)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3108, file: !60, line: 537, baseType: !313, offset: 5056)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3108, file: !60, line: 538, baseType: !329, size: 128, offset: 5056)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3108, file: !60, line: 540, baseType: !3713, size: 64, offset: 5184)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3715, line: 54, size: 960, elements: !3716)
!3715 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3722, !3723, !3727, !3731, !3732, !3733, !3734, !3738, !3742, !3743}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3714, file: !3715, line: 55, baseType: !213, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3714, file: !3715, line: 56, baseType: !622, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3714, file: !3715, line: 58, baseType: !3188, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3714, file: !3715, line: 59, baseType: !3188, size: 64, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3714, file: !3715, line: 60, baseType: !3117, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3714, file: !3715, line: 62, baseType: !3423, size: 64, offset: 320)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3714, file: !3715, line: 63, baseType: !3724, size: 64, offset: 384)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!469, !3410, !3430}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3714, file: !3715, line: 65, baseType: !3728, size: 64, offset: 448)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !3713}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3714, file: !3715, line: 66, baseType: !3432, size: 64, offset: 512)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3714, file: !3715, line: 68, baseType: !3441, size: 64, offset: 576)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3714, file: !3715, line: 70, baseType: !3224, size: 64, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3714, file: !3715, line: 71, baseType: !3735, size: 64, offset: 704)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!3241, !3410}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3714, file: !3715, line: 73, baseType: !3739, size: 64, offset: 768)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !3410, !3258, !3259}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3714, file: !3715, line: 75, baseType: !3436, size: 64, offset: 832)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3714, file: !3715, line: 77, baseType: !3551, size: 64, offset: 896)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3108, file: !60, line: 541, baseType: !3188, size: 64, offset: 5248)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3108, file: !60, line: 543, baseType: !3432, size: 64, offset: 5312)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3108, file: !60, line: 544, baseType: !3747, size: 64, offset: 5376)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3108, file: !60, line: 545, baseType: !3750, size: 64, offset: 5440)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3108, file: !60, line: 547, baseType: !474, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3108, file: !60, line: 548, baseType: !474, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3108, file: !60, line: 549, baseType: !474, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3108, file: !60, line: 550, baseType: !474, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !209, file: !210, line: 194, baseType: !329, size: 128, offset: 9792)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !209, file: !210, line: 195, baseType: !329, size: 128, offset: 9920)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !209, file: !210, line: 197, baseType: !7, size: 32, offset: 10048)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !209, file: !210, line: 198, baseType: !7, size: 32, offset: 10080)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !209, file: !210, line: 199, baseType: !3761, size: 64, offset: 10112)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !209, file: !210, line: 201, baseType: !474, size: 8, offset: 10176)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !209, file: !210, line: 203, baseType: !3764, size: 192, offset: 10240)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 192, elements: !637)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "play_effect", scope: !97, file: !3, line: 54, baseType: !3766, size: 64, offset: 6656)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!180, !208, !95, !105}
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !215)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!3773 = !{!0, !3774, !3779, !3784, !3789, !3796}
!3774 = !DIGlobalVariableExpression(var: !3775, expr: !DIExpression())
!3775 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license206", scope: !2, file: !3, line: 24, type: !3776, isLocal: true, isDefinition: true, align: 8)
!3776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 184, elements: !3777)
!3777 = !{!3778}
!3778 = !DISubrange(count: 23)
!3779 = !DIGlobalVariableExpression(var: !3780, expr: !DIExpression())
!3780 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author207", scope: !2, file: !3, line: 25, type: !3781, isLocal: true, isDefinition: true, align: 8)
!3781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 464, elements: !3782)
!3782 = !{!3783}
!3783 = !DISubrange(count: 58)
!3784 = !DIGlobalVariableExpression(var: !3785, expr: !DIExpression())
!3785 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description208", scope: !2, file: !3, line: 26, type: !3786, isLocal: true, isDefinition: true, align: 8)
!3786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 552, elements: !3787)
!3787 = !{!3788}
!3788 = !DISubrange(count: 69)
!3789 = !DIGlobalVariableExpression(var: !3790, expr: !DIExpression())
!3790 = distinct !DIGlobalVariable(name: "sin_table", scope: !2, file: !3791, line: 22, type: !3792, isLocal: true, isDefinition: true)
!3791 = !DIFile(filename: "./include/linux/fixp-arith.h", directory: "/home/lizy2001/genbc/linux")
!3792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3793, size: 2912, elements: !3794)
!3793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!3794 = !{!3795}
!3795 = !DISubrange(count: 91)
!3796 = !DIGlobalVariableExpression(var: !3797, expr: !DIExpression())
!3797 = distinct !DIGlobalVariable(name: "empty_envelope", scope: !3798, file: !3, line: 60, type: !3802, isLocal: true, isDefinition: true)
!3798 = distinct !DISubprogram(name: "get_envelope", scope: !3, file: !3, line: 58, type: !3799, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!3801, !3803}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!3805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 328, elements: !3806)
!3806 = !{!3807}
!3807 = !DISubrange(count: 41)
!3808 = !{!"rsp"}
!3809 = !{i32 7, !"Dwarf Version", i32 4}
!3810 = !{i32 2, !"Debug Info Version", i32 3}
!3811 = !{i32 1, !"wchar_size", i32 2}
!3812 = !{i32 1, !"Code Model", i32 2}
!3813 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3814 = distinct !DISubprogram(name: "input_ff_create_memless", scope: !3, file: !3, line: 510, type: !3815, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !327)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!180, !208, !95, !3766}
!3817 = !DILocalVariable(name: "dev", arg: 1, scope: !3814, file: !3, line: 510, type: !208)
!3818 = !DILocation(line: 510, column: 47, scope: !3814)
!3819 = !DILocalVariable(name: "data", arg: 2, scope: !3814, file: !3, line: 510, type: !95)
!3820 = !DILocation(line: 510, column: 58, scope: !3814)
!3821 = !DILocalVariable(name: "play_effect", arg: 3, scope: !3814, file: !3, line: 511, type: !3766)
!3822 = !DILocation(line: 511, column: 9, scope: !3814)
!3823 = !DILocalVariable(name: "ml", scope: !3814, file: !3, line: 513, type: !96)
!3824 = !DILocation(line: 513, column: 20, scope: !3814)
!3825 = !DILocalVariable(name: "ff", scope: !3814, file: !3, line: 514, type: !271)
!3826 = !DILocation(line: 514, column: 20, scope: !3814)
!3827 = !DILocalVariable(name: "error", scope: !3814, file: !3, line: 515, type: !180)
!3828 = !DILocation(line: 515, column: 6, scope: !3814)
!3829 = !DILocalVariable(name: "i", scope: !3814, file: !3, line: 516, type: !180)
!3830 = !DILocation(line: 516, column: 6, scope: !3814)
!3831 = !DILocation(line: 518, column: 7, scope: !3814)
!3832 = !DILocation(line: 518, column: 5, scope: !3814)
!3833 = !DILocation(line: 519, column: 7, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 519, column: 6)
!3835 = !DILocation(line: 519, column: 6, scope: !3814)
!3836 = !DILocation(line: 520, column: 3, scope: !3834)
!3837 = !DILocation(line: 522, column: 12, scope: !3814)
!3838 = !DILocation(line: 522, column: 2, scope: !3814)
!3839 = !DILocation(line: 522, column: 6, scope: !3814)
!3840 = !DILocation(line: 522, column: 10, scope: !3814)
!3841 = !DILocation(line: 523, column: 16, scope: !3814)
!3842 = !DILocation(line: 523, column: 2, scope: !3814)
!3843 = !DILocation(line: 523, column: 6, scope: !3814)
!3844 = !DILocation(line: 523, column: 14, scope: !3814)
!3845 = !DILocation(line: 524, column: 20, scope: !3814)
!3846 = !DILocation(line: 524, column: 2, scope: !3814)
!3847 = !DILocation(line: 524, column: 6, scope: !3814)
!3848 = !DILocation(line: 524, column: 18, scope: !3814)
!3849 = !DILocation(line: 525, column: 2, scope: !3814)
!3850 = !DILocation(line: 525, column: 6, scope: !3814)
!3851 = !DILocation(line: 525, column: 11, scope: !3814)
!3852 = !DILocation(line: 526, column: 2, scope: !3814)
!3853 = !DILocation(line: 528, column: 19, scope: !3814)
!3854 = !DILocation(line: 528, column: 24, scope: !3814)
!3855 = !DILocation(line: 528, column: 2, scope: !3814)
!3856 = !DILocation(line: 530, column: 26, scope: !3814)
!3857 = !DILocation(line: 530, column: 10, scope: !3814)
!3858 = !DILocation(line: 530, column: 8, scope: !3814)
!3859 = !DILocation(line: 531, column: 6, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 531, column: 6)
!3861 = !DILocation(line: 531, column: 6, scope: !3814)
!3862 = !DILocation(line: 532, column: 9, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3860, file: !3, line: 531, column: 13)
!3864 = !DILocation(line: 532, column: 3, scope: !3863)
!3865 = !DILocation(line: 533, column: 10, scope: !3863)
!3866 = !DILocation(line: 533, column: 3, scope: !3863)
!3867 = !DILocation(line: 536, column: 7, scope: !3814)
!3868 = !DILocation(line: 536, column: 12, scope: !3814)
!3869 = !DILocation(line: 536, column: 5, scope: !3814)
!3870 = !DILocation(line: 537, column: 16, scope: !3814)
!3871 = !DILocation(line: 537, column: 2, scope: !3814)
!3872 = !DILocation(line: 537, column: 6, scope: !3814)
!3873 = !DILocation(line: 537, column: 14, scope: !3814)
!3874 = !DILocation(line: 538, column: 2, scope: !3814)
!3875 = !DILocation(line: 538, column: 6, scope: !3814)
!3876 = !DILocation(line: 538, column: 13, scope: !3814)
!3877 = !DILocation(line: 539, column: 2, scope: !3814)
!3878 = !DILocation(line: 539, column: 6, scope: !3814)
!3879 = !DILocation(line: 539, column: 15, scope: !3814)
!3880 = !DILocation(line: 540, column: 2, scope: !3814)
!3881 = !DILocation(line: 540, column: 6, scope: !3814)
!3882 = !DILocation(line: 540, column: 15, scope: !3814)
!3883 = !DILocation(line: 541, column: 2, scope: !3814)
!3884 = !DILocation(line: 541, column: 6, scope: !3814)
!3885 = !DILocation(line: 541, column: 14, scope: !3814)
!3886 = !DILocation(line: 544, column: 26, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 544, column: 6)
!3888 = !DILocation(line: 544, column: 30, scope: !3887)
!3889 = !DILocation(line: 544, column: 6, scope: !3887)
!3890 = !DILocation(line: 544, column: 6, scope: !3814)
!3891 = !DILocation(line: 545, column: 24, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 544, column: 38)
!3893 = !DILocation(line: 545, column: 29, scope: !3892)
!3894 = !DILocation(line: 545, column: 3, scope: !3892)
!3895 = !DILocation(line: 546, column: 20, scope: !3892)
!3896 = !DILocation(line: 546, column: 25, scope: !3892)
!3897 = !DILocation(line: 546, column: 3, scope: !3892)
!3898 = !DILocation(line: 547, column: 24, scope: !3892)
!3899 = !DILocation(line: 547, column: 29, scope: !3892)
!3900 = !DILocation(line: 547, column: 3, scope: !3892)
!3901 = !DILocation(line: 548, column: 22, scope: !3892)
!3902 = !DILocation(line: 548, column: 27, scope: !3892)
!3903 = !DILocation(line: 548, column: 3, scope: !3892)
!3904 = !DILocation(line: 549, column: 2, scope: !3892)
!3905 = !DILocation(line: 551, column: 9, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 551, column: 2)
!3907 = !DILocation(line: 551, column: 7, scope: !3906)
!3908 = !DILocation(line: 551, column: 14, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 551, column: 2)
!3910 = !DILocation(line: 551, column: 16, scope: !3909)
!3911 = !DILocation(line: 551, column: 2, scope: !3906)
!3912 = !DILocation(line: 552, column: 27, scope: !3909)
!3913 = !DILocation(line: 552, column: 31, scope: !3909)
!3914 = !DILocation(line: 552, column: 39, scope: !3909)
!3915 = !DILocation(line: 552, column: 3, scope: !3909)
!3916 = !DILocation(line: 552, column: 7, scope: !3909)
!3917 = !DILocation(line: 552, column: 14, scope: !3909)
!3918 = !DILocation(line: 552, column: 17, scope: !3909)
!3919 = !DILocation(line: 552, column: 24, scope: !3909)
!3920 = !DILocation(line: 551, column: 39, scope: !3909)
!3921 = !DILocation(line: 551, column: 2, scope: !3909)
!3922 = distinct !{!3922, !3911, !3923}
!3923 = !DILocation(line: 552, column: 40, scope: !3906)
!3924 = !DILocation(line: 554, column: 2, scope: !3814)
!3925 = !DILocation(line: 555, column: 1, scope: !3814)
!3926 = distinct !DISubprogram(name: "kzalloc", scope: !81, file: !81, line: 662, type: !3927, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!95, !564, !93}
!3929 = !DILocalVariable(name: "s", arg: 1, scope: !3930, file: !81, line: 445, type: !914)
!3930 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !81, file: !81, line: 445, type: !3931, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!95, !914, !93, !564}
!3933 = !DILocation(line: 445, column: 72, scope: !3930, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 552, column: 10, scope: !3935, inlinedAt: !3938)
!3935 = distinct !DILexicalBlock(scope: !3936, file: !81, line: 540, column: 34)
!3936 = distinct !DILexicalBlock(scope: !3937, file: !81, line: 540, column: 6)
!3937 = distinct !DISubprogram(name: "kmalloc", scope: !81, file: !81, line: 538, type: !3927, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!3938 = distinct !DILocation(line: 664, column: 9, scope: !3926)
!3939 = !DILocalVariable(name: "flags", arg: 2, scope: !3930, file: !81, line: 446, type: !93)
!3940 = !DILocation(line: 446, column: 9, scope: !3930, inlinedAt: !3934)
!3941 = !DILocalVariable(name: "size", arg: 3, scope: !3930, file: !81, line: 446, type: !564)
!3942 = !DILocation(line: 446, column: 23, scope: !3930, inlinedAt: !3934)
!3943 = !DILocalVariable(name: "ret", scope: !3930, file: !81, line: 448, type: !95)
!3944 = !DILocation(line: 448, column: 8, scope: !3930, inlinedAt: !3934)
!3945 = !DILocalVariable(name: "flags", arg: 1, scope: !3946, file: !81, line: 318, type: !93)
!3946 = distinct !DISubprogram(name: "kmalloc_type", scope: !81, file: !81, line: 318, type: !3947, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!80, !93}
!3949 = !DILocation(line: 318, column: 67, scope: !3946, inlinedAt: !3950)
!3950 = distinct !DILocation(line: 553, column: 20, scope: !3935, inlinedAt: !3938)
!3951 = !DILocalVariable(name: "size", arg: 1, scope: !3952, file: !81, line: 346, type: !564)
!3952 = distinct !DISubprogram(name: "kmalloc_index", scope: !81, file: !81, line: 346, type: !3953, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!7, !564}
!3955 = !DILocation(line: 346, column: 58, scope: !3952, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 547, column: 11, scope: !3935, inlinedAt: !3938)
!3957 = !DILocalVariable(name: "size", arg: 1, scope: !3958, file: !81, line: 472, type: !564)
!3958 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !81, file: !81, line: 472, type: !3959, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!95, !564, !93, !7}
!3961 = !DILocation(line: 472, column: 28, scope: !3958, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 481, column: 9, scope: !3963, inlinedAt: !3964)
!3963 = distinct !DISubprogram(name: "kmalloc_large", scope: !81, file: !81, line: 478, type: !3927, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!3964 = distinct !DILocation(line: 545, column: 11, scope: !3965, inlinedAt: !3938)
!3965 = distinct !DILexicalBlock(scope: !3935, file: !81, line: 544, column: 7)
!3966 = !DILocalVariable(name: "flags", arg: 2, scope: !3958, file: !81, line: 472, type: !93)
!3967 = !DILocation(line: 472, column: 40, scope: !3958, inlinedAt: !3962)
!3968 = !DILocalVariable(name: "order", arg: 3, scope: !3958, file: !81, line: 472, type: !7)
!3969 = !DILocation(line: 472, column: 60, scope: !3958, inlinedAt: !3962)
!3970 = !DILocalVariable(name: "size", arg: 1, scope: !3963, file: !81, line: 478, type: !564)
!3971 = !DILocation(line: 478, column: 51, scope: !3963, inlinedAt: !3964)
!3972 = !DILocalVariable(name: "flags", arg: 2, scope: !3963, file: !81, line: 478, type: !93)
!3973 = !DILocation(line: 478, column: 63, scope: !3963, inlinedAt: !3964)
!3974 = !DILocalVariable(name: "order", scope: !3963, file: !81, line: 480, type: !7)
!3975 = !DILocation(line: 480, column: 15, scope: !3963, inlinedAt: !3964)
!3976 = !DILocalVariable(name: "size", arg: 1, scope: !3937, file: !81, line: 538, type: !564)
!3977 = !DILocation(line: 538, column: 45, scope: !3937, inlinedAt: !3938)
!3978 = !DILocalVariable(name: "flags", arg: 2, scope: !3937, file: !81, line: 538, type: !93)
!3979 = !DILocation(line: 538, column: 57, scope: !3937, inlinedAt: !3938)
!3980 = !DILocalVariable(name: "index", scope: !3935, file: !81, line: 542, type: !7)
!3981 = !DILocation(line: 542, column: 16, scope: !3935, inlinedAt: !3938)
!3982 = !DILocalVariable(name: "size", arg: 1, scope: !3926, file: !81, line: 662, type: !564)
!3983 = !DILocation(line: 662, column: 36, scope: !3926)
!3984 = !DILocalVariable(name: "flags", arg: 2, scope: !3926, file: !81, line: 662, type: !93)
!3985 = !DILocation(line: 662, column: 48, scope: !3926)
!3986 = !DILocation(line: 664, column: 17, scope: !3926)
!3987 = !DILocation(line: 664, column: 23, scope: !3926)
!3988 = !DILocation(line: 664, column: 29, scope: !3926)
!3989 = !DILocation(line: 540, column: 27, scope: !3936, inlinedAt: !3938)
!3990 = !DILocation(line: 540, column: 6, scope: !3936, inlinedAt: !3938)
!3991 = !DILocation(line: 540, column: 6, scope: !3937, inlinedAt: !3938)
!3992 = !DILocation(line: 544, column: 7, scope: !3965, inlinedAt: !3938)
!3993 = !DILocation(line: 544, column: 12, scope: !3965, inlinedAt: !3938)
!3994 = !DILocation(line: 544, column: 7, scope: !3935, inlinedAt: !3938)
!3995 = !DILocation(line: 545, column: 25, scope: !3965, inlinedAt: !3938)
!3996 = !DILocation(line: 545, column: 31, scope: !3965, inlinedAt: !3938)
!3997 = !DILocation(line: 480, column: 33, scope: !3963, inlinedAt: !3964)
!3998 = !DILocation(line: 480, column: 23, scope: !3963, inlinedAt: !3964)
!3999 = !DILocation(line: 481, column: 29, scope: !3963, inlinedAt: !3964)
!4000 = !DILocation(line: 481, column: 35, scope: !3963, inlinedAt: !3964)
!4001 = !DILocation(line: 481, column: 42, scope: !3963, inlinedAt: !3964)
!4002 = !DILocation(line: 474, column: 23, scope: !3958, inlinedAt: !3962)
!4003 = !DILocation(line: 474, column: 29, scope: !3958, inlinedAt: !3962)
!4004 = !DILocation(line: 474, column: 36, scope: !3958, inlinedAt: !3962)
!4005 = !DILocation(line: 474, column: 9, scope: !3958, inlinedAt: !3962)
!4006 = !DILocation(line: 545, column: 4, scope: !3965, inlinedAt: !3938)
!4007 = !DILocation(line: 547, column: 25, scope: !3935, inlinedAt: !3938)
!4008 = !DILocation(line: 348, column: 7, scope: !4009, inlinedAt: !3956)
!4009 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 348, column: 6)
!4010 = !DILocation(line: 348, column: 6, scope: !3952, inlinedAt: !3956)
!4011 = !DILocation(line: 349, column: 3, scope: !4009, inlinedAt: !3956)
!4012 = !DILocation(line: 351, column: 6, scope: !4013, inlinedAt: !3956)
!4013 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 351, column: 6)
!4014 = !DILocation(line: 351, column: 11, scope: !4013, inlinedAt: !3956)
!4015 = !DILocation(line: 351, column: 6, scope: !3952, inlinedAt: !3956)
!4016 = !DILocation(line: 352, column: 3, scope: !4013, inlinedAt: !3956)
!4017 = !DILocation(line: 354, column: 32, scope: !4018, inlinedAt: !3956)
!4018 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 354, column: 6)
!4019 = !DILocation(line: 354, column: 37, scope: !4018, inlinedAt: !3956)
!4020 = !DILocation(line: 354, column: 42, scope: !4018, inlinedAt: !3956)
!4021 = !DILocation(line: 354, column: 45, scope: !4018, inlinedAt: !3956)
!4022 = !DILocation(line: 354, column: 50, scope: !4018, inlinedAt: !3956)
!4023 = !DILocation(line: 354, column: 6, scope: !3952, inlinedAt: !3956)
!4024 = !DILocation(line: 355, column: 3, scope: !4018, inlinedAt: !3956)
!4025 = !DILocation(line: 356, column: 32, scope: !4026, inlinedAt: !3956)
!4026 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 356, column: 6)
!4027 = !DILocation(line: 356, column: 37, scope: !4026, inlinedAt: !3956)
!4028 = !DILocation(line: 356, column: 43, scope: !4026, inlinedAt: !3956)
!4029 = !DILocation(line: 356, column: 46, scope: !4026, inlinedAt: !3956)
!4030 = !DILocation(line: 356, column: 51, scope: !4026, inlinedAt: !3956)
!4031 = !DILocation(line: 356, column: 6, scope: !3952, inlinedAt: !3956)
!4032 = !DILocation(line: 357, column: 3, scope: !4026, inlinedAt: !3956)
!4033 = !DILocation(line: 358, column: 6, scope: !4034, inlinedAt: !3956)
!4034 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 358, column: 6)
!4035 = !DILocation(line: 358, column: 11, scope: !4034, inlinedAt: !3956)
!4036 = !DILocation(line: 358, column: 6, scope: !3952, inlinedAt: !3956)
!4037 = !DILocation(line: 358, column: 26, scope: !4034, inlinedAt: !3956)
!4038 = !DILocation(line: 359, column: 6, scope: !4039, inlinedAt: !3956)
!4039 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 359, column: 6)
!4040 = !DILocation(line: 359, column: 11, scope: !4039, inlinedAt: !3956)
!4041 = !DILocation(line: 359, column: 6, scope: !3952, inlinedAt: !3956)
!4042 = !DILocation(line: 359, column: 26, scope: !4039, inlinedAt: !3956)
!4043 = !DILocation(line: 360, column: 6, scope: !4044, inlinedAt: !3956)
!4044 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 360, column: 6)
!4045 = !DILocation(line: 360, column: 11, scope: !4044, inlinedAt: !3956)
!4046 = !DILocation(line: 360, column: 6, scope: !3952, inlinedAt: !3956)
!4047 = !DILocation(line: 360, column: 26, scope: !4044, inlinedAt: !3956)
!4048 = !DILocation(line: 361, column: 6, scope: !4049, inlinedAt: !3956)
!4049 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 361, column: 6)
!4050 = !DILocation(line: 361, column: 11, scope: !4049, inlinedAt: !3956)
!4051 = !DILocation(line: 361, column: 6, scope: !3952, inlinedAt: !3956)
!4052 = !DILocation(line: 361, column: 26, scope: !4049, inlinedAt: !3956)
!4053 = !DILocation(line: 362, column: 6, scope: !4054, inlinedAt: !3956)
!4054 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 362, column: 6)
!4055 = !DILocation(line: 362, column: 11, scope: !4054, inlinedAt: !3956)
!4056 = !DILocation(line: 362, column: 6, scope: !3952, inlinedAt: !3956)
!4057 = !DILocation(line: 362, column: 26, scope: !4054, inlinedAt: !3956)
!4058 = !DILocation(line: 363, column: 6, scope: !4059, inlinedAt: !3956)
!4059 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 363, column: 6)
!4060 = !DILocation(line: 363, column: 11, scope: !4059, inlinedAt: !3956)
!4061 = !DILocation(line: 363, column: 6, scope: !3952, inlinedAt: !3956)
!4062 = !DILocation(line: 363, column: 26, scope: !4059, inlinedAt: !3956)
!4063 = !DILocation(line: 364, column: 6, scope: !4064, inlinedAt: !3956)
!4064 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 364, column: 6)
!4065 = !DILocation(line: 364, column: 11, scope: !4064, inlinedAt: !3956)
!4066 = !DILocation(line: 364, column: 6, scope: !3952, inlinedAt: !3956)
!4067 = !DILocation(line: 364, column: 26, scope: !4064, inlinedAt: !3956)
!4068 = !DILocation(line: 365, column: 6, scope: !4069, inlinedAt: !3956)
!4069 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 365, column: 6)
!4070 = !DILocation(line: 365, column: 11, scope: !4069, inlinedAt: !3956)
!4071 = !DILocation(line: 365, column: 6, scope: !3952, inlinedAt: !3956)
!4072 = !DILocation(line: 365, column: 26, scope: !4069, inlinedAt: !3956)
!4073 = !DILocation(line: 366, column: 6, scope: !4074, inlinedAt: !3956)
!4074 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 366, column: 6)
!4075 = !DILocation(line: 366, column: 11, scope: !4074, inlinedAt: !3956)
!4076 = !DILocation(line: 366, column: 6, scope: !3952, inlinedAt: !3956)
!4077 = !DILocation(line: 366, column: 26, scope: !4074, inlinedAt: !3956)
!4078 = !DILocation(line: 367, column: 6, scope: !4079, inlinedAt: !3956)
!4079 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 367, column: 6)
!4080 = !DILocation(line: 367, column: 11, scope: !4079, inlinedAt: !3956)
!4081 = !DILocation(line: 367, column: 6, scope: !3952, inlinedAt: !3956)
!4082 = !DILocation(line: 367, column: 26, scope: !4079, inlinedAt: !3956)
!4083 = !DILocation(line: 368, column: 6, scope: !4084, inlinedAt: !3956)
!4084 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 368, column: 6)
!4085 = !DILocation(line: 368, column: 11, scope: !4084, inlinedAt: !3956)
!4086 = !DILocation(line: 368, column: 6, scope: !3952, inlinedAt: !3956)
!4087 = !DILocation(line: 368, column: 26, scope: !4084, inlinedAt: !3956)
!4088 = !DILocation(line: 369, column: 6, scope: !4089, inlinedAt: !3956)
!4089 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 369, column: 6)
!4090 = !DILocation(line: 369, column: 11, scope: !4089, inlinedAt: !3956)
!4091 = !DILocation(line: 369, column: 6, scope: !3952, inlinedAt: !3956)
!4092 = !DILocation(line: 369, column: 26, scope: !4089, inlinedAt: !3956)
!4093 = !DILocation(line: 370, column: 6, scope: !4094, inlinedAt: !3956)
!4094 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 370, column: 6)
!4095 = !DILocation(line: 370, column: 11, scope: !4094, inlinedAt: !3956)
!4096 = !DILocation(line: 370, column: 6, scope: !3952, inlinedAt: !3956)
!4097 = !DILocation(line: 370, column: 26, scope: !4094, inlinedAt: !3956)
!4098 = !DILocation(line: 371, column: 6, scope: !4099, inlinedAt: !3956)
!4099 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 371, column: 6)
!4100 = !DILocation(line: 371, column: 11, scope: !4099, inlinedAt: !3956)
!4101 = !DILocation(line: 371, column: 6, scope: !3952, inlinedAt: !3956)
!4102 = !DILocation(line: 371, column: 26, scope: !4099, inlinedAt: !3956)
!4103 = !DILocation(line: 372, column: 6, scope: !4104, inlinedAt: !3956)
!4104 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 372, column: 6)
!4105 = !DILocation(line: 372, column: 11, scope: !4104, inlinedAt: !3956)
!4106 = !DILocation(line: 372, column: 6, scope: !3952, inlinedAt: !3956)
!4107 = !DILocation(line: 372, column: 26, scope: !4104, inlinedAt: !3956)
!4108 = !DILocation(line: 373, column: 6, scope: !4109, inlinedAt: !3956)
!4109 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 373, column: 6)
!4110 = !DILocation(line: 373, column: 11, scope: !4109, inlinedAt: !3956)
!4111 = !DILocation(line: 373, column: 6, scope: !3952, inlinedAt: !3956)
!4112 = !DILocation(line: 373, column: 26, scope: !4109, inlinedAt: !3956)
!4113 = !DILocation(line: 374, column: 6, scope: !4114, inlinedAt: !3956)
!4114 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 374, column: 6)
!4115 = !DILocation(line: 374, column: 11, scope: !4114, inlinedAt: !3956)
!4116 = !DILocation(line: 374, column: 6, scope: !3952, inlinedAt: !3956)
!4117 = !DILocation(line: 374, column: 26, scope: !4114, inlinedAt: !3956)
!4118 = !DILocation(line: 375, column: 6, scope: !4119, inlinedAt: !3956)
!4119 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 375, column: 6)
!4120 = !DILocation(line: 375, column: 11, scope: !4119, inlinedAt: !3956)
!4121 = !DILocation(line: 375, column: 6, scope: !3952, inlinedAt: !3956)
!4122 = !DILocation(line: 375, column: 27, scope: !4119, inlinedAt: !3956)
!4123 = !DILocation(line: 376, column: 6, scope: !4124, inlinedAt: !3956)
!4124 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 376, column: 6)
!4125 = !DILocation(line: 376, column: 11, scope: !4124, inlinedAt: !3956)
!4126 = !DILocation(line: 376, column: 6, scope: !3952, inlinedAt: !3956)
!4127 = !DILocation(line: 376, column: 32, scope: !4124, inlinedAt: !3956)
!4128 = !DILocation(line: 377, column: 6, scope: !4129, inlinedAt: !3956)
!4129 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 377, column: 6)
!4130 = !DILocation(line: 377, column: 11, scope: !4129, inlinedAt: !3956)
!4131 = !DILocation(line: 377, column: 6, scope: !3952, inlinedAt: !3956)
!4132 = !DILocation(line: 377, column: 32, scope: !4129, inlinedAt: !3956)
!4133 = !DILocation(line: 378, column: 6, scope: !4134, inlinedAt: !3956)
!4134 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 378, column: 6)
!4135 = !DILocation(line: 378, column: 11, scope: !4134, inlinedAt: !3956)
!4136 = !DILocation(line: 378, column: 6, scope: !3952, inlinedAt: !3956)
!4137 = !DILocation(line: 378, column: 32, scope: !4134, inlinedAt: !3956)
!4138 = !DILocation(line: 379, column: 6, scope: !4139, inlinedAt: !3956)
!4139 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 379, column: 6)
!4140 = !DILocation(line: 379, column: 11, scope: !4139, inlinedAt: !3956)
!4141 = !DILocation(line: 379, column: 6, scope: !3952, inlinedAt: !3956)
!4142 = !DILocation(line: 379, column: 33, scope: !4139, inlinedAt: !3956)
!4143 = !DILocation(line: 380, column: 6, scope: !4144, inlinedAt: !3956)
!4144 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 380, column: 6)
!4145 = !DILocation(line: 380, column: 11, scope: !4144, inlinedAt: !3956)
!4146 = !DILocation(line: 380, column: 6, scope: !3952, inlinedAt: !3956)
!4147 = !DILocation(line: 380, column: 33, scope: !4144, inlinedAt: !3956)
!4148 = !DILocation(line: 381, column: 6, scope: !4149, inlinedAt: !3956)
!4149 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 381, column: 6)
!4150 = !DILocation(line: 381, column: 11, scope: !4149, inlinedAt: !3956)
!4151 = !DILocation(line: 381, column: 6, scope: !3952, inlinedAt: !3956)
!4152 = !DILocation(line: 381, column: 33, scope: !4149, inlinedAt: !3956)
!4153 = !DILocation(line: 382, column: 2, scope: !4154, inlinedAt: !3956)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !81, line: 382, column: 2)
!4155 = distinct !DILexicalBlock(scope: !3952, file: !81, line: 382, column: 2)
!4156 = !{i32 -2144640876, i32 -2144640847, i32 -2144640801, i32 -2144640743, i32 -2144640689, i32 -2144640635, i32 -2144640580, i32 -2144640549}
!4157 = !DILocation(line: 382, column: 2, scope: !4158, inlinedAt: !3956)
!4158 = distinct !DILexicalBlock(scope: !4159, file: !81, line: 382, column: 2)
!4159 = distinct !DILexicalBlock(scope: !4155, file: !81, line: 382, column: 2)
!4160 = !{i32 -2144640106, i32 -2144640099, i32 -2144640045, i32 -2144640014, i32 -2144639984}
!4161 = !DILocation(line: 382, column: 2, scope: !4159, inlinedAt: !3956)
!4162 = !DILocation(line: 386, column: 1, scope: !3952, inlinedAt: !3956)
!4163 = !DILocation(line: 547, column: 9, scope: !3935, inlinedAt: !3938)
!4164 = !DILocation(line: 549, column: 8, scope: !4165, inlinedAt: !3938)
!4165 = distinct !DILexicalBlock(scope: !3935, file: !81, line: 549, column: 7)
!4166 = !DILocation(line: 549, column: 7, scope: !3935, inlinedAt: !3938)
!4167 = !DILocation(line: 550, column: 4, scope: !4165, inlinedAt: !3938)
!4168 = !DILocation(line: 553, column: 33, scope: !3935, inlinedAt: !3938)
!4169 = !DILocation(line: 325, column: 6, scope: !4170, inlinedAt: !3950)
!4170 = distinct !DILexicalBlock(scope: !3946, file: !81, line: 325, column: 6)
!4171 = !DILocation(line: 325, column: 6, scope: !3946, inlinedAt: !3950)
!4172 = !DILocation(line: 326, column: 3, scope: !4170, inlinedAt: !3950)
!4173 = !DILocation(line: 332, column: 9, scope: !3946, inlinedAt: !3950)
!4174 = !DILocation(line: 332, column: 15, scope: !3946, inlinedAt: !3950)
!4175 = !DILocation(line: 332, column: 2, scope: !3946, inlinedAt: !3950)
!4176 = !DILocation(line: 336, column: 1, scope: !3946, inlinedAt: !3950)
!4177 = !DILocation(line: 553, column: 5, scope: !3935, inlinedAt: !3938)
!4178 = !DILocation(line: 553, column: 41, scope: !3935, inlinedAt: !3938)
!4179 = !DILocation(line: 554, column: 5, scope: !3935, inlinedAt: !3938)
!4180 = !DILocation(line: 554, column: 12, scope: !3935, inlinedAt: !3938)
!4181 = !DILocation(line: 448, column: 31, scope: !3930, inlinedAt: !3934)
!4182 = !DILocation(line: 448, column: 34, scope: !3930, inlinedAt: !3934)
!4183 = !DILocation(line: 448, column: 14, scope: !3930, inlinedAt: !3934)
!4184 = !DILocation(line: 450, column: 22, scope: !3930, inlinedAt: !3934)
!4185 = !DILocation(line: 450, column: 25, scope: !3930, inlinedAt: !3934)
!4186 = !DILocation(line: 450, column: 30, scope: !3930, inlinedAt: !3934)
!4187 = !DILocation(line: 450, column: 36, scope: !3930, inlinedAt: !3934)
!4188 = !DILocation(line: 450, column: 8, scope: !3930, inlinedAt: !3934)
!4189 = !DILocation(line: 450, column: 6, scope: !3930, inlinedAt: !3934)
!4190 = !DILocation(line: 451, column: 9, scope: !3930, inlinedAt: !3934)
!4191 = !DILocation(line: 552, column: 3, scope: !3935, inlinedAt: !3938)
!4192 = !DILocation(line: 557, column: 19, scope: !3937, inlinedAt: !3938)
!4193 = !DILocation(line: 557, column: 25, scope: !3937, inlinedAt: !3938)
!4194 = !DILocation(line: 557, column: 9, scope: !3937, inlinedAt: !3938)
!4195 = !DILocation(line: 557, column: 2, scope: !3937, inlinedAt: !3938)
!4196 = !DILocation(line: 558, column: 1, scope: !3937, inlinedAt: !3938)
!4197 = !DILocation(line: 664, column: 2, scope: !3926)
!4198 = distinct !DISubprogram(name: "ml_effect_timer", scope: !3, file: !3, line: 403, type: !201, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4199 = !DILocalVariable(name: "lock", arg: 1, scope: !4200, file: !4201, line: 407, type: !4204)
!4200 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4201, file: !4201, line: 407, type: !4202, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4201 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !4204, !178}
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!4205 = !DILocation(line: 407, column: 64, scope: !4200, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 413, column: 2, scope: !4198)
!4207 = !DILocalVariable(name: "flags", arg: 2, scope: !4200, file: !4201, line: 407, type: !178)
!4208 = !DILocation(line: 407, column: 84, scope: !4200, inlinedAt: !4206)
!4209 = !DILocalVariable(name: "lock", arg: 1, scope: !4210, file: !4201, line: 327, type: !4204)
!4210 = distinct !DISubprogram(name: "spinlock_check", scope: !4201, file: !4201, line: 327, type: !4211, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!4213, !4204}
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!4214 = !DILocation(line: 327, column: 67, scope: !4210, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 411, column: 2, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 411, column: 2)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 411, column: 2)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 411, column: 2)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 411, column: 2)
!4220 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 411, column: 2)
!4221 = !DILocalVariable(name: "t", arg: 1, scope: !4198, file: !3, line: 403, type: !203)
!4222 = !DILocation(line: 403, column: 48, scope: !4198)
!4223 = !DILocalVariable(name: "ml", scope: !4198, file: !3, line: 405, type: !96)
!4224 = !DILocation(line: 405, column: 20, scope: !4198)
!4225 = !DILocalVariable(name: "__mptr", scope: !4226, file: !3, line: 405, type: !95)
!4226 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 405, column: 25)
!4227 = !DILocation(line: 405, column: 25, scope: !4226)
!4228 = !DILocation(line: 405, column: 25, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4226, file: !3, line: 405, column: 25)
!4230 = !DILocalVariable(name: "dev", scope: !4198, file: !3, line: 406, type: !208)
!4231 = !DILocation(line: 406, column: 20, scope: !4198)
!4232 = !DILocation(line: 406, column: 26, scope: !4198)
!4233 = !DILocation(line: 406, column: 30, scope: !4198)
!4234 = !DILocalVariable(name: "flags", scope: !4198, file: !3, line: 407, type: !178)
!4235 = !DILocation(line: 407, column: 16, scope: !4198)
!4236 = !DILocation(line: 409, column: 2, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 409, column: 2)
!4238 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 409, column: 2)
!4239 = !DILocation(line: 409, column: 2, scope: !4238)
!4240 = !DILocation(line: 411, column: 2, scope: !4198)
!4241 = !DILocation(line: 411, column: 2, scope: !4220)
!4242 = !DILocalVariable(name: "__dummy", scope: !4243, file: !3, line: 411, type: !178)
!4243 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 411, column: 2)
!4244 = !DILocation(line: 411, column: 2, scope: !4243)
!4245 = !DILocalVariable(name: "__dummy2", scope: !4243, file: !3, line: 411, type: !178)
!4246 = !DILocation(line: 411, column: 2, scope: !4219)
!4247 = !DILocation(line: 411, column: 2, scope: !4218)
!4248 = !DILocation(line: 411, column: 2, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 411, column: 2)
!4250 = !DILocalVariable(name: "__dummy", scope: !4251, file: !3, line: 411, type: !178)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 411, column: 2)
!4252 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 411, column: 2)
!4253 = !DILocation(line: 411, column: 2, scope: !4251)
!4254 = !DILocalVariable(name: "__dummy2", scope: !4251, file: !3, line: 411, type: !178)
!4255 = !DILocation(line: 411, column: 2, scope: !4252)
!4256 = !DILocation(line: 411, column: 2, scope: !4217)
!4257 = !{i32 -2142715300}
!4258 = !DILocation(line: 411, column: 2, scope: !4216)
!4259 = !DILocation(line: 329, column: 10, scope: !4210, inlinedAt: !4215)
!4260 = !DILocation(line: 329, column: 16, scope: !4210, inlinedAt: !4215)
!4261 = !DILocation(line: 412, column: 18, scope: !4198)
!4262 = !DILocation(line: 412, column: 2, scope: !4198)
!4263 = !DILocation(line: 413, column: 26, scope: !4198)
!4264 = !DILocation(line: 413, column: 31, scope: !4198)
!4265 = !DILocation(line: 413, column: 43, scope: !4198)
!4266 = !DILocalVariable(name: "__dummy", scope: !4267, file: !4201, line: 409, type: !178)
!4267 = distinct !DILexicalBlock(scope: !4268, file: !4201, line: 409, column: 2)
!4268 = distinct !DILexicalBlock(scope: !4200, file: !4201, line: 409, column: 2)
!4269 = !DILocation(line: 409, column: 2, scope: !4267, inlinedAt: !4206)
!4270 = !DILocalVariable(name: "__dummy2", scope: !4267, file: !4201, line: 409, type: !178)
!4271 = !DILocalVariable(name: "__dummy", scope: !4272, file: !4201, line: 409, type: !178)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !4201, line: 409, column: 2)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !4201, line: 409, column: 2)
!4274 = distinct !DILexicalBlock(scope: !4275, file: !4201, line: 409, column: 2)
!4275 = distinct !DILexicalBlock(scope: !4268, file: !4201, line: 409, column: 2)
!4276 = !DILocation(line: 409, column: 2, scope: !4272, inlinedAt: !4206)
!4277 = !DILocalVariable(name: "__dummy2", scope: !4272, file: !4201, line: 409, type: !178)
!4278 = !DILocation(line: 409, column: 2, scope: !4273, inlinedAt: !4206)
!4279 = !DILocation(line: 409, column: 2, scope: !4280, inlinedAt: !4206)
!4280 = distinct !DILexicalBlock(scope: !4275, file: !4201, line: 409, column: 2)
!4281 = !{i32 -2145519156}
!4282 = !DILocation(line: 409, column: 2, scope: !4283, inlinedAt: !4206)
!4283 = distinct !DILexicalBlock(scope: !4280, file: !4201, line: 409, column: 2)
!4284 = !DILocation(line: 414, column: 1, scope: !4198)
!4285 = distinct !DISubprogram(name: "set_bit", scope: !4286, file: !4286, line: 26, type: !4287, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4286 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !524, !4289}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !178)
!4291 = !DILocalVariable(name: "nr", arg: 1, scope: !4292, file: !4293, line: 52, type: !524)
!4292 = distinct !DISubprogram(name: "arch_set_bit", scope: !4293, file: !4293, line: 52, type: !4287, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4293 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4294 = !DILocation(line: 52, column: 19, scope: !4292, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 29, column: 2, scope: !4285)
!4296 = !DILocalVariable(name: "addr", arg: 2, scope: !4292, file: !4293, line: 52, type: !4289)
!4297 = !DILocation(line: 52, column: 47, scope: !4292, inlinedAt: !4295)
!4298 = !DILocalVariable(name: "v", arg: 1, scope: !4299, file: !4300, line: 84, type: !4303)
!4299 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4300, file: !4300, line: 84, type: !4301, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4300 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4301 = !DISubroutineType(types: !4302)
!4302 = !{null, !4303, !564}
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4305)
!4305 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4306 = !DILocation(line: 84, column: 74, scope: !4299, inlinedAt: !4307)
!4307 = distinct !DILocation(line: 28, column: 2, scope: !4285)
!4308 = !DILocalVariable(name: "size", arg: 2, scope: !4299, file: !4300, line: 84, type: !564)
!4309 = !DILocation(line: 84, column: 84, scope: !4299, inlinedAt: !4307)
!4310 = !DILocalVariable(name: "nr", arg: 1, scope: !4285, file: !4286, line: 26, type: !524)
!4311 = !DILocation(line: 26, column: 33, scope: !4285)
!4312 = !DILocalVariable(name: "addr", arg: 2, scope: !4285, file: !4286, line: 26, type: !4289)
!4313 = !DILocation(line: 26, column: 61, scope: !4285)
!4314 = !DILocation(line: 28, column: 26, scope: !4285)
!4315 = !DILocation(line: 28, column: 33, scope: !4285)
!4316 = !DILocation(line: 28, column: 31, scope: !4285)
!4317 = !DILocation(line: 86, column: 20, scope: !4299, inlinedAt: !4307)
!4318 = !DILocation(line: 86, column: 23, scope: !4299, inlinedAt: !4307)
!4319 = !DILocation(line: 86, column: 2, scope: !4299, inlinedAt: !4307)
!4320 = !DILocation(line: 87, column: 2, scope: !4299, inlinedAt: !4307)
!4321 = !DILocation(line: 29, column: 15, scope: !4285)
!4322 = !DILocation(line: 29, column: 19, scope: !4285)
!4323 = !DILocation(line: 54, column: 27, scope: !4324, inlinedAt: !4295)
!4324 = distinct !DILexicalBlock(scope: !4292, file: !4293, line: 54, column: 6)
!4325 = !DILocation(line: 54, column: 6, scope: !4324, inlinedAt: !4295)
!4326 = !DILocation(line: 54, column: 6, scope: !4292, inlinedAt: !4295)
!4327 = !DILocation(line: 56, column: 6, scope: !4328, inlinedAt: !4295)
!4328 = distinct !DILexicalBlock(scope: !4324, file: !4293, line: 54, column: 32)
!4329 = !DILocation(line: 57, column: 12, scope: !4328, inlinedAt: !4295)
!4330 = !DILocation(line: 55, column: 3, scope: !4328, inlinedAt: !4295)
!4331 = !{i32 -2147137818}
!4332 = !DILocation(line: 59, column: 2, scope: !4328, inlinedAt: !4295)
!4333 = !DILocation(line: 61, column: 8, scope: !4334, inlinedAt: !4295)
!4334 = distinct !DILexicalBlock(scope: !4324, file: !4293, line: 59, column: 9)
!4335 = !DILocation(line: 61, column: 32, scope: !4334, inlinedAt: !4295)
!4336 = !DILocation(line: 60, column: 3, scope: !4334, inlinedAt: !4295)
!4337 = !{i32 -2147137686}
!4338 = !DILocation(line: 30, column: 1, scope: !4285)
!4339 = distinct !DISubprogram(name: "ml_ff_upload", scope: !3, file: !3, line: 465, type: !276, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4340 = !DILocalVariable(name: "lock", arg: 1, scope: !4341, file: !4201, line: 402, type: !4204)
!4341 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4201, file: !4201, line: 402, type: !4342, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{null, !4204}
!4344 = !DILocation(line: 402, column: 57, scope: !4341, inlinedAt: !4345)
!4345 = distinct !DILocation(line: 483, column: 2, scope: !4339)
!4346 = !DILocalVariable(name: "m", arg: 1, scope: !4347, file: !4348, line: 363, type: !2635)
!4347 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4348, file: !4348, line: 363, type: !4349, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4348 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!178, !2635}
!4351 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !4352)
!4352 = distinct !DILocation(line: 478, column: 6, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 473, column: 50)
!4354 = distinct !DILexicalBlock(scope: !4339, file: !3, line: 473, column: 6)
!4355 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !4356)
!4356 = distinct !DILocation(line: 476, column: 6, scope: !4353)
!4357 = !DILocalVariable(name: "lock", arg: 1, scope: !4358, file: !4201, line: 377, type: !4204)
!4358 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4201, file: !4201, line: 377, type: !4342, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4359 = !DILocation(line: 377, column: 55, scope: !4358, inlinedAt: !4360)
!4360 = distinct !DILocation(line: 471, column: 2, scope: !4339)
!4361 = !DILocalVariable(name: "dev", arg: 1, scope: !4339, file: !3, line: 465, type: !208)
!4362 = !DILocation(line: 465, column: 43, scope: !4339)
!4363 = !DILocalVariable(name: "effect", arg: 2, scope: !4339, file: !3, line: 466, type: !105)
!4364 = !DILocation(line: 466, column: 22, scope: !4339)
!4365 = !DILocalVariable(name: "old", arg: 3, scope: !4339, file: !3, line: 466, type: !105)
!4366 = !DILocation(line: 466, column: 48, scope: !4339)
!4367 = !DILocalVariable(name: "ml", scope: !4339, file: !3, line: 468, type: !96)
!4368 = !DILocation(line: 468, column: 20, scope: !4339)
!4369 = !DILocation(line: 468, column: 25, scope: !4339)
!4370 = !DILocation(line: 468, column: 30, scope: !4339)
!4371 = !DILocation(line: 468, column: 34, scope: !4339)
!4372 = !DILocalVariable(name: "state", scope: !4339, file: !3, line: 469, type: !4373)
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!4374 = !DILocation(line: 469, column: 26, scope: !4339)
!4375 = !DILocation(line: 469, column: 35, scope: !4339)
!4376 = !DILocation(line: 469, column: 39, scope: !4339)
!4377 = !DILocation(line: 469, column: 46, scope: !4339)
!4378 = !DILocation(line: 469, column: 54, scope: !4339)
!4379 = !DILocation(line: 471, column: 17, scope: !4339)
!4380 = !DILocation(line: 471, column: 22, scope: !4339)
!4381 = !DILocation(line: 379, column: 2, scope: !4382, inlinedAt: !4360)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !4201, line: 379, column: 2)
!4383 = distinct !DILexicalBlock(scope: !4358, file: !4201, line: 379, column: 2)
!4384 = !DILocation(line: 379, column: 2, scope: !4385, inlinedAt: !4360)
!4385 = distinct !DILexicalBlock(scope: !4383, file: !4201, line: 379, column: 2)
!4386 = !{i32 -2145521948}
!4387 = !DILocation(line: 379, column: 2, scope: !4388, inlinedAt: !4360)
!4388 = distinct !DILexicalBlock(scope: !4385, file: !4201, line: 379, column: 2)
!4389 = !DILocation(line: 473, column: 35, scope: !4354)
!4390 = !DILocation(line: 473, column: 42, scope: !4354)
!4391 = !DILocation(line: 473, column: 6, scope: !4354)
!4392 = !DILocation(line: 473, column: 6, scope: !4339)
!4393 = !DILocation(line: 474, column: 35, scope: !4353)
!4394 = !DILocation(line: 474, column: 42, scope: !4353)
!4395 = !DILocation(line: 474, column: 3, scope: !4353)
!4396 = !DILocation(line: 475, column: 20, scope: !4353)
!4397 = !DILocation(line: 476, column: 23, scope: !4353)
!4398 = !DILocation(line: 476, column: 30, scope: !4353)
!4399 = !DILocation(line: 476, column: 38, scope: !4353)
!4400 = !DILocation(line: 476, column: 45, scope: !4353)
!4401 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !4356)
!4402 = distinct !DILexicalBlock(scope: !4347, file: !4348, line: 365, column: 6)
!4403 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !4356)
!4404 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !4356)
!4405 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !4356)
!4406 = distinct !DILexicalBlock(scope: !4407, file: !4348, line: 366, column: 7)
!4407 = distinct !DILexicalBlock(scope: !4402, file: !4348, line: 365, column: 31)
!4408 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !4356)
!4409 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !4356)
!4410 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !4356)
!4411 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !4356)
!4412 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !4356)
!4413 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !4356)
!4414 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !4356)
!4415 = distinct !DILexicalBlock(scope: !4402, file: !4348, line: 369, column: 9)
!4416 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !4356)
!4417 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !4356)
!4418 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !4356)
!4419 = !DILocation(line: 475, column: 28, scope: !4353)
!4420 = !DILocation(line: 475, column: 3, scope: !4353)
!4421 = !DILocation(line: 475, column: 10, scope: !4353)
!4422 = !DILocation(line: 475, column: 18, scope: !4353)
!4423 = !DILocation(line: 477, column: 20, scope: !4353)
!4424 = !DILocation(line: 477, column: 27, scope: !4353)
!4425 = !DILocation(line: 478, column: 23, scope: !4353)
!4426 = !DILocation(line: 478, column: 30, scope: !4353)
!4427 = !DILocation(line: 478, column: 38, scope: !4353)
!4428 = !DILocation(line: 478, column: 45, scope: !4353)
!4429 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !4352)
!4430 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !4352)
!4431 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !4352)
!4432 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !4352)
!4433 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !4352)
!4434 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !4352)
!4435 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !4352)
!4436 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !4352)
!4437 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !4352)
!4438 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !4352)
!4439 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !4352)
!4440 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !4352)
!4441 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !4352)
!4442 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !4352)
!4443 = !DILocation(line: 477, column: 35, scope: !4353)
!4444 = !DILocation(line: 477, column: 3, scope: !4353)
!4445 = !DILocation(line: 477, column: 10, scope: !4353)
!4446 = !DILocation(line: 477, column: 18, scope: !4353)
!4447 = !DILocation(line: 479, column: 19, scope: !4353)
!4448 = !DILocation(line: 479, column: 26, scope: !4353)
!4449 = !DILocation(line: 479, column: 3, scope: !4353)
!4450 = !DILocation(line: 479, column: 10, scope: !4353)
!4451 = !DILocation(line: 479, column: 17, scope: !4353)
!4452 = !DILocation(line: 480, column: 21, scope: !4353)
!4453 = !DILocation(line: 480, column: 3, scope: !4353)
!4454 = !DILocation(line: 481, column: 2, scope: !4353)
!4455 = !DILocation(line: 483, column: 19, scope: !4339)
!4456 = !DILocation(line: 483, column: 24, scope: !4339)
!4457 = !DILocation(line: 404, column: 2, scope: !4458, inlinedAt: !4345)
!4458 = distinct !DILexicalBlock(scope: !4459, file: !4201, line: 404, column: 2)
!4459 = distinct !DILexicalBlock(scope: !4341, file: !4201, line: 404, column: 2)
!4460 = !DILocation(line: 404, column: 2, scope: !4461, inlinedAt: !4345)
!4461 = distinct !DILexicalBlock(scope: !4459, file: !4201, line: 404, column: 2)
!4462 = !{i32 -2145520200}
!4463 = !DILocation(line: 404, column: 2, scope: !4464, inlinedAt: !4345)
!4464 = distinct !DILexicalBlock(scope: !4461, file: !4201, line: 404, column: 2)
!4465 = !DILocation(line: 485, column: 2, scope: !4339)
!4466 = distinct !DISubprogram(name: "ml_ff_playback", scope: !3, file: !3, line: 435, type: !284, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4467 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 448, column: 6, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 440, column: 17)
!4470 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 440, column: 6)
!4471 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !4472)
!4472 = distinct !DILocation(line: 446, column: 6, scope: !4469)
!4473 = !DILocalVariable(name: "dev", arg: 1, scope: !4466, file: !3, line: 435, type: !208)
!4474 = !DILocation(line: 435, column: 45, scope: !4466)
!4475 = !DILocalVariable(name: "effect_id", arg: 2, scope: !4466, file: !3, line: 435, type: !180)
!4476 = !DILocation(line: 435, column: 54, scope: !4466)
!4477 = !DILocalVariable(name: "value", arg: 3, scope: !4466, file: !3, line: 435, type: !180)
!4478 = !DILocation(line: 435, column: 69, scope: !4466)
!4479 = !DILocalVariable(name: "ml", scope: !4466, file: !3, line: 437, type: !96)
!4480 = !DILocation(line: 437, column: 20, scope: !4466)
!4481 = !DILocation(line: 437, column: 25, scope: !4466)
!4482 = !DILocation(line: 437, column: 30, scope: !4466)
!4483 = !DILocation(line: 437, column: 34, scope: !4466)
!4484 = !DILocalVariable(name: "state", scope: !4466, file: !3, line: 438, type: !4373)
!4485 = !DILocation(line: 438, column: 26, scope: !4466)
!4486 = !DILocation(line: 438, column: 35, scope: !4466)
!4487 = !DILocation(line: 438, column: 39, scope: !4466)
!4488 = !DILocation(line: 438, column: 46, scope: !4466)
!4489 = !DILocation(line: 440, column: 6, scope: !4470)
!4490 = !DILocation(line: 440, column: 12, scope: !4470)
!4491 = !DILocation(line: 440, column: 6, scope: !4466)
!4492 = !DILocation(line: 441, column: 3, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 441, column: 3)
!4494 = distinct !DILexicalBlock(scope: !4469, file: !3, line: 441, column: 3)
!4495 = !DILocation(line: 441, column: 3, scope: !4494)
!4496 = !DILocation(line: 443, column: 33, scope: !4469)
!4497 = !DILocation(line: 443, column: 40, scope: !4469)
!4498 = !DILocation(line: 443, column: 3, scope: !4469)
!4499 = !DILocation(line: 444, column: 18, scope: !4469)
!4500 = !DILocation(line: 444, column: 3, scope: !4469)
!4501 = !DILocation(line: 444, column: 10, scope: !4469)
!4502 = !DILocation(line: 444, column: 16, scope: !4469)
!4503 = !DILocation(line: 445, column: 20, scope: !4469)
!4504 = !DILocation(line: 446, column: 23, scope: !4469)
!4505 = !DILocation(line: 446, column: 30, scope: !4469)
!4506 = !DILocation(line: 446, column: 38, scope: !4469)
!4507 = !DILocation(line: 446, column: 45, scope: !4469)
!4508 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !4472)
!4509 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !4472)
!4510 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !4472)
!4511 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !4472)
!4512 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !4472)
!4513 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !4472)
!4514 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !4472)
!4515 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !4472)
!4516 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !4472)
!4517 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !4472)
!4518 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !4472)
!4519 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !4472)
!4520 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !4472)
!4521 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !4472)
!4522 = !DILocation(line: 445, column: 28, scope: !4469)
!4523 = !DILocation(line: 445, column: 3, scope: !4469)
!4524 = !DILocation(line: 445, column: 10, scope: !4469)
!4525 = !DILocation(line: 445, column: 18, scope: !4469)
!4526 = !DILocation(line: 447, column: 20, scope: !4469)
!4527 = !DILocation(line: 447, column: 27, scope: !4469)
!4528 = !DILocation(line: 448, column: 23, scope: !4469)
!4529 = !DILocation(line: 448, column: 30, scope: !4469)
!4530 = !DILocation(line: 448, column: 38, scope: !4469)
!4531 = !DILocation(line: 448, column: 45, scope: !4469)
!4532 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !4468)
!4533 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !4468)
!4534 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !4468)
!4535 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !4468)
!4536 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !4468)
!4537 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !4468)
!4538 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !4468)
!4539 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !4468)
!4540 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !4468)
!4541 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !4468)
!4542 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !4468)
!4543 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !4468)
!4544 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !4468)
!4545 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !4468)
!4546 = !DILocation(line: 447, column: 35, scope: !4469)
!4547 = !DILocation(line: 447, column: 3, scope: !4469)
!4548 = !DILocation(line: 447, column: 10, scope: !4469)
!4549 = !DILocation(line: 447, column: 18, scope: !4469)
!4550 = !DILocation(line: 449, column: 19, scope: !4469)
!4551 = !DILocation(line: 449, column: 26, scope: !4469)
!4552 = !DILocation(line: 449, column: 3, scope: !4469)
!4553 = !DILocation(line: 449, column: 10, scope: !4469)
!4554 = !DILocation(line: 449, column: 17, scope: !4469)
!4555 = !DILocation(line: 451, column: 2, scope: !4469)
!4556 = !DILocation(line: 452, column: 3, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 452, column: 3)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 452, column: 3)
!4559 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 451, column: 9)
!4560 = !DILocation(line: 452, column: 3, scope: !4558)
!4561 = !DILocation(line: 454, column: 36, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 454, column: 7)
!4563 = !DILocation(line: 454, column: 43, scope: !4562)
!4564 = !DILocation(line: 454, column: 7, scope: !4562)
!4565 = !DILocation(line: 454, column: 7, scope: !4559)
!4566 = !DILocation(line: 455, column: 35, scope: !4562)
!4567 = !DILocation(line: 455, column: 42, scope: !4562)
!4568 = !DILocation(line: 455, column: 4, scope: !4562)
!4569 = !DILocation(line: 457, column: 36, scope: !4562)
!4570 = !DILocation(line: 457, column: 43, scope: !4562)
!4571 = !DILocation(line: 457, column: 4, scope: !4562)
!4572 = !DILocation(line: 460, column: 18, scope: !4466)
!4573 = !DILocation(line: 460, column: 2, scope: !4466)
!4574 = !DILocation(line: 462, column: 2, scope: !4466)
!4575 = distinct !DISubprogram(name: "ml_ff_set_gain", scope: !3, file: !3, line: 419, type: !288, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4576 = !DILocalVariable(name: "dev", arg: 1, scope: !4575, file: !3, line: 419, type: !208)
!4577 = !DILocation(line: 419, column: 46, scope: !4575)
!4578 = !DILocalVariable(name: "gain", arg: 2, scope: !4575, file: !3, line: 419, type: !290)
!4579 = !DILocation(line: 419, column: 55, scope: !4575)
!4580 = !DILocalVariable(name: "ml", scope: !4575, file: !3, line: 421, type: !96)
!4581 = !DILocation(line: 421, column: 20, scope: !4575)
!4582 = !DILocation(line: 421, column: 25, scope: !4575)
!4583 = !DILocation(line: 421, column: 30, scope: !4575)
!4584 = !DILocation(line: 421, column: 34, scope: !4575)
!4585 = !DILocalVariable(name: "i", scope: !4575, file: !3, line: 422, type: !180)
!4586 = !DILocation(line: 422, column: 6, scope: !4575)
!4587 = !DILocation(line: 424, column: 13, scope: !4575)
!4588 = !DILocation(line: 424, column: 2, scope: !4575)
!4589 = !DILocation(line: 424, column: 6, scope: !4575)
!4590 = !DILocation(line: 424, column: 11, scope: !4575)
!4591 = !DILocation(line: 426, column: 9, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 426, column: 2)
!4593 = !DILocation(line: 426, column: 7, scope: !4592)
!4594 = !DILocation(line: 426, column: 14, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 426, column: 2)
!4596 = !DILocation(line: 426, column: 16, scope: !4595)
!4597 = !DILocation(line: 426, column: 2, scope: !4592)
!4598 = !DILocation(line: 427, column: 35, scope: !4595)
!4599 = !DILocation(line: 427, column: 39, scope: !4595)
!4600 = !DILocation(line: 427, column: 46, scope: !4595)
!4601 = !DILocation(line: 427, column: 49, scope: !4595)
!4602 = !DILocation(line: 427, column: 3, scope: !4595)
!4603 = !DILocation(line: 426, column: 39, scope: !4595)
!4604 = !DILocation(line: 426, column: 2, scope: !4595)
!4605 = distinct !{!4605, !4597, !4606}
!4606 = !DILocation(line: 427, column: 54, scope: !4592)
!4607 = !DILocation(line: 429, column: 18, scope: !4575)
!4608 = !DILocation(line: 429, column: 2, scope: !4575)
!4609 = !DILocation(line: 430, column: 1, scope: !4575)
!4610 = distinct !DISubprogram(name: "ml_ff_destroy", scope: !3, file: !3, line: 488, type: !294, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4611 = !DILocalVariable(name: "ff", arg: 1, scope: !4610, file: !3, line: 488, type: !271)
!4612 = !DILocation(line: 488, column: 45, scope: !4610)
!4613 = !DILocalVariable(name: "ml", scope: !4610, file: !3, line: 490, type: !96)
!4614 = !DILocation(line: 490, column: 20, scope: !4610)
!4615 = !DILocation(line: 490, column: 25, scope: !4610)
!4616 = !DILocation(line: 490, column: 29, scope: !4610)
!4617 = !DILocation(line: 499, column: 2, scope: !4610)
!4618 = !DILocation(line: 501, column: 8, scope: !4610)
!4619 = !DILocation(line: 501, column: 12, scope: !4610)
!4620 = !DILocation(line: 501, column: 2, scope: !4610)
!4621 = !DILocation(line: 502, column: 1, scope: !4610)
!4622 = distinct !DISubprogram(name: "test_bit", scope: !4623, file: !4623, line: 132, type: !4624, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4623 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!474, !524, !4626}
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4628 = !DILocalVariable(name: "nr", arg: 1, scope: !4629, file: !4293, line: 210, type: !524)
!4629 = distinct !DISubprogram(name: "variable_test_bit", scope: !4293, file: !4293, line: 210, type: !4624, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4630 = !DILocation(line: 210, column: 52, scope: !4629, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 135, column: 9, scope: !4622)
!4632 = !DILocalVariable(name: "addr", arg: 2, scope: !4629, file: !4293, line: 210, type: !4626)
!4633 = !DILocation(line: 210, column: 86, scope: !4629, inlinedAt: !4631)
!4634 = !DILocalVariable(name: "oldbit", scope: !4629, file: !4293, line: 212, type: !474)
!4635 = !DILocation(line: 212, column: 7, scope: !4629, inlinedAt: !4631)
!4636 = !DILocalVariable(name: "nr", arg: 1, scope: !4637, file: !4293, line: 204, type: !524)
!4637 = distinct !DISubprogram(name: "constant_test_bit", scope: !4293, file: !4293, line: 204, type: !4624, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4638 = !DILocation(line: 204, column: 52, scope: !4637, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 135, column: 9, scope: !4622)
!4640 = !DILocalVariable(name: "addr", arg: 2, scope: !4637, file: !4293, line: 204, type: !4626)
!4641 = !DILocation(line: 204, column: 86, scope: !4637, inlinedAt: !4639)
!4642 = !DILocalVariable(name: "v", arg: 1, scope: !4643, file: !4300, line: 69, type: !4303)
!4643 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4300, file: !4300, line: 69, type: !4301, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4644 = !DILocation(line: 69, column: 73, scope: !4643, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 134, column: 2, scope: !4622)
!4646 = !DILocalVariable(name: "size", arg: 2, scope: !4643, file: !4300, line: 69, type: !564)
!4647 = !DILocation(line: 69, column: 83, scope: !4643, inlinedAt: !4645)
!4648 = !DILocalVariable(name: "nr", arg: 1, scope: !4622, file: !4623, line: 132, type: !524)
!4649 = !DILocation(line: 132, column: 34, scope: !4622)
!4650 = !DILocalVariable(name: "addr", arg: 2, scope: !4622, file: !4623, line: 132, type: !4626)
!4651 = !DILocation(line: 132, column: 68, scope: !4622)
!4652 = !DILocation(line: 134, column: 25, scope: !4622)
!4653 = !DILocation(line: 134, column: 32, scope: !4622)
!4654 = !DILocation(line: 134, column: 30, scope: !4622)
!4655 = !DILocation(line: 71, column: 19, scope: !4643, inlinedAt: !4645)
!4656 = !DILocation(line: 71, column: 22, scope: !4643, inlinedAt: !4645)
!4657 = !DILocation(line: 71, column: 2, scope: !4643, inlinedAt: !4645)
!4658 = !DILocation(line: 72, column: 2, scope: !4643, inlinedAt: !4645)
!4659 = !DILocation(line: 135, column: 9, scope: !4622)
!4660 = !DILocation(line: 206, column: 19, scope: !4637, inlinedAt: !4639)
!4661 = !DILocation(line: 206, column: 22, scope: !4637, inlinedAt: !4639)
!4662 = !DILocation(line: 206, column: 15, scope: !4637, inlinedAt: !4639)
!4663 = !DILocation(line: 207, column: 4, scope: !4637, inlinedAt: !4639)
!4664 = !DILocation(line: 207, column: 9, scope: !4637, inlinedAt: !4639)
!4665 = !DILocation(line: 207, column: 12, scope: !4637, inlinedAt: !4639)
!4666 = !DILocation(line: 206, column: 44, scope: !4637, inlinedAt: !4639)
!4667 = !DILocation(line: 207, column: 37, scope: !4637, inlinedAt: !4639)
!4668 = !DILocation(line: 217, column: 33, scope: !4629, inlinedAt: !4631)
!4669 = !DILocation(line: 217, column: 46, scope: !4629, inlinedAt: !4631)
!4670 = !DILocation(line: 214, column: 2, scope: !4629, inlinedAt: !4631)
!4671 = !{i32 -2147128570, i32 -2147128510}
!4672 = !DILocation(line: 219, column: 9, scope: !4629, inlinedAt: !4631)
!4673 = !DILocation(line: 135, column: 2, scope: !4622)
!4674 = distinct !DISubprogram(name: "get_order", scope: !4675, file: !4675, line: 29, type: !4676, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4675 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!180, !178}
!4678 = !DILocalVariable(name: "x", arg: 1, scope: !4679, file: !4293, line: 366, type: !404)
!4679 = distinct !DISubprogram(name: "fls64", scope: !4293, file: !4293, line: 366, type: !4680, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{!180, !404}
!4682 = !DILocation(line: 366, column: 40, scope: !4679, inlinedAt: !4683)
!4683 = distinct !DILocation(line: 46, column: 9, scope: !4674)
!4684 = !DILocalVariable(name: "bitpos", scope: !4679, file: !4293, line: 368, type: !180)
!4685 = !DILocation(line: 368, column: 6, scope: !4679, inlinedAt: !4683)
!4686 = !DILocalVariable(name: "size", arg: 1, scope: !4674, file: !4675, line: 29, type: !178)
!4687 = !DILocation(line: 29, column: 63, scope: !4674)
!4688 = !DILocation(line: 31, column: 27, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4674, file: !4675, line: 31, column: 6)
!4690 = !DILocation(line: 31, column: 6, scope: !4689)
!4691 = !DILocation(line: 31, column: 6, scope: !4674)
!4692 = !DILocation(line: 32, column: 8, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4694, file: !4675, line: 32, column: 7)
!4694 = distinct !DILexicalBlock(scope: !4689, file: !4675, line: 31, column: 34)
!4695 = !DILocation(line: 32, column: 7, scope: !4694)
!4696 = !DILocation(line: 33, column: 4, scope: !4693)
!4697 = !DILocation(line: 35, column: 7, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4694, file: !4675, line: 35, column: 7)
!4699 = !DILocation(line: 35, column: 12, scope: !4698)
!4700 = !DILocation(line: 35, column: 7, scope: !4694)
!4701 = !DILocation(line: 36, column: 4, scope: !4698)
!4702 = !DILocation(line: 38, column: 10, scope: !4694)
!4703 = !DILocation(line: 38, column: 28, scope: !4694)
!4704 = !DILocation(line: 38, column: 41, scope: !4694)
!4705 = !DILocation(line: 38, column: 3, scope: !4694)
!4706 = !DILocation(line: 41, column: 6, scope: !4674)
!4707 = !DILocation(line: 42, column: 7, scope: !4674)
!4708 = !DILocation(line: 46, column: 15, scope: !4674)
!4709 = !DILocation(line: 374, column: 2, scope: !4679, inlinedAt: !4683)
!4710 = !DILocation(line: 376, column: 14, scope: !4679, inlinedAt: !4683)
!4711 = !{i32 314403}
!4712 = !DILocation(line: 377, column: 9, scope: !4679, inlinedAt: !4683)
!4713 = !DILocation(line: 377, column: 16, scope: !4679, inlinedAt: !4683)
!4714 = !DILocation(line: 46, column: 2, scope: !4674)
!4715 = !DILocation(line: 48, column: 1, scope: !4674)
!4716 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4717, file: !4717, line: 30, type: !4718, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4717 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!180, !403}
!4720 = !DILocation(line: 366, column: 40, scope: !4679, inlinedAt: !4721)
!4721 = distinct !DILocation(line: 32, column: 9, scope: !4716)
!4722 = !DILocation(line: 368, column: 6, scope: !4679, inlinedAt: !4721)
!4723 = !DILocalVariable(name: "n", arg: 1, scope: !4716, file: !4717, line: 30, type: !403)
!4724 = !DILocation(line: 30, column: 21, scope: !4716)
!4725 = !DILocation(line: 32, column: 15, scope: !4716)
!4726 = !DILocation(line: 374, column: 2, scope: !4679, inlinedAt: !4721)
!4727 = !DILocation(line: 376, column: 14, scope: !4679, inlinedAt: !4721)
!4728 = !DILocation(line: 377, column: 9, scope: !4679, inlinedAt: !4721)
!4729 = !DILocation(line: 377, column: 16, scope: !4679, inlinedAt: !4721)
!4730 = !DILocation(line: 32, column: 18, scope: !4716)
!4731 = !DILocation(line: 32, column: 2, scope: !4716)
!4732 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2002, file: !2002, line: 137, type: !4733, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!95, !914, !3241, !564, !93}
!4735 = !DILocalVariable(name: "s", arg: 1, scope: !4732, file: !2002, line: 137, type: !914)
!4736 = !DILocation(line: 137, column: 54, scope: !4732)
!4737 = !DILocalVariable(name: "object", arg: 2, scope: !4732, file: !2002, line: 137, type: !3241)
!4738 = !DILocation(line: 137, column: 69, scope: !4732)
!4739 = !DILocalVariable(name: "size", arg: 3, scope: !4732, file: !2002, line: 138, type: !564)
!4740 = !DILocation(line: 138, column: 12, scope: !4732)
!4741 = !DILocalVariable(name: "flags", arg: 4, scope: !4732, file: !2002, line: 138, type: !93)
!4742 = !DILocation(line: 138, column: 24, scope: !4732)
!4743 = !DILocation(line: 140, column: 17, scope: !4732)
!4744 = !DILocation(line: 140, column: 2, scope: !4732)
!4745 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4746, file: !4746, line: 666, type: !4747, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4746 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!178}
!4749 = !DILocalVariable(name: "f", scope: !4745, file: !4746, line: 668, type: !178)
!4750 = !DILocation(line: 668, column: 16, scope: !4745)
!4751 = !DILocation(line: 670, column: 6, scope: !4745)
!4752 = !DILocation(line: 670, column: 4, scope: !4745)
!4753 = !DILocation(line: 671, column: 2, scope: !4745)
!4754 = !DILocation(line: 672, column: 9, scope: !4745)
!4755 = !DILocation(line: 672, column: 2, scope: !4745)
!4756 = distinct !DISubprogram(name: "ml_play_effects", scope: !3, file: !3, line: 390, type: !4757, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4757 = !DISubroutineType(types: !4758)
!4758 = !{null, !96}
!4759 = !DILocalVariable(name: "ml", arg: 1, scope: !4756, file: !3, line: 390, type: !96)
!4760 = !DILocation(line: 390, column: 47, scope: !4756)
!4761 = !DILocalVariable(name: "effect", scope: !4756, file: !3, line: 392, type: !106)
!4762 = !DILocation(line: 392, column: 19, scope: !4756)
!4763 = !DILocalVariable(name: "handled_bm", scope: !4756, file: !3, line: 393, type: !226)
!4764 = !DILocation(line: 393, column: 2, scope: !4756)
!4765 = !DILocation(line: 395, column: 2, scope: !4756)
!4766 = !DILocation(line: 397, column: 2, scope: !4756)
!4767 = !DILocation(line: 397, column: 29, scope: !4756)
!4768 = !DILocation(line: 397, column: 33, scope: !4756)
!4769 = !DILocation(line: 397, column: 9, scope: !4756)
!4770 = !DILocation(line: 398, column: 3, scope: !4756)
!4771 = !DILocation(line: 398, column: 7, scope: !4756)
!4772 = !DILocation(line: 398, column: 19, scope: !4756)
!4773 = !DILocation(line: 398, column: 23, scope: !4756)
!4774 = !DILocation(line: 398, column: 28, scope: !4756)
!4775 = !DILocation(line: 398, column: 32, scope: !4756)
!4776 = distinct !{!4776, !4766, !4777}
!4777 = !DILocation(line: 398, column: 48, scope: !4756)
!4778 = !DILocation(line: 400, column: 20, scope: !4756)
!4779 = !DILocation(line: 400, column: 2, scope: !4756)
!4780 = !DILocation(line: 401, column: 1, scope: !4756)
!4781 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4746, file: !4746, line: 646, type: !4747, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4782 = !DILocalVariable(name: "__ret", scope: !4783, file: !4746, line: 648, type: !178)
!4783 = distinct !DILexicalBlock(scope: !4781, file: !4746, line: 648, column: 9)
!4784 = !DILocation(line: 648, column: 9, scope: !4783)
!4785 = !DILocalVariable(name: "__edi", scope: !4783, file: !4746, line: 648, type: !178)
!4786 = !DILocalVariable(name: "__esi", scope: !4783, file: !4746, line: 648, type: !178)
!4787 = !DILocalVariable(name: "__edx", scope: !4783, file: !4746, line: 648, type: !178)
!4788 = !DILocalVariable(name: "__ecx", scope: !4783, file: !4746, line: 648, type: !178)
!4789 = !DILocalVariable(name: "__eax", scope: !4783, file: !4746, line: 648, type: !178)
!4790 = !DILocation(line: 648, column: 9, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !4746, line: 648, column: 9)
!4792 = distinct !DILexicalBlock(scope: !4783, file: !4746, line: 648, column: 9)
!4793 = !{i32 -2145693014, i32 -2145690699, i32 -2145690465, i32 -2145690414, i32 -2145690386, i32 -2145690361, i32 -2145690677, i32 -2145690664, i32 -2145690226, i32 -2145690107, i32 -2145690572, i32 -2145690545, i32 -2145690517, i32 -2145690487}
!4794 = !DILocalVariable(name: "__mask", scope: !4795, file: !4746, line: 648, type: !178)
!4795 = distinct !DILexicalBlock(scope: !4791, file: !4746, line: 648, column: 9)
!4796 = !DILocation(line: 648, column: 9, scope: !4795)
!4797 = !DILocation(line: 648, column: 9, scope: !4792)
!4798 = !DILocation(line: 648, column: 2, scope: !4781)
!4799 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4746, file: !4746, line: 656, type: !1762, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4800 = !DILocalVariable(name: "__edi", scope: !4801, file: !4746, line: 658, type: !178)
!4801 = distinct !DILexicalBlock(scope: !4799, file: !4746, line: 658, column: 2)
!4802 = !DILocation(line: 658, column: 2, scope: !4801)
!4803 = !DILocalVariable(name: "__esi", scope: !4801, file: !4746, line: 658, type: !178)
!4804 = !DILocalVariable(name: "__edx", scope: !4801, file: !4746, line: 658, type: !178)
!4805 = !DILocalVariable(name: "__ecx", scope: !4801, file: !4746, line: 658, type: !178)
!4806 = !DILocalVariable(name: "__eax", scope: !4801, file: !4746, line: 658, type: !178)
!4807 = !{i32 -2145685920, i32 -2145685188, i32 -2145684954, i32 -2145684903, i32 -2145684875, i32 -2145684850, i32 -2145685166, i32 -2145685153, i32 -2145684715, i32 -2145684596, i32 -2145685061, i32 -2145685034, i32 -2145685006, i32 -2145684976}
!4808 = !DILocation(line: 659, column: 1, scope: !4799)
!4809 = distinct !DISubprogram(name: "ml_get_combo_effect", scope: !3, file: !3, line: 326, type: !4810, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!180, !96, !3772, !105}
!4812 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 378, column: 6, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 374, column: 11)
!4815 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 372, column: 8)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 368, column: 47)
!4817 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 367, column: 14)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 364, column: 7)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 337, column: 43)
!4820 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 337, column: 2)
!4821 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 337, column: 2)
!4822 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !4823)
!4823 = distinct !DILocation(line: 376, column: 6, scope: !4814)
!4824 = !DILocalVariable(name: "ml", arg: 1, scope: !4809, file: !3, line: 326, type: !96)
!4825 = !DILocation(line: 326, column: 50, scope: !4809)
!4826 = !DILocalVariable(name: "effect_handled", arg: 2, scope: !4809, file: !3, line: 327, type: !3772)
!4827 = !DILocation(line: 327, column: 26, scope: !4809)
!4828 = !DILocalVariable(name: "combo_effect", arg: 3, scope: !4809, file: !3, line: 328, type: !105)
!4829 = !DILocation(line: 328, column: 29, scope: !4809)
!4830 = !DILocalVariable(name: "effect", scope: !4809, file: !3, line: 330, type: !105)
!4831 = !DILocation(line: 330, column: 20, scope: !4809)
!4832 = !DILocalVariable(name: "state", scope: !4809, file: !3, line: 331, type: !4373)
!4833 = !DILocation(line: 331, column: 26, scope: !4809)
!4834 = !DILocalVariable(name: "effect_type", scope: !4809, file: !3, line: 332, type: !180)
!4835 = !DILocation(line: 332, column: 6, scope: !4809)
!4836 = !DILocalVariable(name: "i", scope: !4809, file: !3, line: 333, type: !180)
!4837 = !DILocation(line: 333, column: 6, scope: !4809)
!4838 = !DILocation(line: 335, column: 9, scope: !4809)
!4839 = !DILocation(line: 335, column: 2, scope: !4809)
!4840 = !DILocation(line: 337, column: 9, scope: !4821)
!4841 = !DILocation(line: 337, column: 7, scope: !4821)
!4842 = !DILocation(line: 337, column: 14, scope: !4820)
!4843 = !DILocation(line: 337, column: 16, scope: !4820)
!4844 = !DILocation(line: 337, column: 2, scope: !4821)
!4845 = !DILocation(line: 338, column: 26, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 338, column: 7)
!4847 = !DILocation(line: 338, column: 29, scope: !4846)
!4848 = !DILocation(line: 338, column: 7, scope: !4846)
!4849 = !DILocation(line: 338, column: 7, scope: !4819)
!4850 = !DILocation(line: 339, column: 4, scope: !4846)
!4851 = !DILocation(line: 341, column: 12, scope: !4819)
!4852 = !DILocation(line: 341, column: 16, scope: !4819)
!4853 = !DILocation(line: 341, column: 23, scope: !4819)
!4854 = !DILocation(line: 341, column: 9, scope: !4819)
!4855 = !DILocation(line: 342, column: 12, scope: !4819)
!4856 = !DILocation(line: 342, column: 19, scope: !4819)
!4857 = !DILocation(line: 342, column: 10, scope: !4819)
!4858 = !DILocation(line: 344, column: 37, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 344, column: 7)
!4860 = !DILocation(line: 344, column: 44, scope: !4859)
!4861 = !DILocation(line: 344, column: 8, scope: !4859)
!4862 = !DILocation(line: 344, column: 7, scope: !4819)
!4863 = !DILocation(line: 345, column: 4, scope: !4859)
!4864 = !DILocation(line: 347, column: 7, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 347, column: 7)
!4866 = !DILocation(line: 347, column: 7, scope: !4819)
!4867 = !DILocation(line: 348, column: 4, scope: !4865)
!4868 = !DILocation(line: 355, column: 37, scope: !4819)
!4869 = !DILocation(line: 355, column: 41, scope: !4819)
!4870 = !DILocation(line: 355, column: 46, scope: !4819)
!4871 = !DILocation(line: 355, column: 50, scope: !4819)
!4872 = !DILocation(line: 355, column: 58, scope: !4819)
!4873 = !DILocation(line: 355, column: 17, scope: !4819)
!4874 = !DILocation(line: 355, column: 15, scope: !4819)
!4875 = !DILocation(line: 356, column: 7, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 356, column: 7)
!4877 = !DILocation(line: 356, column: 21, scope: !4876)
!4878 = !DILocation(line: 356, column: 29, scope: !4876)
!4879 = !DILocation(line: 356, column: 26, scope: !4876)
!4880 = !DILocation(line: 356, column: 7, scope: !4819)
!4881 = !DILocation(line: 357, column: 8, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 357, column: 8)
!4883 = distinct !DILexicalBlock(scope: !4876, file: !3, line: 356, column: 42)
!4884 = !DILocation(line: 357, column: 22, scope: !4882)
!4885 = !DILocation(line: 357, column: 27, scope: !4882)
!4886 = !DILocation(line: 357, column: 8, scope: !4883)
!4887 = !DILocation(line: 358, column: 17, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4882, file: !3, line: 357, column: 33)
!4889 = !DILocation(line: 358, column: 20, scope: !4888)
!4890 = !DILocation(line: 358, column: 5, scope: !4888)
!4891 = !DILocation(line: 359, column: 5, scope: !4888)
!4892 = !DILocation(line: 361, column: 25, scope: !4883)
!4893 = !DILocation(line: 361, column: 4, scope: !4883)
!4894 = !DILocation(line: 361, column: 18, scope: !4883)
!4895 = !DILocation(line: 361, column: 23, scope: !4883)
!4896 = !DILocation(line: 362, column: 3, scope: !4883)
!4897 = !DILocation(line: 364, column: 49, scope: !4818)
!4898 = !DILocation(line: 364, column: 56, scope: !4818)
!4899 = !DILocation(line: 364, column: 7, scope: !4818)
!4900 = !DILocation(line: 364, column: 7, scope: !4819)
!4901 = !DILocation(line: 365, column: 36, scope: !4902)
!4902 = distinct !DILexicalBlock(scope: !4818, file: !3, line: 364, column: 64)
!4903 = !DILocation(line: 365, column: 43, scope: !4902)
!4904 = !DILocation(line: 365, column: 4, scope: !4902)
!4905 = !DILocation(line: 366, column: 36, scope: !4902)
!4906 = !DILocation(line: 366, column: 43, scope: !4902)
!4907 = !DILocation(line: 366, column: 4, scope: !4902)
!4908 = !DILocation(line: 367, column: 3, scope: !4902)
!4909 = !DILocation(line: 367, column: 14, scope: !4817)
!4910 = !DILocation(line: 367, column: 22, scope: !4817)
!4911 = !DILocation(line: 367, column: 29, scope: !4817)
!4912 = !DILocation(line: 367, column: 36, scope: !4817)
!4913 = !DILocation(line: 368, column: 7, scope: !4817)
!4914 = !DILocation(line: 367, column: 14, scope: !4818)
!4915 = !DILocation(line: 370, column: 36, scope: !4816)
!4916 = !DILocation(line: 370, column: 43, scope: !4816)
!4917 = !DILocation(line: 370, column: 4, scope: !4816)
!4918 = !DILocation(line: 372, column: 10, scope: !4815)
!4919 = !DILocation(line: 372, column: 17, scope: !4815)
!4920 = !DILocation(line: 372, column: 8, scope: !4815)
!4921 = !DILocation(line: 372, column: 23, scope: !4815)
!4922 = !DILocation(line: 372, column: 8, scope: !4816)
!4923 = !DILocation(line: 373, column: 37, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 372, column: 29)
!4925 = !DILocation(line: 373, column: 44, scope: !4924)
!4926 = !DILocation(line: 373, column: 5, scope: !4924)
!4927 = !DILocation(line: 374, column: 4, scope: !4924)
!4928 = !DILocation(line: 375, column: 22, scope: !4814)
!4929 = !DILocation(line: 376, column: 23, scope: !4814)
!4930 = !DILocation(line: 376, column: 31, scope: !4814)
!4931 = !DILocation(line: 376, column: 38, scope: !4814)
!4932 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !4823)
!4933 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !4823)
!4934 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !4823)
!4935 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !4823)
!4936 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !4823)
!4937 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !4823)
!4938 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !4823)
!4939 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !4823)
!4940 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !4823)
!4941 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !4823)
!4942 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !4823)
!4943 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !4823)
!4944 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !4823)
!4945 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !4823)
!4946 = !DILocation(line: 375, column: 30, scope: !4814)
!4947 = !DILocation(line: 375, column: 5, scope: !4814)
!4948 = !DILocation(line: 375, column: 12, scope: !4814)
!4949 = !DILocation(line: 375, column: 20, scope: !4814)
!4950 = !DILocation(line: 377, column: 22, scope: !4814)
!4951 = !DILocation(line: 377, column: 29, scope: !4814)
!4952 = !DILocation(line: 378, column: 23, scope: !4814)
!4953 = !DILocation(line: 378, column: 31, scope: !4814)
!4954 = !DILocation(line: 378, column: 38, scope: !4814)
!4955 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !4813)
!4956 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !4813)
!4957 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !4813)
!4958 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !4813)
!4959 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !4813)
!4960 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !4813)
!4961 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !4813)
!4962 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !4813)
!4963 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !4813)
!4964 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !4813)
!4965 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !4813)
!4966 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !4813)
!4967 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !4813)
!4968 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !4813)
!4969 = !DILocation(line: 377, column: 37, scope: !4814)
!4970 = !DILocation(line: 377, column: 5, scope: !4814)
!4971 = !DILocation(line: 377, column: 12, scope: !4814)
!4972 = !DILocation(line: 377, column: 20, scope: !4814)
!4973 = !DILocation(line: 380, column: 3, scope: !4816)
!4974 = !DILocation(line: 381, column: 34, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 380, column: 10)
!4976 = !DILocation(line: 381, column: 41, scope: !4975)
!4977 = !DILocation(line: 381, column: 4, scope: !4975)
!4978 = !DILocation(line: 382, column: 20, scope: !4975)
!4979 = !DILocation(line: 382, column: 4, scope: !4975)
!4980 = !DILocation(line: 382, column: 11, scope: !4975)
!4981 = !DILocation(line: 382, column: 18, scope: !4975)
!4982 = !DILocation(line: 383, column: 23, scope: !4975)
!4983 = !DILocation(line: 383, column: 37, scope: !4975)
!4984 = !DILocation(line: 383, column: 44, scope: !4975)
!4985 = !DILocation(line: 383, column: 48, scope: !4975)
!4986 = !DILocation(line: 383, column: 4, scope: !4975)
!4987 = !DILocation(line: 385, column: 2, scope: !4819)
!4988 = !DILocation(line: 337, column: 39, scope: !4820)
!4989 = !DILocation(line: 337, column: 2, scope: !4820)
!4990 = distinct !{!4990, !4844, !4991}
!4991 = !DILocation(line: 385, column: 2, scope: !4821)
!4992 = !DILocation(line: 387, column: 9, scope: !4809)
!4993 = !DILocation(line: 387, column: 23, scope: !4809)
!4994 = !DILocation(line: 387, column: 28, scope: !4809)
!4995 = !DILocation(line: 387, column: 2, scope: !4809)
!4996 = distinct !DISubprogram(name: "ml_schedule_timer", scope: !3, file: !3, line: 112, type: !4757, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!4997 = !DILocalVariable(name: "ml", arg: 1, scope: !4996, file: !3, line: 112, type: !96)
!4998 = !DILocation(line: 112, column: 49, scope: !4996)
!4999 = !DILocalVariable(name: "state", scope: !4996, file: !3, line: 114, type: !4373)
!5000 = !DILocation(line: 114, column: 26, scope: !4996)
!5001 = !DILocalVariable(name: "now", scope: !4996, file: !3, line: 115, type: !178)
!5002 = !DILocation(line: 115, column: 16, scope: !4996)
!5003 = !DILocation(line: 115, column: 22, scope: !4996)
!5004 = !DILocalVariable(name: "earliest", scope: !4996, file: !3, line: 116, type: !178)
!5005 = !DILocation(line: 116, column: 16, scope: !4996)
!5006 = !DILocalVariable(name: "next_at", scope: !4996, file: !3, line: 117, type: !178)
!5007 = !DILocation(line: 117, column: 16, scope: !4996)
!5008 = !DILocalVariable(name: "events", scope: !4996, file: !3, line: 118, type: !180)
!5009 = !DILocation(line: 118, column: 6, scope: !4996)
!5010 = !DILocalVariable(name: "i", scope: !4996, file: !3, line: 119, type: !180)
!5011 = !DILocation(line: 119, column: 6, scope: !4996)
!5012 = !DILocation(line: 121, column: 2, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 121, column: 2)
!5014 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 121, column: 2)
!5015 = !DILocation(line: 121, column: 2, scope: !5014)
!5016 = !DILocation(line: 123, column: 9, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 123, column: 2)
!5018 = !DILocation(line: 123, column: 7, scope: !5017)
!5019 = !DILocation(line: 123, column: 14, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 123, column: 2)
!5021 = !DILocation(line: 123, column: 16, scope: !5020)
!5022 = !DILocation(line: 123, column: 2, scope: !5017)
!5023 = !DILocation(line: 125, column: 12, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 123, column: 43)
!5025 = !DILocation(line: 125, column: 16, scope: !5024)
!5026 = !DILocation(line: 125, column: 23, scope: !5024)
!5027 = !DILocation(line: 125, column: 9, scope: !5024)
!5028 = !DILocation(line: 127, column: 37, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 127, column: 7)
!5030 = !DILocation(line: 127, column: 44, scope: !5029)
!5031 = !DILocation(line: 127, column: 8, scope: !5029)
!5032 = !DILocation(line: 127, column: 7, scope: !5024)
!5033 = !DILocation(line: 128, column: 4, scope: !5029)
!5034 = !DILocation(line: 130, column: 36, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 130, column: 7)
!5036 = !DILocation(line: 130, column: 43, scope: !5035)
!5037 = !DILocation(line: 130, column: 7, scope: !5035)
!5038 = !DILocation(line: 130, column: 7, scope: !5024)
!5039 = !DILocation(line: 131, column: 34, scope: !5035)
!5040 = !DILocation(line: 131, column: 14, scope: !5035)
!5041 = !DILocation(line: 131, column: 12, scope: !5035)
!5042 = !DILocation(line: 131, column: 4, scope: !5035)
!5043 = !DILocation(line: 133, column: 14, scope: !5035)
!5044 = !DILocation(line: 133, column: 21, scope: !5035)
!5045 = !DILocation(line: 133, column: 12, scope: !5035)
!5046 = !DILocation(line: 135, column: 7, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 135, column: 7)
!5048 = !DILocation(line: 135, column: 36, scope: !5047)
!5049 = !DILocation(line: 136, column: 8, scope: !5047)
!5050 = !DILocation(line: 136, column: 17, scope: !5047)
!5051 = !DILocation(line: 136, column: 22, scope: !5047)
!5052 = !DILocation(line: 136, column: 25, scope: !5047)
!5053 = !DILocation(line: 135, column: 7, scope: !5024)
!5054 = !DILocation(line: 137, column: 15, scope: !5047)
!5055 = !DILocation(line: 137, column: 13, scope: !5047)
!5056 = !DILocation(line: 137, column: 4, scope: !5047)
!5057 = !DILocation(line: 138, column: 2, scope: !5024)
!5058 = !DILocation(line: 123, column: 39, scope: !5020)
!5059 = !DILocation(line: 123, column: 2, scope: !5020)
!5060 = distinct !{!5060, !5022, !5061}
!5061 = !DILocation(line: 138, column: 2, scope: !5017)
!5062 = !DILocation(line: 140, column: 7, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 140, column: 6)
!5064 = !DILocation(line: 140, column: 6, scope: !4996)
!5065 = !DILocation(line: 141, column: 3, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 141, column: 3)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 141, column: 3)
!5068 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 140, column: 15)
!5069 = !DILocation(line: 141, column: 3, scope: !5067)
!5070 = !DILocation(line: 142, column: 14, scope: !5068)
!5071 = !DILocation(line: 142, column: 18, scope: !5068)
!5072 = !DILocation(line: 142, column: 3, scope: !5068)
!5073 = !DILocation(line: 143, column: 2, scope: !5068)
!5074 = !DILocation(line: 144, column: 3, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 144, column: 3)
!5076 = distinct !DILexicalBlock(scope: !5077, file: !3, line: 144, column: 3)
!5077 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 143, column: 9)
!5078 = !DILocation(line: 144, column: 3, scope: !5076)
!5079 = !DILocation(line: 145, column: 14, scope: !5077)
!5080 = !DILocation(line: 145, column: 18, scope: !5077)
!5081 = !DILocation(line: 145, column: 25, scope: !5077)
!5082 = !DILocation(line: 145, column: 3, scope: !5077)
!5083 = !DILocation(line: 147, column: 1, scope: !4996)
!5084 = distinct !DISubprogram(name: "__test_and_set_bit", scope: !4623, file: !4623, line: 93, type: !5085, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!474, !524, !4289}
!5087 = !DILocalVariable(name: "nr", arg: 1, scope: !5088, file: !4293, line: 148, type: !524)
!5088 = distinct !DISubprogram(name: "arch___test_and_set_bit", scope: !4293, file: !4293, line: 148, type: !5085, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5089 = !DILocation(line: 148, column: 30, scope: !5088, inlinedAt: !5090)
!5090 = distinct !DILocation(line: 96, column: 9, scope: !5084)
!5091 = !DILocalVariable(name: "addr", arg: 2, scope: !5088, file: !4293, line: 148, type: !4289)
!5092 = !DILocation(line: 148, column: 58, scope: !5088, inlinedAt: !5090)
!5093 = !DILocalVariable(name: "oldbit", scope: !5088, file: !4293, line: 150, type: !474)
!5094 = !DILocation(line: 150, column: 7, scope: !5088, inlinedAt: !5090)
!5095 = !DILocalVariable(name: "nr", arg: 1, scope: !5084, file: !4623, line: 93, type: !524)
!5096 = !DILocation(line: 93, column: 44, scope: !5084)
!5097 = !DILocalVariable(name: "addr", arg: 2, scope: !5084, file: !4623, line: 93, type: !4289)
!5098 = !DILocation(line: 93, column: 72, scope: !5084)
!5099 = !DILocation(line: 95, column: 32, scope: !5084)
!5100 = !DILocation(line: 95, column: 36, scope: !5084)
!5101 = !DILocation(line: 95, column: 2, scope: !5084)
!5102 = !DILocation(line: 96, column: 33, scope: !5084)
!5103 = !DILocation(line: 96, column: 37, scope: !5084)
!5104 = !DILocation(line: 155, column: 8, scope: !5088, inlinedAt: !5090)
!5105 = !DILocation(line: 155, column: 20, scope: !5088, inlinedAt: !5090)
!5106 = !DILocation(line: 152, column: 2, scope: !5088, inlinedAt: !5090)
!5107 = !{i32 -2147132665, i32 -2147132602}
!5108 = !DILocation(line: 156, column: 9, scope: !5088, inlinedAt: !5090)
!5109 = !DILocation(line: 96, column: 2, scope: !5084)
!5110 = distinct !DISubprogram(name: "get_compatible_type", scope: !3, file: !3, line: 198, type: !5111, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!180, !271, !180}
!5113 = !DILocalVariable(name: "ff", arg: 1, scope: !5110, file: !3, line: 198, type: !271)
!5114 = !DILocation(line: 198, column: 50, scope: !5110)
!5115 = !DILocalVariable(name: "effect_type", arg: 2, scope: !5110, file: !3, line: 198, type: !180)
!5116 = !DILocation(line: 198, column: 58, scope: !5110)
!5117 = !DILocation(line: 201, column: 15, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 201, column: 6)
!5119 = !DILocation(line: 201, column: 28, scope: !5118)
!5120 = !DILocation(line: 201, column: 32, scope: !5118)
!5121 = !DILocation(line: 201, column: 6, scope: !5118)
!5122 = !DILocation(line: 201, column: 6, scope: !5110)
!5123 = !DILocation(line: 202, column: 10, scope: !5118)
!5124 = !DILocation(line: 202, column: 3, scope: !5118)
!5125 = !DILocation(line: 204, column: 6, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 204, column: 6)
!5127 = !DILocation(line: 204, column: 18, scope: !5126)
!5128 = !DILocation(line: 204, column: 33, scope: !5126)
!5129 = !DILocation(line: 204, column: 56, scope: !5126)
!5130 = !DILocation(line: 204, column: 60, scope: !5126)
!5131 = !DILocation(line: 204, column: 36, scope: !5126)
!5132 = !DILocation(line: 204, column: 6, scope: !5110)
!5133 = !DILocation(line: 205, column: 3, scope: !5126)
!5134 = !DILocation(line: 207, column: 2, scope: !5110)
!5135 = !DILocation(line: 209, column: 2, scope: !5110)
!5136 = !DILocation(line: 210, column: 1, scope: !5110)
!5137 = distinct !DISubprogram(name: "__clear_bit", scope: !4623, file: !4623, line: 40, type: !4287, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5138 = !DILocalVariable(name: "nr", arg: 1, scope: !5139, file: !4293, line: 92, type: !524)
!5139 = distinct !DISubprogram(name: "arch___clear_bit", scope: !4293, file: !4293, line: 92, type: !4287, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5140 = !DILocation(line: 92, column: 23, scope: !5139, inlinedAt: !5141)
!5141 = distinct !DILocation(line: 43, column: 2, scope: !5137)
!5142 = !DILocalVariable(name: "addr", arg: 2, scope: !5139, file: !4293, line: 92, type: !4289)
!5143 = !DILocation(line: 92, column: 51, scope: !5139, inlinedAt: !5141)
!5144 = !DILocalVariable(name: "v", arg: 1, scope: !5145, file: !4300, line: 39, type: !4303)
!5145 = distinct !DISubprogram(name: "instrument_write", scope: !4300, file: !4300, line: 39, type: !4301, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5146 = !DILocation(line: 39, column: 67, scope: !5145, inlinedAt: !5147)
!5147 = distinct !DILocation(line: 42, column: 2, scope: !5137)
!5148 = !DILocalVariable(name: "size", arg: 2, scope: !5145, file: !4300, line: 39, type: !564)
!5149 = !DILocation(line: 39, column: 77, scope: !5145, inlinedAt: !5147)
!5150 = !DILocalVariable(name: "nr", arg: 1, scope: !5137, file: !4623, line: 40, type: !524)
!5151 = !DILocation(line: 40, column: 37, scope: !5137)
!5152 = !DILocalVariable(name: "addr", arg: 2, scope: !5137, file: !4623, line: 40, type: !4289)
!5153 = !DILocation(line: 40, column: 65, scope: !5137)
!5154 = !DILocation(line: 42, column: 19, scope: !5137)
!5155 = !DILocation(line: 42, column: 26, scope: !5137)
!5156 = !DILocation(line: 42, column: 24, scope: !5137)
!5157 = !DILocation(line: 41, column: 20, scope: !5145, inlinedAt: !5147)
!5158 = !DILocation(line: 41, column: 23, scope: !5145, inlinedAt: !5147)
!5159 = !DILocation(line: 41, column: 2, scope: !5145, inlinedAt: !5147)
!5160 = !DILocation(line: 42, column: 2, scope: !5145, inlinedAt: !5147)
!5161 = !DILocation(line: 43, column: 19, scope: !5137)
!5162 = !DILocation(line: 43, column: 23, scope: !5137)
!5163 = !DILocation(line: 94, column: 44, scope: !5139, inlinedAt: !5141)
!5164 = !DILocation(line: 94, column: 56, scope: !5139, inlinedAt: !5141)
!5165 = !DILocation(line: 94, column: 2, scope: !5139, inlinedAt: !5141)
!5166 = !{i32 -2147135983}
!5167 = !DILocation(line: 44, column: 1, scope: !5137)
!5168 = distinct !DISubprogram(name: "__test_and_clear_bit", scope: !4623, file: !4623, line: 107, type: !5085, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5169 = !DILocalVariable(name: "nr", arg: 1, scope: !5170, file: !4293, line: 174, type: !524)
!5170 = distinct !DISubprogram(name: "arch___test_and_clear_bit", scope: !4293, file: !4293, line: 174, type: !5085, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5171 = !DILocation(line: 174, column: 32, scope: !5170, inlinedAt: !5172)
!5172 = distinct !DILocation(line: 110, column: 9, scope: !5168)
!5173 = !DILocalVariable(name: "addr", arg: 2, scope: !5170, file: !4293, line: 174, type: !4289)
!5174 = !DILocation(line: 174, column: 60, scope: !5170, inlinedAt: !5172)
!5175 = !DILocalVariable(name: "oldbit", scope: !5170, file: !4293, line: 176, type: !474)
!5176 = !DILocation(line: 176, column: 7, scope: !5170, inlinedAt: !5172)
!5177 = !DILocalVariable(name: "nr", arg: 1, scope: !5168, file: !4623, line: 107, type: !524)
!5178 = !DILocation(line: 107, column: 46, scope: !5168)
!5179 = !DILocalVariable(name: "addr", arg: 2, scope: !5168, file: !4623, line: 107, type: !4289)
!5180 = !DILocation(line: 107, column: 74, scope: !5168)
!5181 = !DILocation(line: 109, column: 32, scope: !5168)
!5182 = !DILocation(line: 109, column: 36, scope: !5168)
!5183 = !DILocation(line: 109, column: 2, scope: !5168)
!5184 = !DILocation(line: 110, column: 35, scope: !5168)
!5185 = !DILocation(line: 110, column: 39, scope: !5168)
!5186 = !DILocation(line: 181, column: 10, scope: !5170, inlinedAt: !5172)
!5187 = !DILocation(line: 181, column: 22, scope: !5170, inlinedAt: !5172)
!5188 = !DILocation(line: 178, column: 2, scope: !5170, inlinedAt: !5172)
!5189 = !{i32 -2147130960, i32 -2147130897}
!5190 = !DILocation(line: 182, column: 9, scope: !5170, inlinedAt: !5172)
!5191 = !DILocation(line: 110, column: 2, scope: !5168)
!5192 = distinct !DISubprogram(name: "__set_bit", scope: !4623, file: !4623, line: 25, type: !4287, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5193 = !DILocalVariable(name: "nr", arg: 1, scope: !5194, file: !4293, line: 66, type: !524)
!5194 = distinct !DISubprogram(name: "arch___set_bit", scope: !4293, file: !4293, line: 66, type: !4287, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5195 = !DILocation(line: 66, column: 21, scope: !5194, inlinedAt: !5196)
!5196 = distinct !DILocation(line: 28, column: 2, scope: !5192)
!5197 = !DILocalVariable(name: "addr", arg: 2, scope: !5194, file: !4293, line: 66, type: !4289)
!5198 = !DILocation(line: 66, column: 49, scope: !5194, inlinedAt: !5196)
!5199 = !DILocation(line: 39, column: 67, scope: !5145, inlinedAt: !5200)
!5200 = distinct !DILocation(line: 27, column: 2, scope: !5192)
!5201 = !DILocation(line: 39, column: 77, scope: !5145, inlinedAt: !5200)
!5202 = !DILocalVariable(name: "nr", arg: 1, scope: !5192, file: !4623, line: 25, type: !524)
!5203 = !DILocation(line: 25, column: 35, scope: !5192)
!5204 = !DILocalVariable(name: "addr", arg: 2, scope: !5192, file: !4623, line: 25, type: !4289)
!5205 = !DILocation(line: 25, column: 63, scope: !5192)
!5206 = !DILocation(line: 27, column: 19, scope: !5192)
!5207 = !DILocation(line: 27, column: 26, scope: !5192)
!5208 = !DILocation(line: 27, column: 24, scope: !5192)
!5209 = !DILocation(line: 41, column: 20, scope: !5145, inlinedAt: !5200)
!5210 = !DILocation(line: 41, column: 23, scope: !5145, inlinedAt: !5200)
!5211 = !DILocation(line: 41, column: 2, scope: !5145, inlinedAt: !5200)
!5212 = !DILocation(line: 42, column: 2, scope: !5145, inlinedAt: !5200)
!5213 = !DILocation(line: 28, column: 17, scope: !5192)
!5214 = !DILocation(line: 28, column: 21, scope: !5192)
!5215 = !DILocation(line: 68, column: 44, scope: !5194, inlinedAt: !5196)
!5216 = !DILocation(line: 68, column: 56, scope: !5194, inlinedAt: !5196)
!5217 = !DILocation(line: 68, column: 2, scope: !5194, inlinedAt: !5196)
!5218 = !{i32 -2147137182}
!5219 = !DILocation(line: 29, column: 1, scope: !5192)
!5220 = distinct !DISubprogram(name: "ml_combine_effects", scope: !3, file: !3, line: 243, type: !5221, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5221 = !DISubroutineType(types: !5222)
!5222 = !{null, !105, !4373, !180}
!5223 = !DILocalVariable(name: "effect", arg: 1, scope: !5220, file: !3, line: 243, type: !105)
!5224 = !DILocation(line: 243, column: 50, scope: !5220)
!5225 = !DILocalVariable(name: "state", arg: 2, scope: !5220, file: !3, line: 244, type: !4373)
!5226 = !DILocation(line: 244, column: 35, scope: !5220)
!5227 = !DILocalVariable(name: "gain", arg: 3, scope: !5220, file: !3, line: 245, type: !180)
!5228 = !DILocation(line: 245, column: 15, scope: !5220)
!5229 = !DILocalVariable(name: "new", scope: !5220, file: !3, line: 247, type: !105)
!5230 = !DILocation(line: 247, column: 20, scope: !5220)
!5231 = !DILocation(line: 247, column: 26, scope: !5220)
!5232 = !DILocation(line: 247, column: 33, scope: !5220)
!5233 = !DILocalVariable(name: "strong", scope: !5220, file: !3, line: 248, type: !7)
!5234 = !DILocation(line: 248, column: 15, scope: !5220)
!5235 = !DILocalVariable(name: "weak", scope: !5220, file: !3, line: 248, type: !7)
!5236 = !DILocation(line: 248, column: 23, scope: !5220)
!5237 = !DILocalVariable(name: "i", scope: !5220, file: !3, line: 248, type: !7)
!5238 = !DILocation(line: 248, column: 29, scope: !5220)
!5239 = !DILocalVariable(name: "x", scope: !5220, file: !3, line: 249, type: !180)
!5240 = !DILocation(line: 249, column: 6, scope: !5220)
!5241 = !DILocalVariable(name: "y", scope: !5220, file: !3, line: 249, type: !180)
!5242 = !DILocation(line: 249, column: 9, scope: !5220)
!5243 = !DILocalVariable(name: "level", scope: !5220, file: !3, line: 250, type: !1096)
!5244 = !DILocation(line: 250, column: 6, scope: !5220)
!5245 = !DILocation(line: 252, column: 10, scope: !5220)
!5246 = !DILocation(line: 252, column: 15, scope: !5220)
!5247 = !DILocation(line: 252, column: 2, scope: !5220)
!5248 = !DILocation(line: 254, column: 7, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 252, column: 21)
!5250 = !DILocation(line: 254, column: 12, scope: !5249)
!5251 = !DILocation(line: 254, column: 22, scope: !5249)
!5252 = !DILocation(line: 254, column: 28, scope: !5249)
!5253 = !DILocation(line: 254, column: 5, scope: !5249)
!5254 = !DILocation(line: 255, column: 37, scope: !5249)
!5255 = !DILocation(line: 256, column: 6, scope: !5249)
!5256 = !DILocation(line: 256, column: 11, scope: !5249)
!5257 = !DILocation(line: 256, column: 13, scope: !5249)
!5258 = !DILocation(line: 256, column: 22, scope: !5249)
!5259 = !DILocation(line: 257, column: 7, scope: !5249)
!5260 = !DILocation(line: 257, column: 12, scope: !5249)
!5261 = !DILocation(line: 257, column: 14, scope: !5249)
!5262 = !DILocation(line: 257, column: 23, scope: !5249)
!5263 = !DILocation(line: 255, column: 22, scope: !5249)
!5264 = !DILocation(line: 255, column: 11, scope: !5249)
!5265 = !DILocation(line: 255, column: 9, scope: !5249)
!5266 = !DILocation(line: 258, column: 17, scope: !5249)
!5267 = !DILocation(line: 258, column: 32, scope: !5249)
!5268 = !DILocation(line: 258, column: 7, scope: !5249)
!5269 = !DILocation(line: 258, column: 41, scope: !5249)
!5270 = !DILocation(line: 258, column: 39, scope: !5249)
!5271 = !DILocation(line: 258, column: 46, scope: !5249)
!5272 = !DILocation(line: 258, column: 5, scope: !5249)
!5273 = !DILocation(line: 259, column: 18, scope: !5249)
!5274 = !DILocation(line: 259, column: 17, scope: !5249)
!5275 = !DILocation(line: 259, column: 33, scope: !5249)
!5276 = !DILocation(line: 259, column: 7, scope: !5249)
!5277 = !DILocation(line: 259, column: 42, scope: !5249)
!5278 = !DILocation(line: 259, column: 40, scope: !5249)
!5279 = !DILocation(line: 259, column: 47, scope: !5249)
!5280 = !DILocation(line: 259, column: 5, scope: !5249)
!5281 = !DILocalVariable(name: "__UNIQUE_ID___x215", scope: !5282, file: !3, line: 266, type: !180)
!5282 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 266, column: 4)
!5283 = !DILocation(line: 266, column: 4, scope: !5282)
!5284 = !DILocalVariable(name: "__UNIQUE_ID___x213", scope: !5285, file: !3, line: 266, type: !180)
!5285 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 266, column: 4)
!5286 = !DILocation(line: 266, column: 4, scope: !5285)
!5287 = !DILocalVariable(name: "__UNIQUE_ID___y214", scope: !5285, file: !3, line: 266, type: !180)
!5288 = !DILocalVariable(name: "__UNIQUE_ID___y216", scope: !5282, file: !3, line: 266, type: !180)
!5289 = !DILocation(line: 266, column: 4, scope: !5249)
!5290 = !DILocation(line: 265, column: 3, scope: !5249)
!5291 = !DILocation(line: 265, column: 11, scope: !5249)
!5292 = !DILocation(line: 265, column: 13, scope: !5249)
!5293 = !DILocation(line: 265, column: 18, scope: !5249)
!5294 = !DILocation(line: 265, column: 30, scope: !5249)
!5295 = !DILocalVariable(name: "__UNIQUE_ID___x219", scope: !5296, file: !3, line: 268, type: !180)
!5296 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 268, column: 4)
!5297 = !DILocation(line: 268, column: 4, scope: !5296)
!5298 = !DILocalVariable(name: "__UNIQUE_ID___x217", scope: !5299, file: !3, line: 268, type: !180)
!5299 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 268, column: 4)
!5300 = !DILocation(line: 268, column: 4, scope: !5299)
!5301 = !DILocalVariable(name: "__UNIQUE_ID___y218", scope: !5299, file: !3, line: 268, type: !180)
!5302 = !DILocalVariable(name: "__UNIQUE_ID___y220", scope: !5296, file: !3, line: 268, type: !180)
!5303 = !DILocation(line: 268, column: 4, scope: !5249)
!5304 = !DILocation(line: 267, column: 3, scope: !5249)
!5305 = !DILocation(line: 267, column: 11, scope: !5249)
!5306 = !DILocation(line: 267, column: 13, scope: !5249)
!5307 = !DILocation(line: 267, column: 18, scope: !5249)
!5308 = !DILocation(line: 267, column: 28, scope: !5249)
!5309 = !DILocation(line: 269, column: 3, scope: !5249)
!5310 = !DILocation(line: 272, column: 17, scope: !5249)
!5311 = !DILocation(line: 272, column: 22, scope: !5249)
!5312 = !DILocation(line: 272, column: 24, scope: !5249)
!5313 = !DILocation(line: 272, column: 31, scope: !5249)
!5314 = !DILocation(line: 272, column: 12, scope: !5249)
!5315 = !DILocation(line: 272, column: 50, scope: !5249)
!5316 = !DILocation(line: 272, column: 48, scope: !5249)
!5317 = !DILocation(line: 272, column: 55, scope: !5249)
!5318 = !DILocation(line: 272, column: 10, scope: !5249)
!5319 = !DILocation(line: 273, column: 15, scope: !5249)
!5320 = !DILocation(line: 273, column: 20, scope: !5249)
!5321 = !DILocation(line: 273, column: 22, scope: !5249)
!5322 = !DILocation(line: 273, column: 29, scope: !5249)
!5323 = !DILocation(line: 273, column: 10, scope: !5249)
!5324 = !DILocation(line: 273, column: 46, scope: !5249)
!5325 = !DILocation(line: 273, column: 44, scope: !5249)
!5326 = !DILocation(line: 273, column: 51, scope: !5249)
!5327 = !DILocation(line: 273, column: 8, scope: !5249)
!5328 = !DILocation(line: 275, column: 7, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 275, column: 7)
!5330 = !DILocation(line: 275, column: 15, scope: !5329)
!5331 = !DILocation(line: 275, column: 17, scope: !5329)
!5332 = !DILocation(line: 275, column: 24, scope: !5329)
!5333 = !DILocation(line: 275, column: 43, scope: !5329)
!5334 = !DILocation(line: 275, column: 41, scope: !5329)
!5335 = !DILocation(line: 275, column: 7, scope: !5249)
!5336 = !DILocation(line: 277, column: 5, scope: !5329)
!5337 = !DILocation(line: 277, column: 13, scope: !5329)
!5338 = !DILocation(line: 278, column: 5, scope: !5329)
!5339 = !DILocation(line: 278, column: 13, scope: !5329)
!5340 = !DILocation(line: 278, column: 15, scope: !5329)
!5341 = !DILocation(line: 278, column: 22, scope: !5329)
!5342 = !DILocation(line: 279, column: 5, scope: !5329)
!5343 = !DILocation(line: 279, column: 10, scope: !5329)
!5344 = !DILocation(line: 279, column: 21, scope: !5329)
!5345 = !DILocation(line: 276, column: 24, scope: !5329)
!5346 = !DILocation(line: 276, column: 4, scope: !5329)
!5347 = !DILocation(line: 276, column: 12, scope: !5329)
!5348 = !DILocation(line: 276, column: 22, scope: !5329)
!5349 = !DILocation(line: 280, column: 12, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 280, column: 12)
!5351 = !DILocation(line: 280, column: 20, scope: !5350)
!5352 = !DILocation(line: 280, column: 22, scope: !5350)
!5353 = !DILocation(line: 280, column: 29, scope: !5350)
!5354 = !DILocation(line: 280, column: 46, scope: !5350)
!5355 = !DILocation(line: 280, column: 44, scope: !5350)
!5356 = !DILocation(line: 280, column: 12, scope: !5329)
!5357 = !DILocation(line: 282, column: 5, scope: !5350)
!5358 = !DILocation(line: 282, column: 13, scope: !5350)
!5359 = !DILocation(line: 283, column: 5, scope: !5350)
!5360 = !DILocation(line: 283, column: 13, scope: !5350)
!5361 = !DILocation(line: 283, column: 15, scope: !5350)
!5362 = !DILocation(line: 283, column: 22, scope: !5350)
!5363 = !DILocation(line: 284, column: 5, scope: !5350)
!5364 = !DILocation(line: 284, column: 10, scope: !5350)
!5365 = !DILocation(line: 284, column: 21, scope: !5350)
!5366 = !DILocation(line: 281, column: 24, scope: !5350)
!5367 = !DILocation(line: 281, column: 4, scope: !5350)
!5368 = !DILocation(line: 281, column: 12, scope: !5350)
!5369 = !DILocation(line: 281, column: 22, scope: !5350)
!5370 = !DILocation(line: 286, column: 4, scope: !5350)
!5371 = !DILocation(line: 286, column: 12, scope: !5350)
!5372 = !DILocation(line: 286, column: 22, scope: !5350)
!5373 = !DILocalVariable(name: "__UNIQUE_ID___x221", scope: !5374, file: !3, line: 288, type: !7)
!5374 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 288, column: 4)
!5375 = !DILocation(line: 288, column: 4, scope: !5374)
!5376 = !DILocalVariable(name: "__UNIQUE_ID___y222", scope: !5374, file: !3, line: 288, type: !7)
!5377 = !DILocation(line: 288, column: 4, scope: !5249)
!5378 = !DILocation(line: 287, column: 3, scope: !5249)
!5379 = !DILocation(line: 287, column: 11, scope: !5249)
!5380 = !DILocation(line: 287, column: 13, scope: !5249)
!5381 = !DILocation(line: 287, column: 20, scope: !5249)
!5382 = !DILocation(line: 287, column: 37, scope: !5249)
!5383 = !DILocalVariable(name: "__UNIQUE_ID___x223", scope: !5384, file: !3, line: 291, type: !7)
!5384 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 291, column: 4)
!5385 = !DILocation(line: 291, column: 4, scope: !5384)
!5386 = !DILocalVariable(name: "__UNIQUE_ID___y224", scope: !5384, file: !3, line: 291, type: !7)
!5387 = !DILocation(line: 291, column: 4, scope: !5249)
!5388 = !DILocation(line: 290, column: 3, scope: !5249)
!5389 = !DILocation(line: 290, column: 11, scope: !5249)
!5390 = !DILocation(line: 290, column: 13, scope: !5249)
!5391 = !DILocation(line: 290, column: 20, scope: !5249)
!5392 = !DILocation(line: 290, column: 35, scope: !5249)
!5393 = !DILocation(line: 292, column: 3, scope: !5249)
!5394 = !DILocation(line: 295, column: 22, scope: !5249)
!5395 = !DILocalVariable(name: "__x", scope: !5396, file: !3, line: 295, type: !115)
!5396 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 295, column: 29)
!5397 = !DILocation(line: 295, column: 29, scope: !5396)
!5398 = !DILocation(line: 296, column: 9, scope: !5249)
!5399 = !DILocation(line: 296, column: 14, scope: !5249)
!5400 = !DILocation(line: 296, column: 16, scope: !5249)
!5401 = !DILocation(line: 296, column: 25, scope: !5249)
!5402 = !DILocation(line: 295, column: 7, scope: !5249)
!5403 = !DILocation(line: 295, column: 5, scope: !5249)
!5404 = !DILocation(line: 299, column: 7, scope: !5249)
!5405 = !DILocation(line: 299, column: 11, scope: !5249)
!5406 = !DILocation(line: 299, column: 9, scope: !5249)
!5407 = !DILocation(line: 299, column: 16, scope: !5249)
!5408 = !DILocation(line: 299, column: 5, scope: !5249)
!5409 = !DILocation(line: 301, column: 7, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 301, column: 7)
!5411 = !DILocation(line: 301, column: 15, scope: !5410)
!5412 = !DILocation(line: 301, column: 17, scope: !5410)
!5413 = !DILocation(line: 301, column: 24, scope: !5410)
!5414 = !DILocation(line: 301, column: 43, scope: !5410)
!5415 = !DILocation(line: 301, column: 41, scope: !5410)
!5416 = !DILocation(line: 301, column: 7, scope: !5249)
!5417 = !DILocation(line: 303, column: 5, scope: !5410)
!5418 = !DILocation(line: 303, column: 13, scope: !5410)
!5419 = !DILocation(line: 304, column: 5, scope: !5410)
!5420 = !DILocation(line: 304, column: 13, scope: !5410)
!5421 = !DILocation(line: 304, column: 15, scope: !5410)
!5422 = !DILocation(line: 304, column: 22, scope: !5410)
!5423 = !DILocation(line: 305, column: 5, scope: !5410)
!5424 = !DILocation(line: 305, column: 10, scope: !5410)
!5425 = !DILocation(line: 305, column: 21, scope: !5410)
!5426 = !DILocation(line: 302, column: 24, scope: !5410)
!5427 = !DILocation(line: 302, column: 4, scope: !5410)
!5428 = !DILocation(line: 302, column: 12, scope: !5410)
!5429 = !DILocation(line: 302, column: 22, scope: !5410)
!5430 = !DILocation(line: 307, column: 4, scope: !5410)
!5431 = !DILocation(line: 307, column: 12, scope: !5410)
!5432 = !DILocation(line: 307, column: 22, scope: !5410)
!5433 = !DILocalVariable(name: "__UNIQUE_ID___x225", scope: !5434, file: !3, line: 309, type: !7)
!5434 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 309, column: 4)
!5435 = !DILocation(line: 309, column: 4, scope: !5434)
!5436 = !DILocalVariable(name: "__UNIQUE_ID___y226", scope: !5434, file: !3, line: 309, type: !7)
!5437 = !DILocation(line: 309, column: 4, scope: !5249)
!5438 = !DILocation(line: 308, column: 3, scope: !5249)
!5439 = !DILocation(line: 308, column: 11, scope: !5249)
!5440 = !DILocation(line: 308, column: 13, scope: !5249)
!5441 = !DILocation(line: 308, column: 20, scope: !5249)
!5442 = !DILocation(line: 308, column: 37, scope: !5249)
!5443 = !DILocalVariable(name: "__UNIQUE_ID___x227", scope: !5444, file: !3, line: 311, type: !7)
!5444 = distinct !DILexicalBlock(scope: !5249, file: !3, line: 311, column: 4)
!5445 = !DILocation(line: 311, column: 4, scope: !5444)
!5446 = !DILocalVariable(name: "__UNIQUE_ID___y228", scope: !5444, file: !3, line: 311, type: !7)
!5447 = !DILocation(line: 311, column: 4, scope: !5249)
!5448 = !DILocation(line: 310, column: 3, scope: !5249)
!5449 = !DILocation(line: 310, column: 11, scope: !5249)
!5450 = !DILocation(line: 310, column: 13, scope: !5249)
!5451 = !DILocation(line: 310, column: 20, scope: !5249)
!5452 = !DILocation(line: 310, column: 35, scope: !5249)
!5453 = !DILocation(line: 312, column: 3, scope: !5249)
!5454 = !DILocation(line: 315, column: 3, scope: !5249)
!5455 = !DILocation(line: 316, column: 3, scope: !5249)
!5456 = !DILocation(line: 319, column: 1, scope: !5220)
!5457 = distinct !DISubprogram(name: "__instrument_read_write_bitop", scope: !4623, file: !4623, line: 61, type: !4287, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5458 = !DILocalVariable(name: "v", arg: 1, scope: !5459, file: !4300, line: 54, type: !4303)
!5459 = distinct !DISubprogram(name: "instrument_read_write", scope: !4300, file: !4300, line: 54, type: !4301, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5460 = !DILocation(line: 54, column: 72, scope: !5459, inlinedAt: !5461)
!5461 = distinct !DILocation(line: 81, column: 3, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5463, file: !4623, line: 80, column: 9)
!5463 = distinct !DILexicalBlock(scope: !5457, file: !4623, line: 63, column: 6)
!5464 = !DILocalVariable(name: "size", arg: 2, scope: !5459, file: !4300, line: 54, type: !564)
!5465 = !DILocation(line: 54, column: 82, scope: !5459, inlinedAt: !5461)
!5466 = !DILocalVariable(name: "nr", arg: 1, scope: !5457, file: !4623, line: 61, type: !524)
!5467 = !DILocation(line: 61, column: 55, scope: !5457)
!5468 = !DILocalVariable(name: "addr", arg: 2, scope: !5457, file: !4623, line: 61, type: !4289)
!5469 = !DILocation(line: 61, column: 83, scope: !5457)
!5470 = !DILocation(line: 81, column: 25, scope: !5462)
!5471 = !DILocation(line: 81, column: 32, scope: !5462)
!5472 = !DILocation(line: 81, column: 30, scope: !5462)
!5473 = !DILocation(line: 56, column: 20, scope: !5459, inlinedAt: !5461)
!5474 = !DILocation(line: 56, column: 23, scope: !5459, inlinedAt: !5461)
!5475 = !DILocation(line: 56, column: 2, scope: !5459, inlinedAt: !5461)
!5476 = !DILocation(line: 57, column: 2, scope: !5459, inlinedAt: !5461)
!5477 = !DILocation(line: 83, column: 1, scope: !5457)
!5478 = distinct !DISubprogram(name: "kasan_check_write", scope: !5479, file: !5479, line: 38, type: !5480, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5479 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5480 = !DISubroutineType(types: !5481)
!5481 = !{!474, !4303, !7}
!5482 = !DILocalVariable(name: "p", arg: 1, scope: !5478, file: !5479, line: 38, type: !4303)
!5483 = !DILocation(line: 38, column: 59, scope: !5478)
!5484 = !DILocalVariable(name: "size", arg: 2, scope: !5478, file: !5479, line: 38, type: !7)
!5485 = !DILocation(line: 38, column: 75, scope: !5478)
!5486 = !DILocation(line: 40, column: 2, scope: !5478)
!5487 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5488, file: !5488, line: 178, type: !5489, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5488 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5489 = !DISubroutineType(types: !5490)
!5490 = !{null, !4303, !564, !180}
!5491 = !DILocalVariable(name: "ptr", arg: 1, scope: !5487, file: !5488, line: 178, type: !4303)
!5492 = !DILocation(line: 178, column: 60, scope: !5487)
!5493 = !DILocalVariable(name: "size", arg: 2, scope: !5487, file: !5488, line: 178, type: !564)
!5494 = !DILocation(line: 178, column: 72, scope: !5487)
!5495 = !DILocalVariable(name: "type", arg: 3, scope: !5487, file: !5488, line: 179, type: !180)
!5496 = !DILocation(line: 179, column: 15, scope: !5487)
!5497 = !DILocation(line: 179, column: 23, scope: !5487)
!5498 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4348, file: !4348, line: 308, type: !4349, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5499 = !DILocalVariable(name: "m", arg: 1, scope: !5498, file: !4348, line: 308, type: !2635)
!5500 = !DILocation(line: 308, column: 66, scope: !5498)
!5501 = !DILocation(line: 310, column: 10, scope: !5498)
!5502 = !DILocation(line: 310, column: 12, scope: !5498)
!5503 = !DILocation(line: 310, column: 34, scope: !5498)
!5504 = !DILocation(line: 310, column: 39, scope: !5498)
!5505 = !DILocation(line: 310, column: 2, scope: !5498)
!5506 = distinct !DISubprogram(name: "fixp_new16", scope: !3, file: !3, line: 229, type: !5507, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5507 = !DISubroutineType(types: !5508)
!5508 = !{!1096, !1096}
!5509 = !DILocalVariable(name: "a", arg: 1, scope: !5506, file: !3, line: 229, type: !1096)
!5510 = !DILocation(line: 229, column: 34, scope: !5506)
!5511 = !DILocation(line: 231, column: 15, scope: !5506)
!5512 = !DILocation(line: 231, column: 10, scope: !5506)
!5513 = !DILocation(line: 231, column: 18, scope: !5506)
!5514 = !DILocation(line: 231, column: 9, scope: !5506)
!5515 = !DILocation(line: 231, column: 2, scope: !5506)
!5516 = distinct !DISubprogram(name: "apply_envelope", scope: !3, file: !3, line: 152, type: !5517, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5517 = !DISubroutineType(types: !5518)
!5518 = !{!180, !4373, !180, !5519}
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!5520 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !5521)
!5521 = distinct !DILocation(line: 172, column: 6, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 171, column: 13)
!5523 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 162, column: 6)
!5524 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !5525)
!5525 = distinct !DILocation(line: 163, column: 6, scope: !5523)
!5526 = !DILocalVariable(name: "state", arg: 1, scope: !5516, file: !3, line: 152, type: !4373)
!5527 = !DILocation(line: 152, column: 51, scope: !5516)
!5528 = !DILocalVariable(name: "value", arg: 2, scope: !5516, file: !3, line: 152, type: !180)
!5529 = !DILocation(line: 152, column: 62, scope: !5516)
!5530 = !DILocalVariable(name: "envelope", arg: 3, scope: !5516, file: !3, line: 153, type: !5519)
!5531 = !DILocation(line: 153, column: 26, scope: !5516)
!5532 = !DILocalVariable(name: "effect", scope: !5516, file: !3, line: 155, type: !105)
!5533 = !DILocation(line: 155, column: 20, scope: !5516)
!5534 = !DILocation(line: 155, column: 29, scope: !5516)
!5535 = !DILocation(line: 155, column: 36, scope: !5516)
!5536 = !DILocalVariable(name: "now", scope: !5516, file: !3, line: 156, type: !178)
!5537 = !DILocation(line: 156, column: 16, scope: !5516)
!5538 = !DILocation(line: 156, column: 22, scope: !5516)
!5539 = !DILocalVariable(name: "time_from_level", scope: !5516, file: !3, line: 157, type: !180)
!5540 = !DILocation(line: 157, column: 6, scope: !5516)
!5541 = !DILocalVariable(name: "time_of_envelope", scope: !5516, file: !3, line: 158, type: !180)
!5542 = !DILocation(line: 158, column: 6, scope: !5516)
!5543 = !DILocalVariable(name: "envelope_level", scope: !5516, file: !3, line: 159, type: !180)
!5544 = !DILocation(line: 159, column: 6, scope: !5516)
!5545 = !DILocalVariable(name: "difference", scope: !5516, file: !3, line: 160, type: !180)
!5546 = !DILocation(line: 160, column: 6, scope: !5516)
!5547 = !DILocation(line: 162, column: 6, scope: !5523)
!5548 = !DILocation(line: 162, column: 16, scope: !5523)
!5549 = !DILocation(line: 162, column: 30, scope: !5523)
!5550 = !DILocation(line: 163, column: 6, scope: !5523)
!5551 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !5525)
!5552 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !5525)
!5553 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !5525)
!5554 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !5525)
!5555 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !5525)
!5556 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !5525)
!5557 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !5525)
!5558 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !5525)
!5559 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !5525)
!5560 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !5525)
!5561 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !5525)
!5562 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !5525)
!5563 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !5525)
!5564 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !5525)
!5565 = !DILocation(line: 162, column: 6, scope: !5516)
!5566 = !DILocation(line: 165, column: 3, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 165, column: 3)
!5568 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 165, column: 3)
!5569 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 164, column: 65)
!5570 = !DILocation(line: 165, column: 3, scope: !5568)
!5571 = !DILocation(line: 167, column: 38, scope: !5569)
!5572 = !DILocation(line: 167, column: 44, scope: !5569)
!5573 = !DILocation(line: 167, column: 51, scope: !5569)
!5574 = !DILocation(line: 167, column: 42, scope: !5569)
!5575 = !DILocation(line: 167, column: 21, scope: !5569)
!5576 = !DILocation(line: 167, column: 19, scope: !5569)
!5577 = !DILocation(line: 168, column: 22, scope: !5569)
!5578 = !DILocation(line: 168, column: 32, scope: !5569)
!5579 = !DILocation(line: 168, column: 20, scope: !5569)
!5580 = !DILocalVariable(name: "__UNIQUE_ID___x209", scope: !5581, file: !3, line: 169, type: !290)
!5581 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 169, column: 20)
!5582 = !DILocation(line: 169, column: 20, scope: !5581)
!5583 = !DILocalVariable(name: "__UNIQUE_ID___y210", scope: !5581, file: !3, line: 169, type: !290)
!5584 = !DILocation(line: 169, column: 18, scope: !5569)
!5585 = !DILocation(line: 171, column: 2, scope: !5569)
!5586 = !DILocation(line: 171, column: 13, scope: !5522)
!5587 = !DILocation(line: 171, column: 23, scope: !5522)
!5588 = !DILocation(line: 171, column: 35, scope: !5522)
!5589 = !DILocation(line: 171, column: 38, scope: !5522)
!5590 = !DILocation(line: 171, column: 46, scope: !5522)
!5591 = !DILocation(line: 171, column: 53, scope: !5522)
!5592 = !DILocation(line: 171, column: 60, scope: !5522)
!5593 = !DILocation(line: 172, column: 6, scope: !5522)
!5594 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !5521)
!5595 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !5521)
!5596 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !5521)
!5597 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !5521)
!5598 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !5521)
!5599 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !5521)
!5600 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !5521)
!5601 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !5521)
!5602 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !5521)
!5603 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !5521)
!5604 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !5521)
!5605 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !5521)
!5606 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !5521)
!5607 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !5521)
!5608 = !DILocation(line: 173, column: 68, scope: !5522)
!5609 = !DILocation(line: 174, column: 6, scope: !5522)
!5610 = !DILocation(line: 171, column: 13, scope: !5523)
!5611 = !DILocation(line: 175, column: 38, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 174, column: 40)
!5613 = !DILocation(line: 175, column: 45, scope: !5612)
!5614 = !DILocation(line: 175, column: 55, scope: !5612)
!5615 = !DILocation(line: 175, column: 53, scope: !5612)
!5616 = !DILocation(line: 175, column: 21, scope: !5612)
!5617 = !DILocation(line: 175, column: 19, scope: !5612)
!5618 = !DILocation(line: 176, column: 22, scope: !5612)
!5619 = !DILocation(line: 176, column: 32, scope: !5612)
!5620 = !DILocation(line: 176, column: 20, scope: !5612)
!5621 = !DILocalVariable(name: "__UNIQUE_ID___x211", scope: !5622, file: !3, line: 177, type: !290)
!5622 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 177, column: 20)
!5623 = !DILocation(line: 177, column: 20, scope: !5622)
!5624 = !DILocalVariable(name: "__UNIQUE_ID___y212", scope: !5622, file: !3, line: 177, type: !290)
!5625 = !DILocation(line: 177, column: 18, scope: !5612)
!5626 = !DILocation(line: 178, column: 2, scope: !5612)
!5627 = !DILocation(line: 179, column: 10, scope: !5522)
!5628 = !DILocation(line: 179, column: 3, scope: !5522)
!5629 = !DILocalVariable(name: "__x", scope: !5630, file: !3, line: 181, type: !180)
!5630 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 181, column: 15)
!5631 = !DILocation(line: 181, column: 15, scope: !5630)
!5632 = !DILocation(line: 181, column: 28, scope: !5516)
!5633 = !DILocation(line: 181, column: 26, scope: !5516)
!5634 = !DILocation(line: 181, column: 13, scope: !5516)
!5635 = !DILocation(line: 183, column: 2, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 183, column: 2)
!5637 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 183, column: 2)
!5638 = !DILocation(line: 183, column: 2, scope: !5637)
!5639 = !DILocation(line: 184, column: 2, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5641, file: !3, line: 184, column: 2)
!5641 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 184, column: 2)
!5642 = !DILocation(line: 184, column: 2, scope: !5641)
!5643 = !DILocation(line: 185, column: 2, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 185, column: 2)
!5645 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 185, column: 2)
!5646 = !DILocation(line: 185, column: 2, scope: !5645)
!5647 = !DILocation(line: 187, column: 15, scope: !5516)
!5648 = !DILocation(line: 187, column: 28, scope: !5516)
!5649 = !DILocation(line: 187, column: 26, scope: !5516)
!5650 = !DILocation(line: 187, column: 46, scope: !5516)
!5651 = !DILocation(line: 187, column: 44, scope: !5516)
!5652 = !DILocation(line: 187, column: 13, scope: !5516)
!5653 = !DILocation(line: 189, column: 2, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 189, column: 2)
!5655 = distinct !DILexicalBlock(scope: !5516, file: !3, line: 189, column: 2)
!5656 = !DILocation(line: 189, column: 2, scope: !5655)
!5657 = !DILocation(line: 191, column: 9, scope: !5516)
!5658 = !DILocation(line: 191, column: 15, scope: !5516)
!5659 = !DILocation(line: 192, column: 5, scope: !5516)
!5660 = !DILocation(line: 192, column: 18, scope: !5516)
!5661 = !DILocation(line: 192, column: 16, scope: !5516)
!5662 = !DILocation(line: 192, column: 3, scope: !5516)
!5663 = !DILocation(line: 192, column: 37, scope: !5516)
!5664 = !DILocation(line: 192, column: 50, scope: !5516)
!5665 = !DILocation(line: 192, column: 48, scope: !5516)
!5666 = !DILocation(line: 191, column: 2, scope: !5516)
!5667 = !DILocation(line: 193, column: 1, scope: !5516)
!5668 = distinct !DISubprogram(name: "fixp_mult", scope: !3, file: !3, line: 234, type: !5669, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!1096, !1096, !1096}
!5671 = !DILocalVariable(name: "a", arg: 1, scope: !5668, file: !3, line: 234, type: !1096)
!5672 = !DILocation(line: 234, column: 33, scope: !5668)
!5673 = !DILocalVariable(name: "b", arg: 2, scope: !5668, file: !3, line: 234, type: !1096)
!5674 = !DILocation(line: 234, column: 40, scope: !5668)
!5675 = !DILocation(line: 236, column: 12, scope: !5668)
!5676 = !DILocation(line: 236, column: 7, scope: !5668)
!5677 = !DILocation(line: 236, column: 14, scope: !5668)
!5678 = !DILocation(line: 236, column: 23, scope: !5668)
!5679 = !DILocation(line: 236, column: 6, scope: !5668)
!5680 = !DILocation(line: 236, column: 4, scope: !5668)
!5681 = !DILocation(line: 237, column: 16, scope: !5668)
!5682 = !DILocation(line: 237, column: 20, scope: !5668)
!5683 = !DILocation(line: 237, column: 18, scope: !5668)
!5684 = !DILocation(line: 237, column: 24, scope: !5668)
!5685 = !DILocation(line: 237, column: 9, scope: !5668)
!5686 = !DILocation(line: 237, column: 2, scope: !5668)
!5687 = distinct !DISubprogram(name: "fixp_sin32", scope: !3791, file: !3791, line: 72, type: !5688, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5688 = !DISubroutineType(types: !5689)
!5689 = !{!1331, !180}
!5690 = !DILocalVariable(name: "degrees", arg: 1, scope: !5687, file: !3791, line: 72, type: !180)
!5691 = !DILocation(line: 72, column: 34, scope: !5687)
!5692 = !DILocation(line: 74, column: 13, scope: !5687)
!5693 = !DILocation(line: 74, column: 21, scope: !5687)
!5694 = !DILocation(line: 74, column: 27, scope: !5687)
!5695 = !DILocation(line: 74, column: 34, scope: !5687)
!5696 = !DILocation(line: 74, column: 10, scope: !5687)
!5697 = !DILocation(line: 76, column: 22, scope: !5687)
!5698 = !DILocation(line: 76, column: 9, scope: !5687)
!5699 = !DILocation(line: 76, column: 2, scope: !5687)
!5700 = distinct !DISubprogram(name: "ml_calculate_direction", scope: !3, file: !3, line: 216, type: !5701, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5701 = !DISubroutineType(types: !5702)
!5702 = !{!290, !290, !290, !290, !290}
!5703 = !DILocalVariable(name: "direction", arg: 1, scope: !5700, file: !3, line: 216, type: !290)
!5704 = !DILocation(line: 216, column: 39, scope: !5700)
!5705 = !DILocalVariable(name: "force", arg: 2, scope: !5700, file: !3, line: 216, type: !290)
!5706 = !DILocation(line: 216, column: 54, scope: !5700)
!5707 = !DILocalVariable(name: "new_direction", arg: 3, scope: !5700, file: !3, line: 217, type: !290)
!5708 = !DILocation(line: 217, column: 11, scope: !5700)
!5709 = !DILocalVariable(name: "new_force", arg: 4, scope: !5700, file: !3, line: 217, type: !290)
!5710 = !DILocation(line: 217, column: 30, scope: !5700)
!5711 = !DILocation(line: 219, column: 7, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 219, column: 6)
!5713 = !DILocation(line: 219, column: 6, scope: !5700)
!5714 = !DILocation(line: 220, column: 10, scope: !5712)
!5715 = !DILocation(line: 220, column: 3, scope: !5712)
!5716 = !DILocation(line: 221, column: 7, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 221, column: 6)
!5718 = !DILocation(line: 221, column: 6, scope: !5700)
!5719 = !DILocation(line: 222, column: 10, scope: !5717)
!5720 = !DILocation(line: 222, column: 3, scope: !5717)
!5721 = !DILocation(line: 223, column: 17, scope: !5700)
!5722 = !DILocation(line: 223, column: 27, scope: !5700)
!5723 = !DILocation(line: 223, column: 35, scope: !5700)
!5724 = !DILocation(line: 223, column: 33, scope: !5700)
!5725 = !DILocation(line: 224, column: 5, scope: !5700)
!5726 = !DILocation(line: 224, column: 19, scope: !5700)
!5727 = !DILocation(line: 224, column: 27, scope: !5700)
!5728 = !DILocation(line: 224, column: 25, scope: !5700)
!5729 = !DILocation(line: 223, column: 41, scope: !5700)
!5730 = !DILocation(line: 225, column: 4, scope: !5700)
!5731 = !DILocation(line: 225, column: 12, scope: !5700)
!5732 = !DILocation(line: 225, column: 10, scope: !5700)
!5733 = !DILocation(line: 224, column: 38, scope: !5700)
!5734 = !DILocation(line: 225, column: 24, scope: !5700)
!5735 = !DILocation(line: 223, column: 9, scope: !5700)
!5736 = !DILocation(line: 223, column: 2, scope: !5700)
!5737 = !DILocation(line: 226, column: 1, scope: !5700)
!5738 = distinct !DISubprogram(name: "__fixp_sin32", scope: !3791, file: !3791, line: 48, type: !5688, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5739 = !DILocalVariable(name: "degrees", arg: 1, scope: !5738, file: !3791, line: 48, type: !180)
!5740 = !DILocation(line: 48, column: 36, scope: !5738)
!5741 = !DILocalVariable(name: "ret", scope: !5738, file: !3791, line: 50, type: !1331)
!5742 = !DILocation(line: 50, column: 6, scope: !5738)
!5743 = !DILocalVariable(name: "negative", scope: !5738, file: !3791, line: 51, type: !474)
!5744 = !DILocation(line: 51, column: 7, scope: !5738)
!5745 = !DILocation(line: 53, column: 6, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5738, file: !3791, line: 53, column: 6)
!5747 = !DILocation(line: 53, column: 14, scope: !5746)
!5748 = !DILocation(line: 53, column: 6, scope: !5738)
!5749 = !DILocation(line: 54, column: 12, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5746, file: !3791, line: 53, column: 21)
!5751 = !DILocation(line: 55, column: 11, scope: !5750)
!5752 = !DILocation(line: 56, column: 2, scope: !5750)
!5753 = !DILocation(line: 57, column: 6, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5738, file: !3791, line: 57, column: 6)
!5755 = !DILocation(line: 57, column: 14, scope: !5754)
!5756 = !DILocation(line: 57, column: 6, scope: !5738)
!5757 = !DILocation(line: 58, column: 19, scope: !5754)
!5758 = !DILocation(line: 58, column: 17, scope: !5754)
!5759 = !DILocation(line: 58, column: 11, scope: !5754)
!5760 = !DILocation(line: 58, column: 3, scope: !5754)
!5761 = !DILocation(line: 60, column: 18, scope: !5738)
!5762 = !DILocation(line: 60, column: 8, scope: !5738)
!5763 = !DILocation(line: 60, column: 6, scope: !5738)
!5764 = !DILocation(line: 62, column: 9, scope: !5738)
!5765 = !DILocation(line: 62, column: 21, scope: !5738)
!5766 = !DILocation(line: 62, column: 20, scope: !5738)
!5767 = !DILocation(line: 62, column: 27, scope: !5738)
!5768 = !DILocation(line: 62, column: 2, scope: !5738)
!5769 = distinct !DISubprogram(name: "calculate_next_time", scope: !3, file: !3, line: 77, type: !5770, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5770 = !DISubroutineType(types: !5771)
!5771 = !{!178, !4373}
!5772 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !5773)
!5773 = distinct !DILocation(line: 101, column: 6, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 91, column: 30)
!5775 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 91, column: 7)
!5776 = distinct !DILexicalBlock(scope: !5777, file: !3, line: 90, column: 36)
!5777 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 90, column: 6)
!5778 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !5779)
!5779 = distinct !DILocation(line: 94, column: 6, scope: !5774)
!5780 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !5781)
!5781 = distinct !DILocation(line: 87, column: 6, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5783, file: !3, line: 85, column: 7)
!5783 = distinct !DILexicalBlock(scope: !5784, file: !3, line: 82, column: 31)
!5784 = distinct !DILexicalBlock(scope: !5769, file: !3, line: 82, column: 6)
!5785 = !DILocation(line: 363, column: 74, scope: !4347, inlinedAt: !5786)
!5786 = distinct !DILocation(line: 84, column: 4, scope: !5783)
!5787 = !DILocalVariable(name: "state", arg: 1, scope: !5769, file: !3, line: 77, type: !4373)
!5788 = !DILocation(line: 77, column: 66, scope: !5769)
!5789 = !DILocalVariable(name: "envelope", scope: !5769, file: !3, line: 79, type: !3801)
!5790 = !DILocation(line: 79, column: 28, scope: !5769)
!5791 = !DILocation(line: 79, column: 52, scope: !5769)
!5792 = !DILocation(line: 79, column: 59, scope: !5769)
!5793 = !DILocation(line: 79, column: 39, scope: !5769)
!5794 = !DILocalVariable(name: "attack_stop", scope: !5769, file: !3, line: 80, type: !178)
!5795 = !DILocation(line: 80, column: 16, scope: !5769)
!5796 = !DILocalVariable(name: "fade_start", scope: !5769, file: !3, line: 80, type: !178)
!5797 = !DILocation(line: 80, column: 29, scope: !5769)
!5798 = !DILocalVariable(name: "next_fade", scope: !5769, file: !3, line: 80, type: !178)
!5799 = !DILocation(line: 80, column: 41, scope: !5769)
!5800 = !DILocation(line: 82, column: 6, scope: !5784)
!5801 = !DILocation(line: 82, column: 16, scope: !5784)
!5802 = !DILocation(line: 82, column: 6, scope: !5769)
!5803 = !DILocation(line: 83, column: 17, scope: !5783)
!5804 = !DILocation(line: 83, column: 24, scope: !5783)
!5805 = !DILocation(line: 84, column: 21, scope: !5783)
!5806 = !DILocation(line: 84, column: 31, scope: !5783)
!5807 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !5786)
!5808 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !5786)
!5809 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !5786)
!5810 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !5786)
!5811 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !5786)
!5812 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !5786)
!5813 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !5786)
!5814 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !5786)
!5815 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !5786)
!5816 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !5786)
!5817 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !5786)
!5818 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !5786)
!5819 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !5786)
!5820 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !5786)
!5821 = !DILocation(line: 83, column: 32, scope: !5783)
!5822 = !DILocation(line: 83, column: 15, scope: !5783)
!5823 = !DILocation(line: 85, column: 7, scope: !5782)
!5824 = !DILocation(line: 85, column: 7, scope: !5783)
!5825 = !DILocation(line: 86, column: 11, scope: !5782)
!5826 = !DILocation(line: 86, column: 18, scope: !5782)
!5827 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !5781)
!5828 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !5781)
!5829 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !5781)
!5830 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !5781)
!5831 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !5781)
!5832 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !5781)
!5833 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !5781)
!5834 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !5781)
!5835 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !5781)
!5836 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !5781)
!5837 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !5781)
!5838 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !5781)
!5839 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !5781)
!5840 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !5781)
!5841 = !DILocation(line: 86, column: 25, scope: !5782)
!5842 = !DILocation(line: 86, column: 4, scope: !5782)
!5843 = !DILocation(line: 88, column: 2, scope: !5783)
!5844 = !DILocation(line: 90, column: 6, scope: !5777)
!5845 = !DILocation(line: 90, column: 13, scope: !5777)
!5846 = !DILocation(line: 90, column: 21, scope: !5777)
!5847 = !DILocation(line: 90, column: 28, scope: !5777)
!5848 = !DILocation(line: 90, column: 6, scope: !5769)
!5849 = !DILocation(line: 91, column: 7, scope: !5775)
!5850 = !DILocation(line: 91, column: 17, scope: !5775)
!5851 = !DILocation(line: 91, column: 7, scope: !5776)
!5852 = !DILocation(line: 93, column: 17, scope: !5774)
!5853 = !DILocation(line: 93, column: 24, scope: !5774)
!5854 = !DILocation(line: 94, column: 23, scope: !5774)
!5855 = !DILocation(line: 94, column: 33, scope: !5774)
!5856 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !5779)
!5857 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !5779)
!5858 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !5779)
!5859 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !5779)
!5860 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !5779)
!5861 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !5779)
!5862 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !5779)
!5863 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !5779)
!5864 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !5779)
!5865 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !5779)
!5866 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !5779)
!5867 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !5779)
!5868 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !5779)
!5869 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !5779)
!5870 = !DILocation(line: 93, column: 32, scope: !5774)
!5871 = !DILocation(line: 93, column: 15, scope: !5774)
!5872 = !DILocation(line: 96, column: 8, scope: !5873)
!5873 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 96, column: 8)
!5874 = !DILocation(line: 96, column: 8, scope: !5774)
!5875 = !DILocation(line: 97, column: 12, scope: !5873)
!5876 = !DILocation(line: 97, column: 5, scope: !5873)
!5877 = !DILocation(line: 100, column: 16, scope: !5774)
!5878 = !DILocation(line: 100, column: 23, scope: !5774)
!5879 = !DILocation(line: 365, column: 27, scope: !4402, inlinedAt: !5773)
!5880 = !DILocation(line: 365, column: 6, scope: !4402, inlinedAt: !5773)
!5881 = !DILocation(line: 365, column: 6, scope: !4347, inlinedAt: !5773)
!5882 = !DILocation(line: 366, column: 12, scope: !4406, inlinedAt: !5773)
!5883 = !DILocation(line: 366, column: 14, scope: !4406, inlinedAt: !5773)
!5884 = !DILocation(line: 366, column: 7, scope: !4407, inlinedAt: !5773)
!5885 = !DILocation(line: 367, column: 4, scope: !4406, inlinedAt: !5773)
!5886 = !DILocation(line: 368, column: 28, scope: !4407, inlinedAt: !5773)
!5887 = !DILocation(line: 368, column: 10, scope: !4407, inlinedAt: !5773)
!5888 = !DILocation(line: 368, column: 3, scope: !4407, inlinedAt: !5773)
!5889 = !DILocation(line: 370, column: 29, scope: !4415, inlinedAt: !5773)
!5890 = !DILocation(line: 370, column: 10, scope: !4415, inlinedAt: !5773)
!5891 = !DILocation(line: 370, column: 3, scope: !4415, inlinedAt: !5773)
!5892 = !DILocation(line: 372, column: 1, scope: !4347, inlinedAt: !5773)
!5893 = !DILocation(line: 100, column: 30, scope: !5774)
!5894 = !DILocation(line: 100, column: 14, scope: !5774)
!5895 = !DILocation(line: 102, column: 8, scope: !5896)
!5896 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 102, column: 8)
!5897 = !DILocation(line: 102, column: 8, scope: !5774)
!5898 = !DILocation(line: 103, column: 12, scope: !5896)
!5899 = !DILocation(line: 103, column: 5, scope: !5896)
!5900 = !DILocation(line: 104, column: 3, scope: !5774)
!5901 = !DILocation(line: 106, column: 10, scope: !5776)
!5902 = !DILocation(line: 106, column: 17, scope: !5776)
!5903 = !DILocation(line: 106, column: 3, scope: !5776)
!5904 = !DILocation(line: 109, column: 9, scope: !5769)
!5905 = !DILocation(line: 109, column: 16, scope: !5769)
!5906 = !DILocation(line: 109, column: 2, scope: !5769)
!5907 = !DILocation(line: 110, column: 1, scope: !5769)
!5908 = !DILocalVariable(name: "effect", arg: 1, scope: !3798, file: !3, line: 58, type: !3803)
!5909 = !DILocation(line: 58, column: 71, scope: !3798)
!5910 = !DILocation(line: 62, column: 10, scope: !3798)
!5911 = !DILocation(line: 62, column: 18, scope: !3798)
!5912 = !DILocation(line: 62, column: 2, scope: !3798)
!5913 = !DILocation(line: 64, column: 11, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !3798, file: !3, line: 62, column: 24)
!5915 = !DILocation(line: 64, column: 19, scope: !5914)
!5916 = !DILocation(line: 64, column: 21, scope: !5914)
!5917 = !DILocation(line: 64, column: 30, scope: !5914)
!5918 = !DILocation(line: 64, column: 3, scope: !5914)
!5919 = !DILocation(line: 67, column: 11, scope: !5914)
!5920 = !DILocation(line: 67, column: 19, scope: !5914)
!5921 = !DILocation(line: 67, column: 21, scope: !5914)
!5922 = !DILocation(line: 67, column: 30, scope: !5914)
!5923 = !DILocation(line: 67, column: 3, scope: !5914)
!5924 = !DILocation(line: 70, column: 3, scope: !5914)
!5925 = !DILocation(line: 72, column: 1, scope: !3798)
!5926 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4746, file: !4746, line: 651, type: !5927, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5927 = !DISubroutineType(types: !5928)
!5928 = !{null, !178}
!5929 = !DILocalVariable(name: "f", arg: 1, scope: !5926, file: !4746, line: 651, type: !178)
!5930 = !DILocation(line: 651, column: 65, scope: !5926)
!5931 = !DILocalVariable(name: "__edi", scope: !5932, file: !4746, line: 653, type: !178)
!5932 = distinct !DILexicalBlock(scope: !5926, file: !4746, line: 653, column: 2)
!5933 = !DILocation(line: 653, column: 2, scope: !5932)
!5934 = !DILocalVariable(name: "__esi", scope: !5932, file: !4746, line: 653, type: !178)
!5935 = !DILocalVariable(name: "__edx", scope: !5932, file: !4746, line: 653, type: !178)
!5936 = !DILocalVariable(name: "__ecx", scope: !5932, file: !4746, line: 653, type: !178)
!5937 = !DILocalVariable(name: "__eax", scope: !5932, file: !4746, line: 653, type: !178)
!5938 = !{i32 -2145688547, i32 -2145687797, i32 -2145687563, i32 -2145687512, i32 -2145687484, i32 -2145687459, i32 -2145687775, i32 -2145687762, i32 -2145687324, i32 -2145687205, i32 -2145687670, i32 -2145687643, i32 -2145687615, i32 -2145687585}
!5939 = !DILocation(line: 654, column: 1, scope: !5926)
!5940 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4746, file: !4746, line: 661, type: !1762, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5941 = !DILocalVariable(name: "__edi", scope: !5942, file: !4746, line: 663, type: !178)
!5942 = distinct !DILexicalBlock(scope: !5940, file: !4746, line: 663, column: 2)
!5943 = !DILocation(line: 663, column: 2, scope: !5942)
!5944 = !DILocalVariable(name: "__esi", scope: !5942, file: !4746, line: 663, type: !178)
!5945 = !DILocalVariable(name: "__edx", scope: !5942, file: !4746, line: 663, type: !178)
!5946 = !DILocalVariable(name: "__ecx", scope: !5942, file: !4746, line: 663, type: !178)
!5947 = !DILocalVariable(name: "__eax", scope: !5942, file: !4746, line: 663, type: !178)
!5948 = !{i32 -2145683336, i32 -2145682606, i32 -2145682372, i32 -2145682321, i32 -2145682293, i32 -2145682268, i32 -2145682584, i32 -2145682571, i32 -2145682133, i32 -2145682014, i32 -2145682479, i32 -2145682452, i32 -2145682424, i32 -2145682394}
!5949 = !DILocation(line: 664, column: 1, scope: !5940)
!5950 = distinct !DISubprogram(name: "kasan_check_read", scope: !5479, file: !5479, line: 34, type: !5480, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !327)
!5951 = !DILocalVariable(name: "p", arg: 1, scope: !5950, file: !5479, line: 34, type: !4303)
!5952 = !DILocation(line: 34, column: 58, scope: !5950)
!5953 = !DILocalVariable(name: "size", arg: 2, scope: !5950, file: !5479, line: 34, type: !7)
!5954 = !DILocation(line: 34, column: 74, scope: !5950)
!5955 = !DILocation(line: 36, column: 2, scope: !5950)
