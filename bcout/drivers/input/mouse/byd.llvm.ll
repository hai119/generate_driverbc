; ModuleID = '../bcout/drivers/input/mouse/byd.llvm.bc'
source_filename = "drivers/input/mouse/byd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.anon.65 = type { i16, i8 }
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
%struct.vdso_image = type opaque
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
%struct.psmouse = type { i8*, %struct.input_dev*, %struct.ps2dev, %struct.delayed_work, i8*, i8*, %struct.psmouse_protocol*, [8 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i64, i64, i32, [64 x i8], [32 x i8], i32, i32, i32, i32, i8, i32 (%struct.psmouse*)*, void (%struct.psmouse*, i32)*, void (%struct.psmouse*, i32)*, void (%struct.psmouse*, i32)*, i32 (%struct.psmouse*)*, i32 (%struct.psmouse*)*, void (%struct.psmouse*)*, void (%struct.psmouse*)*, i32 (%struct.psmouse*)*, void (%struct.psmouse*)*, void (%struct.psmouse*)* }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
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
%struct.ps2dev = type { %struct.serio*, %struct.mutex, %struct.wait_queue_head, i64, [8 x i8], i8, i8 }
%struct.serio = type { i8*, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, i32 (%struct.serio*, i8)*, i32 (%struct.serio*)*, void (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, %struct.serio*, %struct.list_head, %struct.list_head, i32, %struct.serio_driver*, %struct.mutex, %struct.device, %struct.list_head, %struct.mutex* }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio_driver = type { i8*, %struct.serio_device_id*, i8, void (%struct.serio*)*, i32 (%struct.serio*, i8, i32)*, i32 (%struct.serio*, %struct.serio_driver*)*, i32 (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, void (%struct.serio*)*, %struct.device_driver }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, %struct.workqueue_struct*, i32 }
%struct.psmouse_protocol = type { i32, i8, i8, i8, i8, i8*, i8*, {}*, i32 (%struct.psmouse*)* }
%struct.byd_data = type { %struct.timer_list, %struct.psmouse*, i32, i32, i64, i8, i8, i8 }

@__const.byd_detect.param = private unnamed_addr constant [4 x i8] c"\03\00\00\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"BYD\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"TouchPad\00", align 1
@byd_reset_touchpad.seq = internal constant [25 x %struct.anon.65] [%struct.anon.65 { i16 4339, i8 -56 }, %struct.anon.65 { i16 4339, i8 100 }, %struct.anon.65 { i16 4339, i8 80 }, %struct.anon.65 { i16 754, i8 0 }, %struct.anon.65 { i16 244, i8 0 }, %struct.anon.65 { i16 4322, i8 0 }, %struct.anon.65 { i16 4320, i8 2 }, %struct.anon.65 { i16 5344, i8 1 }, %struct.anon.65 { i16 4307, i8 1 }, %struct.anon.65 { i16 4304, i8 4 }, %struct.anon.65 { i16 4308, i8 2 }, %struct.anon.65 { i16 4311, i8 4 }, %struct.anon.65 { i16 4312, i8 4 }, %struct.anon.65 { i16 4315, i8 1 }, %struct.anon.65 { i16 4318, i8 0 }, %struct.anon.65 { i16 4323, i8 2 }, %struct.anon.65 { i16 4306, i8 4 }, %struct.anon.65 { i16 4325, i8 4 }, %struct.anon.65 { i16 4316, i8 0 }, %struct.anon.65 { i16 4317, i8 0 }, %struct.anon.65 { i16 4319, i8 0 }, %struct.anon.65 { i16 4321, i8 0 }, %struct.anon.65 { i16 4305, i8 2 }, %struct.anon.65 { i16 4320, i8 0 }, %struct.anon.65 { i16 4322, i8 1 }], align 16, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"byd: Unable to initialize device\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"byd: Always_1 bit not 1. pkt[0] = %02x\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"byd: Unrecognized Z: pkt = %02x %02x %02x %02x\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @byd_detect(%struct.psmouse* %psmouse, i1 zeroext %set_properties) #0 !dbg !3964 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %set_properties.addr = alloca i8, align 1
  %ps2dev = alloca %struct.ps2dev*, align 8
  %param = alloca [4 x i8], align 1
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !3965, metadata !DIExpression()), !dbg !3966
  %frombool = zext i1 %set_properties to i8
  store i8 %frombool, i8* %set_properties.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %set_properties.addr, metadata !3967, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev, metadata !3969, metadata !DIExpression()), !dbg !3971
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !3972
  %ps2dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !3973
  store %struct.ps2dev* %ps2dev1, %struct.ps2dev** %ps2dev, align 8, !dbg !3971
  call void @llvm.dbg.declare(metadata [4 x i8]* %param, metadata !3974, metadata !DIExpression()), !dbg !3976
  %1 = bitcast [4 x i8]* %param to i8*, !dbg !3976
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.byd_detect.param, i32 0, i32 0), i64 4, i1 false), !dbg !3976
  %2 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !3977
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %param, i64 0, i64 0, !dbg !3979
  %call = call i32 @ps2_command(%struct.ps2dev* %2, i8* %arraydecay, i32 4328) #10, !dbg !3980
  %tobool = icmp ne i32 %call, 0, !dbg !3980
  br i1 %tobool, label %if.then, label %if.end, !dbg !3981

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !3982
  br label %return, !dbg !3982

if.end:                                           ; preds = %entry
  %3 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !3983
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %param, i64 0, i64 0, !dbg !3985
  %call3 = call i32 @ps2_command(%struct.ps2dev* %3, i8* %arraydecay2, i32 4328) #10, !dbg !3986
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3986
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3987

if.then5:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4, !dbg !3988
  br label %return, !dbg !3988

if.end6:                                          ; preds = %if.end
  %4 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !3989
  %arraydecay7 = getelementptr inbounds [4 x i8], [4 x i8]* %param, i64 0, i64 0, !dbg !3991
  %call8 = call i32 @ps2_command(%struct.ps2dev* %4, i8* %arraydecay7, i32 4328) #10, !dbg !3992
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3992
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3993

if.then10:                                        ; preds = %if.end6
  store i32 -1, i32* %retval, align 4, !dbg !3994
  br label %return, !dbg !3994

if.end11:                                         ; preds = %if.end6
  %5 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !3995
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %param, i64 0, i64 0, !dbg !3997
  %call13 = call i32 @ps2_command(%struct.ps2dev* %5, i8* %arraydecay12, i32 4328) #10, !dbg !3998
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3998
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !3999

if.then15:                                        ; preds = %if.end11
  store i32 -1, i32* %retval, align 4, !dbg !4000
  br label %return, !dbg !4000

if.end16:                                         ; preds = %if.end11
  %6 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4001
  %arraydecay17 = getelementptr inbounds [4 x i8], [4 x i8]* %param, i64 0, i64 0, !dbg !4003
  %call18 = call i32 @ps2_command(%struct.ps2dev* %6, i8* %arraydecay17, i32 1001) #10, !dbg !4004
  %tobool19 = icmp ne i32 %call18, 0, !dbg !4004
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4005

if.then20:                                        ; preds = %if.end16
  store i32 -1, i32* %retval, align 4, !dbg !4006
  br label %return, !dbg !4006

if.end21:                                         ; preds = %if.end16
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %param, i64 0, i64 1, !dbg !4007
  %7 = load i8, i8* %arrayidx, align 1, !dbg !4007
  %conv = zext i8 %7 to i32, !dbg !4007
  %cmp = icmp ne i32 %conv, 3, !dbg !4009
  br i1 %cmp, label %if.then27, label %lor.lhs.false, !dbg !4010

lor.lhs.false:                                    ; preds = %if.end21
  %arrayidx23 = getelementptr [4 x i8], [4 x i8]* %param, i64 0, i64 2, !dbg !4011
  %8 = load i8, i8* %arrayidx23, align 1, !dbg !4011
  %conv24 = zext i8 %8 to i32, !dbg !4011
  %cmp25 = icmp ne i32 %conv24, 100, !dbg !4012
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !4013

if.then27:                                        ; preds = %lor.lhs.false, %if.end21
  store i32 -19, i32* %retval, align 4, !dbg !4014
  br label %return, !dbg !4014

if.end28:                                         ; preds = %lor.lhs.false
  %9 = load i8, i8* %set_properties.addr, align 1, !dbg !4015
  %tobool29 = trunc i8 %9 to i1, !dbg !4015
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !4017

if.then30:                                        ; preds = %if.end28
  %10 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4018
  %vendor = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 4, !dbg !4020
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %vendor, align 8, !dbg !4021
  %11 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4022
  %name = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 5, !dbg !4023
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %name, align 8, !dbg !4024
  br label %if.end31, !dbg !4025

if.end31:                                         ; preds = %if.then30, %if.end28
  store i32 0, i32* %retval, align 4, !dbg !4026
  br label %return, !dbg !4026

return:                                           ; preds = %if.end31, %if.then27, %if.then20, %if.then15, %if.then10, %if.then5, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4027
  ret i32 %12, !dbg !4027
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @ps2_command(%struct.ps2dev*, i8*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @byd_init(%struct.psmouse* %psmouse) #0 !dbg !4028 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %dev = alloca %struct.input_dev*, align 8
  %priv = alloca %struct.byd_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4029, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev, metadata !4031, metadata !DIExpression()), !dbg !4032
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4033
  %dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 1, !dbg !4034
  %1 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4034
  store %struct.input_dev* %1, %struct.input_dev** %dev, align 8, !dbg !4032
  call void @llvm.dbg.declare(metadata %struct.byd_data** %priv, metadata !4035, metadata !DIExpression()), !dbg !4036
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4037
  %call = call i32 @psmouse_reset(%struct.psmouse* %2) #10, !dbg !4039
  %tobool = icmp ne i32 %call, 0, !dbg !4039
  br i1 %tobool, label %if.then, label %if.end, !dbg !4040

if.then:                                          ; preds = %entry
  store i32 -5, i32* %retval, align 4, !dbg !4041
  br label %return, !dbg !4041

if.end:                                           ; preds = %entry
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4042
  %call2 = call i32 @byd_reset_touchpad(%struct.psmouse* %3) #10, !dbg !4044
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4044
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4045

if.then4:                                         ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !4046
  br label %return, !dbg !4046

if.end5:                                          ; preds = %if.end
  %call6 = call i8* @kzalloc(i64 72, i32 3264) #10, !dbg !4047
  %4 = bitcast i8* %call6 to %struct.byd_data*, !dbg !4047
  store %struct.byd_data* %4, %struct.byd_data** %priv, align 8, !dbg !4048
  %5 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4049
  %tobool7 = icmp ne %struct.byd_data* %5, null, !dbg !4049
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4051

if.then8:                                         ; preds = %if.end5
  store i32 -12, i32* %retval, align 4, !dbg !4052
  br label %return, !dbg !4052

if.end9:                                          ; preds = %if.end5
  %6 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4053
  %7 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4054
  %psmouse10 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %7, i32 0, i32 1, !dbg !4055
  store %struct.psmouse* %6, %struct.psmouse** %psmouse10, align 8, !dbg !4056
  %8 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4057
  %timer = getelementptr inbounds %struct.byd_data, %struct.byd_data* %8, i32 0, i32 0, !dbg !4057
  call void @init_timer_key(%struct.timer_list* %timer, void (%struct.timer_list*)* @byd_clear_touch, i32 0, i8* null, %struct.lock_class_key* null) #10, !dbg !4057
  %9 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4058
  %10 = bitcast %struct.byd_data* %9 to i8*, !dbg !4058
  %11 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4059
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 0, !dbg !4060
  store i8* %10, i8** %private, align 8, !dbg !4061
  %12 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4062
  %disconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 32, !dbg !4063
  store void (%struct.psmouse*)* @byd_disconnect, void (%struct.psmouse*)** %disconnect, align 8, !dbg !4064
  %13 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4065
  %reconnect = getelementptr inbounds %struct.psmouse, %struct.psmouse* %13, i32 0, i32 30, !dbg !4066
  store i32 (%struct.psmouse*)* @byd_reconnect, i32 (%struct.psmouse*)** %reconnect, align 8, !dbg !4067
  %14 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4068
  %protocol_handler = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 26, !dbg !4069
  store i32 (%struct.psmouse*)* @byd_process_byte, i32 (%struct.psmouse*)** %protocol_handler, align 8, !dbg !4070
  %15 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4071
  %pktsize = getelementptr inbounds %struct.psmouse, %struct.psmouse* %15, i32 0, i32 10, !dbg !4072
  store i8 4, i8* %pktsize, align 2, !dbg !4073
  %16 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4074
  %resync_time = getelementptr inbounds %struct.psmouse, %struct.psmouse* %16, i32 0, i32 24, !dbg !4075
  store i32 0, i32* %resync_time, align 8, !dbg !4076
  %17 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4077
  %propbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 4, !dbg !4078
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %propbit, i64 0, i64 0, !dbg !4077
  call void @__set_bit(i64 0, i64* %arraydecay) #10, !dbg !4079
  %18 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4080
  %keybit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 6, !dbg !4081
  %arraydecay11 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit, i64 0, i64 0, !dbg !4080
  call void @__set_bit(i64 330, i64* %arraydecay11) #10, !dbg !4082
  %19 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4083
  %keybit12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 6, !dbg !4084
  %arraydecay13 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit12, i64 0, i64 0, !dbg !4083
  call void @__set_bit(i64 325, i64* %arraydecay13) #10, !dbg !4085
  %20 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4086
  %keybit14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 6, !dbg !4087
  %arraydecay15 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit14, i64 0, i64 0, !dbg !4086
  call void @__set_bit(i64 272, i64* %arraydecay15) #10, !dbg !4088
  %21 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4089
  %keybit16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 6, !dbg !4090
  %arraydecay17 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit16, i64 0, i64 0, !dbg !4089
  call void @__set_bit(i64 273, i64* %arraydecay17) #10, !dbg !4091
  %22 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4092
  %keybit18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 6, !dbg !4093
  %arraydecay19 = getelementptr inbounds [12 x i64], [12 x i64]* %keybit18, i64 0, i64 0, !dbg !4092
  call void @__clear_bit(i64 274, i64* %arraydecay19) #10, !dbg !4094
  %23 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4095
  %evbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 5, !dbg !4096
  %arraydecay20 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit, i64 0, i64 0, !dbg !4095
  call void @__set_bit(i64 3, i64* %arraydecay20) #10, !dbg !4097
  %24 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4098
  call void @input_set_abs_params(%struct.input_dev* %24, i32 0, i32 0, i32 11264, i32 0, i32 0) #10, !dbg !4099
  %25 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4100
  call void @input_set_abs_params(%struct.input_dev* %25, i32 1, i32 0, i32 6656, i32 0, i32 0) #10, !dbg !4101
  %26 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4102
  call void @input_abs_set_res(%struct.input_dev* %26, i32 0, i32 111) #10, !dbg !4103
  %27 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4104
  call void @input_abs_set_res(%struct.input_dev* %27, i32 1, i32 111) #10, !dbg !4105
  %28 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4106
  %evbit21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 5, !dbg !4107
  %arraydecay22 = getelementptr inbounds [1 x i64], [1 x i64]* %evbit21, i64 0, i64 0, !dbg !4106
  call void @__clear_bit(i64 2, i64* %arraydecay22) #10, !dbg !4108
  %29 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4109
  %relbit = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 7, !dbg !4110
  %arraydecay23 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit, i64 0, i64 0, !dbg !4109
  call void @__clear_bit(i64 0, i64* %arraydecay23) #10, !dbg !4111
  %30 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4112
  %relbit24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 7, !dbg !4113
  %arraydecay25 = getelementptr inbounds [1 x i64], [1 x i64]* %relbit24, i64 0, i64 0, !dbg !4112
  call void @__clear_bit(i64 1, i64* %arraydecay25) #10, !dbg !4114
  store i32 0, i32* %retval, align 4, !dbg !4115
  br label %return, !dbg !4115

return:                                           ; preds = %if.end9, %if.then8, %if.then4, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !4116
  ret i32 %31, !dbg !4116
}

; Function Attrs: noredzone
declare dso_local i32 @psmouse_reset(%struct.psmouse*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @byd_reset_touchpad(%struct.psmouse* %psmouse) #0 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %ps2dev = alloca %struct.ps2dev*, align 8
  %param = alloca [4 x i8], align 1
  %i = alloca i64, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4117, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev, metadata !4119, metadata !DIExpression()), !dbg !4120
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4121
  %ps2dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 2, !dbg !4122
  store %struct.ps2dev* %ps2dev1, %struct.ps2dev** %ps2dev, align 8, !dbg !4120
  call void @llvm.dbg.declare(metadata [4 x i8]* %param, metadata !4123, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.declare(metadata i64* %i, metadata !4125, metadata !DIExpression()), !dbg !4126
  store i64 0, i64* %i, align 8, !dbg !4127
  br label %for.cond, !dbg !4129

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8, !dbg !4130
  %cmp = icmp ult i64 %1, 25, !dbg !4132
  br i1 %cmp, label %for.body, label %for.end, !dbg !4133

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %param, i64 0, i64 0, !dbg !4134
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay, i8 0, i64 4, i1 false), !dbg !4134
  %2 = load i64, i64* %i, align 8, !dbg !4136
  %arrayidx = getelementptr [25 x %struct.anon.65], [25 x %struct.anon.65]* @byd_reset_touchpad.seq, i64 0, i64 %2, !dbg !4137
  %arg = getelementptr inbounds %struct.anon.65, %struct.anon.65* %arrayidx, i32 0, i32 1, !dbg !4138
  %3 = load i8, i8* %arg, align 2, !dbg !4138
  %arrayidx2 = getelementptr [4 x i8], [4 x i8]* %param, i64 0, i64 0, !dbg !4139
  store i8 %3, i8* %arrayidx2, align 1, !dbg !4140
  %4 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev, align 8, !dbg !4141
  %arraydecay3 = getelementptr inbounds [4 x i8], [4 x i8]* %param, i64 0, i64 0, !dbg !4143
  %5 = load i64, i64* %i, align 8, !dbg !4144
  %arrayidx4 = getelementptr [25 x %struct.anon.65], [25 x %struct.anon.65]* @byd_reset_touchpad.seq, i64 0, i64 %5, !dbg !4145
  %command = getelementptr inbounds %struct.anon.65, %struct.anon.65* %arrayidx4, i32 0, i32 0, !dbg !4146
  %6 = load i16, i16* %command, align 4, !dbg !4146
  %conv = zext i16 %6 to i32, !dbg !4145
  %call = call i32 @ps2_command(%struct.ps2dev* %4, i8* %arraydecay3, i32 %conv) #10, !dbg !4147
  %tobool = icmp ne i32 %call, 0, !dbg !4147
  br i1 %tobool, label %if.then, label %if.end, !dbg !4148

if.then:                                          ; preds = %for.body
  store i32 -5, i32* %retval, align 4, !dbg !4149
  br label %return, !dbg !4149

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4150

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %i, align 8, !dbg !4151
  %inc = add i64 %7, 1, !dbg !4151
  store i64 %inc, i64* %i, align 8, !dbg !4151
  br label %for.cond, !dbg !4152, !llvm.loop !4153

for.end:                                          ; preds = %for.cond
  %8 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4155
  call void @psmouse_set_state(%struct.psmouse* %8, i32 4) #10, !dbg !4156
  store i32 0, i32* %retval, align 4, !dbg !4157
  br label %return, !dbg !4157

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !4158
  ret i32 %9, !dbg !4158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4159 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4162, metadata !DIExpression()), !dbg !4166
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4172, metadata !DIExpression()), !dbg !4173
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4174, metadata !DIExpression()), !dbg !4175
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4176, metadata !DIExpression()), !dbg !4177
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4178, metadata !DIExpression()), !dbg !4182
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4184, metadata !DIExpression()), !dbg !4188
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4190, metadata !DIExpression()), !dbg !4194
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4199, metadata !DIExpression()), !dbg !4200
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4201, metadata !DIExpression()), !dbg !4202
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4203, metadata !DIExpression()), !dbg !4204
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4205, metadata !DIExpression()), !dbg !4206
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4207, metadata !DIExpression()), !dbg !4208
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4209, metadata !DIExpression()), !dbg !4210
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4211, metadata !DIExpression()), !dbg !4212
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4213, metadata !DIExpression()), !dbg !4214
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4215, metadata !DIExpression()), !dbg !4216
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4217, metadata !DIExpression()), !dbg !4218
  %0 = load i64, i64* %size.addr, align 8, !dbg !4219
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4220
  %or = or i32 %1, 256, !dbg !4221
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4222
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !4223
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4224

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4225
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4226
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4227

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4228
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4229
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4230
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4231
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4208
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4232
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4233
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4234
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4235
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4236
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4237
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4238
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4238
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4238
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4238
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4238
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4239
  br label %kmalloc.exit, !dbg !4239

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4240
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4241
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4241
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4243

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4244
  br label %kmalloc_index.exit.i, !dbg !4244

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4245
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4247
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4248

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4249
  br label %kmalloc_index.exit.i, !dbg !4249

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4250
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4252
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4253

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4254
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4255
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4256

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4257
  br label %kmalloc_index.exit.i, !dbg !4257

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4258
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4260
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4261

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4262
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4263
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4264

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4265
  br label %kmalloc_index.exit.i, !dbg !4265

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4266
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4268
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4269

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4270
  br label %kmalloc_index.exit.i, !dbg !4270

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4271
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4273
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4274

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4275
  br label %kmalloc_index.exit.i, !dbg !4275

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4276
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4278
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4279

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4280
  br label %kmalloc_index.exit.i, !dbg !4280

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4281
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4283
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4284

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4285
  br label %kmalloc_index.exit.i, !dbg !4285

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4286
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4288
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4289

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4290
  br label %kmalloc_index.exit.i, !dbg !4290

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4291
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4293
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4294

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4295
  br label %kmalloc_index.exit.i, !dbg !4295

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4296
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4298
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4299

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4300
  br label %kmalloc_index.exit.i, !dbg !4300

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4301
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4303
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4304

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4305
  br label %kmalloc_index.exit.i, !dbg !4305

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4306
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4308
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4309

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4310
  br label %kmalloc_index.exit.i, !dbg !4310

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4311
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4313
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4314

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4315
  br label %kmalloc_index.exit.i, !dbg !4315

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4316
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4318
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4319

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4320
  br label %kmalloc_index.exit.i, !dbg !4320

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4321
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4323
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4324

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4325
  br label %kmalloc_index.exit.i, !dbg !4325

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4326
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4328
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4329

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4330
  br label %kmalloc_index.exit.i, !dbg !4330

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4331
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4333
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4334

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4335
  br label %kmalloc_index.exit.i, !dbg !4335

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4336
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4338
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4339

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4340
  br label %kmalloc_index.exit.i, !dbg !4340

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4341
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4343
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4344

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4345
  br label %kmalloc_index.exit.i, !dbg !4345

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4346
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4348
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4349

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4350
  br label %kmalloc_index.exit.i, !dbg !4350

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4351
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4353
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4354

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4355
  br label %kmalloc_index.exit.i, !dbg !4355

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4356
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4358
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4359

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4360
  br label %kmalloc_index.exit.i, !dbg !4360

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4361
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4363
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4364

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4365
  br label %kmalloc_index.exit.i, !dbg !4365

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4366
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4368
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4369

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4370
  br label %kmalloc_index.exit.i, !dbg !4370

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4371
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4373
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4374

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4375
  br label %kmalloc_index.exit.i, !dbg !4375

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4376
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4378
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4379

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4380
  br label %kmalloc_index.exit.i, !dbg !4380

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4381
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4383
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4384

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4385
  br label %kmalloc_index.exit.i, !dbg !4385

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !4386, !srcloc !4389
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 199) #8, !dbg !4390, !srcloc !4393
  unreachable, !dbg !4394

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4395
  store i32 %45, i32* %index.i, align 4, !dbg !4396
  %46 = load i32, i32* %index.i, align 4, !dbg !4397
  %tobool.i = icmp ne i32 %46, 0, !dbg !4397
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4399

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4400
  br label %kmalloc.exit, !dbg !4400

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4401
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4402
  %and.i.i = and i32 %48, 17, !dbg !4402
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4402
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4402
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4402
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4402
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4404

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4405
  br label %kmalloc_type.exit.i, !dbg !4405

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4406
  %and2.i.i = and i32 %49, 1, !dbg !4407
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4406
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4406
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4406
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4408
  br label %kmalloc_type.exit.i, !dbg !4408

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4409
  %idxprom.i = zext i32 %51 to i64, !dbg !4410
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4410
  %52 = load i32, i32* %index.i, align 4, !dbg !4411
  %idxprom6.i = zext i32 %52 to i64, !dbg !4410
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4410
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4410
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4412
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4413
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4414
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4415
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4416
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4416
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4416
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4416
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !4416
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4177
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4417
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4418
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4419
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4420
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4421
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4422
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4423
  store i8* %62, i8** %retval.i, align 8, !dbg !4424
  br label %kmalloc.exit, !dbg !4424

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4425
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4426
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4427
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4427
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4427
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4427
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !4427
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4428
  br label %kmalloc.exit, !dbg !4428

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4429
  ret i8* %65, !dbg !4430
}

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @byd_clear_touch(%struct.timer_list* %t) #0 !dbg !4431 {
entry:
  %t.addr = alloca %struct.timer_list*, align 8
  %priv = alloca %struct.byd_data*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.byd_data*, align 8
  %psmouse = alloca %struct.psmouse*, align 8
  store %struct.timer_list* %t, %struct.timer_list** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %t.addr, metadata !4432, metadata !DIExpression()), !dbg !4433
  call void @llvm.dbg.declare(metadata %struct.byd_data** %priv, metadata !4434, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4436, metadata !DIExpression()), !dbg !4438
  %0 = load %struct.timer_list*, %struct.timer_list** %t.addr, align 8, !dbg !4438
  %1 = bitcast %struct.timer_list* %0 to i8*, !dbg !4438
  store i8* %1, i8** %__mptr, align 8, !dbg !4438
  br label %do.body, !dbg !4438

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4439

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4438
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4438
  %3 = bitcast i8* %add.ptr to %struct.byd_data*, !dbg !4438
  store %struct.byd_data* %3, %struct.byd_data** %tmp, align 8, !dbg !4439
  %4 = load %struct.byd_data*, %struct.byd_data** %tmp, align 8, !dbg !4438
  store %struct.byd_data* %4, %struct.byd_data** %priv, align 8, !dbg !4435
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse, metadata !4441, metadata !DIExpression()), !dbg !4442
  %5 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4443
  %psmouse1 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %5, i32 0, i32 1, !dbg !4444
  %6 = load %struct.psmouse*, %struct.psmouse** %psmouse1, align 8, !dbg !4444
  store %struct.psmouse* %6, %struct.psmouse** %psmouse, align 8, !dbg !4442
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse, align 8, !dbg !4445
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 2, !dbg !4446
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4447
  %8 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4447
  call void @serio_pause_rx(%struct.serio* %8) #10, !dbg !4448
  %9 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4449
  %touch = getelementptr inbounds %struct.byd_data, %struct.byd_data* %9, i32 0, i32 7, !dbg !4450
  store i8 0, i8* %touch, align 2, !dbg !4451
  %10 = load %struct.psmouse*, %struct.psmouse** %psmouse, align 8, !dbg !4452
  call void @byd_report_input(%struct.psmouse* %10) #10, !dbg !4453
  %11 = load %struct.psmouse*, %struct.psmouse** %psmouse, align 8, !dbg !4454
  %ps2dev2 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %11, i32 0, i32 2, !dbg !4455
  %serio3 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev2, i32 0, i32 0, !dbg !4456
  %12 = load %struct.serio*, %struct.serio** %serio3, align 8, !dbg !4456
  call void @serio_continue_rx(%struct.serio* %12) #10, !dbg !4457
  %13 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4458
  %abs_x = getelementptr inbounds %struct.byd_data, %struct.byd_data* %13, i32 0, i32 2, !dbg !4459
  store i32 5632, i32* %abs_x, align 8, !dbg !4460
  %14 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4461
  %abs_y = getelementptr inbounds %struct.byd_data, %struct.byd_data* %14, i32 0, i32 3, !dbg !4462
  store i32 3328, i32* %abs_y, align 4, !dbg !4463
  ret void, !dbg !4464
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @byd_disconnect(%struct.psmouse* %psmouse) #0 !dbg !4465 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %priv = alloca %struct.byd_data*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4466, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.declare(metadata %struct.byd_data** %priv, metadata !4468, metadata !DIExpression()), !dbg !4469
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4470
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4471
  %1 = load i8*, i8** %private, align 8, !dbg !4471
  %2 = bitcast i8* %1 to %struct.byd_data*, !dbg !4470
  store %struct.byd_data* %2, %struct.byd_data** %priv, align 8, !dbg !4469
  %3 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4472
  %tobool = icmp ne %struct.byd_data* %3, null, !dbg !4472
  br i1 %tobool, label %if.then, label %if.end, !dbg !4474

if.then:                                          ; preds = %entry
  %4 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4475
  %timer = getelementptr inbounds %struct.byd_data, %struct.byd_data* %4, i32 0, i32 0, !dbg !4477
  %call = call i32 @del_timer(%struct.timer_list* %timer) #10, !dbg !4478
  %5 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4479
  %private1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %5, i32 0, i32 0, !dbg !4480
  %6 = load i8*, i8** %private1, align 8, !dbg !4480
  call void @kfree(i8* %6) #10, !dbg !4481
  %7 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4482
  %private2 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 0, !dbg !4483
  store i8* null, i8** %private2, align 8, !dbg !4484
  br label %if.end, !dbg !4485

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @byd_reconnect(%struct.psmouse* %psmouse) #0 !dbg !4487 {
entry:
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %retry = alloca i32, align 4
  %error = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4488, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.declare(metadata i32* %retry, metadata !4490, metadata !DIExpression()), !dbg !4491
  store i32 0, i32* %retry, align 4, !dbg !4491
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4492, metadata !DIExpression()), !dbg !4493
  store i32 0, i32* %error, align 4, !dbg !4493
  br label %do.body, !dbg !4494

do.body:                                          ; preds = %land.end, %entry
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4495
  %call = call i32 @psmouse_reset(%struct.psmouse* %0) #10, !dbg !4497
  %1 = load i32, i32* %retry, align 4, !dbg !4498
  %tobool = icmp ne i32 %1, 0, !dbg !4498
  br i1 %tobool, label %if.then, label %if.end, !dbg !4500

if.then:                                          ; preds = %do.body
  call void @ssleep(i32 1) #10, !dbg !4501
  br label %if.end, !dbg !4501

if.end:                                           ; preds = %if.then, %do.body
  %2 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4502
  %call1 = call i32 @byd_detect(%struct.psmouse* %2, i1 zeroext false) #10, !dbg !4503
  store i32 %call1, i32* %error, align 4, !dbg !4504
  br label %do.cond, !dbg !4505

do.cond:                                          ; preds = %if.end
  %3 = load i32, i32* %error, align 4, !dbg !4506
  %tobool2 = icmp ne i32 %3, 0, !dbg !4506
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !4507

land.rhs:                                         ; preds = %do.cond
  %4 = load i32, i32* %retry, align 4, !dbg !4508
  %inc = add i32 %4, 1, !dbg !4508
  store i32 %inc, i32* %retry, align 4, !dbg !4508
  %cmp = icmp slt i32 %inc, 3, !dbg !4509
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %5 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ], !dbg !4510
  br i1 %5, label %do.body, label %do.end, !dbg !4505, !llvm.loop !4511

do.end:                                           ; preds = %land.end
  %6 = load i32, i32* %error, align 4, !dbg !4513
  %tobool3 = icmp ne i32 %6, 0, !dbg !4513
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4515

if.then4:                                         ; preds = %do.end
  %7 = load i32, i32* %error, align 4, !dbg !4516
  store i32 %7, i32* %retval, align 4, !dbg !4517
  br label %return, !dbg !4517

if.end5:                                          ; preds = %do.end
  %8 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4518
  %call6 = call i32 @byd_reset_touchpad(%struct.psmouse* %8) #10, !dbg !4519
  store i32 %call6, i32* %error, align 4, !dbg !4520
  %9 = load i32, i32* %error, align 4, !dbg !4521
  %tobool7 = icmp ne i32 %9, 0, !dbg !4521
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4523

if.then8:                                         ; preds = %if.end5
  %10 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4524
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 2, !dbg !4524
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4524
  %11 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4524
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %11, i32 0, i32 18, !dbg !4524
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0)) #13, !dbg !4524
  %12 = load i32, i32* %error, align 4, !dbg !4526
  store i32 %12, i32* %retval, align 4, !dbg !4527
  br label %return, !dbg !4527

if.end9:                                          ; preds = %if.end5
  store i32 0, i32* %retval, align 4, !dbg !4528
  br label %return, !dbg !4528

return:                                           ; preds = %if.end9, %if.then8, %if.then4
  %13 = load i32, i32* %retval, align 4, !dbg !4529
  ret i32 %13, !dbg !4529
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @byd_process_byte(%struct.psmouse* %psmouse) #0 !dbg !4530 {
entry:
  %retval.i81 = alloca i64, align 8
  %m.addr.i82 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i82, metadata !4531, metadata !DIExpression()), !dbg !4536
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !4531, metadata !DIExpression()), !dbg !4540
  %retval = alloca i32, align 4
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %priv = alloca %struct.byd_data*, align 8
  %pkt = alloca i8*, align 8
  %tap_time = alloca i64, align 8
  %signx = alloca i32, align 4
  %signy = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4545, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.declare(metadata %struct.byd_data** %priv, metadata !4547, metadata !DIExpression()), !dbg !4548
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4549
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4550
  %1 = load i8*, i8** %private, align 8, !dbg !4550
  %2 = bitcast i8* %1 to %struct.byd_data*, !dbg !4549
  store %struct.byd_data* %2, %struct.byd_data** %priv, align 8, !dbg !4548
  call void @llvm.dbg.declare(metadata i8** %pkt, metadata !4551, metadata !DIExpression()), !dbg !4553
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4554
  %packet = getelementptr inbounds %struct.psmouse, %struct.psmouse* %3, i32 0, i32 7, !dbg !4555
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %packet, i64 0, i64 0, !dbg !4554
  store i8* %arraydecay, i8** %pkt, align 8, !dbg !4553
  %4 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4556
  %pktcnt = getelementptr inbounds %struct.psmouse, %struct.psmouse* %4, i32 0, i32 9, !dbg !4558
  %5 = load i8, i8* %pktcnt, align 1, !dbg !4558
  %conv = zext i8 %5 to i32, !dbg !4556
  %cmp = icmp sgt i32 %conv, 0, !dbg !4559
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4560

land.lhs.true:                                    ; preds = %entry
  %6 = load i8*, i8** %pkt, align 8, !dbg !4561
  %arrayidx = getelementptr i8, i8* %6, i64 0, !dbg !4561
  %7 = load i8, i8* %arrayidx, align 1, !dbg !4561
  %conv2 = zext i8 %7 to i64, !dbg !4561
  %and = and i64 %conv2, 8, !dbg !4562
  %tobool = icmp ne i64 %and, 0, !dbg !4562
  br i1 %tobool, label %if.end, label %if.then, !dbg !4563

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4564
  %ps2dev = getelementptr inbounds %struct.psmouse, %struct.psmouse* %8, i32 0, i32 2, !dbg !4564
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev, i32 0, i32 0, !dbg !4564
  %9 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4564
  %dev = getelementptr inbounds %struct.serio, %struct.serio* %9, i32 0, i32 18, !dbg !4564
  %10 = load i8*, i8** %pkt, align 8, !dbg !4564
  %arrayidx3 = getelementptr i8, i8* %10, i64 0, !dbg !4564
  %11 = load i8, i8* %arrayidx3, align 1, !dbg !4564
  %conv4 = zext i8 %11 to i32, !dbg !4564
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %conv4) #13, !dbg !4564
  store i32 0, i32* %retval, align 4, !dbg !4566
  br label %return, !dbg !4566

if.end:                                           ; preds = %land.lhs.true, %entry
  %12 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4567
  %pktcnt5 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 9, !dbg !4569
  %13 = load i8, i8* %pktcnt5, align 1, !dbg !4569
  %conv6 = zext i8 %13 to i32, !dbg !4567
  %14 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4570
  %pktsize = getelementptr inbounds %struct.psmouse, %struct.psmouse* %14, i32 0, i32 10, !dbg !4571
  %15 = load i8, i8* %pktsize, align 2, !dbg !4571
  %conv7 = zext i8 %15 to i32, !dbg !4570
  %cmp8 = icmp slt i32 %conv6, %conv7, !dbg !4572
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4573

if.then10:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !4574
  br label %return, !dbg !4574

if.end11:                                         ; preds = %if.end
  %16 = load i8*, i8** %pkt, align 8, !dbg !4575
  %arrayidx12 = getelementptr i8, i8* %16, i64 3, !dbg !4575
  %17 = load i8, i8* %arrayidx12, align 1, !dbg !4575
  %conv13 = zext i8 %17 to i32, !dbg !4575
  switch i32 %conv13, label %sw.default [
    i32 248, label %sw.bb
    i32 0, label %sw.bb26
  ], !dbg !4576

sw.bb:                                            ; preds = %if.end11
  %18 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4577
  %touch = getelementptr inbounds %struct.byd_data, %struct.byd_data* %18, i32 0, i32 7, !dbg !4578
  %19 = load i8, i8* %touch, align 2, !dbg !4578
  %tobool14 = trunc i8 %19 to i1, !dbg !4578
  br i1 %tobool14, label %if.end25, label %if.then15, !dbg !4579

if.then15:                                        ; preds = %sw.bb
  call void @llvm.dbg.declare(metadata i64* %tap_time, metadata !4580, metadata !DIExpression()), !dbg !4581
  %20 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4582
  %last_touch_time = getelementptr inbounds %struct.byd_data, %struct.byd_data* %20, i32 0, i32 4, !dbg !4583
  %21 = load volatile i64, i64* %last_touch_time, align 8, !dbg !4583
  store i32 64, i32* %m.addr.i, align 4
  %22 = load i32, i32* %m.addr.i, align 4, !dbg !4584
  %23 = call i1 @llvm.is.constant.i32(i32 %22) #8, !dbg !4586
  br i1 %23, label %if.then.i, label %if.else.i, !dbg !4587

if.then.i:                                        ; preds = %if.then15
  %24 = load i32, i32* %m.addr.i, align 4, !dbg !4588
  %cmp.i = icmp slt i32 %24, 0, !dbg !4591
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4592

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4593
  br label %msecs_to_jiffies.exit, !dbg !4593

if.end.i:                                         ; preds = %if.then.i
  %25 = load i32, i32* %m.addr.i, align 4, !dbg !4594
  %call.i = call i64 @_msecs_to_jiffies(i32 %25) #12, !dbg !4595
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4596
  br label %msecs_to_jiffies.exit, !dbg !4596

if.else.i:                                        ; preds = %if.then15
  %26 = load i32, i32* %m.addr.i, align 4, !dbg !4597
  %call2.i = call i64 @__msecs_to_jiffies(i32 %26) #12, !dbg !4599
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4600
  br label %msecs_to_jiffies.exit, !dbg !4600

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %27 = load i64, i64* %retval.i, align 8, !dbg !4601
  %add = add i64 %21, %27, !dbg !4602
  store volatile i64 %add, i64* %tap_time, align 8, !dbg !4581
  %28 = load volatile i64, i64* %tap_time, align 8, !dbg !4603
  %29 = load volatile i64, i64* @jiffies, align 8, !dbg !4603
  %sub = sub i64 %28, %29, !dbg !4603
  %cmp16 = icmp slt i64 %sub, 0, !dbg !4603
  %30 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4604
  %touch18 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %30, i32 0, i32 7, !dbg !4605
  %frombool = zext i1 %cmp16 to i8, !dbg !4606
  store i8 %frombool, i8* %touch18, align 2, !dbg !4606
  %31 = load i8*, i8** %pkt, align 8, !dbg !4607
  %arrayidx19 = getelementptr i8, i8* %31, i64 1, !dbg !4607
  %32 = load i8, i8* %arrayidx19, align 1, !dbg !4607
  %conv20 = zext i8 %32 to i32, !dbg !4607
  %mul = mul i32 %conv20, 44, !dbg !4608
  %33 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4609
  %abs_x = getelementptr inbounds %struct.byd_data, %struct.byd_data* %33, i32 0, i32 2, !dbg !4610
  store i32 %mul, i32* %abs_x, align 8, !dbg !4611
  %34 = load i8*, i8** %pkt, align 8, !dbg !4612
  %arrayidx21 = getelementptr i8, i8* %34, i64 2, !dbg !4612
  %35 = load i8, i8* %arrayidx21, align 1, !dbg !4612
  %conv22 = zext i8 %35 to i32, !dbg !4612
  %sub23 = sub i32 255, %conv22, !dbg !4613
  %mul24 = mul i32 %sub23, 26, !dbg !4614
  %36 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4615
  %abs_y = getelementptr inbounds %struct.byd_data, %struct.byd_data* %36, i32 0, i32 3, !dbg !4616
  store i32 %mul24, i32* %abs_y, align 4, !dbg !4617
  br label %if.end25, !dbg !4618

if.end25:                                         ; preds = %msecs_to_jiffies.exit, %sw.bb
  br label %sw.epilog, !dbg !4619

sw.bb26:                                          ; preds = %if.end11
  call void @llvm.dbg.declare(metadata i32* %signx, metadata !4620, metadata !DIExpression()), !dbg !4622
  %37 = load i8*, i8** %pkt, align 8, !dbg !4623
  %arrayidx27 = getelementptr i8, i8* %37, i64 0, !dbg !4623
  %38 = load i8, i8* %arrayidx27, align 1, !dbg !4623
  %conv28 = zext i8 %38 to i64, !dbg !4623
  %and29 = and i64 %conv28, 16, !dbg !4624
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4623
  %39 = zext i1 %tobool30 to i64, !dbg !4623
  %cond = select i1 %tobool30, i32 -256, i32 0, !dbg !4623
  store i32 %cond, i32* %signx, align 4, !dbg !4622
  call void @llvm.dbg.declare(metadata i32* %signy, metadata !4625, metadata !DIExpression()), !dbg !4626
  %40 = load i8*, i8** %pkt, align 8, !dbg !4627
  %arrayidx31 = getelementptr i8, i8* %40, i64 0, !dbg !4627
  %41 = load i8, i8* %arrayidx31, align 1, !dbg !4627
  %conv32 = zext i8 %41 to i64, !dbg !4627
  %and33 = and i64 %conv32, 32, !dbg !4628
  %tobool34 = icmp ne i64 %and33, 0, !dbg !4627
  %42 = zext i1 %tobool34 to i64, !dbg !4627
  %cond35 = select i1 %tobool34, i32 -256, i32 0, !dbg !4627
  store i32 %cond35, i32* %signy, align 4, !dbg !4626
  call void @llvm.dbg.declare(metadata i32* %dx, metadata !4629, metadata !DIExpression()), !dbg !4630
  %43 = load i32, i32* %signx, align 4, !dbg !4631
  %44 = load i8*, i8** %pkt, align 8, !dbg !4632
  %arrayidx36 = getelementptr i8, i8* %44, i64 1, !dbg !4632
  %45 = load i8, i8* %arrayidx36, align 1, !dbg !4632
  %conv37 = zext i8 %45 to i32, !dbg !4633
  %or = or i32 %43, %conv37, !dbg !4634
  store i32 %or, i32* %dx, align 4, !dbg !4630
  call void @llvm.dbg.declare(metadata i32* %dy, metadata !4635, metadata !DIExpression()), !dbg !4636
  %46 = load i32, i32* %signy, align 4, !dbg !4637
  %47 = load i8*, i8** %pkt, align 8, !dbg !4638
  %arrayidx38 = getelementptr i8, i8* %47, i64 2, !dbg !4638
  %48 = load i8, i8* %arrayidx38, align 1, !dbg !4638
  %conv39 = zext i8 %48 to i32, !dbg !4639
  %or40 = or i32 %46, %conv39, !dbg !4640
  store i32 %or40, i32* %dy, align 4, !dbg !4636
  %49 = load i32, i32* %dx, align 4, !dbg !4641
  %mul41 = mul i32 %49, 11, !dbg !4642
  %50 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4643
  %abs_x42 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %50, i32 0, i32 2, !dbg !4644
  %51 = load i32, i32* %abs_x42, align 8, !dbg !4645
  %add43 = add i32 %51, %mul41, !dbg !4645
  store i32 %add43, i32* %abs_x42, align 8, !dbg !4645
  %52 = load i32, i32* %dy, align 4, !dbg !4646
  %mul44 = mul i32 %52, 11, !dbg !4647
  %53 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4648
  %abs_y45 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %53, i32 0, i32 3, !dbg !4649
  %54 = load i32, i32* %abs_y45, align 4, !dbg !4650
  %sub46 = sub i32 %54, %mul44, !dbg !4650
  store i32 %sub46, i32* %abs_y45, align 4, !dbg !4650
  %55 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4651
  %touch47 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %55, i32 0, i32 7, !dbg !4652
  store i8 1, i8* %touch47, align 2, !dbg !4653
  br label %sw.epilog, !dbg !4654

sw.default:                                       ; preds = %if.end11
  %56 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4655
  %ps2dev48 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %56, i32 0, i32 2, !dbg !4655
  %serio49 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %ps2dev48, i32 0, i32 0, !dbg !4655
  %57 = load %struct.serio*, %struct.serio** %serio49, align 8, !dbg !4655
  %dev50 = getelementptr inbounds %struct.serio, %struct.serio* %57, i32 0, i32 18, !dbg !4655
  %58 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4655
  %packet51 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %58, i32 0, i32 7, !dbg !4655
  %arrayidx52 = getelementptr [8 x i8], [8 x i8]* %packet51, i64 0, i64 0, !dbg !4655
  %59 = load i8, i8* %arrayidx52, align 8, !dbg !4655
  %conv53 = zext i8 %59 to i32, !dbg !4655
  %60 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4655
  %packet54 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %60, i32 0, i32 7, !dbg !4655
  %arrayidx55 = getelementptr [8 x i8], [8 x i8]* %packet54, i64 0, i64 1, !dbg !4655
  %61 = load i8, i8* %arrayidx55, align 1, !dbg !4655
  %conv56 = zext i8 %61 to i32, !dbg !4655
  %62 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4655
  %packet57 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %62, i32 0, i32 7, !dbg !4655
  %arrayidx58 = getelementptr [8 x i8], [8 x i8]* %packet57, i64 0, i64 2, !dbg !4655
  %63 = load i8, i8* %arrayidx58, align 2, !dbg !4655
  %conv59 = zext i8 %63 to i32, !dbg !4655
  %64 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4655
  %packet60 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %64, i32 0, i32 7, !dbg !4655
  %arrayidx61 = getelementptr [8 x i8], [8 x i8]* %packet60, i64 0, i64 3, !dbg !4655
  %65 = load i8, i8* %arrayidx61, align 1, !dbg !4655
  %conv62 = zext i8 %65 to i32, !dbg !4655
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %conv53, i32 %conv56, i32 %conv59, i32 %conv62) #13, !dbg !4655
  store i32 0, i32* %retval, align 4, !dbg !4656
  br label %return, !dbg !4656

sw.epilog:                                        ; preds = %sw.bb26, %if.end25
  %66 = load i8*, i8** %pkt, align 8, !dbg !4657
  %arrayidx63 = getelementptr i8, i8* %66, i64 0, !dbg !4657
  %67 = load i8, i8* %arrayidx63, align 1, !dbg !4657
  %conv64 = zext i8 %67 to i64, !dbg !4657
  %and65 = and i64 %conv64, 1, !dbg !4658
  %tobool66 = icmp ne i64 %and65, 0, !dbg !4657
  %68 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4659
  %btn_left = getelementptr inbounds %struct.byd_data, %struct.byd_data* %68, i32 0, i32 5, !dbg !4660
  %frombool67 = zext i1 %tobool66 to i8, !dbg !4661
  store i8 %frombool67, i8* %btn_left, align 8, !dbg !4661
  %69 = load i8*, i8** %pkt, align 8, !dbg !4662
  %arrayidx68 = getelementptr i8, i8* %69, i64 0, !dbg !4662
  %70 = load i8, i8* %arrayidx68, align 1, !dbg !4662
  %conv69 = zext i8 %70 to i64, !dbg !4662
  %and70 = and i64 %conv69, 2, !dbg !4663
  %tobool71 = icmp ne i64 %and70, 0, !dbg !4662
  %71 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4664
  %btn_right = getelementptr inbounds %struct.byd_data, %struct.byd_data* %71, i32 0, i32 6, !dbg !4665
  %frombool72 = zext i1 %tobool71 to i8, !dbg !4666
  store i8 %frombool72, i8* %btn_right, align 1, !dbg !4666
  %72 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4667
  call void @byd_report_input(%struct.psmouse* %72) #10, !dbg !4668
  %73 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4669
  %touch73 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %73, i32 0, i32 7, !dbg !4670
  %74 = load i8, i8* %touch73, align 2, !dbg !4670
  %tobool74 = trunc i8 %74 to i1, !dbg !4670
  br i1 %tobool74, label %if.then75, label %if.end80, !dbg !4671

if.then75:                                        ; preds = %sw.epilog
  %75 = load volatile i64, i64* @jiffies, align 8, !dbg !4672
  %76 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4673
  %last_touch_time76 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %76, i32 0, i32 4, !dbg !4674
  store volatile i64 %75, i64* %last_touch_time76, align 8, !dbg !4675
  %77 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4676
  %timer = getelementptr inbounds %struct.byd_data, %struct.byd_data* %77, i32 0, i32 0, !dbg !4677
  %78 = load volatile i64, i64* @jiffies, align 8, !dbg !4678
  store i32 64, i32* %m.addr.i82, align 4
  %79 = load i32, i32* %m.addr.i82, align 4, !dbg !4679
  %80 = call i1 @llvm.is.constant.i32(i32 %79) #8, !dbg !4680
  br i1 %80, label %if.then.i84, label %if.else.i89, !dbg !4681

if.then.i84:                                      ; preds = %if.then75
  %81 = load i32, i32* %m.addr.i82, align 4, !dbg !4682
  %cmp.i83 = icmp slt i32 %81, 0, !dbg !4683
  br i1 %cmp.i83, label %if.then1.i85, label %if.end.i87, !dbg !4684

if.then1.i85:                                     ; preds = %if.then.i84
  store i64 4611686018427387902, i64* %retval.i81, align 8, !dbg !4685
  br label %msecs_to_jiffies.exit90, !dbg !4685

if.end.i87:                                       ; preds = %if.then.i84
  %82 = load i32, i32* %m.addr.i82, align 4, !dbg !4686
  %call.i86 = call i64 @_msecs_to_jiffies(i32 %82) #12, !dbg !4687
  store i64 %call.i86, i64* %retval.i81, align 8, !dbg !4688
  br label %msecs_to_jiffies.exit90, !dbg !4688

if.else.i89:                                      ; preds = %if.then75
  %83 = load i32, i32* %m.addr.i82, align 4, !dbg !4689
  %call2.i88 = call i64 @__msecs_to_jiffies(i32 %83) #12, !dbg !4690
  store i64 %call2.i88, i64* %retval.i81, align 8, !dbg !4691
  br label %msecs_to_jiffies.exit90, !dbg !4691

msecs_to_jiffies.exit90:                          ; preds = %if.then1.i85, %if.end.i87, %if.else.i89
  %84 = load i64, i64* %retval.i81, align 8, !dbg !4692
  %add78 = add i64 %78, %84, !dbg !4693
  %call79 = call i32 @mod_timer(%struct.timer_list* %timer, i64 %add78) #10, !dbg !4694
  br label %if.end80, !dbg !4695

if.end80:                                         ; preds = %msecs_to_jiffies.exit90, %sw.epilog
  store i32 2, i32* %retval, align 4, !dbg !4696
  br label %return, !dbg !4696

return:                                           ; preds = %if.end80, %sw.default, %if.then10, %if.then
  %85 = load i32, i32* %retval, align 4, !dbg !4697
  ret i32 %85, !dbg !4697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !4698 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4703, metadata !DIExpression()), !dbg !4706
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4708, metadata !DIExpression()), !dbg !4709
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4710, metadata !DIExpression()), !dbg !4718
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4720, metadata !DIExpression()), !dbg !4721
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4722, metadata !DIExpression()), !dbg !4723
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4724, metadata !DIExpression()), !dbg !4725
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4726
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4727
  %div = sdiv i64 %1, 64, !dbg !4727
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4728
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4726
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4729
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4730
  %conv.i = trunc i64 %4 to i32, !dbg !4730
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !4731
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4732
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4732
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !4732
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4733
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4734
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4735
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4736
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #8, !dbg !4737, !srcloc !4738
  ret void, !dbg !4739
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clear_bit(i64 %nr, i64* %addr) #0 !dbg !4740 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4741, metadata !DIExpression()), !dbg !4743
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4745, metadata !DIExpression()), !dbg !4746
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4710, metadata !DIExpression()), !dbg !4747
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4720, metadata !DIExpression()), !dbg !4749
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4750, metadata !DIExpression()), !dbg !4751
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4752, metadata !DIExpression()), !dbg !4753
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4754
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4755
  %div = sdiv i64 %1, 64, !dbg !4755
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4756
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4754
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4757
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4758
  %conv.i = trunc i64 %4 to i32, !dbg !4758
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !4759
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4760
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4760
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #12, !dbg !4760
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4761
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4762
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !4763
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !4764
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #8, !dbg !4765, !srcloc !4766
  ret void, !dbg !4767
}

; Function Attrs: noredzone
declare dso_local void @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_abs_set_res(%struct.input_dev* %dev, i32 %axis, i32 %val) #0 !dbg !4768 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %axis.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4771, metadata !DIExpression()), !dbg !4772
  store i32 %axis, i32* %axis.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %axis.addr, metadata !4773, metadata !DIExpression()), !dbg !4772
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4774, metadata !DIExpression()), !dbg !4772
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4772
  call void @input_alloc_absinfo(%struct.input_dev* %0) #10, !dbg !4772
  %1 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4775
  %absinfo = getelementptr inbounds %struct.input_dev, %struct.input_dev* %1, i32 0, i32 26, !dbg !4775
  %2 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo, align 8, !dbg !4775
  %tobool = icmp ne %struct.input_absinfo* %2, null, !dbg !4775
  br i1 %tobool, label %if.then, label %if.end, !dbg !4772

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %val.addr, align 4, !dbg !4775
  %4 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4775
  %absinfo1 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %4, i32 0, i32 26, !dbg !4775
  %5 = load %struct.input_absinfo*, %struct.input_absinfo** %absinfo1, align 8, !dbg !4775
  %6 = load i32, i32* %axis.addr, align 4, !dbg !4775
  %idxprom = zext i32 %6 to i64, !dbg !4775
  %arrayidx = getelementptr %struct.input_absinfo, %struct.input_absinfo* %5, i64 %idxprom, !dbg !4775
  %resolution = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %arrayidx, i32 0, i32 5, !dbg !4775
  store i32 %3, i32* %resolution, align 4, !dbg !4775
  br label %if.end, !dbg !4775

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4772
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local void @psmouse_set_state(%struct.psmouse*, i32) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !4777 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4781, metadata !DIExpression()), !dbg !4785
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4787, metadata !DIExpression()), !dbg !4788
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4789, metadata !DIExpression()), !dbg !4790
  %0 = load i64, i64* %size.addr, align 8, !dbg !4791
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4793
  br i1 %1, label %if.then, label %if.end447, !dbg !4794

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4795
  %tobool = icmp ne i64 %2, 0, !dbg !4795
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4798

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4799
  br label %return, !dbg !4799

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4800
  %cmp = icmp ult i64 %3, 4096, !dbg !4802
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4803

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4804
  br label %return, !dbg !4804

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub = sub i64 %4, 1, !dbg !4805
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4805
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4805

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub4 = sub i64 %6, 1, !dbg !4805
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4805
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4805

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub6 = sub i64 %8, 1, !dbg !4805
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4805
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4805

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4805

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub9 = sub i64 %9, 1, !dbg !4805
  %and = and i64 %sub9, -9223372036854775808, !dbg !4805
  %tobool10 = icmp ne i64 %and, 0, !dbg !4805
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4805

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4805

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub13 = sub i64 %10, 1, !dbg !4805
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4805
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4805
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4805

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4805

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub18 = sub i64 %11, 1, !dbg !4805
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4805
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4805
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4805

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4805

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub23 = sub i64 %12, 1, !dbg !4805
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4805
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4805
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4805

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4805

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub28 = sub i64 %13, 1, !dbg !4805
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4805
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4805
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4805

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4805

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub33 = sub i64 %14, 1, !dbg !4805
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4805
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4805
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4805

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4805

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub38 = sub i64 %15, 1, !dbg !4805
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4805
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4805
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4805

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4805

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub43 = sub i64 %16, 1, !dbg !4805
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4805
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4805
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4805

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4805

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub48 = sub i64 %17, 1, !dbg !4805
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4805
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4805
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4805

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4805

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub53 = sub i64 %18, 1, !dbg !4805
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4805
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4805
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4805

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4805

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub58 = sub i64 %19, 1, !dbg !4805
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4805
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4805
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4805

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4805

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub63 = sub i64 %20, 1, !dbg !4805
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4805
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4805
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4805

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4805

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub68 = sub i64 %21, 1, !dbg !4805
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4805
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4805
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4805

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4805

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub73 = sub i64 %22, 1, !dbg !4805
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4805
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4805
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4805

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4805

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub78 = sub i64 %23, 1, !dbg !4805
  %and79 = and i64 %sub78, 562949953421312, !dbg !4805
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4805
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4805

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4805

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub83 = sub i64 %24, 1, !dbg !4805
  %and84 = and i64 %sub83, 281474976710656, !dbg !4805
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4805
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4805

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4805

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub88 = sub i64 %25, 1, !dbg !4805
  %and89 = and i64 %sub88, 140737488355328, !dbg !4805
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4805
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4805

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4805

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub93 = sub i64 %26, 1, !dbg !4805
  %and94 = and i64 %sub93, 70368744177664, !dbg !4805
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4805
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4805

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4805

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub98 = sub i64 %27, 1, !dbg !4805
  %and99 = and i64 %sub98, 35184372088832, !dbg !4805
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4805
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4805

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4805

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub103 = sub i64 %28, 1, !dbg !4805
  %and104 = and i64 %sub103, 17592186044416, !dbg !4805
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4805
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4805

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4805

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub108 = sub i64 %29, 1, !dbg !4805
  %and109 = and i64 %sub108, 8796093022208, !dbg !4805
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4805
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4805

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4805

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub113 = sub i64 %30, 1, !dbg !4805
  %and114 = and i64 %sub113, 4398046511104, !dbg !4805
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4805
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4805

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4805

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub118 = sub i64 %31, 1, !dbg !4805
  %and119 = and i64 %sub118, 2199023255552, !dbg !4805
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4805
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4805

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4805

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub123 = sub i64 %32, 1, !dbg !4805
  %and124 = and i64 %sub123, 1099511627776, !dbg !4805
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4805
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4805

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4805

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub128 = sub i64 %33, 1, !dbg !4805
  %and129 = and i64 %sub128, 549755813888, !dbg !4805
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4805
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4805

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4805

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub133 = sub i64 %34, 1, !dbg !4805
  %and134 = and i64 %sub133, 274877906944, !dbg !4805
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4805
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4805

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4805

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub138 = sub i64 %35, 1, !dbg !4805
  %and139 = and i64 %sub138, 137438953472, !dbg !4805
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4805
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4805

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4805

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub143 = sub i64 %36, 1, !dbg !4805
  %and144 = and i64 %sub143, 68719476736, !dbg !4805
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4805
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4805

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4805

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub148 = sub i64 %37, 1, !dbg !4805
  %and149 = and i64 %sub148, 34359738368, !dbg !4805
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4805
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4805

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4805

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub153 = sub i64 %38, 1, !dbg !4805
  %and154 = and i64 %sub153, 17179869184, !dbg !4805
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4805
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4805

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4805

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub158 = sub i64 %39, 1, !dbg !4805
  %and159 = and i64 %sub158, 8589934592, !dbg !4805
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4805
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4805

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4805

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub163 = sub i64 %40, 1, !dbg !4805
  %and164 = and i64 %sub163, 4294967296, !dbg !4805
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4805
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4805

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4805

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub168 = sub i64 %41, 1, !dbg !4805
  %and169 = and i64 %sub168, 2147483648, !dbg !4805
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4805
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4805

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4805

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub173 = sub i64 %42, 1, !dbg !4805
  %and174 = and i64 %sub173, 1073741824, !dbg !4805
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4805
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4805

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4805

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub178 = sub i64 %43, 1, !dbg !4805
  %and179 = and i64 %sub178, 536870912, !dbg !4805
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4805
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4805

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4805

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub183 = sub i64 %44, 1, !dbg !4805
  %and184 = and i64 %sub183, 268435456, !dbg !4805
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4805
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4805

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4805

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub188 = sub i64 %45, 1, !dbg !4805
  %and189 = and i64 %sub188, 134217728, !dbg !4805
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4805
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4805

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4805

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub193 = sub i64 %46, 1, !dbg !4805
  %and194 = and i64 %sub193, 67108864, !dbg !4805
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4805
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4805

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4805

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub198 = sub i64 %47, 1, !dbg !4805
  %and199 = and i64 %sub198, 33554432, !dbg !4805
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4805
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4805

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4805

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub203 = sub i64 %48, 1, !dbg !4805
  %and204 = and i64 %sub203, 16777216, !dbg !4805
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4805
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4805

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4805

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub208 = sub i64 %49, 1, !dbg !4805
  %and209 = and i64 %sub208, 8388608, !dbg !4805
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4805
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4805

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4805

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub213 = sub i64 %50, 1, !dbg !4805
  %and214 = and i64 %sub213, 4194304, !dbg !4805
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4805
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4805

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4805

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub218 = sub i64 %51, 1, !dbg !4805
  %and219 = and i64 %sub218, 2097152, !dbg !4805
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4805
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4805

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4805

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub223 = sub i64 %52, 1, !dbg !4805
  %and224 = and i64 %sub223, 1048576, !dbg !4805
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4805
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4805

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4805

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub228 = sub i64 %53, 1, !dbg !4805
  %and229 = and i64 %sub228, 524288, !dbg !4805
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4805
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4805

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4805

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub233 = sub i64 %54, 1, !dbg !4805
  %and234 = and i64 %sub233, 262144, !dbg !4805
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4805
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4805

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4805

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub238 = sub i64 %55, 1, !dbg !4805
  %and239 = and i64 %sub238, 131072, !dbg !4805
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4805
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4805

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4805

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub243 = sub i64 %56, 1, !dbg !4805
  %and244 = and i64 %sub243, 65536, !dbg !4805
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4805
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4805

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4805

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub248 = sub i64 %57, 1, !dbg !4805
  %and249 = and i64 %sub248, 32768, !dbg !4805
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4805
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4805

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4805

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub253 = sub i64 %58, 1, !dbg !4805
  %and254 = and i64 %sub253, 16384, !dbg !4805
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4805
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4805

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4805

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub258 = sub i64 %59, 1, !dbg !4805
  %and259 = and i64 %sub258, 8192, !dbg !4805
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4805
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4805

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4805

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub263 = sub i64 %60, 1, !dbg !4805
  %and264 = and i64 %sub263, 4096, !dbg !4805
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4805
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4805

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4805

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub268 = sub i64 %61, 1, !dbg !4805
  %and269 = and i64 %sub268, 2048, !dbg !4805
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4805
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4805

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4805

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub273 = sub i64 %62, 1, !dbg !4805
  %and274 = and i64 %sub273, 1024, !dbg !4805
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4805
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4805

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4805

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub278 = sub i64 %63, 1, !dbg !4805
  %and279 = and i64 %sub278, 512, !dbg !4805
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4805
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4805

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4805

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub283 = sub i64 %64, 1, !dbg !4805
  %and284 = and i64 %sub283, 256, !dbg !4805
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4805
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4805

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4805

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub288 = sub i64 %65, 1, !dbg !4805
  %and289 = and i64 %sub288, 128, !dbg !4805
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4805
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4805

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4805

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub293 = sub i64 %66, 1, !dbg !4805
  %and294 = and i64 %sub293, 64, !dbg !4805
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4805
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4805

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4805

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub298 = sub i64 %67, 1, !dbg !4805
  %and299 = and i64 %sub298, 32, !dbg !4805
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4805
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4805

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4805

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub303 = sub i64 %68, 1, !dbg !4805
  %and304 = and i64 %sub303, 16, !dbg !4805
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4805
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4805

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4805

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub308 = sub i64 %69, 1, !dbg !4805
  %and309 = and i64 %sub308, 8, !dbg !4805
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4805
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4805

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4805

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub313 = sub i64 %70, 1, !dbg !4805
  %and314 = and i64 %sub313, 4, !dbg !4805
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4805
  %71 = zext i1 %tobool315 to i64, !dbg !4805
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4805
  br label %cond.end, !dbg !4805

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4805
  br label %cond.end317, !dbg !4805

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4805
  br label %cond.end319, !dbg !4805

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4805
  br label %cond.end321, !dbg !4805

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4805
  br label %cond.end323, !dbg !4805

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4805
  br label %cond.end325, !dbg !4805

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4805
  br label %cond.end327, !dbg !4805

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4805
  br label %cond.end329, !dbg !4805

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4805
  br label %cond.end331, !dbg !4805

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4805
  br label %cond.end333, !dbg !4805

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4805
  br label %cond.end335, !dbg !4805

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4805
  br label %cond.end337, !dbg !4805

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4805
  br label %cond.end339, !dbg !4805

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4805
  br label %cond.end341, !dbg !4805

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4805
  br label %cond.end343, !dbg !4805

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4805
  br label %cond.end345, !dbg !4805

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4805
  br label %cond.end347, !dbg !4805

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4805
  br label %cond.end349, !dbg !4805

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4805
  br label %cond.end351, !dbg !4805

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4805
  br label %cond.end353, !dbg !4805

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4805
  br label %cond.end355, !dbg !4805

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4805
  br label %cond.end357, !dbg !4805

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4805
  br label %cond.end359, !dbg !4805

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4805
  br label %cond.end361, !dbg !4805

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4805
  br label %cond.end363, !dbg !4805

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4805
  br label %cond.end365, !dbg !4805

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4805
  br label %cond.end367, !dbg !4805

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4805
  br label %cond.end369, !dbg !4805

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4805
  br label %cond.end371, !dbg !4805

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4805
  br label %cond.end373, !dbg !4805

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4805
  br label %cond.end375, !dbg !4805

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4805
  br label %cond.end377, !dbg !4805

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4805
  br label %cond.end379, !dbg !4805

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4805
  br label %cond.end381, !dbg !4805

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4805
  br label %cond.end383, !dbg !4805

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4805
  br label %cond.end385, !dbg !4805

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4805
  br label %cond.end387, !dbg !4805

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4805
  br label %cond.end389, !dbg !4805

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4805
  br label %cond.end391, !dbg !4805

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4805
  br label %cond.end393, !dbg !4805

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4805
  br label %cond.end395, !dbg !4805

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4805
  br label %cond.end397, !dbg !4805

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4805
  br label %cond.end399, !dbg !4805

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4805
  br label %cond.end401, !dbg !4805

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4805
  br label %cond.end403, !dbg !4805

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4805
  br label %cond.end405, !dbg !4805

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4805
  br label %cond.end407, !dbg !4805

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4805
  br label %cond.end409, !dbg !4805

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4805
  br label %cond.end411, !dbg !4805

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4805
  br label %cond.end413, !dbg !4805

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4805
  br label %cond.end415, !dbg !4805

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4805
  br label %cond.end417, !dbg !4805

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4805
  br label %cond.end419, !dbg !4805

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4805
  br label %cond.end421, !dbg !4805

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4805
  br label %cond.end423, !dbg !4805

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4805
  br label %cond.end425, !dbg !4805

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4805
  br label %cond.end427, !dbg !4805

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4805
  br label %cond.end429, !dbg !4805

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4805
  br label %cond.end431, !dbg !4805

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4805
  br label %cond.end433, !dbg !4805

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4805
  br label %cond.end435, !dbg !4805

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4805
  br label %cond.end437, !dbg !4805

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4805
  br label %cond.end440, !dbg !4805

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4805

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4805
  br label %cond.end444, !dbg !4805

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4805
  %sub443 = sub i64 %72, 1, !dbg !4805
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4805
  br label %cond.end444, !dbg !4805

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4805
  %sub446 = sub i32 %cond445, 12, !dbg !4806
  %add = add i32 %sub446, 1, !dbg !4807
  store i32 %add, i32* %retval, align 4, !dbg !4808
  br label %return, !dbg !4808

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4809
  %dec = add i64 %73, -1, !dbg !4809
  store i64 %dec, i64* %size.addr, align 8, !dbg !4809
  %74 = load i64, i64* %size.addr, align 8, !dbg !4810
  %shr = lshr i64 %74, 12, !dbg !4810
  store i64 %shr, i64* %size.addr, align 8, !dbg !4810
  %75 = load i64, i64* %size.addr, align 8, !dbg !4811
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4788
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4812
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4813
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !4812, !srcloc !4814
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4812
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4815
  %add.i = add i32 %79, 1, !dbg !4816
  store i32 %add.i, i32* %retval, align 4, !dbg !4817
  br label %return, !dbg !4817

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4818
  ret i32 %80, !dbg !4818
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4819 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4781, metadata !DIExpression()), !dbg !4823
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4787, metadata !DIExpression()), !dbg !4825
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4826, metadata !DIExpression()), !dbg !4827
  %0 = load i64, i64* %n.addr, align 8, !dbg !4828
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4825
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4829
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4830
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !4829, !srcloc !4814
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4829
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4831
  %add.i = add i32 %4, 1, !dbg !4832
  %sub = sub i32 %add.i, 1, !dbg !4833
  ret i32 %sub, !dbg !4834
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4835 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4839, metadata !DIExpression()), !dbg !4840
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4841, metadata !DIExpression()), !dbg !4842
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4843, metadata !DIExpression()), !dbg !4844
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4845, metadata !DIExpression()), !dbg !4846
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4847
  ret i8* %0, !dbg !4848
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_pause_rx(%struct.serio* %serio) #0 !dbg !4849 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4850, metadata !DIExpression()), !dbg !4856
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4860
  %lock = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 6, !dbg !4861
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #12, !dbg !4862
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4865, !srcloc !4867
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4868
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !4868
  %rlock.i = bitcast %union.anon.0* %2 to %struct.raw_spinlock*, !dbg !4868
  ret void, !dbg !4870
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @byd_report_input(%struct.psmouse* %psmouse) #0 !dbg !4871 {
entry:
  %psmouse.addr = alloca %struct.psmouse*, align 8
  %priv = alloca %struct.byd_data*, align 8
  %dev = alloca %struct.input_dev*, align 8
  store %struct.psmouse* %psmouse, %struct.psmouse** %psmouse.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.psmouse** %psmouse.addr, metadata !4872, metadata !DIExpression()), !dbg !4873
  call void @llvm.dbg.declare(metadata %struct.byd_data** %priv, metadata !4874, metadata !DIExpression()), !dbg !4875
  %0 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4876
  %private = getelementptr inbounds %struct.psmouse, %struct.psmouse* %0, i32 0, i32 0, !dbg !4877
  %1 = load i8*, i8** %private, align 8, !dbg !4877
  %2 = bitcast i8* %1 to %struct.byd_data*, !dbg !4876
  store %struct.byd_data* %2, %struct.byd_data** %priv, align 8, !dbg !4875
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev, metadata !4878, metadata !DIExpression()), !dbg !4879
  %3 = load %struct.psmouse*, %struct.psmouse** %psmouse.addr, align 8, !dbg !4880
  %dev1 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %3, i32 0, i32 1, !dbg !4881
  %4 = load %struct.input_dev*, %struct.input_dev** %dev1, align 8, !dbg !4881
  store %struct.input_dev* %4, %struct.input_dev** %dev, align 8, !dbg !4879
  %5 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4882
  %6 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4883
  %touch = getelementptr inbounds %struct.byd_data, %struct.byd_data* %6, i32 0, i32 7, !dbg !4884
  %7 = load i8, i8* %touch, align 2, !dbg !4884
  %tobool = trunc i8 %7 to i1, !dbg !4884
  %conv = zext i1 %tobool to i32, !dbg !4883
  call void @input_report_key(%struct.input_dev* %5, i32 330, i32 %conv) #10, !dbg !4885
  %8 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4886
  %9 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4887
  %touch2 = getelementptr inbounds %struct.byd_data, %struct.byd_data* %9, i32 0, i32 7, !dbg !4888
  %10 = load i8, i8* %touch2, align 2, !dbg !4888
  %tobool3 = trunc i8 %10 to i1, !dbg !4888
  %conv4 = zext i1 %tobool3 to i32, !dbg !4887
  call void @input_report_key(%struct.input_dev* %8, i32 325, i32 %conv4) #10, !dbg !4889
  %11 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4890
  %12 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4891
  %abs_x = getelementptr inbounds %struct.byd_data, %struct.byd_data* %12, i32 0, i32 2, !dbg !4892
  %13 = load i32, i32* %abs_x, align 8, !dbg !4892
  call void @input_report_abs(%struct.input_dev* %11, i32 0, i32 %13) #10, !dbg !4893
  %14 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4894
  %15 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4895
  %abs_y = getelementptr inbounds %struct.byd_data, %struct.byd_data* %15, i32 0, i32 3, !dbg !4896
  %16 = load i32, i32* %abs_y, align 4, !dbg !4896
  call void @input_report_abs(%struct.input_dev* %14, i32 1, i32 %16) #10, !dbg !4897
  %17 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4898
  %18 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4899
  %btn_left = getelementptr inbounds %struct.byd_data, %struct.byd_data* %18, i32 0, i32 5, !dbg !4900
  %19 = load i8, i8* %btn_left, align 8, !dbg !4900
  %tobool5 = trunc i8 %19 to i1, !dbg !4900
  %conv6 = zext i1 %tobool5 to i32, !dbg !4899
  call void @input_report_key(%struct.input_dev* %17, i32 272, i32 %conv6) #10, !dbg !4901
  %20 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4902
  %21 = load %struct.byd_data*, %struct.byd_data** %priv, align 8, !dbg !4903
  %btn_right = getelementptr inbounds %struct.byd_data, %struct.byd_data* %21, i32 0, i32 6, !dbg !4904
  %22 = load i8, i8* %btn_right, align 1, !dbg !4904
  %tobool7 = trunc i8 %22 to i1, !dbg !4904
  %conv8 = zext i1 %tobool7 to i32, !dbg !4903
  call void @input_report_key(%struct.input_dev* %20, i32 273, i32 %conv8) #10, !dbg !4905
  %23 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4906
  call void @input_sync(%struct.input_dev* %23) #10, !dbg !4907
  ret void, !dbg !4908
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_continue_rx(%struct.serio* %serio) #0 !dbg !4909 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4910, metadata !DIExpression()), !dbg !4912
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4914, metadata !DIExpression()), !dbg !4915
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4916
  %lock = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 6, !dbg !4917
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_enable() #12, !dbg !4918
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !4921, !srcloc !4923
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4924
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !4924
  %rlock.i = bitcast %union.anon.0* %2 to %struct.raw_spinlock*, !dbg !4924
  ret void, !dbg !4926
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4927 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4929, metadata !DIExpression()), !dbg !4931
  %0 = load i64, i64* %__edi, align 8, !dbg !4931
  store i64 %0, i64* %__edi, align 8, !dbg !4931
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4932, metadata !DIExpression()), !dbg !4931
  %1 = load i64, i64* %__esi, align 8, !dbg !4931
  store i64 %1, i64* %__esi, align 8, !dbg !4931
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4933, metadata !DIExpression()), !dbg !4931
  %2 = load i64, i64* %__edx, align 8, !dbg !4931
  store i64 %2, i64* %__edx, align 8, !dbg !4931
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4934, metadata !DIExpression()), !dbg !4931
  %3 = load i64, i64* %__ecx, align 8, !dbg !4931
  store i64 %3, i64* %__ecx, align 8, !dbg !4931
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4935, metadata !DIExpression()), !dbg !4931
  %4 = load i64, i64* %__eax, align 8, !dbg !4931
  store i64 %4, i64* %__eax, align 8, !dbg !4931
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4931
  %6 = call i64 @llvm.read_register.i64(metadata !3958), !dbg !4931
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #8, !dbg !4931, !srcloc !4936
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4931
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4931
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4931
  call void @llvm.write_register.i64(metadata !3958, i64 %asmresult1), !dbg !4931
  ret void, !dbg !4937
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_key(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !4938 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4939, metadata !DIExpression()), !dbg !4940
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !4941, metadata !DIExpression()), !dbg !4942
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4943, metadata !DIExpression()), !dbg !4944
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4945
  %1 = load i32, i32* %code.addr, align 4, !dbg !4946
  %2 = load i32, i32* %value.addr, align 4, !dbg !4947
  %tobool = icmp ne i32 %2, 0, !dbg !4948
  %lnot = xor i1 %tobool, true, !dbg !4948
  %lnot1 = xor i1 %lnot, true, !dbg !4949
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4949
  call void @input_event(%struct.input_dev* %0, i32 1, i32 %1, i32 %lnot.ext) #10, !dbg !4950
  ret void, !dbg !4951
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_report_abs(%struct.input_dev* %dev, i32 %code, i32 %value) #0 !dbg !4952 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  %code.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4953, metadata !DIExpression()), !dbg !4954
  store i32 %code, i32* %code.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %code.addr, metadata !4955, metadata !DIExpression()), !dbg !4956
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4959
  %1 = load i32, i32* %code.addr, align 4, !dbg !4960
  %2 = load i32, i32* %value.addr, align 4, !dbg !4961
  call void @input_event(%struct.input_dev* %0, i32 3, i32 %1, i32 %2) #10, !dbg !4962
  ret void, !dbg !4963
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @input_sync(%struct.input_dev* %dev) #0 !dbg !4964 {
entry:
  %dev.addr = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %dev, %struct.input_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.input_dev** %dev.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  %0 = load %struct.input_dev*, %struct.input_dev** %dev.addr, align 8, !dbg !4967
  call void @input_event(%struct.input_dev* %0, i32 0, i32 0, i32 0) #10, !dbg !4968
  ret void, !dbg !4969
}

; Function Attrs: noredzone
declare dso_local void @input_event(%struct.input_dev*, i32, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !4970 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4971, metadata !DIExpression()), !dbg !4973
  %0 = load i64, i64* %__edi, align 8, !dbg !4973
  store i64 %0, i64* %__edi, align 8, !dbg !4973
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4974, metadata !DIExpression()), !dbg !4973
  %1 = load i64, i64* %__esi, align 8, !dbg !4973
  store i64 %1, i64* %__esi, align 8, !dbg !4973
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4975, metadata !DIExpression()), !dbg !4973
  %2 = load i64, i64* %__edx, align 8, !dbg !4973
  store i64 %2, i64* %__edx, align 8, !dbg !4973
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4976, metadata !DIExpression()), !dbg !4973
  %3 = load i64, i64* %__ecx, align 8, !dbg !4973
  store i64 %3, i64* %__ecx, align 8, !dbg !4973
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4977, metadata !DIExpression()), !dbg !4973
  %4 = load i64, i64* %__eax, align 8, !dbg !4973
  store i64 %4, i64* %__eax, align 8, !dbg !4973
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !4973
  %6 = call i64 @llvm.read_register.i64(metadata !3958), !dbg !4973
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #8, !dbg !4973, !srcloc !4978
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4973
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4973
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4973
  call void @llvm.write_register.i64(metadata !3958, i64 %asmresult1), !dbg !4973
  ret void, !dbg !4979
}

; Function Attrs: noredzone
declare dso_local i32 @del_timer(%struct.timer_list*) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ssleep(i32 %seconds) #0 !dbg !4980 {
entry:
  %seconds.addr = alloca i32, align 4
  store i32 %seconds, i32* %seconds.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %seconds.addr, metadata !4984, metadata !DIExpression()), !dbg !4985
  %0 = load i32, i32* %seconds.addr, align 4, !dbg !4986
  %mul = mul i32 %0, 1000, !dbg !4987
  call void @msleep(i32 %mul) #10, !dbg !4988
  ret void, !dbg !4989
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #9

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #9

; Function Attrs: noredzone
declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !4990 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  %0 = load i32, i32* %m.addr, align 4, !dbg !4993
  %conv = zext i32 %0 to i64, !dbg !4993
  %add = add i64 %conv, 4, !dbg !4994
  %sub = sub i64 %add, 1, !dbg !4995
  %div = sdiv i64 %sub, 4, !dbg !4996
  ret i64 %div, !dbg !4997
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !4998 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5002, metadata !DIExpression()), !dbg !5003
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  ret i1 true, !dbg !5006
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5007 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  ret void, !dbg !5017
}

; Function Attrs: noredzone
declare dso_local void @input_alloc_absinfo(%struct.input_dev*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!3921}
!llvm.named.register.rsp = !{!3958}
!llvm.module.flags = !{!3959, !3960, !3961, !3962}
!llvm.ident = !{!3963}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "seq", scope: !2, file: !3, line: 348, type: !3950, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "byd_reset_touchpad", scope: !3, file: !3, line: 339, type: !4, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!3 = !DIFile(filename: "drivers/input/mouse/byd.c", directory: "/home/lizy2001/genbc/linux")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse", file: !9, line: 89, size: 3648, elements: !10)
!9 = !DIFile(filename: "drivers/input/mouse/psmouse.h", directory: "/home/lizy2001/genbc/linux")
!10 = !{!11, !13, !3725, !3807, !3814, !3815, !3816, !3860, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3880, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3898, !3902, !3903, !3911, !3912, !3913, !3917, !3918, !3919, !3920}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !8, file: !9, line: 90, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !8, file: !9, line: 91, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !16, line: 131, size: 10432, elements: !17)
!16 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!17 = !{!18, !22, !23, !24, !35, !40, !41, !45, !46, !47, !48, !49, !50, !54, !55, !57, !58, !59, !60, !80, !85, !2901, !2904, !2905, !2917, !2919, !2922, !2932, !2933, !2934, !2935, !2936, !2940, !2944, !2948, !2952, !3030, !3031, !3032, !3033, !3034, !3716, !3717, !3718, !3719, !3720, !3722, !3723}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !15, file: !16, line: 132, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !15, file: !16, line: 133, baseType: !19, size: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !15, file: !16, line: 134, baseType: !19, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !15, file: !16, line: 135, baseType: !25, size: 64, offset: 192)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !26, line: 59, size: 64, elements: !27)
!26 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!27 = !{!28, !32, !33, !34}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !25, file: !26, line: 60, baseType: !29, size: 16)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !30, line: 24, baseType: !31)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!31 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !25, file: !26, line: 61, baseType: !29, size: 16, offset: 16)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !25, file: !26, line: 62, baseType: !29, size: 16, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !25, file: !26, line: 63, baseType: !29, size: 16, offset: 48)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !15, file: !16, line: 137, baseType: !36, size: 64, offset: 256)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !38)
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !{!39}
!39 = !DISubrange(count: 1)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !15, file: !16, line: 139, baseType: !36, size: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !15, file: !16, line: 140, baseType: !42, size: 768, offset: 384)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 768, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 12)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !15, file: !16, line: 141, baseType: !36, size: 64, offset: 1152)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !15, file: !16, line: 142, baseType: !36, size: 64, offset: 1216)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !15, file: !16, line: 143, baseType: !36, size: 64, offset: 1280)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !15, file: !16, line: 144, baseType: !36, size: 64, offset: 1344)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !15, file: !16, line: 145, baseType: !36, size: 64, offset: 1408)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !15, file: !16, line: 146, baseType: !51, size: 128, offset: 1472)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 2)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !15, file: !16, line: 147, baseType: !36, size: 64, offset: 1600)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !15, file: !16, line: 149, baseType: !56, size: 32, offset: 1664)
!56 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !15, file: !16, line: 151, baseType: !56, size: 32, offset: 1696)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !15, file: !16, line: 152, baseType: !56, size: 32, offset: 1728)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !15, file: !16, line: 153, baseType: !12, size: 64, offset: 1792)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !15, file: !16, line: 155, baseType: !61, size: 64, offset: 1856)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!6, !14, !64, !79}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !26, line: 114, size: 320, elements: !67)
!67 = !{!68, !71, !72, !73, !75}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !26, line: 116, baseType: !69, size: 8)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !30, line: 21, baseType: !70)
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !66, file: !26, line: 117, baseType: !69, size: 8, offset: 8)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !66, file: !26, line: 118, baseType: !29, size: 16, offset: 16)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !66, file: !26, line: 119, baseType: !74, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !30, line: 27, baseType: !56)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !66, file: !26, line: 120, baseType: !76, size: 256, offset: 64)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 32)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !15, file: !16, line: 158, baseType: !81, size: 64, offset: 1920)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!6, !14, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !15, file: !16, line: 161, baseType: !86, size: 64, offset: 1984)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !16, line: 534, size: 896, elements: !88)
!88 = !{!89, !158, !162, !166, !172, !173, !177, !178, !179, !216, !217, !218}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !87, file: !16, line: 535, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{!6, !14, !93, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !26, line: 450, size: 384, elements: !95)
!95 = !{!96, !97, !100, !101, !106, !111}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !26, line: 451, baseType: !29, size: 16)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !94, file: !26, line: 452, baseType: !98, size: 16, offset: 16)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !30, line: 23, baseType: !99)
!99 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !94, file: !26, line: 453, baseType: !29, size: 16, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !94, file: !26, line: 454, baseType: !102, size: 32, offset: 48)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !26, line: 316, size: 32, elements: !103)
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !102, file: !26, line: 317, baseType: !29, size: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !102, file: !26, line: 318, baseType: !29, size: 16, offset: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !94, file: !26, line: 455, baseType: !107, size: 32, offset: 80)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !26, line: 306, size: 32, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !107, file: !26, line: 307, baseType: !29, size: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !107, file: !26, line: 308, baseType: !29, size: 16, offset: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !94, file: !26, line: 463, baseType: !112, size: 256, offset: 128)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !26, line: 457, size: 256, elements: !113)
!113 = !{!114, !125, !131, !143, !153}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !112, file: !26, line: 458, baseType: !115, size: 80)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !26, line: 345, size: 80, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !115, file: !26, line: 346, baseType: !98, size: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !115, file: !26, line: 347, baseType: !119, size: 64, offset: 16)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !26, line: 333, size: 64, elements: !120)
!120 = !{!121, !122, !123, !124}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !119, file: !26, line: 334, baseType: !29, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !119, file: !26, line: 335, baseType: !29, size: 16, offset: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !119, file: !26, line: 336, baseType: !29, size: 16, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !119, file: !26, line: 337, baseType: !29, size: 16, offset: 48)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !112, file: !26, line: 459, baseType: !126, size: 96)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !26, line: 356, size: 96, elements: !127)
!127 = !{!128, !129, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !126, file: !26, line: 357, baseType: !98, size: 16)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !126, file: !26, line: 358, baseType: !98, size: 16, offset: 16)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !126, file: !26, line: 359, baseType: !119, size: 64, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !112, file: !26, line: 460, baseType: !132, size: 256)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !26, line: 401, size: 256, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !132, file: !26, line: 402, baseType: !29, size: 16)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !132, file: !26, line: 403, baseType: !29, size: 16, offset: 16)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !132, file: !26, line: 404, baseType: !98, size: 16, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !132, file: !26, line: 405, baseType: !98, size: 16, offset: 48)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !132, file: !26, line: 406, baseType: !29, size: 16, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !132, file: !26, line: 408, baseType: !119, size: 64, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !132, file: !26, line: 410, baseType: !74, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !132, file: !26, line: 411, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !112, file: !26, line: 461, baseType: !144, size: 192)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 192, elements: !52)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !26, line: 372, size: 96, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !145, file: !26, line: 373, baseType: !29, size: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !145, file: !26, line: 374, baseType: !29, size: 16, offset: 16)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !145, file: !26, line: 376, baseType: !98, size: 16, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !145, file: !26, line: 377, baseType: !98, size: 16, offset: 48)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !145, file: !26, line: 379, baseType: !29, size: 16, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !145, file: !26, line: 380, baseType: !98, size: 16, offset: 80)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !112, file: !26, line: 462, baseType: !154, size: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !26, line: 422, size: 32, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !154, file: !26, line: 423, baseType: !29, size: 16)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !154, file: !26, line: 424, baseType: !29, size: 16, offset: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !87, file: !16, line: 537, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!6, !14, !6}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !87, file: !16, line: 539, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!6, !14, !6, !6}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !87, file: !16, line: 540, baseType: !167, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !14, !170}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !171, line: 19, baseType: !29)
!171 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !87, file: !16, line: 541, baseType: !167, size: 64, offset: 256)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !87, file: !16, line: 543, baseType: !174, size: 64, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !86}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !87, file: !16, line: 545, baseType: !12, size: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !87, file: !16, line: 547, baseType: !51, size: 128, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !87, file: !16, line: 549, baseType: !180, size: 192, offset: 576)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !181, line: 53, size: 192, elements: !182)
!181 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!182 = !{!183, !194, !210}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !180, file: !181, line: 54, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !185, line: 13, baseType: !186)
!185 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !187, line: 175, baseType: !188)
!187 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !187, line: 173, size: 64, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !188, file: !187, line: 174, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !171, line: 22, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !30, line: 30, baseType: !193)
!193 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !180, file: !181, line: 55, baseType: !195, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !196, line: 83, baseType: !197)
!196 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !196, line: 71, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !196, line: 72, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !196, line: 72, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !200, file: !196, line: 73, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !196, line: 20, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !203, file: !196, line: 21, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !207, line: 25, baseType: !208)
!207 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 25, elements: !209)
!209 = !{}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !180, file: !181, line: 59, baseType: !211, size: 128, offset: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !187, line: 178, size: 128, elements: !212)
!212 = !{!213, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !187, line: 179, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !211, file: !187, line: 179, baseType: !214, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !87, file: !16, line: 551, baseType: !6, size: 32, offset: 768)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !87, file: !16, line: 552, baseType: !93, size: 64, offset: 832)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !87, file: !16, line: 553, baseType: !219, offset: 896)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !2096)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !222, line: 916, size: 1856, align: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!223 = !{!224, !242, !2851, !2852, !2853, !2854, !2863, !2864, !2865, !2866, !2867, !2868, !2884, !2885, !2894, !2895, !2896, !2897, !2898, !2899, !2900}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !221, file: !222, line: 920, baseType: !225, size: 128)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !222, line: 917, size: 128, elements: !226)
!226 = !{!227, !233}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !225, file: !222, line: 918, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !229, line: 58, size: 64, elements: !230)
!229 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !229, line: 59, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !225, file: !222, line: 919, baseType: !234, size: 128, align: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !187, line: 216, size: 128, align: 64, elements: !235)
!235 = !{!236, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !187, line: 217, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !234, file: !187, line: 218, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !237}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !221, file: !222, line: 921, baseType: !243, size: 128, offset: 128)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !244, line: 8, size: 128, elements: !245)
!244 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !243, file: !244, line: 9, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !249, line: 18, flags: DIFlagFwdDecl)
!249 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !243, file: !244, line: 10, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !249, line: 89, size: 1536, elements: !253)
!253 = !{!254, !255, !265, !273, !274, !293, !2819, !2821, !2833, !2834, !2835, !2836, !2837, !2843, !2844, !2845}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !252, file: !249, line: 91, baseType: !56, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !252, file: !249, line: 92, baseType: !256, size: 32, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !257, line: 277, baseType: !258)
!257 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !257, line: 277, size: 32, elements: !259)
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !258, file: !257, line: 277, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !257, line: 70, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !257, line: 65, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !262, file: !257, line: 66, baseType: !56, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !252, file: !249, line: 93, baseType: !266, size: 128, offset: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !267, line: 38, size: 128, elements: !268)
!267 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !267, line: 39, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !266, file: !267, line: 39, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !252, file: !249, line: 94, baseType: !251, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !252, file: !249, line: 95, baseType: !275, size: 128, offset: 256)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !249, line: 47, size: 128, elements: !276)
!276 = !{!277, !290}
!277 = !DIDerivedType(tag: DW_TAG_member, scope: !275, file: !249, line: 48, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !275, file: !249, line: 48, size: 64, elements: !279)
!279 = !{!280, !286}
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !249, line: 49, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !278, file: !249, line: 49, size: 64, elements: !282)
!282 = !{!283, !285}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !281, file: !249, line: 50, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !171, line: 21, baseType: !74)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !281, file: !249, line: 50, baseType: !284, size: 32, offset: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !278, file: !249, line: 52, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !171, line: 23, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !289)
!289 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !249, line: 54, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !252, file: !249, line: 96, baseType: !294, size: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !222, line: 610, size: 4224, elements: !296)
!296 = !{!297, !299, !300, !309, !316, !317, !471, !2530, !2531, !2532, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2795, !2803, !2804, !2805, !2815, !2816, !2817, !2818}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !295, file: !222, line: 611, baseType: !298, size: 16)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !187, line: 19, baseType: !31)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !295, file: !222, line: 612, baseType: !31, size: 16, offset: 16)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !295, file: !222, line: 613, baseType: !301, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !302, line: 23, baseType: !303)
!302 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 21, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !303, file: !302, line: 22, baseType: !306, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !187, line: 32, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !308, line: 49, baseType: !56)
!308 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!309 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !295, file: !222, line: 614, baseType: !310, size: 32, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !302, line: 28, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !302, line: 26, size: 32, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !311, file: !302, line: 27, baseType: !314, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !187, line: 33, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !308, line: 50, baseType: !56)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !295, file: !222, line: 615, baseType: !56, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !295, file: !222, line: 622, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !222, line: 1864, size: 1536, align: 512, elements: !321)
!321 = !{!322, !326, !339, !343, !349, !354, !360, !364, !368, !372, !376, !377, !383, !387, !412, !441, !451, !457, !462, !466, !467}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !320, file: !222, line: 1865, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!251, !294, !251, !56}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !320, file: !222, line: 1866, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!19, !251, !294, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !332, line: 10, size: 128, elements: !333)
!332 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!333 = !{!334, !338}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !331, file: !332, line: 11, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !12}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !331, file: !332, line: 12, baseType: !12, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !320, file: !222, line: 1867, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!6, !294, !6}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !320, file: !222, line: 1868, baseType: !344, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !294, !6}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !222, line: 581, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !320, file: !222, line: 1870, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!6, !251, !353, !6}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !320, file: !222, line: 1872, baseType: !355, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!6, !294, !251, !298, !358}
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !187, line: 30, baseType: !359)
!359 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !320, file: !222, line: 1873, baseType: !361, size: 64, offset: 384)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!6, !251, !294, !251}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !320, file: !222, line: 1874, baseType: !365, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!6, !294, !251}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !320, file: !222, line: 1875, baseType: !369, size: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!6, !294, !251, !19}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !320, file: !222, line: 1876, baseType: !373, size: 64, offset: 576)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!6, !294, !251, !298}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !320, file: !222, line: 1877, baseType: !365, size: 64, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !320, file: !222, line: 1878, baseType: !378, size: 64, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!6, !294, !251, !298, !381}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !187, line: 16, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !187, line: 13, baseType: !284)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !320, file: !222, line: 1879, baseType: !384, size: 64, offset: 768)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!6, !294, !251, !294, !251, !56}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !320, file: !222, line: 1881, baseType: !388, size: 64, offset: 832)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!6, !251, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !222, line: 219, size: 640, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !401, !409, !410, !411}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !392, file: !222, line: 220, baseType: !56, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !392, file: !222, line: 221, baseType: !298, size: 16, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !392, file: !222, line: 222, baseType: !301, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !392, file: !222, line: 223, baseType: !310, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !392, file: !222, line: 224, baseType: !399, size: 64, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !187, line: 46, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !308, line: 88, baseType: !193)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !392, file: !222, line: 225, baseType: !402, size: 128, offset: 192)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !403, line: 13, size: 128, elements: !404)
!403 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!404 = !{!405, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !402, file: !403, line: 14, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !403, line: 8, baseType: !192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !402, file: !403, line: 15, baseType: !408, size: 64, offset: 64)
!408 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !392, file: !222, line: 226, baseType: !402, size: 128, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !392, file: !222, line: 227, baseType: !402, size: 128, offset: 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !392, file: !222, line: 234, baseType: !220, size: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !320, file: !222, line: 1882, baseType: !413, size: 64, offset: 896)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!6, !416, !418, !284, !56}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !420, line: 22, size: 1152, elements: !421)
!420 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !423, !424, !425, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !419, file: !420, line: 23, baseType: !284, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !419, file: !420, line: 24, baseType: !298, size: 16, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !419, file: !420, line: 25, baseType: !56, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !419, file: !420, line: 26, baseType: !426, size: 32, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !187, line: 104, baseType: !284)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !419, file: !420, line: 27, baseType: !287, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !419, file: !420, line: 28, baseType: !287, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !419, file: !420, line: 37, baseType: !287, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !419, file: !420, line: 38, baseType: !381, size: 32, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !419, file: !420, line: 39, baseType: !381, size: 32, offset: 352)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !419, file: !420, line: 40, baseType: !301, size: 32, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !419, file: !420, line: 41, baseType: !310, size: 32, offset: 416)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !419, file: !420, line: 42, baseType: !399, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !419, file: !420, line: 43, baseType: !402, size: 128, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !419, file: !420, line: 44, baseType: !402, size: 128, offset: 640)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !419, file: !420, line: 45, baseType: !402, size: 128, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !419, file: !420, line: 46, baseType: !402, size: 128, offset: 896)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !419, file: !420, line: 47, baseType: !287, size: 64, offset: 1024)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !419, file: !420, line: 48, baseType: !287, size: 64, offset: 1088)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !320, file: !222, line: 1883, baseType: !442, size: 64, offset: 960)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !251, !353, !448}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !187, line: 60, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !308, line: 73, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !308, line: 15, baseType: !408)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 55, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !308, line: 72, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !308, line: 16, baseType: !37)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !320, file: !222, line: 1884, baseType: !452, size: 64, offset: 1024)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!6, !294, !455, !287, !287}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !222, line: 50, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !320, file: !222, line: 1886, baseType: !458, size: 64, offset: 1088)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!6, !294, !461, !6}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !320, file: !222, line: 1887, baseType: !463, size: 64, offset: 1152)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!6, !294, !251, !220, !56, !298}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !320, file: !222, line: 1890, baseType: !373, size: 64, offset: 1216)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !320, file: !222, line: 1891, baseType: !468, size: 64, offset: 1280)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!6, !294, !347, !6}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !295, file: !222, line: 623, baseType: !472, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !222, line: 1416, size: 9472, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !480, !532, !2132, !2220, !2303, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2319, !2323, !2324, !2327, !2328, !2331, !2332, !2333, !2374, !2400, !2401, !2402, !2403, !2404, !2405, !2408, !2410, !2417, !2418, !2420, !2421, !2422, !2481, !2482, !2497, !2498, !2499, !2500, !2501, !2504, !2505, !2506, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !473, file: !222, line: 1417, baseType: !211, size: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !473, file: !222, line: 1418, baseType: !381, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !473, file: !222, line: 1419, baseType: !70, size: 8, offset: 160)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !473, file: !222, line: 1420, baseType: !37, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !473, file: !222, line: 1421, baseType: !399, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !473, file: !222, line: 1422, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !222, line: 2228, size: 576, elements: !483)
!483 = !{!484, !485, !486, !493, !497, !501, !505, !509, !510, !520, !523, !524, !525, !529, !530, !531}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !482, file: !222, line: 2229, baseType: !19, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !482, file: !222, line: 2230, baseType: !6, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !482, file: !222, line: 2238, baseType: !487, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!6, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !492, line: 28, flags: DIFlagFwdDecl)
!492 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!493 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !482, file: !222, line: 2239, baseType: !494, size: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !222, line: 70, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !482, file: !222, line: 2240, baseType: !498, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!251, !481, !6, !19, !12}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !482, file: !222, line: 2242, baseType: !502, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !472}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !482, file: !222, line: 2243, baseType: !506, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !508, line: 76, flags: DIFlagFwdDecl)
!508 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!509 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !222, line: 2244, baseType: !481, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !482, file: !222, line: 2245, baseType: !511, size: 64, offset: 512)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !187, line: 182, size: 64, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !511, file: !187, line: 183, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !187, line: 186, size: 128, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !187, line: 187, baseType: !514, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !515, file: !187, line: 187, baseType: !519, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !482, file: !222, line: 2247, baseType: !521, offset: 576)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !522, line: 187, elements: !209)
!522 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !482, file: !222, line: 2248, baseType: !521, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !482, file: !222, line: 2249, baseType: !521, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !482, file: !222, line: 2250, baseType: !526, offset: 576)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, elements: !527)
!527 = !{!528}
!528 = !DISubrange(count: 3)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !482, file: !222, line: 2252, baseType: !521, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !482, file: !222, line: 2253, baseType: !521, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !482, file: !222, line: 2254, baseType: !521, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !473, file: !222, line: 1423, baseType: !533, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !222, line: 1935, size: 1472, elements: !536)
!536 = !{!537, !541, !545, !546, !550, !556, !560, !561, !562, !566, !570, !571, !572, !573, !579, !584, !585, !592, !593, !594, !595, !2116, !2131}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !535, file: !222, line: 1936, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!294, !472}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !535, file: !222, line: 1937, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !294}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !535, file: !222, line: 1938, baseType: !542, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !535, file: !222, line: 1940, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !294, !6}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !535, file: !222, line: 1941, baseType: !551, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!6, !294, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !222, line: 289, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !535, file: !222, line: 1942, baseType: !557, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!6, !294}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !535, file: !222, line: 1943, baseType: !542, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !535, file: !222, line: 1944, baseType: !502, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !535, file: !222, line: 1945, baseType: !563, size: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!6, !472, !6}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !535, file: !222, line: 1946, baseType: !567, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!6, !472}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !535, file: !222, line: 1947, baseType: !567, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !535, file: !222, line: 1948, baseType: !567, size: 64, offset: 704)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !535, file: !222, line: 1949, baseType: !567, size: 64, offset: 768)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !535, file: !222, line: 1950, baseType: !574, size: 64, offset: 832)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!6, !251, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !222, line: 57, flags: DIFlagFwdDecl)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !535, file: !222, line: 1951, baseType: !580, size: 64, offset: 896)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!6, !472, !583, !353}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !535, file: !222, line: 1952, baseType: !502, size: 64, offset: 960)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !535, file: !222, line: 1954, baseType: !586, size: 64, offset: 1024)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!6, !589, !251}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !591, line: 539, flags: DIFlagFwdDecl)
!591 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!592 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !535, file: !222, line: 1955, baseType: !586, size: 64, offset: 1088)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !535, file: !222, line: 1956, baseType: !586, size: 64, offset: 1152)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !535, file: !222, line: 1957, baseType: !586, size: 64, offset: 1216)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !535, file: !222, line: 1963, baseType: !596, size: 64, offset: 1280)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!6, !472, !599, !622}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !601, line: 68, size: 512, align: 128, elements: !602)
!601 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!602 = !{!603, !604, !2108, !2115}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !601, line: 69, baseType: !37, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !601, line: 77, baseType: !605, size: 320, offset: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !601, line: 77, size: 320, elements: !606)
!606 = !{!607, !793, !798, !826, !834, !840, !2100, !2107}
!607 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !601, line: 78, baseType: !608, size: 320)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !601, line: 78, size: 320, elements: !609)
!609 = !{!610, !611, !791, !792}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !608, file: !601, line: 84, baseType: !211, size: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !608, file: !601, line: 86, baseType: !612, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !222, line: 451, size: 1216, align: 64, elements: !614)
!614 = !{!615, !616, !624, !625, !630, !645, !654, !655, !656, !657, !784, !785, !788, !789, !790}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !613, file: !222, line: 452, baseType: !294, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !613, file: !222, line: 453, baseType: !617, size: 128, offset: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !618, line: 292, size: 128, elements: !619)
!618 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!619 = !{!620, !621, !623}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !617, file: !618, line: 293, baseType: !195)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !617, file: !618, line: 295, baseType: !622, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !187, line: 148, baseType: !56)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !617, file: !618, line: 296, baseType: !12, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !613, file: !222, line: 454, baseType: !622, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !613, file: !222, line: 455, baseType: !626, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !187, line: 168, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !187, line: 166, size: 32, elements: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !627, file: !187, line: 167, baseType: !6, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !613, file: !222, line: 460, baseType: !631, size: 128, offset: 256)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !632, line: 125, size: 128, elements: !633)
!632 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !644}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !631, file: !632, line: 126, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !632, line: 31, size: 64, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !635, file: !632, line: 32, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !632, line: 24, size: 192, align: 64, elements: !640)
!640 = !{!641, !642, !643}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !639, file: !632, line: 25, baseType: !37, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !639, file: !632, line: 26, baseType: !638, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !639, file: !632, line: 27, baseType: !638, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !631, file: !632, line: 127, baseType: !638, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !613, file: !222, line: 461, baseType: !646, size: 256, offset: 384)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !647, line: 35, size: 256, elements: !648)
!647 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!648 = !{!649, !650, !651, !653}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !646, file: !647, line: 36, baseType: !184, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !646, file: !647, line: 42, baseType: !184, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !646, file: !647, line: 46, baseType: !652, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !196, line: 29, baseType: !203)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !646, file: !647, line: 47, baseType: !211, size: 128, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !613, file: !222, line: 462, baseType: !37, size: 64, offset: 640)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !613, file: !222, line: 463, baseType: !37, size: 64, offset: 704)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !613, file: !222, line: 464, baseType: !37, size: 64, offset: 768)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !613, file: !222, line: 465, baseType: !658, size: 64, offset: 832)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !222, line: 367, size: 1408, elements: !661)
!661 = !{!662, !666, !670, !674, !678, !682, !688, !694, !698, !703, !707, !711, !715, !741, !752, !758, !759, !760, !764, !769, !773, !780}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !660, file: !222, line: 368, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!6, !599, !554}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !660, file: !222, line: 369, baseType: !667, size: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!6, !220, !599}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !660, file: !222, line: 372, baseType: !671, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!6, !612, !554}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !660, file: !222, line: 375, baseType: !675, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!6, !599}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !660, file: !222, line: 381, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!6, !220, !612, !214, !56}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !660, file: !222, line: 383, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !222, line: 290, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !660, file: !222, line: 385, baseType: !689, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!6, !220, !612, !399, !56, !56, !692, !693}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !660, file: !222, line: 388, baseType: !695, size: 64, offset: 448)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!6, !220, !612, !399, !56, !56, !599, !12}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !660, file: !222, line: 393, baseType: !699, size: 64, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!702, !612, !702}
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !187, line: 125, baseType: !287)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !660, file: !222, line: 394, baseType: !704, size: 64, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !599, !56, !56}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !660, file: !222, line: 395, baseType: !708, size: 64, offset: 640)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!6, !599, !622}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !660, file: !222, line: 396, baseType: !712, size: 64, offset: 704)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !599}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !660, file: !222, line: 397, baseType: !716, size: 64, offset: 768)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!445, !719, !739}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !222, line: 320, size: 384, elements: !721)
!721 = !{!722, !723, !724, !728, !729, !730, !731, !732}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !720, file: !222, line: 321, baseType: !220, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !720, file: !222, line: 326, baseType: !399, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !720, file: !222, line: 327, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !719, !408, !408}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !720, file: !222, line: 328, baseType: !12, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !720, file: !222, line: 329, baseType: !6, size: 32, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !720, file: !222, line: 330, baseType: !170, size: 16, offset: 288)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !720, file: !222, line: 331, baseType: !170, size: 16, offset: 304)
!732 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !222, line: 332, baseType: !733, size: 64, offset: 320)
!733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !222, line: 332, size: 64, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !733, file: !222, line: 333, baseType: !56, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !733, file: !222, line: 334, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !222, line: 334, flags: DIFlagFwdDecl)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !222, line: 64, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !660, file: !222, line: 402, baseType: !742, size: 64, offset: 832)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!6, !612, !599, !599, !745}
!745 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !746, line: 15, baseType: !56, size: 32, elements: !747)
!746 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!747 = !{!748, !749, !750, !751}
!748 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!749 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!750 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!751 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !660, file: !222, line: 404, baseType: !753, size: 64, offset: 896)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!358, !599, !756}
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !757, line: 305, baseType: !56)
!757 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!758 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !660, file: !222, line: 405, baseType: !712, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !660, file: !222, line: 406, baseType: !675, size: 64, offset: 1024)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !660, file: !222, line: 407, baseType: !761, size: 64, offset: 1088)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!6, !599, !37, !37}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !660, file: !222, line: 409, baseType: !765, size: 64, offset: 1152)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !599, !768, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !660, file: !222, line: 410, baseType: !770, size: 64, offset: 1216)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!6, !612, !599}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !660, file: !222, line: 413, baseType: !774, size: 64, offset: 1280)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!6, !777, !220, !779}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !222, line: 61, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !660, file: !222, line: 415, baseType: !781, size: 64, offset: 1344)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !220}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !222, line: 466, baseType: !37, size: 64, offset: 896)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !613, file: !222, line: 467, baseType: !786, size: 32, offset: 960)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !787, line: 8, baseType: !284)
!787 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !613, file: !222, line: 468, baseType: !195, offset: 992)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !613, file: !222, line: 469, baseType: !211, size: 128, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !613, file: !222, line: 470, baseType: !12, size: 64, offset: 1152)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !608, file: !601, line: 87, baseType: !37, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !608, file: !601, line: 94, baseType: !37, size: 64, offset: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !601, line: 96, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !601, line: 96, size: 64, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !794, file: !601, line: 101, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !187, line: 143, baseType: !287)
!798 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !601, line: 103, baseType: !799, size: 320)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !601, line: 103, size: 320, elements: !800)
!800 = !{!801, !811, !814, !815}
!801 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !601, line: 104, baseType: !802, size: 128)
!802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !601, line: 104, size: 128, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !802, file: !601, line: 105, baseType: !211, size: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !601, line: 106, baseType: !806, size: 128)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !601, line: 106, size: 128, elements: !807)
!807 = !{!808, !809, !810}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !806, file: !601, line: 107, baseType: !599, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !806, file: !601, line: 109, baseType: !6, size: 32, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !806, file: !601, line: 110, baseType: !6, size: 32, offset: 96)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !799, file: !601, line: 117, baseType: !812, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !601, line: 117, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !799, file: !601, line: 119, baseType: !12, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !601, line: 120, baseType: !816, size: 64, offset: 256)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !601, line: 120, size: 64, elements: !817)
!817 = !{!818, !819, !820}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !816, file: !601, line: 121, baseType: !12, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !816, file: !601, line: 122, baseType: !37, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !601, line: 123, baseType: !821, size: 32)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !816, file: !601, line: 123, size: 32, elements: !822)
!822 = !{!823, !824, !825}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !821, file: !601, line: 124, baseType: !56, size: 16, flags: DIFlagBitField, extraData: i64 0)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !821, file: !601, line: 125, baseType: !56, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !821, file: !601, line: 126, baseType: !56, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !601, line: 130, baseType: !827, size: 192)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !601, line: 130, size: 192, elements: !828)
!828 = !{!829, !830, !831, !832, !833}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !827, file: !601, line: 131, baseType: !37, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !827, file: !601, line: 134, baseType: !70, size: 8, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !827, file: !601, line: 135, baseType: !70, size: 8, offset: 72)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !827, file: !601, line: 136, baseType: !626, size: 32, offset: 96)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !827, file: !601, line: 137, baseType: !56, size: 32, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !601, line: 139, baseType: !835, size: 256)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !601, line: 139, size: 256, elements: !836)
!836 = !{!837, !838, !839}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !835, file: !601, line: 140, baseType: !37, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !835, file: !601, line: 141, baseType: !626, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !835, file: !601, line: 143, baseType: !211, size: 128, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !601, line: 145, baseType: !841, size: 256)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !601, line: 145, size: 256, elements: !842)
!842 = !{!843, !844, !846, !847, !2099}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !841, file: !601, line: 146, baseType: !37, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !841, file: !601, line: 147, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !591, line: 509, baseType: !599)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !841, file: !601, line: 148, baseType: !37, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !601, line: 149, baseType: !848, size: 64, offset: 192)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !601, line: 149, size: 64, elements: !849)
!849 = !{!850, !2098}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !848, file: !601, line: 150, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !601, line: 388, size: 7296, elements: !853)
!853 = !{!854, !2094}
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !601, line: 389, baseType: !855, size: 7296)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !852, file: !601, line: 389, size: 7296, elements: !856)
!856 = !{!857, !895, !896, !897, !901, !902, !903, !904, !905, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !946, !954, !957, !979, !980, !2078, !2079, !2082, !2083, !2084, !2087, !2088, !2089, !2092, !2093}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !855, file: !601, line: 390, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !601, line: 305, size: 1472, elements: !860)
!860 = !{!861, !862, !863, !864, !865, !866, !867, !868, !875, !876, !881, !882, !885, !889, !890, !891, !892, !893}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !859, file: !601, line: 308, baseType: !37, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !859, file: !601, line: 309, baseType: !37, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !859, file: !601, line: 313, baseType: !858, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !859, file: !601, line: 313, baseType: !858, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !859, file: !601, line: 315, baseType: !639, size: 192, align: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !859, file: !601, line: 323, baseType: !37, size: 64, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !859, file: !601, line: 327, baseType: !851, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !859, file: !601, line: 333, baseType: !869, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !591, line: 284, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !591, line: 284, size: 64, elements: !871)
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !870, file: !591, line: 284, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !874, line: 19, baseType: !37)
!874 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!875 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !859, file: !601, line: 334, baseType: !37, size: 64, offset: 640)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !859, file: !601, line: 343, baseType: !877, size: 256, offset: 704)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !859, file: !601, line: 340, size: 256, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !877, file: !601, line: 341, baseType: !639, size: 192, align: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !877, file: !601, line: 342, baseType: !37, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !859, file: !601, line: 351, baseType: !211, size: 128, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !859, file: !601, line: 353, baseType: !883, size: 64, offset: 1088)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !601, line: 353, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !859, file: !601, line: 356, baseType: !886, size: 64, offset: 1152)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !601, line: 356, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !859, file: !601, line: 359, baseType: !37, size: 64, offset: 1216)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !859, file: !601, line: 361, baseType: !220, size: 64, offset: 1280)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !859, file: !601, line: 362, baseType: !12, size: 64, offset: 1344)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !859, file: !601, line: 365, baseType: !184, size: 64, offset: 1408)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !859, file: !601, line: 373, baseType: !894, offset: 1472)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !601, line: 296, elements: !209)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !855, file: !601, line: 391, baseType: !635, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !855, file: !601, line: 392, baseType: !287, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !855, file: !601, line: 394, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!37, !220, !37, !37, !37, !37}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !855, file: !601, line: 398, baseType: !37, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !855, file: !601, line: 399, baseType: !37, size: 64, offset: 320)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !855, file: !601, line: 405, baseType: !37, size: 64, offset: 384)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !855, file: !601, line: 406, baseType: !37, size: 64, offset: 448)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !855, file: !601, line: 407, baseType: !906, size: 64, offset: 512)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !591, line: 286, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !591, line: 286, size: 64, elements: !909)
!909 = !{!910}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !908, file: !591, line: 286, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !874, line: 18, baseType: !37)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !855, file: !601, line: 416, baseType: !626, size: 32, offset: 576)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !855, file: !601, line: 428, baseType: !626, size: 32, offset: 608)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !855, file: !601, line: 437, baseType: !626, size: 32, offset: 640)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !855, file: !601, line: 447, baseType: !626, size: 32, offset: 672)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !855, file: !601, line: 450, baseType: !184, size: 64, offset: 704)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !855, file: !601, line: 452, baseType: !6, size: 32, offset: 768)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !855, file: !601, line: 454, baseType: !195, offset: 800)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !855, file: !601, line: 457, baseType: !646, size: 256, offset: 832)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !855, file: !601, line: 459, baseType: !211, size: 128, offset: 1088)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !855, file: !601, line: 466, baseType: !37, size: 64, offset: 1216)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !855, file: !601, line: 467, baseType: !37, size: 64, offset: 1280)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !855, file: !601, line: 469, baseType: !37, size: 64, offset: 1344)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !855, file: !601, line: 470, baseType: !37, size: 64, offset: 1408)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !855, file: !601, line: 471, baseType: !186, size: 64, offset: 1472)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !855, file: !601, line: 472, baseType: !37, size: 64, offset: 1536)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !855, file: !601, line: 473, baseType: !37, size: 64, offset: 1600)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !855, file: !601, line: 474, baseType: !37, size: 64, offset: 1664)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !855, file: !601, line: 475, baseType: !37, size: 64, offset: 1728)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !855, file: !601, line: 477, baseType: !195, offset: 1792)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !855, file: !601, line: 478, baseType: !37, size: 64, offset: 1792)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !855, file: !601, line: 478, baseType: !37, size: 64, offset: 1856)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !855, file: !601, line: 478, baseType: !37, size: 64, offset: 1920)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !855, file: !601, line: 478, baseType: !37, size: 64, offset: 1984)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !855, file: !601, line: 479, baseType: !37, size: 64, offset: 2048)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !855, file: !601, line: 479, baseType: !37, size: 64, offset: 2112)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !855, file: !601, line: 479, baseType: !37, size: 64, offset: 2176)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !855, file: !601, line: 480, baseType: !37, size: 64, offset: 2240)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !855, file: !601, line: 480, baseType: !37, size: 64, offset: 2304)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !855, file: !601, line: 480, baseType: !37, size: 64, offset: 2368)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !855, file: !601, line: 480, baseType: !37, size: 64, offset: 2432)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !855, file: !601, line: 482, baseType: !943, size: 2816, offset: 2496)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2816, elements: !944)
!944 = !{!945}
!945 = !DISubrange(count: 44)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !855, file: !601, line: 488, baseType: !947, size: 256, offset: 5312)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !948, line: 60, size: 256, elements: !949)
!948 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !947, file: !948, line: 61, baseType: !951, size: 256)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 4)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !855, file: !601, line: 490, baseType: !955, size: 64, offset: 5568)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !601, line: 490, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !855, file: !601, line: 493, baseType: !958, size: 896, offset: 5632)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !959, line: 53, baseType: !960)
!959 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !959, line: 13, size: 896, elements: !961)
!961 = !{!962, !963, !964, !965, !968, !969, !970, !971, !975, !976, !977}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !960, file: !959, line: 18, baseType: !287, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !960, file: !959, line: 28, baseType: !186, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !960, file: !959, line: 31, baseType: !646, size: 256, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !960, file: !959, line: 32, baseType: !966, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !959, line: 32, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !960, file: !959, line: 37, baseType: !31, size: 16, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !960, file: !959, line: 40, baseType: !180, size: 192, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !960, file: !959, line: 41, baseType: !12, size: 64, offset: 704)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !960, file: !959, line: 42, baseType: !972, size: 64, offset: 768)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !959, line: 42, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !960, file: !959, line: 44, baseType: !626, size: 32, offset: 832)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !960, file: !959, line: 50, baseType: !170, size: 16, offset: 864)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !960, file: !959, line: 51, baseType: !978, size: 16, offset: 880)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !171, line: 18, baseType: !98)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !855, file: !601, line: 495, baseType: !37, size: 64, offset: 6528)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !855, file: !601, line: 497, baseType: !981, size: 64, offset: 6592)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !601, line: 381, size: 384, elements: !983)
!983 = !{!984, !985, !2077}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !982, file: !601, line: 382, baseType: !626, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !982, file: !601, line: 383, baseType: !986, size: 128, offset: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !601, line: 376, size: 128, elements: !987)
!987 = !{!988, !2075}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !986, file: !601, line: 377, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !991, line: 640, size: 48640, elements: !992)
!991 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!992 = !{!993, !999, !1001, !1002, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1019, !1037, !1048, !1137, !1138, !1139, !1147, !1148, !1150, !1151, !1152, !1153, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1238, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1277, !1279, !1280, !1281, !1293, !1294, !1295, !1296, !1297, !1298, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1322, !1327, !1509, !1510, !1511, !1512, !1516, !1519, !1522, !1525, !1528, !1531, !1632, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1680, !1681, !1682, !1683, !1684, !1689, !1690, !1691, !1694, !1695, !1698, !1701, !1704, !1707, !1750, !1753, !1754, !1833, !1834, !1837, !1838, !1841, !1842, !1843, !1847, !1848, !1849, !1862, !1863, !1864, !1874, !1879, !1882, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !990, file: !991, line: 646, baseType: !994, size: 128)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !995, line: 56, size: 128, elements: !996)
!995 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !994, file: !995, line: 57, baseType: !37, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !994, file: !995, line: 58, baseType: !284, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !990, file: !991, line: 649, baseType: !1000, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !408)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !990, file: !991, line: 657, baseType: !12, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !990, file: !991, line: 658, baseType: !1003, size: 32, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1004, line: 113, baseType: !1005)
!1004 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1004, line: 111, size: 32, elements: !1006)
!1006 = !{!1007}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1005, file: !1004, line: 112, baseType: !626, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !990, file: !991, line: 660, baseType: !56, size: 32, offset: 288)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !990, file: !991, line: 661, baseType: !56, size: 32, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !990, file: !991, line: 684, baseType: !6, size: 32, offset: 352)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !990, file: !991, line: 686, baseType: !6, size: 32, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !990, file: !991, line: 687, baseType: !6, size: 32, offset: 416)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !990, file: !991, line: 688, baseType: !6, size: 32, offset: 448)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !990, file: !991, line: 689, baseType: !56, size: 32, offset: 480)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !990, file: !991, line: 691, baseType: !1016, size: 64, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1018)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !991, line: 691, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !990, file: !991, line: 692, baseType: !1020, size: 832, offset: 576)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !991, line: 451, size: 832, elements: !1021)
!1021 = !{!1022, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1020, file: !991, line: 453, baseType: !1023, size: 128)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !991, line: 325, size: 128, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1023, file: !991, line: 326, baseType: !37, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1023, file: !991, line: 327, baseType: !284, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1020, file: !991, line: 454, baseType: !639, size: 192, align: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1020, file: !991, line: 455, baseType: !211, size: 128, offset: 320)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1020, file: !991, line: 456, baseType: !56, size: 32, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1020, file: !991, line: 458, baseType: !287, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1020, file: !991, line: 459, baseType: !287, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1020, file: !991, line: 460, baseType: !287, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1020, file: !991, line: 461, baseType: !287, size: 64, offset: 704)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1020, file: !991, line: 463, baseType: !287, size: 64, offset: 768)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1020, file: !991, line: 465, baseType: !1036, offset: 832)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !991, line: 415, elements: !209)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !990, file: !991, line: 693, baseType: !1038, size: 384, offset: 1408)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !991, line: 489, size: 384, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045, !1046}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1038, file: !991, line: 490, baseType: !211, size: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1038, file: !991, line: 491, baseType: !37, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1038, file: !991, line: 492, baseType: !37, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1038, file: !991, line: 493, baseType: !56, size: 32, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1038, file: !991, line: 494, baseType: !31, size: 16, offset: 288)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1038, file: !991, line: 495, baseType: !31, size: 16, offset: 304)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1038, file: !991, line: 497, baseType: !1047, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !990, file: !991, line: 697, baseType: !1049, size: 1792, offset: 1792)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !991, line: 507, size: 1792, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1134, !1135}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1049, file: !991, line: 508, baseType: !639, size: 192, align: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1049, file: !991, line: 515, baseType: !287, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1049, file: !991, line: 516, baseType: !287, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1049, file: !991, line: 517, baseType: !287, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1049, file: !991, line: 518, baseType: !287, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1049, file: !991, line: 519, baseType: !287, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1049, file: !991, line: 526, baseType: !191, size: 64, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1049, file: !991, line: 527, baseType: !287, size: 64, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1049, file: !991, line: 528, baseType: !56, size: 32, offset: 640)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1049, file: !991, line: 554, baseType: !56, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1049, file: !991, line: 555, baseType: !56, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1049, file: !991, line: 556, baseType: !56, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1049, file: !991, line: 557, baseType: !56, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1049, file: !991, line: 563, baseType: !1065, size: 512, offset: 704)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !1066, line: 118, size: 512, elements: !1067)
!1066 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!1067 = !{!1068, !1076, !1077, !1086, !1129, !1131, !1132, !1133}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1065, file: !1066, line: 119, baseType: !1069, size: 256)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1070, line: 9, size: 256, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1069, file: !1070, line: 10, baseType: !639, size: 192, align: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1069, file: !1070, line: 11, baseType: !1074, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1075, line: 29, baseType: !191)
!1075 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1065, file: !1066, line: 120, baseType: !1074, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1065, file: !1066, line: 121, baseType: !1078, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!1081, !1085}
!1081 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !1066, line: 65, baseType: !56, size: 32, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!1084 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1065, file: !1066, line: 122, baseType: !1087, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !1066, line: 159, size: 512, align: 512, elements: !1089)
!1089 = !{!1090, !1110, !1111, !1114, !1119, !1120, !1124, !1128}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1088, file: !1066, line: 160, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !1066, line: 214, size: 4608, align: 512, elements: !1093)
!1093 = !{!1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1092, file: !1066, line: 215, baseType: !652)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1092, file: !1066, line: 216, baseType: !56, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1092, file: !1066, line: 217, baseType: !56, size: 32, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1092, file: !1066, line: 218, baseType: !56, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1092, file: !1066, line: 219, baseType: !56, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1092, file: !1066, line: 220, baseType: !56, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1092, file: !1066, line: 221, baseType: !56, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1092, file: !1066, line: 222, baseType: !56, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1092, file: !1066, line: 233, baseType: !1074, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1092, file: !1066, line: 234, baseType: !1085, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1092, file: !1066, line: 235, baseType: !1074, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1092, file: !1066, line: 236, baseType: !1085, size: 64, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1092, file: !1066, line: 237, baseType: !1107, size: 4096, offset: 512)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1088, size: 4096, elements: !1108)
!1108 = !{!1109}
!1109 = !DISubrange(count: 8)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1088, file: !1066, line: 161, baseType: !56, size: 32, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1088, file: !1066, line: 162, baseType: !1112, size: 32, offset: 96)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !187, line: 27, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !308, line: 96, baseType: !6)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1088, file: !1066, line: 163, baseType: !1115, size: 32, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !257, line: 276, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !257, line: 276, size: 32, elements: !1117)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1116, file: !257, line: 276, baseType: !261, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1088, file: !1066, line: 164, baseType: !1085, size: 64, offset: 192)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1088, file: !1066, line: 165, baseType: !1121, size: 128, offset: 256)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1070, line: 14, size: 128, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1121, file: !1070, line: 15, baseType: !631, size: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1088, file: !1066, line: 166, baseType: !1125, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!1074}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1088, file: !1066, line: 167, baseType: !1074, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1065, file: !1066, line: 123, baseType: !1130, size: 8, offset: 448)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !171, line: 17, baseType: !69)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1065, file: !1066, line: 124, baseType: !1130, size: 8, offset: 456)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1065, file: !1066, line: 125, baseType: !1130, size: 8, offset: 464)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1065, file: !1066, line: 126, baseType: !1130, size: 8, offset: 472)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1049, file: !991, line: 572, baseType: !1065, size: 512, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1049, file: !991, line: 580, baseType: !1136, size: 64, offset: 1728)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !990, file: !991, line: 721, baseType: !56, size: 32, offset: 3584)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !990, file: !991, line: 722, baseType: !6, size: 32, offset: 3616)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !990, file: !991, line: 723, baseType: !1140, size: 64, offset: 3648)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1143, line: 17, baseType: !1144)
!1143 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1143, line: 17, size: 64, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1144, file: !1143, line: 17, baseType: !36, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !990, file: !991, line: 724, baseType: !1142, size: 64, offset: 3712)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !990, file: !991, line: 749, baseType: !1149, offset: 3776)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !991, line: 290, elements: !209)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !990, file: !991, line: 751, baseType: !211, size: 128, offset: 3776)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !990, file: !991, line: 757, baseType: !851, size: 64, offset: 3904)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !990, file: !991, line: 758, baseType: !851, size: 64, offset: 3968)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !990, file: !991, line: 761, baseType: !1154, size: 320, offset: 4032)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !948, line: 34, size: 320, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1154, file: !948, line: 35, baseType: !287, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1154, file: !948, line: 36, baseType: !1158, size: 256, offset: 64)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 256, elements: !952)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !990, file: !991, line: 766, baseType: !6, size: 32, offset: 4352)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !990, file: !991, line: 767, baseType: !6, size: 32, offset: 4384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !990, file: !991, line: 768, baseType: !6, size: 32, offset: 4416)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !990, file: !991, line: 770, baseType: !6, size: 32, offset: 4448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !990, file: !991, line: 772, baseType: !37, size: 64, offset: 4480)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !990, file: !991, line: 775, baseType: !56, size: 32, offset: 4544)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !990, file: !991, line: 778, baseType: !56, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !990, file: !991, line: 779, baseType: !56, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !990, file: !991, line: 780, baseType: !56, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !990, file: !991, line: 803, baseType: !56, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !990, file: !991, line: 806, baseType: !56, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !990, file: !991, line: 807, baseType: !56, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !990, file: !991, line: 809, baseType: !56, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !990, file: !991, line: 815, baseType: !56, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !990, file: !991, line: 831, baseType: !37, size: 64, offset: 4672)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !990, file: !991, line: 833, baseType: !1175, size: 384, offset: 4736)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !1176, line: 25, size: 384, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!1177 = !{!1178, !1183}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1175, file: !1176, line: 26, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!408, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !1176, line: 27, baseType: !1184, size: 320, offset: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !1176, line: 27, size: 320, elements: !1185)
!1185 = !{!1186, !1196, !1228}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1184, file: !1176, line: 36, baseType: !1187, size: 320)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1184, file: !1176, line: 29, size: 320, elements: !1188)
!1188 = !{!1189, !1191, !1192, !1193, !1194, !1195}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1187, file: !1176, line: 30, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1187, file: !1176, line: 31, baseType: !284, size: 32, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1187, file: !1176, line: 32, baseType: !284, size: 32, offset: 96)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1187, file: !1176, line: 33, baseType: !284, size: 32, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1187, file: !1176, line: 34, baseType: !287, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1187, file: !1176, line: 35, baseType: !1190, size: 64, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1184, file: !1176, line: 46, baseType: !1197, size: 192)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1184, file: !1176, line: 38, size: 192, elements: !1198)
!1198 = !{!1199, !1200, !1206, !1227}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1197, file: !1176, line: 39, baseType: !1112, size: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1197, file: !1176, line: 40, baseType: !1201, size: 32, offset: 32)
!1201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !1176, line: 16, baseType: !56, size: 32, elements: !1202)
!1202 = !{!1203, !1204, !1205}
!1203 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!1204 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!1205 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1176, line: 41, baseType: !1207, size: 64, offset: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !1176, line: 41, size: 64, elements: !1208)
!1208 = !{!1209, !1217}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1207, file: !1176, line: 42, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1212, line: 7, size: 128, elements: !1213)
!1212 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !{!1214, !1216}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1211, file: !1212, line: 8, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !308, line: 93, baseType: !193)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1211, file: !1212, line: 9, baseType: !193, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1207, file: !1176, line: 43, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1220, line: 7, size: 64, elements: !1221)
!1220 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1221 = !{!1222, !1226}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1219, file: !1220, line: 8, baseType: !1223, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1220, line: 5, baseType: !1224)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !171, line: 20, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !30, line: 26, baseType: !6)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1219, file: !1220, line: 9, baseType: !1224, size: 32, offset: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1197, file: !1176, line: 45, baseType: !287, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1184, file: !1176, line: 54, baseType: !1229, size: 256)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1184, file: !1176, line: 48, size: 256, elements: !1230)
!1230 = !{!1231, !1234, !1235, !1236, !1237}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1229, file: !1176, line: 49, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1176, line: 14, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1229, file: !1176, line: 50, baseType: !6, size: 32, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1229, file: !1176, line: 51, baseType: !6, size: 32, offset: 96)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1229, file: !1176, line: 52, baseType: !37, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1229, file: !1176, line: 53, baseType: !37, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !990, file: !991, line: 835, baseType: !1239, size: 32, offset: 5120)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !187, line: 22, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !308, line: 28, baseType: !6)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !990, file: !991, line: 836, baseType: !1239, size: 32, offset: 5152)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !990, file: !991, line: 840, baseType: !37, size: 64, offset: 5184)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !990, file: !991, line: 849, baseType: !989, size: 64, offset: 5248)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !990, file: !991, line: 852, baseType: !989, size: 64, offset: 5312)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !990, file: !991, line: 857, baseType: !211, size: 128, offset: 5376)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !990, file: !991, line: 858, baseType: !211, size: 128, offset: 5504)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !990, file: !991, line: 859, baseType: !989, size: 64, offset: 5632)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !990, file: !991, line: 867, baseType: !211, size: 128, offset: 5696)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !990, file: !991, line: 868, baseType: !211, size: 128, offset: 5824)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !990, file: !991, line: 871, baseType: !1251, size: 64, offset: 5952)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1253, line: 59, size: 768, elements: !1254)
!1253 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!1254 = !{!1255, !1256, !1257, !1258, !1260, !1261, !1268, !1269}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1252, file: !1253, line: 61, baseType: !1003, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1252, file: !1253, line: 62, baseType: !56, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1252, file: !1253, line: 63, baseType: !195, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1252, file: !1253, line: 65, baseType: !1259, size: 256, offset: 64)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 256, elements: !952)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1252, file: !1253, line: 66, baseType: !511, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1252, file: !1253, line: 68, baseType: !1262, size: 128, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1263, line: 40, baseType: !1264)
!1263 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1263, line: 36, size: 128, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1264, file: !1263, line: 37, baseType: !195)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1264, file: !1263, line: 38, baseType: !211, size: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1252, file: !1253, line: 69, baseType: !234, size: 128, align: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1252, file: !1253, line: 70, baseType: !1270, size: 128, offset: 640)
!1270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1271, size: 128, elements: !38)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1253, line: 54, size: 128, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1271, file: !1253, line: 55, baseType: !6, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1271, file: !1253, line: 56, baseType: !1275, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1253, line: 56, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !990, file: !991, line: 872, baseType: !1278, size: 512, offset: 6016)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 512, elements: !952)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !990, file: !991, line: 873, baseType: !211, size: 128, offset: 6528)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !990, file: !991, line: 874, baseType: !211, size: 128, offset: 6656)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !990, file: !991, line: 876, baseType: !1282, size: 64, offset: 6784)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1284, line: 26, size: 192, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1285 = !{!1286, !1287}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1283, file: !1284, line: 27, baseType: !56, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1283, file: !1284, line: 28, baseType: !1288, size: 128, offset: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1289, line: 43, size: 128, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1288, file: !1289, line: 44, baseType: !652)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1288, file: !1289, line: 45, baseType: !211, size: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !990, file: !991, line: 879, baseType: !583, size: 64, offset: 6848)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !990, file: !991, line: 882, baseType: !583, size: 64, offset: 6912)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !990, file: !991, line: 884, baseType: !287, size: 64, offset: 6976)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !990, file: !991, line: 885, baseType: !287, size: 64, offset: 7040)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !990, file: !991, line: 890, baseType: !287, size: 64, offset: 7104)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !990, file: !991, line: 891, baseType: !1299, size: 128, offset: 7168)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !991, line: 242, size: 128, elements: !1300)
!1300 = !{!1301, !1302, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1299, file: !991, line: 244, baseType: !287, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1299, file: !991, line: 245, baseType: !287, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1299, file: !991, line: 246, baseType: !652, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !990, file: !991, line: 900, baseType: !37, size: 64, offset: 7296)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !990, file: !991, line: 901, baseType: !37, size: 64, offset: 7360)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !990, file: !991, line: 904, baseType: !287, size: 64, offset: 7424)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !990, file: !991, line: 907, baseType: !287, size: 64, offset: 7488)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !990, file: !991, line: 910, baseType: !37, size: 64, offset: 7552)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !990, file: !991, line: 911, baseType: !37, size: 64, offset: 7616)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !990, file: !991, line: 914, baseType: !1311, size: 640, offset: 7680)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1312, line: 123, size: 640, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1313 = !{!1314, !1320, !1321}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1311, file: !1312, line: 124, baseType: !1315, size: 576)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 576, elements: !527)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1312, line: 108, size: 192, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1316, file: !1312, line: 109, baseType: !287, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1316, file: !1312, line: 110, baseType: !1121, size: 128, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1311, file: !1312, line: 125, baseType: !56, size: 32, offset: 576)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1311, file: !1312, line: 126, baseType: !56, size: 32, offset: 608)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !990, file: !991, line: 917, baseType: !1323, size: 192, offset: 8320)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1312, line: 134, size: 192, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1323, file: !1312, line: 135, baseType: !234, size: 128, align: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1323, file: !1312, line: 136, baseType: !56, size: 32, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !990, file: !991, line: 923, baseType: !1328, size: 64, offset: 8512)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1331, line: 111, size: 1280, elements: !1332)
!1331 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1332 = !{!1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1350, !1351, !1352, !1353, !1354, !1355, !1462, !1463, !1464, !1465, !1491, !1494, !1504}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1330, file: !1331, line: 112, baseType: !626, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1330, file: !1331, line: 120, baseType: !301, size: 32, offset: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1330, file: !1331, line: 121, baseType: !310, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1330, file: !1331, line: 122, baseType: !301, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1330, file: !1331, line: 123, baseType: !310, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1330, file: !1331, line: 124, baseType: !301, size: 32, offset: 160)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1330, file: !1331, line: 125, baseType: !310, size: 32, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1330, file: !1331, line: 126, baseType: !301, size: 32, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1330, file: !1331, line: 127, baseType: !310, size: 32, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1330, file: !1331, line: 128, baseType: !56, size: 32, offset: 288)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1330, file: !1331, line: 129, baseType: !1344, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1345, line: 26, baseType: !1346)
!1345 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1345, line: 24, size: 64, elements: !1347)
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1346, file: !1345, line: 25, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !52)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1330, file: !1331, line: 130, baseType: !1344, size: 64, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1330, file: !1331, line: 131, baseType: !1344, size: 64, offset: 448)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1330, file: !1331, line: 132, baseType: !1344, size: 64, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1330, file: !1331, line: 133, baseType: !1344, size: 64, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1330, file: !1331, line: 135, baseType: !70, size: 8, offset: 640)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1330, file: !1331, line: 137, baseType: !1356, size: 64, offset: 704)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1358, line: 189, size: 1664, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1359 = !{!1360, !1361, !1364, !1369, !1370, !1373, !1374, !1379, !1380, !1381, !1382, !1384, !1385, !1386, !1387, !1388, !1426, !1447}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1357, file: !1358, line: 190, baseType: !1003, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1357, file: !1358, line: 191, baseType: !1362, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1358, line: 28, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !187, line: 98, baseType: !1224)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 192, baseType: !1365, size: 192, offset: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 192, size: 192, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1365, file: !1358, line: 193, baseType: !211, size: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1365, file: !1358, line: 194, baseType: !639, size: 192, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1357, file: !1358, line: 199, baseType: !646, size: 256, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1357, file: !1358, line: 200, baseType: !1371, size: 64, offset: 512)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1358, line: 200, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1357, file: !1358, line: 201, baseType: !12, size: 64, offset: 576)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 202, baseType: !1375, size: 64, offset: 640)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 202, size: 64, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1375, file: !1358, line: 203, baseType: !406, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1375, file: !1358, line: 204, baseType: !406, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1357, file: !1358, line: 206, baseType: !406, size: 64, offset: 704)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1357, file: !1358, line: 207, baseType: !301, size: 32, offset: 768)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1357, file: !1358, line: 208, baseType: !310, size: 32, offset: 800)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1357, file: !1358, line: 209, baseType: !1383, size: 32, offset: 832)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1358, line: 31, baseType: !426)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1357, file: !1358, line: 210, baseType: !31, size: 16, offset: 864)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1357, file: !1358, line: 211, baseType: !31, size: 16, offset: 880)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1357, file: !1358, line: 215, baseType: !99, size: 16, offset: 896)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !1358, line: 222, baseType: !37, size: 64, offset: 960)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 239, baseType: !1389, size: 320, offset: 1024)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 239, size: 320, elements: !1390)
!1390 = !{!1391, !1418}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1389, file: !1358, line: 240, baseType: !1392, size: 320)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1358, line: 108, size: 320, elements: !1393)
!1393 = !{!1394, !1395, !1407, !1410, !1417}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1392, file: !1358, line: 110, baseType: !37, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1358, line: 111, baseType: !1396, size: 64, offset: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1392, file: !1358, line: 111, size: 64, elements: !1397)
!1397 = !{!1398, !1406}
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1396, file: !1358, line: 112, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1396, file: !1358, line: 112, size: 64, elements: !1400)
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1399, file: !1358, line: 114, baseType: !170, size: 16)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1399, file: !1358, line: 115, baseType: !1403, size: 48, offset: 16)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 48, elements: !1404)
!1404 = !{!1405}
!1405 = !DISubrange(count: 6)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1396, file: !1358, line: 121, baseType: !37, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1392, file: !1358, line: 123, baseType: !1408, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1358, line: 96, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1392, file: !1358, line: 124, baseType: !1411, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1358, line: 102, size: 192, elements: !1413)
!1413 = !{!1414, !1415, !1416}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1412, file: !1358, line: 103, baseType: !234, size: 128, align: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1412, file: !1358, line: 104, baseType: !1003, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1412, file: !1358, line: 105, baseType: !358, size: 8, offset: 160)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1392, file: !1358, line: 125, baseType: !19, size: 64, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1358, line: 241, baseType: !1419, size: 320)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1389, file: !1358, line: 241, size: 320, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1419, file: !1358, line: 242, baseType: !37, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1419, file: !1358, line: 243, baseType: !37, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1419, file: !1358, line: 244, baseType: !1408, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1419, file: !1358, line: 245, baseType: !1411, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1419, file: !1358, line: 246, baseType: !353, size: 64, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 254, baseType: !1427, size: 256, offset: 1344)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 254, size: 256, elements: !1428)
!1428 = !{!1429, !1435}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1427, file: !1358, line: 255, baseType: !1430, size: 256)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1358, line: 128, size: 256, elements: !1431)
!1431 = !{!1432, !1433}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1430, file: !1358, line: 129, baseType: !12, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1430, file: !1358, line: 130, baseType: !1434, size: 256)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !952)
!1435 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1358, line: 256, baseType: !1436, size: 256)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1427, file: !1358, line: 256, size: 256, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1436, file: !1358, line: 258, baseType: !211, size: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1436, file: !1358, line: 259, baseType: !1440, size: 128, offset: 128)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1441, line: 22, size: 128, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1442 = !{!1443, !1446}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1440, file: !1441, line: 23, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1441, line: 23, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1440, file: !1441, line: 24, baseType: !37, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1357, file: !1358, line: 274, baseType: !1448, size: 64, offset: 1600)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1358, line: 170, size: 192, elements: !1450)
!1450 = !{!1451, !1460, !1461}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1449, file: !1358, line: 171, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1358, line: 165, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!6, !1356, !1456, !1458, !1356}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1409)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1430)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1449, file: !1358, line: 172, baseType: !1356, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1449, file: !1358, line: 173, baseType: !1408, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1330, file: !1331, line: 138, baseType: !1356, size: 64, offset: 768)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1330, file: !1331, line: 139, baseType: !1356, size: 64, offset: 832)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1330, file: !1331, line: 140, baseType: !1356, size: 64, offset: 896)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1330, file: !1331, line: 145, baseType: !1466, size: 64, offset: 960)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1468, line: 13, size: 896, elements: !1469)
!1468 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1467, file: !1468, line: 14, baseType: !1003, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1467, file: !1468, line: 15, baseType: !626, size: 32, offset: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1467, file: !1468, line: 16, baseType: !626, size: 32, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1467, file: !1468, line: 21, baseType: !184, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1467, file: !1468, line: 27, baseType: !37, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1467, file: !1468, line: 28, baseType: !37, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1467, file: !1468, line: 29, baseType: !184, size: 64, offset: 320)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1467, file: !1468, line: 32, baseType: !515, size: 128, offset: 384)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1467, file: !1468, line: 33, baseType: !301, size: 32, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1467, file: !1468, line: 37, baseType: !184, size: 64, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1467, file: !1468, line: 44, baseType: !1481, size: 256, offset: 640)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1482, line: 15, size: 256, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1483 = !{!1484, !1485, !1486, !1487, !1488, !1489, !1490}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1481, file: !1482, line: 16, baseType: !652)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1481, file: !1482, line: 18, baseType: !6, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1481, file: !1482, line: 19, baseType: !6, size: 32, offset: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1481, file: !1482, line: 20, baseType: !6, size: 32, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1481, file: !1482, line: 21, baseType: !6, size: 32, offset: 96)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1481, file: !1482, line: 22, baseType: !37, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1481, file: !1482, line: 23, baseType: !37, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1330, file: !1331, line: 146, baseType: !1492, size: 64, offset: 1024)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !302, line: 18, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1330, file: !1331, line: 147, baseType: !1495, size: 64, offset: 1088)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1331, line: 25, size: 64, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1496, file: !1331, line: 26, baseType: !626, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1496, file: !1331, line: 27, baseType: !6, size: 32, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1496, file: !1331, line: 28, baseType: !1501, offset: 64)
!1501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, elements: !1502)
!1502 = !{!1503}
!1503 = !DISubrange(count: 0)
!1504 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !1331, line: 149, baseType: !1505, size: 128, offset: 1152)
!1505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1330, file: !1331, line: 149, size: 128, elements: !1506)
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1505, file: !1331, line: 150, baseType: !6, size: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1505, file: !1331, line: 151, baseType: !234, size: 128, align: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !990, file: !991, line: 926, baseType: !1328, size: 64, offset: 8576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !990, file: !991, line: 929, baseType: !1328, size: 64, offset: 8640)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !990, file: !991, line: 933, baseType: !1356, size: 64, offset: 8704)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !990, file: !991, line: 943, baseType: !1513, size: 128, offset: 8768)
!1513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !1514)
!1514 = !{!1515}
!1515 = !DISubrange(count: 16)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !990, file: !991, line: 945, baseType: !1517, size: 64, offset: 8896)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !991, line: 49, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !990, file: !991, line: 956, baseType: !1520, size: 64, offset: 8960)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !991, line: 45, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !990, file: !991, line: 959, baseType: !1523, size: 64, offset: 9024)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !991, line: 959, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !990, file: !991, line: 962, baseType: !1526, size: 64, offset: 9088)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !991, line: 66, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !990, file: !991, line: 966, baseType: !1529, size: 64, offset: 9152)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !991, line: 50, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !990, file: !991, line: 969, baseType: !1532, size: 64, offset: 9216)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1534, line: 82, size: 7296, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1535 = !{!1536, !1537, !1538, !1539, !1540, !1541, !1542, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1571, !1580, !1581, !1583, !1584, !1585, !1588, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1618, !1619, !1626, !1627, !1628, !1629, !1630, !1631}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1533, file: !1534, line: 83, baseType: !1003, size: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1533, file: !1534, line: 84, baseType: !626, size: 32, offset: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1533, file: !1534, line: 85, baseType: !6, size: 32, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1533, file: !1534, line: 86, baseType: !211, size: 128, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1533, file: !1534, line: 88, baseType: !1262, size: 128, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1533, file: !1534, line: 91, baseType: !989, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1533, file: !1534, line: 94, baseType: !1543, size: 192, offset: 448)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1544, line: 30, size: 192, elements: !1545)
!1544 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1543, file: !1544, line: 31, baseType: !211, size: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1543, file: !1544, line: 32, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1549, line: 25, baseType: !1550)
!1549 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1549, line: 23, size: 64, elements: !1551)
!1551 = !{!1552}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1550, file: !1549, line: 24, baseType: !36, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1533, file: !1534, line: 97, baseType: !511, size: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1533, file: !1534, line: 100, baseType: !6, size: 32, offset: 704)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1533, file: !1534, line: 106, baseType: !6, size: 32, offset: 736)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1533, file: !1534, line: 107, baseType: !989, size: 64, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1533, file: !1534, line: 110, baseType: !6, size: 32, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1533, file: !1534, line: 111, baseType: !56, size: 32, offset: 864)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1533, file: !1534, line: 122, baseType: !56, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1533, file: !1534, line: 123, baseType: !56, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1533, file: !1534, line: 128, baseType: !6, size: 32, offset: 928)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1533, file: !1534, line: 129, baseType: !211, size: 128, offset: 960)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1533, file: !1534, line: 132, baseType: !1065, size: 512, offset: 1088)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1533, file: !1534, line: 133, baseType: !1074, size: 64, offset: 1600)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1533, file: !1534, line: 140, baseType: !1566, size: 256, offset: 1664)
!1566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1567, size: 256, elements: !52)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1534, line: 38, size: 128, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1567, file: !1534, line: 39, baseType: !287, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1567, file: !1534, line: 40, baseType: !287, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1533, file: !1534, line: 146, baseType: !1572, size: 192, offset: 1920)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1534, line: 66, size: 192, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1572, file: !1534, line: 67, baseType: !1575, size: 192)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1534, line: 47, size: 192, elements: !1576)
!1576 = !{!1577, !1578, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1575, file: !1534, line: 48, baseType: !186, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1575, file: !1534, line: 49, baseType: !186, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1575, file: !1534, line: 50, baseType: !186, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1533, file: !1534, line: 150, baseType: !1311, size: 640, offset: 2112)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1533, file: !1534, line: 153, baseType: !1582, size: 256, offset: 2752)
!1582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, size: 256, elements: !952)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1533, file: !1534, line: 159, baseType: !1251, size: 64, offset: 3008)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1533, file: !1534, line: 162, baseType: !6, size: 32, offset: 3072)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1533, file: !1534, line: 164, baseType: !1586, size: 64, offset: 3136)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1534, line: 164, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1533, file: !1534, line: 175, baseType: !1589, size: 32, offset: 3200)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !257, line: 805, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 798, size: 32, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1590, file: !257, line: 803, baseType: !256, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1590, file: !257, line: 804, baseType: !195, offset: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1533, file: !1534, line: 176, baseType: !287, size: 64, offset: 3264)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1533, file: !1534, line: 176, baseType: !287, size: 64, offset: 3328)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1533, file: !1534, line: 176, baseType: !287, size: 64, offset: 3392)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1533, file: !1534, line: 176, baseType: !287, size: 64, offset: 3456)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1533, file: !1534, line: 177, baseType: !287, size: 64, offset: 3520)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1533, file: !1534, line: 178, baseType: !287, size: 64, offset: 3584)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1533, file: !1534, line: 179, baseType: !1299, size: 128, offset: 3648)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1533, file: !1534, line: 180, baseType: !37, size: 64, offset: 3776)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1533, file: !1534, line: 180, baseType: !37, size: 64, offset: 3840)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1533, file: !1534, line: 180, baseType: !37, size: 64, offset: 3904)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1533, file: !1534, line: 180, baseType: !37, size: 64, offset: 3968)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1533, file: !1534, line: 181, baseType: !37, size: 64, offset: 4032)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1533, file: !1534, line: 181, baseType: !37, size: 64, offset: 4096)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1533, file: !1534, line: 181, baseType: !37, size: 64, offset: 4160)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1533, file: !1534, line: 181, baseType: !37, size: 64, offset: 4224)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1533, file: !1534, line: 182, baseType: !37, size: 64, offset: 4288)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1533, file: !1534, line: 182, baseType: !37, size: 64, offset: 4352)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1533, file: !1534, line: 182, baseType: !37, size: 64, offset: 4416)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1533, file: !1534, line: 182, baseType: !37, size: 64, offset: 4480)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1533, file: !1534, line: 183, baseType: !37, size: 64, offset: 4544)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1533, file: !1534, line: 183, baseType: !37, size: 64, offset: 4608)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1533, file: !1534, line: 184, baseType: !1616, offset: 4672)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1617, line: 12, elements: !209)
!1617 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1533, file: !1534, line: 192, baseType: !289, size: 64, offset: 4672)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1533, file: !1534, line: 203, baseType: !1620, size: 2048, offset: 4736)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1621, size: 2048, elements: !1514)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1622, line: 43, size: 128, elements: !1623)
!1622 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1621, file: !1622, line: 44, baseType: !450, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1621, file: !1622, line: 45, baseType: !450, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1533, file: !1534, line: 220, baseType: !358, size: 8, offset: 6784)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1533, file: !1534, line: 221, baseType: !99, size: 16, offset: 6800)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1533, file: !1534, line: 222, baseType: !99, size: 16, offset: 6816)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1533, file: !1534, line: 224, baseType: !851, size: 64, offset: 6848)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1533, file: !1534, line: 227, baseType: !180, size: 192, offset: 6912)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1533, file: !1534, line: 233, baseType: !180, size: 192, offset: 7104)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !990, file: !991, line: 970, baseType: !1633, size: 64, offset: 9280)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1534, line: 20, size: 16576, elements: !1635)
!1635 = !{!1636, !1637, !1638, !1639}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1634, file: !1534, line: 21, baseType: !195)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1634, file: !1534, line: 22, baseType: !1003, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1634, file: !1534, line: 23, baseType: !1262, size: 128, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1634, file: !1534, line: 24, baseType: !1640, size: 16384, offset: 192)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1641, size: 16384, elements: !1661)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1544, line: 49, size: 256, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1641, file: !1544, line: 50, baseType: !1644, size: 256)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1544, line: 35, size: 256, elements: !1645)
!1645 = !{!1646, !1653, !1654, !1660}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1644, file: !1544, line: 37, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1648, line: 19, baseType: !1649)
!1648 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1648, line: 18, baseType: !1651)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !6}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1644, file: !1544, line: 38, baseType: !37, size: 64, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1644, file: !1544, line: 44, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1648, line: 22, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1648, line: 21, baseType: !1658)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1644, file: !1544, line: 46, baseType: !1548, size: 64, offset: 192)
!1661 = !{!1662}
!1662 = !DISubrange(count: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !990, file: !991, line: 971, baseType: !1548, size: 64, offset: 9344)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !990, file: !991, line: 972, baseType: !1548, size: 64, offset: 9408)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !990, file: !991, line: 974, baseType: !1548, size: 64, offset: 9472)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !990, file: !991, line: 975, baseType: !1543, size: 192, offset: 9536)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !990, file: !991, line: 976, baseType: !37, size: 64, offset: 9728)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !990, file: !991, line: 977, baseType: !448, size: 64, offset: 9792)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !990, file: !991, line: 978, baseType: !56, size: 32, offset: 9856)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !990, file: !991, line: 980, baseType: !237, size: 64, offset: 9920)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !990, file: !991, line: 989, baseType: !1672, size: 128, offset: 9984)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1673, line: 35, size: 128, elements: !1674)
!1673 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1672, file: !1673, line: 36, baseType: !6, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1672, file: !1673, line: 37, baseType: !626, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1672, file: !1673, line: 38, baseType: !1678, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1673, line: 23, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !990, file: !991, line: 992, baseType: !287, size: 64, offset: 10112)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !990, file: !991, line: 993, baseType: !287, size: 64, offset: 10176)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !990, file: !991, line: 996, baseType: !195, offset: 10240)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !990, file: !991, line: 999, baseType: !652, offset: 10240)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !990, file: !991, line: 1001, baseType: !1685, size: 64, offset: 10240)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !991, line: 636, size: 64, elements: !1686)
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1685, file: !991, line: 637, baseType: !1688, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !990, file: !991, line: 1005, baseType: !631, size: 128, offset: 10304)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !990, file: !991, line: 1007, baseType: !989, size: 64, offset: 10432)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !990, file: !991, line: 1009, baseType: !1692, size: 64, offset: 10496)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !991, line: 1009, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !990, file: !991, line: 1043, baseType: !12, size: 64, offset: 10560)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !990, file: !991, line: 1046, baseType: !1696, size: 64, offset: 10624)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !991, line: 41, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !990, file: !991, line: 1050, baseType: !1699, size: 64, offset: 10688)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !991, line: 42, flags: DIFlagFwdDecl)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !990, file: !991, line: 1054, baseType: !1702, size: 64, offset: 10752)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !991, line: 55, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !990, file: !991, line: 1056, baseType: !1705, size: 64, offset: 10816)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !991, line: 40, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !990, file: !991, line: 1058, baseType: !1708, size: 64, offset: 10880)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1710, line: 99, size: 704, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717, !1718, !1737, !1738}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1709, file: !1710, line: 100, baseType: !184, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1709, file: !1710, line: 101, baseType: !626, size: 32, offset: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1709, file: !1710, line: 102, baseType: !626, size: 32, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1709, file: !1710, line: 105, baseType: !195, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1709, file: !1710, line: 107, baseType: !31, size: 16, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1709, file: !1710, line: 109, baseType: !617, size: 128, offset: 192)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1709, file: !1710, line: 110, baseType: !1719, size: 64, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1710, line: 73, size: 448, elements: !1721)
!1721 = !{!1722, !1725, !1726, !1731, !1736}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1720, file: !1710, line: 74, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1710, line: 74, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1720, file: !1710, line: 75, baseType: !1708, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !1710, line: 83, baseType: !1727, size: 128, offset: 128)
!1727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !1710, line: 83, size: 128, elements: !1728)
!1728 = !{!1729, !1730}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1727, file: !1710, line: 84, baseType: !211, size: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1727, file: !1710, line: 85, baseType: !812, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1720, file: !1710, line: 87, baseType: !1732, size: 128, offset: 256)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1720, file: !1710, line: 87, size: 128, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1732, file: !1710, line: 88, baseType: !515, size: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1732, file: !1710, line: 89, baseType: !234, size: 128, align: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1720, file: !1710, line: 92, baseType: !56, size: 32, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1709, file: !1710, line: 111, baseType: !511, size: 64, offset: 384)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1709, file: !1710, line: 113, baseType: !1739, size: 256, offset: 448)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1740, line: 102, size: 256, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1739, file: !1740, line: 103, baseType: !184, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1739, file: !1740, line: 104, baseType: !211, size: 128, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1739, file: !1740, line: 105, baseType: !1745, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1740, line: 21, baseType: !1746)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !990, file: !991, line: 1061, baseType: !1751, size: 64, offset: 10944)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !991, line: 43, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !990, file: !991, line: 1064, baseType: !37, size: 64, offset: 11008)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !990, file: !991, line: 1065, baseType: !1755, size: 64, offset: 11072)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1544, line: 14, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1544, line: 12, size: 384, elements: !1758)
!1758 = !{!1759}
!1759 = !DIDerivedType(tag: DW_TAG_member, scope: !1757, file: !1544, line: 13, baseType: !1760, size: 384)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1757, file: !1544, line: 13, size: 384, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1760, file: !1544, line: 13, baseType: !6, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1760, file: !1544, line: 13, baseType: !6, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1760, file: !1544, line: 13, baseType: !6, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1760, file: !1544, line: 13, baseType: !1766, size: 256, offset: 128)
!1766 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1767, line: 32, size: 256, elements: !1768)
!1767 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1768 = !{!1769, !1774, !1787, !1793, !1802, !1822, !1827}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1766, file: !1767, line: 37, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !1767, line: 34, size: 64, elements: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1770, file: !1767, line: 35, baseType: !1240, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1770, file: !1767, line: 36, baseType: !307, size: 32, offset: 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1766, file: !1767, line: 45, baseType: !1775, size: 192)
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !1767, line: 40, size: 192, elements: !1776)
!1776 = !{!1777, !1779, !1780, !1786}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1775, file: !1767, line: 41, baseType: !1778, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !308, line: 95, baseType: !6)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1775, file: !1767, line: 42, baseType: !6, size: 32, offset: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1775, file: !1767, line: 43, baseType: !1781, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1767, line: 11, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1767, line: 8, size: 64, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1782, file: !1767, line: 9, baseType: !6, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1782, file: !1767, line: 10, baseType: !12, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1775, file: !1767, line: 44, baseType: !6, size: 32, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1766, file: !1767, line: 52, baseType: !1788, size: 128)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !1767, line: 48, size: 128, elements: !1789)
!1789 = !{!1790, !1791, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1788, file: !1767, line: 49, baseType: !1240, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1788, file: !1767, line: 50, baseType: !307, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1788, file: !1767, line: 51, baseType: !1781, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1766, file: !1767, line: 61, baseType: !1794, size: 256)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !1767, line: 55, size: 256, elements: !1795)
!1795 = !{!1796, !1797, !1798, !1799, !1801}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1794, file: !1767, line: 56, baseType: !1240, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1794, file: !1767, line: 57, baseType: !307, size: 32, offset: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1794, file: !1767, line: 58, baseType: !6, size: 32, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1794, file: !1767, line: 59, baseType: !1800, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !308, line: 94, baseType: !447)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1794, file: !1767, line: 60, baseType: !1800, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1766, file: !1767, line: 95, baseType: !1803, size: 256)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !1767, line: 64, size: 256, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1803, file: !1767, line: 65, baseType: !12, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !1767, line: 77, baseType: !1807, size: 192, offset: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1803, file: !1767, line: 77, size: 192, elements: !1808)
!1808 = !{!1809, !1810, !1817}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1807, file: !1767, line: 82, baseType: !99, size: 16)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1807, file: !1767, line: 88, baseType: !1811, size: 192)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1807, file: !1767, line: 84, size: 192, elements: !1812)
!1812 = !{!1813, !1815, !1816}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1811, file: !1767, line: 85, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 64, elements: !1108)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1811, file: !1767, line: 86, baseType: !12, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1811, file: !1767, line: 87, baseType: !12, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1807, file: !1767, line: 93, baseType: !1818, size: 96)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1807, file: !1767, line: 90, size: 96, elements: !1819)
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1818, file: !1767, line: 91, baseType: !1814, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1818, file: !1767, line: 92, baseType: !74, size: 32, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1766, file: !1767, line: 101, baseType: !1823, size: 128)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !1767, line: 98, size: 128, elements: !1824)
!1824 = !{!1825, !1826}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1823, file: !1767, line: 99, baseType: !408, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1823, file: !1767, line: 100, baseType: !6, size: 32, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1766, file: !1767, line: 108, baseType: !1828, size: 128)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !1767, line: 104, size: 128, elements: !1829)
!1829 = !{!1830, !1831, !1832}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1828, file: !1767, line: 105, baseType: !12, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1828, file: !1767, line: 106, baseType: !6, size: 32, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1828, file: !1767, line: 107, baseType: !56, size: 32, offset: 96)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !990, file: !991, line: 1067, baseType: !1616, offset: 11136)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !990, file: !991, line: 1099, baseType: !1835, size: 64, offset: 11136)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !991, line: 56, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !990, file: !991, line: 1103, baseType: !211, size: 128, offset: 11200)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !990, file: !991, line: 1104, baseType: !1839, size: 64, offset: 11328)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !991, line: 46, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !990, file: !991, line: 1105, baseType: !180, size: 192, offset: 11392)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !990, file: !991, line: 1106, baseType: !56, size: 32, offset: 11584)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !990, file: !991, line: 1109, baseType: !1844, size: 128, offset: 11648)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1845, size: 128, elements: !52)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !991, line: 51, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !990, file: !991, line: 1110, baseType: !180, size: 192, offset: 11776)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !990, file: !991, line: 1111, baseType: !211, size: 128, offset: 11968)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !990, file: !991, line: 1173, baseType: !1850, size: 64, offset: 12096)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1852, line: 62, size: 256, align: 256, elements: !1853)
!1852 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1853 = !{!1854, !1855, !1856, !1861}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1851, file: !1852, line: 75, baseType: !74, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1851, file: !1852, line: 90, baseType: !74, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1851, file: !1852, line: 124, baseType: !1857, size: 64, offset: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1851, file: !1852, line: 109, size: 64, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1857, file: !1852, line: 110, baseType: !288, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1857, file: !1852, line: 112, baseType: !288, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1851, file: !1852, line: 144, baseType: !74, size: 32, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !990, file: !991, line: 1174, baseType: !284, size: 32, offset: 12160)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !990, file: !991, line: 1179, baseType: !37, size: 64, offset: 12224)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !990, file: !991, line: 1182, baseType: !1865, size: 128, offset: 12288)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !948, line: 76, size: 128, elements: !1866)
!1866 = !{!1867, !1872, !1873}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1865, file: !948, line: 85, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1869, line: 7, size: 64, elements: !1870)
!1869 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1868, file: !1869, line: 12, baseType: !1144, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1865, file: !948, line: 88, baseType: !358, size: 8, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1865, file: !948, line: 95, baseType: !358, size: 8, offset: 72)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !991, line: 1184, baseType: !1875, size: 128, offset: 12416)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !990, file: !991, line: 1184, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1875, file: !991, line: 1185, baseType: !1003, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1875, file: !991, line: 1186, baseType: !234, size: 128, align: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !990, file: !991, line: 1190, baseType: !1880, size: 64, offset: 12544)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !991, line: 53, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !990, file: !991, line: 1192, baseType: !1883, size: 128, offset: 12608)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !948, line: 64, size: 128, elements: !1884)
!1884 = !{!1885, !1886, !1887}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1883, file: !948, line: 65, baseType: !599, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1883, file: !948, line: 67, baseType: !74, size: 32, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1883, file: !948, line: 68, baseType: !74, size: 32, offset: 96)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !990, file: !991, line: 1206, baseType: !6, size: 32, offset: 12736)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !990, file: !991, line: 1207, baseType: !6, size: 32, offset: 12768)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !990, file: !991, line: 1209, baseType: !37, size: 64, offset: 12800)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !990, file: !991, line: 1219, baseType: !287, size: 64, offset: 12864)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !990, file: !991, line: 1220, baseType: !287, size: 64, offset: 12928)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !990, file: !991, line: 1317, baseType: !6, size: 32, offset: 12992)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !990, file: !991, line: 1319, baseType: !989, size: 64, offset: 13056)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !990, file: !991, line: 1322, baseType: !1896, size: 64, offset: 13120)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !991, line: 1322, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !990, file: !991, line: 1326, baseType: !1003, size: 32, offset: 13184)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !990, file: !991, line: 1342, baseType: !12, size: 64, offset: 13248)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !990, file: !991, line: 1343, baseType: !288, size: 64, offset: 13312)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !990, file: !991, line: 1344, baseType: !287, size: 64, offset: 13376)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !990, file: !991, line: 1345, baseType: !288, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !990, file: !991, line: 1346, baseType: !288, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !990, file: !991, line: 1347, baseType: !288, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !990, file: !991, line: 1348, baseType: !234, size: 128, align: 64, offset: 13504)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !990, file: !991, line: 1358, baseType: !1907, size: 34816, offset: 13824)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1908, line: 485, size: 34816, elements: !1909)
!1908 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1909 = !{!1910, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1939, !1940, !1941, !1942, !1943, !1944, !1947, !1948, !1949}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1907, file: !1908, line: 487, baseType: !1911, size: 192)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1912, size: 192, elements: !527)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1913, line: 16, size: 64, elements: !1914)
!1913 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1912, file: !1913, line: 17, baseType: !170, size: 16)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1912, file: !1913, line: 18, baseType: !170, size: 16, offset: 16)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1912, file: !1913, line: 19, baseType: !170, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1912, file: !1913, line: 19, baseType: !170, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1912, file: !1913, line: 19, baseType: !170, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1912, file: !1913, line: 19, baseType: !170, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1912, file: !1913, line: 19, baseType: !170, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1912, file: !1913, line: 20, baseType: !170, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1912, file: !1913, line: 20, baseType: !170, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1912, file: !1913, line: 20, baseType: !170, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1912, file: !1913, line: 20, baseType: !170, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1912, file: !1913, line: 20, baseType: !170, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1912, file: !1913, line: 20, baseType: !170, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1907, file: !1908, line: 491, baseType: !37, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1907, file: !1908, line: 495, baseType: !31, size: 16, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1907, file: !1908, line: 496, baseType: !31, size: 16, offset: 272)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1907, file: !1908, line: 497, baseType: !31, size: 16, offset: 288)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1907, file: !1908, line: 498, baseType: !31, size: 16, offset: 304)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1907, file: !1908, line: 502, baseType: !37, size: 64, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1907, file: !1908, line: 503, baseType: !37, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1907, file: !1908, line: 514, baseType: !1936, size: 256, offset: 448)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1937, size: 256, elements: !952)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1908, line: 483, flags: DIFlagFwdDecl)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1907, file: !1908, line: 516, baseType: !37, size: 64, offset: 704)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1907, file: !1908, line: 518, baseType: !37, size: 64, offset: 768)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1907, file: !1908, line: 520, baseType: !37, size: 64, offset: 832)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1907, file: !1908, line: 521, baseType: !37, size: 64, offset: 896)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1907, file: !1908, line: 522, baseType: !37, size: 64, offset: 960)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1907, file: !1908, line: 528, baseType: !1945, size: 64, offset: 1024)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1908, line: 10, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1907, file: !1908, line: 535, baseType: !37, size: 64, offset: 1088)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1907, file: !1908, line: 537, baseType: !56, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1907, file: !1908, line: 540, baseType: !1950, size: 33280, offset: 1536)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1951, line: 317, size: 33280, elements: !1952)
!1951 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1952 = !{!1953, !1954, !1955}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1950, file: !1951, line: 330, baseType: !56, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1950, file: !1951, line: 337, baseType: !37, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1950, file: !1951, line: 348, baseType: !1956, size: 32768, offset: 512)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1951, line: 304, size: 32768, elements: !1957)
!1957 = !{!1958, !1973, !2008, !2058, !2071}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1956, file: !1951, line: 305, baseType: !1959, size: 896)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1951, line: 12, size: 896, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1972}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1959, file: !1951, line: 13, baseType: !284, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1959, file: !1951, line: 14, baseType: !284, size: 32, offset: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1959, file: !1951, line: 15, baseType: !284, size: 32, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1959, file: !1951, line: 16, baseType: !284, size: 32, offset: 96)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1959, file: !1951, line: 17, baseType: !284, size: 32, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1959, file: !1951, line: 18, baseType: !284, size: 32, offset: 160)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1959, file: !1951, line: 19, baseType: !284, size: 32, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1959, file: !1951, line: 22, baseType: !1969, size: 640, offset: 224)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 640, elements: !1970)
!1970 = !{!1971}
!1971 = !DISubrange(count: 20)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1959, file: !1951, line: 25, baseType: !284, size: 32, offset: 864)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1956, file: !1951, line: 306, baseType: !1974, size: 4096, align: 128)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1951, line: 34, size: 4096, align: 128, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979, !1980, !1995, !1996, !1997, !1999, !2001, !2003}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1974, file: !1951, line: 35, baseType: !170, size: 16)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1974, file: !1951, line: 36, baseType: !170, size: 16, offset: 16)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1974, file: !1951, line: 37, baseType: !170, size: 16, offset: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1974, file: !1951, line: 38, baseType: !170, size: 16, offset: 48)
!1980 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !1951, line: 39, baseType: !1981, size: 128, offset: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1974, file: !1951, line: 39, size: 128, elements: !1982)
!1982 = !{!1983, !1988}
!1983 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !1951, line: 40, baseType: !1984, size: 128)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1951, line: 40, size: 128, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1984, file: !1951, line: 41, baseType: !287, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1984, file: !1951, line: 42, baseType: !287, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !1951, line: 44, baseType: !1989, size: 128)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1951, line: 44, size: 128, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1989, file: !1951, line: 45, baseType: !284, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1989, file: !1951, line: 46, baseType: !284, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1989, file: !1951, line: 47, baseType: !284, size: 32, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1989, file: !1951, line: 48, baseType: !284, size: 32, offset: 96)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1974, file: !1951, line: 51, baseType: !284, size: 32, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1974, file: !1951, line: 52, baseType: !284, size: 32, offset: 224)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1974, file: !1951, line: 55, baseType: !1998, size: 1024, offset: 256)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 1024, elements: !77)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1974, file: !1951, line: 58, baseType: !2000, size: 2048, offset: 1280)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 2048, elements: !1661)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1974, file: !1951, line: 60, baseType: !2002, size: 384, offset: 3328)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 384, elements: !43)
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !1974, file: !1951, line: 62, baseType: !2004, size: 384, offset: 3712)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1974, file: !1951, line: 62, size: 384, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2004, file: !1951, line: 63, baseType: !2002, size: 384)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2004, file: !1951, line: 64, baseType: !2002, size: 384)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1956, file: !1951, line: 307, baseType: !2009, size: 1088)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1951, line: 79, size: 1088, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2057}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2009, file: !1951, line: 80, baseType: !284, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2009, file: !1951, line: 81, baseType: !284, size: 32, offset: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2009, file: !1951, line: 82, baseType: !284, size: 32, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2009, file: !1951, line: 83, baseType: !284, size: 32, offset: 96)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2009, file: !1951, line: 84, baseType: !284, size: 32, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2009, file: !1951, line: 85, baseType: !284, size: 32, offset: 160)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2009, file: !1951, line: 86, baseType: !284, size: 32, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2009, file: !1951, line: 88, baseType: !1969, size: 640, offset: 224)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2009, file: !1951, line: 89, baseType: !1130, size: 8, offset: 864)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2009, file: !1951, line: 90, baseType: !1130, size: 8, offset: 872)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2009, file: !1951, line: 91, baseType: !1130, size: 8, offset: 880)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2009, file: !1951, line: 92, baseType: !1130, size: 8, offset: 888)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2009, file: !1951, line: 93, baseType: !1130, size: 8, offset: 896)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2009, file: !1951, line: 94, baseType: !1130, size: 8, offset: 904)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2009, file: !1951, line: 95, baseType: !2026, size: 64, offset: 960)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2028, line: 11, size: 128, elements: !2029)
!2028 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2027, file: !2028, line: 12, baseType: !408, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2027, file: !2028, line: 13, baseType: !2032, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2034, line: 56, size: 1344, elements: !2035)
!2034 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2033, file: !2034, line: 61, baseType: !37, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2033, file: !2034, line: 62, baseType: !37, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2033, file: !2034, line: 63, baseType: !37, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2033, file: !2034, line: 64, baseType: !37, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2033, file: !2034, line: 65, baseType: !37, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2033, file: !2034, line: 66, baseType: !37, size: 64, offset: 320)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2033, file: !2034, line: 68, baseType: !37, size: 64, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2033, file: !2034, line: 69, baseType: !37, size: 64, offset: 448)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2033, file: !2034, line: 70, baseType: !37, size: 64, offset: 512)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2033, file: !2034, line: 71, baseType: !37, size: 64, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2033, file: !2034, line: 72, baseType: !37, size: 64, offset: 640)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2033, file: !2034, line: 73, baseType: !37, size: 64, offset: 704)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2033, file: !2034, line: 74, baseType: !37, size: 64, offset: 768)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2033, file: !2034, line: 75, baseType: !37, size: 64, offset: 832)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2033, file: !2034, line: 76, baseType: !37, size: 64, offset: 896)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2033, file: !2034, line: 81, baseType: !37, size: 64, offset: 960)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2033, file: !2034, line: 83, baseType: !37, size: 64, offset: 1024)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2033, file: !2034, line: 84, baseType: !37, size: 64, offset: 1088)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2033, file: !2034, line: 85, baseType: !37, size: 64, offset: 1152)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2033, file: !2034, line: 86, baseType: !37, size: 64, offset: 1216)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2033, file: !2034, line: 87, baseType: !37, size: 64, offset: 1280)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2009, file: !1951, line: 96, baseType: !284, size: 32, offset: 1024)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1956, file: !1951, line: 308, baseType: !2059, size: 4608, align: 512)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1951, line: 289, size: 4608, align: 512, elements: !2060)
!2060 = !{!2061, !2062, !2069}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2059, file: !1951, line: 290, baseType: !1974, size: 4096, align: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2059, file: !1951, line: 291, baseType: !2063, size: 512, offset: 4096)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1951, line: 268, size: 512, elements: !2064)
!2064 = !{!2065, !2066, !2067}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2063, file: !1951, line: 269, baseType: !287, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2063, file: !1951, line: 270, baseType: !287, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2063, file: !1951, line: 271, baseType: !2068, size: 384, offset: 128)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 384, elements: !1404)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2059, file: !1951, line: 292, baseType: !2070, offset: 4608)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, elements: !1502)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1956, file: !1951, line: 309, baseType: !2072, size: 32768)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 32768, elements: !2073)
!2073 = !{!2074}
!2074 = !DISubrange(count: 4096)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !986, file: !601, line: 378, baseType: !2076, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !982, file: !601, line: 384, baseType: !1283, size: 192, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !855, file: !601, line: 500, baseType: !195, offset: 6656)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !855, file: !601, line: 501, baseType: !2080, size: 64, offset: 6656)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !601, line: 387, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !855, file: !601, line: 516, baseType: !1492, size: 64, offset: 6720)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !855, file: !601, line: 519, baseType: !220, size: 64, offset: 6784)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !855, file: !601, line: 521, baseType: !2085, size: 64, offset: 6848)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !601, line: 521, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !855, file: !601, line: 545, baseType: !626, size: 32, offset: 6912)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !855, file: !601, line: 548, baseType: !358, size: 8, offset: 6944)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !855, file: !601, line: 550, baseType: !2090, offset: 6952)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2091, line: 142, elements: !209)
!2091 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !855, file: !601, line: 554, baseType: !1739, size: 256, offset: 6976)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !855, file: !601, line: 557, baseType: !284, size: 32, offset: 7232)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !852, file: !601, line: 565, baseType: !2095, offset: 7296)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, elements: !2096)
!2096 = !{!2097}
!2097 = !DISubrange(count: -1)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !848, file: !601, line: 151, baseType: !626, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !841, file: !601, line: 156, baseType: !195, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !605, file: !601, line: 159, baseType: !2101, size: 128)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !605, file: !601, line: 159, size: 128, elements: !2102)
!2102 = !{!2103, !2106}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2101, file: !601, line: 161, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !601, line: 161, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2101, file: !601, line: 162, baseType: !12, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !605, file: !601, line: 176, baseType: !234, size: 128, align: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !601, line: 179, baseType: !2109, size: 32, offset: 384)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !601, line: 179, size: 32, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2114}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2109, file: !601, line: 184, baseType: !626, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2109, file: !601, line: 192, baseType: !56, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2109, file: !601, line: 194, baseType: !56, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2109, file: !601, line: 195, baseType: !6, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !600, file: !601, line: 199, baseType: !626, size: 32, offset: 416)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !535, file: !222, line: 1964, baseType: !2117, size: 64, offset: 1344)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!408, !472, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2122, line: 12, size: 256, elements: !2123)
!2122 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2123 = !{!2124, !2125, !2126, !2127, !2128}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2121, file: !2122, line: 13, baseType: !622, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2121, file: !2122, line: 16, baseType: !6, size: 32, offset: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2121, file: !2122, line: 23, baseType: !37, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2121, file: !2122, line: 30, baseType: !37, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2121, file: !2122, line: 33, baseType: !2129, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !601, line: 27, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !535, file: !222, line: 1966, baseType: !2117, size: 64, offset: 1408)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !473, file: !222, line: 1424, baseType: !2133, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2136, line: 322, size: 704, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!2137 = !{!2138, !2189, !2193, !2197, !2198, !2199, !2200, !2201, !2206, !2211, !2215}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2135, file: !2136, line: 323, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!6, !2142}
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2136, line: 294, size: 1600, elements: !2144)
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2174, !2175, !2176}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2143, file: !2136, line: 295, baseType: !515, size: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2143, file: !2136, line: 296, baseType: !211, size: 128, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2143, file: !2136, line: 297, baseType: !211, size: 128, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2143, file: !2136, line: 298, baseType: !211, size: 128, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2143, file: !2136, line: 299, baseType: !180, size: 192, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2143, file: !2136, line: 300, baseType: !195, offset: 704)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2143, file: !2136, line: 301, baseType: !626, size: 32, offset: 704)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2143, file: !2136, line: 302, baseType: !472, size: 64, offset: 768)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2143, file: !2136, line: 303, baseType: !2154, size: 64, offset: 832)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2136, line: 68, size: 64, elements: !2155)
!2155 = !{!2156, !2168}
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !2136, line: 69, baseType: !2157, size: 32)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2154, file: !2136, line: 69, size: 32, elements: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2157, file: !2136, line: 70, baseType: !301, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2157, file: !2136, line: 71, baseType: !310, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2157, file: !2136, line: 72, baseType: !2162, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2163, line: 24, baseType: !2164)
!2163 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2163, line: 22, size: 32, elements: !2165)
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2164, file: !2163, line: 23, baseType: !2167, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2163, line: 20, baseType: !307)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2154, file: !2136, line: 74, baseType: !2169, size: 32, offset: 32)
!2169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2136, line: 54, baseType: !56, size: 32, elements: !2170)
!2170 = !{!2171, !2172, !2173}
!2171 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!2172 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!2173 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2143, file: !2136, line: 304, baseType: !399, size: 64, offset: 896)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2143, file: !2136, line: 305, baseType: !37, size: 64, offset: 960)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2143, file: !2136, line: 306, baseType: !2177, size: 576, offset: 1024)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2136, line: 205, size: 576, elements: !2178)
!2178 = !{!2179, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2177, file: !2136, line: 206, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2136, line: 66, baseType: !193)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2177, file: !2136, line: 207, baseType: !2180, size: 64, offset: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2177, file: !2136, line: 208, baseType: !2180, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2177, file: !2136, line: 209, baseType: !2180, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2177, file: !2136, line: 210, baseType: !2180, size: 64, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2177, file: !2136, line: 211, baseType: !2180, size: 64, offset: 320)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2177, file: !2136, line: 212, baseType: !2180, size: 64, offset: 384)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2177, file: !2136, line: 213, baseType: !406, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2177, file: !2136, line: 214, baseType: !406, size: 64, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2135, file: !2136, line: 324, baseType: !2190, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!2142, !472, !6}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2135, file: !2136, line: 325, baseType: !2194, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{null, !2142}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2135, file: !2136, line: 326, baseType: !2139, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2135, file: !2136, line: 327, baseType: !2139, size: 64, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2135, file: !2136, line: 328, baseType: !2139, size: 64, offset: 320)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2135, file: !2136, line: 329, baseType: !563, size: 64, offset: 384)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2135, file: !2136, line: 332, baseType: !2202, size: 64, offset: 448)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!2205, !294}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2135, file: !2136, line: 333, baseType: !2207, size: 64, offset: 512)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!6, !294, !2210}
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2135, file: !2136, line: 335, baseType: !2212, size: 64, offset: 576)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!6, !294, !2205}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2135, file: !2136, line: 337, baseType: !2216, size: 64, offset: 640)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!6, !472, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !473, file: !222, line: 1425, baseType: !2221, size: 64, offset: 512)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2136, line: 428, size: 704, elements: !2224)
!2224 = !{!2225, !2229, !2230, !2234, !2235, !2236, !2251, !2274, !2278, !2279, !2302}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2223, file: !2136, line: 429, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!6, !472, !6, !6, !416}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2223, file: !2136, line: 430, baseType: !563, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2223, file: !2136, line: 431, baseType: !2231, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!6, !472, !56}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2223, file: !2136, line: 432, baseType: !2231, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2223, file: !2136, line: 433, baseType: !563, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2223, file: !2136, line: 434, baseType: !2237, size: 64, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!6, !472, !6, !2240}
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2136, line: 415, size: 256, elements: !2242)
!2242 = !{!2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2241, file: !2136, line: 416, baseType: !6, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2241, file: !2136, line: 417, baseType: !56, size: 32, offset: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2241, file: !2136, line: 418, baseType: !56, size: 32, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2241, file: !2136, line: 420, baseType: !56, size: 32, offset: 96)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2241, file: !2136, line: 421, baseType: !56, size: 32, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2241, file: !2136, line: 422, baseType: !56, size: 32, offset: 160)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2241, file: !2136, line: 423, baseType: !56, size: 32, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2241, file: !2136, line: 424, baseType: !56, size: 32, offset: 224)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2223, file: !2136, line: 435, baseType: !2252, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!6, !472, !2154, !2255}
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2136, line: 343, size: 960, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2256, file: !2136, line: 344, baseType: !6, size: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2256, file: !2136, line: 345, baseType: !287, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2256, file: !2136, line: 346, baseType: !287, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2256, file: !2136, line: 347, baseType: !287, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2256, file: !2136, line: 348, baseType: !287, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2256, file: !2136, line: 349, baseType: !287, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2256, file: !2136, line: 350, baseType: !287, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2256, file: !2136, line: 351, baseType: !191, size: 64, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2256, file: !2136, line: 353, baseType: !191, size: 64, offset: 512)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2256, file: !2136, line: 354, baseType: !6, size: 32, offset: 576)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2256, file: !2136, line: 355, baseType: !6, size: 32, offset: 608)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2256, file: !2136, line: 356, baseType: !287, size: 64, offset: 640)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2256, file: !2136, line: 357, baseType: !287, size: 64, offset: 704)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2256, file: !2136, line: 358, baseType: !287, size: 64, offset: 768)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2256, file: !2136, line: 359, baseType: !191, size: 64, offset: 832)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2256, file: !2136, line: 360, baseType: !6, size: 32, offset: 896)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2223, file: !2136, line: 436, baseType: !2275, size: 64, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!6, !472, !2219, !2255}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2223, file: !2136, line: 438, baseType: !2252, size: 64, offset: 512)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2223, file: !2136, line: 439, baseType: !2280, size: 64, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!6, !472, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2136, line: 409, size: 1408, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2284, file: !2136, line: 410, baseType: !56, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2284, file: !2136, line: 411, baseType: !2288, size: 1344, offset: 64)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2289, size: 1344, elements: !527)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2136, line: 395, size: 448, elements: !2290)
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2301}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2289, file: !2136, line: 396, baseType: !56, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2289, file: !2136, line: 397, baseType: !56, size: 32, offset: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2289, file: !2136, line: 399, baseType: !56, size: 32, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2289, file: !2136, line: 400, baseType: !56, size: 32, offset: 96)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2289, file: !2136, line: 401, baseType: !56, size: 32, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2289, file: !2136, line: 402, baseType: !56, size: 32, offset: 160)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2289, file: !2136, line: 403, baseType: !56, size: 32, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2289, file: !2136, line: 404, baseType: !289, size: 64, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2289, file: !2136, line: 405, baseType: !2300, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !187, line: 126, baseType: !287)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2289, file: !2136, line: 406, baseType: !2300, size: 64, offset: 384)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2223, file: !2136, line: 440, baseType: !2231, size: 64, offset: 640)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !473, file: !222, line: 1426, baseType: !2304, size: 64, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2306)
!2306 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !222, line: 49, flags: DIFlagFwdDecl)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !473, file: !222, line: 1427, baseType: !37, size: 64, offset: 640)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !473, file: !222, line: 1428, baseType: !37, size: 64, offset: 704)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !473, file: !222, line: 1429, baseType: !37, size: 64, offset: 768)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !473, file: !222, line: 1430, baseType: !251, size: 64, offset: 832)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !473, file: !222, line: 1431, baseType: !646, size: 256, offset: 896)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !473, file: !222, line: 1432, baseType: !6, size: 32, offset: 1152)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !473, file: !222, line: 1433, baseType: !626, size: 32, offset: 1184)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !473, file: !222, line: 1437, baseType: !2315, size: 64, offset: 1216)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2318)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !222, line: 1437, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !473, file: !222, line: 1449, baseType: !2320, size: 64, offset: 1280)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !267, line: 34, size: 64, elements: !2321)
!2321 = !{!2322}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2320, file: !267, line: 35, baseType: !270, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !473, file: !222, line: 1450, baseType: !211, size: 128, offset: 1344)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !473, file: !222, line: 1451, baseType: !2325, size: 64, offset: 1472)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !222, line: 699, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !473, file: !222, line: 1452, baseType: !1705, size: 64, offset: 1536)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !473, file: !222, line: 1453, baseType: !2329, size: 64, offset: 1600)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !222, line: 1453, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !473, file: !222, line: 1454, baseType: !515, size: 128, offset: 1664)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !473, file: !222, line: 1455, baseType: !56, size: 32, offset: 1792)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !473, file: !222, line: 1456, baseType: !2334, size: 2432, offset: 1856)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2136, line: 518, size: 2432, elements: !2335)
!2335 = !{!2336, !2337, !2338, !2340, !2372}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2334, file: !2136, line: 519, baseType: !56, size: 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2334, file: !2136, line: 520, baseType: !646, size: 256, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2334, file: !2136, line: 521, baseType: !2339, size: 192, offset: 320)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 192, elements: !527)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2334, file: !2136, line: 522, baseType: !2341, size: 1728, offset: 512)
!2341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2342, size: 1728, elements: !527)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2136, line: 222, size: 576, elements: !2343)
!2343 = !{!2344, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2342, file: !2136, line: 223, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2136, line: 443, size: 256, elements: !2347)
!2347 = !{!2348, !2349, !2362, !2363}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2346, file: !2136, line: 444, baseType: !6, size: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2346, file: !2136, line: 445, baseType: !2350, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2352)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2136, line: 310, size: 512, elements: !2353)
!2353 = !{!2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2352, file: !2136, line: 311, baseType: !563, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2352, file: !2136, line: 312, baseType: !563, size: 64, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2352, file: !2136, line: 313, baseType: !563, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2352, file: !2136, line: 314, baseType: !563, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2352, file: !2136, line: 315, baseType: !2139, size: 64, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2352, file: !2136, line: 316, baseType: !2139, size: 64, offset: 320)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2352, file: !2136, line: 317, baseType: !2139, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2352, file: !2136, line: 318, baseType: !2216, size: 64, offset: 448)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2346, file: !2136, line: 446, baseType: !506, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2346, file: !2136, line: 447, baseType: !2345, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2342, file: !2136, line: 224, baseType: !6, size: 32, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2342, file: !2136, line: 226, baseType: !211, size: 128, offset: 128)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2342, file: !2136, line: 227, baseType: !37, size: 64, offset: 256)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2342, file: !2136, line: 228, baseType: !56, size: 32, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2342, file: !2136, line: 229, baseType: !56, size: 32, offset: 352)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2342, file: !2136, line: 230, baseType: !2180, size: 64, offset: 384)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2342, file: !2136, line: 231, baseType: !2180, size: 64, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2342, file: !2136, line: 232, baseType: !12, size: 64, offset: 512)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2334, file: !2136, line: 523, baseType: !2373, size: 192, offset: 2240)
!2373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2350, size: 192, elements: !527)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !473, file: !222, line: 1458, baseType: !2375, size: 2112, offset: 4288)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !222, line: 1410, size: 2112, elements: !2376)
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2375, file: !222, line: 1411, baseType: !6, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2375, file: !222, line: 1412, baseType: !1262, size: 128, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2375, file: !222, line: 1413, baseType: !2380, size: 1920, offset: 192)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2381, size: 1920, elements: !527)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2382, line: 12, size: 640, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2383 = !{!2384, !2392, !2393, !2398, !2399}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2381, file: !2382, line: 13, baseType: !2385, size: 320)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2386, line: 17, size: 320, elements: !2387)
!2386 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2387 = !{!2388, !2389, !2390, !2391}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2385, file: !2386, line: 18, baseType: !6, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2385, file: !2386, line: 19, baseType: !6, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2385, file: !2386, line: 20, baseType: !1262, size: 128, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2385, file: !2386, line: 22, baseType: !234, size: 128, align: 64, offset: 192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2381, file: !2382, line: 14, baseType: !79, size: 64, offset: 320)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2381, file: !2382, line: 15, baseType: !2394, size: 64, offset: 384)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2395, line: 16, size: 64, elements: !2396)
!2395 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2396 = !{!2397}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2394, file: !2395, line: 17, baseType: !989, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2381, file: !2382, line: 16, baseType: !1262, size: 128, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2381, file: !2382, line: 17, baseType: !626, size: 32, offset: 576)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !473, file: !222, line: 1465, baseType: !12, size: 64, offset: 6400)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !473, file: !222, line: 1468, baseType: !284, size: 32, offset: 6464)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !473, file: !222, line: 1470, baseType: !406, size: 64, offset: 6528)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !473, file: !222, line: 1471, baseType: !406, size: 64, offset: 6592)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !473, file: !222, line: 1473, baseType: !74, size: 32, offset: 6656)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !473, file: !222, line: 1474, baseType: !2406, size: 64, offset: 6720)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !222, line: 603, flags: DIFlagFwdDecl)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !473, file: !222, line: 1477, baseType: !2409, size: 256, offset: 6784)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !77)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !473, file: !222, line: 1478, baseType: !2411, size: 128, offset: 7040)
!2411 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2412, line: 18, baseType: !2413)
!2412 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2412, line: 16, size: 128, elements: !2414)
!2414 = !{!2415}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2413, file: !2412, line: 17, baseType: !2416, size: 128)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, elements: !1514)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !473, file: !222, line: 1480, baseType: !56, size: 32, offset: 7168)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !473, file: !222, line: 1481, baseType: !2419, size: 32, offset: 7200)
!2419 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !187, line: 150, baseType: !56)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !473, file: !222, line: 1487, baseType: !180, size: 192, offset: 7232)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !473, file: !222, line: 1493, baseType: !19, size: 64, offset: 7424)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !473, file: !222, line: 1495, baseType: !2423, size: 64, offset: 7488)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !249, line: 135, size: 1024, align: 512, elements: !2426)
!2426 = !{!2427, !2431, !2432, !2439, !2445, !2449, !2453, !2457, !2458, !2462, !2466, !2471, !2475}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2425, file: !249, line: 136, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!6, !251, !56}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2425, file: !249, line: 137, baseType: !2428, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2425, file: !249, line: 138, baseType: !2433, size: 64, offset: 128)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!6, !2436, !2438}
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2425, file: !249, line: 139, baseType: !2440, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!6, !2436, !56, !19, !2443}
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2425, file: !249, line: 141, baseType: !2446, size: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!6, !2436}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2425, file: !249, line: 142, baseType: !2450, size: 64, offset: 320)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!6, !251}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2425, file: !249, line: 143, baseType: !2454, size: 64, offset: 384)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !251}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2425, file: !249, line: 144, baseType: !2454, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2425, file: !249, line: 145, baseType: !2459, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null, !251, !294}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2425, file: !249, line: 146, baseType: !2463, size: 64, offset: 576)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!353, !251, !353, !6}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2425, file: !249, line: 147, baseType: !2467, size: 64, offset: 640)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!247, !2470}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2425, file: !249, line: 148, baseType: !2472, size: 64, offset: 704)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!6, !416, !358}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2425, file: !249, line: 149, baseType: !2476, size: 64, offset: 768)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!251, !251, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !473, file: !222, line: 1500, baseType: !6, size: 32, offset: 7552)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !473, file: !222, line: 1502, baseType: !2483, size: 448, offset: 7616)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2122, line: 60, size: 448, elements: !2484)
!2484 = !{!2485, !2490, !2491, !2492, !2493, !2494, !2495}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2483, file: !2122, line: 61, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!37, !2489, !2120}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2483, file: !2122, line: 63, baseType: !2486, size: 64, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2483, file: !2122, line: 66, baseType: !408, size: 64, offset: 128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2483, file: !2122, line: 67, baseType: !6, size: 32, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2483, file: !2122, line: 68, baseType: !56, size: 32, offset: 224)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2483, file: !2122, line: 71, baseType: !211, size: 128, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2483, file: !2122, line: 77, baseType: !2496, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !473, file: !222, line: 1505, baseType: !184, size: 64, offset: 8064)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !473, file: !222, line: 1508, baseType: !184, size: 64, offset: 8128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !473, file: !222, line: 1511, baseType: !6, size: 32, offset: 8192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !473, file: !222, line: 1514, baseType: !786, size: 32, offset: 8224)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !473, file: !222, line: 1517, baseType: !2502, size: 64, offset: 8256)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1740, line: 18, flags: DIFlagFwdDecl)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !473, file: !222, line: 1518, baseType: !511, size: 64, offset: 8320)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !473, file: !222, line: 1525, baseType: !1492, size: 64, offset: 8384)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !473, file: !222, line: 1532, baseType: !2507, size: 64, offset: 8448)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2508, line: 52, size: 64, elements: !2509)
!2508 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2509 = !{!2510}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2507, file: !2508, line: 53, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2508, line: 40, size: 256, elements: !2513)
!2513 = !{!2514, !2515, !2520}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2512, file: !2508, line: 42, baseType: !195)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2512, file: !2508, line: 44, baseType: !2516, size: 192)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2508, line: 28, size: 192, elements: !2517)
!2517 = !{!2518, !2519}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2516, file: !2508, line: 29, baseType: !211, size: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2516, file: !2508, line: 31, baseType: !408, size: 64, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2512, file: !2508, line: 49, baseType: !408, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !473, file: !222, line: 1533, baseType: !2507, size: 64, offset: 8512)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !473, file: !222, line: 1534, baseType: !234, size: 128, align: 64, offset: 8576)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !473, file: !222, line: 1535, baseType: !1739, size: 256, offset: 8704)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !473, file: !222, line: 1537, baseType: !180, size: 192, offset: 8960)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !473, file: !222, line: 1542, baseType: !6, size: 32, offset: 9152)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !473, file: !222, line: 1545, baseType: !195, offset: 9184)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !473, file: !222, line: 1546, baseType: !211, size: 128, offset: 9216)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !473, file: !222, line: 1548, baseType: !195, offset: 9344)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !473, file: !222, line: 1549, baseType: !211, size: 128, offset: 9344)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !295, file: !222, line: 624, baseType: !612, size: 64, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !295, file: !222, line: 631, baseType: !37, size: 64, offset: 320)
!2532 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !222, line: 639, baseType: !2533, size: 32, offset: 384)
!2533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !222, line: 639, size: 32, elements: !2534)
!2534 = !{!2535, !2537}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2533, file: !222, line: 640, baseType: !2536, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2533, file: !222, line: 641, baseType: !56, size: 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !295, file: !222, line: 643, baseType: !381, size: 32, offset: 416)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !295, file: !222, line: 644, baseType: !399, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !295, file: !222, line: 645, baseType: !402, size: 128, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !295, file: !222, line: 646, baseType: !402, size: 128, offset: 640)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !295, file: !222, line: 647, baseType: !402, size: 128, offset: 768)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !295, file: !222, line: 648, baseType: !195, offset: 896)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !295, file: !222, line: 649, baseType: !31, size: 16, offset: 896)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !295, file: !222, line: 650, baseType: !1130, size: 8, offset: 912)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !295, file: !222, line: 651, baseType: !1130, size: 8, offset: 920)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !295, file: !222, line: 652, baseType: !2300, size: 64, offset: 960)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !295, file: !222, line: 659, baseType: !37, size: 64, offset: 1024)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !295, file: !222, line: 660, baseType: !646, size: 256, offset: 1088)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !295, file: !222, line: 662, baseType: !37, size: 64, offset: 1344)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !295, file: !222, line: 663, baseType: !37, size: 64, offset: 1408)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !295, file: !222, line: 665, baseType: !515, size: 128, offset: 1472)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !295, file: !222, line: 666, baseType: !211, size: 128, offset: 1600)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !295, file: !222, line: 675, baseType: !211, size: 128, offset: 1728)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !295, file: !222, line: 676, baseType: !211, size: 128, offset: 1856)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !295, file: !222, line: 677, baseType: !211, size: 128, offset: 1984)
!2557 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !222, line: 678, baseType: !2558, size: 128, offset: 2112)
!2558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !222, line: 678, size: 128, elements: !2559)
!2559 = !{!2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2558, file: !222, line: 679, baseType: !511, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2558, file: !222, line: 680, baseType: !234, size: 128, align: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !295, file: !222, line: 682, baseType: !186, size: 64, offset: 2240)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !295, file: !222, line: 683, baseType: !186, size: 64, offset: 2304)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !295, file: !222, line: 684, baseType: !626, size: 32, offset: 2368)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !295, file: !222, line: 685, baseType: !626, size: 32, offset: 2400)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !295, file: !222, line: 686, baseType: !626, size: 32, offset: 2432)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !295, file: !222, line: 688, baseType: !626, size: 32, offset: 2464)
!2568 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !222, line: 690, baseType: !2569, size: 64, offset: 2496)
!2569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !222, line: 690, size: 64, elements: !2570)
!2570 = !{!2571, !2794}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2569, file: !222, line: 691, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2574)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !222, line: 1822, size: 2048, elements: !2575)
!2575 = !{!2576, !2577, !2581, !2586, !2590, !2591, !2592, !2596, !2609, !2610, !2618, !2622, !2623, !2627, !2628, !2632, !2637, !2638, !2642, !2646, !2754, !2758, !2759, !2763, !2764, !2768, !2772, !2777, !2781, !2785, !2789, !2793}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2574, file: !222, line: 1823, baseType: !506, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2574, file: !222, line: 1824, baseType: !2578, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!399, !220, !399, !6}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2574, file: !222, line: 1825, baseType: !2582, size: 64, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!445, !220, !353, !448, !2585}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2574, file: !222, line: 1826, baseType: !2587, size: 64, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!445, !220, !19, !448, !2585}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2574, file: !222, line: 1827, baseType: !716, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2574, file: !222, line: 1828, baseType: !716, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2574, file: !222, line: 1829, baseType: !2593, size: 64, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!6, !719, !358}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2574, file: !222, line: 1830, baseType: !2597, size: 64, offset: 448)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!6, !220, !2600}
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !222, line: 1776, size: 128, elements: !2602)
!2602 = !{!2603, !2608}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2601, file: !222, line: 1777, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !222, line: 1773, baseType: !2605)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!6, !2600, !19, !6, !399, !287, !56}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2601, file: !222, line: 1778, baseType: !399, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2574, file: !222, line: 1831, baseType: !2597, size: 64, offset: 512)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2574, file: !222, line: 1832, baseType: !2611, size: 64, offset: 576)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!2614, !220, !2616}
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2615, line: 52, baseType: !56)
!2615 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !492, line: 27, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2574, file: !222, line: 1833, baseType: !2619, size: 64, offset: 640)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!408, !220, !56, !37}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2574, file: !222, line: 1834, baseType: !2619, size: 64, offset: 704)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2574, file: !222, line: 1835, baseType: !2624, size: 64, offset: 768)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!6, !220, !858}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2574, file: !222, line: 1836, baseType: !37, size: 64, offset: 832)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2574, file: !222, line: 1837, baseType: !2629, size: 64, offset: 896)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!6, !294, !220}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2574, file: !222, line: 1838, baseType: !2633, size: 64, offset: 960)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!6, !220, !2636}
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !222, line: 1007, baseType: !12)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2574, file: !222, line: 1839, baseType: !2629, size: 64, offset: 1024)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2574, file: !222, line: 1840, baseType: !2639, size: 64, offset: 1088)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!6, !220, !399, !399, !6}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2574, file: !222, line: 1841, baseType: !2643, size: 64, offset: 1152)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!6, !6, !220, !6}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2574, file: !222, line: 1842, baseType: !2647, size: 64, offset: 1216)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!6, !220, !6, !2650}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !222, line: 1062, size: 1664, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2684, !2685, !2686, !2699, !2730}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2651, file: !222, line: 1063, baseType: !2650, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2651, file: !222, line: 1064, baseType: !211, size: 128, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2651, file: !222, line: 1065, baseType: !515, size: 128, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2651, file: !222, line: 1066, baseType: !211, size: 128, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2651, file: !222, line: 1069, baseType: !211, size: 128, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2651, file: !222, line: 1072, baseType: !2636, size: 64, offset: 576)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2651, file: !222, line: 1073, baseType: !56, size: 32, offset: 640)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2651, file: !222, line: 1074, baseType: !70, size: 8, offset: 672)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2651, file: !222, line: 1075, baseType: !56, size: 32, offset: 704)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2651, file: !222, line: 1076, baseType: !6, size: 32, offset: 736)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2651, file: !222, line: 1077, baseType: !1262, size: 128, offset: 768)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2651, file: !222, line: 1078, baseType: !220, size: 64, offset: 896)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2651, file: !222, line: 1079, baseType: !399, size: 64, offset: 960)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2651, file: !222, line: 1080, baseType: !399, size: 64, offset: 1024)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2651, file: !222, line: 1082, baseType: !2668, size: 64, offset: 1088)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !222, line: 1314, size: 320, elements: !2670)
!2670 = !{!2671, !2679, !2680, !2681, !2682, !2683}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2669, file: !222, line: 1315, baseType: !2672)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2673, line: 20, baseType: !2674)
!2673 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2673, line: 11, elements: !2675)
!2675 = !{!2676}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2674, file: !2673, line: 12, baseType: !2677)
!2677 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !207, line: 33, baseType: !2678)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !207, line: 31, elements: !209)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2669, file: !222, line: 1316, baseType: !6, size: 32)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2669, file: !222, line: 1317, baseType: !6, size: 32, offset: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2669, file: !222, line: 1318, baseType: !2668, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2669, file: !222, line: 1319, baseType: !220, size: 64, offset: 128)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2669, file: !222, line: 1320, baseType: !234, size: 128, align: 64, offset: 192)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2651, file: !222, line: 1084, baseType: !37, size: 64, offset: 1152)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2651, file: !222, line: 1085, baseType: !37, size: 64, offset: 1216)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2651, file: !222, line: 1087, baseType: !2687, size: 64, offset: 1280)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2689)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !222, line: 1011, size: 128, elements: !2690)
!2690 = !{!2691, !2695}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2689, file: !222, line: 1012, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !2650, !2650}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2689, file: !222, line: 1013, baseType: !2696, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{null, !2650}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2651, file: !222, line: 1088, baseType: !2700, size: 64, offset: 1344)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2702)
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !222, line: 1016, size: 512, elements: !2703)
!2703 = !{!2704, !2708, !2712, !2713, !2717, !2721, !2725, !2729}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2702, file: !222, line: 1017, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!2636, !2636}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2702, file: !222, line: 1018, baseType: !2709, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !2636}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2702, file: !222, line: 1019, baseType: !2696, size: 64, offset: 128)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2702, file: !222, line: 1020, baseType: !2714, size: 64, offset: 192)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!6, !2650, !6}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2702, file: !222, line: 1021, baseType: !2718, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!358, !2650}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2702, file: !222, line: 1022, baseType: !2722, size: 64, offset: 320)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!6, !2650, !6, !214}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2702, file: !222, line: 1023, baseType: !2726, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !2650, !693}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2702, file: !222, line: 1024, baseType: !2718, size: 64, offset: 448)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2651, file: !222, line: 1097, baseType: !2731, size: 256, offset: 1408)
!2731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2651, file: !222, line: 1089, size: 256, elements: !2732)
!2732 = !{!2733, !2742, !2748}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2731, file: !222, line: 1090, baseType: !2734, size: 256)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2735, line: 10, size: 256, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2736 = !{!2737, !2738, !2741}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2734, file: !2735, line: 11, baseType: !284, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2734, file: !2735, line: 12, baseType: !2739, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2735, line: 5, flags: DIFlagFwdDecl)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2734, file: !2735, line: 13, baseType: !211, size: 128, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2731, file: !222, line: 1091, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2735, line: 17, size: 64, elements: !2744)
!2744 = !{!2745}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2743, file: !2735, line: 18, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2735, line: 16, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2731, file: !222, line: 1096, baseType: !2749, size: 192)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2731, file: !222, line: 1092, size: 192, elements: !2750)
!2750 = !{!2751, !2752, !2753}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2749, file: !222, line: 1093, baseType: !211, size: 128)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2749, file: !222, line: 1094, baseType: !6, size: 32, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2749, file: !222, line: 1095, baseType: !56, size: 32, offset: 160)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2574, file: !222, line: 1843, baseType: !2755, size: 64, offset: 1280)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!445, !220, !599, !6, !448, !2585, !6}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2574, file: !222, line: 1844, baseType: !898, size: 64, offset: 1344)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2574, file: !222, line: 1845, baseType: !2760, size: 64, offset: 1408)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!6, !6}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2574, file: !222, line: 1846, baseType: !2647, size: 64, offset: 1472)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2574, file: !222, line: 1847, baseType: !2765, size: 64, offset: 1536)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!445, !1880, !220, !2585, !448, !56}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2574, file: !222, line: 1848, baseType: !2769, size: 64, offset: 1600)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!445, !220, !2585, !1880, !448, !56}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2574, file: !222, line: 1849, baseType: !2773, size: 64, offset: 1664)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!6, !220, !408, !2776, !693}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2574, file: !222, line: 1850, baseType: !2778, size: 64, offset: 1728)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!408, !220, !6, !399, !399}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2574, file: !222, line: 1852, baseType: !2782, size: 64, offset: 1792)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null, !589, !220}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2574, file: !222, line: 1856, baseType: !2786, size: 64, offset: 1856)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!445, !220, !399, !220, !399, !448, !56}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2574, file: !222, line: 1858, baseType: !2790, size: 64, offset: 1920)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!399, !220, !399, !220, !399, !399, !56}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2574, file: !222, line: 1861, baseType: !2639, size: 64, offset: 1984)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2569, file: !222, line: 692, baseType: !542, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !295, file: !222, line: 694, baseType: !2796, size: 64, offset: 2560)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !222, line: 1100, size: 384, elements: !2798)
!2798 = !{!2799, !2800, !2801, !2802}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2797, file: !222, line: 1101, baseType: !195)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2797, file: !222, line: 1102, baseType: !211, size: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2797, file: !222, line: 1103, baseType: !211, size: 128, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2797, file: !222, line: 1104, baseType: !211, size: 128, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !295, file: !222, line: 695, baseType: !613, size: 1216, align: 64, offset: 2624)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !295, file: !222, line: 696, baseType: !211, size: 128, offset: 3840)
!2805 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !222, line: 697, baseType: !2806, size: 64, offset: 3968)
!2806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !222, line: 697, size: 64, elements: !2807)
!2807 = !{!2808, !2809, !2810, !2813, !2814}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2806, file: !222, line: 698, baseType: !1880, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2806, file: !222, line: 699, baseType: !2325, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2806, file: !222, line: 700, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !222, line: 700, flags: DIFlagFwdDecl)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2806, file: !222, line: 701, baseType: !353, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2806, file: !222, line: 702, baseType: !56, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !295, file: !222, line: 705, baseType: !74, size: 32, offset: 4032)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !295, file: !222, line: 708, baseType: !74, size: 32, offset: 4064)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !295, file: !222, line: 709, baseType: !2406, size: 64, offset: 4096)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !295, file: !222, line: 720, baseType: !12, size: 64, offset: 4160)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !252, file: !249, line: 98, baseType: !2820, size: 256, offset: 448)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 256, elements: !77)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !252, file: !249, line: 101, baseType: !2822, size: 32, offset: 704)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2823, line: 25, size: 32, elements: !2824)
!2823 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2824 = !{!2825}
!2825 = !DIDerivedType(tag: DW_TAG_member, scope: !2822, file: !2823, line: 26, baseType: !2826, size: 32)
!2826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2822, file: !2823, line: 26, size: 32, elements: !2827)
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, scope: !2826, file: !2823, line: 30, baseType: !2829, size: 32)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2826, file: !2823, line: 30, size: 32, elements: !2830)
!2830 = !{!2831, !2832}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2829, file: !2823, line: 31, baseType: !195)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2829, file: !2823, line: 32, baseType: !6, size: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !252, file: !249, line: 102, baseType: !2423, size: 64, offset: 768)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !252, file: !249, line: 103, baseType: !472, size: 64, offset: 832)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !252, file: !249, line: 104, baseType: !37, size: 64, offset: 896)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !252, file: !249, line: 105, baseType: !12, size: 64, offset: 960)
!2837 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !249, line: 107, baseType: !2838, size: 128, offset: 1024)
!2838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !249, line: 107, size: 128, elements: !2839)
!2839 = !{!2840, !2841}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2838, file: !249, line: 108, baseType: !211, size: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2838, file: !249, line: 109, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !252, file: !249, line: 111, baseType: !211, size: 128, offset: 1152)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !252, file: !249, line: 112, baseType: !211, size: 128, offset: 1280)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !252, file: !249, line: 120, baseType: !2846, size: 128, offset: 1408)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !249, line: 116, size: 128, elements: !2847)
!2847 = !{!2848, !2849, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2846, file: !249, line: 117, baseType: !515, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2846, file: !249, line: 118, baseType: !266, size: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2846, file: !249, line: 119, baseType: !234, size: 128, align: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !221, file: !222, line: 922, baseType: !294, size: 64, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !221, file: !222, line: 923, baseType: !2572, size: 64, offset: 320)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !221, file: !222, line: 929, baseType: !195, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !221, file: !222, line: 930, baseType: !2855, size: 32, offset: 384)
!2855 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !222, line: 296, baseType: !56, size: 32, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2862}
!2857 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!2858 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!2859 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!2860 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!2861 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!2862 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !221, file: !222, line: 931, baseType: !184, size: 64, offset: 448)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !221, file: !222, line: 932, baseType: !56, size: 32, offset: 512)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !221, file: !222, line: 933, baseType: !2419, size: 32, offset: 544)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !221, file: !222, line: 934, baseType: !180, size: 192, offset: 576)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !221, file: !222, line: 935, baseType: !399, size: 64, offset: 768)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !221, file: !222, line: 936, baseType: !2869, size: 192, offset: 832)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !222, line: 885, size: 192, elements: !2870)
!2870 = !{!2871, !2872, !2873, !2881, !2882, !2883}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2869, file: !222, line: 886, baseType: !2672)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2869, file: !222, line: 887, baseType: !1251, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2869, file: !222, line: 888, baseType: !2874, size: 32, offset: 64)
!2874 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1253, line: 9, baseType: !56, size: 32, elements: !2875)
!2875 = !{!2876, !2877, !2878, !2879, !2880}
!2876 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!2877 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!2878 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!2879 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!2880 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2869, file: !222, line: 889, baseType: !301, size: 32, offset: 96)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2869, file: !222, line: 889, baseType: !301, size: 32, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2869, file: !222, line: 890, baseType: !6, size: 32, offset: 160)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !221, file: !222, line: 937, baseType: !1328, size: 64, offset: 1024)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !221, file: !222, line: 938, baseType: !2886, size: 256, offset: 1088)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !222, line: 896, size: 256, elements: !2887)
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2886, file: !222, line: 897, baseType: !37, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2886, file: !222, line: 898, baseType: !56, size: 32, offset: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2886, file: !222, line: 899, baseType: !56, size: 32, offset: 96)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2886, file: !222, line: 902, baseType: !56, size: 32, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2886, file: !222, line: 903, baseType: !56, size: 32, offset: 160)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2886, file: !222, line: 904, baseType: !399, size: 64, offset: 192)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !221, file: !222, line: 940, baseType: !287, size: 64, offset: 1344)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !221, file: !222, line: 945, baseType: !12, size: 64, offset: 1408)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !221, file: !222, line: 949, baseType: !211, size: 128, offset: 1472)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !221, file: !222, line: 950, baseType: !211, size: 128, offset: 1600)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !221, file: !222, line: 952, baseType: !612, size: 64, offset: 1728)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !221, file: !222, line: 953, baseType: !786, size: 32, offset: 1792)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !221, file: !222, line: 954, baseType: !786, size: 32, offset: 1824)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !15, file: !16, line: 163, baseType: !2902, size: 64, offset: 2048)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !16, line: 24, flags: DIFlagFwdDecl)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !15, file: !16, line: 165, baseType: !56, size: 32, offset: 2112)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !15, file: !16, line: 166, baseType: !2906, size: 320, offset: 2176)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2907, line: 11, size: 320, elements: !2908)
!2907 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2908 = !{!2909, !2910, !2911, !2916}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2906, file: !2907, line: 16, baseType: !515, size: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2906, file: !2907, line: 17, baseType: !37, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2906, file: !2907, line: 18, baseType: !2912, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !2915}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2906, file: !2907, line: 19, baseType: !284, size: 32, offset: 256)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !15, file: !16, line: 168, baseType: !2918, size: 64, offset: 2496)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !52)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !15, file: !16, line: 170, baseType: !2920, size: 64, offset: 2560)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !16, line: 170, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !15, file: !16, line: 172, baseType: !2923, size: 64, offset: 2624)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !26, line: 90, size: 192, elements: !2925)
!2925 = !{!2926, !2927, !2928, !2929, !2930, !2931}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2924, file: !26, line: 91, baseType: !1225, size: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2924, file: !26, line: 92, baseType: !1225, size: 32, offset: 32)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2924, file: !26, line: 93, baseType: !1225, size: 32, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !2924, file: !26, line: 94, baseType: !1225, size: 32, offset: 96)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !2924, file: !26, line: 95, baseType: !1225, size: 32, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !2924, file: !26, line: 96, baseType: !1225, size: 32, offset: 160)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !15, file: !16, line: 174, baseType: !42, size: 768, offset: 2688)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !15, file: !16, line: 175, baseType: !36, size: 64, offset: 3456)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !15, file: !16, line: 176, baseType: !36, size: 64, offset: 3520)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !15, file: !16, line: 177, baseType: !36, size: 64, offset: 3584)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !15, file: !16, line: 179, baseType: !2937, size: 64, offset: 3648)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!6, !14}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !15, file: !16, line: 180, baseType: !2941, size: 64, offset: 3712)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{null, !14}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !15, file: !16, line: 181, baseType: !2945, size: 64, offset: 3776)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!6, !14, !220}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !15, file: !16, line: 182, baseType: !2949, size: 64, offset: 3840)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!6, !14, !56, !56, !6}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !15, file: !16, line: 184, baseType: !2953, size: 64, offset: 3904)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !16, line: 337, size: 576, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960, !3028, !3029}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2954, file: !16, line: 339, baseType: !12, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2954, file: !16, line: 341, baseType: !6, size: 32, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2954, file: !16, line: 342, baseType: !19, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2954, file: !16, line: 344, baseType: !14, size: 64, offset: 192)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2954, file: !16, line: 345, baseType: !2961, size: 64, offset: 256)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !16, line: 302, size: 960, elements: !2963)
!2963 = !{!2964, !2965, !2969, !2980, !2984, !2988, !3017, !3021, !3022, !3023, !3024, !3025, !3026, !3027}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2962, file: !16, line: 304, baseType: !12, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2962, file: !16, line: 306, baseType: !2966, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !2953, !56, !56, !6}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2962, file: !16, line: 307, baseType: !2970, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2953, !2973, !56}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2975)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !16, line: 32, size: 64, elements: !2976)
!2976 = !{!2977, !2978, !2979}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2975, file: !16, line: 33, baseType: !29, size: 16)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2975, file: !16, line: 34, baseType: !29, size: 16, offset: 16)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2975, file: !16, line: 35, baseType: !1225, size: 32, offset: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2962, file: !16, line: 309, baseType: !2981, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!358, !2953, !56, !56, !6}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2962, file: !16, line: 310, baseType: !2985, size: 64, offset: 256)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!358, !2961, !14}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !2962, file: !16, line: 311, baseType: !2989, size: 64, offset: 320)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!6, !2961, !14, !2992}
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2994)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !2995, line: 342, size: 1600, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!2996 = !{!2997, !2999, !3000, !3001, !3002, !3003, !3005, !3007, !3008, !3009, !3010, !3011, !3012, !3014, !3015, !3016}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2994, file: !2995, line: 344, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !2995, line: 14, baseType: !37)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !2994, file: !2995, line: 346, baseType: !29, size: 16, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2994, file: !2995, line: 347, baseType: !29, size: 16, offset: 80)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !2994, file: !2995, line: 348, baseType: !29, size: 16, offset: 96)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2994, file: !2995, line: 349, baseType: !29, size: 16, offset: 112)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !2994, file: !2995, line: 351, baseType: !3004, size: 64, offset: 128)
!3004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2998, size: 64, elements: !38)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !2994, file: !2995, line: 352, baseType: !3006, size: 768, offset: 192)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2998, size: 768, elements: !43)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !2994, file: !2995, line: 353, baseType: !3004, size: 64, offset: 960)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !2994, file: !2995, line: 354, baseType: !3004, size: 64, offset: 1024)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !2994, file: !2995, line: 355, baseType: !3004, size: 64, offset: 1088)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !2994, file: !2995, line: 356, baseType: !3004, size: 64, offset: 1152)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !2994, file: !2995, line: 357, baseType: !3004, size: 64, offset: 1216)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !2994, file: !2995, line: 358, baseType: !3013, size: 128, offset: 1280)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2998, size: 128, elements: !52)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !2994, file: !2995, line: 359, baseType: !3004, size: 64, offset: 1408)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !2994, file: !2995, line: 360, baseType: !3004, size: 64, offset: 1472)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !2994, file: !2995, line: 362, baseType: !2998, size: 64, offset: 1536)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !2962, file: !16, line: 312, baseType: !3018, size: 64, offset: 384)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{null, !2953}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2962, file: !16, line: 313, baseType: !3018, size: 64, offset: 448)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !2962, file: !16, line: 315, baseType: !358, size: 8, offset: 512)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !2962, file: !16, line: 316, baseType: !6, size: 32, offset: 544)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2962, file: !16, line: 317, baseType: !19, size: 64, offset: 576)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2962, file: !16, line: 319, baseType: !2992, size: 64, offset: 640)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !2962, file: !16, line: 321, baseType: !211, size: 128, offset: 704)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2962, file: !16, line: 322, baseType: !211, size: 128, offset: 832)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !2954, file: !16, line: 347, baseType: !211, size: 128, offset: 320)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !2954, file: !16, line: 348, baseType: !211, size: 128, offset: 448)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !15, file: !16, line: 186, baseType: !195, offset: 3968)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !15, file: !16, line: 187, baseType: !180, size: 192, offset: 3968)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !15, file: !16, line: 189, baseType: !56, size: 32, offset: 4160)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !15, file: !16, line: 190, baseType: !358, size: 8, offset: 4192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !15, file: !16, line: 192, baseType: !3035, size: 5568, offset: 4224)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !3036, line: 461, size: 5568, elements: !3037)
!3036 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!3037 = !{!3038, !3343, !3345, !3348, !3349, !3401, !3496, !3497, !3498, !3499, !3500, !3515, !3622, !3635, !3638, !3639, !3643, !3645, !3646, !3647, !3651, !3657, !3658, !3661, !3665, !3668, !3669, !3670, !3671, !3672, !3704, !3705, !3706, !3709, !3712, !3713, !3714, !3715}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3035, file: !3036, line: 462, baseType: !3039, size: 512)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3040, line: 64, size: 512, elements: !3041)
!3040 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3041 = !{!3042, !3043, !3044, !3046, !3086, !3194, !3333, !3338, !3339, !3340, !3341, !3342}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3039, file: !3040, line: 65, baseType: !19, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3039, file: !3040, line: 66, baseType: !211, size: 128, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3039, file: !3040, line: 67, baseType: !3045, size: 64, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3039, file: !3040, line: 68, baseType: !3047, size: 64, offset: 256)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3040, line: 192, size: 704, elements: !3049)
!3049 = !{!3050, !3051, !3052, !3053}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3048, file: !3040, line: 193, baseType: !211, size: 128)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3048, file: !3040, line: 194, baseType: !195, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3048, file: !3040, line: 195, baseType: !3039, size: 512, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3048, file: !3040, line: 196, baseType: !3054, size: 64, offset: 640)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3056)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3040, line: 156, size: 192, elements: !3057)
!3057 = !{!3058, !3063, !3068}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3056, file: !3040, line: 157, baseType: !3059, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3060)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!6, !3047, !3045}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3056, file: !3040, line: 158, baseType: !3064, size: 64, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3065)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!19, !3047, !3045}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3056, file: !3040, line: 159, baseType: !3069, size: 64, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3070)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!6, !3047, !3045, !3073}
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3040, line: 148, size: 20736, elements: !3075)
!3075 = !{!3076, !3078, !3080, !3081, !3085}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3074, file: !3040, line: 149, baseType: !3077, size: 192)
!3077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 192, elements: !527)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3074, file: !3040, line: 150, baseType: !3079, size: 4096, offset: 192)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 4096, elements: !1661)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3074, file: !3040, line: 151, baseType: !6, size: 32, offset: 4288)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3074, file: !3040, line: 152, baseType: !3082, size: 16384, offset: 4320)
!3082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 16384, elements: !3083)
!3083 = !{!3084}
!3084 = !DISubrange(count: 2048)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3074, file: !3040, line: 153, baseType: !6, size: 32, offset: 20704)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3039, file: !3040, line: 69, baseType: !3087, size: 64, offset: 320)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3040, line: 138, size: 448, elements: !3089)
!3089 = !{!3090, !3094, !3113, !3115, !3148, !3184, !3188}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3088, file: !3040, line: 139, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !3045}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3088, file: !3040, line: 140, baseType: !3095, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3097)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3098, line: 230, size: 128, elements: !3099)
!3098 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3099 = !{!3100, !3109}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3097, file: !3098, line: 231, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!445, !3045, !3104, !353}
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3098, line: 30, size: 128, elements: !3106)
!3106 = !{!3107, !3108}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3105, file: !3098, line: 31, baseType: !19, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3105, file: !3098, line: 32, baseType: !298, size: 16, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3097, file: !3098, line: 232, baseType: !3110, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!445, !3045, !3104, !19, !448}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3088, file: !3040, line: 141, baseType: !3114, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3088, file: !3040, line: 142, baseType: !3116, size: 64, offset: 192)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3119)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3098, line: 84, size: 320, elements: !3120)
!3120 = !{!3121, !3122, !3126, !3145, !3146}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3119, file: !3098, line: 85, baseType: !19, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3119, file: !3098, line: 86, baseType: !3123, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!298, !3045, !3104, !6}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3119, file: !3098, line: 88, baseType: !3127, size: 64, offset: 128)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!298, !3045, !3130, !6}
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3098, line: 168, size: 448, elements: !3132)
!3132 = !{!3133, !3134, !3135, !3136, !3140, !3141}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3131, file: !3098, line: 169, baseType: !3105, size: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3131, file: !3098, line: 170, baseType: !448, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3131, file: !3098, line: 171, baseType: !12, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3131, file: !3098, line: 172, baseType: !3137, size: 64, offset: 256)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!445, !220, !3045, !3130, !353, !399, !448}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3131, file: !3098, line: 174, baseType: !3137, size: 64, offset: 320)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3131, file: !3098, line: 176, baseType: !3142, size: 64, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!6, !220, !3045, !3130, !858}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3119, file: !3098, line: 90, baseType: !3114, size: 64, offset: 192)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3119, file: !3098, line: 91, baseType: !3147, size: 64, offset: 256)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3088, file: !3040, line: 143, baseType: !3149, size: 64, offset: 256)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!3152, !3045}
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3154)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3155, line: 39, size: 384, elements: !3156)
!3155 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!3156 = !{!3157, !3163, !3167, !3171, !3179, !3183}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3154, file: !3155, line: 40, baseType: !3158, size: 32)
!3158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3155, line: 26, baseType: !56, size: 32, elements: !3159)
!3159 = !{!3160, !3161, !3162}
!3160 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!3161 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!3162 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3154, file: !3155, line: 41, baseType: !3164, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!358}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3154, file: !3155, line: 42, baseType: !3168, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!12}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3154, file: !3155, line: 43, baseType: !3172, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!3175, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3155, line: 19, flags: DIFlagFwdDecl)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3154, file: !3155, line: 44, baseType: !3180, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!3175}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3154, file: !3155, line: 45, baseType: !335, size: 64, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3088, file: !3040, line: 144, baseType: !3185, size: 64, offset: 320)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!3175, !3045}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3088, file: !3040, line: 145, baseType: !3189, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{null, !3045, !3192, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3039, file: !3040, line: 70, baseType: !3195, size: 64, offset: 384)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !492, line: 123, size: 1024, elements: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3326, !3327, !3328, !3329, !3330}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3196, file: !492, line: 124, baseType: !626, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3196, file: !492, line: 125, baseType: !626, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3196, file: !492, line: 135, baseType: !3195, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3196, file: !492, line: 136, baseType: !19, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3196, file: !492, line: 138, baseType: !639, size: 192, align: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3196, file: !492, line: 140, baseType: !3175, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3196, file: !492, line: 141, baseType: !56, size: 32, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3196, file: !492, line: 142, baseType: !3206, size: 256, offset: 512)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3196, file: !492, line: 142, size: 256, elements: !3207)
!3207 = !{!3208, !3254, !3258}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3206, file: !492, line: 143, baseType: !3209, size: 192)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !492, line: 91, size: 192, elements: !3210)
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3209, file: !492, line: 92, baseType: !37, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3209, file: !492, line: 94, baseType: !635, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3209, file: !492, line: 100, baseType: !3214, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !492, line: 180, size: 704, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3226, !3227, !3228, !3252, !3253}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3215, file: !492, line: 182, baseType: !3195, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3215, file: !492, line: 183, baseType: !56, size: 32, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3215, file: !492, line: 186, baseType: !3220, size: 192, offset: 128)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3221, line: 19, size: 192, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3220, file: !3221, line: 20, baseType: !617, size: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3220, file: !3221, line: 21, baseType: !56, size: 32, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3220, file: !3221, line: 22, baseType: !56, size: 32, offset: 160)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3215, file: !492, line: 187, baseType: !284, size: 32, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3215, file: !492, line: 188, baseType: !284, size: 32, offset: 352)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3215, file: !492, line: 189, baseType: !3229, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !492, line: 168, size: 320, elements: !3231)
!3231 = !{!3232, !3236, !3240, !3244, !3248}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3230, file: !492, line: 169, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!6, !589, !3214}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3230, file: !492, line: 171, baseType: !3237, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!6, !3195, !19, !298}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3230, file: !492, line: 173, baseType: !3241, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!6, !3195}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3230, file: !492, line: 174, baseType: !3245, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!6, !3195, !3195, !19}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3230, file: !492, line: 176, baseType: !3249, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!6, !589, !3195, !3214}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3215, file: !492, line: 192, baseType: !211, size: 128, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3215, file: !492, line: 194, baseType: !1262, size: 128, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3206, file: !492, line: 144, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !492, line: 103, size: 64, elements: !3256)
!3256 = !{!3257}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3255, file: !492, line: 104, baseType: !3195, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3206, file: !492, line: 145, baseType: !3259, size: 256)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !492, line: 107, size: 256, elements: !3260)
!3260 = !{!3261, !3321, !3324, !3325}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3259, file: !492, line: 108, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !492, line: 217, size: 768, elements: !3265)
!3265 = !{!3266, !3286, !3290, !3294, !3298, !3302, !3306, !3310, !3311, !3312, !3313, !3317}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3264, file: !492, line: 222, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!6, !3270}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !492, line: 197, size: 1088, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3271, file: !492, line: 199, baseType: !3195, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3271, file: !492, line: 200, baseType: !220, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3271, file: !492, line: 201, baseType: !589, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3271, file: !492, line: 202, baseType: !12, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3271, file: !492, line: 205, baseType: !180, size: 192, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3271, file: !492, line: 206, baseType: !180, size: 192, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3271, file: !492, line: 207, baseType: !6, size: 32, offset: 640)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3271, file: !492, line: 208, baseType: !211, size: 128, offset: 704)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3271, file: !492, line: 209, baseType: !353, size: 64, offset: 832)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3271, file: !492, line: 211, baseType: !448, size: 64, offset: 896)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3271, file: !492, line: 212, baseType: !358, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3271, file: !492, line: 213, baseType: !358, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3271, file: !492, line: 214, baseType: !886, size: 64, offset: 1024)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3264, file: !492, line: 223, baseType: !3287, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !3270}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3264, file: !492, line: 236, baseType: !3291, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!6, !589, !12}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3264, file: !492, line: 238, baseType: !3295, size: 64, offset: 192)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!12, !589, !2585}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3264, file: !492, line: 239, baseType: !3299, size: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!12, !589, !12, !2585}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3264, file: !492, line: 240, baseType: !3303, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !589, !12}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3264, file: !492, line: 242, baseType: !3307, size: 64, offset: 384)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!445, !3270, !353, !448, !399}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3264, file: !492, line: 252, baseType: !448, size: 64, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3264, file: !492, line: 259, baseType: !358, size: 8, offset: 512)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3264, file: !492, line: 260, baseType: !3307, size: 64, offset: 576)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3264, file: !492, line: 263, baseType: !3314, size: 64, offset: 640)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!2614, !3270, !2616}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3264, file: !492, line: 266, baseType: !3318, size: 64, offset: 704)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!6, !3270, !858}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3259, file: !492, line: 109, baseType: !3322, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !492, line: 31, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3259, file: !492, line: 110, baseType: !399, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3259, file: !492, line: 111, baseType: !3195, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3196, file: !492, line: 148, baseType: !12, size: 64, offset: 768)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3196, file: !492, line: 154, baseType: !287, size: 64, offset: 832)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3196, file: !492, line: 156, baseType: !31, size: 16, offset: 896)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3196, file: !492, line: 157, baseType: !298, size: 16, offset: 912)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3196, file: !492, line: 158, baseType: !3331, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !492, line: 32, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3039, file: !3040, line: 71, baseType: !3334, size: 32, offset: 448)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3335, line: 19, size: 32, elements: !3336)
!3335 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3336 = !{!3337}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3334, file: !3335, line: 20, baseType: !1003, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3039, file: !3040, line: 75, baseType: !56, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3039, file: !3040, line: 76, baseType: !56, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3039, file: !3040, line: 77, baseType: !56, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3039, file: !3040, line: 78, baseType: !56, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3039, file: !3040, line: 79, baseType: !56, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3035, file: !3036, line: 463, baseType: !3344, size: 64, offset: 512)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3035, file: !3036, line: 465, baseType: !3346, size: 64, offset: 576)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !3036, line: 36, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3035, file: !3036, line: 467, baseType: !19, size: 64, offset: 640)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3035, file: !3036, line: 468, baseType: !3350, size: 64, offset: 704)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3352)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !3036, line: 87, size: 384, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3360, !3365, !3369}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3352, file: !3036, line: 88, baseType: !19, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3352, file: !3036, line: 89, baseType: !3116, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3352, file: !3036, line: 90, baseType: !3357, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!6, !3344, !3073}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3352, file: !3036, line: 91, baseType: !3361, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!353, !3344, !3364, !3192, !3193}
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3352, file: !3036, line: 93, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{null, !3344}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3352, file: !3036, line: 95, baseType: !3370, size: 64, offset: 320)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3372)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !3373, line: 278, size: 1472, elements: !3374)
!3373 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!3374 = !{!3375, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3372, file: !3373, line: 279, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!6, !3344}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3372, file: !3373, line: 280, baseType: !3366, size: 64, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3372, file: !3373, line: 281, baseType: !3376, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3372, file: !3373, line: 282, baseType: !3376, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3372, file: !3373, line: 283, baseType: !3376, size: 64, offset: 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3372, file: !3373, line: 284, baseType: !3376, size: 64, offset: 320)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3372, file: !3373, line: 285, baseType: !3376, size: 64, offset: 384)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3372, file: !3373, line: 286, baseType: !3376, size: 64, offset: 448)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3372, file: !3373, line: 287, baseType: !3376, size: 64, offset: 512)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3372, file: !3373, line: 288, baseType: !3376, size: 64, offset: 576)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3372, file: !3373, line: 289, baseType: !3376, size: 64, offset: 640)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3372, file: !3373, line: 290, baseType: !3376, size: 64, offset: 704)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3372, file: !3373, line: 291, baseType: !3376, size: 64, offset: 768)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3372, file: !3373, line: 292, baseType: !3376, size: 64, offset: 832)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3372, file: !3373, line: 293, baseType: !3376, size: 64, offset: 896)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3372, file: !3373, line: 294, baseType: !3376, size: 64, offset: 960)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3372, file: !3373, line: 295, baseType: !3376, size: 64, offset: 1024)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3372, file: !3373, line: 296, baseType: !3376, size: 64, offset: 1088)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3372, file: !3373, line: 297, baseType: !3376, size: 64, offset: 1152)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3372, file: !3373, line: 298, baseType: !3376, size: 64, offset: 1216)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3372, file: !3373, line: 299, baseType: !3376, size: 64, offset: 1280)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3372, file: !3373, line: 300, baseType: !3376, size: 64, offset: 1344)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3372, file: !3373, line: 301, baseType: !3376, size: 64, offset: 1408)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3035, file: !3036, line: 470, baseType: !3402, size: 64, offset: 768)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3404, line: 82, size: 1408, elements: !3405)
!3404 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3491, !3494, !3495}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3403, file: !3404, line: 83, baseType: !19, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3403, file: !3404, line: 84, baseType: !19, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3403, file: !3404, line: 85, baseType: !3344, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3403, file: !3404, line: 86, baseType: !3116, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3403, file: !3404, line: 87, baseType: !3116, size: 64, offset: 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3403, file: !3404, line: 88, baseType: !3116, size: 64, offset: 320)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3403, file: !3404, line: 90, baseType: !3413, size: 64, offset: 384)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!6, !3344, !3416}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !3418, line: 95, size: 1152, elements: !3419)
!3418 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3431, !3443, !3455, !3456, !3457, !3458, !3459, !3467, !3468, !3469, !3470, !3471, !3472}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3417, file: !3418, line: 96, baseType: !19, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3417, file: !3418, line: 97, baseType: !3402, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3417, file: !3418, line: 99, baseType: !506, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3417, file: !3418, line: 100, baseType: !19, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3417, file: !3418, line: 102, baseType: !358, size: 8, offset: 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3417, file: !3418, line: 103, baseType: !3426, size: 32, offset: 288)
!3426 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !3418, line: 44, baseType: !56, size: 32, elements: !3427)
!3427 = !{!3428, !3429, !3430}
!3428 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!3429 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!3430 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3417, file: !3418, line: 105, baseType: !3432, size: 64, offset: 320)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3434)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !2995, line: 262, size: 1600, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3442}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3434, file: !2995, line: 263, baseType: !2409, size: 256)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3434, file: !2995, line: 264, baseType: !2409, size: 256, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3434, file: !2995, line: 265, baseType: !3439, size: 1024, offset: 512)
!3439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !3440)
!3440 = !{!3441}
!3441 = !DISubrange(count: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3434, file: !2995, line: 266, baseType: !3175, size: 64, offset: 1536)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3417, file: !3418, line: 106, baseType: !3444, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !2995, line: 210, size: 256, elements: !3447)
!3447 = !{!3448, !3452, !3453, !3454}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3446, file: !2995, line: 211, baseType: !3449, size: 72)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 72, elements: !3450)
!3450 = !{!3451}
!3451 = !DISubrange(count: 9)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3446, file: !2995, line: 212, baseType: !2998, size: 64, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3446, file: !2995, line: 213, baseType: !74, size: 32, offset: 192)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3446, file: !2995, line: 214, baseType: !74, size: 32, offset: 224)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3417, file: !3418, line: 108, baseType: !3376, size: 64, offset: 448)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3417, file: !3418, line: 109, baseType: !3366, size: 64, offset: 512)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3417, file: !3418, line: 110, baseType: !3376, size: 64, offset: 576)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3417, file: !3418, line: 111, baseType: !3366, size: 64, offset: 640)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3417, file: !3418, line: 112, baseType: !3460, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!6, !3344, !3463}
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !3373, line: 52, baseType: !3464)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !3373, line: 50, size: 32, elements: !3465)
!3465 = !{!3466}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3464, file: !3373, line: 51, baseType: !6, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3417, file: !3418, line: 113, baseType: !3376, size: 64, offset: 768)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3417, file: !3418, line: 114, baseType: !3116, size: 64, offset: 832)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3417, file: !3418, line: 115, baseType: !3116, size: 64, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3417, file: !3418, line: 117, baseType: !3370, size: 64, offset: 960)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3417, file: !3418, line: 118, baseType: !3366, size: 64, offset: 1024)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3417, file: !3418, line: 120, baseType: !3473, size: 64, offset: 1088)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !3418, line: 120, flags: DIFlagFwdDecl)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3403, file: !3404, line: 91, baseType: !3357, size: 64, offset: 448)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3403, file: !3404, line: 92, baseType: !3376, size: 64, offset: 512)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3403, file: !3404, line: 93, baseType: !3366, size: 64, offset: 576)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3403, file: !3404, line: 94, baseType: !3376, size: 64, offset: 640)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3403, file: !3404, line: 95, baseType: !3366, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3403, file: !3404, line: 97, baseType: !3376, size: 64, offset: 768)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3403, file: !3404, line: 98, baseType: !3376, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3403, file: !3404, line: 100, baseType: !3460, size: 64, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3403, file: !3404, line: 101, baseType: !3376, size: 64, offset: 960)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3403, file: !3404, line: 103, baseType: !3376, size: 64, offset: 1024)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3403, file: !3404, line: 105, baseType: !3376, size: 64, offset: 1088)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3403, file: !3404, line: 107, baseType: !3370, size: 64, offset: 1152)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3403, file: !3404, line: 109, baseType: !3488, size: 64, offset: 1216)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3490)
!3490 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3404, line: 109, flags: DIFlagFwdDecl)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3403, file: !3404, line: 111, baseType: !3492, size: 64, offset: 1280)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3404, line: 111, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3403, file: !3404, line: 112, baseType: !521, offset: 1344)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3403, file: !3404, line: 114, baseType: !358, size: 8, offset: 1344)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3035, file: !3036, line: 471, baseType: !3416, size: 64, offset: 832)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3035, file: !3036, line: 473, baseType: !12, size: 64, offset: 896)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3035, file: !3036, line: 475, baseType: !12, size: 64, offset: 960)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3035, file: !3036, line: 480, baseType: !180, size: 192, offset: 1024)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3035, file: !3036, line: 484, baseType: !3501, size: 576, offset: 1216)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !3036, line: 361, size: 576, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3501, file: !3036, line: 362, baseType: !211, size: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3501, file: !3036, line: 363, baseType: !211, size: 128, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3501, file: !3036, line: 364, baseType: !211, size: 128, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3501, file: !3036, line: 365, baseType: !211, size: 128, offset: 384)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3501, file: !3036, line: 366, baseType: !358, size: 8, offset: 512)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3501, file: !3036, line: 367, baseType: !3509, size: 32, offset: 544)
!3509 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !3036, line: 343, baseType: !56, size: 32, elements: !3510)
!3510 = !{!3511, !3512, !3513, !3514}
!3511 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!3512 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!3513 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!3514 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3035, file: !3036, line: 485, baseType: !3516, size: 2304, offset: 1792)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !3373, line: 565, size: 2304, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3592, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3615, !3619}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3516, file: !3373, line: 566, baseType: !3463, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3516, file: !3373, line: 567, baseType: !56, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3516, file: !3373, line: 568, baseType: !56, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3516, file: !3373, line: 569, baseType: !358, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3516, file: !3373, line: 570, baseType: !358, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3516, file: !3373, line: 571, baseType: !358, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3516, file: !3373, line: 572, baseType: !358, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3516, file: !3373, line: 573, baseType: !358, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3516, file: !3373, line: 574, baseType: !358, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3516, file: !3373, line: 575, baseType: !358, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3516, file: !3373, line: 576, baseType: !358, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3516, file: !3373, line: 577, baseType: !284, size: 32, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3516, file: !3373, line: 578, baseType: !195, offset: 96)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3516, file: !3373, line: 580, baseType: !211, size: 128, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3516, file: !3373, line: 581, baseType: !1283, size: 192, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3516, file: !3373, line: 582, baseType: !3534, size: 64, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3536, line: 43, size: 1472, elements: !3537)
!3536 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3535, file: !3536, line: 44, baseType: !19, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3535, file: !3536, line: 45, baseType: !6, size: 32, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3535, file: !3536, line: 46, baseType: !211, size: 128, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3535, file: !3536, line: 47, baseType: !195, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3535, file: !3536, line: 48, baseType: !3543, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !3373, line: 533, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3535, file: !3536, line: 49, baseType: !2906, size: 320, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3535, file: !3536, line: 50, baseType: !37, size: 64, offset: 640)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3535, file: !3536, line: 51, baseType: !1074, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3535, file: !3536, line: 52, baseType: !1074, size: 64, offset: 768)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3535, file: !3536, line: 53, baseType: !1074, size: 64, offset: 832)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3535, file: !3536, line: 54, baseType: !1074, size: 64, offset: 896)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3535, file: !3536, line: 55, baseType: !1074, size: 64, offset: 960)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3535, file: !3536, line: 56, baseType: !37, size: 64, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3535, file: !3536, line: 57, baseType: !37, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3535, file: !3536, line: 58, baseType: !37, size: 64, offset: 1152)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3535, file: !3536, line: 59, baseType: !37, size: 64, offset: 1216)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3535, file: !3536, line: 60, baseType: !37, size: 64, offset: 1280)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3535, file: !3536, line: 61, baseType: !3344, size: 64, offset: 1344)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3535, file: !3536, line: 62, baseType: !358, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3535, file: !3536, line: 63, baseType: !358, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3516, file: !3373, line: 583, baseType: !358, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3516, file: !3373, line: 584, baseType: !358, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3516, file: !3373, line: 585, baseType: !358, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3516, file: !3373, line: 586, baseType: !56, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3516, file: !3373, line: 587, baseType: !56, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3516, file: !3373, line: 592, baseType: !1065, size: 512, offset: 576)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3516, file: !3373, line: 593, baseType: !287, size: 64, offset: 1088)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3516, file: !3373, line: 594, baseType: !1739, size: 256, offset: 1152)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3516, file: !3373, line: 595, baseType: !1262, size: 128, offset: 1408)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3516, file: !3373, line: 596, baseType: !3543, size: 64, offset: 1536)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3516, file: !3373, line: 597, baseType: !626, size: 32, offset: 1600)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3516, file: !3373, line: 598, baseType: !626, size: 32, offset: 1632)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3516, file: !3373, line: 599, baseType: !56, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3516, file: !3373, line: 600, baseType: !56, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3516, file: !3373, line: 601, baseType: !56, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3516, file: !3373, line: 602, baseType: !56, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3516, file: !3373, line: 603, baseType: !56, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3516, file: !3373, line: 604, baseType: !358, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3516, file: !3373, line: 605, baseType: !56, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3516, file: !3373, line: 606, baseType: !56, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3516, file: !3373, line: 607, baseType: !56, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3516, file: !3373, line: 608, baseType: !56, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3516, file: !3373, line: 609, baseType: !56, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3516, file: !3373, line: 610, baseType: !56, size: 32, offset: 1696)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3516, file: !3373, line: 611, baseType: !3585, size: 32, offset: 1728)
!3585 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !3373, line: 524, baseType: !56, size: 32, elements: !3586)
!3586 = !{!3587, !3588, !3589, !3590, !3591}
!3587 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!3588 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!3589 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!3590 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!3591 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3516, file: !3373, line: 612, baseType: !3593, size: 32, offset: 1760)
!3593 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !3373, line: 502, baseType: !56, size: 32, elements: !3594)
!3594 = !{!3595, !3596, !3597, !3598}
!3595 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!3596 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!3597 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!3598 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3516, file: !3373, line: 613, baseType: !6, size: 32, offset: 1792)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3516, file: !3373, line: 614, baseType: !6, size: 32, offset: 1824)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3516, file: !3373, line: 615, baseType: !287, size: 64, offset: 1856)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3516, file: !3373, line: 616, baseType: !287, size: 64, offset: 1920)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3516, file: !3373, line: 617, baseType: !287, size: 64, offset: 1984)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3516, file: !3373, line: 618, baseType: !287, size: 64, offset: 2048)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3516, file: !3373, line: 620, baseType: !3606, size: 64, offset: 2112)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !3373, line: 536, size: 256, elements: !3608)
!3608 = !{!3609, !3610, !3611, !3612}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3607, file: !3373, line: 537, baseType: !195)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3607, file: !3373, line: 538, baseType: !56, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3607, file: !3373, line: 540, baseType: !211, size: 128, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3607, file: !3373, line: 543, baseType: !3613, size: 64, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !3373, line: 534, flags: DIFlagFwdDecl)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3516, file: !3373, line: 621, baseType: !3616, size: 64, offset: 2176)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{null, !3344, !1224}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3516, file: !3373, line: 622, baseType: !3620, size: 64, offset: 2240)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !3373, line: 622, flags: DIFlagFwdDecl)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3035, file: !3036, line: 486, baseType: !3623, size: 64, offset: 4096)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !3373, line: 642, size: 1792, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3632, !3633, !3634}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3624, file: !3373, line: 643, baseType: !3372, size: 1472)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3624, file: !3373, line: 644, baseType: !3376, size: 64, offset: 1472)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3624, file: !3373, line: 645, baseType: !3629, size: 64, offset: 1536)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{null, !3344, !358}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3624, file: !3373, line: 646, baseType: !3376, size: 64, offset: 1600)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3624, file: !3373, line: 647, baseType: !3366, size: 64, offset: 1664)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3624, file: !3373, line: 648, baseType: !3366, size: 64, offset: 1728)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3035, file: !3036, line: 493, baseType: !3636, size: 64, offset: 4160)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3036, line: 493, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3035, file: !3036, line: 499, baseType: !211, size: 128, offset: 4224)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3035, file: !3036, line: 502, baseType: !3640, size: 64, offset: 4352)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3642)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !3036, line: 502, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3035, file: !3036, line: 504, baseType: !3644, size: 64, offset: 4416)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3035, file: !3036, line: 505, baseType: !287, size: 64, offset: 4480)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3035, file: !3036, line: 510, baseType: !287, size: 64, offset: 4544)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3035, file: !3036, line: 511, baseType: !3648, size: 64, offset: 4608)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3650)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !3036, line: 511, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3035, file: !3036, line: 513, baseType: !3652, size: 64, offset: 4672)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !3036, line: 288, size: 128, elements: !3654)
!3654 = !{!3655, !3656}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3653, file: !3036, line: 293, baseType: !56, size: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3653, file: !3036, line: 294, baseType: !37, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3035, file: !3036, line: 515, baseType: !211, size: 128, offset: 4736)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3035, file: !3036, line: 526, baseType: !3659, offset: 4864)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3660, line: 5, elements: !209)
!3660 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3035, file: !3036, line: 528, baseType: !3662, size: 64, offset: 4864)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3664, line: 14, flags: DIFlagFwdDecl)
!3664 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3035, file: !3036, line: 529, baseType: !3666, size: 64, offset: 4928)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3404, line: 22, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3035, file: !3036, line: 534, baseType: !381, size: 32, offset: 4992)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3035, file: !3036, line: 535, baseType: !284, size: 32, offset: 5024)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3035, file: !3036, line: 537, baseType: !195, offset: 5056)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3035, file: !3036, line: 538, baseType: !211, size: 128, offset: 5056)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3035, file: !3036, line: 540, baseType: !3673, size: 64, offset: 5184)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3675, line: 54, size: 960, elements: !3676)
!3675 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3676 = !{!3677, !3678, !3679, !3680, !3681, !3682, !3683, !3687, !3691, !3692, !3693, !3694, !3698, !3702, !3703}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3674, file: !3675, line: 55, baseType: !19, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3674, file: !3675, line: 56, baseType: !506, size: 64, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3674, file: !3675, line: 58, baseType: !3116, size: 64, offset: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3674, file: !3675, line: 59, baseType: !3116, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3674, file: !3675, line: 60, baseType: !3045, size: 64, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3674, file: !3675, line: 62, baseType: !3357, size: 64, offset: 320)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3674, file: !3675, line: 63, baseType: !3684, size: 64, offset: 384)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!353, !3344, !3364}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3674, file: !3675, line: 65, baseType: !3688, size: 64, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{null, !3673}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3674, file: !3675, line: 66, baseType: !3366, size: 64, offset: 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3674, file: !3675, line: 68, baseType: !3376, size: 64, offset: 576)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3674, file: !3675, line: 70, baseType: !3152, size: 64, offset: 640)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3674, file: !3675, line: 71, baseType: !3695, size: 64, offset: 704)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!3175, !3344}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3674, file: !3675, line: 73, baseType: !3699, size: 64, offset: 768)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{null, !3344, !3192, !3193}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3674, file: !3675, line: 75, baseType: !3370, size: 64, offset: 832)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3674, file: !3675, line: 77, baseType: !3492, size: 64, offset: 896)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3035, file: !3036, line: 541, baseType: !3116, size: 64, offset: 5248)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3035, file: !3036, line: 543, baseType: !3366, size: 64, offset: 5312)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3035, file: !3036, line: 544, baseType: !3707, size: 64, offset: 5376)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !3036, line: 45, flags: DIFlagFwdDecl)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3035, file: !3036, line: 545, baseType: !3710, size: 64, offset: 5440)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !3036, line: 47, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3035, file: !3036, line: 547, baseType: !358, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3035, file: !3036, line: 548, baseType: !358, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3035, file: !3036, line: 549, baseType: !358, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3035, file: !3036, line: 550, baseType: !358, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !15, file: !16, line: 194, baseType: !211, size: 128, offset: 9792)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !15, file: !16, line: 195, baseType: !211, size: 128, offset: 9920)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !15, file: !16, line: 197, baseType: !56, size: 32, offset: 10048)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !15, file: !16, line: 198, baseType: !56, size: 32, offset: 10080)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !15, file: !16, line: 199, baseType: !3721, size: 64, offset: 10112)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !15, file: !16, line: 201, baseType: !358, size: 8, offset: 10176)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !15, file: !16, line: 203, baseType: !3724, size: 192, offset: 10240)
!3724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 192, elements: !527)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "ps2dev", scope: !8, file: !9, line: 92, baseType: !3726, size: 576, offset: 128)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !3727, line: 33, size: 576, elements: !3728)
!3727 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/lizy2001/genbc/linux")
!3728 = !{!3729, !3800, !3801, !3802, !3803, !3805, !3806}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !3726, file: !3727, line: 34, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !3732, line: 20, size: 8384, elements: !3733)
!3732 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/lizy2001/genbc/linux")
!3733 = !{!3734, !3735, !3736, !3737, !3738, !3739, !3746, !3747, !3751, !3755, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3795, !3796, !3797, !3798}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !3731, file: !3732, line: 21, baseType: !12, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3731, file: !3732, line: 23, baseType: !2409, size: 256, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !3731, file: !3732, line: 24, baseType: !2409, size: 256, offset: 320)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !3731, file: !3732, line: 25, baseType: !3439, size: 1024, offset: 576)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !3731, file: !3732, line: 27, baseType: !358, size: 8, offset: 1600)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3731, file: !3732, line: 29, baseType: !3740, size: 32, offset: 1608)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !2995, line: 236, size: 32, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3745}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3740, file: !2995, line: 237, baseType: !69, size: 8)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3740, file: !2995, line: 238, baseType: !69, size: 8, offset: 8)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3740, file: !2995, line: 239, baseType: !69, size: 8, offset: 16)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !3740, file: !2995, line: 240, baseType: !69, size: 8, offset: 24)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3731, file: !3732, line: 32, baseType: !195, offset: 1640)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3731, file: !3732, line: 34, baseType: !3748, size: 64, offset: 1664)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!6, !3730, !70}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3731, file: !3732, line: 35, baseType: !3752, size: 64, offset: 1728)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!6, !3730}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3731, file: !3732, line: 36, baseType: !3756, size: 64, offset: 1792)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{null, !3730}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3731, file: !3732, line: 37, baseType: !3752, size: 64, offset: 1856)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3731, file: !3732, line: 38, baseType: !3756, size: 64, offset: 1920)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3731, file: !3732, line: 40, baseType: !3730, size: 64, offset: 1984)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !3731, file: !3732, line: 42, baseType: !211, size: 128, offset: 2048)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3731, file: !3732, line: 43, baseType: !211, size: 128, offset: 2176)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3731, file: !3732, line: 45, baseType: !56, size: 32, offset: 2304)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !3731, file: !3732, line: 51, baseType: !3766, size: 64, offset: 2368)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !3732, line: 67, size: 1792, elements: !3768)
!3768 = !{!3769, !3770, !3773, !3774, !3775, !3786, !3790, !3791, !3792, !3793, !3794}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3767, file: !3732, line: 68, baseType: !19, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3767, file: !3732, line: 70, baseType: !3771, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3740)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !3767, file: !3732, line: 71, baseType: !358, size: 8, offset: 128)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3767, file: !3732, line: 73, baseType: !3756, size: 64, offset: 192)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !3767, file: !3732, line: 74, baseType: !3776, size: 64, offset: 256)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!3779, !3730, !70, !56}
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !3780, line: 17, baseType: !3781)
!3780 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!3781 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !3780, line: 11, baseType: !56, size: 32, elements: !3782)
!3782 = !{!3783, !3784, !3785}
!3783 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!3784 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!3785 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3767, file: !3732, line: 75, baseType: !3787, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!6, !3730, !3766}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !3767, file: !3732, line: 76, baseType: !3752, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !3767, file: !3732, line: 77, baseType: !3752, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3767, file: !3732, line: 78, baseType: !3756, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3767, file: !3732, line: 79, baseType: !3756, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3767, file: !3732, line: 81, baseType: !3417, size: 1152, offset: 640)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !3731, file: !3732, line: 53, baseType: !180, size: 192, offset: 2432)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3731, file: !3732, line: 55, baseType: !3035, size: 5568, offset: 2624)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3731, file: !3732, line: 57, baseType: !211, size: 128, offset: 8192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !3731, file: !3732, line: 63, baseType: !3799, size: 64, offset: 8320)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !3726, file: !3727, line: 37, baseType: !180, size: 192, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3726, file: !3727, line: 40, baseType: !1262, size: 128, offset: 256)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3726, file: !3727, line: 42, baseType: !37, size: 64, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !3726, file: !3727, line: 43, baseType: !3804, size: 64, offset: 448)
!3804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 64, elements: !1108)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !3726, file: !3727, line: 44, baseType: !1130, size: 8, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !3726, file: !3727, line: 45, baseType: !1130, size: 8, offset: 520)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "resync_work", scope: !8, file: !9, line: 93, baseType: !3808, size: 704, offset: 704)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1740, line: 115, size: 704, elements: !3809)
!3809 = !{!3810, !3811, !3812, !3813}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3808, file: !1740, line: 116, baseType: !1739, size: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3808, file: !1740, line: 117, baseType: !2906, size: 320, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3808, file: !1740, line: 120, baseType: !2502, size: 64, offset: 576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3808, file: !1740, line: 121, baseType: !6, size: 32, offset: 640)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !8, file: !9, line: 94, baseType: !19, size: 64, offset: 1408)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !8, file: !9, line: 95, baseType: !19, size: 64, offset: 1472)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !8, file: !9, line: 96, baseType: !3817, size: 64, offset: 1536)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psmouse_protocol", file: !9, line: 77, size: 320, elements: !3820)
!3820 = !{!3821, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3858}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3819, file: !9, line: 78, baseType: !3822, size: 32)
!3822 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_type", file: !9, line: 48, baseType: !56, size: 32, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847}
!3824 = !DIEnumerator(name: "PSMOUSE_NONE", value: 0, isUnsigned: true)
!3825 = !DIEnumerator(name: "PSMOUSE_PS2", value: 1, isUnsigned: true)
!3826 = !DIEnumerator(name: "PSMOUSE_PS2PP", value: 2, isUnsigned: true)
!3827 = !DIEnumerator(name: "PSMOUSE_THINKPS", value: 3, isUnsigned: true)
!3828 = !DIEnumerator(name: "PSMOUSE_GENPS", value: 4, isUnsigned: true)
!3829 = !DIEnumerator(name: "PSMOUSE_IMPS", value: 5, isUnsigned: true)
!3830 = !DIEnumerator(name: "PSMOUSE_IMEX", value: 6, isUnsigned: true)
!3831 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS", value: 7, isUnsigned: true)
!3832 = !DIEnumerator(name: "PSMOUSE_ALPS", value: 8, isUnsigned: true)
!3833 = !DIEnumerator(name: "PSMOUSE_LIFEBOOK", value: 9, isUnsigned: true)
!3834 = !DIEnumerator(name: "PSMOUSE_TRACKPOINT", value: 10, isUnsigned: true)
!3835 = !DIEnumerator(name: "PSMOUSE_TOUCHKIT_PS2", value: 11, isUnsigned: true)
!3836 = !DIEnumerator(name: "PSMOUSE_CORTRON", value: 12, isUnsigned: true)
!3837 = !DIEnumerator(name: "PSMOUSE_HGPK", value: 13, isUnsigned: true)
!3838 = !DIEnumerator(name: "PSMOUSE_ELANTECH", value: 14, isUnsigned: true)
!3839 = !DIEnumerator(name: "PSMOUSE_FSP", value: 15, isUnsigned: true)
!3840 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_RELATIVE", value: 16, isUnsigned: true)
!3841 = !DIEnumerator(name: "PSMOUSE_CYPRESS", value: 17, isUnsigned: true)
!3842 = !DIEnumerator(name: "PSMOUSE_FOCALTECH", value: 18, isUnsigned: true)
!3843 = !DIEnumerator(name: "PSMOUSE_VMMOUSE", value: 19, isUnsigned: true)
!3844 = !DIEnumerator(name: "PSMOUSE_BYD", value: 20, isUnsigned: true)
!3845 = !DIEnumerator(name: "PSMOUSE_SYNAPTICS_SMBUS", value: 21, isUnsigned: true)
!3846 = !DIEnumerator(name: "PSMOUSE_ELANTECH_SMBUS", value: 22, isUnsigned: true)
!3847 = !DIEnumerator(name: "PSMOUSE_AUTO", value: 23, isUnsigned: true)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "maxproto", scope: !3819, file: !9, line: 79, baseType: !358, size: 8, offset: 32)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parity", scope: !3819, file: !9, line: 80, baseType: !358, size: 8, offset: 40)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "try_passthru", scope: !3819, file: !9, line: 81, baseType: !358, size: 8, offset: 48)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_companion", scope: !3819, file: !9, line: 82, baseType: !358, size: 8, offset: 56)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3819, file: !9, line: 83, baseType: !19, size: 64, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !3819, file: !9, line: 84, baseType: !19, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !3819, file: !9, line: 85, baseType: !3855, size: 64, offset: 192)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!6, !7, !358}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !3819, file: !9, line: 86, baseType: !3859, size: 64, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !8, file: !9, line: 97, baseType: !3861, size: 64, offset: 1600)
!3861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 64, elements: !1108)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "badbyte", scope: !8, file: !9, line: 98, baseType: !70, size: 8, offset: 1664)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "pktcnt", scope: !8, file: !9, line: 99, baseType: !70, size: 8, offset: 1672)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "pktsize", scope: !8, file: !9, line: 100, baseType: !70, size: 8, offset: 1680)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "oob_data_type", scope: !8, file: !9, line: 101, baseType: !70, size: 8, offset: 1688)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "extra_buttons", scope: !8, file: !9, line: 102, baseType: !70, size: 8, offset: 1696)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "acks_disable_command", scope: !8, file: !9, line: 103, baseType: !358, size: 8, offset: 1704)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !8, file: !9, line: 104, baseType: !56, size: 32, offset: 1728)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !8, file: !9, line: 105, baseType: !37, size: 64, offset: 1792)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_sync_cnt", scope: !8, file: !9, line: 106, baseType: !37, size: 64, offset: 1856)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "num_resyncs", scope: !8, file: !9, line: 107, baseType: !37, size: 64, offset: 1920)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !8, file: !9, line: 108, baseType: !3873, size: 32, offset: 1984)
!3873 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_state", file: !9, line: 28, baseType: !56, size: 32, elements: !3874)
!3874 = !{!3875, !3876, !3877, !3878, !3879}
!3875 = !DIEnumerator(name: "PSMOUSE_IGNORE", value: 0, isUnsigned: true)
!3876 = !DIEnumerator(name: "PSMOUSE_INITIALIZING", value: 1, isUnsigned: true)
!3877 = !DIEnumerator(name: "PSMOUSE_RESYNCING", value: 2, isUnsigned: true)
!3878 = !DIEnumerator(name: "PSMOUSE_CMD_MODE", value: 3, isUnsigned: true)
!3879 = !DIEnumerator(name: "PSMOUSE_ACTIVATED", value: 4, isUnsigned: true)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "devname", scope: !8, file: !9, line: 109, baseType: !3881, size: 512, offset: 2016)
!3881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 512, elements: !1661)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !8, file: !9, line: 110, baseType: !2409, size: 256, offset: 2528)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !8, file: !9, line: 112, baseType: !56, size: 32, offset: 2784)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !8, file: !9, line: 113, baseType: !56, size: 32, offset: 2816)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "resetafter", scope: !8, file: !9, line: 114, baseType: !56, size: 32, offset: 2848)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "resync_time", scope: !8, file: !9, line: 115, baseType: !56, size: 32, offset: 2880)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "smartscroll", scope: !8, file: !9, line: 116, baseType: !358, size: 8, offset: 2912)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_handler", scope: !8, file: !9, line: 118, baseType: !3889, size: 64, offset: 2944)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!3892, !7}
!3892 = !DIDerivedType(tag: DW_TAG_typedef, name: "psmouse_ret_t", file: !9, line: 41, baseType: !3893)
!3893 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 37, baseType: !56, size: 32, elements: !3894)
!3894 = !{!3895, !3896, !3897}
!3895 = !DIEnumerator(name: "PSMOUSE_BAD_DATA", value: 0, isUnsigned: true)
!3896 = !DIEnumerator(name: "PSMOUSE_GOOD_DATA", value: 1, isUnsigned: true)
!3897 = !DIEnumerator(name: "PSMOUSE_FULL_PACKET", value: 2, isUnsigned: true)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !8, file: !9, line: 119, baseType: !3899, size: 64, offset: 3008)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{null, !7, !56}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "set_resolution", scope: !8, file: !9, line: 120, baseType: !3899, size: 64, offset: 3072)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "set_scale", scope: !8, file: !9, line: 121, baseType: !3904, size: 64, offset: 3136)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !7, !3907}
!3907 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "psmouse_scale", file: !9, line: 43, baseType: !56, size: 32, elements: !3908)
!3908 = !{!3909, !3910}
!3909 = !DIEnumerator(name: "PSMOUSE_SCALE11", value: 0, isUnsigned: true)
!3910 = !DIEnumerator(name: "PSMOUSE_SCALE21", value: 1, isUnsigned: true)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !8, file: !9, line: 123, baseType: !3859, size: 64, offset: 3200)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !8, file: !9, line: 124, baseType: !3859, size: 64, offset: 3264)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !8, file: !9, line: 125, baseType: !3914, size: 64, offset: 3328)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !7}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !8, file: !9, line: 126, baseType: !3914, size: 64, offset: 3392)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !8, file: !9, line: 127, baseType: !3859, size: 64, offset: 3456)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "pt_activate", scope: !8, file: !9, line: 129, baseType: !3914, size: 64, offset: 3520)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "pt_deactivate", scope: !8, file: !9, line: 130, baseType: !3914, size: 64, offset: 3584)
!3921 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3922, retainedTypes: !3935, globals: !3949, splitDebugInlining: false, nameTableKind: None)
!3922 = !{!745, !1081, !1201, !2169, !2855, !2874, !3158, !3426, !3509, !3585, !3593, !3781, !3822, !3873, !3893, !3907, !3923, !3930}
!3923 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !3924, line: 305, baseType: !56, size: 32, elements: !3925)
!3924 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!3925 = !{!3926, !3927, !3928, !3929}
!3926 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!3927 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!3928 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!3929 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!3930 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3931, line: 10, baseType: !56, size: 32, elements: !3932)
!3931 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!3932 = !{!3933, !3934}
!3933 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!3934 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!3935 = !{!622, !6, !12, !3936, !408, !3948}
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "byd_data", file: !3, line: 225, size: 576, elements: !3938)
!3938 = !{!3939, !3940, !3941, !3942, !3943, !3945, !3946, !3947}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3937, file: !3, line: 226, baseType: !2906, size: 320)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "psmouse", scope: !3937, file: !3, line: 227, baseType: !7, size: 64, offset: 320)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "abs_x", scope: !3937, file: !3, line: 228, baseType: !1224, size: 32, offset: 384)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "abs_y", scope: !3937, file: !3, line: 229, baseType: !1224, size: 32, offset: 416)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "last_touch_time", scope: !3937, file: !3, line: 230, baseType: !3944, size: 64, offset: 448)
!3944 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "btn_left", scope: !3937, file: !3, line: 231, baseType: !358, size: 8, offset: 512)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "btn_right", scope: !3937, file: !3, line: 232, baseType: !358, size: 8, offset: 520)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "touch", scope: !3937, file: !3, line: 233, baseType: !358, size: 8, offset: 528)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!3949 = !{!0}
!3950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3951, size: 800, elements: !3956)
!3951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3952)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 345, size: 32, elements: !3953)
!3953 = !{!3954, !3955}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !3952, file: !3, line: 346, baseType: !170, size: 16)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3952, file: !3, line: 347, baseType: !1130, size: 8, offset: 16)
!3956 = !{!3957}
!3957 = !DISubrange(count: 25)
!3958 = !{!"rsp"}
!3959 = !{i32 7, !"Dwarf Version", i32 4}
!3960 = !{i32 2, !"Debug Info Version", i32 3}
!3961 = !{i32 1, !"wchar_size", i32 2}
!3962 = !{i32 1, !"Code Model", i32 2}
!3963 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3964 = distinct !DISubprogram(name: "byd_detect", scope: !3, file: !3, line: 435, type: !3856, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!3965 = !DILocalVariable(name: "psmouse", arg: 1, scope: !3964, file: !3, line: 435, type: !7)
!3966 = !DILocation(line: 435, column: 32, scope: !3964)
!3967 = !DILocalVariable(name: "set_properties", arg: 2, scope: !3964, file: !3, line: 435, type: !358)
!3968 = !DILocation(line: 435, column: 46, scope: !3964)
!3969 = !DILocalVariable(name: "ps2dev", scope: !3964, file: !3, line: 437, type: !3970)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3971 = !DILocation(line: 437, column: 17, scope: !3964)
!3972 = !DILocation(line: 437, column: 27, scope: !3964)
!3973 = !DILocation(line: 437, column: 36, scope: !3964)
!3974 = !DILocalVariable(name: "param", scope: !3964, file: !3, line: 438, type: !3975)
!3975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1130, size: 32, elements: !952)
!3976 = !DILocation(line: 438, column: 5, scope: !3964)
!3977 = !DILocation(line: 440, column: 18, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 440, column: 6)
!3979 = !DILocation(line: 440, column: 26, scope: !3978)
!3980 = !DILocation(line: 440, column: 6, scope: !3978)
!3981 = !DILocation(line: 440, column: 6, scope: !3964)
!3982 = !DILocation(line: 441, column: 3, scope: !3978)
!3983 = !DILocation(line: 442, column: 18, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 442, column: 6)
!3985 = !DILocation(line: 442, column: 26, scope: !3984)
!3986 = !DILocation(line: 442, column: 6, scope: !3984)
!3987 = !DILocation(line: 442, column: 6, scope: !3964)
!3988 = !DILocation(line: 443, column: 3, scope: !3984)
!3989 = !DILocation(line: 444, column: 18, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 444, column: 6)
!3991 = !DILocation(line: 444, column: 26, scope: !3990)
!3992 = !DILocation(line: 444, column: 6, scope: !3990)
!3993 = !DILocation(line: 444, column: 6, scope: !3964)
!3994 = !DILocation(line: 445, column: 3, scope: !3990)
!3995 = !DILocation(line: 446, column: 18, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 446, column: 6)
!3997 = !DILocation(line: 446, column: 26, scope: !3996)
!3998 = !DILocation(line: 446, column: 6, scope: !3996)
!3999 = !DILocation(line: 446, column: 6, scope: !3964)
!4000 = !DILocation(line: 447, column: 3, scope: !3996)
!4001 = !DILocation(line: 448, column: 18, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 448, column: 6)
!4003 = !DILocation(line: 448, column: 26, scope: !4002)
!4004 = !DILocation(line: 448, column: 6, scope: !4002)
!4005 = !DILocation(line: 448, column: 6, scope: !3964)
!4006 = !DILocation(line: 449, column: 3, scope: !4002)
!4007 = !DILocation(line: 451, column: 6, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 451, column: 6)
!4009 = !DILocation(line: 451, column: 15, scope: !4008)
!4010 = !DILocation(line: 451, column: 23, scope: !4008)
!4011 = !DILocation(line: 451, column: 26, scope: !4008)
!4012 = !DILocation(line: 451, column: 35, scope: !4008)
!4013 = !DILocation(line: 451, column: 6, scope: !3964)
!4014 = !DILocation(line: 452, column: 3, scope: !4008)
!4015 = !DILocation(line: 456, column: 6, scope: !4016)
!4016 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 456, column: 6)
!4017 = !DILocation(line: 456, column: 6, scope: !3964)
!4018 = !DILocation(line: 457, column: 3, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4016, file: !3, line: 456, column: 22)
!4020 = !DILocation(line: 457, column: 12, scope: !4019)
!4021 = !DILocation(line: 457, column: 19, scope: !4019)
!4022 = !DILocation(line: 458, column: 3, scope: !4019)
!4023 = !DILocation(line: 458, column: 12, scope: !4019)
!4024 = !DILocation(line: 458, column: 17, scope: !4019)
!4025 = !DILocation(line: 459, column: 2, scope: !4019)
!4026 = !DILocation(line: 461, column: 2, scope: !3964)
!4027 = !DILocation(line: 462, column: 1, scope: !3964)
!4028 = distinct !DISubprogram(name: "byd_init", scope: !3, file: !3, line: 464, type: !4, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4029 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4028, file: !3, line: 464, type: !7)
!4030 = !DILocation(line: 464, column: 30, scope: !4028)
!4031 = !DILocalVariable(name: "dev", scope: !4028, file: !3, line: 466, type: !14)
!4032 = !DILocation(line: 466, column: 20, scope: !4028)
!4033 = !DILocation(line: 466, column: 26, scope: !4028)
!4034 = !DILocation(line: 466, column: 35, scope: !4028)
!4035 = !DILocalVariable(name: "priv", scope: !4028, file: !3, line: 467, type: !3936)
!4036 = !DILocation(line: 467, column: 19, scope: !4028)
!4037 = !DILocation(line: 469, column: 20, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 469, column: 6)
!4039 = !DILocation(line: 469, column: 6, scope: !4038)
!4040 = !DILocation(line: 469, column: 6, scope: !4028)
!4041 = !DILocation(line: 470, column: 3, scope: !4038)
!4042 = !DILocation(line: 472, column: 25, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 472, column: 6)
!4044 = !DILocation(line: 472, column: 6, scope: !4043)
!4045 = !DILocation(line: 472, column: 6, scope: !4028)
!4046 = !DILocation(line: 473, column: 3, scope: !4043)
!4047 = !DILocation(line: 475, column: 9, scope: !4028)
!4048 = !DILocation(line: 475, column: 7, scope: !4028)
!4049 = !DILocation(line: 476, column: 7, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 476, column: 6)
!4051 = !DILocation(line: 476, column: 6, scope: !4028)
!4052 = !DILocation(line: 477, column: 3, scope: !4050)
!4053 = !DILocation(line: 479, column: 18, scope: !4028)
!4054 = !DILocation(line: 479, column: 2, scope: !4028)
!4055 = !DILocation(line: 479, column: 8, scope: !4028)
!4056 = !DILocation(line: 479, column: 16, scope: !4028)
!4057 = !DILocation(line: 480, column: 2, scope: !4028)
!4058 = !DILocation(line: 482, column: 21, scope: !4028)
!4059 = !DILocation(line: 482, column: 2, scope: !4028)
!4060 = !DILocation(line: 482, column: 11, scope: !4028)
!4061 = !DILocation(line: 482, column: 19, scope: !4028)
!4062 = !DILocation(line: 483, column: 2, scope: !4028)
!4063 = !DILocation(line: 483, column: 11, scope: !4028)
!4064 = !DILocation(line: 483, column: 22, scope: !4028)
!4065 = !DILocation(line: 484, column: 2, scope: !4028)
!4066 = !DILocation(line: 484, column: 11, scope: !4028)
!4067 = !DILocation(line: 484, column: 21, scope: !4028)
!4068 = !DILocation(line: 485, column: 2, scope: !4028)
!4069 = !DILocation(line: 485, column: 11, scope: !4028)
!4070 = !DILocation(line: 485, column: 28, scope: !4028)
!4071 = !DILocation(line: 486, column: 2, scope: !4028)
!4072 = !DILocation(line: 486, column: 11, scope: !4028)
!4073 = !DILocation(line: 486, column: 19, scope: !4028)
!4074 = !DILocation(line: 487, column: 2, scope: !4028)
!4075 = !DILocation(line: 487, column: 11, scope: !4028)
!4076 = !DILocation(line: 487, column: 23, scope: !4028)
!4077 = !DILocation(line: 489, column: 32, scope: !4028)
!4078 = !DILocation(line: 489, column: 37, scope: !4028)
!4079 = !DILocation(line: 489, column: 2, scope: !4028)
!4080 = !DILocation(line: 491, column: 23, scope: !4028)
!4081 = !DILocation(line: 491, column: 28, scope: !4028)
!4082 = !DILocation(line: 491, column: 2, scope: !4028)
!4083 = !DILocation(line: 492, column: 29, scope: !4028)
!4084 = !DILocation(line: 492, column: 34, scope: !4028)
!4085 = !DILocation(line: 492, column: 2, scope: !4028)
!4086 = !DILocation(line: 494, column: 22, scope: !4028)
!4087 = !DILocation(line: 494, column: 27, scope: !4028)
!4088 = !DILocation(line: 494, column: 2, scope: !4028)
!4089 = !DILocation(line: 495, column: 23, scope: !4028)
!4090 = !DILocation(line: 495, column: 28, scope: !4028)
!4091 = !DILocation(line: 495, column: 2, scope: !4028)
!4092 = !DILocation(line: 496, column: 26, scope: !4028)
!4093 = !DILocation(line: 496, column: 31, scope: !4028)
!4094 = !DILocation(line: 496, column: 2, scope: !4028)
!4095 = !DILocation(line: 499, column: 20, scope: !4028)
!4096 = !DILocation(line: 499, column: 25, scope: !4028)
!4097 = !DILocation(line: 499, column: 2, scope: !4028)
!4098 = !DILocation(line: 500, column: 23, scope: !4028)
!4099 = !DILocation(line: 500, column: 2, scope: !4028)
!4100 = !DILocation(line: 501, column: 23, scope: !4028)
!4101 = !DILocation(line: 501, column: 2, scope: !4028)
!4102 = !DILocation(line: 502, column: 20, scope: !4028)
!4103 = !DILocation(line: 502, column: 2, scope: !4028)
!4104 = !DILocation(line: 503, column: 20, scope: !4028)
!4105 = !DILocation(line: 503, column: 2, scope: !4028)
!4106 = !DILocation(line: 505, column: 22, scope: !4028)
!4107 = !DILocation(line: 505, column: 27, scope: !4028)
!4108 = !DILocation(line: 505, column: 2, scope: !4028)
!4109 = !DILocation(line: 506, column: 21, scope: !4028)
!4110 = !DILocation(line: 506, column: 26, scope: !4028)
!4111 = !DILocation(line: 506, column: 2, scope: !4028)
!4112 = !DILocation(line: 507, column: 21, scope: !4028)
!4113 = !DILocation(line: 507, column: 26, scope: !4028)
!4114 = !DILocation(line: 507, column: 2, scope: !4028)
!4115 = !DILocation(line: 509, column: 2, scope: !4028)
!4116 = !DILocation(line: 510, column: 1, scope: !4028)
!4117 = !DILocalVariable(name: "psmouse", arg: 1, scope: !2, file: !3, line: 339, type: !7)
!4118 = !DILocation(line: 339, column: 47, scope: !2)
!4119 = !DILocalVariable(name: "ps2dev", scope: !2, file: !3, line: 341, type: !3970)
!4120 = !DILocation(line: 341, column: 17, scope: !2)
!4121 = !DILocation(line: 341, column: 27, scope: !2)
!4122 = !DILocation(line: 341, column: 36, scope: !2)
!4123 = !DILocalVariable(name: "param", scope: !2, file: !3, line: 342, type: !3975)
!4124 = !DILocation(line: 342, column: 5, scope: !2)
!4125 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 343, type: !448)
!4126 = !DILocation(line: 343, column: 9, scope: !2)
!4127 = !DILocation(line: 387, column: 9, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !2, file: !3, line: 387, column: 2)
!4129 = !DILocation(line: 387, column: 7, scope: !4128)
!4130 = !DILocation(line: 387, column: 14, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 387, column: 2)
!4132 = !DILocation(line: 387, column: 16, scope: !4131)
!4133 = !DILocation(line: 387, column: 2, scope: !4128)
!4134 = !DILocation(line: 388, column: 3, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4131, file: !3, line: 387, column: 40)
!4136 = !DILocation(line: 389, column: 18, scope: !4135)
!4137 = !DILocation(line: 389, column: 14, scope: !4135)
!4138 = !DILocation(line: 389, column: 21, scope: !4135)
!4139 = !DILocation(line: 389, column: 3, scope: !4135)
!4140 = !DILocation(line: 389, column: 12, scope: !4135)
!4141 = !DILocation(line: 390, column: 19, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4135, file: !3, line: 390, column: 7)
!4143 = !DILocation(line: 390, column: 27, scope: !4142)
!4144 = !DILocation(line: 390, column: 38, scope: !4142)
!4145 = !DILocation(line: 390, column: 34, scope: !4142)
!4146 = !DILocation(line: 390, column: 41, scope: !4142)
!4147 = !DILocation(line: 390, column: 7, scope: !4142)
!4148 = !DILocation(line: 390, column: 7, scope: !4135)
!4149 = !DILocation(line: 391, column: 4, scope: !4142)
!4150 = !DILocation(line: 392, column: 2, scope: !4135)
!4151 = !DILocation(line: 387, column: 35, scope: !4131)
!4152 = !DILocation(line: 387, column: 2, scope: !4131)
!4153 = distinct !{!4153, !4133, !4154}
!4154 = !DILocation(line: 392, column: 2, scope: !4128)
!4155 = !DILocation(line: 394, column: 20, scope: !2)
!4156 = !DILocation(line: 394, column: 2, scope: !2)
!4157 = !DILocation(line: 395, column: 2, scope: !2)
!4158 = !DILocation(line: 396, column: 1, scope: !2)
!4159 = distinct !DISubprogram(name: "kzalloc", scope: !3924, file: !3924, line: 662, type: !4160, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4160 = !DISubroutineType(types: !4161)
!4161 = !{!12, !448, !622}
!4162 = !DILocalVariable(name: "s", arg: 1, scope: !4163, file: !3924, line: 445, type: !812)
!4163 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !3924, file: !3924, line: 445, type: !4164, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!12, !812, !622, !448}
!4166 = !DILocation(line: 445, column: 72, scope: !4163, inlinedAt: !4167)
!4167 = distinct !DILocation(line: 552, column: 10, scope: !4168, inlinedAt: !4171)
!4168 = distinct !DILexicalBlock(scope: !4169, file: !3924, line: 540, column: 34)
!4169 = distinct !DILexicalBlock(scope: !4170, file: !3924, line: 540, column: 6)
!4170 = distinct !DISubprogram(name: "kmalloc", scope: !3924, file: !3924, line: 538, type: !4160, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4171 = distinct !DILocation(line: 664, column: 9, scope: !4159)
!4172 = !DILocalVariable(name: "flags", arg: 2, scope: !4163, file: !3924, line: 446, type: !622)
!4173 = !DILocation(line: 446, column: 9, scope: !4163, inlinedAt: !4167)
!4174 = !DILocalVariable(name: "size", arg: 3, scope: !4163, file: !3924, line: 446, type: !448)
!4175 = !DILocation(line: 446, column: 23, scope: !4163, inlinedAt: !4167)
!4176 = !DILocalVariable(name: "ret", scope: !4163, file: !3924, line: 448, type: !12)
!4177 = !DILocation(line: 448, column: 8, scope: !4163, inlinedAt: !4167)
!4178 = !DILocalVariable(name: "flags", arg: 1, scope: !4179, file: !3924, line: 318, type: !622)
!4179 = distinct !DISubprogram(name: "kmalloc_type", scope: !3924, file: !3924, line: 318, type: !4180, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!3923, !622}
!4182 = !DILocation(line: 318, column: 67, scope: !4179, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 553, column: 20, scope: !4168, inlinedAt: !4171)
!4184 = !DILocalVariable(name: "size", arg: 1, scope: !4185, file: !3924, line: 346, type: !448)
!4185 = distinct !DISubprogram(name: "kmalloc_index", scope: !3924, file: !3924, line: 346, type: !4186, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!56, !448}
!4188 = !DILocation(line: 346, column: 58, scope: !4185, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 547, column: 11, scope: !4168, inlinedAt: !4171)
!4190 = !DILocalVariable(name: "size", arg: 1, scope: !4191, file: !3924, line: 472, type: !448)
!4191 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !3924, file: !3924, line: 472, type: !4192, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!12, !448, !622, !56}
!4194 = !DILocation(line: 472, column: 28, scope: !4191, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 481, column: 9, scope: !4196, inlinedAt: !4197)
!4196 = distinct !DISubprogram(name: "kmalloc_large", scope: !3924, file: !3924, line: 478, type: !4160, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4197 = distinct !DILocation(line: 545, column: 11, scope: !4198, inlinedAt: !4171)
!4198 = distinct !DILexicalBlock(scope: !4168, file: !3924, line: 544, column: 7)
!4199 = !DILocalVariable(name: "flags", arg: 2, scope: !4191, file: !3924, line: 472, type: !622)
!4200 = !DILocation(line: 472, column: 40, scope: !4191, inlinedAt: !4195)
!4201 = !DILocalVariable(name: "order", arg: 3, scope: !4191, file: !3924, line: 472, type: !56)
!4202 = !DILocation(line: 472, column: 60, scope: !4191, inlinedAt: !4195)
!4203 = !DILocalVariable(name: "size", arg: 1, scope: !4196, file: !3924, line: 478, type: !448)
!4204 = !DILocation(line: 478, column: 51, scope: !4196, inlinedAt: !4197)
!4205 = !DILocalVariable(name: "flags", arg: 2, scope: !4196, file: !3924, line: 478, type: !622)
!4206 = !DILocation(line: 478, column: 63, scope: !4196, inlinedAt: !4197)
!4207 = !DILocalVariable(name: "order", scope: !4196, file: !3924, line: 480, type: !56)
!4208 = !DILocation(line: 480, column: 15, scope: !4196, inlinedAt: !4197)
!4209 = !DILocalVariable(name: "size", arg: 1, scope: !4170, file: !3924, line: 538, type: !448)
!4210 = !DILocation(line: 538, column: 45, scope: !4170, inlinedAt: !4171)
!4211 = !DILocalVariable(name: "flags", arg: 2, scope: !4170, file: !3924, line: 538, type: !622)
!4212 = !DILocation(line: 538, column: 57, scope: !4170, inlinedAt: !4171)
!4213 = !DILocalVariable(name: "index", scope: !4168, file: !3924, line: 542, type: !56)
!4214 = !DILocation(line: 542, column: 16, scope: !4168, inlinedAt: !4171)
!4215 = !DILocalVariable(name: "size", arg: 1, scope: !4159, file: !3924, line: 662, type: !448)
!4216 = !DILocation(line: 662, column: 36, scope: !4159)
!4217 = !DILocalVariable(name: "flags", arg: 2, scope: !4159, file: !3924, line: 662, type: !622)
!4218 = !DILocation(line: 662, column: 48, scope: !4159)
!4219 = !DILocation(line: 664, column: 17, scope: !4159)
!4220 = !DILocation(line: 664, column: 23, scope: !4159)
!4221 = !DILocation(line: 664, column: 29, scope: !4159)
!4222 = !DILocation(line: 540, column: 27, scope: !4169, inlinedAt: !4171)
!4223 = !DILocation(line: 540, column: 6, scope: !4169, inlinedAt: !4171)
!4224 = !DILocation(line: 540, column: 6, scope: !4170, inlinedAt: !4171)
!4225 = !DILocation(line: 544, column: 7, scope: !4198, inlinedAt: !4171)
!4226 = !DILocation(line: 544, column: 12, scope: !4198, inlinedAt: !4171)
!4227 = !DILocation(line: 544, column: 7, scope: !4168, inlinedAt: !4171)
!4228 = !DILocation(line: 545, column: 25, scope: !4198, inlinedAt: !4171)
!4229 = !DILocation(line: 545, column: 31, scope: !4198, inlinedAt: !4171)
!4230 = !DILocation(line: 480, column: 33, scope: !4196, inlinedAt: !4197)
!4231 = !DILocation(line: 480, column: 23, scope: !4196, inlinedAt: !4197)
!4232 = !DILocation(line: 481, column: 29, scope: !4196, inlinedAt: !4197)
!4233 = !DILocation(line: 481, column: 35, scope: !4196, inlinedAt: !4197)
!4234 = !DILocation(line: 481, column: 42, scope: !4196, inlinedAt: !4197)
!4235 = !DILocation(line: 474, column: 23, scope: !4191, inlinedAt: !4195)
!4236 = !DILocation(line: 474, column: 29, scope: !4191, inlinedAt: !4195)
!4237 = !DILocation(line: 474, column: 36, scope: !4191, inlinedAt: !4195)
!4238 = !DILocation(line: 474, column: 9, scope: !4191, inlinedAt: !4195)
!4239 = !DILocation(line: 545, column: 4, scope: !4198, inlinedAt: !4171)
!4240 = !DILocation(line: 547, column: 25, scope: !4168, inlinedAt: !4171)
!4241 = !DILocation(line: 348, column: 7, scope: !4242, inlinedAt: !4189)
!4242 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 348, column: 6)
!4243 = !DILocation(line: 348, column: 6, scope: !4185, inlinedAt: !4189)
!4244 = !DILocation(line: 349, column: 3, scope: !4242, inlinedAt: !4189)
!4245 = !DILocation(line: 351, column: 6, scope: !4246, inlinedAt: !4189)
!4246 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 351, column: 6)
!4247 = !DILocation(line: 351, column: 11, scope: !4246, inlinedAt: !4189)
!4248 = !DILocation(line: 351, column: 6, scope: !4185, inlinedAt: !4189)
!4249 = !DILocation(line: 352, column: 3, scope: !4246, inlinedAt: !4189)
!4250 = !DILocation(line: 354, column: 32, scope: !4251, inlinedAt: !4189)
!4251 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 354, column: 6)
!4252 = !DILocation(line: 354, column: 37, scope: !4251, inlinedAt: !4189)
!4253 = !DILocation(line: 354, column: 42, scope: !4251, inlinedAt: !4189)
!4254 = !DILocation(line: 354, column: 45, scope: !4251, inlinedAt: !4189)
!4255 = !DILocation(line: 354, column: 50, scope: !4251, inlinedAt: !4189)
!4256 = !DILocation(line: 354, column: 6, scope: !4185, inlinedAt: !4189)
!4257 = !DILocation(line: 355, column: 3, scope: !4251, inlinedAt: !4189)
!4258 = !DILocation(line: 356, column: 32, scope: !4259, inlinedAt: !4189)
!4259 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 356, column: 6)
!4260 = !DILocation(line: 356, column: 37, scope: !4259, inlinedAt: !4189)
!4261 = !DILocation(line: 356, column: 43, scope: !4259, inlinedAt: !4189)
!4262 = !DILocation(line: 356, column: 46, scope: !4259, inlinedAt: !4189)
!4263 = !DILocation(line: 356, column: 51, scope: !4259, inlinedAt: !4189)
!4264 = !DILocation(line: 356, column: 6, scope: !4185, inlinedAt: !4189)
!4265 = !DILocation(line: 357, column: 3, scope: !4259, inlinedAt: !4189)
!4266 = !DILocation(line: 358, column: 6, scope: !4267, inlinedAt: !4189)
!4267 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 358, column: 6)
!4268 = !DILocation(line: 358, column: 11, scope: !4267, inlinedAt: !4189)
!4269 = !DILocation(line: 358, column: 6, scope: !4185, inlinedAt: !4189)
!4270 = !DILocation(line: 358, column: 26, scope: !4267, inlinedAt: !4189)
!4271 = !DILocation(line: 359, column: 6, scope: !4272, inlinedAt: !4189)
!4272 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 359, column: 6)
!4273 = !DILocation(line: 359, column: 11, scope: !4272, inlinedAt: !4189)
!4274 = !DILocation(line: 359, column: 6, scope: !4185, inlinedAt: !4189)
!4275 = !DILocation(line: 359, column: 26, scope: !4272, inlinedAt: !4189)
!4276 = !DILocation(line: 360, column: 6, scope: !4277, inlinedAt: !4189)
!4277 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 360, column: 6)
!4278 = !DILocation(line: 360, column: 11, scope: !4277, inlinedAt: !4189)
!4279 = !DILocation(line: 360, column: 6, scope: !4185, inlinedAt: !4189)
!4280 = !DILocation(line: 360, column: 26, scope: !4277, inlinedAt: !4189)
!4281 = !DILocation(line: 361, column: 6, scope: !4282, inlinedAt: !4189)
!4282 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 361, column: 6)
!4283 = !DILocation(line: 361, column: 11, scope: !4282, inlinedAt: !4189)
!4284 = !DILocation(line: 361, column: 6, scope: !4185, inlinedAt: !4189)
!4285 = !DILocation(line: 361, column: 26, scope: !4282, inlinedAt: !4189)
!4286 = !DILocation(line: 362, column: 6, scope: !4287, inlinedAt: !4189)
!4287 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 362, column: 6)
!4288 = !DILocation(line: 362, column: 11, scope: !4287, inlinedAt: !4189)
!4289 = !DILocation(line: 362, column: 6, scope: !4185, inlinedAt: !4189)
!4290 = !DILocation(line: 362, column: 26, scope: !4287, inlinedAt: !4189)
!4291 = !DILocation(line: 363, column: 6, scope: !4292, inlinedAt: !4189)
!4292 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 363, column: 6)
!4293 = !DILocation(line: 363, column: 11, scope: !4292, inlinedAt: !4189)
!4294 = !DILocation(line: 363, column: 6, scope: !4185, inlinedAt: !4189)
!4295 = !DILocation(line: 363, column: 26, scope: !4292, inlinedAt: !4189)
!4296 = !DILocation(line: 364, column: 6, scope: !4297, inlinedAt: !4189)
!4297 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 364, column: 6)
!4298 = !DILocation(line: 364, column: 11, scope: !4297, inlinedAt: !4189)
!4299 = !DILocation(line: 364, column: 6, scope: !4185, inlinedAt: !4189)
!4300 = !DILocation(line: 364, column: 26, scope: !4297, inlinedAt: !4189)
!4301 = !DILocation(line: 365, column: 6, scope: !4302, inlinedAt: !4189)
!4302 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 365, column: 6)
!4303 = !DILocation(line: 365, column: 11, scope: !4302, inlinedAt: !4189)
!4304 = !DILocation(line: 365, column: 6, scope: !4185, inlinedAt: !4189)
!4305 = !DILocation(line: 365, column: 26, scope: !4302, inlinedAt: !4189)
!4306 = !DILocation(line: 366, column: 6, scope: !4307, inlinedAt: !4189)
!4307 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 366, column: 6)
!4308 = !DILocation(line: 366, column: 11, scope: !4307, inlinedAt: !4189)
!4309 = !DILocation(line: 366, column: 6, scope: !4185, inlinedAt: !4189)
!4310 = !DILocation(line: 366, column: 26, scope: !4307, inlinedAt: !4189)
!4311 = !DILocation(line: 367, column: 6, scope: !4312, inlinedAt: !4189)
!4312 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 367, column: 6)
!4313 = !DILocation(line: 367, column: 11, scope: !4312, inlinedAt: !4189)
!4314 = !DILocation(line: 367, column: 6, scope: !4185, inlinedAt: !4189)
!4315 = !DILocation(line: 367, column: 26, scope: !4312, inlinedAt: !4189)
!4316 = !DILocation(line: 368, column: 6, scope: !4317, inlinedAt: !4189)
!4317 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 368, column: 6)
!4318 = !DILocation(line: 368, column: 11, scope: !4317, inlinedAt: !4189)
!4319 = !DILocation(line: 368, column: 6, scope: !4185, inlinedAt: !4189)
!4320 = !DILocation(line: 368, column: 26, scope: !4317, inlinedAt: !4189)
!4321 = !DILocation(line: 369, column: 6, scope: !4322, inlinedAt: !4189)
!4322 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 369, column: 6)
!4323 = !DILocation(line: 369, column: 11, scope: !4322, inlinedAt: !4189)
!4324 = !DILocation(line: 369, column: 6, scope: !4185, inlinedAt: !4189)
!4325 = !DILocation(line: 369, column: 26, scope: !4322, inlinedAt: !4189)
!4326 = !DILocation(line: 370, column: 6, scope: !4327, inlinedAt: !4189)
!4327 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 370, column: 6)
!4328 = !DILocation(line: 370, column: 11, scope: !4327, inlinedAt: !4189)
!4329 = !DILocation(line: 370, column: 6, scope: !4185, inlinedAt: !4189)
!4330 = !DILocation(line: 370, column: 26, scope: !4327, inlinedAt: !4189)
!4331 = !DILocation(line: 371, column: 6, scope: !4332, inlinedAt: !4189)
!4332 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 371, column: 6)
!4333 = !DILocation(line: 371, column: 11, scope: !4332, inlinedAt: !4189)
!4334 = !DILocation(line: 371, column: 6, scope: !4185, inlinedAt: !4189)
!4335 = !DILocation(line: 371, column: 26, scope: !4332, inlinedAt: !4189)
!4336 = !DILocation(line: 372, column: 6, scope: !4337, inlinedAt: !4189)
!4337 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 372, column: 6)
!4338 = !DILocation(line: 372, column: 11, scope: !4337, inlinedAt: !4189)
!4339 = !DILocation(line: 372, column: 6, scope: !4185, inlinedAt: !4189)
!4340 = !DILocation(line: 372, column: 26, scope: !4337, inlinedAt: !4189)
!4341 = !DILocation(line: 373, column: 6, scope: !4342, inlinedAt: !4189)
!4342 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 373, column: 6)
!4343 = !DILocation(line: 373, column: 11, scope: !4342, inlinedAt: !4189)
!4344 = !DILocation(line: 373, column: 6, scope: !4185, inlinedAt: !4189)
!4345 = !DILocation(line: 373, column: 26, scope: !4342, inlinedAt: !4189)
!4346 = !DILocation(line: 374, column: 6, scope: !4347, inlinedAt: !4189)
!4347 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 374, column: 6)
!4348 = !DILocation(line: 374, column: 11, scope: !4347, inlinedAt: !4189)
!4349 = !DILocation(line: 374, column: 6, scope: !4185, inlinedAt: !4189)
!4350 = !DILocation(line: 374, column: 26, scope: !4347, inlinedAt: !4189)
!4351 = !DILocation(line: 375, column: 6, scope: !4352, inlinedAt: !4189)
!4352 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 375, column: 6)
!4353 = !DILocation(line: 375, column: 11, scope: !4352, inlinedAt: !4189)
!4354 = !DILocation(line: 375, column: 6, scope: !4185, inlinedAt: !4189)
!4355 = !DILocation(line: 375, column: 27, scope: !4352, inlinedAt: !4189)
!4356 = !DILocation(line: 376, column: 6, scope: !4357, inlinedAt: !4189)
!4357 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 376, column: 6)
!4358 = !DILocation(line: 376, column: 11, scope: !4357, inlinedAt: !4189)
!4359 = !DILocation(line: 376, column: 6, scope: !4185, inlinedAt: !4189)
!4360 = !DILocation(line: 376, column: 32, scope: !4357, inlinedAt: !4189)
!4361 = !DILocation(line: 377, column: 6, scope: !4362, inlinedAt: !4189)
!4362 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 377, column: 6)
!4363 = !DILocation(line: 377, column: 11, scope: !4362, inlinedAt: !4189)
!4364 = !DILocation(line: 377, column: 6, scope: !4185, inlinedAt: !4189)
!4365 = !DILocation(line: 377, column: 32, scope: !4362, inlinedAt: !4189)
!4366 = !DILocation(line: 378, column: 6, scope: !4367, inlinedAt: !4189)
!4367 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 378, column: 6)
!4368 = !DILocation(line: 378, column: 11, scope: !4367, inlinedAt: !4189)
!4369 = !DILocation(line: 378, column: 6, scope: !4185, inlinedAt: !4189)
!4370 = !DILocation(line: 378, column: 32, scope: !4367, inlinedAt: !4189)
!4371 = !DILocation(line: 379, column: 6, scope: !4372, inlinedAt: !4189)
!4372 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 379, column: 6)
!4373 = !DILocation(line: 379, column: 11, scope: !4372, inlinedAt: !4189)
!4374 = !DILocation(line: 379, column: 6, scope: !4185, inlinedAt: !4189)
!4375 = !DILocation(line: 379, column: 33, scope: !4372, inlinedAt: !4189)
!4376 = !DILocation(line: 380, column: 6, scope: !4377, inlinedAt: !4189)
!4377 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 380, column: 6)
!4378 = !DILocation(line: 380, column: 11, scope: !4377, inlinedAt: !4189)
!4379 = !DILocation(line: 380, column: 6, scope: !4185, inlinedAt: !4189)
!4380 = !DILocation(line: 380, column: 33, scope: !4377, inlinedAt: !4189)
!4381 = !DILocation(line: 381, column: 6, scope: !4382, inlinedAt: !4189)
!4382 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 381, column: 6)
!4383 = !DILocation(line: 381, column: 11, scope: !4382, inlinedAt: !4189)
!4384 = !DILocation(line: 381, column: 6, scope: !4185, inlinedAt: !4189)
!4385 = !DILocation(line: 381, column: 33, scope: !4382, inlinedAt: !4189)
!4386 = !DILocation(line: 382, column: 2, scope: !4387, inlinedAt: !4189)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !3924, line: 382, column: 2)
!4388 = distinct !DILexicalBlock(scope: !4185, file: !3924, line: 382, column: 2)
!4389 = !{i32 -2142849977, i32 -2142849948, i32 -2142849902, i32 -2142849844, i32 -2142849790, i32 -2142849736, i32 -2142849681, i32 -2142849650}
!4390 = !DILocation(line: 382, column: 2, scope: !4391, inlinedAt: !4189)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !3924, line: 382, column: 2)
!4392 = distinct !DILexicalBlock(scope: !4388, file: !3924, line: 382, column: 2)
!4393 = !{i32 -2142849207, i32 -2142849200, i32 -2142849146, i32 -2142849115, i32 -2142849085}
!4394 = !DILocation(line: 382, column: 2, scope: !4392, inlinedAt: !4189)
!4395 = !DILocation(line: 386, column: 1, scope: !4185, inlinedAt: !4189)
!4396 = !DILocation(line: 547, column: 9, scope: !4168, inlinedAt: !4171)
!4397 = !DILocation(line: 549, column: 8, scope: !4398, inlinedAt: !4171)
!4398 = distinct !DILexicalBlock(scope: !4168, file: !3924, line: 549, column: 7)
!4399 = !DILocation(line: 549, column: 7, scope: !4168, inlinedAt: !4171)
!4400 = !DILocation(line: 550, column: 4, scope: !4398, inlinedAt: !4171)
!4401 = !DILocation(line: 553, column: 33, scope: !4168, inlinedAt: !4171)
!4402 = !DILocation(line: 325, column: 6, scope: !4403, inlinedAt: !4183)
!4403 = distinct !DILexicalBlock(scope: !4179, file: !3924, line: 325, column: 6)
!4404 = !DILocation(line: 325, column: 6, scope: !4179, inlinedAt: !4183)
!4405 = !DILocation(line: 326, column: 3, scope: !4403, inlinedAt: !4183)
!4406 = !DILocation(line: 332, column: 9, scope: !4179, inlinedAt: !4183)
!4407 = !DILocation(line: 332, column: 15, scope: !4179, inlinedAt: !4183)
!4408 = !DILocation(line: 332, column: 2, scope: !4179, inlinedAt: !4183)
!4409 = !DILocation(line: 336, column: 1, scope: !4179, inlinedAt: !4183)
!4410 = !DILocation(line: 553, column: 5, scope: !4168, inlinedAt: !4171)
!4411 = !DILocation(line: 553, column: 41, scope: !4168, inlinedAt: !4171)
!4412 = !DILocation(line: 554, column: 5, scope: !4168, inlinedAt: !4171)
!4413 = !DILocation(line: 554, column: 12, scope: !4168, inlinedAt: !4171)
!4414 = !DILocation(line: 448, column: 31, scope: !4163, inlinedAt: !4167)
!4415 = !DILocation(line: 448, column: 34, scope: !4163, inlinedAt: !4167)
!4416 = !DILocation(line: 448, column: 14, scope: !4163, inlinedAt: !4167)
!4417 = !DILocation(line: 450, column: 22, scope: !4163, inlinedAt: !4167)
!4418 = !DILocation(line: 450, column: 25, scope: !4163, inlinedAt: !4167)
!4419 = !DILocation(line: 450, column: 30, scope: !4163, inlinedAt: !4167)
!4420 = !DILocation(line: 450, column: 36, scope: !4163, inlinedAt: !4167)
!4421 = !DILocation(line: 450, column: 8, scope: !4163, inlinedAt: !4167)
!4422 = !DILocation(line: 450, column: 6, scope: !4163, inlinedAt: !4167)
!4423 = !DILocation(line: 451, column: 9, scope: !4163, inlinedAt: !4167)
!4424 = !DILocation(line: 552, column: 3, scope: !4168, inlinedAt: !4171)
!4425 = !DILocation(line: 557, column: 19, scope: !4170, inlinedAt: !4171)
!4426 = !DILocation(line: 557, column: 25, scope: !4170, inlinedAt: !4171)
!4427 = !DILocation(line: 557, column: 9, scope: !4170, inlinedAt: !4171)
!4428 = !DILocation(line: 557, column: 2, scope: !4170, inlinedAt: !4171)
!4429 = !DILocation(line: 558, column: 1, scope: !4170, inlinedAt: !4171)
!4430 = !DILocation(line: 664, column: 2, scope: !4159)
!4431 = distinct !DISubprogram(name: "byd_clear_touch", scope: !3, file: !3, line: 252, type: !2913, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4432 = !DILocalVariable(name: "t", arg: 1, scope: !4431, file: !3, line: 252, type: !2915)
!4433 = !DILocation(line: 252, column: 48, scope: !4431)
!4434 = !DILocalVariable(name: "priv", scope: !4431, file: !3, line: 254, type: !3936)
!4435 = !DILocation(line: 254, column: 19, scope: !4431)
!4436 = !DILocalVariable(name: "__mptr", scope: !4437, file: !3, line: 254, type: !12)
!4437 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 254, column: 26)
!4438 = !DILocation(line: 254, column: 26, scope: !4437)
!4439 = !DILocation(line: 254, column: 26, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 254, column: 26)
!4441 = !DILocalVariable(name: "psmouse", scope: !4431, file: !3, line: 255, type: !7)
!4442 = !DILocation(line: 255, column: 18, scope: !4431)
!4443 = !DILocation(line: 255, column: 28, scope: !4431)
!4444 = !DILocation(line: 255, column: 34, scope: !4431)
!4445 = !DILocation(line: 257, column: 17, scope: !4431)
!4446 = !DILocation(line: 257, column: 26, scope: !4431)
!4447 = !DILocation(line: 257, column: 33, scope: !4431)
!4448 = !DILocation(line: 257, column: 2, scope: !4431)
!4449 = !DILocation(line: 258, column: 2, scope: !4431)
!4450 = !DILocation(line: 258, column: 8, scope: !4431)
!4451 = !DILocation(line: 258, column: 14, scope: !4431)
!4452 = !DILocation(line: 260, column: 19, scope: !4431)
!4453 = !DILocation(line: 260, column: 2, scope: !4431)
!4454 = !DILocation(line: 262, column: 20, scope: !4431)
!4455 = !DILocation(line: 262, column: 29, scope: !4431)
!4456 = !DILocation(line: 262, column: 36, scope: !4431)
!4457 = !DILocation(line: 262, column: 2, scope: !4431)
!4458 = !DILocation(line: 269, column: 2, scope: !4431)
!4459 = !DILocation(line: 269, column: 8, scope: !4431)
!4460 = !DILocation(line: 269, column: 14, scope: !4431)
!4461 = !DILocation(line: 270, column: 2, scope: !4431)
!4462 = !DILocation(line: 270, column: 8, scope: !4431)
!4463 = !DILocation(line: 270, column: 14, scope: !4431)
!4464 = !DILocation(line: 271, column: 1, scope: !4431)
!4465 = distinct !DISubprogram(name: "byd_disconnect", scope: !3, file: !3, line: 424, type: !3915, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4466 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4465, file: !3, line: 424, type: !7)
!4467 = !DILocation(line: 424, column: 44, scope: !4465)
!4468 = !DILocalVariable(name: "priv", scope: !4465, file: !3, line: 426, type: !3936)
!4469 = !DILocation(line: 426, column: 19, scope: !4465)
!4470 = !DILocation(line: 426, column: 26, scope: !4465)
!4471 = !DILocation(line: 426, column: 35, scope: !4465)
!4472 = !DILocation(line: 428, column: 6, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 428, column: 6)
!4474 = !DILocation(line: 428, column: 6, scope: !4465)
!4475 = !DILocation(line: 429, column: 14, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 428, column: 12)
!4477 = !DILocation(line: 429, column: 20, scope: !4476)
!4478 = !DILocation(line: 429, column: 3, scope: !4476)
!4479 = !DILocation(line: 430, column: 9, scope: !4476)
!4480 = !DILocation(line: 430, column: 18, scope: !4476)
!4481 = !DILocation(line: 430, column: 3, scope: !4476)
!4482 = !DILocation(line: 431, column: 3, scope: !4476)
!4483 = !DILocation(line: 431, column: 12, scope: !4476)
!4484 = !DILocation(line: 431, column: 20, scope: !4476)
!4485 = !DILocation(line: 432, column: 2, scope: !4476)
!4486 = !DILocation(line: 433, column: 1, scope: !4465)
!4487 = distinct !DISubprogram(name: "byd_reconnect", scope: !3, file: !3, line: 398, type: !4, scopeLine: 399, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4488 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4487, file: !3, line: 398, type: !7)
!4489 = !DILocation(line: 398, column: 42, scope: !4487)
!4490 = !DILocalVariable(name: "retry", scope: !4487, file: !3, line: 400, type: !6)
!4491 = !DILocation(line: 400, column: 6, scope: !4487)
!4492 = !DILocalVariable(name: "error", scope: !4487, file: !3, line: 400, type: !6)
!4493 = !DILocation(line: 400, column: 17, scope: !4487)
!4494 = !DILocation(line: 403, column: 2, scope: !4487)
!4495 = !DILocation(line: 404, column: 17, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 403, column: 5)
!4497 = !DILocation(line: 404, column: 3, scope: !4496)
!4498 = !DILocation(line: 405, column: 7, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 405, column: 7)
!4500 = !DILocation(line: 405, column: 7, scope: !4496)
!4501 = !DILocation(line: 406, column: 4, scope: !4499)
!4502 = !DILocation(line: 407, column: 22, scope: !4496)
!4503 = !DILocation(line: 407, column: 11, scope: !4496)
!4504 = !DILocation(line: 407, column: 9, scope: !4496)
!4505 = !DILocation(line: 408, column: 2, scope: !4496)
!4506 = !DILocation(line: 408, column: 11, scope: !4487)
!4507 = !DILocation(line: 408, column: 17, scope: !4487)
!4508 = !DILocation(line: 408, column: 20, scope: !4487)
!4509 = !DILocation(line: 408, column: 28, scope: !4487)
!4510 = !DILocation(line: 0, scope: !4487)
!4511 = distinct !{!4511, !4494, !4512}
!4512 = !DILocation(line: 408, column: 31, scope: !4487)
!4513 = !DILocation(line: 410, column: 6, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 410, column: 6)
!4515 = !DILocation(line: 410, column: 6, scope: !4487)
!4516 = !DILocation(line: 411, column: 10, scope: !4514)
!4517 = !DILocation(line: 411, column: 3, scope: !4514)
!4518 = !DILocation(line: 415, column: 29, scope: !4487)
!4519 = !DILocation(line: 415, column: 10, scope: !4487)
!4520 = !DILocation(line: 415, column: 8, scope: !4487)
!4521 = !DILocation(line: 416, column: 6, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 416, column: 6)
!4523 = !DILocation(line: 416, column: 6, scope: !4487)
!4524 = !DILocation(line: 417, column: 3, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 416, column: 13)
!4526 = !DILocation(line: 418, column: 10, scope: !4525)
!4527 = !DILocation(line: 418, column: 3, scope: !4525)
!4528 = !DILocation(line: 421, column: 2, scope: !4487)
!4529 = !DILocation(line: 422, column: 1, scope: !4487)
!4530 = distinct !DISubprogram(name: "byd_process_byte", scope: !3, file: !3, line: 273, type: !3890, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4531 = !DILocalVariable(name: "m", arg: 1, scope: !4532, file: !4533, line: 363, type: !2536)
!4532 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4533, file: !4533, line: 363, type: !4534, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4533 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!37, !2536}
!4536 = !DILocation(line: 363, column: 74, scope: !4532, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 333, column: 37, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 331, column: 19)
!4539 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 331, column: 6)
!4540 = !DILocation(line: 363, column: 74, scope: !4532, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 294, column: 29, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 291, column: 21)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 291, column: 7)
!4544 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 288, column: 18)
!4545 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4530, file: !3, line: 273, type: !7)
!4546 = !DILocation(line: 273, column: 55, scope: !4530)
!4547 = !DILocalVariable(name: "priv", scope: !4530, file: !3, line: 275, type: !3936)
!4548 = !DILocation(line: 275, column: 19, scope: !4530)
!4549 = !DILocation(line: 275, column: 26, scope: !4530)
!4550 = !DILocation(line: 275, column: 35, scope: !4530)
!4551 = !DILocalVariable(name: "pkt", scope: !4530, file: !3, line: 276, type: !4552)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!4553 = !DILocation(line: 276, column: 6, scope: !4530)
!4554 = !DILocation(line: 276, column: 12, scope: !4530)
!4555 = !DILocation(line: 276, column: 21, scope: !4530)
!4556 = !DILocation(line: 278, column: 6, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 278, column: 6)
!4558 = !DILocation(line: 278, column: 15, scope: !4557)
!4559 = !DILocation(line: 278, column: 22, scope: !4557)
!4560 = !DILocation(line: 278, column: 26, scope: !4557)
!4561 = !DILocation(line: 278, column: 31, scope: !4557)
!4562 = !DILocation(line: 278, column: 38, scope: !4557)
!4563 = !DILocation(line: 278, column: 6, scope: !4530)
!4564 = !DILocation(line: 279, column: 3, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 278, column: 55)
!4566 = !DILocation(line: 281, column: 3, scope: !4565)
!4567 = !DILocation(line: 284, column: 6, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 284, column: 6)
!4569 = !DILocation(line: 284, column: 15, scope: !4568)
!4570 = !DILocation(line: 284, column: 24, scope: !4568)
!4571 = !DILocation(line: 284, column: 33, scope: !4568)
!4572 = !DILocation(line: 284, column: 22, scope: !4568)
!4573 = !DILocation(line: 284, column: 6, scope: !4530)
!4574 = !DILocation(line: 285, column: 3, scope: !4568)
!4575 = !DILocation(line: 288, column: 10, scope: !4530)
!4576 = !DILocation(line: 288, column: 2, scope: !4530)
!4577 = !DILocation(line: 291, column: 8, scope: !4543)
!4578 = !DILocation(line: 291, column: 14, scope: !4543)
!4579 = !DILocation(line: 291, column: 7, scope: !4544)
!4580 = !DILocalVariable(name: "tap_time", scope: !4542, file: !3, line: 293, type: !3944)
!4581 = !DILocation(line: 293, column: 20, scope: !4542)
!4582 = !DILocation(line: 294, column: 5, scope: !4542)
!4583 = !DILocation(line: 294, column: 11, scope: !4542)
!4584 = !DILocation(line: 365, column: 27, scope: !4585, inlinedAt: !4541)
!4585 = distinct !DILexicalBlock(scope: !4532, file: !4533, line: 365, column: 6)
!4586 = !DILocation(line: 365, column: 6, scope: !4585, inlinedAt: !4541)
!4587 = !DILocation(line: 365, column: 6, scope: !4532, inlinedAt: !4541)
!4588 = !DILocation(line: 366, column: 12, scope: !4589, inlinedAt: !4541)
!4589 = distinct !DILexicalBlock(scope: !4590, file: !4533, line: 366, column: 7)
!4590 = distinct !DILexicalBlock(scope: !4585, file: !4533, line: 365, column: 31)
!4591 = !DILocation(line: 366, column: 14, scope: !4589, inlinedAt: !4541)
!4592 = !DILocation(line: 366, column: 7, scope: !4590, inlinedAt: !4541)
!4593 = !DILocation(line: 367, column: 4, scope: !4589, inlinedAt: !4541)
!4594 = !DILocation(line: 368, column: 28, scope: !4590, inlinedAt: !4541)
!4595 = !DILocation(line: 368, column: 10, scope: !4590, inlinedAt: !4541)
!4596 = !DILocation(line: 368, column: 3, scope: !4590, inlinedAt: !4541)
!4597 = !DILocation(line: 370, column: 29, scope: !4598, inlinedAt: !4541)
!4598 = distinct !DILexicalBlock(scope: !4585, file: !4533, line: 369, column: 9)
!4599 = !DILocation(line: 370, column: 10, scope: !4598, inlinedAt: !4541)
!4600 = !DILocation(line: 370, column: 3, scope: !4598, inlinedAt: !4541)
!4601 = !DILocation(line: 372, column: 1, scope: !4532, inlinedAt: !4541)
!4602 = !DILocation(line: 294, column: 27, scope: !4542)
!4603 = !DILocation(line: 295, column: 18, scope: !4542)
!4604 = !DILocation(line: 295, column: 4, scope: !4542)
!4605 = !DILocation(line: 295, column: 10, scope: !4542)
!4606 = !DILocation(line: 295, column: 16, scope: !4542)
!4607 = !DILocation(line: 298, column: 18, scope: !4542)
!4608 = !DILocation(line: 298, column: 25, scope: !4542)
!4609 = !DILocation(line: 298, column: 4, scope: !4542)
!4610 = !DILocation(line: 298, column: 10, scope: !4542)
!4611 = !DILocation(line: 298, column: 16, scope: !4542)
!4612 = !DILocation(line: 299, column: 25, scope: !4542)
!4613 = !DILocation(line: 299, column: 23, scope: !4542)
!4614 = !DILocation(line: 299, column: 33, scope: !4542)
!4615 = !DILocation(line: 299, column: 4, scope: !4542)
!4616 = !DILocation(line: 299, column: 10, scope: !4542)
!4617 = !DILocation(line: 299, column: 16, scope: !4542)
!4618 = !DILocation(line: 300, column: 3, scope: !4542)
!4619 = !DILocation(line: 301, column: 3, scope: !4544)
!4620 = !DILocalVariable(name: "signx", scope: !4621, file: !3, line: 305, type: !284)
!4621 = distinct !DILexicalBlock(scope: !4544, file: !3, line: 302, column: 28)
!4622 = !DILocation(line: 305, column: 7, scope: !4621)
!4623 = !DILocation(line: 305, column: 15, scope: !4621)
!4624 = !DILocation(line: 305, column: 22, scope: !4621)
!4625 = !DILocalVariable(name: "signy", scope: !4621, file: !3, line: 306, type: !284)
!4626 = !DILocation(line: 306, column: 7, scope: !4621)
!4627 = !DILocation(line: 306, column: 15, scope: !4621)
!4628 = !DILocation(line: 306, column: 22, scope: !4621)
!4629 = !DILocalVariable(name: "dx", scope: !4621, file: !3, line: 307, type: !1224)
!4630 = !DILocation(line: 307, column: 7, scope: !4621)
!4631 = !DILocation(line: 307, column: 12, scope: !4621)
!4632 = !DILocation(line: 307, column: 26, scope: !4621)
!4633 = !DILocation(line: 307, column: 20, scope: !4621)
!4634 = !DILocation(line: 307, column: 18, scope: !4621)
!4635 = !DILocalVariable(name: "dy", scope: !4621, file: !3, line: 308, type: !1224)
!4636 = !DILocation(line: 308, column: 7, scope: !4621)
!4637 = !DILocation(line: 308, column: 12, scope: !4621)
!4638 = !DILocation(line: 308, column: 26, scope: !4621)
!4639 = !DILocation(line: 308, column: 20, scope: !4621)
!4640 = !DILocation(line: 308, column: 18, scope: !4621)
!4641 = !DILocation(line: 311, column: 18, scope: !4621)
!4642 = !DILocation(line: 311, column: 21, scope: !4621)
!4643 = !DILocation(line: 311, column: 3, scope: !4621)
!4644 = !DILocation(line: 311, column: 9, scope: !4621)
!4645 = !DILocation(line: 311, column: 15, scope: !4621)
!4646 = !DILocation(line: 312, column: 18, scope: !4621)
!4647 = !DILocation(line: 312, column: 21, scope: !4621)
!4648 = !DILocation(line: 312, column: 3, scope: !4621)
!4649 = !DILocation(line: 312, column: 9, scope: !4621)
!4650 = !DILocation(line: 312, column: 15, scope: !4621)
!4651 = !DILocation(line: 314, column: 3, scope: !4621)
!4652 = !DILocation(line: 314, column: 9, scope: !4621)
!4653 = !DILocation(line: 314, column: 15, scope: !4621)
!4654 = !DILocation(line: 315, column: 3, scope: !4621)
!4655 = !DILocation(line: 318, column: 3, scope: !4544)
!4656 = !DILocation(line: 322, column: 3, scope: !4544)
!4657 = !DILocation(line: 325, column: 19, scope: !4530)
!4658 = !DILocation(line: 325, column: 26, scope: !4530)
!4659 = !DILocation(line: 325, column: 2, scope: !4530)
!4660 = !DILocation(line: 325, column: 8, scope: !4530)
!4661 = !DILocation(line: 325, column: 17, scope: !4530)
!4662 = !DILocation(line: 326, column: 20, scope: !4530)
!4663 = !DILocation(line: 326, column: 27, scope: !4530)
!4664 = !DILocation(line: 326, column: 2, scope: !4530)
!4665 = !DILocation(line: 326, column: 8, scope: !4530)
!4666 = !DILocation(line: 326, column: 18, scope: !4530)
!4667 = !DILocation(line: 328, column: 19, scope: !4530)
!4668 = !DILocation(line: 328, column: 2, scope: !4530)
!4669 = !DILocation(line: 331, column: 6, scope: !4539)
!4670 = !DILocation(line: 331, column: 12, scope: !4539)
!4671 = !DILocation(line: 331, column: 6, scope: !4530)
!4672 = !DILocation(line: 332, column: 27, scope: !4538)
!4673 = !DILocation(line: 332, column: 3, scope: !4538)
!4674 = !DILocation(line: 332, column: 9, scope: !4538)
!4675 = !DILocation(line: 332, column: 25, scope: !4538)
!4676 = !DILocation(line: 333, column: 14, scope: !4538)
!4677 = !DILocation(line: 333, column: 20, scope: !4538)
!4678 = !DILocation(line: 333, column: 27, scope: !4538)
!4679 = !DILocation(line: 365, column: 27, scope: !4585, inlinedAt: !4537)
!4680 = !DILocation(line: 365, column: 6, scope: !4585, inlinedAt: !4537)
!4681 = !DILocation(line: 365, column: 6, scope: !4532, inlinedAt: !4537)
!4682 = !DILocation(line: 366, column: 12, scope: !4589, inlinedAt: !4537)
!4683 = !DILocation(line: 366, column: 14, scope: !4589, inlinedAt: !4537)
!4684 = !DILocation(line: 366, column: 7, scope: !4590, inlinedAt: !4537)
!4685 = !DILocation(line: 367, column: 4, scope: !4589, inlinedAt: !4537)
!4686 = !DILocation(line: 368, column: 28, scope: !4590, inlinedAt: !4537)
!4687 = !DILocation(line: 368, column: 10, scope: !4590, inlinedAt: !4537)
!4688 = !DILocation(line: 368, column: 3, scope: !4590, inlinedAt: !4537)
!4689 = !DILocation(line: 370, column: 29, scope: !4598, inlinedAt: !4537)
!4690 = !DILocation(line: 370, column: 10, scope: !4598, inlinedAt: !4537)
!4691 = !DILocation(line: 370, column: 3, scope: !4598, inlinedAt: !4537)
!4692 = !DILocation(line: 372, column: 1, scope: !4532, inlinedAt: !4537)
!4693 = !DILocation(line: 333, column: 35, scope: !4538)
!4694 = !DILocation(line: 333, column: 3, scope: !4538)
!4695 = !DILocation(line: 334, column: 2, scope: !4538)
!4696 = !DILocation(line: 336, column: 2, scope: !4530)
!4697 = !DILocation(line: 337, column: 1, scope: !4530)
!4698 = distinct !DISubprogram(name: "__set_bit", scope: !4699, file: !4699, line: 25, type: !4700, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4699 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4700 = !DISubroutineType(types: !4701)
!4701 = !{null, !408, !4702}
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!4703 = !DILocalVariable(name: "nr", arg: 1, scope: !4704, file: !4705, line: 66, type: !408)
!4704 = distinct !DISubprogram(name: "arch___set_bit", scope: !4705, file: !4705, line: 66, type: !4700, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4705 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4706 = !DILocation(line: 66, column: 21, scope: !4704, inlinedAt: !4707)
!4707 = distinct !DILocation(line: 28, column: 2, scope: !4698)
!4708 = !DILocalVariable(name: "addr", arg: 2, scope: !4704, file: !4705, line: 66, type: !4702)
!4709 = !DILocation(line: 66, column: 49, scope: !4704, inlinedAt: !4707)
!4710 = !DILocalVariable(name: "v", arg: 1, scope: !4711, file: !4712, line: 39, type: !4715)
!4711 = distinct !DISubprogram(name: "instrument_write", scope: !4712, file: !4712, line: 39, type: !4713, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4712 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4713 = !DISubroutineType(types: !4714)
!4714 = !{null, !4715, !448}
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4717)
!4717 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4718 = !DILocation(line: 39, column: 67, scope: !4711, inlinedAt: !4719)
!4719 = distinct !DILocation(line: 27, column: 2, scope: !4698)
!4720 = !DILocalVariable(name: "size", arg: 2, scope: !4711, file: !4712, line: 39, type: !448)
!4721 = !DILocation(line: 39, column: 77, scope: !4711, inlinedAt: !4719)
!4722 = !DILocalVariable(name: "nr", arg: 1, scope: !4698, file: !4699, line: 25, type: !408)
!4723 = !DILocation(line: 25, column: 35, scope: !4698)
!4724 = !DILocalVariable(name: "addr", arg: 2, scope: !4698, file: !4699, line: 25, type: !4702)
!4725 = !DILocation(line: 25, column: 63, scope: !4698)
!4726 = !DILocation(line: 27, column: 19, scope: !4698)
!4727 = !DILocation(line: 27, column: 26, scope: !4698)
!4728 = !DILocation(line: 27, column: 24, scope: !4698)
!4729 = !DILocation(line: 41, column: 20, scope: !4711, inlinedAt: !4719)
!4730 = !DILocation(line: 41, column: 23, scope: !4711, inlinedAt: !4719)
!4731 = !DILocation(line: 41, column: 2, scope: !4711, inlinedAt: !4719)
!4732 = !DILocation(line: 42, column: 2, scope: !4711, inlinedAt: !4719)
!4733 = !DILocation(line: 28, column: 17, scope: !4698)
!4734 = !DILocation(line: 28, column: 21, scope: !4698)
!4735 = !DILocation(line: 68, column: 44, scope: !4704, inlinedAt: !4707)
!4736 = !DILocation(line: 68, column: 56, scope: !4704, inlinedAt: !4707)
!4737 = !DILocation(line: 68, column: 2, scope: !4704, inlinedAt: !4707)
!4738 = !{i32 -2147197359}
!4739 = !DILocation(line: 29, column: 1, scope: !4698)
!4740 = distinct !DISubprogram(name: "__clear_bit", scope: !4699, file: !4699, line: 40, type: !4700, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4741 = !DILocalVariable(name: "nr", arg: 1, scope: !4742, file: !4705, line: 92, type: !408)
!4742 = distinct !DISubprogram(name: "arch___clear_bit", scope: !4705, file: !4705, line: 92, type: !4700, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4743 = !DILocation(line: 92, column: 23, scope: !4742, inlinedAt: !4744)
!4744 = distinct !DILocation(line: 43, column: 2, scope: !4740)
!4745 = !DILocalVariable(name: "addr", arg: 2, scope: !4742, file: !4705, line: 92, type: !4702)
!4746 = !DILocation(line: 92, column: 51, scope: !4742, inlinedAt: !4744)
!4747 = !DILocation(line: 39, column: 67, scope: !4711, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 42, column: 2, scope: !4740)
!4749 = !DILocation(line: 39, column: 77, scope: !4711, inlinedAt: !4748)
!4750 = !DILocalVariable(name: "nr", arg: 1, scope: !4740, file: !4699, line: 40, type: !408)
!4751 = !DILocation(line: 40, column: 37, scope: !4740)
!4752 = !DILocalVariable(name: "addr", arg: 2, scope: !4740, file: !4699, line: 40, type: !4702)
!4753 = !DILocation(line: 40, column: 65, scope: !4740)
!4754 = !DILocation(line: 42, column: 19, scope: !4740)
!4755 = !DILocation(line: 42, column: 26, scope: !4740)
!4756 = !DILocation(line: 42, column: 24, scope: !4740)
!4757 = !DILocation(line: 41, column: 20, scope: !4711, inlinedAt: !4748)
!4758 = !DILocation(line: 41, column: 23, scope: !4711, inlinedAt: !4748)
!4759 = !DILocation(line: 41, column: 2, scope: !4711, inlinedAt: !4748)
!4760 = !DILocation(line: 42, column: 2, scope: !4711, inlinedAt: !4748)
!4761 = !DILocation(line: 43, column: 19, scope: !4740)
!4762 = !DILocation(line: 43, column: 23, scope: !4740)
!4763 = !DILocation(line: 94, column: 44, scope: !4742, inlinedAt: !4744)
!4764 = !DILocation(line: 94, column: 56, scope: !4742, inlinedAt: !4744)
!4765 = !DILocation(line: 94, column: 2, scope: !4742, inlinedAt: !4744)
!4766 = !{i32 -2147196160}
!4767 = !DILocation(line: 44, column: 1, scope: !4740)
!4768 = distinct !DISubprogram(name: "input_abs_set_res", scope: !16, file: !16, line: 491, type: !4769, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{null, !14, !56, !6}
!4771 = !DILocalVariable(name: "dev", arg: 1, scope: !4768, file: !16, line: 491, type: !14)
!4772 = !DILocation(line: 491, column: 1, scope: !4768)
!4773 = !DILocalVariable(name: "axis", arg: 2, scope: !4768, file: !16, line: 491, type: !56)
!4774 = !DILocalVariable(name: "val", arg: 3, scope: !4768, file: !16, line: 491, type: !6)
!4775 = !DILocation(line: 491, column: 1, scope: !4776)
!4776 = distinct !DILexicalBlock(scope: !4768, file: !16, line: 491, column: 1)
!4777 = distinct !DISubprogram(name: "get_order", scope: !4778, file: !4778, line: 29, type: !4779, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4778 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!6, !37}
!4781 = !DILocalVariable(name: "x", arg: 1, scope: !4782, file: !4705, line: 366, type: !288)
!4782 = distinct !DISubprogram(name: "fls64", scope: !4705, file: !4705, line: 366, type: !4783, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!6, !288}
!4785 = !DILocation(line: 366, column: 40, scope: !4782, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 46, column: 9, scope: !4777)
!4787 = !DILocalVariable(name: "bitpos", scope: !4782, file: !4705, line: 368, type: !6)
!4788 = !DILocation(line: 368, column: 6, scope: !4782, inlinedAt: !4786)
!4789 = !DILocalVariable(name: "size", arg: 1, scope: !4777, file: !4778, line: 29, type: !37)
!4790 = !DILocation(line: 29, column: 63, scope: !4777)
!4791 = !DILocation(line: 31, column: 27, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4777, file: !4778, line: 31, column: 6)
!4793 = !DILocation(line: 31, column: 6, scope: !4792)
!4794 = !DILocation(line: 31, column: 6, scope: !4777)
!4795 = !DILocation(line: 32, column: 8, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !4778, line: 32, column: 7)
!4797 = distinct !DILexicalBlock(scope: !4792, file: !4778, line: 31, column: 34)
!4798 = !DILocation(line: 32, column: 7, scope: !4797)
!4799 = !DILocation(line: 33, column: 4, scope: !4796)
!4800 = !DILocation(line: 35, column: 7, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4797, file: !4778, line: 35, column: 7)
!4802 = !DILocation(line: 35, column: 12, scope: !4801)
!4803 = !DILocation(line: 35, column: 7, scope: !4797)
!4804 = !DILocation(line: 36, column: 4, scope: !4801)
!4805 = !DILocation(line: 38, column: 10, scope: !4797)
!4806 = !DILocation(line: 38, column: 28, scope: !4797)
!4807 = !DILocation(line: 38, column: 41, scope: !4797)
!4808 = !DILocation(line: 38, column: 3, scope: !4797)
!4809 = !DILocation(line: 41, column: 6, scope: !4777)
!4810 = !DILocation(line: 42, column: 7, scope: !4777)
!4811 = !DILocation(line: 46, column: 15, scope: !4777)
!4812 = !DILocation(line: 374, column: 2, scope: !4782, inlinedAt: !4786)
!4813 = !DILocation(line: 376, column: 14, scope: !4782, inlinedAt: !4786)
!4814 = !{i32 254226}
!4815 = !DILocation(line: 377, column: 9, scope: !4782, inlinedAt: !4786)
!4816 = !DILocation(line: 377, column: 16, scope: !4782, inlinedAt: !4786)
!4817 = !DILocation(line: 46, column: 2, scope: !4777)
!4818 = !DILocation(line: 48, column: 1, scope: !4777)
!4819 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4820, file: !4820, line: 30, type: !4821, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4820 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!6, !287}
!4823 = !DILocation(line: 366, column: 40, scope: !4782, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 32, column: 9, scope: !4819)
!4825 = !DILocation(line: 368, column: 6, scope: !4782, inlinedAt: !4824)
!4826 = !DILocalVariable(name: "n", arg: 1, scope: !4819, file: !4820, line: 30, type: !287)
!4827 = !DILocation(line: 30, column: 21, scope: !4819)
!4828 = !DILocation(line: 32, column: 15, scope: !4819)
!4829 = !DILocation(line: 374, column: 2, scope: !4782, inlinedAt: !4824)
!4830 = !DILocation(line: 376, column: 14, scope: !4782, inlinedAt: !4824)
!4831 = !DILocation(line: 377, column: 9, scope: !4782, inlinedAt: !4824)
!4832 = !DILocation(line: 377, column: 16, scope: !4782, inlinedAt: !4824)
!4833 = !DILocation(line: 32, column: 18, scope: !4819)
!4834 = !DILocation(line: 32, column: 2, scope: !4819)
!4835 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4836, file: !4836, line: 137, type: !4837, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4836 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!12, !812, !3175, !448, !622}
!4839 = !DILocalVariable(name: "s", arg: 1, scope: !4835, file: !4836, line: 137, type: !812)
!4840 = !DILocation(line: 137, column: 54, scope: !4835)
!4841 = !DILocalVariable(name: "object", arg: 2, scope: !4835, file: !4836, line: 137, type: !3175)
!4842 = !DILocation(line: 137, column: 69, scope: !4835)
!4843 = !DILocalVariable(name: "size", arg: 3, scope: !4835, file: !4836, line: 138, type: !448)
!4844 = !DILocation(line: 138, column: 12, scope: !4835)
!4845 = !DILocalVariable(name: "flags", arg: 4, scope: !4835, file: !4836, line: 138, type: !622)
!4846 = !DILocation(line: 138, column: 24, scope: !4835)
!4847 = !DILocation(line: 140, column: 17, scope: !4835)
!4848 = !DILocation(line: 140, column: 2, scope: !4835)
!4849 = distinct !DISubprogram(name: "serio_pause_rx", scope: !3732, file: !3732, line: 154, type: !3757, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4850 = !DILocalVariable(name: "lock", arg: 1, scope: !4851, file: !4852, line: 377, type: !4855)
!4851 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4852, file: !4852, line: 377, type: !4853, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4852 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4853 = !DISubroutineType(types: !4854)
!4854 = !{null, !4855}
!4855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!4856 = !DILocation(line: 377, column: 55, scope: !4851, inlinedAt: !4857)
!4857 = distinct !DILocation(line: 156, column: 2, scope: !4849)
!4858 = !DILocalVariable(name: "serio", arg: 1, scope: !4849, file: !3732, line: 154, type: !3730)
!4859 = !DILocation(line: 154, column: 49, scope: !4849)
!4860 = !DILocation(line: 156, column: 17, scope: !4849)
!4861 = !DILocation(line: 156, column: 24, scope: !4849)
!4862 = !DILocation(line: 379, column: 2, scope: !4863, inlinedAt: !4857)
!4863 = distinct !DILexicalBlock(scope: !4864, file: !4852, line: 379, column: 2)
!4864 = distinct !DILexicalBlock(scope: !4851, file: !4852, line: 379, column: 2)
!4865 = !DILocation(line: 379, column: 2, scope: !4866, inlinedAt: !4857)
!4866 = distinct !DILexicalBlock(scope: !4864, file: !4852, line: 379, column: 2)
!4867 = !{i32 -2145192181}
!4868 = !DILocation(line: 379, column: 2, scope: !4869, inlinedAt: !4857)
!4869 = distinct !DILexicalBlock(scope: !4866, file: !4852, line: 379, column: 2)
!4870 = !DILocation(line: 157, column: 1, scope: !4849)
!4871 = distinct !DISubprogram(name: "byd_report_input", scope: !3, file: !3, line: 236, type: !3915, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4872 = !DILocalVariable(name: "psmouse", arg: 1, scope: !4871, file: !3, line: 236, type: !7)
!4873 = !DILocation(line: 236, column: 46, scope: !4871)
!4874 = !DILocalVariable(name: "priv", scope: !4871, file: !3, line: 238, type: !3936)
!4875 = !DILocation(line: 238, column: 19, scope: !4871)
!4876 = !DILocation(line: 238, column: 26, scope: !4871)
!4877 = !DILocation(line: 238, column: 35, scope: !4871)
!4878 = !DILocalVariable(name: "dev", scope: !4871, file: !3, line: 239, type: !14)
!4879 = !DILocation(line: 239, column: 20, scope: !4871)
!4880 = !DILocation(line: 239, column: 26, scope: !4871)
!4881 = !DILocation(line: 239, column: 35, scope: !4871)
!4882 = !DILocation(line: 241, column: 19, scope: !4871)
!4883 = !DILocation(line: 241, column: 35, scope: !4871)
!4884 = !DILocation(line: 241, column: 41, scope: !4871)
!4885 = !DILocation(line: 241, column: 2, scope: !4871)
!4886 = !DILocation(line: 242, column: 19, scope: !4871)
!4887 = !DILocation(line: 242, column: 41, scope: !4871)
!4888 = !DILocation(line: 242, column: 47, scope: !4871)
!4889 = !DILocation(line: 242, column: 2, scope: !4871)
!4890 = !DILocation(line: 244, column: 19, scope: !4871)
!4891 = !DILocation(line: 244, column: 31, scope: !4871)
!4892 = !DILocation(line: 244, column: 37, scope: !4871)
!4893 = !DILocation(line: 244, column: 2, scope: !4871)
!4894 = !DILocation(line: 245, column: 19, scope: !4871)
!4895 = !DILocation(line: 245, column: 31, scope: !4871)
!4896 = !DILocation(line: 245, column: 37, scope: !4871)
!4897 = !DILocation(line: 245, column: 2, scope: !4871)
!4898 = !DILocation(line: 246, column: 19, scope: !4871)
!4899 = !DILocation(line: 246, column: 34, scope: !4871)
!4900 = !DILocation(line: 246, column: 40, scope: !4871)
!4901 = !DILocation(line: 246, column: 2, scope: !4871)
!4902 = !DILocation(line: 247, column: 19, scope: !4871)
!4903 = !DILocation(line: 247, column: 35, scope: !4871)
!4904 = !DILocation(line: 247, column: 41, scope: !4871)
!4905 = !DILocation(line: 247, column: 2, scope: !4871)
!4906 = !DILocation(line: 249, column: 13, scope: !4871)
!4907 = !DILocation(line: 249, column: 2, scope: !4871)
!4908 = !DILocation(line: 250, column: 1, scope: !4871)
!4909 = distinct !DISubprogram(name: "serio_continue_rx", scope: !3732, file: !3732, line: 159, type: !3757, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4910 = !DILocalVariable(name: "lock", arg: 1, scope: !4911, file: !4852, line: 402, type: !4855)
!4911 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4852, file: !4852, line: 402, type: !4853, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4912 = !DILocation(line: 402, column: 57, scope: !4911, inlinedAt: !4913)
!4913 = distinct !DILocation(line: 161, column: 2, scope: !4909)
!4914 = !DILocalVariable(name: "serio", arg: 1, scope: !4909, file: !3732, line: 159, type: !3730)
!4915 = !DILocation(line: 159, column: 52, scope: !4909)
!4916 = !DILocation(line: 161, column: 19, scope: !4909)
!4917 = !DILocation(line: 161, column: 26, scope: !4909)
!4918 = !DILocation(line: 404, column: 2, scope: !4919, inlinedAt: !4913)
!4919 = distinct !DILexicalBlock(scope: !4920, file: !4852, line: 404, column: 2)
!4920 = distinct !DILexicalBlock(scope: !4911, file: !4852, line: 404, column: 2)
!4921 = !DILocation(line: 404, column: 2, scope: !4922, inlinedAt: !4913)
!4922 = distinct !DILexicalBlock(scope: !4920, file: !4852, line: 404, column: 2)
!4923 = !{i32 -2145190433}
!4924 = !DILocation(line: 404, column: 2, scope: !4925, inlinedAt: !4913)
!4925 = distinct !DILexicalBlock(scope: !4922, file: !4852, line: 404, column: 2)
!4926 = !DILocation(line: 162, column: 1, scope: !4909)
!4927 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4928, file: !4928, line: 656, type: !1658, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4928 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4929 = !DILocalVariable(name: "__edi", scope: !4930, file: !4928, line: 658, type: !37)
!4930 = distinct !DILexicalBlock(scope: !4927, file: !4928, line: 658, column: 2)
!4931 = !DILocation(line: 658, column: 2, scope: !4930)
!4932 = !DILocalVariable(name: "__esi", scope: !4930, file: !4928, line: 658, type: !37)
!4933 = !DILocalVariable(name: "__edx", scope: !4930, file: !4928, line: 658, type: !37)
!4934 = !DILocalVariable(name: "__ecx", scope: !4930, file: !4928, line: 658, type: !37)
!4935 = !DILocalVariable(name: "__eax", scope: !4930, file: !4928, line: 658, type: !37)
!4936 = !{i32 -2145856962, i32 -2145856230, i32 -2145855996, i32 -2145855945, i32 -2145855917, i32 -2145855892, i32 -2145856208, i32 -2145856195, i32 -2145855757, i32 -2145855638, i32 -2145856103, i32 -2145856076, i32 -2145856048, i32 -2145856018}
!4937 = !DILocation(line: 659, column: 1, scope: !4927)
!4938 = distinct !DISubprogram(name: "input_report_key", scope: !16, file: !16, line: 415, type: !4769, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4939 = !DILocalVariable(name: "dev", arg: 1, scope: !4938, file: !16, line: 415, type: !14)
!4940 = !DILocation(line: 415, column: 55, scope: !4938)
!4941 = !DILocalVariable(name: "code", arg: 2, scope: !4938, file: !16, line: 415, type: !56)
!4942 = !DILocation(line: 415, column: 73, scope: !4938)
!4943 = !DILocalVariable(name: "value", arg: 3, scope: !4938, file: !16, line: 415, type: !6)
!4944 = !DILocation(line: 415, column: 83, scope: !4938)
!4945 = !DILocation(line: 417, column: 14, scope: !4938)
!4946 = !DILocation(line: 417, column: 27, scope: !4938)
!4947 = !DILocation(line: 417, column: 35, scope: !4938)
!4948 = !DILocation(line: 417, column: 34, scope: !4938)
!4949 = !DILocation(line: 417, column: 33, scope: !4938)
!4950 = !DILocation(line: 417, column: 2, scope: !4938)
!4951 = !DILocation(line: 418, column: 1, scope: !4938)
!4952 = distinct !DISubprogram(name: "input_report_abs", scope: !16, file: !16, line: 425, type: !4769, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4953 = !DILocalVariable(name: "dev", arg: 1, scope: !4952, file: !16, line: 425, type: !14)
!4954 = !DILocation(line: 425, column: 55, scope: !4952)
!4955 = !DILocalVariable(name: "code", arg: 2, scope: !4952, file: !16, line: 425, type: !56)
!4956 = !DILocation(line: 425, column: 73, scope: !4952)
!4957 = !DILocalVariable(name: "value", arg: 3, scope: !4952, file: !16, line: 425, type: !6)
!4958 = !DILocation(line: 425, column: 83, scope: !4952)
!4959 = !DILocation(line: 427, column: 14, scope: !4952)
!4960 = !DILocation(line: 427, column: 27, scope: !4952)
!4961 = !DILocation(line: 427, column: 33, scope: !4952)
!4962 = !DILocation(line: 427, column: 2, scope: !4952)
!4963 = !DILocation(line: 428, column: 1, scope: !4952)
!4964 = distinct !DISubprogram(name: "input_sync", scope: !16, file: !16, line: 440, type: !2942, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4965 = !DILocalVariable(name: "dev", arg: 1, scope: !4964, file: !16, line: 440, type: !14)
!4966 = !DILocation(line: 440, column: 49, scope: !4964)
!4967 = !DILocation(line: 442, column: 14, scope: !4964)
!4968 = !DILocation(line: 442, column: 2, scope: !4964)
!4969 = !DILocation(line: 443, column: 1, scope: !4964)
!4970 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4928, file: !4928, line: 661, type: !1658, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4971 = !DILocalVariable(name: "__edi", scope: !4972, file: !4928, line: 663, type: !37)
!4972 = distinct !DILexicalBlock(scope: !4970, file: !4928, line: 663, column: 2)
!4973 = !DILocation(line: 663, column: 2, scope: !4972)
!4974 = !DILocalVariable(name: "__esi", scope: !4972, file: !4928, line: 663, type: !37)
!4975 = !DILocalVariable(name: "__edx", scope: !4972, file: !4928, line: 663, type: !37)
!4976 = !DILocalVariable(name: "__ecx", scope: !4972, file: !4928, line: 663, type: !37)
!4977 = !DILocalVariable(name: "__eax", scope: !4972, file: !4928, line: 663, type: !37)
!4978 = !{i32 -2145854378, i32 -2145853648, i32 -2145853414, i32 -2145853363, i32 -2145853335, i32 -2145853310, i32 -2145853626, i32 -2145853613, i32 -2145853175, i32 -2145853056, i32 -2145853521, i32 -2145853494, i32 -2145853466, i32 -2145853436}
!4979 = !DILocation(line: 664, column: 1, scope: !4970)
!4980 = distinct !DISubprogram(name: "ssleep", scope: !4981, file: !4981, line: 63, type: !4982, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4981 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/lizy2001/genbc/linux")
!4982 = !DISubroutineType(types: !4983)
!4983 = !{null, !56}
!4984 = !DILocalVariable(name: "seconds", arg: 1, scope: !4980, file: !4981, line: 63, type: !56)
!4985 = !DILocation(line: 63, column: 40, scope: !4980)
!4986 = !DILocation(line: 65, column: 9, scope: !4980)
!4987 = !DILocation(line: 65, column: 17, scope: !4980)
!4988 = !DILocation(line: 65, column: 2, scope: !4980)
!4989 = !DILocation(line: 66, column: 1, scope: !4980)
!4990 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4533, file: !4533, line: 308, type: !4534, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4991 = !DILocalVariable(name: "m", arg: 1, scope: !4990, file: !4533, line: 308, type: !2536)
!4992 = !DILocation(line: 308, column: 66, scope: !4990)
!4993 = !DILocation(line: 310, column: 10, scope: !4990)
!4994 = !DILocation(line: 310, column: 12, scope: !4990)
!4995 = !DILocation(line: 310, column: 34, scope: !4990)
!4996 = !DILocation(line: 310, column: 39, scope: !4990)
!4997 = !DILocation(line: 310, column: 2, scope: !4990)
!4998 = distinct !DISubprogram(name: "kasan_check_write", scope: !4999, file: !4999, line: 38, type: !5000, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!4999 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!358, !4715, !56}
!5002 = !DILocalVariable(name: "p", arg: 1, scope: !4998, file: !4999, line: 38, type: !4715)
!5003 = !DILocation(line: 38, column: 59, scope: !4998)
!5004 = !DILocalVariable(name: "size", arg: 2, scope: !4998, file: !4999, line: 38, type: !56)
!5005 = !DILocation(line: 38, column: 75, scope: !4998)
!5006 = !DILocation(line: 40, column: 2, scope: !4998)
!5007 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5008, file: !5008, line: 178, type: !5009, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !3921, retainedNodes: !209)
!5008 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5009 = !DISubroutineType(types: !5010)
!5010 = !{null, !4715, !448, !6}
!5011 = !DILocalVariable(name: "ptr", arg: 1, scope: !5007, file: !5008, line: 178, type: !4715)
!5012 = !DILocation(line: 178, column: 60, scope: !5007)
!5013 = !DILocalVariable(name: "size", arg: 2, scope: !5007, file: !5008, line: 178, type: !448)
!5014 = !DILocation(line: 178, column: 72, scope: !5007)
!5015 = !DILocalVariable(name: "type", arg: 3, scope: !5007, file: !5008, line: 179, type: !6)
!5016 = !DILocation(line: 179, column: 15, scope: !5007)
!5017 = !DILocation(line: 179, column: 23, scope: !5007)
