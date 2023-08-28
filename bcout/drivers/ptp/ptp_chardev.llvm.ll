; ModuleID = '../bcout/drivers/ptp/ptp_chardev.llvm.bc'
source_filename = "drivers/ptp/ptp_chardev.c"
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.46, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.49 }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { i64, i64 }
%union.anon.49 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.45, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.16, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.16 = type { %struct.rb_node, i64 }
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
%struct.file = type { %union.anon, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
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
%struct.page = type { i64, %union.anon.1, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.51 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.52, i32 }
%union.anon.52 = type { %struct.kuid_t }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.kgid_t = type { i32 }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.54 = type { %struct.callback_head }
%union.anon.55 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.17 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.22, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.23, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.24, %union.anon.28, %struct.key_restriction* }
%union.anon.22 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.23 = type { i64 }
%union.anon.24 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.25, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.25 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.28 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.31, %union.anon.32, i32 }
%struct.request_queue = type opaque
%union.anon.31 = type { %struct.list_head }
%union.anon.32 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.33 }
%struct.anon.33 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rseq = type { i32, i32, %union.anon.44, i32, [12 x i8] }
%union.anon.44 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.45 = type { %struct.callback_head }
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
%struct.ptp_clock = type { %struct.posix_clock, %struct.device, %struct.ptp_clock_info*, i32, i32, %struct.pps_device*, i64, %struct.timestamp_event_queue, %struct.mutex, %struct.mutex, %struct.wait_queue_head, i32, %struct.device_attribute*, %struct.attribute**, %struct.attribute_group, [2 x %struct.attribute_group*], %struct.kthread_worker*, %struct.kthread_delayed_work }
%struct.posix_clock = type { %struct.posix_clock_operations, %struct.cdev, %struct.device*, %struct.rw_semaphore, i8 }
%struct.posix_clock_operations = type { %struct.module*, i32 (%struct.posix_clock*, %struct.__kernel_timex*)*, i32 (%struct.posix_clock*, %struct.timespec64*)*, i32 (%struct.posix_clock*, %struct.timespec64*)*, i32 (%struct.posix_clock*, %struct.timespec64*)*, i64 (%struct.posix_clock*, i32, i64)*, i32 (%struct.posix_clock*, i32)*, i32 (%struct.posix_clock*, %struct.file*, %struct.poll_table_struct*)*, i32 (%struct.posix_clock*)*, i64 (%struct.posix_clock*, i32, i8*, i64)* }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute = type { i8*, i16 }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.59, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.59 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.ptp_clock_info = type { %struct.module*, [16 x i8], i32, i32, i32, i32, i32, i32, %struct.ptp_pin_desc*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i64)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, i32, i32, i32)*, i64 (%struct.ptp_clock_info*)* }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }
%struct.system_device_crosststamp = type { i64, i64, i64 }
%struct.ptp_clock_request = type { i32, %union.anon.64 }
%union.anon.64 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.65, %struct.ptp_clock_time, i32, i32, %union.anon.66 }
%union.anon.65 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.66 = type { %struct.ptp_clock_time }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, i8*, %struct.cdev, %struct.device*, %struct.fasync_struct*, %struct.spinlock }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, void (%struct.pps_device*, i32, i8*)*, %struct.module*, %struct.device* }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.timestamp_event_queue = type { [128 x %struct.ptp_extts_event], i32, i32, %struct.spinlock }
%struct.ptp_extts_event = type { %struct.ptp_clock_time, i32, i32, [2 x i32] }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.kthread_work* }
%struct.kthread_work = type { %struct.list_head, void (%struct.kthread_work*)*, %struct.kthread_worker*, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.ptp_sys_offset_extended = type { i32, [3 x i32], [25 x [3 x %struct.ptp_clock_time]] }
%struct.ptp_sys_offset_precise = type { %struct.ptp_clock_time, %struct.ptp_clock_time, %struct.ptp_clock_time, [4 x i32] }
%struct.ptp_sys_offset = type { i32, [3 x i32], [51 x %struct.ptp_clock_time] }
%struct.ptp_clock_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32] }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@.str = private unnamed_addr constant [43 x i8] c"\013driver cannot use function %u on pin %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_set_pinfunc(%struct.ptp_clock* %ptp, i32 %pin, i32 %func, i32 %chan) #0 !dbg !3801 {
entry:
  %retval = alloca i32, align 4
  %ptp.addr = alloca %struct.ptp_clock*, align 8
  %pin.addr = alloca i32, align 4
  %func.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %info = alloca %struct.ptp_clock_info*, align 8
  %pin1 = alloca %struct.ptp_pin_desc*, align 8
  %pin2 = alloca %struct.ptp_pin_desc*, align 8
  %i = alloca i32, align 4
  store %struct.ptp_clock* %ptp, %struct.ptp_clock** %ptp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp.addr, metadata !3804, metadata !DIExpression()), !dbg !3805
  store i32 %pin, i32* %pin.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %pin.addr, metadata !3806, metadata !DIExpression()), !dbg !3807
  store i32 %func, i32* %func.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %func.addr, metadata !3808, metadata !DIExpression()), !dbg !3809
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !3810, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %info, metadata !3812, metadata !DIExpression()), !dbg !3813
  %0 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp.addr, align 8, !dbg !3814
  %info1 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %0, i32 0, i32 2, !dbg !3815
  %1 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info1, align 8, !dbg !3815
  store %struct.ptp_clock_info* %1, %struct.ptp_clock_info** %info, align 8, !dbg !3813
  call void @llvm.dbg.declare(metadata %struct.ptp_pin_desc** %pin1, metadata !3816, metadata !DIExpression()), !dbg !3817
  store %struct.ptp_pin_desc* null, %struct.ptp_pin_desc** %pin1, align 8, !dbg !3817
  call void @llvm.dbg.declare(metadata %struct.ptp_pin_desc** %pin2, metadata !3818, metadata !DIExpression()), !dbg !3819
  %2 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3820
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %2, i32 0, i32 8, !dbg !3821
  %3 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin_config, align 8, !dbg !3821
  %4 = load i32, i32* %pin.addr, align 4, !dbg !3822
  %idxprom = zext i32 %4 to i64, !dbg !3820
  %arrayidx = getelementptr %struct.ptp_pin_desc, %struct.ptp_pin_desc* %3, i64 %idxprom, !dbg !3820
  store %struct.ptp_pin_desc* %arrayidx, %struct.ptp_pin_desc** %pin2, align 8, !dbg !3819
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3823, metadata !DIExpression()), !dbg !3824
  store i32 0, i32* %i, align 4, !dbg !3825
  br label %for.cond, !dbg !3827

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !3828
  %6 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3830
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %6, i32 0, i32 6, !dbg !3831
  %7 = load i32, i32* %n_pins, align 8, !dbg !3831
  %cmp = icmp ult i32 %5, %7, !dbg !3832
  br i1 %cmp, label %for.body, label %for.end, !dbg !3833

for.body:                                         ; preds = %for.cond
  %8 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3834
  %pin_config2 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %8, i32 0, i32 8, !dbg !3837
  %9 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin_config2, align 8, !dbg !3837
  %10 = load i32, i32* %i, align 4, !dbg !3838
  %idxprom3 = zext i32 %10 to i64, !dbg !3834
  %arrayidx4 = getelementptr %struct.ptp_pin_desc, %struct.ptp_pin_desc* %9, i64 %idxprom3, !dbg !3834
  %func5 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %arrayidx4, i32 0, i32 2, !dbg !3839
  %11 = load i32, i32* %func5, align 4, !dbg !3839
  %12 = load i32, i32* %func.addr, align 4, !dbg !3840
  %cmp6 = icmp eq i32 %11, %12, !dbg !3841
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !3842

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3843
  %pin_config7 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %13, i32 0, i32 8, !dbg !3844
  %14 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin_config7, align 8, !dbg !3844
  %15 = load i32, i32* %i, align 4, !dbg !3845
  %idxprom8 = zext i32 %15 to i64, !dbg !3843
  %arrayidx9 = getelementptr %struct.ptp_pin_desc, %struct.ptp_pin_desc* %14, i64 %idxprom8, !dbg !3843
  %chan10 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %arrayidx9, i32 0, i32 3, !dbg !3846
  %16 = load i32, i32* %chan10, align 4, !dbg !3846
  %17 = load i32, i32* %chan.addr, align 4, !dbg !3847
  %cmp11 = icmp eq i32 %16, %17, !dbg !3848
  br i1 %cmp11, label %if.then, label %if.end, !dbg !3849

if.then:                                          ; preds = %land.lhs.true
  %18 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3850
  %pin_config12 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %18, i32 0, i32 8, !dbg !3852
  %19 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin_config12, align 8, !dbg !3852
  %20 = load i32, i32* %i, align 4, !dbg !3853
  %idxprom13 = zext i32 %20 to i64, !dbg !3850
  %arrayidx14 = getelementptr %struct.ptp_pin_desc, %struct.ptp_pin_desc* %19, i64 %idxprom13, !dbg !3850
  store %struct.ptp_pin_desc* %arrayidx14, %struct.ptp_pin_desc** %pin1, align 8, !dbg !3854
  br label %for.end, !dbg !3855

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3856

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4, !dbg !3857
  %inc = add i32 %21, 1, !dbg !3857
  store i32 %inc, i32* %i, align 4, !dbg !3857
  br label %for.cond, !dbg !3858, !llvm.loop !3859

for.end:                                          ; preds = %if.then, %for.cond
  %22 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin1, align 8, !dbg !3861
  %tobool = icmp ne %struct.ptp_pin_desc* %22, null, !dbg !3861
  br i1 %tobool, label %land.lhs.true15, label %if.end18, !dbg !3863

land.lhs.true15:                                  ; preds = %for.end
  %23 = load i32, i32* %i, align 4, !dbg !3864
  %24 = load i32, i32* %pin.addr, align 4, !dbg !3865
  %cmp16 = icmp eq i32 %23, %24, !dbg !3866
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !3867

if.then17:                                        ; preds = %land.lhs.true15
  store i32 0, i32* %retval, align 4, !dbg !3868
  br label %return, !dbg !3868

if.end18:                                         ; preds = %land.lhs.true15, %for.end
  %25 = load i32, i32* %func.addr, align 4, !dbg !3869
  switch i32 %25, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
    i32 2, label %sw.bb23
    i32 3, label %sw.bb27
  ], !dbg !3870

sw.bb:                                            ; preds = %if.end18
  br label %sw.epilog, !dbg !3871

sw.bb19:                                          ; preds = %if.end18
  %26 = load i32, i32* %chan.addr, align 4, !dbg !3873
  %27 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3875
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %27, i32 0, i32 4, !dbg !3876
  %28 = load i32, i32* %n_ext_ts, align 8, !dbg !3876
  %cmp20 = icmp uge i32 %26, %28, !dbg !3877
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !3878

if.then21:                                        ; preds = %sw.bb19
  store i32 -22, i32* %retval, align 4, !dbg !3879
  br label %return, !dbg !3879

if.end22:                                         ; preds = %sw.bb19
  br label %sw.epilog, !dbg !3880

sw.bb23:                                          ; preds = %if.end18
  %29 = load i32, i32* %chan.addr, align 4, !dbg !3881
  %30 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3883
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %30, i32 0, i32 5, !dbg !3884
  %31 = load i32, i32* %n_per_out, align 4, !dbg !3884
  %cmp24 = icmp uge i32 %29, %31, !dbg !3885
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3886

if.then25:                                        ; preds = %sw.bb23
  store i32 -22, i32* %retval, align 4, !dbg !3887
  br label %return, !dbg !3887

if.end26:                                         ; preds = %sw.bb23
  br label %sw.epilog, !dbg !3888

sw.bb27:                                          ; preds = %if.end18
  %32 = load i32, i32* %chan.addr, align 4, !dbg !3889
  %cmp28 = icmp ne i32 %32, 0, !dbg !3891
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !3892

if.then29:                                        ; preds = %sw.bb27
  store i32 -22, i32* %retval, align 4, !dbg !3893
  br label %return, !dbg !3893

if.end30:                                         ; preds = %sw.bb27
  br label %sw.epilog, !dbg !3894

sw.default:                                       ; preds = %if.end18
  store i32 -22, i32* %retval, align 4, !dbg !3895
  br label %return, !dbg !3895

sw.epilog:                                        ; preds = %if.end30, %if.end26, %if.end22, %sw.bb
  %33 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3896
  %verify = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %33, i32 0, i32 18, !dbg !3898
  %34 = load i32 (%struct.ptp_clock_info*, i32, i32, i32)*, i32 (%struct.ptp_clock_info*, i32, i32, i32)** %verify, align 8, !dbg !3898
  %35 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3899
  %36 = load i32, i32* %pin.addr, align 4, !dbg !3900
  %37 = load i32, i32* %func.addr, align 4, !dbg !3901
  %38 = load i32, i32* %chan.addr, align 4, !dbg !3902
  %call = call i32 %34(%struct.ptp_clock_info* %35, i32 %36, i32 %37, i32 %38) #10, !dbg !3896
  %tobool31 = icmp ne i32 %call, 0, !dbg !3896
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !3903

if.then32:                                        ; preds = %sw.epilog
  %39 = load i32, i32* %func.addr, align 4, !dbg !3904
  %40 = load i32, i32* %chan.addr, align 4, !dbg !3904
  %call33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40) #11, !dbg !3904
  store i32 -95, i32* %retval, align 4, !dbg !3906
  br label %return, !dbg !3906

if.end34:                                         ; preds = %sw.epilog
  %41 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin1, align 8, !dbg !3907
  %tobool35 = icmp ne %struct.ptp_pin_desc* %41, null, !dbg !3907
  br i1 %tobool35, label %if.then36, label %if.end40, !dbg !3909

if.then36:                                        ; preds = %if.end34
  %42 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3910
  %43 = load i32, i32* %func.addr, align 4, !dbg !3912
  %44 = load i32, i32* %chan.addr, align 4, !dbg !3913
  %call37 = call i32 @ptp_disable_pinfunc(%struct.ptp_clock_info* %42, i32 %43, i32 %44) #10, !dbg !3914
  %45 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin1, align 8, !dbg !3915
  %func38 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %45, i32 0, i32 2, !dbg !3916
  store i32 0, i32* %func38, align 4, !dbg !3917
  %46 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin1, align 8, !dbg !3918
  %chan39 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %46, i32 0, i32 3, !dbg !3919
  store i32 0, i32* %chan39, align 4, !dbg !3920
  br label %if.end40, !dbg !3921

if.end40:                                         ; preds = %if.then36, %if.end34
  %47 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !3922
  %48 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin2, align 8, !dbg !3923
  %func41 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %48, i32 0, i32 2, !dbg !3924
  %49 = load i32, i32* %func41, align 4, !dbg !3924
  %50 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin2, align 8, !dbg !3925
  %chan42 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %50, i32 0, i32 3, !dbg !3926
  %51 = load i32, i32* %chan42, align 4, !dbg !3926
  %call43 = call i32 @ptp_disable_pinfunc(%struct.ptp_clock_info* %47, i32 %49, i32 %51) #10, !dbg !3927
  %52 = load i32, i32* %func.addr, align 4, !dbg !3928
  %53 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin2, align 8, !dbg !3929
  %func44 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %53, i32 0, i32 2, !dbg !3930
  store i32 %52, i32* %func44, align 4, !dbg !3931
  %54 = load i32, i32* %chan.addr, align 4, !dbg !3932
  %55 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin2, align 8, !dbg !3933
  %chan45 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %55, i32 0, i32 3, !dbg !3934
  store i32 %54, i32* %chan45, align 4, !dbg !3935
  store i32 0, i32* %retval, align 4, !dbg !3936
  br label %return, !dbg !3936

return:                                           ; preds = %if.end40, %if.then32, %sw.default, %if.then29, %if.then25, %if.then21, %if.then17
  %56 = load i32, i32* %retval, align 4, !dbg !3937
  ret i32 %56, !dbg !3937
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ptp_disable_pinfunc(%struct.ptp_clock_info* %ops, i32 %func, i32 %chan) #0 !dbg !3938 {
entry:
  %retval = alloca i32, align 4
  %ops.addr = alloca %struct.ptp_clock_info*, align 8
  %func.addr = alloca i32, align 4
  %chan.addr = alloca i32, align 4
  %rq = alloca %struct.ptp_clock_request, align 8
  %err = alloca i32, align 4
  store %struct.ptp_clock_info* %ops, %struct.ptp_clock_info** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ops.addr, metadata !3941, metadata !DIExpression()), !dbg !3942
  store i32 %func, i32* %func.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %func.addr, metadata !3943, metadata !DIExpression()), !dbg !3944
  store i32 %chan, i32* %chan.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %chan.addr, metadata !3945, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_request* %rq, metadata !3947, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3949, metadata !DIExpression()), !dbg !3950
  store i32 0, i32* %err, align 4, !dbg !3950
  %0 = bitcast %struct.ptp_clock_request* %rq to i8*, !dbg !3951
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 64, i1 false), !dbg !3951
  %1 = load i32, i32* %func.addr, align 4, !dbg !3952
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb7
  ], !dbg !3953

sw.bb:                                            ; preds = %entry
  br label %sw.epilog, !dbg !3954

sw.bb1:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %rq, i32 0, i32 0, !dbg !3956
  store i32 0, i32* %type, align 8, !dbg !3957
  %2 = load i32, i32* %chan.addr, align 4, !dbg !3958
  %3 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %rq, i32 0, i32 1, !dbg !3959
  %extts = bitcast %union.anon.64* %3 to %struct.ptp_extts_request*, !dbg !3959
  %index = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts, i32 0, i32 0, !dbg !3960
  store i32 %2, i32* %index, align 8, !dbg !3961
  %4 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops.addr, align 8, !dbg !3962
  %enable = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %4, i32 0, i32 17, !dbg !3963
  %5 = load i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %enable, align 8, !dbg !3963
  %6 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops.addr, align 8, !dbg !3964
  %call = call i32 %5(%struct.ptp_clock_info* %6, %struct.ptp_clock_request* %rq, i32 0) #10, !dbg !3962
  store i32 %call, i32* %err, align 4, !dbg !3965
  br label %sw.epilog, !dbg !3966

sw.bb2:                                           ; preds = %entry
  %type3 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %rq, i32 0, i32 0, !dbg !3967
  store i32 1, i32* %type3, align 8, !dbg !3968
  %7 = load i32, i32* %chan.addr, align 4, !dbg !3969
  %8 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %rq, i32 0, i32 1, !dbg !3970
  %perout = bitcast %union.anon.64* %8 to %struct.ptp_perout_request*, !dbg !3970
  %index4 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %perout, i32 0, i32 2, !dbg !3971
  store i32 %7, i32* %index4, align 8, !dbg !3972
  %9 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops.addr, align 8, !dbg !3973
  %enable5 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %9, i32 0, i32 17, !dbg !3974
  %10 = load i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %enable5, align 8, !dbg !3974
  %11 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops.addr, align 8, !dbg !3975
  %call6 = call i32 %10(%struct.ptp_clock_info* %11, %struct.ptp_clock_request* %rq, i32 0) #10, !dbg !3973
  store i32 %call6, i32* %err, align 4, !dbg !3976
  br label %sw.epilog, !dbg !3977

sw.bb7:                                           ; preds = %entry
  br label %sw.epilog, !dbg !3978

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3979
  br label %return, !dbg !3979

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb2, %sw.bb1, %sw.bb
  %12 = load i32, i32* %err, align 4, !dbg !3980
  store i32 %12, i32* %retval, align 4, !dbg !3981
  br label %return, !dbg !3981

return:                                           ; preds = %sw.epilog, %sw.default
  %13 = load i32, i32* %retval, align 4, !dbg !3982
  ret i32 %13, !dbg !3982
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_open(%struct.posix_clock* %pc, i32 %fmode) #0 !dbg !3983 {
entry:
  %pc.addr = alloca %struct.posix_clock*, align 8
  %fmode.addr = alloca i32, align 4
  store %struct.posix_clock* %pc, %struct.posix_clock** %pc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.posix_clock** %pc.addr, metadata !3984, metadata !DIExpression()), !dbg !3985
  store i32 %fmode, i32* %fmode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fmode.addr, metadata !3986, metadata !DIExpression()), !dbg !3987
  ret i32 0, !dbg !3988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @ptp_ioctl(%struct.posix_clock* %pc, i32 %cmd, i64 %arg) #0 !dbg !3989 {
entry:
  %retval.i.i914 = alloca i1, align 1
  %addr.addr.i.i915 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i915, metadata !3990, metadata !DIExpression()), !dbg !3995
  %bytes.addr.i.i916 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i916, metadata !4005, metadata !DIExpression()), !dbg !4006
  %is_source.addr.i.i917 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i917, metadata !4007, metadata !DIExpression()), !dbg !4008
  %sz.i.i918 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i918, metadata !4009, metadata !DIExpression()), !dbg !4010
  %__ret_warn_on.i.i919 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i919, metadata !4011, metadata !DIExpression()), !dbg !4014
  %tmp.i.i920 = alloca i64, align 8
  %to.addr.i921 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i921, metadata !4015, metadata !DIExpression()), !dbg !4016
  %from.addr.i922 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i922, metadata !4017, metadata !DIExpression()), !dbg !4018
  %n.addr.i923 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i923, metadata !4019, metadata !DIExpression()), !dbg !4020
  %retval.i.i863 = alloca i1, align 1
  %addr.addr.i.i864 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i864, metadata !3990, metadata !DIExpression()), !dbg !4021
  %bytes.addr.i.i865 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i865, metadata !4005, metadata !DIExpression()), !dbg !4027
  %is_source.addr.i.i866 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i866, metadata !4007, metadata !DIExpression()), !dbg !4028
  %sz.i.i867 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i867, metadata !4009, metadata !DIExpression()), !dbg !4029
  %__ret_warn_on.i.i868 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i868, metadata !4011, metadata !DIExpression()), !dbg !4030
  %tmp.i.i869 = alloca i64, align 8
  %to.addr.i870 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i870, metadata !4031, metadata !DIExpression()), !dbg !4032
  %from.addr.i871 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i871, metadata !4033, metadata !DIExpression()), !dbg !4034
  %n.addr.i872 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i872, metadata !4035, metadata !DIExpression()), !dbg !4036
  %retval.i.i812 = alloca i1, align 1
  %addr.addr.i.i813 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i813, metadata !3990, metadata !DIExpression()), !dbg !4037
  %bytes.addr.i.i814 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i814, metadata !4005, metadata !DIExpression()), !dbg !4041
  %is_source.addr.i.i815 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i815, metadata !4007, metadata !DIExpression()), !dbg !4042
  %sz.i.i816 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i816, metadata !4009, metadata !DIExpression()), !dbg !4043
  %__ret_warn_on.i.i817 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i817, metadata !4011, metadata !DIExpression()), !dbg !4044
  %tmp.i.i818 = alloca i64, align 8
  %to.addr.i819 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i819, metadata !4015, metadata !DIExpression()), !dbg !4045
  %from.addr.i820 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i820, metadata !4017, metadata !DIExpression()), !dbg !4046
  %n.addr.i821 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i821, metadata !4019, metadata !DIExpression()), !dbg !4047
  %retval.i.i761 = alloca i1, align 1
  %addr.addr.i.i762 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i762, metadata !3990, metadata !DIExpression()), !dbg !4048
  %bytes.addr.i.i763 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i763, metadata !4005, metadata !DIExpression()), !dbg !4052
  %is_source.addr.i.i764 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i764, metadata !4007, metadata !DIExpression()), !dbg !4053
  %sz.i.i765 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i765, metadata !4009, metadata !DIExpression()), !dbg !4054
  %__ret_warn_on.i.i766 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i766, metadata !4011, metadata !DIExpression()), !dbg !4055
  %tmp.i.i767 = alloca i64, align 8
  %to.addr.i768 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i768, metadata !4031, metadata !DIExpression()), !dbg !4056
  %from.addr.i769 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i769, metadata !4033, metadata !DIExpression()), !dbg !4057
  %n.addr.i770 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i770, metadata !4035, metadata !DIExpression()), !dbg !4058
  %retval.i.i710 = alloca i1, align 1
  %addr.addr.i.i711 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i711, metadata !3990, metadata !DIExpression()), !dbg !4059
  %bytes.addr.i.i712 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i712, metadata !4005, metadata !DIExpression()), !dbg !4063
  %is_source.addr.i.i713 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i713, metadata !4007, metadata !DIExpression()), !dbg !4064
  %sz.i.i714 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i714, metadata !4009, metadata !DIExpression()), !dbg !4065
  %__ret_warn_on.i.i715 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i715, metadata !4011, metadata !DIExpression()), !dbg !4066
  %tmp.i.i716 = alloca i64, align 8
  %to.addr.i717 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i717, metadata !4031, metadata !DIExpression()), !dbg !4067
  %from.addr.i718 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i718, metadata !4033, metadata !DIExpression()), !dbg !4068
  %n.addr.i719 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i719, metadata !4035, metadata !DIExpression()), !dbg !4069
  %retval.i.i659 = alloca i1, align 1
  %addr.addr.i.i660 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i660, metadata !3990, metadata !DIExpression()), !dbg !4070
  %bytes.addr.i.i661 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i661, metadata !4005, metadata !DIExpression()), !dbg !4074
  %is_source.addr.i.i662 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i662, metadata !4007, metadata !DIExpression()), !dbg !4075
  %sz.i.i663 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i663, metadata !4009, metadata !DIExpression()), !dbg !4076
  %__ret_warn_on.i.i664 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i664, metadata !4011, metadata !DIExpression()), !dbg !4077
  %tmp.i.i665 = alloca i64, align 8
  %to.addr.i666 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i666, metadata !4031, metadata !DIExpression()), !dbg !4078
  %from.addr.i667 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i667, metadata !4033, metadata !DIExpression()), !dbg !4079
  %n.addr.i668 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i668, metadata !4035, metadata !DIExpression()), !dbg !4080
  %retval.i.i608 = alloca i1, align 1
  %addr.addr.i.i609 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i609, metadata !3990, metadata !DIExpression()), !dbg !4081
  %bytes.addr.i.i610 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i610, metadata !4005, metadata !DIExpression()), !dbg !4085
  %is_source.addr.i.i611 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i611, metadata !4007, metadata !DIExpression()), !dbg !4086
  %sz.i.i612 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i612, metadata !4009, metadata !DIExpression()), !dbg !4087
  %__ret_warn_on.i.i613 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i613, metadata !4011, metadata !DIExpression()), !dbg !4088
  %tmp.i.i614 = alloca i64, align 8
  %to.addr.i615 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i615, metadata !4015, metadata !DIExpression()), !dbg !4089
  %from.addr.i616 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i616, metadata !4017, metadata !DIExpression()), !dbg !4090
  %n.addr.i617 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i617, metadata !4019, metadata !DIExpression()), !dbg !4091
  %retval.i.i558 = alloca i1, align 1
  %addr.addr.i.i559 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i559, metadata !3990, metadata !DIExpression()), !dbg !4092
  %bytes.addr.i.i560 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i560, metadata !4005, metadata !DIExpression()), !dbg !4096
  %is_source.addr.i.i561 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i561, metadata !4007, metadata !DIExpression()), !dbg !4097
  %sz.i.i562 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i562, metadata !4009, metadata !DIExpression()), !dbg !4098
  %__ret_warn_on.i.i563 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i563, metadata !4011, metadata !DIExpression()), !dbg !4099
  %tmp.i.i564 = alloca i64, align 8
  %to.addr.i565 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i565, metadata !4015, metadata !DIExpression()), !dbg !4100
  %from.addr.i566 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i566, metadata !4017, metadata !DIExpression()), !dbg !4101
  %n.addr.i567 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i567, metadata !4019, metadata !DIExpression()), !dbg !4102
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !3990, metadata !DIExpression()), !dbg !4103
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4005, metadata !DIExpression()), !dbg !4107
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4007, metadata !DIExpression()), !dbg !4108
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4009, metadata !DIExpression()), !dbg !4109
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4011, metadata !DIExpression()), !dbg !4110
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4031, metadata !DIExpression()), !dbg !4111
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4033, metadata !DIExpression()), !dbg !4112
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4035, metadata !DIExpression()), !dbg !4113
  %retval = alloca i64, align 8
  %pc.addr = alloca %struct.posix_clock*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %ptp = alloca %struct.ptp_clock*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_clock*, align 8
  %extoff = alloca %struct.ptp_sys_offset_extended*, align 8
  %precise_offset = alloca %struct.ptp_sys_offset_precise, align 8
  %xtstamp = alloca %struct.system_device_crosststamp, align 8
  %ops = alloca %struct.ptp_clock_info*, align 8
  %sysoff = alloca %struct.ptp_sys_offset*, align 8
  %sts = alloca %struct.ptp_system_timestamp, align 8
  %req = alloca %struct.ptp_clock_request, align 8
  %caps = alloca %struct.ptp_clock_caps, align 4
  %pct = alloca %struct.ptp_clock_time*, align 8
  %i = alloca i32, align 4
  %pin_index = alloca i32, align 4
  %pd = alloca %struct.ptp_pin_desc, align 4
  %ts = alloca %struct.timespec64, align 8
  %enable = alloca i32, align 4
  %err = alloca i32, align 4
  %perout91 = alloca %struct.ptp_perout_request*, align 8
  %tmp242 = alloca %struct.timespec64, align 8
  %tmp249 = alloca %struct.timespec64, align 8
  %tmp258 = alloca %struct.timespec64, align 8
  %_i = alloca i32, align 4
  %_s = alloca i32, align 4
  %_mask = alloca i64, align 8
  %tmp465 = alloca i32, align 4
  %_i535 = alloca i32, align 4
  %_s536 = alloca i32, align 4
  %_mask538 = alloca i64, align 8
  %tmp546 = alloca i32, align 4
  store %struct.posix_clock* %pc, %struct.posix_clock** %pc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.posix_clock** %pc.addr, metadata !4114, metadata !DIExpression()), !dbg !4115
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4116, metadata !DIExpression()), !dbg !4117
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !4118, metadata !DIExpression()), !dbg !4119
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp, metadata !4120, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4122, metadata !DIExpression()), !dbg !4124
  %0 = load %struct.posix_clock*, %struct.posix_clock** %pc.addr, align 8, !dbg !4124
  %1 = bitcast %struct.posix_clock* %0 to i8*, !dbg !4124
  store i8* %1, i8** %__mptr, align 8, !dbg !4124
  br label %do.body, !dbg !4124

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4125

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4124
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4124
  %3 = bitcast i8* %add.ptr to %struct.ptp_clock*, !dbg !4124
  store %struct.ptp_clock* %3, %struct.ptp_clock** %tmp, align 8, !dbg !4125
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %tmp, align 8, !dbg !4124
  store %struct.ptp_clock* %4, %struct.ptp_clock** %ptp, align 8, !dbg !4121
  call void @llvm.dbg.declare(metadata %struct.ptp_sys_offset_extended** %extoff, metadata !4127, metadata !DIExpression()), !dbg !4138
  store %struct.ptp_sys_offset_extended* null, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4138
  call void @llvm.dbg.declare(metadata %struct.ptp_sys_offset_precise* %precise_offset, metadata !4139, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.declare(metadata %struct.system_device_crosststamp* %xtstamp, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_info** %ops, metadata !4149, metadata !DIExpression()), !dbg !4150
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4151
  %info = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %5, i32 0, i32 2, !dbg !4152
  %6 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info, align 8, !dbg !4152
  store %struct.ptp_clock_info* %6, %struct.ptp_clock_info** %ops, align 8, !dbg !4150
  call void @llvm.dbg.declare(metadata %struct.ptp_sys_offset** %sysoff, metadata !4153, metadata !DIExpression()), !dbg !4163
  store %struct.ptp_sys_offset* null, %struct.ptp_sys_offset** %sysoff, align 8, !dbg !4163
  call void @llvm.dbg.declare(metadata %struct.ptp_system_timestamp* %sts, metadata !4164, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_request* %req, metadata !4166, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_caps* %caps, metadata !4168, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.declare(metadata %struct.ptp_clock_time** %pct, metadata !4182, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4185, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.declare(metadata i32* %pin_index, metadata !4187, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.declare(metadata %struct.ptp_pin_desc* %pd, metadata !4189, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.declare(metadata %struct.timespec64* %ts, metadata !4191, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.declare(metadata i32* %enable, metadata !4193, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4195, metadata !DIExpression()), !dbg !4196
  store i32 0, i32* %err, align 4, !dbg !4196
  %7 = load i32, i32* %cmd.addr, align 4, !dbg !4197
  switch i32 %7, label %sw.default [
    i32 -2142225151, label %sw.bb
    i32 -2142225142, label %sw.bb
    i32 1074806018, label %sw.bb17
    i32 1074806027, label %sw.bb17
    i32 1077427459, label %sw.bb82
    i32 1077427468, label %sw.bb82
    i32 1074019588, label %sw.bb214
    i32 1074019597, label %sw.bb214
    i32 -1069531896, label %sw.bb229
    i32 -1069531887, label %sw.bb229
    i32 -994034423, label %sw.bb271
    i32 -994034414, label %sw.bb271
    i32 1128283397, label %sw.bb352
    i32 1128283406, label %sw.bb352
    i32 -1067434746, label %sw.bb405
    i32 -1067434737, label %sw.bb405
    i32 1080048903, label %sw.bb483
    i32 1080048912, label %sw.bb483
  ], !dbg !4198

sw.bb:                                            ; preds = %do.end, %do.end
  %8 = bitcast %struct.ptp_clock_caps* %caps to i8*, !dbg !4199
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 80, i1 false), !dbg !4199
  %9 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4200
  %info1 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %9, i32 0, i32 2, !dbg !4201
  %10 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info1, align 8, !dbg !4201
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %10, i32 0, i32 2, !dbg !4202
  %11 = load i32, i32* %max_adj, align 8, !dbg !4202
  %max_adj2 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %caps, i32 0, i32 0, !dbg !4203
  store i32 %11, i32* %max_adj2, align 4, !dbg !4204
  %12 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4205
  %info3 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %12, i32 0, i32 2, !dbg !4206
  %13 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info3, align 8, !dbg !4206
  %n_alarm = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %13, i32 0, i32 3, !dbg !4207
  %14 = load i32, i32* %n_alarm, align 4, !dbg !4207
  %n_alarm4 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %caps, i32 0, i32 1, !dbg !4208
  store i32 %14, i32* %n_alarm4, align 4, !dbg !4209
  %15 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4210
  %info5 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %15, i32 0, i32 2, !dbg !4211
  %16 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info5, align 8, !dbg !4211
  %n_ext_ts = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %16, i32 0, i32 4, !dbg !4212
  %17 = load i32, i32* %n_ext_ts, align 8, !dbg !4212
  %n_ext_ts6 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %caps, i32 0, i32 2, !dbg !4213
  store i32 %17, i32* %n_ext_ts6, align 4, !dbg !4214
  %18 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4215
  %info7 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %18, i32 0, i32 2, !dbg !4216
  %19 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info7, align 8, !dbg !4216
  %n_per_out = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %19, i32 0, i32 5, !dbg !4217
  %20 = load i32, i32* %n_per_out, align 4, !dbg !4217
  %n_per_out8 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %caps, i32 0, i32 3, !dbg !4218
  store i32 %20, i32* %n_per_out8, align 4, !dbg !4219
  %21 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4220
  %info9 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %21, i32 0, i32 2, !dbg !4221
  %22 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info9, align 8, !dbg !4221
  %pps = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %22, i32 0, i32 7, !dbg !4222
  %23 = load i32, i32* %pps, align 4, !dbg !4222
  %pps10 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %caps, i32 0, i32 4, !dbg !4223
  store i32 %23, i32* %pps10, align 4, !dbg !4224
  %24 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4225
  %info11 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %24, i32 0, i32 2, !dbg !4226
  %25 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info11, align 8, !dbg !4226
  %n_pins = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %25, i32 0, i32 6, !dbg !4227
  %26 = load i32, i32* %n_pins, align 8, !dbg !4227
  %n_pins12 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %caps, i32 0, i32 5, !dbg !4228
  store i32 %26, i32* %n_pins12, align 4, !dbg !4229
  %27 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4230
  %info13 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %27, i32 0, i32 2, !dbg !4231
  %28 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info13, align 8, !dbg !4231
  %getcrosststamp = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %28, i32 0, i32 15, !dbg !4232
  %29 = load i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)*, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)** %getcrosststamp, align 8, !dbg !4232
  %cmp = icmp ne i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)* %29, null, !dbg !4233
  %conv = zext i1 %cmp to i32, !dbg !4233
  %cross_timestamping = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %caps, i32 0, i32 6, !dbg !4234
  store i32 %conv, i32* %cross_timestamping, align 4, !dbg !4235
  %30 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4236
  %info14 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %30, i32 0, i32 2, !dbg !4237
  %31 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info14, align 8, !dbg !4237
  %adjphase = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %31, i32 0, i32 11, !dbg !4238
  %32 = load i32 (%struct.ptp_clock_info*, i32)*, i32 (%struct.ptp_clock_info*, i32)** %adjphase, align 8, !dbg !4238
  %cmp15 = icmp ne i32 (%struct.ptp_clock_info*, i32)* %32, null, !dbg !4239
  %conv16 = zext i1 %cmp15 to i32, !dbg !4239
  %adjust_phase = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %caps, i32 0, i32 7, !dbg !4240
  store i32 %conv16, i32* %adjust_phase, align 4, !dbg !4241
  %33 = load i64, i64* %arg.addr, align 8, !dbg !4242
  %34 = inttoptr i64 %33 to i8*, !dbg !4243
  %35 = bitcast %struct.ptp_clock_caps* %caps to i8*, !dbg !4244
  store i8* %34, i8** %to.addr.i, align 8
  store i8* %35, i8** %from.addr.i, align 8
  store i64 80, i64* %n.addr.i, align 8
  %36 = load i8*, i8** %from.addr.i, align 8, !dbg !4245
  %37 = load i64, i64* %n.addr.i, align 8, !dbg !4245
  store i8* %36, i8** %addr.addr.i.i, align 8
  store i64 %37, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4109
  %38 = load i32, i32* %sz.i.i, align 4, !dbg !4246
  %cmp.i.i = icmp sge i32 %38, 0, !dbg !4246
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4246

land.rhs.i.i:                                     ; preds = %sw.bb
  %39 = load i32, i32* %sz.i.i, align 4, !dbg !4246
  %conv.i.i = sext i32 %39 to i64, !dbg !4246
  %40 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4246
  %cmp1.i.i = icmp ult i64 %conv.i.i, %40, !dbg !4246
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %sw.bb
  %41 = phi i1 [ false, %sw.bb ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4248
  %lnot.i.i = xor i1 %41, true, !dbg !4246
  %lnot.ext.i.i = zext i1 %41 to i32, !dbg !4246
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4246
  br i1 %41, label %if.then.i.i, label %if.end10.i.i, !dbg !4249

if.then.i.i:                                      ; preds = %land.end.i.i
  %42 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4250
  %43 = call i1 @llvm.is.constant.i64(i64 %42) #9, !dbg !4253
  br i1 %43, label %if.else.i.i, label %if.then5.i.i, !dbg !4254

if.then5.i.i:                                     ; preds = %if.then.i.i
  %44 = load i32, i32* %sz.i.i, align 4, !dbg !4255
  %45 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4256
  call void @copy_overflow(i32 %44, i64 %45) #12, !dbg !4257
  br label %if.end9.i.i, !dbg !4257

if.else.i.i:                                      ; preds = %if.then.i.i
  %46 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4258
  %tobool6.i.i = trunc i8 %46 to i1, !dbg !4258
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4260

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #12, !dbg !4261
  br label %if.end.i.i, !dbg !4261

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #12, !dbg !4262
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4263
  br label %check_copy_size.exit.i, !dbg !4263

if.end10.i.i:                                     ; preds = %land.end.i.i
  %47 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4110
  %cmp11.i.i = icmp ugt i64 %47, 2147483647, !dbg !4110
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4110
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4110
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4110
  %48 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4264
  %tobool17.i.i = icmp ne i32 %48, 0, !dbg !4264
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4264
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4264
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4264
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4110

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !4266, !srcloc !4269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !4270, !srcloc !4272
  br label %if.end31.i.i, !dbg !4273

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %49 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4110
  %tobool32.i.i = icmp ne i32 %49, 0, !dbg !4110
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4110
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4110
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4110
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4264
  %50 = load i64, i64* %tmp.i.i, align 8, !dbg !4110
  %tobool38.i.i = icmp ne i64 %50, 0, !dbg !4274
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4275

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4276
  br label %check_copy_size.exit.i, !dbg !4276

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %51 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4277
  %52 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4278
  %53 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4279
  %tobool41.i.i = trunc i8 %53 to i1, !dbg !4279
  call void @check_object_size(i8* %51, i64 %52, i1 zeroext %tobool41.i.i) #12, !dbg !4280
  store i1 true, i1* %retval.i.i, align 1, !dbg !4281
  br label %check_copy_size.exit.i, !dbg !4281

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %54 = load i1, i1* %retval.i.i, align 1, !dbg !4282
  %lnot.i = xor i1 %54, true, !dbg !4245
  %lnot.ext.i = zext i1 %54 to i32, !dbg !4245
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4245
  br i1 %54, label %if.then.i, label %copy_to_user.exit, !dbg !4283

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %55 = load i8*, i8** %to.addr.i, align 8, !dbg !4284
  %56 = load i8*, i8** %from.addr.i, align 8, !dbg !4285
  %57 = load i64, i64* %n.addr.i, align 8, !dbg !4286
  %call2.i = call i64 @_copy_to_user(i8* %55, i8* %56, i64 %57) #12, !dbg !4287
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4288
  br label %copy_to_user.exit, !dbg !4289

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %58 = load i64, i64* %n.addr.i, align 8, !dbg !4290
  %tobool = icmp ne i64 %58, 0, !dbg !4291
  br i1 %tobool, label %if.then, label %if.end, !dbg !4292

if.then:                                          ; preds = %copy_to_user.exit
  store i32 -14, i32* %err, align 4, !dbg !4293
  br label %if.end, !dbg !4294

if.end:                                           ; preds = %if.then, %copy_to_user.exit
  br label %sw.epilog, !dbg !4295

sw.bb17:                                          ; preds = %do.end, %do.end
  %59 = bitcast %struct.ptp_clock_request* %req to i8*, !dbg !4296
  call void @llvm.memset.p0i8.i64(i8* align 8 %59, i8 0, i64 64, i1 false), !dbg !4296
  %60 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4297
  %extts = bitcast %union.anon.64* %60 to %struct.ptp_extts_request*, !dbg !4297
  %61 = bitcast %struct.ptp_extts_request* %extts to i8*, !dbg !4298
  %62 = load i64, i64* %arg.addr, align 8, !dbg !4299
  %63 = inttoptr i64 %62 to i8*, !dbg !4300
  store i8* %61, i8** %to.addr.i565, align 8
  store i8* %63, i8** %from.addr.i566, align 8
  store i64 16, i64* %n.addr.i567, align 8
  %64 = load i8*, i8** %to.addr.i565, align 8, !dbg !4301
  %65 = load i64, i64* %n.addr.i567, align 8, !dbg !4301
  store i8* %64, i8** %addr.addr.i.i559, align 8
  store i64 %65, i64* %bytes.addr.i.i560, align 8
  store i8 0, i8* %is_source.addr.i.i561, align 1
  store i32 -1, i32* %sz.i.i562, align 4, !dbg !4098
  %66 = load i32, i32* %sz.i.i562, align 4, !dbg !4302
  %cmp.i.i568 = icmp sge i32 %66, 0, !dbg !4302
  br i1 %cmp.i.i568, label %land.rhs.i.i571, label %land.end.i.i575, !dbg !4302

land.rhs.i.i571:                                  ; preds = %sw.bb17
  %67 = load i32, i32* %sz.i.i562, align 4, !dbg !4302
  %conv.i.i569 = sext i32 %67 to i64, !dbg !4302
  %68 = load i64, i64* %bytes.addr.i.i560, align 8, !dbg !4302
  %cmp1.i.i570 = icmp ult i64 %conv.i.i569, %68, !dbg !4302
  br label %land.end.i.i575

land.end.i.i575:                                  ; preds = %land.rhs.i.i571, %sw.bb17
  %69 = phi i1 [ false, %sw.bb17 ], [ %cmp1.i.i570, %land.rhs.i.i571 ], !dbg !4303
  %lnot.i.i572 = xor i1 %69, true, !dbg !4302
  %lnot.ext.i.i573 = zext i1 %69 to i32, !dbg !4302
  %conv4.i.i574 = sext i32 %lnot.ext.i.i573 to i64, !dbg !4302
  br i1 %69, label %if.then.i.i576, label %if.end10.i.i591, !dbg !4304

if.then.i.i576:                                   ; preds = %land.end.i.i575
  %70 = load i64, i64* %bytes.addr.i.i560, align 8, !dbg !4305
  %71 = call i1 @llvm.is.constant.i64(i64 %70) #9, !dbg !4306
  br i1 %71, label %if.else.i.i579, label %if.then5.i.i577, !dbg !4307

if.then5.i.i577:                                  ; preds = %if.then.i.i576
  %72 = load i32, i32* %sz.i.i562, align 4, !dbg !4308
  %73 = load i64, i64* %bytes.addr.i.i560, align 8, !dbg !4309
  call void @copy_overflow(i32 %72, i64 %73) #12, !dbg !4310
  br label %if.end9.i.i583, !dbg !4310

if.else.i.i579:                                   ; preds = %if.then.i.i576
  %74 = load i8, i8* %is_source.addr.i.i561, align 1, !dbg !4311
  %tobool6.i.i578 = trunc i8 %74 to i1, !dbg !4311
  br i1 %tobool6.i.i578, label %if.then7.i.i580, label %if.else8.i.i581, !dbg !4312

if.then7.i.i580:                                  ; preds = %if.else.i.i579
  call void @__bad_copy_from() #12, !dbg !4313
  br label %if.end.i.i582, !dbg !4313

if.else8.i.i581:                                  ; preds = %if.else.i.i579
  call void @__bad_copy_to() #12, !dbg !4314
  br label %if.end.i.i582

if.end.i.i582:                                    ; preds = %if.else8.i.i581, %if.then7.i.i580
  br label %if.end9.i.i583

if.end9.i.i583:                                   ; preds = %if.end.i.i582, %if.then5.i.i577
  store i1 false, i1* %retval.i.i558, align 1, !dbg !4315
  br label %check_copy_size.exit.i605, !dbg !4315

if.end10.i.i591:                                  ; preds = %land.end.i.i575
  %75 = load i64, i64* %bytes.addr.i.i560, align 8, !dbg !4099
  %cmp11.i.i584 = icmp ugt i64 %75, 2147483647, !dbg !4099
  %lnot13.i.i585 = xor i1 %cmp11.i.i584, true, !dbg !4099
  %lnot.ext16.i.i586 = zext i1 %cmp11.i.i584 to i32, !dbg !4099
  store i32 %lnot.ext16.i.i586, i32* %__ret_warn_on.i.i563, align 4, !dbg !4099
  %76 = load i32, i32* %__ret_warn_on.i.i563, align 4, !dbg !4316
  %tobool17.i.i587 = icmp ne i32 %76, 0, !dbg !4316
  %lnot18.i.i588 = xor i1 %tobool17.i.i587, true, !dbg !4316
  %lnot.ext21.i.i589 = zext i1 %tobool17.i.i587 to i32, !dbg !4316
  %conv22.i.i590 = sext i32 %lnot.ext21.i.i589 to i64, !dbg !4316
  br i1 %tobool17.i.i587, label %if.then24.i.i592, label %if.end31.i.i598, !dbg !4099

if.then24.i.i592:                                 ; preds = %if.end10.i.i591
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !4317, !srcloc !4269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !4318, !srcloc !4272
  br label %if.end31.i.i598, !dbg !4319

if.end31.i.i598:                                  ; preds = %if.then24.i.i592, %if.end10.i.i591
  %77 = load i32, i32* %__ret_warn_on.i.i563, align 4, !dbg !4099
  %tobool32.i.i593 = icmp ne i32 %77, 0, !dbg !4099
  %lnot33.i.i594 = xor i1 %tobool32.i.i593, true, !dbg !4099
  %lnot.ext36.i.i595 = zext i1 %tobool32.i.i593 to i32, !dbg !4099
  %conv37.i.i596 = sext i32 %lnot.ext36.i.i595 to i64, !dbg !4099
  store i64 %conv37.i.i596, i64* %tmp.i.i564, align 8, !dbg !4316
  %78 = load i64, i64* %tmp.i.i564, align 8, !dbg !4099
  %tobool38.i.i597 = icmp ne i64 %78, 0, !dbg !4320
  br i1 %tobool38.i.i597, label %if.then39.i.i599, label %if.end40.i.i601, !dbg !4321

if.then39.i.i599:                                 ; preds = %if.end31.i.i598
  store i1 false, i1* %retval.i.i558, align 1, !dbg !4322
  br label %check_copy_size.exit.i605, !dbg !4322

if.end40.i.i601:                                  ; preds = %if.end31.i.i598
  %79 = load i8*, i8** %addr.addr.i.i559, align 8, !dbg !4323
  %80 = load i64, i64* %bytes.addr.i.i560, align 8, !dbg !4324
  %81 = load i8, i8* %is_source.addr.i.i561, align 1, !dbg !4325
  %tobool41.i.i600 = trunc i8 %81 to i1, !dbg !4325
  call void @check_object_size(i8* %79, i64 %80, i1 zeroext %tobool41.i.i600) #12, !dbg !4326
  store i1 true, i1* %retval.i.i558, align 1, !dbg !4327
  br label %check_copy_size.exit.i605, !dbg !4327

check_copy_size.exit.i605:                        ; preds = %if.end40.i.i601, %if.then39.i.i599, %if.end9.i.i583
  %82 = load i1, i1* %retval.i.i558, align 1, !dbg !4328
  %lnot.i602 = xor i1 %82, true, !dbg !4301
  %lnot.ext.i603 = zext i1 %82 to i32, !dbg !4301
  %conv.i604 = sext i32 %lnot.ext.i603 to i64, !dbg !4301
  br i1 %82, label %if.then.i607, label %copy_from_user.exit, !dbg !4329

if.then.i607:                                     ; preds = %check_copy_size.exit.i605
  %83 = load i8*, i8** %to.addr.i565, align 8, !dbg !4330
  %84 = load i8*, i8** %from.addr.i566, align 8, !dbg !4331
  %85 = load i64, i64* %n.addr.i567, align 8, !dbg !4332
  %call2.i606 = call i64 @_copy_from_user(i8* %83, i8* %84, i64 %85) #12, !dbg !4333
  store i64 %call2.i606, i64* %n.addr.i567, align 8, !dbg !4334
  br label %copy_from_user.exit, !dbg !4335

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i605, %if.then.i607
  %86 = load i64, i64* %n.addr.i567, align 8, !dbg !4336
  %tobool19 = icmp ne i64 %86, 0, !dbg !4337
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4338

if.then20:                                        ; preds = %copy_from_user.exit
  store i32 -14, i32* %err, align 4, !dbg !4339
  br label %sw.epilog, !dbg !4341

if.end21:                                         ; preds = %copy_from_user.exit
  %87 = load i32, i32* %cmd.addr, align 4, !dbg !4342
  %conv22 = zext i32 %87 to i64, !dbg !4342
  %cmp23 = icmp eq i64 %conv22, 1074806027, !dbg !4344
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !4345

if.then25:                                        ; preds = %if.end21
  %88 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4346
  %extts26 = bitcast %union.anon.64* %88 to %struct.ptp_extts_request*, !dbg !4346
  %flags = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts26, i32 0, i32 1, !dbg !4348
  %89 = load i32, i32* %flags, align 4, !dbg !4349
  %or = or i32 %89, 8, !dbg !4349
  store i32 %or, i32* %flags, align 4, !dbg !4349
  %90 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4350
  %extts27 = bitcast %union.anon.64* %90 to %struct.ptp_extts_request*, !dbg !4350
  %flags28 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts27, i32 0, i32 1, !dbg !4352
  %91 = load i32, i32* %flags28, align 4, !dbg !4352
  %and = and i32 %91, -16, !dbg !4353
  %tobool29 = icmp ne i32 %and, 0, !dbg !4353
  br i1 %tobool29, label %if.then37, label %lor.lhs.false, !dbg !4354

lor.lhs.false:                                    ; preds = %if.then25
  %92 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4355
  %extts30 = bitcast %union.anon.64* %92 to %struct.ptp_extts_request*, !dbg !4355
  %rsv = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts30, i32 0, i32 2, !dbg !4356
  %arrayidx = getelementptr [2 x i32], [2 x i32]* %rsv, i64 0, i64 0, !dbg !4357
  %93 = load i32, i32* %arrayidx, align 8, !dbg !4357
  %tobool31 = icmp ne i32 %93, 0, !dbg !4357
  br i1 %tobool31, label %if.then37, label %lor.lhs.false32, !dbg !4358

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %94 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4359
  %extts33 = bitcast %union.anon.64* %94 to %struct.ptp_extts_request*, !dbg !4359
  %rsv34 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts33, i32 0, i32 2, !dbg !4360
  %arrayidx35 = getelementptr [2 x i32], [2 x i32]* %rsv34, i64 0, i64 1, !dbg !4361
  %95 = load i32, i32* %arrayidx35, align 4, !dbg !4361
  %tobool36 = icmp ne i32 %95, 0, !dbg !4361
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !4362

if.then37:                                        ; preds = %lor.lhs.false32, %lor.lhs.false, %if.then25
  store i32 -22, i32* %err, align 4, !dbg !4363
  br label %sw.epilog, !dbg !4365

if.end38:                                         ; preds = %lor.lhs.false32
  %96 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4366
  %extts39 = bitcast %union.anon.64* %96 to %struct.ptp_extts_request*, !dbg !4366
  %flags40 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts39, i32 0, i32 1, !dbg !4368
  %97 = load i32, i32* %flags40, align 4, !dbg !4368
  %and41 = and i32 %97, 1, !dbg !4369
  %tobool42 = icmp ne i32 %and41, 0, !dbg !4369
  br i1 %tobool42, label %land.lhs.true, label %if.end49, !dbg !4370

land.lhs.true:                                    ; preds = %if.end38
  %98 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4371
  %extts43 = bitcast %union.anon.64* %98 to %struct.ptp_extts_request*, !dbg !4371
  %flags44 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts43, i32 0, i32 1, !dbg !4372
  %99 = load i32, i32* %flags44, align 4, !dbg !4372
  %and45 = and i32 %99, 6, !dbg !4373
  %cmp46 = icmp eq i32 %and45, 0, !dbg !4374
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !4375

if.then48:                                        ; preds = %land.lhs.true
  store i32 -22, i32* %err, align 4, !dbg !4376
  br label %sw.epilog, !dbg !4378

if.end49:                                         ; preds = %land.lhs.true, %if.end38
  br label %if.end64, !dbg !4379

if.else:                                          ; preds = %if.end21
  %100 = load i32, i32* %cmd.addr, align 4, !dbg !4380
  %conv50 = zext i32 %100 to i64, !dbg !4380
  %cmp51 = icmp eq i64 %conv50, 1074806018, !dbg !4382
  br i1 %cmp51, label %if.then53, label %if.end63, !dbg !4383

if.then53:                                        ; preds = %if.else
  %101 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4384
  %extts54 = bitcast %union.anon.64* %101 to %struct.ptp_extts_request*, !dbg !4384
  %flags55 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts54, i32 0, i32 1, !dbg !4386
  %102 = load i32, i32* %flags55, align 4, !dbg !4387
  %and56 = and i32 %102, 7, !dbg !4387
  store i32 %and56, i32* %flags55, align 4, !dbg !4387
  %103 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4388
  %extts57 = bitcast %union.anon.64* %103 to %struct.ptp_extts_request*, !dbg !4388
  %rsv58 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts57, i32 0, i32 2, !dbg !4389
  %arrayidx59 = getelementptr [2 x i32], [2 x i32]* %rsv58, i64 0, i64 0, !dbg !4390
  store i32 0, i32* %arrayidx59, align 8, !dbg !4391
  %104 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4392
  %extts60 = bitcast %union.anon.64* %104 to %struct.ptp_extts_request*, !dbg !4392
  %rsv61 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts60, i32 0, i32 2, !dbg !4393
  %arrayidx62 = getelementptr [2 x i32], [2 x i32]* %rsv61, i64 0, i64 1, !dbg !4394
  store i32 0, i32* %arrayidx62, align 4, !dbg !4395
  br label %if.end63, !dbg !4396

if.end63:                                         ; preds = %if.then53, %if.else
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.end49
  %105 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4397
  %extts65 = bitcast %union.anon.64* %105 to %struct.ptp_extts_request*, !dbg !4397
  %index = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts65, i32 0, i32 0, !dbg !4399
  %106 = load i32, i32* %index, align 8, !dbg !4399
  %107 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4400
  %n_ext_ts66 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %107, i32 0, i32 4, !dbg !4401
  %108 = load i32, i32* %n_ext_ts66, align 8, !dbg !4401
  %cmp67 = icmp uge i32 %106, %108, !dbg !4402
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !4403

if.then69:                                        ; preds = %if.end64
  store i32 -22, i32* %err, align 4, !dbg !4404
  br label %sw.epilog, !dbg !4406

if.end70:                                         ; preds = %if.end64
  %type = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 0, !dbg !4407
  store i32 0, i32* %type, align 8, !dbg !4408
  %109 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4409
  %extts71 = bitcast %union.anon.64* %109 to %struct.ptp_extts_request*, !dbg !4409
  %flags72 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %extts71, i32 0, i32 1, !dbg !4410
  %110 = load i32, i32* %flags72, align 4, !dbg !4410
  %and73 = and i32 %110, 1, !dbg !4411
  %tobool74 = icmp ne i32 %and73, 0, !dbg !4412
  %111 = zext i1 %tobool74 to i64, !dbg !4412
  %cond = select i1 %tobool74, i32 1, i32 0, !dbg !4412
  store i32 %cond, i32* %enable, align 4, !dbg !4413
  %112 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4414
  %pincfg_mux = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %112, i32 0, i32 9, !dbg !4416
  %call75 = call i32 @mutex_lock_interruptible(%struct.mutex* %pincfg_mux) #10, !dbg !4417
  %tobool76 = icmp ne i32 %call75, 0, !dbg !4417
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !4418

if.then77:                                        ; preds = %if.end70
  store i64 -512, i64* %retval, align 8, !dbg !4419
  br label %return, !dbg !4419

if.end78:                                         ; preds = %if.end70
  %113 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4420
  %enable79 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %113, i32 0, i32 17, !dbg !4421
  %114 = load i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %enable79, align 8, !dbg !4421
  %115 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4422
  %116 = load i32, i32* %enable, align 4, !dbg !4423
  %call80 = call i32 %114(%struct.ptp_clock_info* %115, %struct.ptp_clock_request* %req, i32 %116) #10, !dbg !4420
  store i32 %call80, i32* %err, align 4, !dbg !4424
  %117 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4425
  %pincfg_mux81 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %117, i32 0, i32 9, !dbg !4426
  call void @mutex_unlock(%struct.mutex* %pincfg_mux81) #10, !dbg !4427
  br label %sw.epilog, !dbg !4428

sw.bb82:                                          ; preds = %do.end, %do.end
  %118 = bitcast %struct.ptp_clock_request* %req to i8*, !dbg !4429
  call void @llvm.memset.p0i8.i64(i8* align 8 %118, i8 0, i64 64, i1 false), !dbg !4429
  %119 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4430
  %perout = bitcast %union.anon.64* %119 to %struct.ptp_perout_request*, !dbg !4430
  %120 = bitcast %struct.ptp_perout_request* %perout to i8*, !dbg !4431
  %121 = load i64, i64* %arg.addr, align 8, !dbg !4432
  %122 = inttoptr i64 %121 to i8*, !dbg !4433
  store i8* %120, i8** %to.addr.i615, align 8
  store i8* %122, i8** %from.addr.i616, align 8
  store i64 56, i64* %n.addr.i617, align 8
  %123 = load i8*, i8** %to.addr.i615, align 8, !dbg !4434
  %124 = load i64, i64* %n.addr.i617, align 8, !dbg !4434
  store i8* %123, i8** %addr.addr.i.i609, align 8
  store i64 %124, i64* %bytes.addr.i.i610, align 8
  store i8 0, i8* %is_source.addr.i.i611, align 1
  store i32 -1, i32* %sz.i.i612, align 4, !dbg !4087
  %125 = load i32, i32* %sz.i.i612, align 4, !dbg !4435
  %cmp.i.i618 = icmp sge i32 %125, 0, !dbg !4435
  br i1 %cmp.i.i618, label %land.rhs.i.i621, label %land.end.i.i625, !dbg !4435

land.rhs.i.i621:                                  ; preds = %sw.bb82
  %126 = load i32, i32* %sz.i.i612, align 4, !dbg !4435
  %conv.i.i619 = sext i32 %126 to i64, !dbg !4435
  %127 = load i64, i64* %bytes.addr.i.i610, align 8, !dbg !4435
  %cmp1.i.i620 = icmp ult i64 %conv.i.i619, %127, !dbg !4435
  br label %land.end.i.i625

land.end.i.i625:                                  ; preds = %land.rhs.i.i621, %sw.bb82
  %128 = phi i1 [ false, %sw.bb82 ], [ %cmp1.i.i620, %land.rhs.i.i621 ], !dbg !4436
  %lnot.i.i622 = xor i1 %128, true, !dbg !4435
  %lnot.ext.i.i623 = zext i1 %128 to i32, !dbg !4435
  %conv4.i.i624 = sext i32 %lnot.ext.i.i623 to i64, !dbg !4435
  br i1 %128, label %if.then.i.i626, label %if.end10.i.i641, !dbg !4437

if.then.i.i626:                                   ; preds = %land.end.i.i625
  %129 = load i64, i64* %bytes.addr.i.i610, align 8, !dbg !4438
  %130 = call i1 @llvm.is.constant.i64(i64 %129) #9, !dbg !4439
  br i1 %130, label %if.else.i.i629, label %if.then5.i.i627, !dbg !4440

if.then5.i.i627:                                  ; preds = %if.then.i.i626
  %131 = load i32, i32* %sz.i.i612, align 4, !dbg !4441
  %132 = load i64, i64* %bytes.addr.i.i610, align 8, !dbg !4442
  call void @copy_overflow(i32 %131, i64 %132) #12, !dbg !4443
  br label %if.end9.i.i633, !dbg !4443

if.else.i.i629:                                   ; preds = %if.then.i.i626
  %133 = load i8, i8* %is_source.addr.i.i611, align 1, !dbg !4444
  %tobool6.i.i628 = trunc i8 %133 to i1, !dbg !4444
  br i1 %tobool6.i.i628, label %if.then7.i.i630, label %if.else8.i.i631, !dbg !4445

if.then7.i.i630:                                  ; preds = %if.else.i.i629
  call void @__bad_copy_from() #12, !dbg !4446
  br label %if.end.i.i632, !dbg !4446

if.else8.i.i631:                                  ; preds = %if.else.i.i629
  call void @__bad_copy_to() #12, !dbg !4447
  br label %if.end.i.i632

if.end.i.i632:                                    ; preds = %if.else8.i.i631, %if.then7.i.i630
  br label %if.end9.i.i633

if.end9.i.i633:                                   ; preds = %if.end.i.i632, %if.then5.i.i627
  store i1 false, i1* %retval.i.i608, align 1, !dbg !4448
  br label %check_copy_size.exit.i655, !dbg !4448

if.end10.i.i641:                                  ; preds = %land.end.i.i625
  %134 = load i64, i64* %bytes.addr.i.i610, align 8, !dbg !4088
  %cmp11.i.i634 = icmp ugt i64 %134, 2147483647, !dbg !4088
  %lnot13.i.i635 = xor i1 %cmp11.i.i634, true, !dbg !4088
  %lnot.ext16.i.i636 = zext i1 %cmp11.i.i634 to i32, !dbg !4088
  store i32 %lnot.ext16.i.i636, i32* %__ret_warn_on.i.i613, align 4, !dbg !4088
  %135 = load i32, i32* %__ret_warn_on.i.i613, align 4, !dbg !4449
  %tobool17.i.i637 = icmp ne i32 %135, 0, !dbg !4449
  %lnot18.i.i638 = xor i1 %tobool17.i.i637, true, !dbg !4449
  %lnot.ext21.i.i639 = zext i1 %tobool17.i.i637 to i32, !dbg !4449
  %conv22.i.i640 = sext i32 %lnot.ext21.i.i639 to i64, !dbg !4449
  br i1 %tobool17.i.i637, label %if.then24.i.i642, label %if.end31.i.i648, !dbg !4088

if.then24.i.i642:                                 ; preds = %if.end10.i.i641
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !4450, !srcloc !4269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !4451, !srcloc !4272
  br label %if.end31.i.i648, !dbg !4452

if.end31.i.i648:                                  ; preds = %if.then24.i.i642, %if.end10.i.i641
  %136 = load i32, i32* %__ret_warn_on.i.i613, align 4, !dbg !4088
  %tobool32.i.i643 = icmp ne i32 %136, 0, !dbg !4088
  %lnot33.i.i644 = xor i1 %tobool32.i.i643, true, !dbg !4088
  %lnot.ext36.i.i645 = zext i1 %tobool32.i.i643 to i32, !dbg !4088
  %conv37.i.i646 = sext i32 %lnot.ext36.i.i645 to i64, !dbg !4088
  store i64 %conv37.i.i646, i64* %tmp.i.i614, align 8, !dbg !4449
  %137 = load i64, i64* %tmp.i.i614, align 8, !dbg !4088
  %tobool38.i.i647 = icmp ne i64 %137, 0, !dbg !4453
  br i1 %tobool38.i.i647, label %if.then39.i.i649, label %if.end40.i.i651, !dbg !4454

if.then39.i.i649:                                 ; preds = %if.end31.i.i648
  store i1 false, i1* %retval.i.i608, align 1, !dbg !4455
  br label %check_copy_size.exit.i655, !dbg !4455

if.end40.i.i651:                                  ; preds = %if.end31.i.i648
  %138 = load i8*, i8** %addr.addr.i.i609, align 8, !dbg !4456
  %139 = load i64, i64* %bytes.addr.i.i610, align 8, !dbg !4457
  %140 = load i8, i8* %is_source.addr.i.i611, align 1, !dbg !4458
  %tobool41.i.i650 = trunc i8 %140 to i1, !dbg !4458
  call void @check_object_size(i8* %138, i64 %139, i1 zeroext %tobool41.i.i650) #12, !dbg !4459
  store i1 true, i1* %retval.i.i608, align 1, !dbg !4460
  br label %check_copy_size.exit.i655, !dbg !4460

check_copy_size.exit.i655:                        ; preds = %if.end40.i.i651, %if.then39.i.i649, %if.end9.i.i633
  %141 = load i1, i1* %retval.i.i608, align 1, !dbg !4461
  %lnot.i652 = xor i1 %141, true, !dbg !4434
  %lnot.ext.i653 = zext i1 %141 to i32, !dbg !4434
  %conv.i654 = sext i32 %lnot.ext.i653 to i64, !dbg !4434
  br i1 %141, label %if.then.i657, label %copy_from_user.exit658, !dbg !4462

if.then.i657:                                     ; preds = %check_copy_size.exit.i655
  %142 = load i8*, i8** %to.addr.i615, align 8, !dbg !4463
  %143 = load i8*, i8** %from.addr.i616, align 8, !dbg !4464
  %144 = load i64, i64* %n.addr.i617, align 8, !dbg !4465
  %call2.i656 = call i64 @_copy_from_user(i8* %142, i8* %143, i64 %144) #12, !dbg !4466
  store i64 %call2.i656, i64* %n.addr.i617, align 8, !dbg !4467
  br label %copy_from_user.exit658, !dbg !4468

copy_from_user.exit658:                           ; preds = %check_copy_size.exit.i655, %if.then.i657
  %145 = load i64, i64* %n.addr.i617, align 8, !dbg !4469
  %tobool84 = icmp ne i64 %145, 0, !dbg !4470
  br i1 %tobool84, label %if.then85, label %if.end86, !dbg !4471

if.then85:                                        ; preds = %copy_from_user.exit658
  store i32 -14, i32* %err, align 4, !dbg !4472
  br label %sw.epilog, !dbg !4474

if.end86:                                         ; preds = %copy_from_user.exit658
  %146 = load i32, i32* %cmd.addr, align 4, !dbg !4475
  %conv87 = zext i32 %146 to i64, !dbg !4475
  %cmp88 = icmp eq i64 %conv87, 1077427468, !dbg !4477
  br i1 %cmp88, label %if.then90, label %if.else168, !dbg !4478

if.then90:                                        ; preds = %if.end86
  call void @llvm.dbg.declare(metadata %struct.ptp_perout_request** %perout91, metadata !4479, metadata !DIExpression()), !dbg !4482
  %147 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4483
  %perout92 = bitcast %union.anon.64* %147 to %struct.ptp_perout_request*, !dbg !4483
  store %struct.ptp_perout_request* %perout92, %struct.ptp_perout_request** %perout91, align 8, !dbg !4482
  %148 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4484
  %flags93 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %148, i32 0, i32 3, !dbg !4486
  %149 = load i32, i32* %flags93, align 4, !dbg !4486
  %and94 = and i32 %149, -8, !dbg !4487
  %tobool95 = icmp ne i32 %and94, 0, !dbg !4487
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !4488

if.then96:                                        ; preds = %if.then90
  store i32 -22, i32* %err, align 4, !dbg !4489
  br label %sw.epilog, !dbg !4491

if.end97:                                         ; preds = %if.then90
  %150 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4492
  %flags98 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %150, i32 0, i32 3, !dbg !4494
  %151 = load i32, i32* %flags98, align 4, !dbg !4494
  %and99 = and i32 %151, 2, !dbg !4495
  %tobool100 = icmp ne i32 %and99, 0, !dbg !4495
  br i1 %tobool100, label %if.end118, label %land.lhs.true101, !dbg !4496

land.lhs.true101:                                 ; preds = %if.end97
  %152 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4497
  %153 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %152, i32 0, i32 4, !dbg !4498
  %rsv102 = bitcast %union.anon.66* %153 to [4 x i32]*, !dbg !4498
  %arrayidx103 = getelementptr [4 x i32], [4 x i32]* %rsv102, i64 0, i64 0, !dbg !4497
  %154 = load i32, i32* %arrayidx103, align 8, !dbg !4497
  %tobool104 = icmp ne i32 %154, 0, !dbg !4497
  br i1 %tobool104, label %if.then117, label %lor.lhs.false105, !dbg !4499

lor.lhs.false105:                                 ; preds = %land.lhs.true101
  %155 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4500
  %156 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %155, i32 0, i32 4, !dbg !4501
  %rsv106 = bitcast %union.anon.66* %156 to [4 x i32]*, !dbg !4501
  %arrayidx107 = getelementptr [4 x i32], [4 x i32]* %rsv106, i64 0, i64 1, !dbg !4500
  %157 = load i32, i32* %arrayidx107, align 4, !dbg !4500
  %tobool108 = icmp ne i32 %157, 0, !dbg !4500
  br i1 %tobool108, label %if.then117, label %lor.lhs.false109, !dbg !4502

lor.lhs.false109:                                 ; preds = %lor.lhs.false105
  %158 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4503
  %159 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %158, i32 0, i32 4, !dbg !4504
  %rsv110 = bitcast %union.anon.66* %159 to [4 x i32]*, !dbg !4504
  %arrayidx111 = getelementptr [4 x i32], [4 x i32]* %rsv110, i64 0, i64 2, !dbg !4503
  %160 = load i32, i32* %arrayidx111, align 8, !dbg !4503
  %tobool112 = icmp ne i32 %160, 0, !dbg !4503
  br i1 %tobool112, label %if.then117, label %lor.lhs.false113, !dbg !4505

lor.lhs.false113:                                 ; preds = %lor.lhs.false109
  %161 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4506
  %162 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %161, i32 0, i32 4, !dbg !4507
  %rsv114 = bitcast %union.anon.66* %162 to [4 x i32]*, !dbg !4507
  %arrayidx115 = getelementptr [4 x i32], [4 x i32]* %rsv114, i64 0, i64 3, !dbg !4506
  %163 = load i32, i32* %arrayidx115, align 4, !dbg !4506
  %tobool116 = icmp ne i32 %163, 0, !dbg !4506
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !4508

if.then117:                                       ; preds = %lor.lhs.false113, %lor.lhs.false109, %lor.lhs.false105, %land.lhs.true101
  store i32 -22, i32* %err, align 4, !dbg !4509
  br label %sw.epilog, !dbg !4511

if.end118:                                        ; preds = %lor.lhs.false113, %if.end97
  %164 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4512
  %flags119 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %164, i32 0, i32 3, !dbg !4514
  %165 = load i32, i32* %flags119, align 4, !dbg !4514
  %and120 = and i32 %165, 2, !dbg !4515
  %tobool121 = icmp ne i32 %and120, 0, !dbg !4515
  br i1 %tobool121, label %if.then122, label %if.end141, !dbg !4516

if.then122:                                       ; preds = %if.end118
  %166 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4517
  %167 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %166, i32 0, i32 4, !dbg !4520
  %on = bitcast %union.anon.66* %167 to %struct.ptp_clock_time*, !dbg !4520
  %sec = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %on, i32 0, i32 0, !dbg !4521
  %168 = load i64, i64* %sec, align 8, !dbg !4521
  %169 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4522
  %period = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %169, i32 0, i32 1, !dbg !4523
  %sec123 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %period, i32 0, i32 0, !dbg !4524
  %170 = load i64, i64* %sec123, align 8, !dbg !4524
  %cmp124 = icmp sgt i64 %168, %170, !dbg !4525
  br i1 %cmp124, label %if.then139, label %lor.lhs.false126, !dbg !4526

lor.lhs.false126:                                 ; preds = %if.then122
  %171 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4527
  %172 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %171, i32 0, i32 4, !dbg !4528
  %on127 = bitcast %union.anon.66* %172 to %struct.ptp_clock_time*, !dbg !4528
  %sec128 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %on127, i32 0, i32 0, !dbg !4529
  %173 = load i64, i64* %sec128, align 8, !dbg !4529
  %174 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4530
  %period129 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %174, i32 0, i32 1, !dbg !4531
  %sec130 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %period129, i32 0, i32 0, !dbg !4532
  %175 = load i64, i64* %sec130, align 8, !dbg !4532
  %cmp131 = icmp eq i64 %173, %175, !dbg !4533
  br i1 %cmp131, label %land.lhs.true133, label %if.end140, !dbg !4534

land.lhs.true133:                                 ; preds = %lor.lhs.false126
  %176 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4535
  %177 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %176, i32 0, i32 4, !dbg !4536
  %on134 = bitcast %union.anon.66* %177 to %struct.ptp_clock_time*, !dbg !4536
  %nsec = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %on134, i32 0, i32 1, !dbg !4537
  %178 = load i32, i32* %nsec, align 8, !dbg !4537
  %179 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4538
  %period135 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %179, i32 0, i32 1, !dbg !4539
  %nsec136 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %period135, i32 0, i32 1, !dbg !4540
  %180 = load i32, i32* %nsec136, align 8, !dbg !4540
  %cmp137 = icmp ugt i32 %178, %180, !dbg !4541
  br i1 %cmp137, label %if.then139, label %if.end140, !dbg !4542

if.then139:                                       ; preds = %land.lhs.true133, %if.then122
  store i32 -34, i32* %err, align 4, !dbg !4543
  br label %sw.epilog, !dbg !4545

if.end140:                                        ; preds = %land.lhs.true133, %lor.lhs.false126
  br label %if.end141, !dbg !4546

if.end141:                                        ; preds = %if.end140, %if.end118
  %181 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4547
  %flags142 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %181, i32 0, i32 3, !dbg !4549
  %182 = load i32, i32* %flags142, align 4, !dbg !4549
  %and143 = and i32 %182, 4, !dbg !4550
  %tobool144 = icmp ne i32 %and143, 0, !dbg !4550
  br i1 %tobool144, label %if.then145, label %if.end167, !dbg !4551

if.then145:                                       ; preds = %if.end141
  %183 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4552
  %184 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %183, i32 0, i32 0, !dbg !4555
  %phase = bitcast %union.anon.65* %184 to %struct.ptp_clock_time*, !dbg !4555
  %sec146 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %phase, i32 0, i32 0, !dbg !4556
  %185 = load i64, i64* %sec146, align 8, !dbg !4556
  %186 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4557
  %period147 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %186, i32 0, i32 1, !dbg !4558
  %sec148 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %period147, i32 0, i32 0, !dbg !4559
  %187 = load i64, i64* %sec148, align 8, !dbg !4559
  %cmp149 = icmp sgt i64 %185, %187, !dbg !4560
  br i1 %cmp149, label %if.then165, label %lor.lhs.false151, !dbg !4561

lor.lhs.false151:                                 ; preds = %if.then145
  %188 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4562
  %189 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %188, i32 0, i32 0, !dbg !4563
  %phase152 = bitcast %union.anon.65* %189 to %struct.ptp_clock_time*, !dbg !4563
  %sec153 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %phase152, i32 0, i32 0, !dbg !4564
  %190 = load i64, i64* %sec153, align 8, !dbg !4564
  %191 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4565
  %period154 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %191, i32 0, i32 1, !dbg !4566
  %sec155 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %period154, i32 0, i32 0, !dbg !4567
  %192 = load i64, i64* %sec155, align 8, !dbg !4567
  %cmp156 = icmp eq i64 %190, %192, !dbg !4568
  br i1 %cmp156, label %land.lhs.true158, label %if.end166, !dbg !4569

land.lhs.true158:                                 ; preds = %lor.lhs.false151
  %193 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4570
  %194 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %193, i32 0, i32 0, !dbg !4571
  %phase159 = bitcast %union.anon.65* %194 to %struct.ptp_clock_time*, !dbg !4571
  %nsec160 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %phase159, i32 0, i32 1, !dbg !4572
  %195 = load i32, i32* %nsec160, align 8, !dbg !4572
  %196 = load %struct.ptp_perout_request*, %struct.ptp_perout_request** %perout91, align 8, !dbg !4573
  %period161 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %196, i32 0, i32 1, !dbg !4574
  %nsec162 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %period161, i32 0, i32 1, !dbg !4575
  %197 = load i32, i32* %nsec162, align 8, !dbg !4575
  %cmp163 = icmp uge i32 %195, %197, !dbg !4576
  br i1 %cmp163, label %if.then165, label %if.end166, !dbg !4577

if.then165:                                       ; preds = %land.lhs.true158, %if.then145
  store i32 -34, i32* %err, align 4, !dbg !4578
  br label %sw.epilog, !dbg !4580

if.end166:                                        ; preds = %land.lhs.true158, %lor.lhs.false151
  br label %if.end167, !dbg !4581

if.end167:                                        ; preds = %if.end166, %if.end141
  br label %if.end189, !dbg !4582

if.else168:                                       ; preds = %if.end86
  %198 = load i32, i32* %cmd.addr, align 4, !dbg !4583
  %conv169 = zext i32 %198 to i64, !dbg !4583
  %cmp170 = icmp eq i64 %conv169, 1077427459, !dbg !4585
  br i1 %cmp170, label %if.then172, label %if.end188, !dbg !4586

if.then172:                                       ; preds = %if.else168
  %199 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4587
  %perout173 = bitcast %union.anon.64* %199 to %struct.ptp_perout_request*, !dbg !4587
  %flags174 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %perout173, i32 0, i32 3, !dbg !4589
  %200 = load i32, i32* %flags174, align 4, !dbg !4590
  %and175 = and i32 %200, 0, !dbg !4590
  store i32 %and175, i32* %flags174, align 4, !dbg !4590
  %201 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4591
  %perout176 = bitcast %union.anon.64* %201 to %struct.ptp_perout_request*, !dbg !4591
  %202 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %perout176, i32 0, i32 4, !dbg !4592
  %rsv177 = bitcast %union.anon.66* %202 to [4 x i32]*, !dbg !4592
  %arrayidx178 = getelementptr [4 x i32], [4 x i32]* %rsv177, i64 0, i64 0, !dbg !4593
  store i32 0, i32* %arrayidx178, align 8, !dbg !4594
  %203 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4595
  %perout179 = bitcast %union.anon.64* %203 to %struct.ptp_perout_request*, !dbg !4595
  %204 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %perout179, i32 0, i32 4, !dbg !4596
  %rsv180 = bitcast %union.anon.66* %204 to [4 x i32]*, !dbg !4596
  %arrayidx181 = getelementptr [4 x i32], [4 x i32]* %rsv180, i64 0, i64 1, !dbg !4597
  store i32 0, i32* %arrayidx181, align 4, !dbg !4598
  %205 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4599
  %perout182 = bitcast %union.anon.64* %205 to %struct.ptp_perout_request*, !dbg !4599
  %206 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %perout182, i32 0, i32 4, !dbg !4600
  %rsv183 = bitcast %union.anon.66* %206 to [4 x i32]*, !dbg !4600
  %arrayidx184 = getelementptr [4 x i32], [4 x i32]* %rsv183, i64 0, i64 2, !dbg !4601
  store i32 0, i32* %arrayidx184, align 8, !dbg !4602
  %207 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4603
  %perout185 = bitcast %union.anon.64* %207 to %struct.ptp_perout_request*, !dbg !4603
  %208 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %perout185, i32 0, i32 4, !dbg !4604
  %rsv186 = bitcast %union.anon.66* %208 to [4 x i32]*, !dbg !4604
  %arrayidx187 = getelementptr [4 x i32], [4 x i32]* %rsv186, i64 0, i64 3, !dbg !4605
  store i32 0, i32* %arrayidx187, align 4, !dbg !4606
  br label %if.end188, !dbg !4607

if.end188:                                        ; preds = %if.then172, %if.else168
  br label %if.end189

if.end189:                                        ; preds = %if.end188, %if.end167
  %209 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4608
  %perout190 = bitcast %union.anon.64* %209 to %struct.ptp_perout_request*, !dbg !4608
  %index191 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %perout190, i32 0, i32 2, !dbg !4610
  %210 = load i32, i32* %index191, align 8, !dbg !4610
  %211 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4611
  %n_per_out192 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %211, i32 0, i32 5, !dbg !4612
  %212 = load i32, i32* %n_per_out192, align 4, !dbg !4612
  %cmp193 = icmp uge i32 %210, %212, !dbg !4613
  br i1 %cmp193, label %if.then195, label %if.end196, !dbg !4614

if.then195:                                       ; preds = %if.end189
  store i32 -22, i32* %err, align 4, !dbg !4615
  br label %sw.epilog, !dbg !4617

if.end196:                                        ; preds = %if.end189
  %type197 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 0, !dbg !4618
  store i32 1, i32* %type197, align 8, !dbg !4619
  %213 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4620
  %perout198 = bitcast %union.anon.64* %213 to %struct.ptp_perout_request*, !dbg !4620
  %period199 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %perout198, i32 0, i32 1, !dbg !4621
  %sec200 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %period199, i32 0, i32 0, !dbg !4622
  %214 = load i64, i64* %sec200, align 8, !dbg !4622
  %tobool201 = icmp ne i64 %214, 0, !dbg !4623
  br i1 %tobool201, label %lor.end, label %lor.rhs, !dbg !4624

lor.rhs:                                          ; preds = %if.end196
  %215 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 1, !dbg !4625
  %perout202 = bitcast %union.anon.64* %215 to %struct.ptp_perout_request*, !dbg !4625
  %period203 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %perout202, i32 0, i32 1, !dbg !4626
  %nsec204 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %period203, i32 0, i32 1, !dbg !4627
  %216 = load i32, i32* %nsec204, align 8, !dbg !4627
  %tobool205 = icmp ne i32 %216, 0, !dbg !4624
  br label %lor.end, !dbg !4624

lor.end:                                          ; preds = %lor.rhs, %if.end196
  %217 = phi i1 [ true, %if.end196 ], [ %tobool205, %lor.rhs ]
  %lor.ext = zext i1 %217 to i32, !dbg !4624
  store i32 %lor.ext, i32* %enable, align 4, !dbg !4628
  %218 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4629
  %pincfg_mux206 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %218, i32 0, i32 9, !dbg !4631
  %call207 = call i32 @mutex_lock_interruptible(%struct.mutex* %pincfg_mux206) #10, !dbg !4632
  %tobool208 = icmp ne i32 %call207, 0, !dbg !4632
  br i1 %tobool208, label %if.then209, label %if.end210, !dbg !4633

if.then209:                                       ; preds = %lor.end
  store i64 -512, i64* %retval, align 8, !dbg !4634
  br label %return, !dbg !4634

if.end210:                                        ; preds = %lor.end
  %219 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4635
  %enable211 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %219, i32 0, i32 17, !dbg !4636
  %220 = load i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %enable211, align 8, !dbg !4636
  %221 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4637
  %222 = load i32, i32* %enable, align 4, !dbg !4638
  %call212 = call i32 %220(%struct.ptp_clock_info* %221, %struct.ptp_clock_request* %req, i32 %222) #10, !dbg !4635
  store i32 %call212, i32* %err, align 4, !dbg !4639
  %223 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4640
  %pincfg_mux213 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %223, i32 0, i32 9, !dbg !4641
  call void @mutex_unlock(%struct.mutex* %pincfg_mux213) #10, !dbg !4642
  br label %sw.epilog, !dbg !4643

sw.bb214:                                         ; preds = %do.end, %do.end
  %224 = bitcast %struct.ptp_clock_request* %req to i8*, !dbg !4644
  call void @llvm.memset.p0i8.i64(i8* align 8 %224, i8 0, i64 64, i1 false), !dbg !4644
  %call215 = call zeroext i1 @capable(i32 25) #10, !dbg !4645
  br i1 %call215, label %if.end217, label %if.then216, !dbg !4647

if.then216:                                       ; preds = %sw.bb214
  store i64 -1, i64* %retval, align 8, !dbg !4648
  br label %return, !dbg !4648

if.end217:                                        ; preds = %sw.bb214
  %type218 = getelementptr inbounds %struct.ptp_clock_request, %struct.ptp_clock_request* %req, i32 0, i32 0, !dbg !4649
  store i32 2, i32* %type218, align 8, !dbg !4650
  %225 = load i64, i64* %arg.addr, align 8, !dbg !4651
  %tobool219 = icmp ne i64 %225, 0, !dbg !4651
  %226 = zext i1 %tobool219 to i64, !dbg !4651
  %cond220 = select i1 %tobool219, i32 1, i32 0, !dbg !4651
  store i32 %cond220, i32* %enable, align 4, !dbg !4652
  %227 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4653
  %pincfg_mux221 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %227, i32 0, i32 9, !dbg !4655
  %call222 = call i32 @mutex_lock_interruptible(%struct.mutex* %pincfg_mux221) #10, !dbg !4656
  %tobool223 = icmp ne i32 %call222, 0, !dbg !4656
  br i1 %tobool223, label %if.then224, label %if.end225, !dbg !4657

if.then224:                                       ; preds = %if.end217
  store i64 -512, i64* %retval, align 8, !dbg !4658
  br label %return, !dbg !4658

if.end225:                                        ; preds = %if.end217
  %228 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4659
  %enable226 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %228, i32 0, i32 17, !dbg !4660
  %229 = load i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)*, i32 (%struct.ptp_clock_info*, %struct.ptp_clock_request*, i32)** %enable226, align 8, !dbg !4660
  %230 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4661
  %231 = load i32, i32* %enable, align 4, !dbg !4662
  %call227 = call i32 %229(%struct.ptp_clock_info* %230, %struct.ptp_clock_request* %req, i32 %231) #10, !dbg !4659
  store i32 %call227, i32* %err, align 4, !dbg !4663
  %232 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4664
  %pincfg_mux228 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %232, i32 0, i32 9, !dbg !4665
  call void @mutex_unlock(%struct.mutex* %pincfg_mux228) #10, !dbg !4666
  br label %sw.epilog, !dbg !4667

sw.bb229:                                         ; preds = %do.end, %do.end
  %233 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4668
  %info230 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %233, i32 0, i32 2, !dbg !4670
  %234 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info230, align 8, !dbg !4670
  %getcrosststamp231 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %234, i32 0, i32 15, !dbg !4671
  %235 = load i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)*, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)** %getcrosststamp231, align 8, !dbg !4671
  %tobool232 = icmp ne i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)* %235, null, !dbg !4668
  br i1 %tobool232, label %if.end234, label %if.then233, !dbg !4672

if.then233:                                       ; preds = %sw.bb229
  store i32 -95, i32* %err, align 4, !dbg !4673
  br label %sw.epilog, !dbg !4675

if.end234:                                        ; preds = %sw.bb229
  %236 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4676
  %info235 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %236, i32 0, i32 2, !dbg !4677
  %237 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info235, align 8, !dbg !4677
  %getcrosststamp236 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %237, i32 0, i32 15, !dbg !4678
  %238 = load i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)*, i32 (%struct.ptp_clock_info*, %struct.system_device_crosststamp*)** %getcrosststamp236, align 8, !dbg !4678
  %239 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4679
  %info237 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %239, i32 0, i32 2, !dbg !4680
  %240 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info237, align 8, !dbg !4680
  %call238 = call i32 %238(%struct.ptp_clock_info* %240, %struct.system_device_crosststamp* %xtstamp) #10, !dbg !4676
  store i32 %call238, i32* %err, align 4, !dbg !4681
  %241 = load i32, i32* %err, align 4, !dbg !4682
  %tobool239 = icmp ne i32 %241, 0, !dbg !4682
  br i1 %tobool239, label %if.then240, label %if.end241, !dbg !4684

if.then240:                                       ; preds = %if.end234
  br label %sw.epilog, !dbg !4685

if.end241:                                        ; preds = %if.end234
  %242 = bitcast %struct.ptp_sys_offset_precise* %precise_offset to i8*, !dbg !4686
  call void @llvm.memset.p0i8.i64(i8* align 8 %242, i8 0, i64 64, i1 false), !dbg !4686
  %device = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %xtstamp, i32 0, i32 0, !dbg !4687
  %243 = load i64, i64* %device, align 8, !dbg !4687
  %call243 = call { i64, i64 } @ns_to_timespec64(i64 %243) #10, !dbg !4687
  %244 = bitcast %struct.timespec64* %tmp242 to { i64, i64 }*, !dbg !4687
  %245 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %244, i32 0, i32 0, !dbg !4687
  %246 = extractvalue { i64, i64 } %call243, 0, !dbg !4687
  store i64 %246, i64* %245, align 8, !dbg !4687
  %247 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %244, i32 0, i32 1, !dbg !4687
  %248 = extractvalue { i64, i64 } %call243, 1, !dbg !4687
  store i64 %248, i64* %247, align 8, !dbg !4687
  %249 = bitcast %struct.timespec64* %ts to i8*, !dbg !4687
  %250 = bitcast %struct.timespec64* %tmp242 to i8*, !dbg !4687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %249, i8* align 8 %250, i64 16, i1 false), !dbg !4687
  %tv_sec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !4688
  %251 = load i64, i64* %tv_sec, align 8, !dbg !4688
  %device244 = getelementptr inbounds %struct.ptp_sys_offset_precise, %struct.ptp_sys_offset_precise* %precise_offset, i32 0, i32 0, !dbg !4689
  %sec245 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %device244, i32 0, i32 0, !dbg !4690
  store i64 %251, i64* %sec245, align 8, !dbg !4691
  %tv_nsec = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !4692
  %252 = load i64, i64* %tv_nsec, align 8, !dbg !4692
  %conv246 = trunc i64 %252 to i32, !dbg !4693
  %device247 = getelementptr inbounds %struct.ptp_sys_offset_precise, %struct.ptp_sys_offset_precise* %precise_offset, i32 0, i32 0, !dbg !4694
  %nsec248 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %device247, i32 0, i32 1, !dbg !4695
  store i32 %conv246, i32* %nsec248, align 8, !dbg !4696
  %sys_realtime = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %xtstamp, i32 0, i32 1, !dbg !4697
  %253 = load i64, i64* %sys_realtime, align 8, !dbg !4697
  %call250 = call { i64, i64 } @ns_to_timespec64(i64 %253) #10, !dbg !4697
  %254 = bitcast %struct.timespec64* %tmp249 to { i64, i64 }*, !dbg !4697
  %255 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %254, i32 0, i32 0, !dbg !4697
  %256 = extractvalue { i64, i64 } %call250, 0, !dbg !4697
  store i64 %256, i64* %255, align 8, !dbg !4697
  %257 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %254, i32 0, i32 1, !dbg !4697
  %258 = extractvalue { i64, i64 } %call250, 1, !dbg !4697
  store i64 %258, i64* %257, align 8, !dbg !4697
  %259 = bitcast %struct.timespec64* %ts to i8*, !dbg !4697
  %260 = bitcast %struct.timespec64* %tmp249 to i8*, !dbg !4697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %259, i8* align 8 %260, i64 16, i1 false), !dbg !4697
  %tv_sec251 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !4698
  %261 = load i64, i64* %tv_sec251, align 8, !dbg !4698
  %sys_realtime252 = getelementptr inbounds %struct.ptp_sys_offset_precise, %struct.ptp_sys_offset_precise* %precise_offset, i32 0, i32 1, !dbg !4699
  %sec253 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %sys_realtime252, i32 0, i32 0, !dbg !4700
  store i64 %261, i64* %sec253, align 8, !dbg !4701
  %tv_nsec254 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !4702
  %262 = load i64, i64* %tv_nsec254, align 8, !dbg !4702
  %conv255 = trunc i64 %262 to i32, !dbg !4703
  %sys_realtime256 = getelementptr inbounds %struct.ptp_sys_offset_precise, %struct.ptp_sys_offset_precise* %precise_offset, i32 0, i32 1, !dbg !4704
  %nsec257 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %sys_realtime256, i32 0, i32 1, !dbg !4705
  store i32 %conv255, i32* %nsec257, align 8, !dbg !4706
  %sys_monoraw = getelementptr inbounds %struct.system_device_crosststamp, %struct.system_device_crosststamp* %xtstamp, i32 0, i32 2, !dbg !4707
  %263 = load i64, i64* %sys_monoraw, align 8, !dbg !4707
  %call259 = call { i64, i64 } @ns_to_timespec64(i64 %263) #10, !dbg !4707
  %264 = bitcast %struct.timespec64* %tmp258 to { i64, i64 }*, !dbg !4707
  %265 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %264, i32 0, i32 0, !dbg !4707
  %266 = extractvalue { i64, i64 } %call259, 0, !dbg !4707
  store i64 %266, i64* %265, align 8, !dbg !4707
  %267 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %264, i32 0, i32 1, !dbg !4707
  %268 = extractvalue { i64, i64 } %call259, 1, !dbg !4707
  store i64 %268, i64* %267, align 8, !dbg !4707
  %269 = bitcast %struct.timespec64* %ts to i8*, !dbg !4707
  %270 = bitcast %struct.timespec64* %tmp258 to i8*, !dbg !4707
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %269, i8* align 8 %270, i64 16, i1 false), !dbg !4707
  %tv_sec260 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !4708
  %271 = load i64, i64* %tv_sec260, align 8, !dbg !4708
  %sys_monoraw261 = getelementptr inbounds %struct.ptp_sys_offset_precise, %struct.ptp_sys_offset_precise* %precise_offset, i32 0, i32 2, !dbg !4709
  %sec262 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %sys_monoraw261, i32 0, i32 0, !dbg !4710
  store i64 %271, i64* %sec262, align 8, !dbg !4711
  %tv_nsec263 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !4712
  %272 = load i64, i64* %tv_nsec263, align 8, !dbg !4712
  %conv264 = trunc i64 %272 to i32, !dbg !4713
  %sys_monoraw265 = getelementptr inbounds %struct.ptp_sys_offset_precise, %struct.ptp_sys_offset_precise* %precise_offset, i32 0, i32 2, !dbg !4714
  %nsec266 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %sys_monoraw265, i32 0, i32 1, !dbg !4715
  store i32 %conv264, i32* %nsec266, align 8, !dbg !4716
  %273 = load i64, i64* %arg.addr, align 8, !dbg !4717
  %274 = inttoptr i64 %273 to i8*, !dbg !4718
  %275 = bitcast %struct.ptp_sys_offset_precise* %precise_offset to i8*, !dbg !4719
  store i8* %274, i8** %to.addr.i666, align 8
  store i8* %275, i8** %from.addr.i667, align 8
  store i64 64, i64* %n.addr.i668, align 8
  %276 = load i8*, i8** %from.addr.i667, align 8, !dbg !4720
  %277 = load i64, i64* %n.addr.i668, align 8, !dbg !4720
  store i8* %276, i8** %addr.addr.i.i660, align 8
  store i64 %277, i64* %bytes.addr.i.i661, align 8
  store i8 1, i8* %is_source.addr.i.i662, align 1
  store i32 -1, i32* %sz.i.i663, align 4, !dbg !4076
  %278 = load i32, i32* %sz.i.i663, align 4, !dbg !4721
  %cmp.i.i669 = icmp sge i32 %278, 0, !dbg !4721
  br i1 %cmp.i.i669, label %land.rhs.i.i672, label %land.end.i.i676, !dbg !4721

land.rhs.i.i672:                                  ; preds = %if.end241
  %279 = load i32, i32* %sz.i.i663, align 4, !dbg !4721
  %conv.i.i670 = sext i32 %279 to i64, !dbg !4721
  %280 = load i64, i64* %bytes.addr.i.i661, align 8, !dbg !4721
  %cmp1.i.i671 = icmp ult i64 %conv.i.i670, %280, !dbg !4721
  br label %land.end.i.i676

land.end.i.i676:                                  ; preds = %land.rhs.i.i672, %if.end241
  %281 = phi i1 [ false, %if.end241 ], [ %cmp1.i.i671, %land.rhs.i.i672 ], !dbg !4722
  %lnot.i.i673 = xor i1 %281, true, !dbg !4721
  %lnot.ext.i.i674 = zext i1 %281 to i32, !dbg !4721
  %conv4.i.i675 = sext i32 %lnot.ext.i.i674 to i64, !dbg !4721
  br i1 %281, label %if.then.i.i677, label %if.end10.i.i692, !dbg !4723

if.then.i.i677:                                   ; preds = %land.end.i.i676
  %282 = load i64, i64* %bytes.addr.i.i661, align 8, !dbg !4724
  %283 = call i1 @llvm.is.constant.i64(i64 %282) #9, !dbg !4725
  br i1 %283, label %if.else.i.i680, label %if.then5.i.i678, !dbg !4726

if.then5.i.i678:                                  ; preds = %if.then.i.i677
  %284 = load i32, i32* %sz.i.i663, align 4, !dbg !4727
  %285 = load i64, i64* %bytes.addr.i.i661, align 8, !dbg !4728
  call void @copy_overflow(i32 %284, i64 %285) #12, !dbg !4729
  br label %if.end9.i.i684, !dbg !4729

if.else.i.i680:                                   ; preds = %if.then.i.i677
  %286 = load i8, i8* %is_source.addr.i.i662, align 1, !dbg !4730
  %tobool6.i.i679 = trunc i8 %286 to i1, !dbg !4730
  br i1 %tobool6.i.i679, label %if.then7.i.i681, label %if.else8.i.i682, !dbg !4731

if.then7.i.i681:                                  ; preds = %if.else.i.i680
  call void @__bad_copy_from() #12, !dbg !4732
  br label %if.end.i.i683, !dbg !4732

if.else8.i.i682:                                  ; preds = %if.else.i.i680
  call void @__bad_copy_to() #12, !dbg !4733
  br label %if.end.i.i683

if.end.i.i683:                                    ; preds = %if.else8.i.i682, %if.then7.i.i681
  br label %if.end9.i.i684

if.end9.i.i684:                                   ; preds = %if.end.i.i683, %if.then5.i.i678
  store i1 false, i1* %retval.i.i659, align 1, !dbg !4734
  br label %check_copy_size.exit.i706, !dbg !4734

if.end10.i.i692:                                  ; preds = %land.end.i.i676
  %287 = load i64, i64* %bytes.addr.i.i661, align 8, !dbg !4077
  %cmp11.i.i685 = icmp ugt i64 %287, 2147483647, !dbg !4077
  %lnot13.i.i686 = xor i1 %cmp11.i.i685, true, !dbg !4077
  %lnot.ext16.i.i687 = zext i1 %cmp11.i.i685 to i32, !dbg !4077
  store i32 %lnot.ext16.i.i687, i32* %__ret_warn_on.i.i664, align 4, !dbg !4077
  %288 = load i32, i32* %__ret_warn_on.i.i664, align 4, !dbg !4735
  %tobool17.i.i688 = icmp ne i32 %288, 0, !dbg !4735
  %lnot18.i.i689 = xor i1 %tobool17.i.i688, true, !dbg !4735
  %lnot.ext21.i.i690 = zext i1 %tobool17.i.i688 to i32, !dbg !4735
  %conv22.i.i691 = sext i32 %lnot.ext21.i.i690 to i64, !dbg !4735
  br i1 %tobool17.i.i688, label %if.then24.i.i693, label %if.end31.i.i699, !dbg !4077

if.then24.i.i693:                                 ; preds = %if.end10.i.i692
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !4736, !srcloc !4269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !4737, !srcloc !4272
  br label %if.end31.i.i699, !dbg !4738

if.end31.i.i699:                                  ; preds = %if.then24.i.i693, %if.end10.i.i692
  %289 = load i32, i32* %__ret_warn_on.i.i664, align 4, !dbg !4077
  %tobool32.i.i694 = icmp ne i32 %289, 0, !dbg !4077
  %lnot33.i.i695 = xor i1 %tobool32.i.i694, true, !dbg !4077
  %lnot.ext36.i.i696 = zext i1 %tobool32.i.i694 to i32, !dbg !4077
  %conv37.i.i697 = sext i32 %lnot.ext36.i.i696 to i64, !dbg !4077
  store i64 %conv37.i.i697, i64* %tmp.i.i665, align 8, !dbg !4735
  %290 = load i64, i64* %tmp.i.i665, align 8, !dbg !4077
  %tobool38.i.i698 = icmp ne i64 %290, 0, !dbg !4739
  br i1 %tobool38.i.i698, label %if.then39.i.i700, label %if.end40.i.i702, !dbg !4740

if.then39.i.i700:                                 ; preds = %if.end31.i.i699
  store i1 false, i1* %retval.i.i659, align 1, !dbg !4741
  br label %check_copy_size.exit.i706, !dbg !4741

if.end40.i.i702:                                  ; preds = %if.end31.i.i699
  %291 = load i8*, i8** %addr.addr.i.i660, align 8, !dbg !4742
  %292 = load i64, i64* %bytes.addr.i.i661, align 8, !dbg !4743
  %293 = load i8, i8* %is_source.addr.i.i662, align 1, !dbg !4744
  %tobool41.i.i701 = trunc i8 %293 to i1, !dbg !4744
  call void @check_object_size(i8* %291, i64 %292, i1 zeroext %tobool41.i.i701) #12, !dbg !4745
  store i1 true, i1* %retval.i.i659, align 1, !dbg !4746
  br label %check_copy_size.exit.i706, !dbg !4746

check_copy_size.exit.i706:                        ; preds = %if.end40.i.i702, %if.then39.i.i700, %if.end9.i.i684
  %294 = load i1, i1* %retval.i.i659, align 1, !dbg !4747
  %lnot.i703 = xor i1 %294, true, !dbg !4720
  %lnot.ext.i704 = zext i1 %294 to i32, !dbg !4720
  %conv.i705 = sext i32 %lnot.ext.i704 to i64, !dbg !4720
  br i1 %294, label %if.then.i708, label %copy_to_user.exit709, !dbg !4748

if.then.i708:                                     ; preds = %check_copy_size.exit.i706
  %295 = load i8*, i8** %to.addr.i666, align 8, !dbg !4749
  %296 = load i8*, i8** %from.addr.i667, align 8, !dbg !4750
  %297 = load i64, i64* %n.addr.i668, align 8, !dbg !4751
  %call2.i707 = call i64 @_copy_to_user(i8* %295, i8* %296, i64 %297) #12, !dbg !4752
  store i64 %call2.i707, i64* %n.addr.i668, align 8, !dbg !4753
  br label %copy_to_user.exit709, !dbg !4754

copy_to_user.exit709:                             ; preds = %check_copy_size.exit.i706, %if.then.i708
  %298 = load i64, i64* %n.addr.i668, align 8, !dbg !4755
  %tobool268 = icmp ne i64 %298, 0, !dbg !4756
  br i1 %tobool268, label %if.then269, label %if.end270, !dbg !4757

if.then269:                                       ; preds = %copy_to_user.exit709
  store i32 -14, i32* %err, align 4, !dbg !4758
  br label %if.end270, !dbg !4759

if.end270:                                        ; preds = %if.then269, %copy_to_user.exit709
  br label %sw.epilog, !dbg !4760

sw.bb271:                                         ; preds = %do.end, %do.end
  %299 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4761
  %info272 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %299, i32 0, i32 2, !dbg !4763
  %300 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info272, align 8, !dbg !4763
  %gettimex64 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %300, i32 0, i32 14, !dbg !4764
  %301 = load i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)** %gettimex64, align 8, !dbg !4764
  %tobool273 = icmp ne i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)* %301, null, !dbg !4761
  br i1 %tobool273, label %if.end275, label %if.then274, !dbg !4765

if.then274:                                       ; preds = %sw.bb271
  store i32 -95, i32* %err, align 4, !dbg !4766
  br label %sw.epilog, !dbg !4768

if.end275:                                        ; preds = %sw.bb271
  %302 = load i64, i64* %arg.addr, align 8, !dbg !4769
  %303 = inttoptr i64 %302 to i8*, !dbg !4770
  %call276 = call i8* @memdup_user(i8* %303, i64 1216) #10, !dbg !4771
  %304 = bitcast i8* %call276 to %struct.ptp_sys_offset_extended*, !dbg !4771
  store %struct.ptp_sys_offset_extended* %304, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4772
  %305 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4773
  %306 = bitcast %struct.ptp_sys_offset_extended* %305 to i8*, !dbg !4773
  %call277 = call zeroext i1 @IS_ERR(i8* %306) #10, !dbg !4775
  br i1 %call277, label %if.then278, label %if.end281, !dbg !4776

if.then278:                                       ; preds = %if.end275
  %307 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4777
  %308 = bitcast %struct.ptp_sys_offset_extended* %307 to i8*, !dbg !4777
  %call279 = call i64 @PTR_ERR(i8* %308) #10, !dbg !4779
  %conv280 = trunc i64 %call279 to i32, !dbg !4779
  store i32 %conv280, i32* %err, align 4, !dbg !4780
  store %struct.ptp_sys_offset_extended* null, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4781
  br label %sw.epilog, !dbg !4782

if.end281:                                        ; preds = %if.end275
  %309 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4783
  %n_samples = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %309, i32 0, i32 0, !dbg !4785
  %310 = load i32, i32* %n_samples, align 8, !dbg !4785
  %cmp282 = icmp ugt i32 %310, 25, !dbg !4786
  br i1 %cmp282, label %if.then296, label %lor.lhs.false284, !dbg !4787

lor.lhs.false284:                                 ; preds = %if.end281
  %311 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4788
  %rsv285 = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %311, i32 0, i32 1, !dbg !4789
  %arrayidx286 = getelementptr [3 x i32], [3 x i32]* %rsv285, i64 0, i64 0, !dbg !4788
  %312 = load i32, i32* %arrayidx286, align 4, !dbg !4788
  %tobool287 = icmp ne i32 %312, 0, !dbg !4788
  br i1 %tobool287, label %if.then296, label %lor.lhs.false288, !dbg !4790

lor.lhs.false288:                                 ; preds = %lor.lhs.false284
  %313 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4791
  %rsv289 = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %313, i32 0, i32 1, !dbg !4792
  %arrayidx290 = getelementptr [3 x i32], [3 x i32]* %rsv289, i64 0, i64 1, !dbg !4791
  %314 = load i32, i32* %arrayidx290, align 4, !dbg !4791
  %tobool291 = icmp ne i32 %314, 0, !dbg !4791
  br i1 %tobool291, label %if.then296, label %lor.lhs.false292, !dbg !4793

lor.lhs.false292:                                 ; preds = %lor.lhs.false288
  %315 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4794
  %rsv293 = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %315, i32 0, i32 1, !dbg !4795
  %arrayidx294 = getelementptr [3 x i32], [3 x i32]* %rsv293, i64 0, i64 2, !dbg !4794
  %316 = load i32, i32* %arrayidx294, align 4, !dbg !4794
  %tobool295 = icmp ne i32 %316, 0, !dbg !4794
  br i1 %tobool295, label %if.then296, label %if.end297, !dbg !4796

if.then296:                                       ; preds = %lor.lhs.false292, %lor.lhs.false288, %lor.lhs.false284, %if.end281
  store i32 -22, i32* %err, align 4, !dbg !4797
  br label %sw.epilog, !dbg !4799

if.end297:                                        ; preds = %lor.lhs.false292
  store i32 0, i32* %i, align 4, !dbg !4800
  br label %for.cond, !dbg !4802

for.cond:                                         ; preds = %for.inc, %if.end297
  %317 = load i32, i32* %i, align 4, !dbg !4803
  %318 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4805
  %n_samples298 = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %318, i32 0, i32 0, !dbg !4806
  %319 = load i32, i32* %n_samples298, align 8, !dbg !4806
  %cmp299 = icmp ult i32 %317, %319, !dbg !4807
  br i1 %cmp299, label %for.body, label %for.end, !dbg !4808

for.body:                                         ; preds = %for.cond
  %320 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4809
  %info301 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %320, i32 0, i32 2, !dbg !4811
  %321 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info301, align 8, !dbg !4811
  %gettimex64302 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %321, i32 0, i32 14, !dbg !4812
  %322 = load i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)** %gettimex64302, align 8, !dbg !4812
  %323 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !4813
  %info303 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %323, i32 0, i32 2, !dbg !4814
  %324 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %info303, align 8, !dbg !4814
  %call304 = call i32 %322(%struct.ptp_clock_info* %324, %struct.timespec64* %ts, %struct.ptp_system_timestamp* %sts) #10, !dbg !4809
  store i32 %call304, i32* %err, align 4, !dbg !4815
  %325 = load i32, i32* %err, align 4, !dbg !4816
  %tobool305 = icmp ne i32 %325, 0, !dbg !4816
  br i1 %tobool305, label %if.then306, label %if.end307, !dbg !4818

if.then306:                                       ; preds = %for.body
  br label %out, !dbg !4819

if.end307:                                        ; preds = %for.body
  %pre_ts = getelementptr inbounds %struct.ptp_system_timestamp, %struct.ptp_system_timestamp* %sts, i32 0, i32 0, !dbg !4820
  %tv_sec308 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %pre_ts, i32 0, i32 0, !dbg !4821
  %326 = load i64, i64* %tv_sec308, align 8, !dbg !4821
  %327 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4822
  %ts309 = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %327, i32 0, i32 2, !dbg !4823
  %328 = load i32, i32* %i, align 4, !dbg !4824
  %idxprom = zext i32 %328 to i64, !dbg !4822
  %arrayidx310 = getelementptr [25 x [3 x %struct.ptp_clock_time]], [25 x [3 x %struct.ptp_clock_time]]* %ts309, i64 0, i64 %idxprom, !dbg !4822
  %arrayidx311 = getelementptr [3 x %struct.ptp_clock_time], [3 x %struct.ptp_clock_time]* %arrayidx310, i64 0, i64 0, !dbg !4822
  %sec312 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %arrayidx311, i32 0, i32 0, !dbg !4825
  store i64 %326, i64* %sec312, align 8, !dbg !4826
  %pre_ts313 = getelementptr inbounds %struct.ptp_system_timestamp, %struct.ptp_system_timestamp* %sts, i32 0, i32 0, !dbg !4827
  %tv_nsec314 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %pre_ts313, i32 0, i32 1, !dbg !4828
  %329 = load i64, i64* %tv_nsec314, align 8, !dbg !4828
  %conv315 = trunc i64 %329 to i32, !dbg !4829
  %330 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4830
  %ts316 = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %330, i32 0, i32 2, !dbg !4831
  %331 = load i32, i32* %i, align 4, !dbg !4832
  %idxprom317 = zext i32 %331 to i64, !dbg !4830
  %arrayidx318 = getelementptr [25 x [3 x %struct.ptp_clock_time]], [25 x [3 x %struct.ptp_clock_time]]* %ts316, i64 0, i64 %idxprom317, !dbg !4830
  %arrayidx319 = getelementptr [3 x %struct.ptp_clock_time], [3 x %struct.ptp_clock_time]* %arrayidx318, i64 0, i64 0, !dbg !4830
  %nsec320 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %arrayidx319, i32 0, i32 1, !dbg !4833
  store i32 %conv315, i32* %nsec320, align 8, !dbg !4834
  %tv_sec321 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !4835
  %332 = load i64, i64* %tv_sec321, align 8, !dbg !4835
  %333 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4836
  %ts322 = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %333, i32 0, i32 2, !dbg !4837
  %334 = load i32, i32* %i, align 4, !dbg !4838
  %idxprom323 = zext i32 %334 to i64, !dbg !4836
  %arrayidx324 = getelementptr [25 x [3 x %struct.ptp_clock_time]], [25 x [3 x %struct.ptp_clock_time]]* %ts322, i64 0, i64 %idxprom323, !dbg !4836
  %arrayidx325 = getelementptr [3 x %struct.ptp_clock_time], [3 x %struct.ptp_clock_time]* %arrayidx324, i64 0, i64 1, !dbg !4836
  %sec326 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %arrayidx325, i32 0, i32 0, !dbg !4839
  store i64 %332, i64* %sec326, align 8, !dbg !4840
  %tv_nsec327 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !4841
  %335 = load i64, i64* %tv_nsec327, align 8, !dbg !4841
  %conv328 = trunc i64 %335 to i32, !dbg !4842
  %336 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4843
  %ts329 = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %336, i32 0, i32 2, !dbg !4844
  %337 = load i32, i32* %i, align 4, !dbg !4845
  %idxprom330 = zext i32 %337 to i64, !dbg !4843
  %arrayidx331 = getelementptr [25 x [3 x %struct.ptp_clock_time]], [25 x [3 x %struct.ptp_clock_time]]* %ts329, i64 0, i64 %idxprom330, !dbg !4843
  %arrayidx332 = getelementptr [3 x %struct.ptp_clock_time], [3 x %struct.ptp_clock_time]* %arrayidx331, i64 0, i64 1, !dbg !4843
  %nsec333 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %arrayidx332, i32 0, i32 1, !dbg !4846
  store i32 %conv328, i32* %nsec333, align 8, !dbg !4847
  %post_ts = getelementptr inbounds %struct.ptp_system_timestamp, %struct.ptp_system_timestamp* %sts, i32 0, i32 1, !dbg !4848
  %tv_sec334 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %post_ts, i32 0, i32 0, !dbg !4849
  %338 = load i64, i64* %tv_sec334, align 8, !dbg !4849
  %339 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4850
  %ts335 = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %339, i32 0, i32 2, !dbg !4851
  %340 = load i32, i32* %i, align 4, !dbg !4852
  %idxprom336 = zext i32 %340 to i64, !dbg !4850
  %arrayidx337 = getelementptr [25 x [3 x %struct.ptp_clock_time]], [25 x [3 x %struct.ptp_clock_time]]* %ts335, i64 0, i64 %idxprom336, !dbg !4850
  %arrayidx338 = getelementptr [3 x %struct.ptp_clock_time], [3 x %struct.ptp_clock_time]* %arrayidx337, i64 0, i64 2, !dbg !4850
  %sec339 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %arrayidx338, i32 0, i32 0, !dbg !4853
  store i64 %338, i64* %sec339, align 8, !dbg !4854
  %post_ts340 = getelementptr inbounds %struct.ptp_system_timestamp, %struct.ptp_system_timestamp* %sts, i32 0, i32 1, !dbg !4855
  %tv_nsec341 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %post_ts340, i32 0, i32 1, !dbg !4856
  %341 = load i64, i64* %tv_nsec341, align 8, !dbg !4856
  %conv342 = trunc i64 %341 to i32, !dbg !4857
  %342 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4858
  %ts343 = getelementptr inbounds %struct.ptp_sys_offset_extended, %struct.ptp_sys_offset_extended* %342, i32 0, i32 2, !dbg !4859
  %343 = load i32, i32* %i, align 4, !dbg !4860
  %idxprom344 = zext i32 %343 to i64, !dbg !4858
  %arrayidx345 = getelementptr [25 x [3 x %struct.ptp_clock_time]], [25 x [3 x %struct.ptp_clock_time]]* %ts343, i64 0, i64 %idxprom344, !dbg !4858
  %arrayidx346 = getelementptr [3 x %struct.ptp_clock_time], [3 x %struct.ptp_clock_time]* %arrayidx345, i64 0, i64 2, !dbg !4858
  %nsec347 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %arrayidx346, i32 0, i32 1, !dbg !4861
  store i32 %conv342, i32* %nsec347, align 8, !dbg !4862
  br label %for.inc, !dbg !4863

for.inc:                                          ; preds = %if.end307
  %344 = load i32, i32* %i, align 4, !dbg !4864
  %inc = add i32 %344, 1, !dbg !4864
  store i32 %inc, i32* %i, align 4, !dbg !4864
  br label %for.cond, !dbg !4865, !llvm.loop !4866

for.end:                                          ; preds = %for.cond
  %345 = load i64, i64* %arg.addr, align 8, !dbg !4868
  %346 = inttoptr i64 %345 to i8*, !dbg !4869
  %347 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !4870
  %348 = bitcast %struct.ptp_sys_offset_extended* %347 to i8*, !dbg !4870
  store i8* %346, i8** %to.addr.i717, align 8
  store i8* %348, i8** %from.addr.i718, align 8
  store i64 1216, i64* %n.addr.i719, align 8
  %349 = load i8*, i8** %from.addr.i718, align 8, !dbg !4871
  %350 = load i64, i64* %n.addr.i719, align 8, !dbg !4871
  store i8* %349, i8** %addr.addr.i.i711, align 8
  store i64 %350, i64* %bytes.addr.i.i712, align 8
  store i8 1, i8* %is_source.addr.i.i713, align 1
  store i32 -1, i32* %sz.i.i714, align 4, !dbg !4065
  %351 = load i32, i32* %sz.i.i714, align 4, !dbg !4872
  %cmp.i.i720 = icmp sge i32 %351, 0, !dbg !4872
  br i1 %cmp.i.i720, label %land.rhs.i.i723, label %land.end.i.i727, !dbg !4872

land.rhs.i.i723:                                  ; preds = %for.end
  %352 = load i32, i32* %sz.i.i714, align 4, !dbg !4872
  %conv.i.i721 = sext i32 %352 to i64, !dbg !4872
  %353 = load i64, i64* %bytes.addr.i.i712, align 8, !dbg !4872
  %cmp1.i.i722 = icmp ult i64 %conv.i.i721, %353, !dbg !4872
  br label %land.end.i.i727

land.end.i.i727:                                  ; preds = %land.rhs.i.i723, %for.end
  %354 = phi i1 [ false, %for.end ], [ %cmp1.i.i722, %land.rhs.i.i723 ], !dbg !4873
  %lnot.i.i724 = xor i1 %354, true, !dbg !4872
  %lnot.ext.i.i725 = zext i1 %354 to i32, !dbg !4872
  %conv4.i.i726 = sext i32 %lnot.ext.i.i725 to i64, !dbg !4872
  br i1 %354, label %if.then.i.i728, label %if.end10.i.i743, !dbg !4874

if.then.i.i728:                                   ; preds = %land.end.i.i727
  %355 = load i64, i64* %bytes.addr.i.i712, align 8, !dbg !4875
  %356 = call i1 @llvm.is.constant.i64(i64 %355) #9, !dbg !4876
  br i1 %356, label %if.else.i.i731, label %if.then5.i.i729, !dbg !4877

if.then5.i.i729:                                  ; preds = %if.then.i.i728
  %357 = load i32, i32* %sz.i.i714, align 4, !dbg !4878
  %358 = load i64, i64* %bytes.addr.i.i712, align 8, !dbg !4879
  call void @copy_overflow(i32 %357, i64 %358) #12, !dbg !4880
  br label %if.end9.i.i735, !dbg !4880

if.else.i.i731:                                   ; preds = %if.then.i.i728
  %359 = load i8, i8* %is_source.addr.i.i713, align 1, !dbg !4881
  %tobool6.i.i730 = trunc i8 %359 to i1, !dbg !4881
  br i1 %tobool6.i.i730, label %if.then7.i.i732, label %if.else8.i.i733, !dbg !4882

if.then7.i.i732:                                  ; preds = %if.else.i.i731
  call void @__bad_copy_from() #12, !dbg !4883
  br label %if.end.i.i734, !dbg !4883

if.else8.i.i733:                                  ; preds = %if.else.i.i731
  call void @__bad_copy_to() #12, !dbg !4884
  br label %if.end.i.i734

if.end.i.i734:                                    ; preds = %if.else8.i.i733, %if.then7.i.i732
  br label %if.end9.i.i735

if.end9.i.i735:                                   ; preds = %if.end.i.i734, %if.then5.i.i729
  store i1 false, i1* %retval.i.i710, align 1, !dbg !4885
  br label %check_copy_size.exit.i757, !dbg !4885

if.end10.i.i743:                                  ; preds = %land.end.i.i727
  %360 = load i64, i64* %bytes.addr.i.i712, align 8, !dbg !4066
  %cmp11.i.i736 = icmp ugt i64 %360, 2147483647, !dbg !4066
  %lnot13.i.i737 = xor i1 %cmp11.i.i736, true, !dbg !4066
  %lnot.ext16.i.i738 = zext i1 %cmp11.i.i736 to i32, !dbg !4066
  store i32 %lnot.ext16.i.i738, i32* %__ret_warn_on.i.i715, align 4, !dbg !4066
  %361 = load i32, i32* %__ret_warn_on.i.i715, align 4, !dbg !4886
  %tobool17.i.i739 = icmp ne i32 %361, 0, !dbg !4886
  %lnot18.i.i740 = xor i1 %tobool17.i.i739, true, !dbg !4886
  %lnot.ext21.i.i741 = zext i1 %tobool17.i.i739 to i32, !dbg !4886
  %conv22.i.i742 = sext i32 %lnot.ext21.i.i741 to i64, !dbg !4886
  br i1 %tobool17.i.i739, label %if.then24.i.i744, label %if.end31.i.i750, !dbg !4066

if.then24.i.i744:                                 ; preds = %if.end10.i.i743
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !4887, !srcloc !4269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !4888, !srcloc !4272
  br label %if.end31.i.i750, !dbg !4889

if.end31.i.i750:                                  ; preds = %if.then24.i.i744, %if.end10.i.i743
  %362 = load i32, i32* %__ret_warn_on.i.i715, align 4, !dbg !4066
  %tobool32.i.i745 = icmp ne i32 %362, 0, !dbg !4066
  %lnot33.i.i746 = xor i1 %tobool32.i.i745, true, !dbg !4066
  %lnot.ext36.i.i747 = zext i1 %tobool32.i.i745 to i32, !dbg !4066
  %conv37.i.i748 = sext i32 %lnot.ext36.i.i747 to i64, !dbg !4066
  store i64 %conv37.i.i748, i64* %tmp.i.i716, align 8, !dbg !4886
  %363 = load i64, i64* %tmp.i.i716, align 8, !dbg !4066
  %tobool38.i.i749 = icmp ne i64 %363, 0, !dbg !4890
  br i1 %tobool38.i.i749, label %if.then39.i.i751, label %if.end40.i.i753, !dbg !4891

if.then39.i.i751:                                 ; preds = %if.end31.i.i750
  store i1 false, i1* %retval.i.i710, align 1, !dbg !4892
  br label %check_copy_size.exit.i757, !dbg !4892

if.end40.i.i753:                                  ; preds = %if.end31.i.i750
  %364 = load i8*, i8** %addr.addr.i.i711, align 8, !dbg !4893
  %365 = load i64, i64* %bytes.addr.i.i712, align 8, !dbg !4894
  %366 = load i8, i8* %is_source.addr.i.i713, align 1, !dbg !4895
  %tobool41.i.i752 = trunc i8 %366 to i1, !dbg !4895
  call void @check_object_size(i8* %364, i64 %365, i1 zeroext %tobool41.i.i752) #12, !dbg !4896
  store i1 true, i1* %retval.i.i710, align 1, !dbg !4897
  br label %check_copy_size.exit.i757, !dbg !4897

check_copy_size.exit.i757:                        ; preds = %if.end40.i.i753, %if.then39.i.i751, %if.end9.i.i735
  %367 = load i1, i1* %retval.i.i710, align 1, !dbg !4898
  %lnot.i754 = xor i1 %367, true, !dbg !4871
  %lnot.ext.i755 = zext i1 %367 to i32, !dbg !4871
  %conv.i756 = sext i32 %lnot.ext.i755 to i64, !dbg !4871
  br i1 %367, label %if.then.i759, label %copy_to_user.exit760, !dbg !4899

if.then.i759:                                     ; preds = %check_copy_size.exit.i757
  %368 = load i8*, i8** %to.addr.i717, align 8, !dbg !4900
  %369 = load i8*, i8** %from.addr.i718, align 8, !dbg !4901
  %370 = load i64, i64* %n.addr.i719, align 8, !dbg !4902
  %call2.i758 = call i64 @_copy_to_user(i8* %368, i8* %369, i64 %370) #12, !dbg !4903
  store i64 %call2.i758, i64* %n.addr.i719, align 8, !dbg !4904
  br label %copy_to_user.exit760, !dbg !4905

copy_to_user.exit760:                             ; preds = %check_copy_size.exit.i757, %if.then.i759
  %371 = load i64, i64* %n.addr.i719, align 8, !dbg !4906
  %tobool349 = icmp ne i64 %371, 0, !dbg !4907
  br i1 %tobool349, label %if.then350, label %if.end351, !dbg !4908

if.then350:                                       ; preds = %copy_to_user.exit760
  store i32 -14, i32* %err, align 4, !dbg !4909
  br label %if.end351, !dbg !4910

if.end351:                                        ; preds = %if.then350, %copy_to_user.exit760
  br label %sw.epilog, !dbg !4911

sw.bb352:                                         ; preds = %do.end, %do.end
  %372 = load i64, i64* %arg.addr, align 8, !dbg !4912
  %373 = inttoptr i64 %372 to i8*, !dbg !4913
  %call353 = call i8* @memdup_user(i8* %373, i64 832) #10, !dbg !4914
  %374 = bitcast i8* %call353 to %struct.ptp_sys_offset*, !dbg !4914
  store %struct.ptp_sys_offset* %374, %struct.ptp_sys_offset** %sysoff, align 8, !dbg !4915
  %375 = load %struct.ptp_sys_offset*, %struct.ptp_sys_offset** %sysoff, align 8, !dbg !4916
  %376 = bitcast %struct.ptp_sys_offset* %375 to i8*, !dbg !4916
  %call354 = call zeroext i1 @IS_ERR(i8* %376) #10, !dbg !4918
  br i1 %call354, label %if.then355, label %if.end358, !dbg !4919

if.then355:                                       ; preds = %sw.bb352
  %377 = load %struct.ptp_sys_offset*, %struct.ptp_sys_offset** %sysoff, align 8, !dbg !4920
  %378 = bitcast %struct.ptp_sys_offset* %377 to i8*, !dbg !4920
  %call356 = call i64 @PTR_ERR(i8* %378) #10, !dbg !4922
  %conv357 = trunc i64 %call356 to i32, !dbg !4922
  store i32 %conv357, i32* %err, align 4, !dbg !4923
  store %struct.ptp_sys_offset* null, %struct.ptp_sys_offset** %sysoff, align 8, !dbg !4924
  br label %sw.epilog, !dbg !4925

if.end358:                                        ; preds = %sw.bb352
  %379 = load %struct.ptp_sys_offset*, %struct.ptp_sys_offset** %sysoff, align 8, !dbg !4926
  %n_samples359 = getelementptr inbounds %struct.ptp_sys_offset, %struct.ptp_sys_offset* %379, i32 0, i32 0, !dbg !4928
  %380 = load i32, i32* %n_samples359, align 8, !dbg !4928
  %cmp360 = icmp ugt i32 %380, 25, !dbg !4929
  br i1 %cmp360, label %if.then362, label %if.end363, !dbg !4930

if.then362:                                       ; preds = %if.end358
  store i32 -22, i32* %err, align 4, !dbg !4931
  br label %sw.epilog, !dbg !4933

if.end363:                                        ; preds = %if.end358
  %381 = load %struct.ptp_sys_offset*, %struct.ptp_sys_offset** %sysoff, align 8, !dbg !4934
  %ts364 = getelementptr inbounds %struct.ptp_sys_offset, %struct.ptp_sys_offset* %381, i32 0, i32 2, !dbg !4935
  %arrayidx365 = getelementptr [51 x %struct.ptp_clock_time], [51 x %struct.ptp_clock_time]* %ts364, i64 0, i64 0, !dbg !4934
  store %struct.ptp_clock_time* %arrayidx365, %struct.ptp_clock_time** %pct, align 8, !dbg !4936
  store i32 0, i32* %i, align 4, !dbg !4937
  br label %for.cond366, !dbg !4939

for.cond366:                                      ; preds = %for.inc393, %if.end363
  %382 = load i32, i32* %i, align 4, !dbg !4940
  %383 = load %struct.ptp_sys_offset*, %struct.ptp_sys_offset** %sysoff, align 8, !dbg !4942
  %n_samples367 = getelementptr inbounds %struct.ptp_sys_offset, %struct.ptp_sys_offset* %383, i32 0, i32 0, !dbg !4943
  %384 = load i32, i32* %n_samples367, align 8, !dbg !4943
  %cmp368 = icmp ult i32 %382, %384, !dbg !4944
  br i1 %cmp368, label %for.body370, label %for.end395, !dbg !4945

for.body370:                                      ; preds = %for.cond366
  call void @ktime_get_real_ts64(%struct.timespec64* %ts) #10, !dbg !4946
  %tv_sec371 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !4948
  %385 = load i64, i64* %tv_sec371, align 8, !dbg !4948
  %386 = load %struct.ptp_clock_time*, %struct.ptp_clock_time** %pct, align 8, !dbg !4949
  %sec372 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %386, i32 0, i32 0, !dbg !4950
  store i64 %385, i64* %sec372, align 8, !dbg !4951
  %tv_nsec373 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !4952
  %387 = load i64, i64* %tv_nsec373, align 8, !dbg !4952
  %conv374 = trunc i64 %387 to i32, !dbg !4953
  %388 = load %struct.ptp_clock_time*, %struct.ptp_clock_time** %pct, align 8, !dbg !4954
  %nsec375 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %388, i32 0, i32 1, !dbg !4955
  store i32 %conv374, i32* %nsec375, align 8, !dbg !4956
  %389 = load %struct.ptp_clock_time*, %struct.ptp_clock_time** %pct, align 8, !dbg !4957
  %incdec.ptr = getelementptr %struct.ptp_clock_time, %struct.ptp_clock_time* %389, i32 1, !dbg !4957
  store %struct.ptp_clock_time* %incdec.ptr, %struct.ptp_clock_time** %pct, align 8, !dbg !4957
  %390 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4958
  %gettimex64376 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %390, i32 0, i32 14, !dbg !4960
  %391 = load i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)** %gettimex64376, align 8, !dbg !4960
  %tobool377 = icmp ne i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)* %391, null, !dbg !4958
  br i1 %tobool377, label %if.then378, label %if.else381, !dbg !4961

if.then378:                                       ; preds = %for.body370
  %392 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4962
  %gettimex64379 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %392, i32 0, i32 14, !dbg !4963
  %393 = load i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*, %struct.ptp_system_timestamp*)** %gettimex64379, align 8, !dbg !4963
  %394 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4964
  %call380 = call i32 %393(%struct.ptp_clock_info* %394, %struct.timespec64* %ts, %struct.ptp_system_timestamp* null) #10, !dbg !4962
  store i32 %call380, i32* %err, align 4, !dbg !4965
  br label %if.end383, !dbg !4966

if.else381:                                       ; preds = %for.body370
  %395 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4967
  %gettime64 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %395, i32 0, i32 13, !dbg !4968
  %396 = load i32 (%struct.ptp_clock_info*, %struct.timespec64*)*, i32 (%struct.ptp_clock_info*, %struct.timespec64*)** %gettime64, align 8, !dbg !4968
  %397 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !4969
  %call382 = call i32 %396(%struct.ptp_clock_info* %397, %struct.timespec64* %ts) #10, !dbg !4967
  store i32 %call382, i32* %err, align 4, !dbg !4970
  br label %if.end383

if.end383:                                        ; preds = %if.else381, %if.then378
  %398 = load i32, i32* %err, align 4, !dbg !4971
  %tobool384 = icmp ne i32 %398, 0, !dbg !4971
  br i1 %tobool384, label %if.then385, label %if.end386, !dbg !4973

if.then385:                                       ; preds = %if.end383
  br label %out, !dbg !4974

if.end386:                                        ; preds = %if.end383
  %tv_sec387 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !4975
  %399 = load i64, i64* %tv_sec387, align 8, !dbg !4975
  %400 = load %struct.ptp_clock_time*, %struct.ptp_clock_time** %pct, align 8, !dbg !4976
  %sec388 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %400, i32 0, i32 0, !dbg !4977
  store i64 %399, i64* %sec388, align 8, !dbg !4978
  %tv_nsec389 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !4979
  %401 = load i64, i64* %tv_nsec389, align 8, !dbg !4979
  %conv390 = trunc i64 %401 to i32, !dbg !4980
  %402 = load %struct.ptp_clock_time*, %struct.ptp_clock_time** %pct, align 8, !dbg !4981
  %nsec391 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %402, i32 0, i32 1, !dbg !4982
  store i32 %conv390, i32* %nsec391, align 8, !dbg !4983
  %403 = load %struct.ptp_clock_time*, %struct.ptp_clock_time** %pct, align 8, !dbg !4984
  %incdec.ptr392 = getelementptr %struct.ptp_clock_time, %struct.ptp_clock_time* %403, i32 1, !dbg !4984
  store %struct.ptp_clock_time* %incdec.ptr392, %struct.ptp_clock_time** %pct, align 8, !dbg !4984
  br label %for.inc393, !dbg !4985

for.inc393:                                       ; preds = %if.end386
  %404 = load i32, i32* %i, align 4, !dbg !4986
  %inc394 = add i32 %404, 1, !dbg !4986
  store i32 %inc394, i32* %i, align 4, !dbg !4986
  br label %for.cond366, !dbg !4987, !llvm.loop !4988

for.end395:                                       ; preds = %for.cond366
  call void @ktime_get_real_ts64(%struct.timespec64* %ts) #10, !dbg !4990
  %tv_sec396 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 0, !dbg !4991
  %405 = load i64, i64* %tv_sec396, align 8, !dbg !4991
  %406 = load %struct.ptp_clock_time*, %struct.ptp_clock_time** %pct, align 8, !dbg !4992
  %sec397 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %406, i32 0, i32 0, !dbg !4993
  store i64 %405, i64* %sec397, align 8, !dbg !4994
  %tv_nsec398 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %ts, i32 0, i32 1, !dbg !4995
  %407 = load i64, i64* %tv_nsec398, align 8, !dbg !4995
  %conv399 = trunc i64 %407 to i32, !dbg !4996
  %408 = load %struct.ptp_clock_time*, %struct.ptp_clock_time** %pct, align 8, !dbg !4997
  %nsec400 = getelementptr inbounds %struct.ptp_clock_time, %struct.ptp_clock_time* %408, i32 0, i32 1, !dbg !4998
  store i32 %conv399, i32* %nsec400, align 8, !dbg !4999
  %409 = load i64, i64* %arg.addr, align 8, !dbg !5000
  %410 = inttoptr i64 %409 to i8*, !dbg !5001
  %411 = load %struct.ptp_sys_offset*, %struct.ptp_sys_offset** %sysoff, align 8, !dbg !5002
  %412 = bitcast %struct.ptp_sys_offset* %411 to i8*, !dbg !5002
  store i8* %410, i8** %to.addr.i768, align 8
  store i8* %412, i8** %from.addr.i769, align 8
  store i64 832, i64* %n.addr.i770, align 8
  %413 = load i8*, i8** %from.addr.i769, align 8, !dbg !5003
  %414 = load i64, i64* %n.addr.i770, align 8, !dbg !5003
  store i8* %413, i8** %addr.addr.i.i762, align 8
  store i64 %414, i64* %bytes.addr.i.i763, align 8
  store i8 1, i8* %is_source.addr.i.i764, align 1
  store i32 -1, i32* %sz.i.i765, align 4, !dbg !4054
  %415 = load i32, i32* %sz.i.i765, align 4, !dbg !5004
  %cmp.i.i771 = icmp sge i32 %415, 0, !dbg !5004
  br i1 %cmp.i.i771, label %land.rhs.i.i774, label %land.end.i.i778, !dbg !5004

land.rhs.i.i774:                                  ; preds = %for.end395
  %416 = load i32, i32* %sz.i.i765, align 4, !dbg !5004
  %conv.i.i772 = sext i32 %416 to i64, !dbg !5004
  %417 = load i64, i64* %bytes.addr.i.i763, align 8, !dbg !5004
  %cmp1.i.i773 = icmp ult i64 %conv.i.i772, %417, !dbg !5004
  br label %land.end.i.i778

land.end.i.i778:                                  ; preds = %land.rhs.i.i774, %for.end395
  %418 = phi i1 [ false, %for.end395 ], [ %cmp1.i.i773, %land.rhs.i.i774 ], !dbg !5005
  %lnot.i.i775 = xor i1 %418, true, !dbg !5004
  %lnot.ext.i.i776 = zext i1 %418 to i32, !dbg !5004
  %conv4.i.i777 = sext i32 %lnot.ext.i.i776 to i64, !dbg !5004
  br i1 %418, label %if.then.i.i779, label %if.end10.i.i794, !dbg !5006

if.then.i.i779:                                   ; preds = %land.end.i.i778
  %419 = load i64, i64* %bytes.addr.i.i763, align 8, !dbg !5007
  %420 = call i1 @llvm.is.constant.i64(i64 %419) #9, !dbg !5008
  br i1 %420, label %if.else.i.i782, label %if.then5.i.i780, !dbg !5009

if.then5.i.i780:                                  ; preds = %if.then.i.i779
  %421 = load i32, i32* %sz.i.i765, align 4, !dbg !5010
  %422 = load i64, i64* %bytes.addr.i.i763, align 8, !dbg !5011
  call void @copy_overflow(i32 %421, i64 %422) #12, !dbg !5012
  br label %if.end9.i.i786, !dbg !5012

if.else.i.i782:                                   ; preds = %if.then.i.i779
  %423 = load i8, i8* %is_source.addr.i.i764, align 1, !dbg !5013
  %tobool6.i.i781 = trunc i8 %423 to i1, !dbg !5013
  br i1 %tobool6.i.i781, label %if.then7.i.i783, label %if.else8.i.i784, !dbg !5014

if.then7.i.i783:                                  ; preds = %if.else.i.i782
  call void @__bad_copy_from() #12, !dbg !5015
  br label %if.end.i.i785, !dbg !5015

if.else8.i.i784:                                  ; preds = %if.else.i.i782
  call void @__bad_copy_to() #12, !dbg !5016
  br label %if.end.i.i785

if.end.i.i785:                                    ; preds = %if.else8.i.i784, %if.then7.i.i783
  br label %if.end9.i.i786

if.end9.i.i786:                                   ; preds = %if.end.i.i785, %if.then5.i.i780
  store i1 false, i1* %retval.i.i761, align 1, !dbg !5017
  br label %check_copy_size.exit.i808, !dbg !5017

if.end10.i.i794:                                  ; preds = %land.end.i.i778
  %424 = load i64, i64* %bytes.addr.i.i763, align 8, !dbg !4055
  %cmp11.i.i787 = icmp ugt i64 %424, 2147483647, !dbg !4055
  %lnot13.i.i788 = xor i1 %cmp11.i.i787, true, !dbg !4055
  %lnot.ext16.i.i789 = zext i1 %cmp11.i.i787 to i32, !dbg !4055
  store i32 %lnot.ext16.i.i789, i32* %__ret_warn_on.i.i766, align 4, !dbg !4055
  %425 = load i32, i32* %__ret_warn_on.i.i766, align 4, !dbg !5018
  %tobool17.i.i790 = icmp ne i32 %425, 0, !dbg !5018
  %lnot18.i.i791 = xor i1 %tobool17.i.i790, true, !dbg !5018
  %lnot.ext21.i.i792 = zext i1 %tobool17.i.i790 to i32, !dbg !5018
  %conv22.i.i793 = sext i32 %lnot.ext21.i.i792 to i64, !dbg !5018
  br i1 %tobool17.i.i790, label %if.then24.i.i795, label %if.end31.i.i801, !dbg !4055

if.then24.i.i795:                                 ; preds = %if.end10.i.i794
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !5019, !srcloc !4269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !5020, !srcloc !4272
  br label %if.end31.i.i801, !dbg !5021

if.end31.i.i801:                                  ; preds = %if.then24.i.i795, %if.end10.i.i794
  %426 = load i32, i32* %__ret_warn_on.i.i766, align 4, !dbg !4055
  %tobool32.i.i796 = icmp ne i32 %426, 0, !dbg !4055
  %lnot33.i.i797 = xor i1 %tobool32.i.i796, true, !dbg !4055
  %lnot.ext36.i.i798 = zext i1 %tobool32.i.i796 to i32, !dbg !4055
  %conv37.i.i799 = sext i32 %lnot.ext36.i.i798 to i64, !dbg !4055
  store i64 %conv37.i.i799, i64* %tmp.i.i767, align 8, !dbg !5018
  %427 = load i64, i64* %tmp.i.i767, align 8, !dbg !4055
  %tobool38.i.i800 = icmp ne i64 %427, 0, !dbg !5022
  br i1 %tobool38.i.i800, label %if.then39.i.i802, label %if.end40.i.i804, !dbg !5023

if.then39.i.i802:                                 ; preds = %if.end31.i.i801
  store i1 false, i1* %retval.i.i761, align 1, !dbg !5024
  br label %check_copy_size.exit.i808, !dbg !5024

if.end40.i.i804:                                  ; preds = %if.end31.i.i801
  %428 = load i8*, i8** %addr.addr.i.i762, align 8, !dbg !5025
  %429 = load i64, i64* %bytes.addr.i.i763, align 8, !dbg !5026
  %430 = load i8, i8* %is_source.addr.i.i764, align 1, !dbg !5027
  %tobool41.i.i803 = trunc i8 %430 to i1, !dbg !5027
  call void @check_object_size(i8* %428, i64 %429, i1 zeroext %tobool41.i.i803) #12, !dbg !5028
  store i1 true, i1* %retval.i.i761, align 1, !dbg !5029
  br label %check_copy_size.exit.i808, !dbg !5029

check_copy_size.exit.i808:                        ; preds = %if.end40.i.i804, %if.then39.i.i802, %if.end9.i.i786
  %431 = load i1, i1* %retval.i.i761, align 1, !dbg !5030
  %lnot.i805 = xor i1 %431, true, !dbg !5003
  %lnot.ext.i806 = zext i1 %431 to i32, !dbg !5003
  %conv.i807 = sext i32 %lnot.ext.i806 to i64, !dbg !5003
  br i1 %431, label %if.then.i810, label %copy_to_user.exit811, !dbg !5031

if.then.i810:                                     ; preds = %check_copy_size.exit.i808
  %432 = load i8*, i8** %to.addr.i768, align 8, !dbg !5032
  %433 = load i8*, i8** %from.addr.i769, align 8, !dbg !5033
  %434 = load i64, i64* %n.addr.i770, align 8, !dbg !5034
  %call2.i809 = call i64 @_copy_to_user(i8* %432, i8* %433, i64 %434) #12, !dbg !5035
  store i64 %call2.i809, i64* %n.addr.i770, align 8, !dbg !5036
  br label %copy_to_user.exit811, !dbg !5037

copy_to_user.exit811:                             ; preds = %check_copy_size.exit.i808, %if.then.i810
  %435 = load i64, i64* %n.addr.i770, align 8, !dbg !5038
  %tobool402 = icmp ne i64 %435, 0, !dbg !5039
  br i1 %tobool402, label %if.then403, label %if.end404, !dbg !5040

if.then403:                                       ; preds = %copy_to_user.exit811
  store i32 -14, i32* %err, align 4, !dbg !5041
  br label %if.end404, !dbg !5042

if.end404:                                        ; preds = %if.then403, %copy_to_user.exit811
  br label %sw.epilog, !dbg !5043

sw.bb405:                                         ; preds = %do.end, %do.end
  %436 = bitcast %struct.ptp_pin_desc* %pd to i8*, !dbg !5044
  %437 = load i64, i64* %arg.addr, align 8, !dbg !5045
  %438 = inttoptr i64 %437 to i8*, !dbg !5046
  store i8* %436, i8** %to.addr.i819, align 8
  store i8* %438, i8** %from.addr.i820, align 8
  store i64 96, i64* %n.addr.i821, align 8
  %439 = load i8*, i8** %to.addr.i819, align 8, !dbg !5047
  %440 = load i64, i64* %n.addr.i821, align 8, !dbg !5047
  store i8* %439, i8** %addr.addr.i.i813, align 8
  store i64 %440, i64* %bytes.addr.i.i814, align 8
  store i8 0, i8* %is_source.addr.i.i815, align 1
  store i32 -1, i32* %sz.i.i816, align 4, !dbg !4043
  %441 = load i32, i32* %sz.i.i816, align 4, !dbg !5048
  %cmp.i.i822 = icmp sge i32 %441, 0, !dbg !5048
  br i1 %cmp.i.i822, label %land.rhs.i.i825, label %land.end.i.i829, !dbg !5048

land.rhs.i.i825:                                  ; preds = %sw.bb405
  %442 = load i32, i32* %sz.i.i816, align 4, !dbg !5048
  %conv.i.i823 = sext i32 %442 to i64, !dbg !5048
  %443 = load i64, i64* %bytes.addr.i.i814, align 8, !dbg !5048
  %cmp1.i.i824 = icmp ult i64 %conv.i.i823, %443, !dbg !5048
  br label %land.end.i.i829

land.end.i.i829:                                  ; preds = %land.rhs.i.i825, %sw.bb405
  %444 = phi i1 [ false, %sw.bb405 ], [ %cmp1.i.i824, %land.rhs.i.i825 ], !dbg !5049
  %lnot.i.i826 = xor i1 %444, true, !dbg !5048
  %lnot.ext.i.i827 = zext i1 %444 to i32, !dbg !5048
  %conv4.i.i828 = sext i32 %lnot.ext.i.i827 to i64, !dbg !5048
  br i1 %444, label %if.then.i.i830, label %if.end10.i.i845, !dbg !5050

if.then.i.i830:                                   ; preds = %land.end.i.i829
  %445 = load i64, i64* %bytes.addr.i.i814, align 8, !dbg !5051
  %446 = call i1 @llvm.is.constant.i64(i64 %445) #9, !dbg !5052
  br i1 %446, label %if.else.i.i833, label %if.then5.i.i831, !dbg !5053

if.then5.i.i831:                                  ; preds = %if.then.i.i830
  %447 = load i32, i32* %sz.i.i816, align 4, !dbg !5054
  %448 = load i64, i64* %bytes.addr.i.i814, align 8, !dbg !5055
  call void @copy_overflow(i32 %447, i64 %448) #12, !dbg !5056
  br label %if.end9.i.i837, !dbg !5056

if.else.i.i833:                                   ; preds = %if.then.i.i830
  %449 = load i8, i8* %is_source.addr.i.i815, align 1, !dbg !5057
  %tobool6.i.i832 = trunc i8 %449 to i1, !dbg !5057
  br i1 %tobool6.i.i832, label %if.then7.i.i834, label %if.else8.i.i835, !dbg !5058

if.then7.i.i834:                                  ; preds = %if.else.i.i833
  call void @__bad_copy_from() #12, !dbg !5059
  br label %if.end.i.i836, !dbg !5059

if.else8.i.i835:                                  ; preds = %if.else.i.i833
  call void @__bad_copy_to() #12, !dbg !5060
  br label %if.end.i.i836

if.end.i.i836:                                    ; preds = %if.else8.i.i835, %if.then7.i.i834
  br label %if.end9.i.i837

if.end9.i.i837:                                   ; preds = %if.end.i.i836, %if.then5.i.i831
  store i1 false, i1* %retval.i.i812, align 1, !dbg !5061
  br label %check_copy_size.exit.i859, !dbg !5061

if.end10.i.i845:                                  ; preds = %land.end.i.i829
  %450 = load i64, i64* %bytes.addr.i.i814, align 8, !dbg !4044
  %cmp11.i.i838 = icmp ugt i64 %450, 2147483647, !dbg !4044
  %lnot13.i.i839 = xor i1 %cmp11.i.i838, true, !dbg !4044
  %lnot.ext16.i.i840 = zext i1 %cmp11.i.i838 to i32, !dbg !4044
  store i32 %lnot.ext16.i.i840, i32* %__ret_warn_on.i.i817, align 4, !dbg !4044
  %451 = load i32, i32* %__ret_warn_on.i.i817, align 4, !dbg !5062
  %tobool17.i.i841 = icmp ne i32 %451, 0, !dbg !5062
  %lnot18.i.i842 = xor i1 %tobool17.i.i841, true, !dbg !5062
  %lnot.ext21.i.i843 = zext i1 %tobool17.i.i841 to i32, !dbg !5062
  %conv22.i.i844 = sext i32 %lnot.ext21.i.i843 to i64, !dbg !5062
  br i1 %tobool17.i.i841, label %if.then24.i.i846, label %if.end31.i.i852, !dbg !4044

if.then24.i.i846:                                 ; preds = %if.end10.i.i845
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !5063, !srcloc !4269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !5064, !srcloc !4272
  br label %if.end31.i.i852, !dbg !5065

if.end31.i.i852:                                  ; preds = %if.then24.i.i846, %if.end10.i.i845
  %452 = load i32, i32* %__ret_warn_on.i.i817, align 4, !dbg !4044
  %tobool32.i.i847 = icmp ne i32 %452, 0, !dbg !4044
  %lnot33.i.i848 = xor i1 %tobool32.i.i847, true, !dbg !4044
  %lnot.ext36.i.i849 = zext i1 %tobool32.i.i847 to i32, !dbg !4044
  %conv37.i.i850 = sext i32 %lnot.ext36.i.i849 to i64, !dbg !4044
  store i64 %conv37.i.i850, i64* %tmp.i.i818, align 8, !dbg !5062
  %453 = load i64, i64* %tmp.i.i818, align 8, !dbg !4044
  %tobool38.i.i851 = icmp ne i64 %453, 0, !dbg !5066
  br i1 %tobool38.i.i851, label %if.then39.i.i853, label %if.end40.i.i855, !dbg !5067

if.then39.i.i853:                                 ; preds = %if.end31.i.i852
  store i1 false, i1* %retval.i.i812, align 1, !dbg !5068
  br label %check_copy_size.exit.i859, !dbg !5068

if.end40.i.i855:                                  ; preds = %if.end31.i.i852
  %454 = load i8*, i8** %addr.addr.i.i813, align 8, !dbg !5069
  %455 = load i64, i64* %bytes.addr.i.i814, align 8, !dbg !5070
  %456 = load i8, i8* %is_source.addr.i.i815, align 1, !dbg !5071
  %tobool41.i.i854 = trunc i8 %456 to i1, !dbg !5071
  call void @check_object_size(i8* %454, i64 %455, i1 zeroext %tobool41.i.i854) #12, !dbg !5072
  store i1 true, i1* %retval.i.i812, align 1, !dbg !5073
  br label %check_copy_size.exit.i859, !dbg !5073

check_copy_size.exit.i859:                        ; preds = %if.end40.i.i855, %if.then39.i.i853, %if.end9.i.i837
  %457 = load i1, i1* %retval.i.i812, align 1, !dbg !5074
  %lnot.i856 = xor i1 %457, true, !dbg !5047
  %lnot.ext.i857 = zext i1 %457 to i32, !dbg !5047
  %conv.i858 = sext i32 %lnot.ext.i857 to i64, !dbg !5047
  br i1 %457, label %if.then.i861, label %copy_from_user.exit862, !dbg !5075

if.then.i861:                                     ; preds = %check_copy_size.exit.i859
  %458 = load i8*, i8** %to.addr.i819, align 8, !dbg !5076
  %459 = load i8*, i8** %from.addr.i820, align 8, !dbg !5077
  %460 = load i64, i64* %n.addr.i821, align 8, !dbg !5078
  %call2.i860 = call i64 @_copy_from_user(i8* %458, i8* %459, i64 %460) #12, !dbg !5079
  store i64 %call2.i860, i64* %n.addr.i821, align 8, !dbg !5080
  br label %copy_from_user.exit862, !dbg !5081

copy_from_user.exit862:                           ; preds = %check_copy_size.exit.i859, %if.then.i861
  %461 = load i64, i64* %n.addr.i821, align 8, !dbg !5082
  %tobool407 = icmp ne i64 %461, 0, !dbg !5083
  br i1 %tobool407, label %if.then408, label %if.end409, !dbg !5084

if.then408:                                       ; preds = %copy_from_user.exit862
  store i32 -14, i32* %err, align 4, !dbg !5085
  br label %sw.epilog, !dbg !5087

if.end409:                                        ; preds = %copy_from_user.exit862
  %rsv410 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5088
  %arrayidx411 = getelementptr [5 x i32], [5 x i32]* %rsv410, i64 0, i64 0, !dbg !5090
  %462 = load i32, i32* %arrayidx411, align 4, !dbg !5090
  %tobool412 = icmp ne i32 %462, 0, !dbg !5090
  br i1 %tobool412, label %land.lhs.true429, label %lor.lhs.false413, !dbg !5091

lor.lhs.false413:                                 ; preds = %if.end409
  %rsv414 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5092
  %arrayidx415 = getelementptr [5 x i32], [5 x i32]* %rsv414, i64 0, i64 1, !dbg !5093
  %463 = load i32, i32* %arrayidx415, align 4, !dbg !5093
  %tobool416 = icmp ne i32 %463, 0, !dbg !5093
  br i1 %tobool416, label %land.lhs.true429, label %lor.lhs.false417, !dbg !5094

lor.lhs.false417:                                 ; preds = %lor.lhs.false413
  %rsv418 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5095
  %arrayidx419 = getelementptr [5 x i32], [5 x i32]* %rsv418, i64 0, i64 2, !dbg !5096
  %464 = load i32, i32* %arrayidx419, align 4, !dbg !5096
  %tobool420 = icmp ne i32 %464, 0, !dbg !5096
  br i1 %tobool420, label %land.lhs.true429, label %lor.lhs.false421, !dbg !5097

lor.lhs.false421:                                 ; preds = %lor.lhs.false417
  %rsv422 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5098
  %arrayidx423 = getelementptr [5 x i32], [5 x i32]* %rsv422, i64 0, i64 3, !dbg !5099
  %465 = load i32, i32* %arrayidx423, align 4, !dbg !5099
  %tobool424 = icmp ne i32 %465, 0, !dbg !5099
  br i1 %tobool424, label %land.lhs.true429, label %lor.lhs.false425, !dbg !5100

lor.lhs.false425:                                 ; preds = %lor.lhs.false421
  %rsv426 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5101
  %arrayidx427 = getelementptr [5 x i32], [5 x i32]* %rsv426, i64 0, i64 4, !dbg !5102
  %466 = load i32, i32* %arrayidx427, align 4, !dbg !5102
  %tobool428 = icmp ne i32 %466, 0, !dbg !5102
  br i1 %tobool428, label %land.lhs.true429, label %if.else434, !dbg !5103

land.lhs.true429:                                 ; preds = %lor.lhs.false425, %lor.lhs.false421, %lor.lhs.false417, %lor.lhs.false413, %if.end409
  %467 = load i32, i32* %cmd.addr, align 4, !dbg !5104
  %conv430 = zext i32 %467 to i64, !dbg !5104
  %cmp431 = icmp eq i64 %conv430, 3227532559, !dbg !5105
  br i1 %cmp431, label %if.then433, label %if.else434, !dbg !5106

if.then433:                                       ; preds = %land.lhs.true429
  store i32 -22, i32* %err, align 4, !dbg !5107
  br label %sw.epilog, !dbg !5109

if.else434:                                       ; preds = %land.lhs.true429, %lor.lhs.false425
  %468 = load i32, i32* %cmd.addr, align 4, !dbg !5110
  %conv435 = zext i32 %468 to i64, !dbg !5110
  %cmp436 = icmp eq i64 %conv435, 3227532550, !dbg !5112
  br i1 %cmp436, label %if.then438, label %if.end449, !dbg !5113

if.then438:                                       ; preds = %if.else434
  %rsv439 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5114
  %arrayidx440 = getelementptr [5 x i32], [5 x i32]* %rsv439, i64 0, i64 0, !dbg !5116
  store i32 0, i32* %arrayidx440, align 4, !dbg !5117
  %rsv441 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5118
  %arrayidx442 = getelementptr [5 x i32], [5 x i32]* %rsv441, i64 0, i64 1, !dbg !5119
  store i32 0, i32* %arrayidx442, align 4, !dbg !5120
  %rsv443 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5121
  %arrayidx444 = getelementptr [5 x i32], [5 x i32]* %rsv443, i64 0, i64 2, !dbg !5122
  store i32 0, i32* %arrayidx444, align 4, !dbg !5123
  %rsv445 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5124
  %arrayidx446 = getelementptr [5 x i32], [5 x i32]* %rsv445, i64 0, i64 3, !dbg !5125
  store i32 0, i32* %arrayidx446, align 4, !dbg !5126
  %rsv447 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5127
  %arrayidx448 = getelementptr [5 x i32], [5 x i32]* %rsv447, i64 0, i64 4, !dbg !5128
  store i32 0, i32* %arrayidx448, align 4, !dbg !5129
  br label %if.end449, !dbg !5130

if.end449:                                        ; preds = %if.then438, %if.else434
  br label %if.end450

if.end450:                                        ; preds = %if.end449
  %index451 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 1, !dbg !5131
  %469 = load i32, i32* %index451, align 4, !dbg !5131
  store i32 %469, i32* %pin_index, align 4, !dbg !5132
  %470 = load i32, i32* %pin_index, align 4, !dbg !5133
  %471 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5135
  %n_pins452 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %471, i32 0, i32 6, !dbg !5136
  %472 = load i32, i32* %n_pins452, align 8, !dbg !5136
  %cmp453 = icmp uge i32 %470, %472, !dbg !5137
  br i1 %cmp453, label %if.then455, label %if.end456, !dbg !5138

if.then455:                                       ; preds = %if.end450
  store i32 -22, i32* %err, align 4, !dbg !5139
  br label %sw.epilog, !dbg !5141

if.end456:                                        ; preds = %if.end450
  call void @llvm.dbg.declare(metadata i32* %_i, metadata !5142, metadata !DIExpression()), !dbg !5144
  %473 = load i32, i32* %pin_index, align 4, !dbg !5144
  store i32 %473, i32* %_i, align 4, !dbg !5144
  call void @llvm.dbg.declare(metadata i32* %_s, metadata !5145, metadata !DIExpression()), !dbg !5144
  %474 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5144
  %n_pins457 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %474, i32 0, i32 6, !dbg !5144
  %475 = load i32, i32* %n_pins457, align 8, !dbg !5144
  store i32 %475, i32* %_s, align 4, !dbg !5144
  call void @llvm.dbg.declare(metadata i64* %_mask, metadata !5146, metadata !DIExpression()), !dbg !5144
  %476 = load i32, i32* %_i, align 4, !dbg !5144
  %conv458 = zext i32 %476 to i64, !dbg !5144
  %477 = load i32, i32* %_s, align 4, !dbg !5144
  %conv459 = sext i32 %477 to i64, !dbg !5144
  %call460 = call i64 @array_index_mask_nospec(i64 %conv458, i64 %conv459) #10, !dbg !5144
  store i64 %call460, i64* %_mask, align 8, !dbg !5144
  br label %do.body461, !dbg !5144

do.body461:                                       ; preds = %if.end456
  br label %do.end462, !dbg !5147

do.end462:                                        ; preds = %do.body461
  br label %do.body463, !dbg !5144

do.body463:                                       ; preds = %do.end462
  br label %do.end464, !dbg !5149

do.end464:                                        ; preds = %do.body463
  %478 = load i32, i32* %_i, align 4, !dbg !5144
  %conv466 = zext i32 %478 to i64, !dbg !5144
  %479 = load i64, i64* %_mask, align 8, !dbg !5144
  %and467 = and i64 %conv466, %479, !dbg !5144
  %conv468 = trunc i64 %and467 to i32, !dbg !5144
  store i32 %conv468, i32* %tmp465, align 4, !dbg !5149
  %480 = load i32, i32* %tmp465, align 4, !dbg !5144
  store i32 %480, i32* %pin_index, align 4, !dbg !5151
  %481 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5152
  %pincfg_mux469 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %481, i32 0, i32 9, !dbg !5154
  %call470 = call i32 @mutex_lock_interruptible(%struct.mutex* %pincfg_mux469) #10, !dbg !5155
  %tobool471 = icmp ne i32 %call470, 0, !dbg !5155
  br i1 %tobool471, label %if.then472, label %if.end473, !dbg !5156

if.then472:                                       ; preds = %do.end464
  store i64 -512, i64* %retval, align 8, !dbg !5157
  br label %return, !dbg !5157

if.end473:                                        ; preds = %do.end464
  %482 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5158
  %pin_config = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %482, i32 0, i32 8, !dbg !5159
  %483 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %pin_config, align 8, !dbg !5159
  %484 = load i32, i32* %pin_index, align 4, !dbg !5160
  %idxprom474 = zext i32 %484 to i64, !dbg !5158
  %arrayidx475 = getelementptr %struct.ptp_pin_desc, %struct.ptp_pin_desc* %483, i64 %idxprom474, !dbg !5158
  %485 = bitcast %struct.ptp_pin_desc* %pd to i8*, !dbg !5158
  %486 = bitcast %struct.ptp_pin_desc* %arrayidx475 to i8*, !dbg !5158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %485, i8* align 4 %486, i64 96, i1 false), !dbg !5158
  %487 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5161
  %pincfg_mux476 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %487, i32 0, i32 9, !dbg !5162
  call void @mutex_unlock(%struct.mutex* %pincfg_mux476) #10, !dbg !5163
  %488 = load i32, i32* %err, align 4, !dbg !5164
  %tobool477 = icmp ne i32 %488, 0, !dbg !5164
  br i1 %tobool477, label %if.end482, label %land.lhs.true478, !dbg !5165

land.lhs.true478:                                 ; preds = %if.end473
  %489 = load i64, i64* %arg.addr, align 8, !dbg !5166
  %490 = inttoptr i64 %489 to i8*, !dbg !5167
  %491 = bitcast %struct.ptp_pin_desc* %pd to i8*, !dbg !5168
  store i8* %490, i8** %to.addr.i870, align 8
  store i8* %491, i8** %from.addr.i871, align 8
  store i64 96, i64* %n.addr.i872, align 8
  %492 = load i8*, i8** %from.addr.i871, align 8, !dbg !5169
  %493 = load i64, i64* %n.addr.i872, align 8, !dbg !5169
  store i8* %492, i8** %addr.addr.i.i864, align 8
  store i64 %493, i64* %bytes.addr.i.i865, align 8
  store i8 1, i8* %is_source.addr.i.i866, align 1
  store i32 -1, i32* %sz.i.i867, align 4, !dbg !4029
  %494 = load i32, i32* %sz.i.i867, align 4, !dbg !5170
  %cmp.i.i873 = icmp sge i32 %494, 0, !dbg !5170
  br i1 %cmp.i.i873, label %land.rhs.i.i876, label %land.end.i.i880, !dbg !5170

land.rhs.i.i876:                                  ; preds = %land.lhs.true478
  %495 = load i32, i32* %sz.i.i867, align 4, !dbg !5170
  %conv.i.i874 = sext i32 %495 to i64, !dbg !5170
  %496 = load i64, i64* %bytes.addr.i.i865, align 8, !dbg !5170
  %cmp1.i.i875 = icmp ult i64 %conv.i.i874, %496, !dbg !5170
  br label %land.end.i.i880

land.end.i.i880:                                  ; preds = %land.rhs.i.i876, %land.lhs.true478
  %497 = phi i1 [ false, %land.lhs.true478 ], [ %cmp1.i.i875, %land.rhs.i.i876 ], !dbg !5171
  %lnot.i.i877 = xor i1 %497, true, !dbg !5170
  %lnot.ext.i.i878 = zext i1 %497 to i32, !dbg !5170
  %conv4.i.i879 = sext i32 %lnot.ext.i.i878 to i64, !dbg !5170
  br i1 %497, label %if.then.i.i881, label %if.end10.i.i896, !dbg !5172

if.then.i.i881:                                   ; preds = %land.end.i.i880
  %498 = load i64, i64* %bytes.addr.i.i865, align 8, !dbg !5173
  %499 = call i1 @llvm.is.constant.i64(i64 %498) #9, !dbg !5174
  br i1 %499, label %if.else.i.i884, label %if.then5.i.i882, !dbg !5175

if.then5.i.i882:                                  ; preds = %if.then.i.i881
  %500 = load i32, i32* %sz.i.i867, align 4, !dbg !5176
  %501 = load i64, i64* %bytes.addr.i.i865, align 8, !dbg !5177
  call void @copy_overflow(i32 %500, i64 %501) #12, !dbg !5178
  br label %if.end9.i.i888, !dbg !5178

if.else.i.i884:                                   ; preds = %if.then.i.i881
  %502 = load i8, i8* %is_source.addr.i.i866, align 1, !dbg !5179
  %tobool6.i.i883 = trunc i8 %502 to i1, !dbg !5179
  br i1 %tobool6.i.i883, label %if.then7.i.i885, label %if.else8.i.i886, !dbg !5180

if.then7.i.i885:                                  ; preds = %if.else.i.i884
  call void @__bad_copy_from() #12, !dbg !5181
  br label %if.end.i.i887, !dbg !5181

if.else8.i.i886:                                  ; preds = %if.else.i.i884
  call void @__bad_copy_to() #12, !dbg !5182
  br label %if.end.i.i887

if.end.i.i887:                                    ; preds = %if.else8.i.i886, %if.then7.i.i885
  br label %if.end9.i.i888

if.end9.i.i888:                                   ; preds = %if.end.i.i887, %if.then5.i.i882
  store i1 false, i1* %retval.i.i863, align 1, !dbg !5183
  br label %check_copy_size.exit.i910, !dbg !5183

if.end10.i.i896:                                  ; preds = %land.end.i.i880
  %503 = load i64, i64* %bytes.addr.i.i865, align 8, !dbg !4030
  %cmp11.i.i889 = icmp ugt i64 %503, 2147483647, !dbg !4030
  %lnot13.i.i890 = xor i1 %cmp11.i.i889, true, !dbg !4030
  %lnot.ext16.i.i891 = zext i1 %cmp11.i.i889 to i32, !dbg !4030
  store i32 %lnot.ext16.i.i891, i32* %__ret_warn_on.i.i868, align 4, !dbg !4030
  %504 = load i32, i32* %__ret_warn_on.i.i868, align 4, !dbg !5184
  %tobool17.i.i892 = icmp ne i32 %504, 0, !dbg !5184
  %lnot18.i.i893 = xor i1 %tobool17.i.i892, true, !dbg !5184
  %lnot.ext21.i.i894 = zext i1 %tobool17.i.i892 to i32, !dbg !5184
  %conv22.i.i895 = sext i32 %lnot.ext21.i.i894 to i64, !dbg !5184
  br i1 %tobool17.i.i892, label %if.then24.i.i897, label %if.end31.i.i903, !dbg !4030

if.then24.i.i897:                                 ; preds = %if.end10.i.i896
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !5185, !srcloc !4269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !5186, !srcloc !4272
  br label %if.end31.i.i903, !dbg !5187

if.end31.i.i903:                                  ; preds = %if.then24.i.i897, %if.end10.i.i896
  %505 = load i32, i32* %__ret_warn_on.i.i868, align 4, !dbg !4030
  %tobool32.i.i898 = icmp ne i32 %505, 0, !dbg !4030
  %lnot33.i.i899 = xor i1 %tobool32.i.i898, true, !dbg !4030
  %lnot.ext36.i.i900 = zext i1 %tobool32.i.i898 to i32, !dbg !4030
  %conv37.i.i901 = sext i32 %lnot.ext36.i.i900 to i64, !dbg !4030
  store i64 %conv37.i.i901, i64* %tmp.i.i869, align 8, !dbg !5184
  %506 = load i64, i64* %tmp.i.i869, align 8, !dbg !4030
  %tobool38.i.i902 = icmp ne i64 %506, 0, !dbg !5188
  br i1 %tobool38.i.i902, label %if.then39.i.i904, label %if.end40.i.i906, !dbg !5189

if.then39.i.i904:                                 ; preds = %if.end31.i.i903
  store i1 false, i1* %retval.i.i863, align 1, !dbg !5190
  br label %check_copy_size.exit.i910, !dbg !5190

if.end40.i.i906:                                  ; preds = %if.end31.i.i903
  %507 = load i8*, i8** %addr.addr.i.i864, align 8, !dbg !5191
  %508 = load i64, i64* %bytes.addr.i.i865, align 8, !dbg !5192
  %509 = load i8, i8* %is_source.addr.i.i866, align 1, !dbg !5193
  %tobool41.i.i905 = trunc i8 %509 to i1, !dbg !5193
  call void @check_object_size(i8* %507, i64 %508, i1 zeroext %tobool41.i.i905) #12, !dbg !5194
  store i1 true, i1* %retval.i.i863, align 1, !dbg !5195
  br label %check_copy_size.exit.i910, !dbg !5195

check_copy_size.exit.i910:                        ; preds = %if.end40.i.i906, %if.then39.i.i904, %if.end9.i.i888
  %510 = load i1, i1* %retval.i.i863, align 1, !dbg !5196
  %lnot.i907 = xor i1 %510, true, !dbg !5169
  %lnot.ext.i908 = zext i1 %510 to i32, !dbg !5169
  %conv.i909 = sext i32 %lnot.ext.i908 to i64, !dbg !5169
  br i1 %510, label %if.then.i912, label %copy_to_user.exit913, !dbg !5197

if.then.i912:                                     ; preds = %check_copy_size.exit.i910
  %511 = load i8*, i8** %to.addr.i870, align 8, !dbg !5198
  %512 = load i8*, i8** %from.addr.i871, align 8, !dbg !5199
  %513 = load i64, i64* %n.addr.i872, align 8, !dbg !5200
  %call2.i911 = call i64 @_copy_to_user(i8* %511, i8* %512, i64 %513) #12, !dbg !5201
  store i64 %call2.i911, i64* %n.addr.i872, align 8, !dbg !5202
  br label %copy_to_user.exit913, !dbg !5203

copy_to_user.exit913:                             ; preds = %check_copy_size.exit.i910, %if.then.i912
  %514 = load i64, i64* %n.addr.i872, align 8, !dbg !5204
  %tobool480 = icmp ne i64 %514, 0, !dbg !5205
  br i1 %tobool480, label %if.then481, label %if.end482, !dbg !5206

if.then481:                                       ; preds = %copy_to_user.exit913
  store i32 -14, i32* %err, align 4, !dbg !5207
  br label %if.end482, !dbg !5208

if.end482:                                        ; preds = %if.then481, %copy_to_user.exit913, %if.end473
  br label %sw.epilog, !dbg !5209

sw.bb483:                                         ; preds = %do.end, %do.end
  %515 = bitcast %struct.ptp_pin_desc* %pd to i8*, !dbg !5210
  %516 = load i64, i64* %arg.addr, align 8, !dbg !5211
  %517 = inttoptr i64 %516 to i8*, !dbg !5212
  store i8* %515, i8** %to.addr.i921, align 8
  store i8* %517, i8** %from.addr.i922, align 8
  store i64 96, i64* %n.addr.i923, align 8
  %518 = load i8*, i8** %to.addr.i921, align 8, !dbg !5213
  %519 = load i64, i64* %n.addr.i923, align 8, !dbg !5213
  store i8* %518, i8** %addr.addr.i.i915, align 8
  store i64 %519, i64* %bytes.addr.i.i916, align 8
  store i8 0, i8* %is_source.addr.i.i917, align 1
  store i32 -1, i32* %sz.i.i918, align 4, !dbg !4010
  %520 = load i32, i32* %sz.i.i918, align 4, !dbg !5214
  %cmp.i.i924 = icmp sge i32 %520, 0, !dbg !5214
  br i1 %cmp.i.i924, label %land.rhs.i.i927, label %land.end.i.i931, !dbg !5214

land.rhs.i.i927:                                  ; preds = %sw.bb483
  %521 = load i32, i32* %sz.i.i918, align 4, !dbg !5214
  %conv.i.i925 = sext i32 %521 to i64, !dbg !5214
  %522 = load i64, i64* %bytes.addr.i.i916, align 8, !dbg !5214
  %cmp1.i.i926 = icmp ult i64 %conv.i.i925, %522, !dbg !5214
  br label %land.end.i.i931

land.end.i.i931:                                  ; preds = %land.rhs.i.i927, %sw.bb483
  %523 = phi i1 [ false, %sw.bb483 ], [ %cmp1.i.i926, %land.rhs.i.i927 ], !dbg !5215
  %lnot.i.i928 = xor i1 %523, true, !dbg !5214
  %lnot.ext.i.i929 = zext i1 %523 to i32, !dbg !5214
  %conv4.i.i930 = sext i32 %lnot.ext.i.i929 to i64, !dbg !5214
  br i1 %523, label %if.then.i.i932, label %if.end10.i.i947, !dbg !5216

if.then.i.i932:                                   ; preds = %land.end.i.i931
  %524 = load i64, i64* %bytes.addr.i.i916, align 8, !dbg !5217
  %525 = call i1 @llvm.is.constant.i64(i64 %524) #9, !dbg !5218
  br i1 %525, label %if.else.i.i935, label %if.then5.i.i933, !dbg !5219

if.then5.i.i933:                                  ; preds = %if.then.i.i932
  %526 = load i32, i32* %sz.i.i918, align 4, !dbg !5220
  %527 = load i64, i64* %bytes.addr.i.i916, align 8, !dbg !5221
  call void @copy_overflow(i32 %526, i64 %527) #12, !dbg !5222
  br label %if.end9.i.i939, !dbg !5222

if.else.i.i935:                                   ; preds = %if.then.i.i932
  %528 = load i8, i8* %is_source.addr.i.i917, align 1, !dbg !5223
  %tobool6.i.i934 = trunc i8 %528 to i1, !dbg !5223
  br i1 %tobool6.i.i934, label %if.then7.i.i936, label %if.else8.i.i937, !dbg !5224

if.then7.i.i936:                                  ; preds = %if.else.i.i935
  call void @__bad_copy_from() #12, !dbg !5225
  br label %if.end.i.i938, !dbg !5225

if.else8.i.i937:                                  ; preds = %if.else.i.i935
  call void @__bad_copy_to() #12, !dbg !5226
  br label %if.end.i.i938

if.end.i.i938:                                    ; preds = %if.else8.i.i937, %if.then7.i.i936
  br label %if.end9.i.i939

if.end9.i.i939:                                   ; preds = %if.end.i.i938, %if.then5.i.i933
  store i1 false, i1* %retval.i.i914, align 1, !dbg !5227
  br label %check_copy_size.exit.i961, !dbg !5227

if.end10.i.i947:                                  ; preds = %land.end.i.i931
  %529 = load i64, i64* %bytes.addr.i.i916, align 8, !dbg !4014
  %cmp11.i.i940 = icmp ugt i64 %529, 2147483647, !dbg !4014
  %lnot13.i.i941 = xor i1 %cmp11.i.i940, true, !dbg !4014
  %lnot.ext16.i.i942 = zext i1 %cmp11.i.i940 to i32, !dbg !4014
  store i32 %lnot.ext16.i.i942, i32* %__ret_warn_on.i.i919, align 4, !dbg !4014
  %530 = load i32, i32* %__ret_warn_on.i.i919, align 4, !dbg !5228
  %tobool17.i.i943 = icmp ne i32 %530, 0, !dbg !5228
  %lnot18.i.i944 = xor i1 %tobool17.i.i943, true, !dbg !5228
  %lnot.ext21.i.i945 = zext i1 %tobool17.i.i943 to i32, !dbg !5228
  %conv22.i.i946 = sext i32 %lnot.ext21.i.i945 to i64, !dbg !5228
  br i1 %tobool17.i.i943, label %if.then24.i.i948, label %if.end31.i.i954, !dbg !4014

if.then24.i.i948:                                 ; preds = %if.end10.i.i947
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !5229, !srcloc !4269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !5230, !srcloc !4272
  br label %if.end31.i.i954, !dbg !5231

if.end31.i.i954:                                  ; preds = %if.then24.i.i948, %if.end10.i.i947
  %531 = load i32, i32* %__ret_warn_on.i.i919, align 4, !dbg !4014
  %tobool32.i.i949 = icmp ne i32 %531, 0, !dbg !4014
  %lnot33.i.i950 = xor i1 %tobool32.i.i949, true, !dbg !4014
  %lnot.ext36.i.i951 = zext i1 %tobool32.i.i949 to i32, !dbg !4014
  %conv37.i.i952 = sext i32 %lnot.ext36.i.i951 to i64, !dbg !4014
  store i64 %conv37.i.i952, i64* %tmp.i.i920, align 8, !dbg !5228
  %532 = load i64, i64* %tmp.i.i920, align 8, !dbg !4014
  %tobool38.i.i953 = icmp ne i64 %532, 0, !dbg !5232
  br i1 %tobool38.i.i953, label %if.then39.i.i955, label %if.end40.i.i957, !dbg !5233

if.then39.i.i955:                                 ; preds = %if.end31.i.i954
  store i1 false, i1* %retval.i.i914, align 1, !dbg !5234
  br label %check_copy_size.exit.i961, !dbg !5234

if.end40.i.i957:                                  ; preds = %if.end31.i.i954
  %533 = load i8*, i8** %addr.addr.i.i915, align 8, !dbg !5235
  %534 = load i64, i64* %bytes.addr.i.i916, align 8, !dbg !5236
  %535 = load i8, i8* %is_source.addr.i.i917, align 1, !dbg !5237
  %tobool41.i.i956 = trunc i8 %535 to i1, !dbg !5237
  call void @check_object_size(i8* %533, i64 %534, i1 zeroext %tobool41.i.i956) #12, !dbg !5238
  store i1 true, i1* %retval.i.i914, align 1, !dbg !5239
  br label %check_copy_size.exit.i961, !dbg !5239

check_copy_size.exit.i961:                        ; preds = %if.end40.i.i957, %if.then39.i.i955, %if.end9.i.i939
  %536 = load i1, i1* %retval.i.i914, align 1, !dbg !5240
  %lnot.i958 = xor i1 %536, true, !dbg !5213
  %lnot.ext.i959 = zext i1 %536 to i32, !dbg !5213
  %conv.i960 = sext i32 %lnot.ext.i959 to i64, !dbg !5213
  br i1 %536, label %if.then.i963, label %copy_from_user.exit964, !dbg !5241

if.then.i963:                                     ; preds = %check_copy_size.exit.i961
  %537 = load i8*, i8** %to.addr.i921, align 8, !dbg !5242
  %538 = load i8*, i8** %from.addr.i922, align 8, !dbg !5243
  %539 = load i64, i64* %n.addr.i923, align 8, !dbg !5244
  %call2.i962 = call i64 @_copy_from_user(i8* %537, i8* %538, i64 %539) #12, !dbg !5245
  store i64 %call2.i962, i64* %n.addr.i923, align 8, !dbg !5246
  br label %copy_from_user.exit964, !dbg !5247

copy_from_user.exit964:                           ; preds = %check_copy_size.exit.i961, %if.then.i963
  %540 = load i64, i64* %n.addr.i923, align 8, !dbg !5248
  %tobool485 = icmp ne i64 %540, 0, !dbg !5249
  br i1 %tobool485, label %if.then486, label %if.end487, !dbg !5250

if.then486:                                       ; preds = %copy_from_user.exit964
  store i32 -14, i32* %err, align 4, !dbg !5251
  br label %sw.epilog, !dbg !5253

if.end487:                                        ; preds = %copy_from_user.exit964
  %rsv488 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5254
  %arrayidx489 = getelementptr [5 x i32], [5 x i32]* %rsv488, i64 0, i64 0, !dbg !5256
  %541 = load i32, i32* %arrayidx489, align 4, !dbg !5256
  %tobool490 = icmp ne i32 %541, 0, !dbg !5256
  br i1 %tobool490, label %land.lhs.true507, label %lor.lhs.false491, !dbg !5257

lor.lhs.false491:                                 ; preds = %if.end487
  %rsv492 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5258
  %arrayidx493 = getelementptr [5 x i32], [5 x i32]* %rsv492, i64 0, i64 1, !dbg !5259
  %542 = load i32, i32* %arrayidx493, align 4, !dbg !5259
  %tobool494 = icmp ne i32 %542, 0, !dbg !5259
  br i1 %tobool494, label %land.lhs.true507, label %lor.lhs.false495, !dbg !5260

lor.lhs.false495:                                 ; preds = %lor.lhs.false491
  %rsv496 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5261
  %arrayidx497 = getelementptr [5 x i32], [5 x i32]* %rsv496, i64 0, i64 2, !dbg !5262
  %543 = load i32, i32* %arrayidx497, align 4, !dbg !5262
  %tobool498 = icmp ne i32 %543, 0, !dbg !5262
  br i1 %tobool498, label %land.lhs.true507, label %lor.lhs.false499, !dbg !5263

lor.lhs.false499:                                 ; preds = %lor.lhs.false495
  %rsv500 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5264
  %arrayidx501 = getelementptr [5 x i32], [5 x i32]* %rsv500, i64 0, i64 3, !dbg !5265
  %544 = load i32, i32* %arrayidx501, align 4, !dbg !5265
  %tobool502 = icmp ne i32 %544, 0, !dbg !5265
  br i1 %tobool502, label %land.lhs.true507, label %lor.lhs.false503, !dbg !5266

lor.lhs.false503:                                 ; preds = %lor.lhs.false499
  %rsv504 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5267
  %arrayidx505 = getelementptr [5 x i32], [5 x i32]* %rsv504, i64 0, i64 4, !dbg !5268
  %545 = load i32, i32* %arrayidx505, align 4, !dbg !5268
  %tobool506 = icmp ne i32 %545, 0, !dbg !5268
  br i1 %tobool506, label %land.lhs.true507, label %if.else512, !dbg !5269

land.lhs.true507:                                 ; preds = %lor.lhs.false503, %lor.lhs.false499, %lor.lhs.false495, %lor.lhs.false491, %if.end487
  %546 = load i32, i32* %cmd.addr, align 4, !dbg !5270
  %conv508 = zext i32 %546 to i64, !dbg !5270
  %cmp509 = icmp eq i64 %conv508, 1080048912, !dbg !5271
  br i1 %cmp509, label %if.then511, label %if.else512, !dbg !5272

if.then511:                                       ; preds = %land.lhs.true507
  store i32 -22, i32* %err, align 4, !dbg !5273
  br label %sw.epilog, !dbg !5275

if.else512:                                       ; preds = %land.lhs.true507, %lor.lhs.false503
  %547 = load i32, i32* %cmd.addr, align 4, !dbg !5276
  %conv513 = zext i32 %547 to i64, !dbg !5276
  %cmp514 = icmp eq i64 %conv513, 1080048903, !dbg !5278
  br i1 %cmp514, label %if.then516, label %if.end527, !dbg !5279

if.then516:                                       ; preds = %if.else512
  %rsv517 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5280
  %arrayidx518 = getelementptr [5 x i32], [5 x i32]* %rsv517, i64 0, i64 0, !dbg !5282
  store i32 0, i32* %arrayidx518, align 4, !dbg !5283
  %rsv519 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5284
  %arrayidx520 = getelementptr [5 x i32], [5 x i32]* %rsv519, i64 0, i64 1, !dbg !5285
  store i32 0, i32* %arrayidx520, align 4, !dbg !5286
  %rsv521 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5287
  %arrayidx522 = getelementptr [5 x i32], [5 x i32]* %rsv521, i64 0, i64 2, !dbg !5288
  store i32 0, i32* %arrayidx522, align 4, !dbg !5289
  %rsv523 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5290
  %arrayidx524 = getelementptr [5 x i32], [5 x i32]* %rsv523, i64 0, i64 3, !dbg !5291
  store i32 0, i32* %arrayidx524, align 4, !dbg !5292
  %rsv525 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 4, !dbg !5293
  %arrayidx526 = getelementptr [5 x i32], [5 x i32]* %rsv525, i64 0, i64 4, !dbg !5294
  store i32 0, i32* %arrayidx526, align 4, !dbg !5295
  br label %if.end527, !dbg !5296

if.end527:                                        ; preds = %if.then516, %if.else512
  br label %if.end528

if.end528:                                        ; preds = %if.end527
  %index529 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 1, !dbg !5297
  %548 = load i32, i32* %index529, align 4, !dbg !5297
  store i32 %548, i32* %pin_index, align 4, !dbg !5298
  %549 = load i32, i32* %pin_index, align 4, !dbg !5299
  %550 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5301
  %n_pins530 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %550, i32 0, i32 6, !dbg !5302
  %551 = load i32, i32* %n_pins530, align 8, !dbg !5302
  %cmp531 = icmp uge i32 %549, %551, !dbg !5303
  br i1 %cmp531, label %if.then533, label %if.end534, !dbg !5304

if.then533:                                       ; preds = %if.end528
  store i32 -22, i32* %err, align 4, !dbg !5305
  br label %sw.epilog, !dbg !5307

if.end534:                                        ; preds = %if.end528
  call void @llvm.dbg.declare(metadata i32* %_i535, metadata !5308, metadata !DIExpression()), !dbg !5310
  %552 = load i32, i32* %pin_index, align 4, !dbg !5310
  store i32 %552, i32* %_i535, align 4, !dbg !5310
  call void @llvm.dbg.declare(metadata i32* %_s536, metadata !5311, metadata !DIExpression()), !dbg !5310
  %553 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %ops, align 8, !dbg !5310
  %n_pins537 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %553, i32 0, i32 6, !dbg !5310
  %554 = load i32, i32* %n_pins537, align 8, !dbg !5310
  store i32 %554, i32* %_s536, align 4, !dbg !5310
  call void @llvm.dbg.declare(metadata i64* %_mask538, metadata !5312, metadata !DIExpression()), !dbg !5310
  %555 = load i32, i32* %_i535, align 4, !dbg !5310
  %conv539 = zext i32 %555 to i64, !dbg !5310
  %556 = load i32, i32* %_s536, align 4, !dbg !5310
  %conv540 = sext i32 %556 to i64, !dbg !5310
  %call541 = call i64 @array_index_mask_nospec(i64 %conv539, i64 %conv540) #10, !dbg !5310
  store i64 %call541, i64* %_mask538, align 8, !dbg !5310
  br label %do.body542, !dbg !5310

do.body542:                                       ; preds = %if.end534
  br label %do.end543, !dbg !5313

do.end543:                                        ; preds = %do.body542
  br label %do.body544, !dbg !5310

do.body544:                                       ; preds = %do.end543
  br label %do.end545, !dbg !5315

do.end545:                                        ; preds = %do.body544
  %557 = load i32, i32* %_i535, align 4, !dbg !5310
  %conv547 = zext i32 %557 to i64, !dbg !5310
  %558 = load i64, i64* %_mask538, align 8, !dbg !5310
  %and548 = and i64 %conv547, %558, !dbg !5310
  %conv549 = trunc i64 %and548 to i32, !dbg !5310
  store i32 %conv549, i32* %tmp546, align 4, !dbg !5315
  %559 = load i32, i32* %tmp546, align 4, !dbg !5310
  store i32 %559, i32* %pin_index, align 4, !dbg !5317
  %560 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5318
  %pincfg_mux550 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %560, i32 0, i32 9, !dbg !5320
  %call551 = call i32 @mutex_lock_interruptible(%struct.mutex* %pincfg_mux550) #10, !dbg !5321
  %tobool552 = icmp ne i32 %call551, 0, !dbg !5321
  br i1 %tobool552, label %if.then553, label %if.end554, !dbg !5322

if.then553:                                       ; preds = %do.end545
  store i64 -512, i64* %retval, align 8, !dbg !5323
  br label %return, !dbg !5323

if.end554:                                        ; preds = %do.end545
  %561 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5324
  %562 = load i32, i32* %pin_index, align 4, !dbg !5325
  %func = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 2, !dbg !5326
  %563 = load i32, i32* %func, align 4, !dbg !5326
  %chan = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %pd, i32 0, i32 3, !dbg !5327
  %564 = load i32, i32* %chan, align 4, !dbg !5327
  %call555 = call i32 @ptp_set_pinfunc(%struct.ptp_clock* %561, i32 %562, i32 %563, i32 %564) #10, !dbg !5328
  store i32 %call555, i32* %err, align 4, !dbg !5329
  %565 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5330
  %pincfg_mux556 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %565, i32 0, i32 9, !dbg !5331
  call void @mutex_unlock(%struct.mutex* %pincfg_mux556) #10, !dbg !5332
  br label %sw.epilog, !dbg !5333

sw.default:                                       ; preds = %do.end
  store i32 -25, i32* %err, align 4, !dbg !5334
  br label %sw.epilog, !dbg !5335

sw.epilog:                                        ; preds = %sw.default, %if.end554, %if.then533, %if.then511, %if.then486, %if.end482, %if.then455, %if.then433, %if.then408, %if.end404, %if.then362, %if.then355, %if.end351, %if.then296, %if.then278, %if.then274, %if.end270, %if.then240, %if.then233, %if.end225, %if.end210, %if.then195, %if.then165, %if.then139, %if.then117, %if.then96, %if.then85, %if.end78, %if.then69, %if.then48, %if.then37, %if.then20, %if.end
  br label %out, !dbg !5336

out:                                              ; preds = %sw.epilog, %if.then385, %if.then306
  call void @llvm.dbg.label(metadata !5337), !dbg !5338
  %566 = load %struct.ptp_sys_offset_extended*, %struct.ptp_sys_offset_extended** %extoff, align 8, !dbg !5339
  %567 = bitcast %struct.ptp_sys_offset_extended* %566 to i8*, !dbg !5339
  call void @kfree(i8* %567) #10, !dbg !5340
  %568 = load %struct.ptp_sys_offset*, %struct.ptp_sys_offset** %sysoff, align 8, !dbg !5341
  %569 = bitcast %struct.ptp_sys_offset* %568 to i8*, !dbg !5341
  call void @kfree(i8* %569) #10, !dbg !5342
  %570 = load i32, i32* %err, align 4, !dbg !5343
  %conv557 = sext i32 %570 to i64, !dbg !5343
  store i64 %conv557, i64* %retval, align 8, !dbg !5344
  br label %return, !dbg !5344

return:                                           ; preds = %out, %if.then553, %if.then472, %if.then224, %if.then216, %if.then209, %if.then77
  %571 = load i64, i64* %retval, align 8, !dbg !5345
  ret i64 %571, !dbg !5345
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #4

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #4

; Function Attrs: noredzone
declare dso_local zeroext i1 @capable(i32) #4

; Function Attrs: noredzone
declare dso_local { i64, i64 } @ns_to_timespec64(i64) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i8* @memdup_user(i8*, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5346 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5352
  %1 = ptrtoint i8* %0 to i64, !dbg !5352
  %2 = inttoptr i64 %1 to i8*, !dbg !5352
  %3 = ptrtoint i8* %2 to i64, !dbg !5352
  %cmp = icmp uge i64 %3, -4095, !dbg !5352
  %lnot = xor i1 %cmp, true, !dbg !5352
  %lnot1 = xor i1 %lnot, true, !dbg !5352
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5352
  %conv = sext i32 %lnot.ext to i64, !dbg !5352
  %tobool = icmp ne i64 %conv, 0, !dbg !5352
  ret i1 %tobool, !dbg !5353
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5354 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5359
  %1 = ptrtoint i8* %0 to i64, !dbg !5360
  ret i64 %1, !dbg !5361
}

; Function Attrs: noredzone
declare dso_local void @ktime_get_real_ts64(%struct.timespec64*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @array_index_mask_nospec(i64 %index, i64 %size) #0 !dbg !5362 {
entry:
  %index.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %index, i64* %index.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  call void @llvm.dbg.declare(metadata i64* %mask, metadata !5370, metadata !DIExpression()), !dbg !5371
  %0 = load i64, i64* %size.addr, align 8, !dbg !5372
  %1 = load i64, i64* %index.addr, align 8, !dbg !5373
  %2 = call i64 asm sideeffect "cmp $1,$2; sbb $0,$0;", "=r,imr,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #9, !dbg !5374, !srcloc !5375
  store i64 %2, i64* %mask, align 8, !dbg !5374
  %3 = load i64, i64* %mask, align 8, !dbg !5376
  ret i64 %3, !dbg !5377
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ptp_poll(%struct.posix_clock* %pc, %struct.file* %fp, %struct.poll_table_struct* %wait) #0 !dbg !5378 {
entry:
  %pc.addr = alloca %struct.posix_clock*, align 8
  %fp.addr = alloca %struct.file*, align 8
  %wait.addr = alloca %struct.poll_table_struct*, align 8
  %ptp = alloca %struct.ptp_clock*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_clock*, align 8
  store %struct.posix_clock* %pc, %struct.posix_clock** %pc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.posix_clock** %pc.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  store %struct.file* %fp, %struct.file** %fp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %fp.addr, metadata !5381, metadata !DIExpression()), !dbg !5382
  store %struct.poll_table_struct* %wait, %struct.poll_table_struct** %wait.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %wait.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp, metadata !5385, metadata !DIExpression()), !dbg !5386
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5387, metadata !DIExpression()), !dbg !5389
  %0 = load %struct.posix_clock*, %struct.posix_clock** %pc.addr, align 8, !dbg !5389
  %1 = bitcast %struct.posix_clock* %0 to i8*, !dbg !5389
  store i8* %1, i8** %__mptr, align 8, !dbg !5389
  br label %do.body, !dbg !5389

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5390

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5389
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5389
  %3 = bitcast i8* %add.ptr to %struct.ptp_clock*, !dbg !5389
  store %struct.ptp_clock* %3, %struct.ptp_clock** %tmp, align 8, !dbg !5390
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %tmp, align 8, !dbg !5389
  store %struct.ptp_clock* %4, %struct.ptp_clock** %ptp, align 8, !dbg !5386
  %5 = load %struct.file*, %struct.file** %fp.addr, align 8, !dbg !5392
  %6 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5393
  %tsev_wq = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %6, i32 0, i32 10, !dbg !5394
  %7 = load %struct.poll_table_struct*, %struct.poll_table_struct** %wait.addr, align 8, !dbg !5395
  call void @poll_wait(%struct.file* %5, %struct.wait_queue_head* %tsev_wq, %struct.poll_table_struct* %7) #10, !dbg !5396
  %8 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5397
  %tsevq = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %8, i32 0, i32 7, !dbg !5398
  %call = call i32 @queue_cnt(%struct.timestamp_event_queue* %tsevq) #10, !dbg !5399
  %tobool = icmp ne i32 %call, 0, !dbg !5399
  %9 = zext i1 %tobool to i64, !dbg !5399
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5399
  ret i32 %cond, !dbg !5400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @poll_wait(%struct.file* %filp, %struct.wait_queue_head* %wait_address, %struct.poll_table_struct* %p) #0 !dbg !5401 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %wait_address.addr = alloca %struct.wait_queue_head*, align 8
  %p.addr = alloca %struct.poll_table_struct*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5404, metadata !DIExpression()), !dbg !5405
  store %struct.wait_queue_head* %wait_address, %struct.wait_queue_head** %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wait_queue_head** %wait_address.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %p.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  %0 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5410
  %tobool = icmp ne %struct.poll_table_struct* %0, null, !dbg !5410
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5412

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5413
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %1, i32 0, i32 0, !dbg !5414
  %2 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8, !dbg !5414
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %2, null, !dbg !5413
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !5415

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !5416
  %tobool3 = icmp ne %struct.wait_queue_head* %3, null, !dbg !5416
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5417

if.then:                                          ; preds = %land.lhs.true2
  %4 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5418
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %4, i32 0, i32 0, !dbg !5419
  %5 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc4, align 8, !dbg !5419
  %6 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5420
  %7 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !5421
  %8 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !5422
  call void %5(%struct.file* %6, %struct.wait_queue_head* %7, %struct.poll_table_struct* %8) #10, !dbg !5418
  br label %if.end, !dbg !5418

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !5423
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @queue_cnt(%struct.timestamp_event_queue* %q) #0 !dbg !5424 {
entry:
  %q.addr = alloca %struct.timestamp_event_queue*, align 8
  %cnt = alloca i32, align 4
  store %struct.timestamp_event_queue* %q, %struct.timestamp_event_queue** %q.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timestamp_event_queue** %q.addr, metadata !5428, metadata !DIExpression()), !dbg !5429
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !5430, metadata !DIExpression()), !dbg !5431
  %0 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %q.addr, align 8, !dbg !5432
  %tail = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %0, i32 0, i32 2, !dbg !5433
  %1 = load i32, i32* %tail, align 4, !dbg !5433
  %2 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %q.addr, align 8, !dbg !5434
  %head = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %2, i32 0, i32 1, !dbg !5435
  %3 = load i32, i32* %head, align 8, !dbg !5435
  %sub = sub i32 %1, %3, !dbg !5436
  store i32 %sub, i32* %cnt, align 4, !dbg !5431
  %4 = load i32, i32* %cnt, align 4, !dbg !5437
  %cmp = icmp slt i32 %4, 0, !dbg !5438
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5437

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %cnt, align 4, !dbg !5439
  %add = add i32 128, %5, !dbg !5440
  br label %cond.end, !dbg !5437

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %cnt, align 4, !dbg !5441
  br label %cond.end, !dbg !5437

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %6, %cond.false ], !dbg !5437
  ret i32 %cond, !dbg !5442
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @ptp_read(%struct.posix_clock* %pc, i32 %rdflags, i8* %buf, i64 %cnt) #0 !dbg !5443 {
entry:
  %retval.i.i94 = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !3990, metadata !DIExpression()), !dbg !5444
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4005, metadata !DIExpression()), !dbg !5448
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4007, metadata !DIExpression()), !dbg !5449
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4009, metadata !DIExpression()), !dbg !5450
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4011, metadata !DIExpression()), !dbg !5451
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4031, metadata !DIExpression()), !dbg !5452
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4033, metadata !DIExpression()), !dbg !5453
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4035, metadata !DIExpression()), !dbg !5454
  %lock.addr.i91 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i91, metadata !5455, metadata !DIExpression()), !dbg !5461
  %flags.addr.i92 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i92, metadata !5463, metadata !DIExpression()), !dbg !5464
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !5465, metadata !DIExpression()), !dbg !5470
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !5477, metadata !DIExpression()), !dbg !5481
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !5489, metadata !DIExpression()), !dbg !5490
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !5491, metadata !DIExpression()), !dbg !5492
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !5493, metadata !DIExpression()), !dbg !5494
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !5495, metadata !DIExpression()), !dbg !5499
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !5501, metadata !DIExpression()), !dbg !5505
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !5507, metadata !DIExpression()), !dbg !5511
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !5516, metadata !DIExpression()), !dbg !5517
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !5518, metadata !DIExpression()), !dbg !5519
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5520, metadata !DIExpression()), !dbg !5521
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !5522, metadata !DIExpression()), !dbg !5523
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !5524, metadata !DIExpression()), !dbg !5525
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5526, metadata !DIExpression()), !dbg !5527
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !5528, metadata !DIExpression()), !dbg !5529
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !5530, metadata !DIExpression()), !dbg !5531
  %retval = alloca i64, align 8
  %pc.addr = alloca %struct.posix_clock*, align 8
  %rdflags.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %cnt.addr = alloca i64, align 8
  %ptp = alloca %struct.ptp_clock*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ptp_clock*, align 8
  %queue = alloca %struct.timestamp_event_queue*, align 8
  %event = alloca %struct.ptp_extts_event*, align 8
  %flags = alloca i64, align 8
  %qcnt = alloca i64, align 8
  %i = alloca i64, align 8
  %result = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret14 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp27 = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp48 = alloca i32, align 4
  %__dummy52 = alloca i64, align 8
  %__dummy253 = alloca i64, align 8
  %tmp56 = alloca i32, align 4
  store %struct.posix_clock* %pc, %struct.posix_clock** %pc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.posix_clock** %pc.addr, metadata !5532, metadata !DIExpression()), !dbg !5533
  store i32 %rdflags, i32* %rdflags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %rdflags.addr, metadata !5534, metadata !DIExpression()), !dbg !5535
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  store i64 %cnt, i64* %cnt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cnt.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  call void @llvm.dbg.declare(metadata %struct.ptp_clock** %ptp, metadata !5540, metadata !DIExpression()), !dbg !5541
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5542, metadata !DIExpression()), !dbg !5544
  %0 = load %struct.posix_clock*, %struct.posix_clock** %pc.addr, align 8, !dbg !5544
  %1 = bitcast %struct.posix_clock* %0 to i8*, !dbg !5544
  store i8* %1, i8** %__mptr, align 8, !dbg !5544
  br label %do.body, !dbg !5544

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5545

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5544
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5544
  %3 = bitcast i8* %add.ptr to %struct.ptp_clock*, !dbg !5544
  store %struct.ptp_clock* %3, %struct.ptp_clock** %tmp, align 8, !dbg !5545
  %4 = load %struct.ptp_clock*, %struct.ptp_clock** %tmp, align 8, !dbg !5544
  store %struct.ptp_clock* %4, %struct.ptp_clock** %ptp, align 8, !dbg !5541
  call void @llvm.dbg.declare(metadata %struct.timestamp_event_queue** %queue, metadata !5547, metadata !DIExpression()), !dbg !5548
  %5 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5549
  %tsevq = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %5, i32 0, i32 7, !dbg !5550
  store %struct.timestamp_event_queue* %tsevq, %struct.timestamp_event_queue** %queue, align 8, !dbg !5548
  call void @llvm.dbg.declare(metadata %struct.ptp_extts_event** %event, metadata !5551, metadata !DIExpression()), !dbg !5553
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5554, metadata !DIExpression()), !dbg !5555
  call void @llvm.dbg.declare(metadata i64* %qcnt, metadata !5556, metadata !DIExpression()), !dbg !5557
  call void @llvm.dbg.declare(metadata i64* %i, metadata !5558, metadata !DIExpression()), !dbg !5559
  call void @llvm.dbg.declare(metadata i32* %result, metadata !5560, metadata !DIExpression()), !dbg !5561
  %6 = load i64, i64* %cnt.addr, align 8, !dbg !5562
  %rem = urem i64 %6, 32, !dbg !5564
  %cmp = icmp ne i64 %rem, 0, !dbg !5565
  br i1 %cmp, label %if.then, label %if.end, !dbg !5566

if.then:                                          ; preds = %do.end
  store i64 -22, i64* %retval, align 8, !dbg !5567
  br label %return, !dbg !5567

if.end:                                           ; preds = %do.end
  %7 = load i64, i64* %cnt.addr, align 8, !dbg !5568
  %cmp1 = icmp ugt i64 %7, 960, !dbg !5570
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5571

if.then2:                                         ; preds = %if.end
  store i64 960, i64* %cnt.addr, align 8, !dbg !5572
  br label %if.end3, !dbg !5573

if.end3:                                          ; preds = %if.then2, %if.end
  %8 = load i64, i64* %cnt.addr, align 8, !dbg !5574
  %div = udiv i64 %8, 32, !dbg !5575
  store i64 %div, i64* %cnt.addr, align 8, !dbg !5576
  %9 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5577
  %tsevq_mux = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %9, i32 0, i32 8, !dbg !5579
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* %tsevq_mux) #10, !dbg !5580
  %tobool = icmp ne i32 %call, 0, !dbg !5580
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5581

if.then4:                                         ; preds = %if.end3
  store i64 -512, i64* %retval, align 8, !dbg !5582
  br label %return, !dbg !5582

if.end5:                                          ; preds = %if.end3
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5583, metadata !DIExpression()), !dbg !5586
  store i32 0, i32* %__ret, align 4, !dbg !5586
  br label %do.body6, !dbg !5586

do.body6:                                         ; preds = %if.end5
  br label %do.body7, !dbg !5587

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5589

do.end8:                                          ; preds = %do.body7
  br label %do.end9, !dbg !5587

do.end9:                                          ; preds = %do.end8
  %10 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5591
  %defunct = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %10, i32 0, i32 11, !dbg !5591
  %11 = load i32, i32* %defunct, align 8, !dbg !5591
  %tobool10 = icmp ne i32 %11, 0, !dbg !5591
  br i1 %tobool10, label %if.end28, label %lor.lhs.false, !dbg !5591

lor.lhs.false:                                    ; preds = %do.end9
  %12 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue, align 8, !dbg !5591
  %call11 = call i32 @queue_cnt(%struct.timestamp_event_queue* %12) #10, !dbg !5591
  %tobool12 = icmp ne i32 %call11, 0, !dbg !5591
  br i1 %tobool12, label %if.end28, label %if.then13, !dbg !5586

if.then13:                                        ; preds = %lor.lhs.false
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !5593, metadata !DIExpression()), !dbg !5606
  call void @llvm.dbg.declare(metadata i64* %__ret14, metadata !5607, metadata !DIExpression()), !dbg !5606
  store i64 0, i64* %__ret14, align 8, !dbg !5606
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #10, !dbg !5606
  br label %for.cond, !dbg !5606

for.cond:                                         ; preds = %if.end25, %if.then13
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !5608, metadata !DIExpression()), !dbg !5612
  %13 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5612
  %tsev_wq = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %13, i32 0, i32 10, !dbg !5612
  %call15 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %tsev_wq, %struct.wait_queue_entry* %__wq_entry, i32 1) #10, !dbg !5612
  store i64 %call15, i64* %__int, align 8, !dbg !5612
  %14 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5613
  %defunct16 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %14, i32 0, i32 11, !dbg !5613
  %15 = load i32, i32* %defunct16, align 8, !dbg !5613
  %tobool17 = icmp ne i32 %15, 0, !dbg !5613
  br i1 %tobool17, label %if.then21, label %lor.lhs.false18, !dbg !5613

lor.lhs.false18:                                  ; preds = %for.cond
  %16 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue, align 8, !dbg !5613
  %call19 = call i32 @queue_cnt(%struct.timestamp_event_queue* %16) #10, !dbg !5613
  %tobool20 = icmp ne i32 %call19, 0, !dbg !5613
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !5612

if.then21:                                        ; preds = %lor.lhs.false18, %for.cond
  br label %for.end, !dbg !5613

if.end22:                                         ; preds = %lor.lhs.false18
  %17 = load i64, i64* %__int, align 8, !dbg !5615
  %tobool23 = icmp ne i64 %17, 0, !dbg !5615
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5612

if.then24:                                        ; preds = %if.end22
  %18 = load i64, i64* %__int, align 8, !dbg !5617
  store i64 %18, i64* %__ret14, align 8, !dbg !5617
  br label %__out, !dbg !5617

if.end25:                                         ; preds = %if.end22
  call void @schedule() #10, !dbg !5612
  br label %for.cond, !dbg !5619, !llvm.loop !5620

for.end:                                          ; preds = %if.then21
  %19 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5606
  %tsev_wq26 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %19, i32 0, i32 10, !dbg !5606
  call void @finish_wait(%struct.wait_queue_head* %tsev_wq26, %struct.wait_queue_entry* %__wq_entry) #10, !dbg !5606
  br label %__out, !dbg !5606

__out:                                            ; preds = %for.end, %if.then24
  call void @llvm.dbg.label(metadata !5622), !dbg !5606
  %20 = load i64, i64* %__ret14, align 8, !dbg !5606
  store i64 %20, i64* %tmp27, align 8, !dbg !5606
  %21 = load i64, i64* %tmp27, align 8, !dbg !5606
  %conv = trunc i64 %21 to i32, !dbg !5591
  store i32 %conv, i32* %__ret, align 4, !dbg !5591
  br label %if.end28, !dbg !5591

if.end28:                                         ; preds = %__out, %lor.lhs.false, %do.end9
  %22 = load i32, i32* %__ret, align 4, !dbg !5586
  store i32 %22, i32* %tmp29, align 4, !dbg !5591
  %23 = load i32, i32* %tmp29, align 4, !dbg !5586
  %tobool30 = icmp ne i32 %23, 0, !dbg !5623
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !5624

if.then31:                                        ; preds = %if.end28
  %24 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5625
  %tsevq_mux32 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %24, i32 0, i32 8, !dbg !5627
  call void @mutex_unlock(%struct.mutex* %tsevq_mux32) #10, !dbg !5628
  store i64 -512, i64* %retval, align 8, !dbg !5629
  br label %return, !dbg !5629

if.end33:                                         ; preds = %if.end28
  %25 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5630
  %defunct34 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %25, i32 0, i32 11, !dbg !5632
  %26 = load i32, i32* %defunct34, align 8, !dbg !5632
  %tobool35 = icmp ne i32 %26, 0, !dbg !5630
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !5633

if.then36:                                        ; preds = %if.end33
  %27 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5634
  %tsevq_mux37 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %27, i32 0, i32 8, !dbg !5636
  call void @mutex_unlock(%struct.mutex* %tsevq_mux37) #10, !dbg !5637
  store i64 -19, i64* %retval, align 8, !dbg !5638
  br label %return, !dbg !5638

if.end38:                                         ; preds = %if.end33
  store i64 960, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !5639
  %29 = call i1 @llvm.is.constant.i64(i64 %28) #9, !dbg !5640
  br i1 %29, label %if.then.i, label %if.end9.i, !dbg !5641

if.then.i:                                        ; preds = %if.end38
  %30 = load i64, i64* %size.addr.i, align 8, !dbg !5642
  %cmp.i = icmp ugt i64 %30, 8192, !dbg !5643
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5644

if.then1.i:                                       ; preds = %if.then.i
  %31 = load i64, i64* %size.addr.i, align 8, !dbg !5645
  %32 = load i32, i32* %flags.addr.i, align 4, !dbg !5646
  store i64 %31, i64* %size.addr.i.i, align 8
  store i32 %32, i32* %flags.addr.i.i, align 4
  %33 = load i64, i64* %size.addr.i.i, align 8, !dbg !5647
  %call.i.i = call i32 @get_order(i64 %33) #13, !dbg !5648
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5525
  %34 = load i64, i64* %size.addr.i.i, align 8, !dbg !5649
  %35 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5650
  %36 = load i32, i32* %order.i.i, align 4, !dbg !5651
  store i64 %34, i64* %size.addr.i.i.i, align 8
  store i32 %35, i32* %flags.addr.i.i.i, align 4
  store i32 %36, i32* %order.addr.i.i.i, align 4
  %37 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5652
  %38 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5653
  %39 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5654
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %37, i32 %38, i32 %39) #12, !dbg !5655
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5655
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5655
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5655
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5655
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5656
  br label %kmalloc.exit, !dbg !5656

if.end.i:                                         ; preds = %if.then.i
  %40 = load i64, i64* %size.addr.i, align 8, !dbg !5657
  store i64 %40, i64* %size.addr.i11.i, align 8
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5658
  %tobool.i.i = icmp ne i64 %41, 0, !dbg !5658
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5660

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5661
  br label %kmalloc_index.exit.i, !dbg !5661

if.end.i.i:                                       ; preds = %if.end.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5662
  %cmp.i.i = icmp ule i64 %42, 8, !dbg !5664
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5665

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5666
  br label %kmalloc_index.exit.i, !dbg !5666

if.end2.i.i:                                      ; preds = %if.end.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5667
  %cmp3.i.i = icmp ugt i64 %43, 64, !dbg !5669
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5670

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5671
  %cmp4.i.i = icmp ule i64 %44, 96, !dbg !5672
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5673

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5674
  br label %kmalloc_index.exit.i, !dbg !5674

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5675
  %cmp7.i.i = icmp ugt i64 %45, 128, !dbg !5677
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5678

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5679
  %cmp9.i.i = icmp ule i64 %46, 192, !dbg !5680
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5681

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5682
  br label %kmalloc_index.exit.i, !dbg !5682

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5683
  %cmp12.i.i = icmp ule i64 %47, 8, !dbg !5685
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5686

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5687
  br label %kmalloc_index.exit.i, !dbg !5687

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5688
  %cmp15.i.i = icmp ule i64 %48, 16, !dbg !5690
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5691

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5692
  br label %kmalloc_index.exit.i, !dbg !5692

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5693
  %cmp18.i.i = icmp ule i64 %49, 32, !dbg !5695
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5696

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5697
  br label %kmalloc_index.exit.i, !dbg !5697

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5698
  %cmp21.i.i = icmp ule i64 %50, 64, !dbg !5700
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5701

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5702
  br label %kmalloc_index.exit.i, !dbg !5702

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5703
  %cmp24.i.i = icmp ule i64 %51, 128, !dbg !5705
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5706

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5707
  br label %kmalloc_index.exit.i, !dbg !5707

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5708
  %cmp27.i.i = icmp ule i64 %52, 256, !dbg !5710
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5711

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5712
  br label %kmalloc_index.exit.i, !dbg !5712

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5713
  %cmp30.i.i = icmp ule i64 %53, 512, !dbg !5715
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5716

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5717
  br label %kmalloc_index.exit.i, !dbg !5717

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5718
  %cmp33.i.i = icmp ule i64 %54, 1024, !dbg !5720
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5721

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5722
  br label %kmalloc_index.exit.i, !dbg !5722

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5723
  %cmp36.i.i = icmp ule i64 %55, 2048, !dbg !5725
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5726

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5727
  br label %kmalloc_index.exit.i, !dbg !5727

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5728
  %cmp39.i.i = icmp ule i64 %56, 4096, !dbg !5730
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5731

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5732
  br label %kmalloc_index.exit.i, !dbg !5732

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5733
  %cmp42.i.i = icmp ule i64 %57, 8192, !dbg !5735
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5736

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5737
  br label %kmalloc_index.exit.i, !dbg !5737

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5738
  %cmp45.i.i = icmp ule i64 %58, 16384, !dbg !5740
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5741

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5742
  br label %kmalloc_index.exit.i, !dbg !5742

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5743
  %cmp48.i.i = icmp ule i64 %59, 32768, !dbg !5745
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5746

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5747
  br label %kmalloc_index.exit.i, !dbg !5747

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5748
  %cmp51.i.i = icmp ule i64 %60, 65536, !dbg !5750
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5751

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5752
  br label %kmalloc_index.exit.i, !dbg !5752

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5753
  %cmp54.i.i = icmp ule i64 %61, 131072, !dbg !5755
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5756

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5757
  br label %kmalloc_index.exit.i, !dbg !5757

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5758
  %cmp57.i.i = icmp ule i64 %62, 262144, !dbg !5760
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5761

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5762
  br label %kmalloc_index.exit.i, !dbg !5762

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5763
  %cmp60.i.i = icmp ule i64 %63, 524288, !dbg !5765
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5766

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5767
  br label %kmalloc_index.exit.i, !dbg !5767

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5768
  %cmp63.i.i = icmp ule i64 %64, 1048576, !dbg !5770
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5771

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5772
  br label %kmalloc_index.exit.i, !dbg !5772

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5773
  %cmp66.i.i = icmp ule i64 %65, 2097152, !dbg !5775
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5776

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5777
  br label %kmalloc_index.exit.i, !dbg !5777

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %66 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5778
  %cmp69.i.i = icmp ule i64 %66, 4194304, !dbg !5780
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5781

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5782
  br label %kmalloc_index.exit.i, !dbg !5782

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %67 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5783
  %cmp72.i.i = icmp ule i64 %67, 8388608, !dbg !5785
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5786

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5787
  br label %kmalloc_index.exit.i, !dbg !5787

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %68 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5788
  %cmp75.i.i = icmp ule i64 %68, 16777216, !dbg !5790
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5791

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5792
  br label %kmalloc_index.exit.i, !dbg !5792

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %69 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5793
  %cmp78.i.i = icmp ule i64 %69, 33554432, !dbg !5795
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5796

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5797
  br label %kmalloc_index.exit.i, !dbg !5797

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %70 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5798
  %cmp81.i.i = icmp ule i64 %70, 67108864, !dbg !5800
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5801

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5802
  br label %kmalloc_index.exit.i, !dbg !5802

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5803, !srcloc !5806
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 202) #9, !dbg !5807, !srcloc !5810
  unreachable, !dbg !5811

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %71 = load i32, i32* %retval.i.i, align 4, !dbg !5812
  store i32 %71, i32* %index.i, align 4, !dbg !5813
  %72 = load i32, i32* %index.i, align 4, !dbg !5814
  %tobool.i = icmp ne i32 %72, 0, !dbg !5814
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5816

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5817
  br label %kmalloc.exit, !dbg !5817

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %73 = load i32, i32* %flags.addr.i, align 4, !dbg !5818
  store i32 %73, i32* %flags.addr.i13.i, align 4
  %74 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5819
  %and.i.i = and i32 %74, 17, !dbg !5819
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5819
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5819
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5819
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5819
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5821

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5822
  br label %kmalloc_type.exit.i, !dbg !5822

if.end.i16.i:                                     ; preds = %if.end4.i
  %75 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5823
  %and2.i.i = and i32 %75, 1, !dbg !5824
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5823
  %76 = zext i1 %tobool3.i.i to i64, !dbg !5823
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5823
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5825
  br label %kmalloc_type.exit.i, !dbg !5825

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %77 = load i32, i32* %retval.i12.i, align 4, !dbg !5826
  %idxprom.i = zext i32 %77 to i64, !dbg !5827
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5827
  %78 = load i32, i32* %index.i, align 4, !dbg !5828
  %idxprom6.i = zext i32 %78 to i64, !dbg !5827
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5827
  %79 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5827
  %80 = load i32, i32* %flags.addr.i, align 4, !dbg !5829
  %81 = load i64, i64* %size.addr.i, align 8, !dbg !5830
  store %struct.kmem_cache* %79, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %80, i32* %flags.addr.i17.i, align 4
  store i64 %81, i64* %size.addr.i18.i, align 8
  %82 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5831
  %83 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5832
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %82, i32 %83) #12, !dbg !5833
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5833
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5833
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5833
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5833
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5494
  %84 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5834
  %85 = load i8*, i8** %ret.i.i, align 8, !dbg !5835
  %86 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5836
  %87 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5837
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %84, i8* %85, i64 %86, i32 %87) #12, !dbg !5838
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5839
  %88 = load i8*, i8** %ret.i.i, align 8, !dbg !5840
  store i8* %88, i8** %retval.i, align 8, !dbg !5841
  br label %kmalloc.exit, !dbg !5841

if.end9.i:                                        ; preds = %if.end38
  %89 = load i64, i64* %size.addr.i, align 8, !dbg !5842
  %90 = load i32, i32* %flags.addr.i, align 4, !dbg !5843
  %call10.i = call noalias i8* @__kmalloc(i64 %89, i32 %90) #12, !dbg !5844
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5844
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5844
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5844
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5844
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5845
  br label %kmalloc.exit, !dbg !5845

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %91 = load i8*, i8** %retval.i, align 8, !dbg !5846
  %92 = bitcast i8* %91 to %struct.ptp_extts_event*, !dbg !5847
  store %struct.ptp_extts_event* %92, %struct.ptp_extts_event** %event, align 8, !dbg !5848
  %93 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %event, align 8, !dbg !5849
  %tobool40 = icmp ne %struct.ptp_extts_event* %93, null, !dbg !5849
  br i1 %tobool40, label %if.end43, label %if.then41, !dbg !5851

if.then41:                                        ; preds = %kmalloc.exit
  %94 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5852
  %tsevq_mux42 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %94, i32 0, i32 8, !dbg !5854
  call void @mutex_unlock(%struct.mutex* %tsevq_mux42) #10, !dbg !5855
  store i64 -12, i64* %retval, align 8, !dbg !5856
  br label %return, !dbg !5856

if.end43:                                         ; preds = %kmalloc.exit
  br label %do.body44, !dbg !5857

do.body44:                                        ; preds = %if.end43
  br label %do.body45, !dbg !5858

do.body45:                                        ; preds = %do.body44
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5859, metadata !DIExpression()), !dbg !5861
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5862, metadata !DIExpression()), !dbg !5861
  %cmp46 = icmp eq i64* %__dummy, %__dummy2, !dbg !5861
  %conv47 = zext i1 %cmp46 to i32, !dbg !5861
  store i32 1, i32* %tmp48, align 4, !dbg !5861
  %95 = load i32, i32* %tmp48, align 4, !dbg !5861
  br label %do.body49, !dbg !5863

do.body49:                                        ; preds = %do.body45
  br label %do.body50, !dbg !5864

do.body50:                                        ; preds = %do.body49
  br label %do.body51, !dbg !5865

do.body51:                                        ; preds = %do.body50
  call void @llvm.dbg.declare(metadata i64* %__dummy52, metadata !5867, metadata !DIExpression()), !dbg !5870
  call void @llvm.dbg.declare(metadata i64* %__dummy253, metadata !5871, metadata !DIExpression()), !dbg !5870
  %cmp54 = icmp eq i64* %__dummy52, %__dummy253, !dbg !5870
  %conv55 = zext i1 %cmp54 to i32, !dbg !5870
  store i32 1, i32* %tmp56, align 4, !dbg !5870
  %96 = load i32, i32* %tmp56, align 4, !dbg !5870
  %call57 = call i64 @arch_local_irq_save() #10, !dbg !5872
  store i64 %call57, i64* %flags, align 8, !dbg !5872
  br label %do.end58, !dbg !5872

do.end58:                                         ; preds = %do.body51
  br label %do.end59, !dbg !5865

do.end59:                                         ; preds = %do.end58
  br label %do.body60, !dbg !5864

do.body60:                                        ; preds = %do.end59
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5873, !srcloc !5874
  br label %do.body61, !dbg !5873

do.body61:                                        ; preds = %do.body60
  %97 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue, align 8, !dbg !5875
  %lock = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %97, i32 0, i32 3, !dbg !5875
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %98 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !5876
  %99 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %98, i32 0, i32 0, !dbg !5877
  %rlock.i = bitcast %union.anon.3* %99 to %struct.raw_spinlock*, !dbg !5877
  br label %do.end63, !dbg !5875

do.end63:                                         ; preds = %do.body61
  br label %do.end64, !dbg !5873

do.end64:                                         ; preds = %do.end63
  br label %do.end65, !dbg !5864

do.end65:                                         ; preds = %do.end64
  br label %do.end66, !dbg !5863

do.end66:                                         ; preds = %do.end65
  br label %do.end67, !dbg !5858

do.end67:                                         ; preds = %do.end66
  %100 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue, align 8, !dbg !5878
  %call68 = call i32 @queue_cnt(%struct.timestamp_event_queue* %100) #10, !dbg !5879
  %conv69 = sext i32 %call68 to i64, !dbg !5879
  store i64 %conv69, i64* %qcnt, align 8, !dbg !5880
  %101 = load i64, i64* %cnt.addr, align 8, !dbg !5881
  %102 = load i64, i64* %qcnt, align 8, !dbg !5883
  %cmp70 = icmp ugt i64 %101, %102, !dbg !5884
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !5885

if.then72:                                        ; preds = %do.end67
  %103 = load i64, i64* %qcnt, align 8, !dbg !5886
  store i64 %103, i64* %cnt.addr, align 8, !dbg !5887
  br label %if.end73, !dbg !5888

if.end73:                                         ; preds = %if.then72, %do.end67
  store i64 0, i64* %i, align 8, !dbg !5889
  br label %for.cond74, !dbg !5891

for.cond74:                                       ; preds = %for.inc, %if.end73
  %104 = load i64, i64* %i, align 8, !dbg !5892
  %105 = load i64, i64* %cnt.addr, align 8, !dbg !5894
  %cmp75 = icmp ult i64 %104, %105, !dbg !5895
  br i1 %cmp75, label %for.body, label %for.end82, !dbg !5896

for.body:                                         ; preds = %for.cond74
  %106 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %event, align 8, !dbg !5897
  %107 = load i64, i64* %i, align 8, !dbg !5899
  %arrayidx = getelementptr %struct.ptp_extts_event, %struct.ptp_extts_event* %106, i64 %107, !dbg !5897
  %108 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue, align 8, !dbg !5900
  %buf77 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %108, i32 0, i32 0, !dbg !5901
  %109 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue, align 8, !dbg !5902
  %head = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %109, i32 0, i32 1, !dbg !5903
  %110 = load i32, i32* %head, align 8, !dbg !5903
  %idxprom = sext i32 %110 to i64, !dbg !5900
  %arrayidx78 = getelementptr [128 x %struct.ptp_extts_event], [128 x %struct.ptp_extts_event]* %buf77, i64 0, i64 %idxprom, !dbg !5900
  %111 = bitcast %struct.ptp_extts_event* %arrayidx to i8*, !dbg !5900
  %112 = bitcast %struct.ptp_extts_event* %arrayidx78 to i8*, !dbg !5900
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 32, i1 false), !dbg !5900
  %113 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue, align 8, !dbg !5904
  %head79 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %113, i32 0, i32 1, !dbg !5905
  %114 = load i32, i32* %head79, align 8, !dbg !5905
  %add = add i32 %114, 1, !dbg !5906
  %rem80 = srem i32 %add, 128, !dbg !5907
  %115 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue, align 8, !dbg !5908
  %head81 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %115, i32 0, i32 1, !dbg !5909
  store i32 %rem80, i32* %head81, align 8, !dbg !5910
  br label %for.inc, !dbg !5911

for.inc:                                          ; preds = %for.body
  %116 = load i64, i64* %i, align 8, !dbg !5912
  %inc = add i64 %116, 1, !dbg !5912
  store i64 %inc, i64* %i, align 8, !dbg !5912
  br label %for.cond74, !dbg !5913, !llvm.loop !5914

for.end82:                                        ; preds = %for.cond74
  %117 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %queue, align 8, !dbg !5916
  %lock83 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %117, i32 0, i32 3, !dbg !5917
  %118 = load i64, i64* %flags, align 8, !dbg !5918
  store %struct.spinlock* %lock83, %struct.spinlock** %lock.addr.i91, align 8
  store i64 %118, i64* %flags.addr.i92, align 8
  call void @llvm.dbg.declare(metadata !536, metadata !5919, metadata !DIExpression()) #9, !dbg !5922
  call void @llvm.dbg.declare(metadata !536, metadata !5923, metadata !DIExpression()) #9, !dbg !5922
  store i32 1, i32* %tmp.i, align 4, !dbg !5922
  %119 = load i32, i32* %tmp.i, align 4, !dbg !5922
  call void @llvm.dbg.declare(metadata !536, metadata !5924, metadata !DIExpression()) #9, !dbg !5929
  call void @llvm.dbg.declare(metadata !536, metadata !5930, metadata !DIExpression()) #9, !dbg !5929
  store i32 1, i32* %tmp8.i, align 4, !dbg !5929
  %120 = load i32, i32* %tmp8.i, align 4, !dbg !5929
  %121 = load i64, i64* %flags.addr.i92, align 8, !dbg !5931
  call void @arch_local_irq_restore(i64 %121) #12, !dbg !5931
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5932, !srcloc !5934
  %122 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i91, align 8, !dbg !5935
  %123 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %122, i32 0, i32 0, !dbg !5935
  %rlock.i93 = bitcast %union.anon.3* %123 to %struct.raw_spinlock*, !dbg !5935
  %124 = load i64, i64* %cnt.addr, align 8, !dbg !5937
  %mul = mul i64 %124, 32, !dbg !5938
  store i64 %mul, i64* %cnt.addr, align 8, !dbg !5939
  %125 = load %struct.ptp_clock*, %struct.ptp_clock** %ptp, align 8, !dbg !5940
  %tsevq_mux84 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %125, i32 0, i32 8, !dbg !5941
  call void @mutex_unlock(%struct.mutex* %tsevq_mux84) #10, !dbg !5942
  %126 = load i64, i64* %cnt.addr, align 8, !dbg !5943
  %conv85 = trunc i64 %126 to i32, !dbg !5943
  store i32 %conv85, i32* %result, align 4, !dbg !5944
  %127 = load i8*, i8** %buf.addr, align 8, !dbg !5945
  %128 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %event, align 8, !dbg !5946
  %129 = bitcast %struct.ptp_extts_event* %128 to i8*, !dbg !5946
  %130 = load i64, i64* %cnt.addr, align 8, !dbg !5947
  store i8* %127, i8** %to.addr.i, align 8
  store i8* %129, i8** %from.addr.i, align 8
  store i64 %130, i64* %n.addr.i, align 8
  %131 = load i8*, i8** %from.addr.i, align 8, !dbg !5948
  %132 = load i64, i64* %n.addr.i, align 8, !dbg !5948
  store i8* %131, i8** %addr.addr.i.i, align 8
  store i64 %132, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5450
  %133 = load i32, i32* %sz.i.i, align 4, !dbg !5949
  %cmp.i.i95 = icmp sge i32 %133, 0, !dbg !5949
  br i1 %cmp.i.i95, label %land.rhs.i.i, label %land.end.i.i, !dbg !5949

land.rhs.i.i:                                     ; preds = %for.end82
  %134 = load i32, i32* %sz.i.i, align 4, !dbg !5949
  %conv.i.i96 = sext i32 %134 to i64, !dbg !5949
  %135 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5949
  %cmp1.i.i = icmp ult i64 %conv.i.i96, %135, !dbg !5949
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %for.end82
  %136 = phi i1 [ false, %for.end82 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5950
  %lnot.i.i97 = xor i1 %136, true, !dbg !5949
  %lnot.ext.i.i98 = zext i1 %136 to i32, !dbg !5949
  %conv4.i.i = sext i32 %lnot.ext.i.i98 to i64, !dbg !5949
  br i1 %136, label %if.then.i.i99, label %if.end10.i.i, !dbg !5951

if.then.i.i99:                                    ; preds = %land.end.i.i
  %137 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5952
  %138 = call i1 @llvm.is.constant.i64(i64 %137) #9, !dbg !5953
  br i1 %138, label %if.else.i.i, label %if.then5.i.i100, !dbg !5954

if.then5.i.i100:                                  ; preds = %if.then.i.i99
  %139 = load i32, i32* %sz.i.i, align 4, !dbg !5955
  %140 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5956
  call void @copy_overflow(i32 %139, i64 %140) #12, !dbg !5957
  br label %if.end9.i.i, !dbg !5957

if.else.i.i:                                      ; preds = %if.then.i.i99
  %141 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5958
  %tobool6.i.i = trunc i8 %141 to i1, !dbg !5958
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5959

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #12, !dbg !5960
  br label %if.end.i.i101, !dbg !5960

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #12, !dbg !5961
  br label %if.end.i.i101

if.end.i.i101:                                    ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i101, %if.then5.i.i100
  store i1 false, i1* %retval.i.i94, align 1, !dbg !5962
  br label %check_copy_size.exit.i, !dbg !5962

if.end10.i.i:                                     ; preds = %land.end.i.i
  %142 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5451
  %cmp11.i.i = icmp ugt i64 %142, 2147483647, !dbg !5451
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5451
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5451
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5451
  %143 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5963
  %tobool17.i.i = icmp ne i32 %143, 0, !dbg !5963
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5963
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5963
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5963
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5451

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !5964, !srcloc !4269
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !5965, !srcloc !4272
  br label %if.end31.i.i, !dbg !5966

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %144 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5451
  %tobool32.i.i = icmp ne i32 %144, 0, !dbg !5451
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5451
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5451
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5451
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5963
  %145 = load i64, i64* %tmp.i.i, align 8, !dbg !5451
  %tobool38.i.i = icmp ne i64 %145, 0, !dbg !5967
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5968

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i94, align 1, !dbg !5969
  br label %check_copy_size.exit.i, !dbg !5969

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %146 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5970
  %147 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5971
  %148 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5972
  %tobool41.i.i = trunc i8 %148 to i1, !dbg !5972
  call void @check_object_size(i8* %146, i64 %147, i1 zeroext %tobool41.i.i) #12, !dbg !5973
  store i1 true, i1* %retval.i.i94, align 1, !dbg !5974
  br label %check_copy_size.exit.i, !dbg !5974

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %149 = load i1, i1* %retval.i.i94, align 1, !dbg !5975
  %lnot.i = xor i1 %149, true, !dbg !5948
  %lnot.ext.i = zext i1 %149 to i32, !dbg !5948
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5948
  br i1 %149, label %if.then.i102, label %copy_to_user.exit, !dbg !5976

if.then.i102:                                     ; preds = %check_copy_size.exit.i
  %150 = load i8*, i8** %to.addr.i, align 8, !dbg !5977
  %151 = load i8*, i8** %from.addr.i, align 8, !dbg !5978
  %152 = load i64, i64* %n.addr.i, align 8, !dbg !5979
  %call2.i = call i64 @_copy_to_user(i8* %150, i8* %151, i64 %152) #12, !dbg !5980
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5981
  br label %copy_to_user.exit, !dbg !5982

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i102
  %153 = load i64, i64* %n.addr.i, align 8, !dbg !5983
  %tobool87 = icmp ne i64 %153, 0, !dbg !5984
  br i1 %tobool87, label %if.then88, label %if.end89, !dbg !5985

if.then88:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %result, align 4, !dbg !5986
  br label %if.end89, !dbg !5987

if.end89:                                         ; preds = %if.then88, %copy_to_user.exit
  %154 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %event, align 8, !dbg !5988
  %155 = bitcast %struct.ptp_extts_event* %154 to i8*, !dbg !5988
  call void @kfree(i8* %155) #10, !dbg !5989
  %156 = load i32, i32* %result, align 4, !dbg !5990
  %conv90 = sext i32 %156 to i64, !dbg !5990
  store i64 %conv90, i64* %retval, align 8, !dbg !5991
  br label %return, !dbg !5991

return:                                           ; preds = %if.end89, %if.then41, %if.then36, %if.then31, %if.then4, %if.then
  %157 = load i64, i64* %retval, align 8, !dbg !5992
  ret i64 %157, !dbg !5992
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #4

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #4

; Function Attrs: noredzone
declare dso_local void @schedule() #4

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !5993 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5997, metadata !DIExpression()), !dbg !5998
  %call = call i64 @arch_local_save_flags() #10, !dbg !5999
  store i64 %call, i64* %f, align 8, !dbg !6000
  call void @arch_local_irq_disable() #10, !dbg !6001
  %0 = load i64, i64* %f, align 8, !dbg !6002
  ret i64 %0, !dbg !6003
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !6004 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !6007, metadata !DIExpression()), !dbg !6008
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !6009, metadata !DIExpression()), !dbg !6010
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !6011, metadata !DIExpression()), !dbg !6013
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !6013
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !6014
  %tobool = icmp ne i32 %0, 0, !dbg !6014
  %lnot = xor i1 %tobool, true, !dbg !6014
  %lnot1 = xor i1 %lnot, true, !dbg !6014
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6014
  %conv = sext i32 %lnot.ext to i64, !dbg !6014
  %tobool2 = icmp ne i64 %conv, 0, !dbg !6014
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6013

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6014

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !6016

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !6018

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !6016
  %2 = load i64, i64* %count.addr, align 8, !dbg !6016
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %1, i64 %2) #10, !dbg !6016
  br label %do.body4, !dbg !6016

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !6020

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6022

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6020

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 134, i32 2313, i64 12) #9, !dbg !6024, !srcloc !6026
  br label %do.end8, !dbg !6024

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #9, !dbg !6027, !srcloc !6029
  br label %do.body9, !dbg !6020

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6030

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !6020

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !6016

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !6032

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6016

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !6016

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !6013
  %tobool15 = icmp ne i32 %3, 0, !dbg !6013
  %lnot16 = xor i1 %tobool15, true, !dbg !6013
  %lnot18 = xor i1 %lnot16, true, !dbg !6013
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !6013
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !6013
  store i64 %conv20, i64* %tmp, align 8, !dbg !6014
  %4 = load i64, i64* %tmp, align 8, !dbg !6013
  ret void, !dbg !6034
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #4

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !6035 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !6038, metadata !DIExpression()), !dbg !6039
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6040, metadata !DIExpression()), !dbg !6041
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !6042, metadata !DIExpression()), !dbg !6043
  ret void, !dbg !6044
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !6045 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6049, metadata !DIExpression()), !dbg !6054
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6056, metadata !DIExpression()), !dbg !6057
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load i64, i64* %size.addr, align 8, !dbg !6060
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6062
  br i1 %1, label %if.then, label %if.end447, !dbg !6063

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6064
  %tobool = icmp ne i64 %2, 0, !dbg !6064
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6067

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6068
  br label %return, !dbg !6068

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6069
  %cmp = icmp ult i64 %3, 4096, !dbg !6071
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6072

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6073
  br label %return, !dbg !6073

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub = sub i64 %4, 1, !dbg !6074
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6074
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6074

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub4 = sub i64 %6, 1, !dbg !6074
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6074
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6074

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub6 = sub i64 %8, 1, !dbg !6074
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6074
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6074

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6074

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub9 = sub i64 %9, 1, !dbg !6074
  %and = and i64 %sub9, -9223372036854775808, !dbg !6074
  %tobool10 = icmp ne i64 %and, 0, !dbg !6074
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6074

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6074

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub13 = sub i64 %10, 1, !dbg !6074
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6074
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6074
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6074

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6074

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub18 = sub i64 %11, 1, !dbg !6074
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6074
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6074
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6074

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6074

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub23 = sub i64 %12, 1, !dbg !6074
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6074
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6074
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6074

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6074

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub28 = sub i64 %13, 1, !dbg !6074
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6074
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6074
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6074

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6074

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub33 = sub i64 %14, 1, !dbg !6074
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6074
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6074
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6074

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6074

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub38 = sub i64 %15, 1, !dbg !6074
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6074
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6074
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6074

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6074

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub43 = sub i64 %16, 1, !dbg !6074
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6074
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6074
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6074

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6074

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub48 = sub i64 %17, 1, !dbg !6074
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6074
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6074
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6074

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6074

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub53 = sub i64 %18, 1, !dbg !6074
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6074
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6074
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6074

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6074

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub58 = sub i64 %19, 1, !dbg !6074
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6074
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6074
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6074

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6074

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub63 = sub i64 %20, 1, !dbg !6074
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6074
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6074
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6074

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6074

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub68 = sub i64 %21, 1, !dbg !6074
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6074
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6074
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6074

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6074

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub73 = sub i64 %22, 1, !dbg !6074
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6074
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6074
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6074

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6074

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub78 = sub i64 %23, 1, !dbg !6074
  %and79 = and i64 %sub78, 562949953421312, !dbg !6074
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6074
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6074

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6074

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub83 = sub i64 %24, 1, !dbg !6074
  %and84 = and i64 %sub83, 281474976710656, !dbg !6074
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6074
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6074

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6074

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub88 = sub i64 %25, 1, !dbg !6074
  %and89 = and i64 %sub88, 140737488355328, !dbg !6074
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6074
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6074

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6074

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub93 = sub i64 %26, 1, !dbg !6074
  %and94 = and i64 %sub93, 70368744177664, !dbg !6074
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6074
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6074

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6074

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub98 = sub i64 %27, 1, !dbg !6074
  %and99 = and i64 %sub98, 35184372088832, !dbg !6074
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6074
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6074

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6074

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub103 = sub i64 %28, 1, !dbg !6074
  %and104 = and i64 %sub103, 17592186044416, !dbg !6074
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6074
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6074

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6074

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub108 = sub i64 %29, 1, !dbg !6074
  %and109 = and i64 %sub108, 8796093022208, !dbg !6074
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6074
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6074

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6074

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub113 = sub i64 %30, 1, !dbg !6074
  %and114 = and i64 %sub113, 4398046511104, !dbg !6074
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6074
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6074

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6074

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub118 = sub i64 %31, 1, !dbg !6074
  %and119 = and i64 %sub118, 2199023255552, !dbg !6074
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6074
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6074

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6074

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub123 = sub i64 %32, 1, !dbg !6074
  %and124 = and i64 %sub123, 1099511627776, !dbg !6074
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6074
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6074

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6074

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub128 = sub i64 %33, 1, !dbg !6074
  %and129 = and i64 %sub128, 549755813888, !dbg !6074
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6074
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6074

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6074

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub133 = sub i64 %34, 1, !dbg !6074
  %and134 = and i64 %sub133, 274877906944, !dbg !6074
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6074
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6074

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6074

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub138 = sub i64 %35, 1, !dbg !6074
  %and139 = and i64 %sub138, 137438953472, !dbg !6074
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6074
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6074

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6074

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub143 = sub i64 %36, 1, !dbg !6074
  %and144 = and i64 %sub143, 68719476736, !dbg !6074
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6074
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6074

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6074

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub148 = sub i64 %37, 1, !dbg !6074
  %and149 = and i64 %sub148, 34359738368, !dbg !6074
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6074
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6074

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6074

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub153 = sub i64 %38, 1, !dbg !6074
  %and154 = and i64 %sub153, 17179869184, !dbg !6074
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6074
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6074

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6074

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub158 = sub i64 %39, 1, !dbg !6074
  %and159 = and i64 %sub158, 8589934592, !dbg !6074
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6074
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6074

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6074

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub163 = sub i64 %40, 1, !dbg !6074
  %and164 = and i64 %sub163, 4294967296, !dbg !6074
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6074
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6074

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6074

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub168 = sub i64 %41, 1, !dbg !6074
  %and169 = and i64 %sub168, 2147483648, !dbg !6074
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6074
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6074

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6074

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub173 = sub i64 %42, 1, !dbg !6074
  %and174 = and i64 %sub173, 1073741824, !dbg !6074
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6074
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6074

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6074

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub178 = sub i64 %43, 1, !dbg !6074
  %and179 = and i64 %sub178, 536870912, !dbg !6074
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6074
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6074

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6074

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub183 = sub i64 %44, 1, !dbg !6074
  %and184 = and i64 %sub183, 268435456, !dbg !6074
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6074
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6074

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6074

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub188 = sub i64 %45, 1, !dbg !6074
  %and189 = and i64 %sub188, 134217728, !dbg !6074
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6074
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6074

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6074

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub193 = sub i64 %46, 1, !dbg !6074
  %and194 = and i64 %sub193, 67108864, !dbg !6074
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6074
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6074

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6074

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub198 = sub i64 %47, 1, !dbg !6074
  %and199 = and i64 %sub198, 33554432, !dbg !6074
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6074
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6074

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6074

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub203 = sub i64 %48, 1, !dbg !6074
  %and204 = and i64 %sub203, 16777216, !dbg !6074
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6074
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6074

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6074

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub208 = sub i64 %49, 1, !dbg !6074
  %and209 = and i64 %sub208, 8388608, !dbg !6074
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6074
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6074

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6074

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub213 = sub i64 %50, 1, !dbg !6074
  %and214 = and i64 %sub213, 4194304, !dbg !6074
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6074
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6074

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6074

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub218 = sub i64 %51, 1, !dbg !6074
  %and219 = and i64 %sub218, 2097152, !dbg !6074
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6074
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6074

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6074

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub223 = sub i64 %52, 1, !dbg !6074
  %and224 = and i64 %sub223, 1048576, !dbg !6074
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6074
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6074

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6074

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub228 = sub i64 %53, 1, !dbg !6074
  %and229 = and i64 %sub228, 524288, !dbg !6074
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6074
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6074

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6074

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub233 = sub i64 %54, 1, !dbg !6074
  %and234 = and i64 %sub233, 262144, !dbg !6074
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6074
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6074

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6074

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub238 = sub i64 %55, 1, !dbg !6074
  %and239 = and i64 %sub238, 131072, !dbg !6074
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6074
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6074

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6074

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub243 = sub i64 %56, 1, !dbg !6074
  %and244 = and i64 %sub243, 65536, !dbg !6074
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6074
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6074

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6074

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub248 = sub i64 %57, 1, !dbg !6074
  %and249 = and i64 %sub248, 32768, !dbg !6074
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6074
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6074

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6074

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub253 = sub i64 %58, 1, !dbg !6074
  %and254 = and i64 %sub253, 16384, !dbg !6074
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6074
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6074

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6074

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub258 = sub i64 %59, 1, !dbg !6074
  %and259 = and i64 %sub258, 8192, !dbg !6074
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6074
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6074

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6074

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub263 = sub i64 %60, 1, !dbg !6074
  %and264 = and i64 %sub263, 4096, !dbg !6074
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6074
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6074

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6074

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub268 = sub i64 %61, 1, !dbg !6074
  %and269 = and i64 %sub268, 2048, !dbg !6074
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6074
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6074

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6074

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub273 = sub i64 %62, 1, !dbg !6074
  %and274 = and i64 %sub273, 1024, !dbg !6074
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6074
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6074

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6074

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub278 = sub i64 %63, 1, !dbg !6074
  %and279 = and i64 %sub278, 512, !dbg !6074
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6074
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6074

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6074

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub283 = sub i64 %64, 1, !dbg !6074
  %and284 = and i64 %sub283, 256, !dbg !6074
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6074
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6074

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6074

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub288 = sub i64 %65, 1, !dbg !6074
  %and289 = and i64 %sub288, 128, !dbg !6074
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6074
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6074

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6074

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub293 = sub i64 %66, 1, !dbg !6074
  %and294 = and i64 %sub293, 64, !dbg !6074
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6074
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6074

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6074

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub298 = sub i64 %67, 1, !dbg !6074
  %and299 = and i64 %sub298, 32, !dbg !6074
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6074
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6074

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6074

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub303 = sub i64 %68, 1, !dbg !6074
  %and304 = and i64 %sub303, 16, !dbg !6074
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6074
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6074

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6074

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub308 = sub i64 %69, 1, !dbg !6074
  %and309 = and i64 %sub308, 8, !dbg !6074
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6074
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6074

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6074

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub313 = sub i64 %70, 1, !dbg !6074
  %and314 = and i64 %sub313, 4, !dbg !6074
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6074
  %71 = zext i1 %tobool315 to i64, !dbg !6074
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6074
  br label %cond.end, !dbg !6074

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6074
  br label %cond.end317, !dbg !6074

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6074
  br label %cond.end319, !dbg !6074

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6074
  br label %cond.end321, !dbg !6074

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6074
  br label %cond.end323, !dbg !6074

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6074
  br label %cond.end325, !dbg !6074

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6074
  br label %cond.end327, !dbg !6074

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6074
  br label %cond.end329, !dbg !6074

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6074
  br label %cond.end331, !dbg !6074

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6074
  br label %cond.end333, !dbg !6074

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6074
  br label %cond.end335, !dbg !6074

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6074
  br label %cond.end337, !dbg !6074

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6074
  br label %cond.end339, !dbg !6074

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6074
  br label %cond.end341, !dbg !6074

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6074
  br label %cond.end343, !dbg !6074

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6074
  br label %cond.end345, !dbg !6074

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6074
  br label %cond.end347, !dbg !6074

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6074
  br label %cond.end349, !dbg !6074

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6074
  br label %cond.end351, !dbg !6074

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6074
  br label %cond.end353, !dbg !6074

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6074
  br label %cond.end355, !dbg !6074

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6074
  br label %cond.end357, !dbg !6074

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6074
  br label %cond.end359, !dbg !6074

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6074
  br label %cond.end361, !dbg !6074

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6074
  br label %cond.end363, !dbg !6074

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6074
  br label %cond.end365, !dbg !6074

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6074
  br label %cond.end367, !dbg !6074

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6074
  br label %cond.end369, !dbg !6074

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6074
  br label %cond.end371, !dbg !6074

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6074
  br label %cond.end373, !dbg !6074

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6074
  br label %cond.end375, !dbg !6074

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6074
  br label %cond.end377, !dbg !6074

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6074
  br label %cond.end379, !dbg !6074

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6074
  br label %cond.end381, !dbg !6074

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6074
  br label %cond.end383, !dbg !6074

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6074
  br label %cond.end385, !dbg !6074

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6074
  br label %cond.end387, !dbg !6074

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6074
  br label %cond.end389, !dbg !6074

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6074
  br label %cond.end391, !dbg !6074

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6074
  br label %cond.end393, !dbg !6074

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6074
  br label %cond.end395, !dbg !6074

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6074
  br label %cond.end397, !dbg !6074

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6074
  br label %cond.end399, !dbg !6074

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6074
  br label %cond.end401, !dbg !6074

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6074
  br label %cond.end403, !dbg !6074

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6074
  br label %cond.end405, !dbg !6074

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6074
  br label %cond.end407, !dbg !6074

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6074
  br label %cond.end409, !dbg !6074

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6074
  br label %cond.end411, !dbg !6074

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6074
  br label %cond.end413, !dbg !6074

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6074
  br label %cond.end415, !dbg !6074

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6074
  br label %cond.end417, !dbg !6074

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6074
  br label %cond.end419, !dbg !6074

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6074
  br label %cond.end421, !dbg !6074

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6074
  br label %cond.end423, !dbg !6074

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6074
  br label %cond.end425, !dbg !6074

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6074
  br label %cond.end427, !dbg !6074

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6074
  br label %cond.end429, !dbg !6074

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6074
  br label %cond.end431, !dbg !6074

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6074
  br label %cond.end433, !dbg !6074

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6074
  br label %cond.end435, !dbg !6074

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6074
  br label %cond.end437, !dbg !6074

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6074
  br label %cond.end440, !dbg !6074

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6074

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6074
  br label %cond.end444, !dbg !6074

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6074
  %sub443 = sub i64 %72, 1, !dbg !6074
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !6074
  br label %cond.end444, !dbg !6074

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6074
  %sub446 = sub i32 %cond445, 12, !dbg !6075
  %add = add i32 %sub446, 1, !dbg !6076
  store i32 %add, i32* %retval, align 4, !dbg !6077
  br label %return, !dbg !6077

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6078
  %dec = add i64 %73, -1, !dbg !6078
  store i64 %dec, i64* %size.addr, align 8, !dbg !6078
  %74 = load i64, i64* %size.addr, align 8, !dbg !6079
  %shr = lshr i64 %74, 12, !dbg !6079
  store i64 %shr, i64* %size.addr, align 8, !dbg !6079
  %75 = load i64, i64* %size.addr, align 8, !dbg !6080
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6057
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6081
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6082
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !6081, !srcloc !6083
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6081
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6084
  %add.i = add i32 %79, 1, !dbg !6085
  store i32 %add.i, i32* %retval, align 4, !dbg !6086
  br label %return, !dbg !6086

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6087
  ret i32 %80, !dbg !6087
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6088 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6049, metadata !DIExpression()), !dbg !6092
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6056, metadata !DIExpression()), !dbg !6094
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6095, metadata !DIExpression()), !dbg !6096
  %0 = load i64, i64* %n.addr, align 8, !dbg !6097
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6094
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6098
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6099
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !6098, !srcloc !6083
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6098
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6100
  %add.i = add i32 %4, 1, !dbg !6101
  %sub = sub i32 %add.i, 1, !dbg !6102
  ret i32 %sub, !dbg !6103
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !6104 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6108, metadata !DIExpression()), !dbg !6109
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6110, metadata !DIExpression()), !dbg !6111
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6112, metadata !DIExpression()), !dbg !6113
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6114, metadata !DIExpression()), !dbg !6115
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6116
  ret i8* %0, !dbg !6117
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !6118 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !6119, metadata !DIExpression()), !dbg !6121
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6122, metadata !DIExpression()), !dbg !6121
  %0 = load i64, i64* %__edi, align 8, !dbg !6121
  store i64 %0, i64* %__edi, align 8, !dbg !6121
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6123, metadata !DIExpression()), !dbg !6121
  %1 = load i64, i64* %__esi, align 8, !dbg !6121
  store i64 %1, i64* %__esi, align 8, !dbg !6121
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6124, metadata !DIExpression()), !dbg !6121
  %2 = load i64, i64* %__edx, align 8, !dbg !6121
  store i64 %2, i64* %__edx, align 8, !dbg !6121
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6125, metadata !DIExpression()), !dbg !6121
  %3 = load i64, i64* %__ecx, align 8, !dbg !6121
  store i64 %3, i64* %__ecx, align 8, !dbg !6121
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6126, metadata !DIExpression()), !dbg !6121
  %4 = load i64, i64* %__eax, align 8, !dbg !6121
  store i64 %4, i64* %__eax, align 8, !dbg !6121
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !6121
  %6 = call i64 @llvm.read_register.i64(metadata !3795), !dbg !6127
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #9, !dbg !6127, !srcloc !6130
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6127
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6127
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6127
  call void @llvm.write_register.i64(metadata !3795, i64 %asmresult1), !dbg !6127
  %8 = load i64, i64* %__eax, align 8, !dbg !6127
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !6131, metadata !DIExpression()), !dbg !6133
  store i64 -1, i64* %__mask, align 8, !dbg !6133
  %9 = load i64, i64* %__mask, align 8, !dbg !6133
  store i64 %9, i64* %tmp, align 8, !dbg !6133
  %10 = load i64, i64* %tmp, align 8, !dbg !6133
  %and = and i64 %8, %10, !dbg !6127
  store i64 %and, i64* %__ret, align 8, !dbg !6127
  %11 = load i64, i64* %__ret, align 8, !dbg !6121
  store i64 %11, i64* %tmp2, align 8, !dbg !6134
  %12 = load i64, i64* %tmp2, align 8, !dbg !6121
  ret i64 %12, !dbg !6135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !6136 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6137, metadata !DIExpression()), !dbg !6139
  %0 = load i64, i64* %__edi, align 8, !dbg !6139
  store i64 %0, i64* %__edi, align 8, !dbg !6139
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6140, metadata !DIExpression()), !dbg !6139
  %1 = load i64, i64* %__esi, align 8, !dbg !6139
  store i64 %1, i64* %__esi, align 8, !dbg !6139
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6141, metadata !DIExpression()), !dbg !6139
  %2 = load i64, i64* %__edx, align 8, !dbg !6139
  store i64 %2, i64* %__edx, align 8, !dbg !6139
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6142, metadata !DIExpression()), !dbg !6139
  %3 = load i64, i64* %__ecx, align 8, !dbg !6139
  store i64 %3, i64* %__ecx, align 8, !dbg !6139
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6143, metadata !DIExpression()), !dbg !6139
  %4 = load i64, i64* %__eax, align 8, !dbg !6139
  store i64 %4, i64* %__eax, align 8, !dbg !6139
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !6139
  %6 = call i64 @llvm.read_register.i64(metadata !3795), !dbg !6139
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #9, !dbg !6139, !srcloc !6144
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6139
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6139
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6139
  call void @llvm.write_register.i64(metadata !3795, i64 %asmresult1), !dbg !6139
  ret void, !dbg !6145
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !6146 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !6149, metadata !DIExpression()), !dbg !6150
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6151, metadata !DIExpression()), !dbg !6153
  %0 = load i64, i64* %__edi, align 8, !dbg !6153
  store i64 %0, i64* %__edi, align 8, !dbg !6153
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6154, metadata !DIExpression()), !dbg !6153
  %1 = load i64, i64* %__esi, align 8, !dbg !6153
  store i64 %1, i64* %__esi, align 8, !dbg !6153
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6155, metadata !DIExpression()), !dbg !6153
  %2 = load i64, i64* %__edx, align 8, !dbg !6153
  store i64 %2, i64* %__edx, align 8, !dbg !6153
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6156, metadata !DIExpression()), !dbg !6153
  %3 = load i64, i64* %__ecx, align 8, !dbg !6153
  store i64 %3, i64* %__ecx, align 8, !dbg !6153
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6157, metadata !DIExpression()), !dbg !6153
  %4 = load i64, i64* %__eax, align 8, !dbg !6153
  store i64 %4, i64* %__eax, align 8, !dbg !6153
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !6153
  %6 = call i64 @llvm.read_register.i64(metadata !3795), !dbg !6153
  %7 = load i64, i64* %f.addr, align 8, !dbg !6153
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #9, !dbg !6153, !srcloc !6158
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !6153
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !6153
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6153
  call void @llvm.write_register.i64(metadata !3795, i64 %asmresult1), !dbg !6153
  ret void, !dbg !6159
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { noredzone nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.named.register.rsp = !{!3795}
!llvm.module.flags = !{!3796, !3797, !3798, !3799}
!llvm.ident = !{!3800}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !146, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/ptp/ptp_chardev.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !16, !22, !28, !34, !43, !51, !57, !64, !72, !78, !128, !134, !139}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !17, line: 16, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !23, line: 54, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !29, line: 26, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !35, line: 296, baseType: !5, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!38 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!39 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!40 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!41 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!42 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !44, line: 9, baseType: !5, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !52, line: 44, baseType: !5, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!55 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !58, line: 343, baseType: !5, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!59 = !{!60, !61, !62, !63}
!60 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!63 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !65, line: 524, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !65, line: 502, baseType: !5, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !80, file: !79, line: 17, baseType: !5, size: 32, elements: !124)
!79 = !DIFile(filename: "./include/linux/ptp_clock_kernel.h", directory: "/home/lizy2001/genbc/linux")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_request", file: !79, line: 16, size: 512, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !79, line: 21, baseType: !78, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !80, file: !79, line: 22, baseType: !84, size: 448, offset: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !79, line: 22, size: 448, elements: !85)
!85 = !{!86, !96}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "extts", scope: !84, file: !79, line: 23, baseType: !87, size: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_request", file: !88, line: 101, size: 128, elements: !89)
!88 = !DIFile(filename: "./include/uapi/linux/ptp_clock.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !91, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !87, file: !88, line: 102, baseType: !5, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !88, line: 103, baseType: !5, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !87, file: !88, line: 104, baseType: !93, size: 64, offset: 64)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 2)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "perout", scope: !84, file: !79, line: 24, baseType: !97, size: 448)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_perout_request", file: !88, line: 107, size: 448, elements: !98)
!98 = !{!99, !113, !114, !115, !116}
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !88, line: 108, baseType: !100, size: 128)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !97, file: !88, line: 108, size: 128, elements: !101)
!101 = !{!102, !112}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !100, file: !88, line: 113, baseType: !103, size: 128)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_time", file: !88, line: 81, size: 128, elements: !104)
!104 = !{!105, !109, !111}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !103, file: !88, line: 82, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !107, line: 30, baseType: !108)
!107 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!108 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !103, file: !88, line: 83, baseType: !110, size: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !107, line: 27, baseType: !5)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !103, file: !88, line: 84, baseType: !110, size: 32, offset: 96)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !100, file: !88, line: 120, baseType: !103, size: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !97, file: !88, line: 122, baseType: !103, size: 128, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !97, file: !88, line: 123, baseType: !5, size: 32, offset: 256)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !88, line: 124, baseType: !5, size: 32, offset: 288)
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !88, line: 125, baseType: !117, size: 128, offset: 320)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !97, file: !88, line: 125, size: 128, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "on", scope: !117, file: !88, line: 131, baseType: !103, size: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !117, file: !88, line: 133, baseType: !121, size: 128)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 4)
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "PTP_CLK_REQ_EXTTS", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "PTP_CLK_REQ_PEROUT", value: 1, isUnsigned: true)
!127 = !DIEnumerator(name: "PTP_CLK_REQ_PPS", value: 2, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ptp_pin_function", file: !88, line: 167, baseType: !5, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133}
!130 = !DIEnumerator(name: "PTP_PF_NONE", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "PTP_PF_EXTTS", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "PTP_PF_PEROUT", value: 2, isUnsigned: true)
!133 = !DIEnumerator(name: "PTP_PF_PHYSYNC", value: 3, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 10, baseType: !5, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !140, line: 305, baseType: !5, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!145 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!146 = !{!147, !148, !5, !233, !650, !167, !222, !210}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock", file: !150, line: 29, size: 42368, elements: !151)
!150 = !DIFile(filename: "drivers/ptp/ptp_private.h", directory: "/home/lizy2001/genbc/linux")
!151 = !{!152, !3605, !3606, !3685, !3686, !3687, !3730, !3731, !3747, !3748, !3749, !3750, !3751, !3764, !3765, !3766, !3768, !3790}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !149, file: !150, line: 30, baseType: !153, size: 1856)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_clock", file: !154, line: 85, size: 1856, elements: !155)
!154 = !DIFile(filename: "./include/linux/posix-clock.h", directory: "/home/lizy2001/genbc/linux")
!155 = !{!156, !3256, !3257, !3603, !3604}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !153, file: !154, line: 86, baseType: !157, size: 640)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_clock_operations", file: !154, line: 38, size: 640, elements: !158)
!158 = !{!159, !163, !199, !211, !212, !218, !223, !229, !3247, !3251}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !157, file: !154, line: 39, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !162, line: 76, flags: DIFlagFwdDecl)
!162 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!163 = !DIDerivedType(tag: DW_TAG_member, name: "clock_adjtime", scope: !157, file: !154, line: 41, baseType: !164, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !168, !169}
!167 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex", file: !171, line: 102, size: 1664, elements: !172)
!171 = !DIFile(filename: "./include/uapi/linux/timex.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !170, file: !171, line: 103, baseType: !5, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !170, file: !171, line: 105, baseType: !108, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !170, file: !171, line: 106, baseType: !108, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "maxerror", scope: !170, file: !171, line: 107, baseType: !108, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "esterror", scope: !170, file: !171, line: 108, baseType: !108, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !170, file: !171, line: 109, baseType: !167, size: 32, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !170, file: !171, line: 111, baseType: !108, size: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !170, file: !171, line: 112, baseType: !108, size: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tolerance", scope: !170, file: !171, line: 113, baseType: !108, size: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !170, file: !171, line: 116, baseType: !183, size: 128, offset: 576)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timex_timeval", file: !171, line: 97, size: 128, elements: !184)
!184 = !{!185, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !183, file: !171, line: 98, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !187, line: 93, baseType: !108)
!187 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !183, file: !171, line: 99, baseType: !108, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !170, file: !171, line: 117, baseType: !108, size: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ppsfreq", scope: !170, file: !171, line: 119, baseType: !108, size: 64, offset: 768)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "jitter", scope: !170, file: !171, line: 120, baseType: !108, size: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !170, file: !171, line: 121, baseType: !167, size: 32, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "stabil", scope: !170, file: !171, line: 123, baseType: !108, size: 64, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "jitcnt", scope: !170, file: !171, line: 124, baseType: !108, size: 64, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "calcnt", scope: !170, file: !171, line: 125, baseType: !108, size: 64, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "errcnt", scope: !170, file: !171, line: 126, baseType: !108, size: 64, offset: 1152)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "stbcnt", scope: !170, file: !171, line: 127, baseType: !108, size: 64, offset: 1216)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "tai", scope: !170, file: !171, line: 129, baseType: !167, size: 32, offset: 1280)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "clock_gettime", scope: !157, file: !154, line: 43, baseType: !200, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!167, !168, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !205, line: 13, size: 128, elements: !206)
!205 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!206 = !{!207, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !204, file: !205, line: 14, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !205, line: 8, baseType: !106)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !204, file: !205, line: 15, baseType: !210, size: 64, offset: 64)
!210 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "clock_getres", scope: !157, file: !154, line: 45, baseType: !200, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "clock_settime", scope: !157, file: !154, line: 47, baseType: !213, size: 64, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!167, !168, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !157, file: !154, line: 53, baseType: !219, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!210, !168, !5, !222}
!222 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !157, file: !154, line: 56, baseType: !224, size: 64, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!167, !168, !227}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !228, line: 150, baseType: !5)
!228 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!229 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !157, file: !154, line: 58, baseType: !230, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !168, !235, !3245}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !234, line: 52, baseType: !5)
!234 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 916, size: 1856, align: 32, elements: !237)
!237 = !{!238, !256, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3228, !3229, !3238, !3239, !3240, !3241, !3242, !3243, !3244}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !236, file: !35, line: 920, baseType: !239, size: 128)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !35, line: 917, size: 128, elements: !240)
!240 = !{!241, !247}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !239, file: !35, line: 918, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !243, line: 58, size: 64, elements: !244)
!243 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !243, line: 59, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !239, file: !35, line: 919, baseType: !248, size: 128, align: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !228, line: 216, size: 128, align: 64, elements: !249)
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !248, file: !228, line: 217, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !248, file: !228, line: 218, baseType: !253, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !251}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !236, file: !35, line: 921, baseType: !257, size: 128, offset: 128)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !258, line: 8, size: 128, elements: !259)
!258 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!259 = !{!260, !264}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !257, file: !258, line: 9, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !263, line: 18, flags: DIFlagFwdDecl)
!263 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !257, file: !258, line: 10, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !263, line: 89, size: 1536, elements: !267)
!267 = !{!268, !269, !279, !287, !288, !309, !3179, !3181, !3193, !3194, !3195, !3196, !3197, !3202, !3203, !3204}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !266, file: !263, line: 91, baseType: !5, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !266, file: !263, line: 92, baseType: !270, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !271, line: 277, baseType: !272)
!271 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !271, line: 277, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !272, file: !271, line: 277, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !271, line: 70, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !271, line: 65, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !276, file: !271, line: 66, baseType: !5, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !266, file: !263, line: 93, baseType: !280, size: 128, offset: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !281, line: 38, size: 128, elements: !282)
!281 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!282 = !{!283, !285}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !281, line: 39, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !280, file: !281, line: 39, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !266, file: !263, line: 94, baseType: !265, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !266, file: !263, line: 95, baseType: !289, size: 128, offset: 256)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !263, line: 47, size: 128, elements: !290)
!290 = !{!291, !305}
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !263, line: 48, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !289, file: !263, line: 48, size: 64, elements: !293)
!293 = !{!294, !301}
!294 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !263, line: 49, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !263, line: 49, size: 64, elements: !296)
!296 = !{!297, !300}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !295, file: !263, line: 50, baseType: !298, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !299, line: 21, baseType: !110)
!299 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !295, file: !263, line: 50, baseType: !298, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !292, file: !263, line: 52, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !299, line: 23, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !107, line: 31, baseType: !304)
!304 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !263, line: 54, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !266, file: !263, line: 96, baseType: !310, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 610, size: 4224, elements: !312)
!312 = !{!313, !316, !317, !325, !332, !333, !482, !2577, !2578, !2579, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2849, !2857, !2858, !2859, !3175, !3176, !3177, !3178}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !311, file: !35, line: 611, baseType: !314, size: 16)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !228, line: 19, baseType: !315)
!315 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !311, file: !35, line: 612, baseType: !315, size: 16, offset: 16)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !311, file: !35, line: 613, baseType: !318, size: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !319, line: 23, baseType: !320)
!319 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 21, size: 32, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !320, file: !319, line: 22, baseType: !323, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !228, line: 32, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !187, line: 49, baseType: !5)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !311, file: !35, line: 614, baseType: !326, size: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !319, line: 28, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !319, line: 26, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !327, file: !319, line: 27, baseType: !330, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !228, line: 33, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !187, line: 50, baseType: !5)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !311, file: !35, line: 615, baseType: !5, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !311, file: !35, line: 622, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1864, size: 1536, align: 512, elements: !337)
!337 = !{!338, !342, !358, !362, !368, !373, !379, !383, !387, !391, !395, !396, !402, !406, !424, !453, !463, !469, !473, !477, !478}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !336, file: !35, line: 1865, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!265, !310, !265, !5}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !336, file: !35, line: 1866, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !265, !310, !349}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !351, line: 10, size: 128, elements: !352)
!351 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!352 = !{!353, !357}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !350, file: !351, line: 11, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !147}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !350, file: !351, line: 12, baseType: !147, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !336, file: !35, line: 1867, baseType: !359, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!167, !310, !167}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !336, file: !35, line: 1868, baseType: !363, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366, !310, !167}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 581, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !336, file: !35, line: 1870, baseType: !369, size: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!167, !265, !372, !167}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !336, file: !35, line: 1872, baseType: !374, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!167, !310, !265, !314, !377}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !228, line: 30, baseType: !378)
!378 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !336, file: !35, line: 1873, baseType: !380, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!167, !265, !310, !265}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !336, file: !35, line: 1874, baseType: !384, size: 64, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!167, !310, !265}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !336, file: !35, line: 1875, baseType: !388, size: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!167, !310, !265, !346}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !336, file: !35, line: 1876, baseType: !392, size: 64, offset: 576)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!167, !310, !265, !314}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !336, file: !35, line: 1877, baseType: !384, size: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !336, file: !35, line: 1878, baseType: !397, size: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!167, !310, !265, !314, !400}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !228, line: 16, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !228, line: 13, baseType: !298)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !336, file: !35, line: 1879, baseType: !403, size: 64, offset: 768)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!167, !310, !265, !310, !265, !5}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !336, file: !35, line: 1881, baseType: !407, size: 64, offset: 832)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!167, !265, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 219, size: 640, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !420, !421, !422, !423}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !411, file: !35, line: 220, baseType: !5, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !411, file: !35, line: 221, baseType: !314, size: 16, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !411, file: !35, line: 222, baseType: !318, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !411, file: !35, line: 223, baseType: !326, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !411, file: !35, line: 224, baseType: !418, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !228, line: 46, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !187, line: 88, baseType: !108)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !411, file: !35, line: 225, baseType: !204, size: 128, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !411, file: !35, line: 226, baseType: !204, size: 128, offset: 320)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !411, file: !35, line: 227, baseType: !204, size: 128, offset: 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !411, file: !35, line: 234, baseType: !235, size: 64, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !336, file: !35, line: 1882, baseType: !425, size: 64, offset: 896)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!167, !428, !430, !298, !5}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !432, line: 22, size: 1152, elements: !433)
!432 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!433 = !{!434, !435, !436, !437, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !431, file: !432, line: 23, baseType: !298, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !431, file: !432, line: 24, baseType: !314, size: 16, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !431, file: !432, line: 25, baseType: !5, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !431, file: !432, line: 26, baseType: !438, size: 32, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !228, line: 104, baseType: !298)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !431, file: !432, line: 27, baseType: !302, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !431, file: !432, line: 28, baseType: !302, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !431, file: !432, line: 37, baseType: !302, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !431, file: !432, line: 38, baseType: !400, size: 32, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !431, file: !432, line: 39, baseType: !400, size: 32, offset: 352)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !431, file: !432, line: 40, baseType: !318, size: 32, offset: 384)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !431, file: !432, line: 41, baseType: !326, size: 32, offset: 416)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !431, file: !432, line: 42, baseType: !418, size: 64, offset: 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !431, file: !432, line: 43, baseType: !204, size: 128, offset: 512)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !431, file: !432, line: 44, baseType: !204, size: 128, offset: 640)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !431, file: !432, line: 45, baseType: !204, size: 128, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !431, file: !432, line: 46, baseType: !204, size: 128, offset: 896)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !431, file: !432, line: 47, baseType: !302, size: 64, offset: 1024)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !431, file: !432, line: 48, baseType: !302, size: 64, offset: 1088)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !336, file: !35, line: 1883, baseType: !454, size: 64, offset: 960)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!457, !265, !372, !460}
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !228, line: 60, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !187, line: 73, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !187, line: 15, baseType: !210)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !228, line: 55, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !187, line: 72, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !187, line: 16, baseType: !222)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !336, file: !35, line: 1884, baseType: !464, size: 64, offset: 1024)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!167, !310, !467, !302, !302}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !336, file: !35, line: 1886, baseType: !470, size: 64, offset: 1088)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!167, !310, !203, !167}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !336, file: !35, line: 1887, baseType: !474, size: 64, offset: 1152)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!167, !310, !265, !235, !5, !314}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !336, file: !35, line: 1890, baseType: !392, size: 64, offset: 1216)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !336, file: !35, line: 1891, baseType: !479, size: 64, offset: 1280)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!167, !310, !366, !167}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !311, file: !35, line: 623, baseType: !483, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1416, size: 9472, elements: !485)
!485 = !{!486, !492, !493, !494, !495, !496, !546, !2185, !2267, !2350, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2366, !2370, !2371, !2374, !2375, !2378, !2379, !2380, !2421, !2448, !2449, !2450, !2451, !2452, !2453, !2456, !2458, !2465, !2466, !2467, !2468, !2469, !2528, !2529, !2544, !2545, !2546, !2547, !2548, !2551, !2552, !2553, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !484, file: !35, line: 1417, baseType: !487, size: 128)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !228, line: 178, size: 128, elements: !488)
!488 = !{!489, !491}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !487, file: !228, line: 179, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !487, file: !228, line: 179, baseType: !490, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !484, file: !35, line: 1418, baseType: !400, size: 32, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !484, file: !35, line: 1419, baseType: !308, size: 8, offset: 160)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !484, file: !35, line: 1420, baseType: !222, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !484, file: !35, line: 1421, baseType: !418, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !484, file: !35, line: 1422, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2228, size: 576, elements: !499)
!499 = !{!500, !501, !502, !509, !513, !517, !521, !522, !523, !533, !537, !538, !539, !543, !544, !545}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !498, file: !35, line: 2229, baseType: !346, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !498, file: !35, line: 2230, baseType: !167, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !498, file: !35, line: 2238, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!167, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !508, line: 28, flags: DIFlagFwdDecl)
!508 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!509 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !498, file: !35, line: 2239, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 70, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !498, file: !35, line: 2240, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!265, !497, !167, !346, !147}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !498, file: !35, line: 2242, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !483}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !498, file: !35, line: 2243, baseType: !160, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !35, line: 2244, baseType: !497, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !498, file: !35, line: 2245, baseType: !524, size: 64, offset: 512)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !228, line: 182, size: 64, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !524, file: !228, line: 183, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !228, line: 186, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !228, line: 187, baseType: !527, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !528, file: !228, line: 187, baseType: !532, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !498, file: !35, line: 2247, baseType: !534, offset: 576)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !535, line: 187, elements: !536)
!535 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!536 = !{}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !498, file: !35, line: 2248, baseType: !534, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !498, file: !35, line: 2249, baseType: !534, offset: 576)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !498, file: !35, line: 2250, baseType: !540, offset: 576)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 3)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !498, file: !35, line: 2252, baseType: !534, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !498, file: !35, line: 2253, baseType: !534, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !498, file: !35, line: 2254, baseType: !534, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !484, file: !35, line: 1423, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 1935, size: 1472, elements: !550)
!550 = !{!551, !555, !559, !560, !564, !570, !574, !575, !576, !580, !584, !585, !586, !587, !593, !598, !599, !606, !607, !608, !609, !2169, !2184}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !549, file: !35, line: 1936, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!310, !483}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !549, file: !35, line: 1937, baseType: !556, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !310}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !549, file: !35, line: 1938, baseType: !556, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !549, file: !35, line: 1940, baseType: !561, size: 64, offset: 192)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !310, !167}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !549, file: !35, line: 1941, baseType: !565, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!167, !310, !568}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 289, flags: DIFlagFwdDecl)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !549, file: !35, line: 1942, baseType: !571, size: 64, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!167, !310}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !549, file: !35, line: 1943, baseType: !556, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !549, file: !35, line: 1944, baseType: !518, size: 64, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !549, file: !35, line: 1945, baseType: !577, size: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!167, !483, !167}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !549, file: !35, line: 1946, baseType: !581, size: 64, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!167, !483}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !549, file: !35, line: 1947, baseType: !581, size: 64, offset: 640)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !549, file: !35, line: 1948, baseType: !581, size: 64, offset: 704)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !549, file: !35, line: 1949, baseType: !581, size: 64, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !549, file: !35, line: 1950, baseType: !588, size: 64, offset: 832)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!167, !265, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 57, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !549, file: !35, line: 1951, baseType: !594, size: 64, offset: 896)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!167, !483, !597, !372}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !549, file: !35, line: 1952, baseType: !518, size: 64, offset: 960)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !549, file: !35, line: 1954, baseType: !600, size: 64, offset: 1024)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!167, !603, !265}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !605, line: 539, flags: DIFlagFwdDecl)
!605 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!606 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !549, file: !35, line: 1955, baseType: !600, size: 64, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !549, file: !35, line: 1956, baseType: !600, size: 64, offset: 1152)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !549, file: !35, line: 1957, baseType: !600, size: 64, offset: 1216)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !549, file: !35, line: 1963, baseType: !610, size: 64, offset: 1280)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!167, !483, !613, !650}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !615, line: 68, size: 512, align: 128, elements: !616)
!615 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!616 = !{!617, !618, !2161, !2168}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !614, file: !615, line: 69, baseType: !222, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !615, line: 77, baseType: !619, size: 320, offset: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !615, line: 77, size: 320, elements: !620)
!620 = !{!621, !823, !828, !856, !864, !870, !2153, !2160}
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !615, line: 78, baseType: !622, size: 320)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !615, line: 78, size: 320, elements: !623)
!623 = !{!624, !625, !821, !822}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !622, file: !615, line: 84, baseType: !487, size: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !622, file: !615, line: 86, baseType: !626, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 451, size: 1216, align: 64, elements: !628)
!628 = !{!629, !630, !652, !653, !658, !673, !689, !690, !691, !692, !814, !815, !818, !819, !820}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !627, file: !35, line: 452, baseType: !310, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !627, file: !35, line: 453, baseType: !631, size: 128, offset: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !632, line: 292, size: 128, elements: !633)
!632 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !649, !651}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !631, file: !632, line: 293, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !636, line: 83, baseType: !637)
!636 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !636, line: 71, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !637, file: !636, line: 72, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !637, file: !636, line: 72, elements: !641)
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !640, file: !636, line: 73, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !636, line: 20, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !643, file: !636, line: 21, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !647, line: 25, baseType: !648)
!647 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 25, elements: !536)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !631, file: !632, line: 295, baseType: !650, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !228, line: 148, baseType: !5)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !631, file: !632, line: 296, baseType: !147, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !627, file: !35, line: 454, baseType: !650, size: 32, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !627, file: !35, line: 455, baseType: !654, size: 32, offset: 224)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !228, line: 168, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 166, size: 32, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !655, file: !228, line: 167, baseType: !167, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !627, file: !35, line: 460, baseType: !659, size: 128, offset: 256)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !660, line: 125, size: 128, elements: !661)
!660 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!661 = !{!662, !672}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !659, file: !660, line: 126, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !660, line: 31, size: 64, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !663, file: !660, line: 32, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !660, line: 24, size: 192, align: 64, elements: !668)
!668 = !{!669, !670, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !667, file: !660, line: 25, baseType: !222, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !667, file: !660, line: 26, baseType: !666, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !667, file: !660, line: 27, baseType: !666, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !659, file: !660, line: 127, baseType: !666, size: 64, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !627, file: !35, line: 461, baseType: !674, size: 256, offset: 384)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !675, line: 35, size: 256, elements: !676)
!675 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!676 = !{!677, !685, !686, !688}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !674, file: !675, line: 36, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !679, line: 13, baseType: !680)
!679 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !228, line: 175, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !228, line: 173, size: 64, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !681, file: !228, line: 174, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !299, line: 22, baseType: !106)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !674, file: !675, line: 42, baseType: !678, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !674, file: !675, line: 46, baseType: !687, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !636, line: 29, baseType: !643)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !674, file: !675, line: 47, baseType: !487, size: 128, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !627, file: !35, line: 462, baseType: !222, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !627, file: !35, line: 463, baseType: !222, size: 64, offset: 704)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !627, file: !35, line: 464, baseType: !222, size: 64, offset: 768)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !627, file: !35, line: 465, baseType: !693, size: 64, offset: 832)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 367, size: 1408, elements: !696)
!696 = !{!697, !701, !705, !709, !713, !717, !723, !729, !733, !738, !742, !746, !750, !778, !782, !788, !789, !790, !794, !799, !803, !810}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !695, file: !35, line: 368, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!167, !613, !568}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !695, file: !35, line: 369, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!167, !235, !613}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !695, file: !35, line: 372, baseType: !706, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!167, !626, !568}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !695, file: !35, line: 375, baseType: !710, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{!167, !613}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !695, file: !35, line: 381, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!167, !235, !626, !490, !5}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !695, file: !35, line: 383, baseType: !718, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{null, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 290, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !695, file: !35, line: 385, baseType: !724, size: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!167, !235, !626, !418, !5, !5, !727, !728}
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !695, file: !35, line: 388, baseType: !730, size: 64, offset: 448)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!167, !235, !626, !418, !5, !5, !613, !147}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !695, file: !35, line: 393, baseType: !734, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !626, !737}
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !228, line: 125, baseType: !302)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !695, file: !35, line: 394, baseType: !739, size: 64, offset: 576)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !613, !5, !5}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !695, file: !35, line: 395, baseType: !743, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!167, !613, !650}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !695, file: !35, line: 396, baseType: !747, size: 64, offset: 704)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !613}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !695, file: !35, line: 397, baseType: !751, size: 64, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!457, !754, !776}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 320, size: 384, elements: !756)
!756 = !{!757, !758, !759, !763, !764, !765, !768, !769}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !755, file: !35, line: 321, baseType: !235, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !755, file: !35, line: 326, baseType: !418, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !755, file: !35, line: 327, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !754, !210, !210}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !755, file: !35, line: 328, baseType: !147, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !755, file: !35, line: 329, baseType: !167, size: 32, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !755, file: !35, line: 330, baseType: !766, size: 16, offset: 288)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !299, line: 19, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !107, line: 24, baseType: !315)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !755, file: !35, line: 331, baseType: !766, size: 16, offset: 304)
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !35, line: 332, baseType: !770, size: 64, offset: 320)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !35, line: 332, size: 64, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !770, file: !35, line: 333, baseType: !5, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !770, file: !35, line: 334, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 334, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 64, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !695, file: !35, line: 402, baseType: !779, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!167, !626, !613, !613, !3}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !695, file: !35, line: 404, baseType: !783, size: 64, offset: 896)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!377, !613, !786}
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !787, line: 305, baseType: !5)
!787 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !695, file: !35, line: 405, baseType: !747, size: 64, offset: 960)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !695, file: !35, line: 406, baseType: !710, size: 64, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !695, file: !35, line: 407, baseType: !791, size: 64, offset: 1088)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!167, !613, !222, !222}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !695, file: !35, line: 409, baseType: !795, size: 64, offset: 1152)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !613, !798, !798}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !695, file: !35, line: 410, baseType: !800, size: 64, offset: 1216)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!167, !626, !613}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !695, file: !35, line: 413, baseType: !804, size: 64, offset: 1280)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!167, !807, !235, !809}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 61, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !695, file: !35, line: 415, baseType: !811, size: 64, offset: 1344)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !235}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !627, file: !35, line: 466, baseType: !222, size: 64, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !627, file: !35, line: 467, baseType: !816, size: 32, offset: 960)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !817, line: 8, baseType: !298)
!817 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!818 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !627, file: !35, line: 468, baseType: !635, offset: 992)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !627, file: !35, line: 469, baseType: !487, size: 128, offset: 1024)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !627, file: !35, line: 470, baseType: !147, size: 64, offset: 1152)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !622, file: !615, line: 87, baseType: !222, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !622, file: !615, line: 94, baseType: !222, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !615, line: 96, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !615, line: 96, size: 64, elements: !825)
!825 = !{!826}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !824, file: !615, line: 101, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !228, line: 143, baseType: !302)
!828 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !615, line: 103, baseType: !829, size: 320)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !615, line: 103, size: 320, elements: !830)
!830 = !{!831, !841, !844, !845}
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !829, file: !615, line: 104, baseType: !832, size: 128)
!832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !829, file: !615, line: 104, size: 128, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !832, file: !615, line: 105, baseType: !487, size: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, scope: !832, file: !615, line: 106, baseType: !836, size: 128)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !832, file: !615, line: 106, size: 128, elements: !837)
!837 = !{!838, !839, !840}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !836, file: !615, line: 107, baseType: !613, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !836, file: !615, line: 109, baseType: !167, size: 32, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !836, file: !615, line: 110, baseType: !167, size: 32, offset: 96)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !829, file: !615, line: 117, baseType: !842, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !615, line: 117, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !829, file: !615, line: 119, baseType: !147, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !829, file: !615, line: 120, baseType: !846, size: 64, offset: 256)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !829, file: !615, line: 120, size: 64, elements: !847)
!847 = !{!848, !849, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !846, file: !615, line: 121, baseType: !147, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !846, file: !615, line: 122, baseType: !222, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !615, line: 123, baseType: !851, size: 32)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !615, line: 123, size: 32, elements: !852)
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !851, file: !615, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !851, file: !615, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !851, file: !615, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !615, line: 130, baseType: !857, size: 192)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !615, line: 130, size: 192, elements: !858)
!858 = !{!859, !860, !861, !862, !863}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !857, file: !615, line: 131, baseType: !222, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !857, file: !615, line: 134, baseType: !308, size: 8, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !857, file: !615, line: 135, baseType: !308, size: 8, offset: 72)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !857, file: !615, line: 136, baseType: !654, size: 32, offset: 96)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !857, file: !615, line: 137, baseType: !5, size: 32, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !615, line: 139, baseType: !865, size: 256)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !615, line: 139, size: 256, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !865, file: !615, line: 140, baseType: !222, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !865, file: !615, line: 141, baseType: !654, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !865, file: !615, line: 143, baseType: !487, size: 128, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !615, line: 145, baseType: !871, size: 256)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !615, line: 145, size: 256, elements: !872)
!872 = !{!873, !874, !876, !877, !2152}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !871, file: !615, line: 146, baseType: !222, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !871, file: !615, line: 147, baseType: !875, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !605, line: 509, baseType: !613)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !871, file: !615, line: 148, baseType: !222, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !871, file: !615, line: 149, baseType: !878, size: 64, offset: 192)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !615, line: 149, size: 64, elements: !879)
!879 = !{!880, !2151}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !878, file: !615, line: 150, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !615, line: 388, size: 7296, elements: !883)
!883 = !{!884, !2147}
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !615, line: 389, baseType: !885, size: 7296)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !882, file: !615, line: 389, size: 7296, elements: !886)
!886 = !{!887, !925, !926, !927, !931, !932, !933, !934, !935, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !976, !982, !985, !1031, !1032, !2131, !2132, !2135, !2136, !2137, !2140, !2141, !2142, !2145, !2146}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !885, file: !615, line: 390, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !615, line: 305, size: 1472, elements: !890)
!890 = !{!891, !892, !893, !894, !895, !896, !897, !898, !905, !906, !911, !912, !915, !919, !920, !921, !922, !923}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !889, file: !615, line: 308, baseType: !222, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !889, file: !615, line: 309, baseType: !222, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !889, file: !615, line: 313, baseType: !888, size: 64, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !889, file: !615, line: 313, baseType: !888, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !889, file: !615, line: 315, baseType: !667, size: 192, align: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !889, file: !615, line: 323, baseType: !222, size: 64, offset: 448)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !889, file: !615, line: 327, baseType: !881, size: 64, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !889, file: !615, line: 333, baseType: !899, size: 64, offset: 576)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !605, line: 284, baseType: !900)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !605, line: 284, size: 64, elements: !901)
!901 = !{!902}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !900, file: !605, line: 284, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !904, line: 19, baseType: !222)
!904 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !889, file: !615, line: 334, baseType: !222, size: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !889, file: !615, line: 343, baseType: !907, size: 256, offset: 704)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !889, file: !615, line: 340, size: 256, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !907, file: !615, line: 341, baseType: !667, size: 192, align: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !907, file: !615, line: 342, baseType: !222, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !889, file: !615, line: 351, baseType: !487, size: 128, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !889, file: !615, line: 353, baseType: !913, size: 64, offset: 1088)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !615, line: 353, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !889, file: !615, line: 356, baseType: !916, size: 64, offset: 1152)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !615, line: 356, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !889, file: !615, line: 359, baseType: !222, size: 64, offset: 1216)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !889, file: !615, line: 361, baseType: !235, size: 64, offset: 1280)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !889, file: !615, line: 362, baseType: !147, size: 64, offset: 1344)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !889, file: !615, line: 365, baseType: !678, size: 64, offset: 1408)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !889, file: !615, line: 373, baseType: !924, offset: 1472)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !615, line: 296, elements: !536)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !885, file: !615, line: 391, baseType: !663, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !885, file: !615, line: 392, baseType: !302, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !885, file: !615, line: 394, baseType: !928, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!222, !235, !222, !222, !222, !222}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !885, file: !615, line: 398, baseType: !222, size: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !885, file: !615, line: 399, baseType: !222, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !885, file: !615, line: 405, baseType: !222, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !885, file: !615, line: 406, baseType: !222, size: 64, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !885, file: !615, line: 407, baseType: !936, size: 64, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !605, line: 286, baseType: !938)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !605, line: 286, size: 64, elements: !939)
!939 = !{!940}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !938, file: !605, line: 286, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !904, line: 18, baseType: !222)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !885, file: !615, line: 416, baseType: !654, size: 32, offset: 576)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !885, file: !615, line: 428, baseType: !654, size: 32, offset: 608)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !885, file: !615, line: 437, baseType: !654, size: 32, offset: 640)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !885, file: !615, line: 447, baseType: !654, size: 32, offset: 672)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !885, file: !615, line: 450, baseType: !678, size: 64, offset: 704)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !885, file: !615, line: 452, baseType: !167, size: 32, offset: 768)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !885, file: !615, line: 454, baseType: !635, offset: 800)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !885, file: !615, line: 457, baseType: !674, size: 256, offset: 832)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !885, file: !615, line: 459, baseType: !487, size: 128, offset: 1088)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !885, file: !615, line: 466, baseType: !222, size: 64, offset: 1216)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !885, file: !615, line: 467, baseType: !222, size: 64, offset: 1280)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !885, file: !615, line: 469, baseType: !222, size: 64, offset: 1344)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !885, file: !615, line: 470, baseType: !222, size: 64, offset: 1408)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !885, file: !615, line: 471, baseType: !680, size: 64, offset: 1472)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !885, file: !615, line: 472, baseType: !222, size: 64, offset: 1536)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !885, file: !615, line: 473, baseType: !222, size: 64, offset: 1600)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !885, file: !615, line: 474, baseType: !222, size: 64, offset: 1664)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !885, file: !615, line: 475, baseType: !222, size: 64, offset: 1728)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !885, file: !615, line: 477, baseType: !635, offset: 1792)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !885, file: !615, line: 478, baseType: !222, size: 64, offset: 1792)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !885, file: !615, line: 478, baseType: !222, size: 64, offset: 1856)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !885, file: !615, line: 478, baseType: !222, size: 64, offset: 1920)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !885, file: !615, line: 478, baseType: !222, size: 64, offset: 1984)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !885, file: !615, line: 479, baseType: !222, size: 64, offset: 2048)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !885, file: !615, line: 479, baseType: !222, size: 64, offset: 2112)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !885, file: !615, line: 479, baseType: !222, size: 64, offset: 2176)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !885, file: !615, line: 480, baseType: !222, size: 64, offset: 2240)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !885, file: !615, line: 480, baseType: !222, size: 64, offset: 2304)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !885, file: !615, line: 480, baseType: !222, size: 64, offset: 2368)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !885, file: !615, line: 480, baseType: !222, size: 64, offset: 2432)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !885, file: !615, line: 482, baseType: !973, size: 2816, offset: 2496)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 2816, elements: !974)
!974 = !{!975}
!975 = !DISubrange(count: 44)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !885, file: !615, line: 488, baseType: !977, size: 256, offset: 5312)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !978, line: 60, size: 256, elements: !979)
!978 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!979 = !{!980}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !977, file: !978, line: 61, baseType: !981, size: 256)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 256, elements: !122)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !885, file: !615, line: 490, baseType: !983, size: 64, offset: 5568)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !615, line: 490, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !885, file: !615, line: 493, baseType: !986, size: 896, offset: 5632)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !987, line: 53, baseType: !988)
!987 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !987, line: 13, size: 896, elements: !989)
!989 = !{!990, !991, !992, !993, !996, !997, !1004, !1005, !1025, !1026, !1027}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !988, file: !987, line: 18, baseType: !302, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !988, file: !987, line: 28, baseType: !680, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !988, file: !987, line: 31, baseType: !674, size: 256, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !988, file: !987, line: 32, baseType: !994, size: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !987, line: 32, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !988, file: !987, line: 37, baseType: !315, size: 16, offset: 448)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !988, file: !987, line: 40, baseType: !998, size: 192, offset: 512)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !999, line: 53, size: 192, elements: !1000)
!999 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !998, file: !999, line: 54, baseType: !678, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !998, file: !999, line: 55, baseType: !635, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !998, file: !999, line: 59, baseType: !487, size: 128, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !988, file: !987, line: 41, baseType: !147, size: 64, offset: 704)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !988, file: !987, line: 42, baseType: !1006, size: 64, offset: 768)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1009, line: 13, size: 896, elements: !1010)
!1009 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1008, file: !1009, line: 14, baseType: !147, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1008, file: !1009, line: 15, baseType: !222, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1008, file: !1009, line: 17, baseType: !222, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1008, file: !1009, line: 17, baseType: !222, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1008, file: !1009, line: 19, baseType: !210, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1008, file: !1009, line: 21, baseType: !210, size: 64, offset: 320)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1008, file: !1009, line: 22, baseType: !210, size: 64, offset: 384)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1008, file: !1009, line: 23, baseType: !210, size: 64, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1008, file: !1009, line: 24, baseType: !210, size: 64, offset: 512)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1008, file: !1009, line: 25, baseType: !210, size: 64, offset: 576)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1008, file: !1009, line: 26, baseType: !210, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1008, file: !1009, line: 27, baseType: !210, size: 64, offset: 704)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1008, file: !1009, line: 28, baseType: !210, size: 64, offset: 768)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1008, file: !1009, line: 29, baseType: !210, size: 64, offset: 832)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !988, file: !987, line: 44, baseType: !654, size: 32, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !988, file: !987, line: 50, baseType: !766, size: 16, offset: 864)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !988, file: !987, line: 51, baseType: !1028, size: 16, offset: 880)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !299, line: 18, baseType: !1029)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !107, line: 23, baseType: !1030)
!1030 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !885, file: !615, line: 495, baseType: !222, size: 64, offset: 6528)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !885, file: !615, line: 497, baseType: !1033, size: 64, offset: 6592)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !615, line: 381, size: 384, elements: !1035)
!1035 = !{!1036, !1037, !2130}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1034, file: !615, line: 382, baseType: !654, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1034, file: !615, line: 383, baseType: !1038, size: 128, offset: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !615, line: 376, size: 128, elements: !1039)
!1039 = !{!1040, !2128}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1038, file: !615, line: 377, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1043, line: 640, size: 48640, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !{!1045, !1051, !1053, !1054, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1071, !1089, !1100, !1185, !1186, !1187, !1198, !1199, !1201, !1202, !1203, !1204, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1287, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1325, !1327, !1328, !1329, !1341, !1342, !1343, !1344, !1345, !1346, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1370, !1375, !1557, !1558, !1559, !1560, !1564, !1567, !1570, !1573, !1576, !1580, !1681, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1729, !1730, !1731, !1732, !1733, !1738, !1739, !1740, !1743, !1744, !1747, !1750, !1753, !1756, !1799, !1802, !1803, !1882, !1883, !1886, !1887, !1890, !1891, !1892, !1896, !1897, !1898, !1911, !1912, !1913, !1923, !1928, !1931, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1042, file: !1043, line: 646, baseType: !1046, size: 128)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1047, line: 56, size: 128, elements: !1048)
!1047 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1046, file: !1047, line: 57, baseType: !222, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1046, file: !1047, line: 58, baseType: !298, size: 32, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1042, file: !1043, line: 649, baseType: !1052, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !210)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1042, file: !1043, line: 657, baseType: !147, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1042, file: !1043, line: 658, baseType: !1055, size: 32, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1056, line: 113, baseType: !1057)
!1056 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1056, line: 111, size: 32, elements: !1058)
!1058 = !{!1059}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1057, file: !1056, line: 112, baseType: !654, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1042, file: !1043, line: 660, baseType: !5, size: 32, offset: 288)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1042, file: !1043, line: 661, baseType: !5, size: 32, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1042, file: !1043, line: 684, baseType: !167, size: 32, offset: 352)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1042, file: !1043, line: 686, baseType: !167, size: 32, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1042, file: !1043, line: 687, baseType: !167, size: 32, offset: 416)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1042, file: !1043, line: 688, baseType: !167, size: 32, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1042, file: !1043, line: 689, baseType: !5, size: 32, offset: 480)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1042, file: !1043, line: 691, baseType: !1068, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1070)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1043, line: 691, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1042, file: !1043, line: 692, baseType: !1072, size: 832, offset: 576)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1043, line: 451, size: 832, elements: !1073)
!1073 = !{!1074, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1072, file: !1043, line: 453, baseType: !1075, size: 128)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1043, line: 325, size: 128, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1075, file: !1043, line: 326, baseType: !222, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1075, file: !1043, line: 327, baseType: !298, size: 32, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1072, file: !1043, line: 454, baseType: !667, size: 192, align: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1072, file: !1043, line: 455, baseType: !487, size: 128, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1072, file: !1043, line: 456, baseType: !5, size: 32, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1072, file: !1043, line: 458, baseType: !302, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1072, file: !1043, line: 459, baseType: !302, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1072, file: !1043, line: 460, baseType: !302, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1072, file: !1043, line: 461, baseType: !302, size: 64, offset: 704)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1072, file: !1043, line: 463, baseType: !302, size: 64, offset: 768)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1072, file: !1043, line: 465, baseType: !1088, offset: 832)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1043, line: 415, elements: !536)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1042, file: !1043, line: 693, baseType: !1090, size: 384, offset: 1408)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1043, line: 489, size: 384, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1090, file: !1043, line: 490, baseType: !487, size: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1090, file: !1043, line: 491, baseType: !222, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1090, file: !1043, line: 492, baseType: !222, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1090, file: !1043, line: 493, baseType: !5, size: 32, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1090, file: !1043, line: 494, baseType: !315, size: 16, offset: 288)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1090, file: !1043, line: 495, baseType: !315, size: 16, offset: 304)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1090, file: !1043, line: 497, baseType: !1099, size: 64, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1042, file: !1043, line: 697, baseType: !1101, size: 1792, offset: 1792)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1043, line: 507, size: 1792, elements: !1102)
!1102 = !{!1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1182, !1183}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1101, file: !1043, line: 508, baseType: !667, size: 192, align: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1101, file: !1043, line: 515, baseType: !302, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1101, file: !1043, line: 516, baseType: !302, size: 64, offset: 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1101, file: !1043, line: 517, baseType: !302, size: 64, offset: 320)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1101, file: !1043, line: 518, baseType: !302, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1101, file: !1043, line: 519, baseType: !302, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1101, file: !1043, line: 526, baseType: !684, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1101, file: !1043, line: 527, baseType: !302, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1101, file: !1043, line: 528, baseType: !5, size: 32, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1101, file: !1043, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1101, file: !1043, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1101, file: !1043, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1101, file: !1043, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1101, file: !1043, line: 563, baseType: !1117, size: 512, offset: 704)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !1118)
!1118 = !{!1119, !1127, !1128, !1133, !1176, !1179, !1180, !1181}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1117, file: !12, line: 119, baseType: !1120, size: 256)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1121, line: 9, size: 256, elements: !1122)
!1121 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1120, file: !1121, line: 10, baseType: !667, size: 192, align: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1120, file: !1121, line: 11, baseType: !1125, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1126, line: 29, baseType: !684)
!1126 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1117, file: !12, line: 120, baseType: !1125, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1117, file: !12, line: 121, baseType: !1129, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!11, !1132}
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1117, file: !12, line: 122, baseType: !1134, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !1136)
!1136 = !{!1137, !1157, !1158, !1161, !1166, !1167, !1171, !1175}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1135, file: !12, line: 160, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 214, size: 4608, align: 512, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1139, file: !12, line: 215, baseType: !687)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1139, file: !12, line: 216, baseType: !5, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1139, file: !12, line: 217, baseType: !5, size: 32, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1139, file: !12, line: 218, baseType: !5, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1139, file: !12, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1139, file: !12, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1139, file: !12, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1139, file: !12, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1139, file: !12, line: 233, baseType: !1125, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1139, file: !12, line: 234, baseType: !1132, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1139, file: !12, line: 235, baseType: !1125, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1139, file: !12, line: 236, baseType: !1132, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1139, file: !12, line: 237, baseType: !1154, size: 4096, offset: 512)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1135, size: 4096, elements: !1155)
!1155 = !{!1156}
!1156 = !DISubrange(count: 8)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1135, file: !12, line: 161, baseType: !5, size: 32, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1135, file: !12, line: 162, baseType: !1159, size: 32, offset: 96)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !228, line: 27, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !187, line: 96, baseType: !167)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1135, file: !12, line: 163, baseType: !1162, size: 32, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !271, line: 276, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !271, line: 276, size: 32, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1163, file: !271, line: 276, baseType: !275, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1135, file: !12, line: 164, baseType: !1132, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1135, file: !12, line: 165, baseType: !1168, size: 128, offset: 256)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1121, line: 14, size: 128, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1168, file: !1121, line: 15, baseType: !659, size: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1135, file: !12, line: 166, baseType: !1172, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1125}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1135, file: !12, line: 167, baseType: !1125, size: 64, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1117, file: !12, line: 123, baseType: !1177, size: 8, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !299, line: 17, baseType: !1178)
!1178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !107, line: 21, baseType: !308)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1117, file: !12, line: 124, baseType: !1177, size: 8, offset: 456)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1117, file: !12, line: 125, baseType: !1177, size: 8, offset: 464)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1117, file: !12, line: 126, baseType: !1177, size: 8, offset: 472)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1101, file: !1043, line: 572, baseType: !1117, size: 512, offset: 1216)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1101, file: !1043, line: 580, baseType: !1184, size: 64, offset: 1728)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1042, file: !1043, line: 721, baseType: !5, size: 32, offset: 3584)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1042, file: !1043, line: 722, baseType: !167, size: 32, offset: 3616)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1042, file: !1043, line: 723, baseType: !1188, size: 64, offset: 3648)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1191, line: 17, baseType: !1192)
!1191 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1191, line: 17, size: 64, elements: !1193)
!1193 = !{!1194}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1192, file: !1191, line: 17, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 64, elements: !1196)
!1196 = !{!1197}
!1197 = !DISubrange(count: 1)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1042, file: !1043, line: 724, baseType: !1190, size: 64, offset: 3712)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1042, file: !1043, line: 749, baseType: !1200, offset: 3776)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1043, line: 290, elements: !536)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1042, file: !1043, line: 751, baseType: !487, size: 128, offset: 3776)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1042, file: !1043, line: 757, baseType: !881, size: 64, offset: 3904)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1042, file: !1043, line: 758, baseType: !881, size: 64, offset: 3968)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1042, file: !1043, line: 761, baseType: !1205, size: 320, offset: 4032)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !978, line: 34, size: 320, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1205, file: !978, line: 35, baseType: !302, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1205, file: !978, line: 36, baseType: !1209, size: 256, offset: 64)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 256, elements: !122)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1042, file: !1043, line: 766, baseType: !167, size: 32, offset: 4352)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1042, file: !1043, line: 767, baseType: !167, size: 32, offset: 4384)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1042, file: !1043, line: 768, baseType: !167, size: 32, offset: 4416)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1042, file: !1043, line: 770, baseType: !167, size: 32, offset: 4448)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1042, file: !1043, line: 772, baseType: !222, size: 64, offset: 4480)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1042, file: !1043, line: 775, baseType: !5, size: 32, offset: 4544)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1042, file: !1043, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1042, file: !1043, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1042, file: !1043, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1042, file: !1043, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1042, file: !1043, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1042, file: !1043, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1042, file: !1043, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1042, file: !1043, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1042, file: !1043, line: 831, baseType: !222, size: 64, offset: 4672)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1042, file: !1043, line: 833, baseType: !1226, size: 384, offset: 4736)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !17, line: 25, size: 384, elements: !1227)
!1227 = !{!1228, !1233}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1226, file: !17, line: 26, baseType: !1229, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!210, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !17, line: 27, baseType: !1234, size: 320, offset: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !17, line: 27, size: 320, elements: !1235)
!1235 = !{!1236, !1246, !1272}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1234, file: !17, line: 36, baseType: !1237, size: 320)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1234, file: !17, line: 29, size: 320, elements: !1238)
!1238 = !{!1239, !1241, !1242, !1243, !1244, !1245}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1237, file: !17, line: 30, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1237, file: !17, line: 31, baseType: !298, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1237, file: !17, line: 32, baseType: !298, size: 32, offset: 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1237, file: !17, line: 33, baseType: !298, size: 32, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1237, file: !17, line: 34, baseType: !302, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1237, file: !17, line: 35, baseType: !1240, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1234, file: !17, line: 46, baseType: !1247, size: 192)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1234, file: !17, line: 38, size: 192, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1271}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1247, file: !17, line: 39, baseType: !1159, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1247, file: !17, line: 40, baseType: !16, size: 32, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !17, line: 41, baseType: !1252, size: 64, offset: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !17, line: 41, size: 64, elements: !1253)
!1253 = !{!1254, !1261}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1252, file: !17, line: 42, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1257, line: 7, size: 128, elements: !1258)
!1257 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1256, file: !1257, line: 8, baseType: !186, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1256, file: !1257, line: 9, baseType: !108, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1252, file: !17, line: 43, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1264, line: 7, size: 64, elements: !1265)
!1264 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1265 = !{!1266, !1270}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1263, file: !1264, line: 8, baseType: !1267, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1264, line: 5, baseType: !1268)
!1268 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !299, line: 20, baseType: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !107, line: 26, baseType: !167)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1263, file: !1264, line: 9, baseType: !1268, size: 32, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1247, file: !17, line: 45, baseType: !302, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1234, file: !17, line: 54, baseType: !1273, size: 256)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1234, file: !17, line: 48, size: 256, elements: !1274)
!1274 = !{!1275, !1283, !1284, !1285, !1286}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1273, file: !17, line: 49, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1278, line: 36, size: 64, elements: !1279)
!1278 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1279 = !{!1280, !1281, !1282}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1277, file: !1278, line: 37, baseType: !167, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1277, file: !1278, line: 38, baseType: !1030, size: 16, offset: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1277, file: !1278, line: 39, baseType: !1030, size: 16, offset: 48)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1273, file: !17, line: 50, baseType: !167, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1273, file: !17, line: 51, baseType: !167, size: 32, offset: 96)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1273, file: !17, line: 52, baseType: !222, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1273, file: !17, line: 53, baseType: !222, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1042, file: !1043, line: 835, baseType: !1288, size: 32, offset: 5120)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !228, line: 22, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !187, line: 28, baseType: !167)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1042, file: !1043, line: 836, baseType: !1288, size: 32, offset: 5152)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1042, file: !1043, line: 840, baseType: !222, size: 64, offset: 5184)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1042, file: !1043, line: 849, baseType: !1041, size: 64, offset: 5248)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1042, file: !1043, line: 852, baseType: !1041, size: 64, offset: 5312)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1042, file: !1043, line: 857, baseType: !487, size: 128, offset: 5376)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1042, file: !1043, line: 858, baseType: !487, size: 128, offset: 5504)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1042, file: !1043, line: 859, baseType: !1041, size: 64, offset: 5632)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1042, file: !1043, line: 867, baseType: !487, size: 128, offset: 5696)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1042, file: !1043, line: 868, baseType: !487, size: 128, offset: 5824)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1042, file: !1043, line: 871, baseType: !1300, size: 64, offset: 5952)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !44, line: 59, size: 768, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1308, !1309, !1316, !1317}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1301, file: !44, line: 61, baseType: !1055, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1301, file: !44, line: 62, baseType: !5, size: 32, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1301, file: !44, line: 63, baseType: !635, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1301, file: !44, line: 65, baseType: !1307, size: 256, offset: 64)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, size: 256, elements: !122)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1301, file: !44, line: 66, baseType: !524, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1301, file: !44, line: 68, baseType: !1310, size: 128, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1311, line: 40, baseType: !1312)
!1311 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1311, line: 36, size: 128, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1312, file: !1311, line: 37, baseType: !635)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1312, file: !1311, line: 38, baseType: !487, size: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1301, file: !44, line: 69, baseType: !248, size: 128, align: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1301, file: !44, line: 70, baseType: !1318, size: 128, offset: 640)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1319, size: 128, elements: !1196)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !44, line: 54, size: 128, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1319, file: !44, line: 55, baseType: !167, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1319, file: !44, line: 56, baseType: !1323, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !44, line: 56, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1042, file: !1043, line: 872, baseType: !1326, size: 512, offset: 6016)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 512, elements: !122)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1042, file: !1043, line: 873, baseType: !487, size: 128, offset: 6528)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1042, file: !1043, line: 874, baseType: !487, size: 128, offset: 6656)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1042, file: !1043, line: 876, baseType: !1330, size: 64, offset: 6784)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1332, line: 26, size: 192, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1331, file: !1332, line: 27, baseType: !5, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1331, file: !1332, line: 28, baseType: !1336, size: 128, offset: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1337, line: 43, size: 128, elements: !1338)
!1337 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1336, file: !1337, line: 44, baseType: !687)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1336, file: !1337, line: 45, baseType: !487, size: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1042, file: !1043, line: 879, baseType: !597, size: 64, offset: 6848)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1042, file: !1043, line: 882, baseType: !597, size: 64, offset: 6912)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1042, file: !1043, line: 884, baseType: !302, size: 64, offset: 6976)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1042, file: !1043, line: 885, baseType: !302, size: 64, offset: 7040)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1042, file: !1043, line: 890, baseType: !302, size: 64, offset: 7104)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1042, file: !1043, line: 891, baseType: !1347, size: 128, offset: 7168)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1043, line: 242, size: 128, elements: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1347, file: !1043, line: 244, baseType: !302, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1347, file: !1043, line: 245, baseType: !302, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1347, file: !1043, line: 246, baseType: !687, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1042, file: !1043, line: 900, baseType: !222, size: 64, offset: 7296)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1042, file: !1043, line: 901, baseType: !222, size: 64, offset: 7360)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1042, file: !1043, line: 904, baseType: !302, size: 64, offset: 7424)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1042, file: !1043, line: 907, baseType: !302, size: 64, offset: 7488)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1042, file: !1043, line: 910, baseType: !222, size: 64, offset: 7552)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1042, file: !1043, line: 911, baseType: !222, size: 64, offset: 7616)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1042, file: !1043, line: 914, baseType: !1359, size: 640, offset: 7680)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1360, line: 123, size: 640, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1361 = !{!1362, !1368, !1369}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1359, file: !1360, line: 124, baseType: !1363, size: 576)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 576, elements: !541)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1360, line: 108, size: 192, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1364, file: !1360, line: 109, baseType: !302, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1364, file: !1360, line: 110, baseType: !1168, size: 128, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1359, file: !1360, line: 125, baseType: !5, size: 32, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1359, file: !1360, line: 126, baseType: !5, size: 32, offset: 608)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1042, file: !1043, line: 917, baseType: !1371, size: 192, offset: 8320)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1360, line: 134, size: 192, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1371, file: !1360, line: 135, baseType: !248, size: 128, align: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1371, file: !1360, line: 136, baseType: !5, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1042, file: !1043, line: 923, baseType: !1376, size: 64, offset: 8512)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1379, line: 111, size: 1280, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1398, !1399, !1400, !1401, !1402, !1403, !1510, !1511, !1512, !1513, !1539, !1542, !1552}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1378, file: !1379, line: 112, baseType: !654, size: 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1378, file: !1379, line: 120, baseType: !318, size: 32, offset: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1378, file: !1379, line: 121, baseType: !326, size: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1378, file: !1379, line: 122, baseType: !318, size: 32, offset: 96)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1378, file: !1379, line: 123, baseType: !326, size: 32, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1378, file: !1379, line: 124, baseType: !318, size: 32, offset: 160)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1378, file: !1379, line: 125, baseType: !326, size: 32, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1378, file: !1379, line: 126, baseType: !318, size: 32, offset: 224)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1378, file: !1379, line: 127, baseType: !326, size: 32, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1378, file: !1379, line: 128, baseType: !5, size: 32, offset: 288)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1378, file: !1379, line: 129, baseType: !1392, size: 64, offset: 320)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1393, line: 26, baseType: !1394)
!1393 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1393, line: 24, size: 64, elements: !1395)
!1395 = !{!1396}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1394, file: !1393, line: 25, baseType: !1397, size: 64)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !94)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1378, file: !1379, line: 130, baseType: !1392, size: 64, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1378, file: !1379, line: 131, baseType: !1392, size: 64, offset: 448)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1378, file: !1379, line: 132, baseType: !1392, size: 64, offset: 512)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1378, file: !1379, line: 133, baseType: !1392, size: 64, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1378, file: !1379, line: 135, baseType: !308, size: 8, offset: 640)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1378, file: !1379, line: 137, baseType: !1404, size: 64, offset: 704)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1406, line: 189, size: 1664, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1407 = !{!1408, !1409, !1412, !1417, !1418, !1421, !1422, !1427, !1428, !1429, !1430, !1432, !1433, !1434, !1435, !1436, !1474, !1495}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1405, file: !1406, line: 190, baseType: !1055, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1405, file: !1406, line: 191, baseType: !1410, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1406, line: 28, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !228, line: 98, baseType: !1268)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1406, line: 192, baseType: !1413, size: 192, offset: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1406, line: 192, size: 192, elements: !1414)
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1413, file: !1406, line: 193, baseType: !487, size: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1413, file: !1406, line: 194, baseType: !667, size: 192, align: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1405, file: !1406, line: 199, baseType: !674, size: 256, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1405, file: !1406, line: 200, baseType: !1419, size: 64, offset: 512)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1406, line: 200, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1405, file: !1406, line: 201, baseType: !147, size: 64, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1406, line: 202, baseType: !1423, size: 64, offset: 640)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1406, line: 202, size: 64, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1423, file: !1406, line: 203, baseType: !208, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1423, file: !1406, line: 204, baseType: !208, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1405, file: !1406, line: 206, baseType: !208, size: 64, offset: 704)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1405, file: !1406, line: 207, baseType: !318, size: 32, offset: 768)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1405, file: !1406, line: 208, baseType: !326, size: 32, offset: 800)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1405, file: !1406, line: 209, baseType: !1431, size: 32, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1406, line: 31, baseType: !438)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1405, file: !1406, line: 210, baseType: !315, size: 16, offset: 864)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1405, file: !1406, line: 211, baseType: !315, size: 16, offset: 880)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1405, file: !1406, line: 215, baseType: !1030, size: 16, offset: 896)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1405, file: !1406, line: 222, baseType: !222, size: 64, offset: 960)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1406, line: 239, baseType: !1437, size: 320, offset: 1024)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1406, line: 239, size: 320, elements: !1438)
!1438 = !{!1439, !1466}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1437, file: !1406, line: 240, baseType: !1440, size: 320)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1406, line: 108, size: 320, elements: !1441)
!1441 = !{!1442, !1443, !1455, !1458, !1465}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1440, file: !1406, line: 110, baseType: !222, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1440, file: !1406, line: 111, baseType: !1444, size: 64, offset: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1440, file: !1406, line: 111, size: 64, elements: !1445)
!1445 = !{!1446, !1454}
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1406, line: 112, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1444, file: !1406, line: 112, size: 64, elements: !1448)
!1448 = !{!1449, !1450}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1447, file: !1406, line: 114, baseType: !766, size: 16)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1447, file: !1406, line: 115, baseType: !1451, size: 48, offset: 16)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 48, elements: !1452)
!1452 = !{!1453}
!1453 = !DISubrange(count: 6)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1444, file: !1406, line: 121, baseType: !222, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1440, file: !1406, line: 123, baseType: !1456, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1406, line: 96, flags: DIFlagFwdDecl)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1440, file: !1406, line: 124, baseType: !1459, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1406, line: 102, size: 192, elements: !1461)
!1461 = !{!1462, !1463, !1464}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1460, file: !1406, line: 103, baseType: !248, size: 128, align: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1460, file: !1406, line: 104, baseType: !1055, size: 32, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1460, file: !1406, line: 105, baseType: !377, size: 8, offset: 160)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1440, file: !1406, line: 125, baseType: !346, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1437, file: !1406, line: 241, baseType: !1467, size: 320)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !1406, line: 241, size: 320, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1467, file: !1406, line: 242, baseType: !222, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1467, file: !1406, line: 243, baseType: !222, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1467, file: !1406, line: 244, baseType: !1456, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1467, file: !1406, line: 245, baseType: !1459, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1467, file: !1406, line: 246, baseType: !372, size: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1406, line: 254, baseType: !1475, size: 256, offset: 1344)
!1475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1406, line: 254, size: 256, elements: !1476)
!1476 = !{!1477, !1483}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1475, file: !1406, line: 255, baseType: !1478, size: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1406, line: 128, size: 256, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1478, file: !1406, line: 129, baseType: !147, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1478, file: !1406, line: 130, baseType: !1482, size: 256)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !122)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1475, file: !1406, line: 256, baseType: !1484, size: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1475, file: !1406, line: 256, size: 256, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1484, file: !1406, line: 258, baseType: !487, size: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1484, file: !1406, line: 259, baseType: !1488, size: 128, offset: 128)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1489, line: 22, size: 128, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1490 = !{!1491, !1494}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1488, file: !1489, line: 23, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1489, line: 23, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1488, file: !1489, line: 24, baseType: !222, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1405, file: !1406, line: 274, baseType: !1496, size: 64, offset: 1600)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1406, line: 170, size: 192, elements: !1498)
!1498 = !{!1499, !1508, !1509}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1497, file: !1406, line: 171, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1406, line: 165, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!167, !1404, !1504, !1506, !1404}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1457)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1497, file: !1406, line: 172, baseType: !1404, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1497, file: !1406, line: 173, baseType: !1456, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1378, file: !1379, line: 138, baseType: !1404, size: 64, offset: 768)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1378, file: !1379, line: 139, baseType: !1404, size: 64, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1378, file: !1379, line: 140, baseType: !1404, size: 64, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1378, file: !1379, line: 145, baseType: !1514, size: 64, offset: 960)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1516, line: 13, size: 896, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1515, file: !1516, line: 14, baseType: !1055, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1515, file: !1516, line: 15, baseType: !654, size: 32, offset: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1515, file: !1516, line: 16, baseType: !654, size: 32, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1515, file: !1516, line: 21, baseType: !678, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1515, file: !1516, line: 27, baseType: !222, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1515, file: !1516, line: 28, baseType: !222, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1515, file: !1516, line: 29, baseType: !678, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1515, file: !1516, line: 32, baseType: !528, size: 128, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1515, file: !1516, line: 33, baseType: !318, size: 32, offset: 512)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1515, file: !1516, line: 37, baseType: !678, size: 64, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1515, file: !1516, line: 44, baseType: !1529, size: 256, offset: 640)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1530, line: 15, size: 256, elements: !1531)
!1530 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1531 = !{!1532, !1533, !1534, !1535, !1536, !1537, !1538}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1529, file: !1530, line: 16, baseType: !687)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1529, file: !1530, line: 18, baseType: !167, size: 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1529, file: !1530, line: 19, baseType: !167, size: 32, offset: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1529, file: !1530, line: 20, baseType: !167, size: 32, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1529, file: !1530, line: 21, baseType: !167, size: 32, offset: 96)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1529, file: !1530, line: 22, baseType: !222, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1529, file: !1530, line: 23, baseType: !222, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1378, file: !1379, line: 146, baseType: !1540, size: 64, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !319, line: 18, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1378, file: !1379, line: 147, baseType: !1543, size: 64, offset: 1088)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1379, line: 25, size: 64, elements: !1545)
!1545 = !{!1546, !1547, !1548}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1544, file: !1379, line: 26, baseType: !654, size: 32)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1544, file: !1379, line: 27, baseType: !167, size: 32, offset: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1544, file: !1379, line: 28, baseType: !1549, offset: 64)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 0)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1379, line: 149, baseType: !1553, size: 128, offset: 1152)
!1553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1379, line: 149, size: 128, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1553, file: !1379, line: 150, baseType: !167, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1553, file: !1379, line: 151, baseType: !248, size: 128, align: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1042, file: !1043, line: 926, baseType: !1376, size: 64, offset: 8576)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1042, file: !1043, line: 929, baseType: !1376, size: 64, offset: 8640)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1042, file: !1043, line: 933, baseType: !1404, size: 64, offset: 8704)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1042, file: !1043, line: 943, baseType: !1561, size: 128, offset: 8768)
!1561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 128, elements: !1562)
!1562 = !{!1563}
!1563 = !DISubrange(count: 16)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1042, file: !1043, line: 945, baseType: !1565, size: 64, offset: 8896)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1043, line: 49, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1042, file: !1043, line: 956, baseType: !1568, size: 64, offset: 8960)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1043, line: 45, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1042, file: !1043, line: 959, baseType: !1571, size: 64, offset: 9024)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1043, line: 959, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1042, file: !1043, line: 962, baseType: !1574, size: 64, offset: 9088)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1043, line: 66, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1042, file: !1043, line: 966, baseType: !1577, size: 64, offset: 9152)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1579, line: 35, flags: DIFlagFwdDecl)
!1579 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1042, file: !1043, line: 969, baseType: !1581, size: 64, offset: 9216)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1583, line: 82, size: 7296, elements: !1584)
!1583 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1620, !1629, !1630, !1632, !1633, !1634, !1637, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1667, !1668, !1675, !1676, !1677, !1678, !1679, !1680}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1582, file: !1583, line: 83, baseType: !1055, size: 32)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1582, file: !1583, line: 84, baseType: !654, size: 32, offset: 32)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1582, file: !1583, line: 85, baseType: !167, size: 32, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1582, file: !1583, line: 86, baseType: !487, size: 128, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1582, file: !1583, line: 88, baseType: !1310, size: 128, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1582, file: !1583, line: 91, baseType: !1041, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1582, file: !1583, line: 94, baseType: !1592, size: 192, offset: 448)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1593, line: 30, size: 192, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1592, file: !1593, line: 31, baseType: !487, size: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1592, file: !1593, line: 32, baseType: !1597, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1598, line: 25, baseType: !1599)
!1598 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1598, line: 23, size: 64, elements: !1600)
!1600 = !{!1601}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1599, file: !1598, line: 24, baseType: !1195, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1582, file: !1583, line: 97, baseType: !524, size: 64, offset: 640)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1582, file: !1583, line: 100, baseType: !167, size: 32, offset: 704)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1582, file: !1583, line: 106, baseType: !167, size: 32, offset: 736)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1582, file: !1583, line: 107, baseType: !1041, size: 64, offset: 768)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1582, file: !1583, line: 110, baseType: !167, size: 32, offset: 832)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1582, file: !1583, line: 111, baseType: !5, size: 32, offset: 864)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1582, file: !1583, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1582, file: !1583, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1582, file: !1583, line: 128, baseType: !167, size: 32, offset: 928)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1582, file: !1583, line: 129, baseType: !487, size: 128, offset: 960)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1582, file: !1583, line: 132, baseType: !1117, size: 512, offset: 1088)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1582, file: !1583, line: 133, baseType: !1125, size: 64, offset: 1600)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1582, file: !1583, line: 140, baseType: !1615, size: 256, offset: 1664)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1616, size: 256, elements: !94)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1583, line: 38, size: 128, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1616, file: !1583, line: 39, baseType: !302, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1616, file: !1583, line: 40, baseType: !302, size: 64, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1582, file: !1583, line: 146, baseType: !1621, size: 192, offset: 1920)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1583, line: 66, size: 192, elements: !1622)
!1622 = !{!1623}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1621, file: !1583, line: 67, baseType: !1624, size: 192)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1583, line: 47, size: 192, elements: !1625)
!1625 = !{!1626, !1627, !1628}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1624, file: !1583, line: 48, baseType: !680, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1624, file: !1583, line: 49, baseType: !680, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1624, file: !1583, line: 50, baseType: !680, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1582, file: !1583, line: 150, baseType: !1359, size: 640, offset: 2112)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1582, file: !1583, line: 153, baseType: !1631, size: 256, offset: 2752)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1300, size: 256, elements: !122)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1582, file: !1583, line: 159, baseType: !1300, size: 64, offset: 3008)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1582, file: !1583, line: 162, baseType: !167, size: 32, offset: 3072)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1582, file: !1583, line: 164, baseType: !1635, size: 64, offset: 3136)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1583, line: 164, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1582, file: !1583, line: 175, baseType: !1638, size: 32, offset: 3200)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !271, line: 805, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 798, size: 32, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1639, file: !271, line: 803, baseType: !270, size: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1639, file: !271, line: 804, baseType: !635, offset: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1582, file: !1583, line: 176, baseType: !302, size: 64, offset: 3264)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1582, file: !1583, line: 176, baseType: !302, size: 64, offset: 3328)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1582, file: !1583, line: 176, baseType: !302, size: 64, offset: 3392)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1582, file: !1583, line: 176, baseType: !302, size: 64, offset: 3456)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1582, file: !1583, line: 177, baseType: !302, size: 64, offset: 3520)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1582, file: !1583, line: 178, baseType: !302, size: 64, offset: 3584)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1582, file: !1583, line: 179, baseType: !1347, size: 128, offset: 3648)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1582, file: !1583, line: 180, baseType: !222, size: 64, offset: 3776)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1582, file: !1583, line: 180, baseType: !222, size: 64, offset: 3840)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1582, file: !1583, line: 180, baseType: !222, size: 64, offset: 3904)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1582, file: !1583, line: 180, baseType: !222, size: 64, offset: 3968)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1582, file: !1583, line: 181, baseType: !222, size: 64, offset: 4032)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1582, file: !1583, line: 181, baseType: !222, size: 64, offset: 4096)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1582, file: !1583, line: 181, baseType: !222, size: 64, offset: 4160)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1582, file: !1583, line: 181, baseType: !222, size: 64, offset: 4224)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1582, file: !1583, line: 182, baseType: !222, size: 64, offset: 4288)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1582, file: !1583, line: 182, baseType: !222, size: 64, offset: 4352)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1582, file: !1583, line: 182, baseType: !222, size: 64, offset: 4416)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1582, file: !1583, line: 182, baseType: !222, size: 64, offset: 4480)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1582, file: !1583, line: 183, baseType: !222, size: 64, offset: 4544)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1582, file: !1583, line: 183, baseType: !222, size: 64, offset: 4608)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1582, file: !1583, line: 184, baseType: !1665, offset: 4672)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1666, line: 12, elements: !536)
!1666 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1582, file: !1583, line: 192, baseType: !304, size: 64, offset: 4672)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1582, file: !1583, line: 203, baseType: !1669, size: 2048, offset: 4736)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, size: 2048, elements: !1562)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1671, line: 43, size: 128, elements: !1672)
!1671 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1672 = !{!1673, !1674}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1670, file: !1671, line: 44, baseType: !462, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1670, file: !1671, line: 45, baseType: !462, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1582, file: !1583, line: 220, baseType: !377, size: 8, offset: 6784)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1582, file: !1583, line: 221, baseType: !1030, size: 16, offset: 6800)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1582, file: !1583, line: 222, baseType: !1030, size: 16, offset: 6816)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1582, file: !1583, line: 224, baseType: !881, size: 64, offset: 6848)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1582, file: !1583, line: 227, baseType: !998, size: 192, offset: 6912)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1582, file: !1583, line: 233, baseType: !998, size: 192, offset: 7104)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1042, file: !1043, line: 970, baseType: !1682, size: 64, offset: 9280)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1583, line: 20, size: 16576, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1683, file: !1583, line: 21, baseType: !635)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1683, file: !1583, line: 22, baseType: !1055, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1683, file: !1583, line: 23, baseType: !1310, size: 128, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1683, file: !1583, line: 24, baseType: !1689, size: 16384, offset: 192)
!1689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1690, size: 16384, elements: !1710)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1593, line: 49, size: 256, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1690, file: !1593, line: 50, baseType: !1693, size: 256)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1593, line: 35, size: 256, elements: !1694)
!1694 = !{!1695, !1702, !1703, !1709}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1693, file: !1593, line: 37, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1697, line: 19, baseType: !1698)
!1697 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1697, line: 18, baseType: !1700)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !167}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1693, file: !1593, line: 38, baseType: !222, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1693, file: !1593, line: 44, baseType: !1704, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1697, line: 22, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1697, line: 21, baseType: !1707)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1693, file: !1593, line: 46, baseType: !1597, size: 64, offset: 192)
!1710 = !{!1711}
!1711 = !DISubrange(count: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1042, file: !1043, line: 971, baseType: !1597, size: 64, offset: 9344)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1042, file: !1043, line: 972, baseType: !1597, size: 64, offset: 9408)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1042, file: !1043, line: 974, baseType: !1597, size: 64, offset: 9472)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1042, file: !1043, line: 975, baseType: !1592, size: 192, offset: 9536)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1042, file: !1043, line: 976, baseType: !222, size: 64, offset: 9728)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1042, file: !1043, line: 977, baseType: !460, size: 64, offset: 9792)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1042, file: !1043, line: 978, baseType: !5, size: 32, offset: 9856)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1042, file: !1043, line: 980, baseType: !251, size: 64, offset: 9920)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1042, file: !1043, line: 989, baseType: !1721, size: 128, offset: 9984)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1722, line: 35, size: 128, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !{!1724, !1725, !1726}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1721, file: !1722, line: 36, baseType: !167, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1721, file: !1722, line: 37, baseType: !654, size: 32, offset: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1721, file: !1722, line: 38, baseType: !1727, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1722, line: 23, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1042, file: !1043, line: 992, baseType: !302, size: 64, offset: 10112)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1042, file: !1043, line: 993, baseType: !302, size: 64, offset: 10176)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1042, file: !1043, line: 996, baseType: !635, offset: 10240)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1042, file: !1043, line: 999, baseType: !687, offset: 10240)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1042, file: !1043, line: 1001, baseType: !1734, size: 64, offset: 10240)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1043, line: 636, size: 64, elements: !1735)
!1735 = !{!1736}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1734, file: !1043, line: 637, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1042, file: !1043, line: 1005, baseType: !659, size: 128, offset: 10304)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1042, file: !1043, line: 1007, baseType: !1041, size: 64, offset: 10432)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1042, file: !1043, line: 1009, baseType: !1741, size: 64, offset: 10496)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1043, line: 1009, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1042, file: !1043, line: 1043, baseType: !147, size: 64, offset: 10560)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1042, file: !1043, line: 1046, baseType: !1745, size: 64, offset: 10624)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1043, line: 41, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1042, file: !1043, line: 1050, baseType: !1748, size: 64, offset: 10688)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1043, line: 42, flags: DIFlagFwdDecl)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1042, file: !1043, line: 1054, baseType: !1751, size: 64, offset: 10752)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1043, line: 55, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1042, file: !1043, line: 1056, baseType: !1754, size: 64, offset: 10816)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1043, line: 40, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1042, file: !1043, line: 1058, baseType: !1757, size: 64, offset: 10880)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1759, line: 99, size: 704, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1760 = !{!1761, !1762, !1763, !1764, !1765, !1766, !1767, !1786, !1787}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1758, file: !1759, line: 100, baseType: !678, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1758, file: !1759, line: 101, baseType: !654, size: 32, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1758, file: !1759, line: 102, baseType: !654, size: 32, offset: 96)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1758, file: !1759, line: 105, baseType: !635, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1758, file: !1759, line: 107, baseType: !315, size: 16, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1758, file: !1759, line: 109, baseType: !631, size: 128, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1758, file: !1759, line: 110, baseType: !1768, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1759, line: 73, size: 448, elements: !1770)
!1770 = !{!1771, !1774, !1775, !1780, !1785}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1769, file: !1759, line: 74, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1759, line: 74, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1769, file: !1759, line: 75, baseType: !1757, size: 64, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !1759, line: 83, baseType: !1776, size: 128, offset: 128)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1769, file: !1759, line: 83, size: 128, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1776, file: !1759, line: 84, baseType: !487, size: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1776, file: !1759, line: 85, baseType: !842, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1769, file: !1759, line: 87, baseType: !1781, size: 128, offset: 256)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1769, file: !1759, line: 87, size: 128, elements: !1782)
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1781, file: !1759, line: 88, baseType: !528, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1781, file: !1759, line: 89, baseType: !248, size: 128, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1769, file: !1759, line: 92, baseType: !5, size: 32, offset: 384)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1758, file: !1759, line: 111, baseType: !524, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1758, file: !1759, line: 113, baseType: !1788, size: 256, offset: 448)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1789, line: 102, size: 256, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1790 = !{!1791, !1792, !1793}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1788, file: !1789, line: 103, baseType: !678, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1788, file: !1789, line: 104, baseType: !487, size: 128, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1788, file: !1789, line: 105, baseType: !1794, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1789, line: 21, baseType: !1795)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !1798}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1042, file: !1043, line: 1061, baseType: !1800, size: 64, offset: 10944)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1043, line: 43, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1042, file: !1043, line: 1064, baseType: !222, size: 64, offset: 11008)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1042, file: !1043, line: 1065, baseType: !1804, size: 64, offset: 11072)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1593, line: 14, baseType: !1806)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1593, line: 12, size: 384, elements: !1807)
!1807 = !{!1808}
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !1593, line: 13, baseType: !1809, size: 384)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1806, file: !1593, line: 13, size: 384, elements: !1810)
!1810 = !{!1811, !1812, !1813, !1814}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1809, file: !1593, line: 13, baseType: !167, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1809, file: !1593, line: 13, baseType: !167, size: 32, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1809, file: !1593, line: 13, baseType: !167, size: 32, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1809, file: !1593, line: 13, baseType: !1815, size: 256, offset: 128)
!1815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1816, line: 32, size: 256, elements: !1817)
!1816 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1817 = !{!1818, !1823, !1836, !1842, !1851, !1871, !1876}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1815, file: !1816, line: 37, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1815, file: !1816, line: 34, size: 64, elements: !1820)
!1820 = !{!1821, !1822}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1819, file: !1816, line: 35, baseType: !1289, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1819, file: !1816, line: 36, baseType: !324, size: 32, offset: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1815, file: !1816, line: 45, baseType: !1824, size: 192)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1815, file: !1816, line: 40, size: 192, elements: !1825)
!1825 = !{!1826, !1828, !1829, !1835}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1824, file: !1816, line: 41, baseType: !1827, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !187, line: 95, baseType: !167)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1824, file: !1816, line: 42, baseType: !167, size: 32, offset: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1824, file: !1816, line: 43, baseType: !1830, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1816, line: 11, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1816, line: 8, size: 64, elements: !1832)
!1832 = !{!1833, !1834}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1831, file: !1816, line: 9, baseType: !167, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1831, file: !1816, line: 10, baseType: !147, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1824, file: !1816, line: 44, baseType: !167, size: 32, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1815, file: !1816, line: 52, baseType: !1837, size: 128)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1815, file: !1816, line: 48, size: 128, elements: !1838)
!1838 = !{!1839, !1840, !1841}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1837, file: !1816, line: 49, baseType: !1289, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1837, file: !1816, line: 50, baseType: !324, size: 32, offset: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1837, file: !1816, line: 51, baseType: !1830, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1815, file: !1816, line: 61, baseType: !1843, size: 256)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1815, file: !1816, line: 55, size: 256, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1848, !1850}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1843, file: !1816, line: 56, baseType: !1289, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1843, file: !1816, line: 57, baseType: !324, size: 32, offset: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1843, file: !1816, line: 58, baseType: !167, size: 32, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1843, file: !1816, line: 59, baseType: !1849, size: 64, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !187, line: 94, baseType: !459)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1843, file: !1816, line: 60, baseType: !1849, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1815, file: !1816, line: 95, baseType: !1852, size: 256)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1815, file: !1816, line: 64, size: 256, elements: !1853)
!1853 = !{!1854, !1855}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1852, file: !1816, line: 65, baseType: !147, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !1816, line: 77, baseType: !1856, size: 192, offset: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !1816, line: 77, size: 192, elements: !1857)
!1857 = !{!1858, !1859, !1866}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1856, file: !1816, line: 82, baseType: !1030, size: 16)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1856, file: !1816, line: 88, baseType: !1860, size: 192)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !1816, line: 84, size: 192, elements: !1861)
!1861 = !{!1862, !1864, !1865}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1860, file: !1816, line: 85, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !1155)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1860, file: !1816, line: 86, baseType: !147, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1860, file: !1816, line: 87, baseType: !147, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1856, file: !1816, line: 93, baseType: !1867, size: 96)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !1816, line: 90, size: 96, elements: !1868)
!1868 = !{!1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1867, file: !1816, line: 91, baseType: !1863, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1867, file: !1816, line: 92, baseType: !110, size: 32, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1815, file: !1816, line: 101, baseType: !1872, size: 128)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1815, file: !1816, line: 98, size: 128, elements: !1873)
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1872, file: !1816, line: 99, baseType: !210, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1872, file: !1816, line: 100, baseType: !167, size: 32, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1815, file: !1816, line: 108, baseType: !1877, size: 128)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1815, file: !1816, line: 104, size: 128, elements: !1878)
!1878 = !{!1879, !1880, !1881}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1877, file: !1816, line: 105, baseType: !147, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1877, file: !1816, line: 106, baseType: !167, size: 32, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1877, file: !1816, line: 107, baseType: !5, size: 32, offset: 96)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1042, file: !1043, line: 1067, baseType: !1665, offset: 11136)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1042, file: !1043, line: 1099, baseType: !1884, size: 64, offset: 11136)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1043, line: 56, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1042, file: !1043, line: 1103, baseType: !487, size: 128, offset: 11200)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1042, file: !1043, line: 1104, baseType: !1888, size: 64, offset: 11328)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1043, line: 46, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1042, file: !1043, line: 1105, baseType: !998, size: 192, offset: 11392)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1042, file: !1043, line: 1106, baseType: !5, size: 32, offset: 11584)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1042, file: !1043, line: 1109, baseType: !1893, size: 128, offset: 11648)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1894, size: 128, elements: !94)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1043, line: 51, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1042, file: !1043, line: 1110, baseType: !998, size: 192, offset: 11776)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1042, file: !1043, line: 1111, baseType: !487, size: 128, offset: 11968)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1042, file: !1043, line: 1173, baseType: !1899, size: 64, offset: 12096)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1901, line: 62, size: 256, align: 256, elements: !1902)
!1901 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1902 = !{!1903, !1904, !1905, !1910}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1900, file: !1901, line: 75, baseType: !110, size: 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1900, file: !1901, line: 90, baseType: !110, size: 32, offset: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1900, file: !1901, line: 124, baseType: !1906, size: 64, offset: 64)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1900, file: !1901, line: 109, size: 64, elements: !1907)
!1907 = !{!1908, !1909}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1906, file: !1901, line: 110, baseType: !303, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1906, file: !1901, line: 112, baseType: !303, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1900, file: !1901, line: 144, baseType: !110, size: 32, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1042, file: !1043, line: 1174, baseType: !298, size: 32, offset: 12160)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1042, file: !1043, line: 1179, baseType: !222, size: 64, offset: 12224)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1042, file: !1043, line: 1182, baseType: !1914, size: 128, offset: 12288)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !978, line: 76, size: 128, elements: !1915)
!1915 = !{!1916, !1921, !1922}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1914, file: !978, line: 85, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1918, line: 7, size: 64, elements: !1919)
!1918 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1917, file: !1918, line: 12, baseType: !1192, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1914, file: !978, line: 88, baseType: !377, size: 8, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1914, file: !978, line: 95, baseType: !377, size: 8, offset: 72)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !1043, line: 1184, baseType: !1924, size: 128, offset: 12416)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !1043, line: 1184, size: 128, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1924, file: !1043, line: 1185, baseType: !1055, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1924, file: !1043, line: 1186, baseType: !248, size: 128, align: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1042, file: !1043, line: 1190, baseType: !1929, size: 64, offset: 12544)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1043, line: 53, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1042, file: !1043, line: 1192, baseType: !1932, size: 128, offset: 12608)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !978, line: 64, size: 128, elements: !1933)
!1933 = !{!1934, !1935, !1936}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1932, file: !978, line: 65, baseType: !613, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1932, file: !978, line: 67, baseType: !110, size: 32, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1932, file: !978, line: 68, baseType: !110, size: 32, offset: 96)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1042, file: !1043, line: 1206, baseType: !167, size: 32, offset: 12736)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1042, file: !1043, line: 1207, baseType: !167, size: 32, offset: 12768)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1042, file: !1043, line: 1209, baseType: !222, size: 64, offset: 12800)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1042, file: !1043, line: 1219, baseType: !302, size: 64, offset: 12864)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1042, file: !1043, line: 1220, baseType: !302, size: 64, offset: 12928)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1042, file: !1043, line: 1317, baseType: !167, size: 32, offset: 12992)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1042, file: !1043, line: 1319, baseType: !1041, size: 64, offset: 13056)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1042, file: !1043, line: 1322, baseType: !1945, size: 64, offset: 13120)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1043, line: 1322, flags: DIFlagFwdDecl)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1042, file: !1043, line: 1326, baseType: !1055, size: 32, offset: 13184)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1042, file: !1043, line: 1342, baseType: !147, size: 64, offset: 13248)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1042, file: !1043, line: 1343, baseType: !303, size: 64, offset: 13312)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1042, file: !1043, line: 1344, baseType: !302, size: 64, offset: 13376)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1042, file: !1043, line: 1345, baseType: !303, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1042, file: !1043, line: 1346, baseType: !303, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1042, file: !1043, line: 1347, baseType: !303, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1042, file: !1043, line: 1348, baseType: !248, size: 128, align: 64, offset: 13504)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1042, file: !1043, line: 1358, baseType: !1956, size: 34816, offset: 13824)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1957, line: 485, size: 34816, elements: !1958)
!1957 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !{!1959, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1988, !1989, !1990, !1991, !1992, !1993, !1996, !1997, !1998}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1956, file: !1957, line: 487, baseType: !1960, size: 192)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1961, size: 192, elements: !541)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1962, line: 16, size: 64, elements: !1963)
!1962 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1961, file: !1962, line: 17, baseType: !766, size: 16)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1961, file: !1962, line: 18, baseType: !766, size: 16, offset: 16)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1961, file: !1962, line: 19, baseType: !766, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1961, file: !1962, line: 19, baseType: !766, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1961, file: !1962, line: 19, baseType: !766, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1961, file: !1962, line: 19, baseType: !766, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1961, file: !1962, line: 19, baseType: !766, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1961, file: !1962, line: 20, baseType: !766, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1961, file: !1962, line: 20, baseType: !766, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1961, file: !1962, line: 20, baseType: !766, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1961, file: !1962, line: 20, baseType: !766, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1961, file: !1962, line: 20, baseType: !766, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1961, file: !1962, line: 20, baseType: !766, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1956, file: !1957, line: 491, baseType: !222, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1956, file: !1957, line: 495, baseType: !315, size: 16, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1956, file: !1957, line: 496, baseType: !315, size: 16, offset: 272)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1956, file: !1957, line: 497, baseType: !315, size: 16, offset: 288)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1956, file: !1957, line: 498, baseType: !315, size: 16, offset: 304)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1956, file: !1957, line: 502, baseType: !222, size: 64, offset: 320)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1956, file: !1957, line: 503, baseType: !222, size: 64, offset: 384)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1956, file: !1957, line: 514, baseType: !1985, size: 256, offset: 448)
!1985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1986, size: 256, elements: !122)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1957, line: 483, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1956, file: !1957, line: 516, baseType: !222, size: 64, offset: 704)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1956, file: !1957, line: 518, baseType: !222, size: 64, offset: 768)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1956, file: !1957, line: 520, baseType: !222, size: 64, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1956, file: !1957, line: 521, baseType: !222, size: 64, offset: 896)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1956, file: !1957, line: 522, baseType: !222, size: 64, offset: 960)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1956, file: !1957, line: 528, baseType: !1994, size: 64, offset: 1024)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1957, line: 10, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1956, file: !1957, line: 535, baseType: !222, size: 64, offset: 1088)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1956, file: !1957, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1956, file: !1957, line: 540, baseType: !1999, size: 33280, offset: 1536)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2000, line: 317, size: 33280, elements: !2001)
!2000 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2001 = !{!2002, !2003, !2004}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1999, file: !2000, line: 330, baseType: !5, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1999, file: !2000, line: 337, baseType: !222, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1999, file: !2000, line: 348, baseType: !2005, size: 32768, offset: 512)
!2005 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2000, line: 304, size: 32768, elements: !2006)
!2006 = !{!2007, !2022, !2061, !2111, !2124}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2005, file: !2000, line: 305, baseType: !2008, size: 896)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2000, line: 12, size: 896, elements: !2009)
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2021}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2008, file: !2000, line: 13, baseType: !298, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2008, file: !2000, line: 14, baseType: !298, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2008, file: !2000, line: 15, baseType: !298, size: 32, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2008, file: !2000, line: 16, baseType: !298, size: 32, offset: 96)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2008, file: !2000, line: 17, baseType: !298, size: 32, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2008, file: !2000, line: 18, baseType: !298, size: 32, offset: 160)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2008, file: !2000, line: 19, baseType: !298, size: 32, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2008, file: !2000, line: 22, baseType: !2018, size: 640, offset: 224)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 640, elements: !2019)
!2019 = !{!2020}
!2020 = !DISubrange(count: 20)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2008, file: !2000, line: 25, baseType: !298, size: 32, offset: 864)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2005, file: !2000, line: 306, baseType: !2023, size: 4096, align: 128)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2000, line: 34, size: 4096, align: 128, elements: !2024)
!2024 = !{!2025, !2026, !2027, !2028, !2029, !2044, !2045, !2046, !2050, !2052, !2056}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2023, file: !2000, line: 35, baseType: !766, size: 16)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2023, file: !2000, line: 36, baseType: !766, size: 16, offset: 16)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2023, file: !2000, line: 37, baseType: !766, size: 16, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2023, file: !2000, line: 38, baseType: !766, size: 16, offset: 48)
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !2023, file: !2000, line: 39, baseType: !2030, size: 128, offset: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2023, file: !2000, line: 39, size: 128, elements: !2031)
!2031 = !{!2032, !2037}
!2032 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !2000, line: 40, baseType: !2033, size: 128)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !2000, line: 40, size: 128, elements: !2034)
!2034 = !{!2035, !2036}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2033, file: !2000, line: 41, baseType: !302, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2033, file: !2000, line: 42, baseType: !302, size: 64, offset: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !2000, line: 44, baseType: !2038, size: 128)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !2000, line: 44, size: 128, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2043}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2038, file: !2000, line: 45, baseType: !298, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2038, file: !2000, line: 46, baseType: !298, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2038, file: !2000, line: 47, baseType: !298, size: 32, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2038, file: !2000, line: 48, baseType: !298, size: 32, offset: 96)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2023, file: !2000, line: 51, baseType: !298, size: 32, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2023, file: !2000, line: 52, baseType: !298, size: 32, offset: 224)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2023, file: !2000, line: 55, baseType: !2047, size: 1024, offset: 256)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 1024, elements: !2048)
!2048 = !{!2049}
!2049 = !DISubrange(count: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2023, file: !2000, line: 58, baseType: !2051, size: 2048, offset: 1280)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 2048, elements: !1710)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2023, file: !2000, line: 60, baseType: !2053, size: 384, offset: 3328)
!2053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 384, elements: !2054)
!2054 = !{!2055}
!2055 = !DISubrange(count: 12)
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2023, file: !2000, line: 62, baseType: !2057, size: 384, offset: 3712)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2023, file: !2000, line: 62, size: 384, elements: !2058)
!2058 = !{!2059, !2060}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2057, file: !2000, line: 63, baseType: !2053, size: 384)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2057, file: !2000, line: 64, baseType: !2053, size: 384)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2005, file: !2000, line: 307, baseType: !2062, size: 1088)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2000, line: 79, size: 1088, elements: !2063)
!2063 = !{!2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2110}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2062, file: !2000, line: 80, baseType: !298, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2062, file: !2000, line: 81, baseType: !298, size: 32, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2062, file: !2000, line: 82, baseType: !298, size: 32, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2062, file: !2000, line: 83, baseType: !298, size: 32, offset: 96)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2062, file: !2000, line: 84, baseType: !298, size: 32, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2062, file: !2000, line: 85, baseType: !298, size: 32, offset: 160)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2062, file: !2000, line: 86, baseType: !298, size: 32, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2062, file: !2000, line: 88, baseType: !2018, size: 640, offset: 224)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2062, file: !2000, line: 89, baseType: !1177, size: 8, offset: 864)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2062, file: !2000, line: 90, baseType: !1177, size: 8, offset: 872)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2062, file: !2000, line: 91, baseType: !1177, size: 8, offset: 880)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2062, file: !2000, line: 92, baseType: !1177, size: 8, offset: 888)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2062, file: !2000, line: 93, baseType: !1177, size: 8, offset: 896)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2062, file: !2000, line: 94, baseType: !1177, size: 8, offset: 904)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2062, file: !2000, line: 95, baseType: !2079, size: 64, offset: 960)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2081, line: 11, size: 128, elements: !2082)
!2081 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2080, file: !2081, line: 12, baseType: !210, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2080, file: !2081, line: 13, baseType: !2085, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2087, line: 56, size: 1344, elements: !2088)
!2087 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2086, file: !2087, line: 61, baseType: !222, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2086, file: !2087, line: 62, baseType: !222, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2086, file: !2087, line: 63, baseType: !222, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2086, file: !2087, line: 64, baseType: !222, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2086, file: !2087, line: 65, baseType: !222, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2086, file: !2087, line: 66, baseType: !222, size: 64, offset: 320)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2086, file: !2087, line: 68, baseType: !222, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2086, file: !2087, line: 69, baseType: !222, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2086, file: !2087, line: 70, baseType: !222, size: 64, offset: 512)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2086, file: !2087, line: 71, baseType: !222, size: 64, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2086, file: !2087, line: 72, baseType: !222, size: 64, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2086, file: !2087, line: 73, baseType: !222, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2086, file: !2087, line: 74, baseType: !222, size: 64, offset: 768)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2086, file: !2087, line: 75, baseType: !222, size: 64, offset: 832)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2086, file: !2087, line: 76, baseType: !222, size: 64, offset: 896)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2086, file: !2087, line: 81, baseType: !222, size: 64, offset: 960)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2086, file: !2087, line: 83, baseType: !222, size: 64, offset: 1024)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2086, file: !2087, line: 84, baseType: !222, size: 64, offset: 1088)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2086, file: !2087, line: 85, baseType: !222, size: 64, offset: 1152)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2086, file: !2087, line: 86, baseType: !222, size: 64, offset: 1216)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2086, file: !2087, line: 87, baseType: !222, size: 64, offset: 1280)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2062, file: !2000, line: 96, baseType: !298, size: 32, offset: 1024)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2005, file: !2000, line: 308, baseType: !2112, size: 4608, align: 512)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2000, line: 289, size: 4608, align: 512, elements: !2113)
!2113 = !{!2114, !2115, !2122}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2112, file: !2000, line: 290, baseType: !2023, size: 4096, align: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2112, file: !2000, line: 291, baseType: !2116, size: 512, offset: 4096)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2000, line: 268, size: 512, elements: !2117)
!2117 = !{!2118, !2119, !2120}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2116, file: !2000, line: 269, baseType: !302, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2116, file: !2000, line: 270, baseType: !302, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2116, file: !2000, line: 271, baseType: !2121, size: 384, offset: 128)
!2121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 384, elements: !1452)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2112, file: !2000, line: 292, baseType: !2123, offset: 4608)
!2123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, elements: !1550)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2005, file: !2000, line: 309, baseType: !2125, size: 32768)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, size: 32768, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 4096)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1038, file: !615, line: 378, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1034, file: !615, line: 384, baseType: !1331, size: 192, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !885, file: !615, line: 500, baseType: !635, offset: 6656)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !885, file: !615, line: 501, baseType: !2133, size: 64, offset: 6656)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !615, line: 387, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !885, file: !615, line: 516, baseType: !1540, size: 64, offset: 6720)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !885, file: !615, line: 519, baseType: !235, size: 64, offset: 6784)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !885, file: !615, line: 521, baseType: !2138, size: 64, offset: 6848)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !615, line: 521, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !885, file: !615, line: 545, baseType: !654, size: 32, offset: 6912)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !885, file: !615, line: 548, baseType: !377, size: 8, offset: 6944)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !885, file: !615, line: 550, baseType: !2143, offset: 6952)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2144, line: 142, elements: !536)
!2144 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !885, file: !615, line: 554, baseType: !1788, size: 256, offset: 6976)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !885, file: !615, line: 557, baseType: !298, size: 32, offset: 7232)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !882, file: !615, line: 565, baseType: !2148, offset: 7296)
!2148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, elements: !2149)
!2149 = !{!2150}
!2150 = !DISubrange(count: -1)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !878, file: !615, line: 151, baseType: !654, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !871, file: !615, line: 156, baseType: !635, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !615, line: 159, baseType: !2154, size: 128)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !619, file: !615, line: 159, size: 128, elements: !2155)
!2155 = !{!2156, !2159}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2154, file: !615, line: 161, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !615, line: 161, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2154, file: !615, line: 162, baseType: !147, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !619, file: !615, line: 176, baseType: !248, size: 128, align: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !615, line: 179, baseType: !2162, size: 32, offset: 384)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !615, line: 179, size: 32, elements: !2163)
!2163 = !{!2164, !2165, !2166, !2167}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2162, file: !615, line: 184, baseType: !654, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2162, file: !615, line: 192, baseType: !5, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2162, file: !615, line: 194, baseType: !5, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2162, file: !615, line: 195, baseType: !167, size: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !614, file: !615, line: 199, baseType: !654, size: 32, offset: 416)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !549, file: !35, line: 1964, baseType: !2170, size: 64, offset: 1344)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!210, !483, !2173}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2175, line: 12, size: 256, elements: !2176)
!2175 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2176 = !{!2177, !2178, !2179, !2180, !2181}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2174, file: !2175, line: 13, baseType: !650, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2174, file: !2175, line: 16, baseType: !167, size: 32, offset: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2174, file: !2175, line: 23, baseType: !222, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2174, file: !2175, line: 30, baseType: !222, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2174, file: !2175, line: 33, baseType: !2182, size: 64, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !615, line: 27, flags: DIFlagFwdDecl)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !549, file: !35, line: 1966, baseType: !2170, size: 64, offset: 1408)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !484, file: !35, line: 1424, baseType: !2186, size: 64, offset: 448)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2188)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !23, line: 322, size: 704, elements: !2189)
!2189 = !{!2190, !2236, !2240, !2244, !2245, !2246, !2247, !2248, !2253, !2258, !2262}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2188, file: !23, line: 323, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!167, !2194}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !23, line: 294, size: 1600, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2221, !2222, !2223}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2195, file: !23, line: 295, baseType: !528, size: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2195, file: !23, line: 296, baseType: !487, size: 128, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2195, file: !23, line: 297, baseType: !487, size: 128, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2195, file: !23, line: 298, baseType: !487, size: 128, offset: 384)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2195, file: !23, line: 299, baseType: !998, size: 192, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2195, file: !23, line: 300, baseType: !635, offset: 704)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2195, file: !23, line: 301, baseType: !654, size: 32, offset: 704)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2195, file: !23, line: 302, baseType: !483, size: 64, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2195, file: !23, line: 303, baseType: !2206, size: 64, offset: 832)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !23, line: 68, size: 64, elements: !2207)
!2207 = !{!2208, !2220}
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2206, file: !23, line: 69, baseType: !2209, size: 32)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2206, file: !23, line: 69, size: 32, elements: !2210)
!2210 = !{!2211, !2212, !2213}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2209, file: !23, line: 70, baseType: !318, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2209, file: !23, line: 71, baseType: !326, size: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2209, file: !23, line: 72, baseType: !2214, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2215, line: 24, baseType: !2216)
!2215 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2215, line: 22, size: 32, elements: !2217)
!2217 = !{!2218}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2216, file: !2215, line: 23, baseType: !2219, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2215, line: 20, baseType: !324)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2206, file: !23, line: 74, baseType: !22, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2195, file: !23, line: 304, baseType: !418, size: 64, offset: 896)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2195, file: !23, line: 305, baseType: !222, size: 64, offset: 960)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2195, file: !23, line: 306, baseType: !2224, size: 576, offset: 1024)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !23, line: 205, size: 576, elements: !2225)
!2225 = !{!2226, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2224, file: !23, line: 206, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !23, line: 66, baseType: !108)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2224, file: !23, line: 207, baseType: !2227, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2224, file: !23, line: 208, baseType: !2227, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2224, file: !23, line: 209, baseType: !2227, size: 64, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2224, file: !23, line: 210, baseType: !2227, size: 64, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2224, file: !23, line: 211, baseType: !2227, size: 64, offset: 320)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2224, file: !23, line: 212, baseType: !2227, size: 64, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2224, file: !23, line: 213, baseType: !208, size: 64, offset: 448)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2224, file: !23, line: 214, baseType: !208, size: 64, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2188, file: !23, line: 324, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!2194, !483, !167}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2188, file: !23, line: 325, baseType: !2241, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !2194}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2188, file: !23, line: 326, baseType: !2191, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2188, file: !23, line: 327, baseType: !2191, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2188, file: !23, line: 328, baseType: !2191, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2188, file: !23, line: 329, baseType: !577, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2188, file: !23, line: 332, baseType: !2249, size: 64, offset: 448)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!2252, !310}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2188, file: !23, line: 333, baseType: !2254, size: 64, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!167, !310, !2257}
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2188, file: !23, line: 335, baseType: !2259, size: 64, offset: 576)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!167, !310, !2252}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2188, file: !23, line: 337, baseType: !2263, size: 64, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!167, !483, !2266}
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !484, file: !35, line: 1425, baseType: !2268, size: 64, offset: 512)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2270)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !23, line: 428, size: 704, elements: !2271)
!2271 = !{!2272, !2276, !2277, !2281, !2282, !2283, !2298, !2321, !2325, !2326, !2349}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2270, file: !23, line: 429, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!167, !483, !167, !167, !428}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2270, file: !23, line: 430, baseType: !577, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2270, file: !23, line: 431, baseType: !2278, size: 64, offset: 128)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!167, !483, !5}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2270, file: !23, line: 432, baseType: !2278, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2270, file: !23, line: 433, baseType: !577, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2270, file: !23, line: 434, baseType: !2284, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!167, !483, !167, !2287}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !23, line: 415, size: 256, elements: !2289)
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2288, file: !23, line: 416, baseType: !167, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2288, file: !23, line: 417, baseType: !5, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2288, file: !23, line: 418, baseType: !5, size: 32, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2288, file: !23, line: 420, baseType: !5, size: 32, offset: 96)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2288, file: !23, line: 421, baseType: !5, size: 32, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2288, file: !23, line: 422, baseType: !5, size: 32, offset: 160)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2288, file: !23, line: 423, baseType: !5, size: 32, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2288, file: !23, line: 424, baseType: !5, size: 32, offset: 224)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2270, file: !23, line: 435, baseType: !2299, size: 64, offset: 384)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!167, !483, !2206, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !23, line: 343, size: 960, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2303, file: !23, line: 344, baseType: !167, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2303, file: !23, line: 345, baseType: !302, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2303, file: !23, line: 346, baseType: !302, size: 64, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2303, file: !23, line: 347, baseType: !302, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2303, file: !23, line: 348, baseType: !302, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2303, file: !23, line: 349, baseType: !302, size: 64, offset: 320)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2303, file: !23, line: 350, baseType: !302, size: 64, offset: 384)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2303, file: !23, line: 351, baseType: !684, size: 64, offset: 448)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2303, file: !23, line: 353, baseType: !684, size: 64, offset: 512)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2303, file: !23, line: 354, baseType: !167, size: 32, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2303, file: !23, line: 355, baseType: !167, size: 32, offset: 608)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2303, file: !23, line: 356, baseType: !302, size: 64, offset: 640)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2303, file: !23, line: 357, baseType: !302, size: 64, offset: 704)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2303, file: !23, line: 358, baseType: !302, size: 64, offset: 768)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2303, file: !23, line: 359, baseType: !684, size: 64, offset: 832)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2303, file: !23, line: 360, baseType: !167, size: 32, offset: 896)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2270, file: !23, line: 436, baseType: !2322, size: 64, offset: 448)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!167, !483, !2266, !2302}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2270, file: !23, line: 438, baseType: !2299, size: 64, offset: 512)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2270, file: !23, line: 439, baseType: !2327, size: 64, offset: 576)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!167, !483, !2330}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !23, line: 409, size: 1408, elements: !2332)
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2331, file: !23, line: 410, baseType: !5, size: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2331, file: !23, line: 411, baseType: !2335, size: 1344, offset: 64)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2336, size: 1344, elements: !541)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !23, line: 395, size: 448, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2348}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2336, file: !23, line: 396, baseType: !5, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2336, file: !23, line: 397, baseType: !5, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2336, file: !23, line: 399, baseType: !5, size: 32, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2336, file: !23, line: 400, baseType: !5, size: 32, offset: 96)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2336, file: !23, line: 401, baseType: !5, size: 32, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2336, file: !23, line: 402, baseType: !5, size: 32, offset: 160)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2336, file: !23, line: 403, baseType: !5, size: 32, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2336, file: !23, line: 404, baseType: !304, size: 64, offset: 256)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2336, file: !23, line: 405, baseType: !2347, size: 64, offset: 320)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !228, line: 126, baseType: !302)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2336, file: !23, line: 406, baseType: !2347, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2270, file: !23, line: 440, baseType: !2278, size: 64, offset: 640)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !484, file: !35, line: 1426, baseType: !2351, size: 64, offset: 576)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2353)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 49, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !484, file: !35, line: 1427, baseType: !222, size: 64, offset: 640)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !484, file: !35, line: 1428, baseType: !222, size: 64, offset: 704)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !484, file: !35, line: 1429, baseType: !222, size: 64, offset: 768)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !484, file: !35, line: 1430, baseType: !265, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !484, file: !35, line: 1431, baseType: !674, size: 256, offset: 896)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !484, file: !35, line: 1432, baseType: !167, size: 32, offset: 1152)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !484, file: !35, line: 1433, baseType: !654, size: 32, offset: 1184)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !484, file: !35, line: 1437, baseType: !2362, size: 64, offset: 1216)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1437, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !484, file: !35, line: 1449, baseType: !2367, size: 64, offset: 1280)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !281, line: 34, size: 64, elements: !2368)
!2368 = !{!2369}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2367, file: !281, line: 35, baseType: !284, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !484, file: !35, line: 1450, baseType: !487, size: 128, offset: 1344)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !484, file: !35, line: 1451, baseType: !2372, size: 64, offset: 1472)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 699, flags: DIFlagFwdDecl)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !484, file: !35, line: 1452, baseType: !1754, size: 64, offset: 1536)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !484, file: !35, line: 1453, baseType: !2376, size: 64, offset: 1600)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1453, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !484, file: !35, line: 1454, baseType: !528, size: 128, offset: 1664)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !484, file: !35, line: 1455, baseType: !5, size: 32, offset: 1792)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !484, file: !35, line: 1456, baseType: !2381, size: 2432, offset: 1856)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !23, line: 518, size: 2432, elements: !2382)
!2382 = !{!2383, !2384, !2385, !2387, !2419}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2381, file: !23, line: 519, baseType: !5, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2381, file: !23, line: 520, baseType: !674, size: 256, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2381, file: !23, line: 521, baseType: !2386, size: 192, offset: 320)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 192, elements: !541)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2381, file: !23, line: 522, baseType: !2388, size: 1728, offset: 512)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2389, size: 1728, elements: !541)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !23, line: 222, size: 576, elements: !2390)
!2390 = !{!2391, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2389, file: !23, line: 223, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !23, line: 443, size: 256, elements: !2394)
!2394 = !{!2395, !2396, !2409, !2410}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2393, file: !23, line: 444, baseType: !167, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2393, file: !23, line: 445, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2399)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !23, line: 310, size: 512, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2399, file: !23, line: 311, baseType: !577, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2399, file: !23, line: 312, baseType: !577, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2399, file: !23, line: 313, baseType: !577, size: 64, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2399, file: !23, line: 314, baseType: !577, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2399, file: !23, line: 315, baseType: !2191, size: 64, offset: 256)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2399, file: !23, line: 316, baseType: !2191, size: 64, offset: 320)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2399, file: !23, line: 317, baseType: !2191, size: 64, offset: 384)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2399, file: !23, line: 318, baseType: !2263, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2393, file: !23, line: 446, baseType: !160, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2393, file: !23, line: 447, baseType: !2392, size: 64, offset: 192)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2389, file: !23, line: 224, baseType: !167, size: 32, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2389, file: !23, line: 226, baseType: !487, size: 128, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2389, file: !23, line: 227, baseType: !222, size: 64, offset: 256)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2389, file: !23, line: 228, baseType: !5, size: 32, offset: 320)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2389, file: !23, line: 229, baseType: !5, size: 32, offset: 352)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2389, file: !23, line: 230, baseType: !2227, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2389, file: !23, line: 231, baseType: !2227, size: 64, offset: 448)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2389, file: !23, line: 232, baseType: !147, size: 64, offset: 512)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2381, file: !23, line: 523, baseType: !2420, size: 192, offset: 2240)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2397, size: 192, elements: !541)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !484, file: !35, line: 1458, baseType: !2422, size: 2112, offset: 4288)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1410, size: 2112, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2422, file: !35, line: 1411, baseType: !167, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2422, file: !35, line: 1412, baseType: !1310, size: 128, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2422, file: !35, line: 1413, baseType: !2427, size: 1920, offset: 192)
!2427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2428, size: 1920, elements: !541)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2429, line: 12, size: 640, elements: !2430)
!2429 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2430 = !{!2431, !2439, !2441, !2446, !2447}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2428, file: !2429, line: 13, baseType: !2432, size: 320)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2433, line: 17, size: 320, elements: !2434)
!2433 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2434 = !{!2435, !2436, !2437, !2438}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2432, file: !2433, line: 18, baseType: !167, size: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2432, file: !2433, line: 19, baseType: !167, size: 32, offset: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2432, file: !2433, line: 20, baseType: !1310, size: 128, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2432, file: !2433, line: 22, baseType: !248, size: 128, align: 64, offset: 192)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2428, file: !2429, line: 14, baseType: !2440, size: 64, offset: 320)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2428, file: !2429, line: 15, baseType: !2442, size: 64, offset: 384)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2443, line: 16, size: 64, elements: !2444)
!2443 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2444 = !{!2445}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2442, file: !2443, line: 17, baseType: !1041, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2428, file: !2429, line: 16, baseType: !1310, size: 128, offset: 448)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2428, file: !2429, line: 17, baseType: !654, size: 32, offset: 576)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !484, file: !35, line: 1465, baseType: !147, size: 64, offset: 6400)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !484, file: !35, line: 1468, baseType: !298, size: 32, offset: 6464)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !484, file: !35, line: 1470, baseType: !208, size: 64, offset: 6528)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !484, file: !35, line: 1471, baseType: !208, size: 64, offset: 6592)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !484, file: !35, line: 1473, baseType: !110, size: 32, offset: 6656)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !484, file: !35, line: 1474, baseType: !2454, size: 64, offset: 6720)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 603, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !484, file: !35, line: 1477, baseType: !2457, size: 256, offset: 6784)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 256, elements: !2048)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !484, file: !35, line: 1478, baseType: !2459, size: 128, offset: 7040)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2460, line: 18, baseType: !2461)
!2460 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2460, line: 16, size: 128, elements: !2462)
!2462 = !{!2463}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2461, file: !2460, line: 17, baseType: !2464, size: 128)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 128, elements: !1562)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !484, file: !35, line: 1480, baseType: !5, size: 32, offset: 7168)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !484, file: !35, line: 1481, baseType: !227, size: 32, offset: 7200)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !484, file: !35, line: 1487, baseType: !998, size: 192, offset: 7232)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !484, file: !35, line: 1493, baseType: !346, size: 64, offset: 7424)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !484, file: !35, line: 1495, baseType: !2470, size: 64, offset: 7488)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !263, line: 135, size: 1024, align: 512, elements: !2473)
!2473 = !{!2474, !2478, !2479, !2486, !2492, !2496, !2500, !2504, !2505, !2509, !2513, !2518, !2522}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2472, file: !263, line: 136, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!167, !265, !5}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2472, file: !263, line: 137, baseType: !2475, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2472, file: !263, line: 138, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!167, !2483, !2485}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2472, file: !263, line: 139, baseType: !2487, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!167, !2483, !5, !346, !2490}
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2472, file: !263, line: 141, baseType: !2493, size: 64, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!167, !2483}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2472, file: !263, line: 142, baseType: !2497, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!167, !265}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2472, file: !263, line: 143, baseType: !2501, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{null, !265}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2472, file: !263, line: 144, baseType: !2501, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2472, file: !263, line: 145, baseType: !2506, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{null, !265, !310}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2472, file: !263, line: 146, baseType: !2510, size: 64, offset: 576)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{!372, !265, !372, !167}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2472, file: !263, line: 147, baseType: !2514, size: 64, offset: 640)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!261, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2472, file: !263, line: 148, baseType: !2519, size: 64, offset: 704)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!167, !428, !377}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2472, file: !263, line: 149, baseType: !2523, size: 64, offset: 768)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!265, !265, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !484, file: !35, line: 1500, baseType: !167, size: 32, offset: 7552)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !484, file: !35, line: 1502, baseType: !2530, size: 448, offset: 7616)
!2530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2175, line: 60, size: 448, elements: !2531)
!2531 = !{!2532, !2537, !2538, !2539, !2540, !2541, !2542}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2530, file: !2175, line: 61, baseType: !2533, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!222, !2536, !2173}
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2530, file: !2175, line: 63, baseType: !2533, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2530, file: !2175, line: 66, baseType: !210, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2530, file: !2175, line: 67, baseType: !167, size: 32, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2530, file: !2175, line: 68, baseType: !5, size: 32, offset: 224)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2530, file: !2175, line: 71, baseType: !487, size: 128, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2530, file: !2175, line: 77, baseType: !2543, size: 64, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !484, file: !35, line: 1505, baseType: !678, size: 64, offset: 8064)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !484, file: !35, line: 1508, baseType: !678, size: 64, offset: 8128)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !484, file: !35, line: 1511, baseType: !167, size: 32, offset: 8192)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !484, file: !35, line: 1514, baseType: !816, size: 32, offset: 8224)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !484, file: !35, line: 1517, baseType: !2549, size: 64, offset: 8256)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1789, line: 18, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !484, file: !35, line: 1518, baseType: !524, size: 64, offset: 8320)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !484, file: !35, line: 1525, baseType: !1540, size: 64, offset: 8384)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !484, file: !35, line: 1532, baseType: !2554, size: 64, offset: 8448)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2555, line: 52, size: 64, elements: !2556)
!2555 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2556 = !{!2557}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2554, file: !2555, line: 53, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2555, line: 40, size: 256, elements: !2560)
!2560 = !{!2561, !2562, !2567}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2559, file: !2555, line: 42, baseType: !635)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2559, file: !2555, line: 44, baseType: !2563, size: 192)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2555, line: 28, size: 192, elements: !2564)
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2563, file: !2555, line: 29, baseType: !487, size: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2563, file: !2555, line: 31, baseType: !210, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2559, file: !2555, line: 49, baseType: !210, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !484, file: !35, line: 1533, baseType: !2554, size: 64, offset: 8512)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !484, file: !35, line: 1534, baseType: !248, size: 128, align: 64, offset: 8576)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !484, file: !35, line: 1535, baseType: !1788, size: 256, offset: 8704)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !484, file: !35, line: 1537, baseType: !998, size: 192, offset: 8960)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !484, file: !35, line: 1542, baseType: !167, size: 32, offset: 9152)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !484, file: !35, line: 1545, baseType: !635, offset: 9184)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !484, file: !35, line: 1546, baseType: !487, size: 128, offset: 9216)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !484, file: !35, line: 1548, baseType: !635, offset: 9344)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !484, file: !35, line: 1549, baseType: !487, size: 128, offset: 9344)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !311, file: !35, line: 624, baseType: !626, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !311, file: !35, line: 631, baseType: !222, size: 64, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !35, line: 639, baseType: !2580, size: 32, offset: 384)
!2580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !35, line: 639, size: 32, elements: !2581)
!2581 = !{!2582, !2584}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2580, file: !35, line: 640, baseType: !2583, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2580, file: !35, line: 641, baseType: !5, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !311, file: !35, line: 643, baseType: !400, size: 32, offset: 416)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !311, file: !35, line: 644, baseType: !418, size: 64, offset: 448)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !311, file: !35, line: 645, baseType: !204, size: 128, offset: 512)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !311, file: !35, line: 646, baseType: !204, size: 128, offset: 640)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !311, file: !35, line: 647, baseType: !204, size: 128, offset: 768)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !311, file: !35, line: 648, baseType: !635, offset: 896)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !311, file: !35, line: 649, baseType: !315, size: 16, offset: 896)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !311, file: !35, line: 650, baseType: !1177, size: 8, offset: 912)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !311, file: !35, line: 651, baseType: !1177, size: 8, offset: 920)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !311, file: !35, line: 652, baseType: !2347, size: 64, offset: 960)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !311, file: !35, line: 659, baseType: !222, size: 64, offset: 1024)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !311, file: !35, line: 660, baseType: !674, size: 256, offset: 1088)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !311, file: !35, line: 662, baseType: !222, size: 64, offset: 1344)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !311, file: !35, line: 663, baseType: !222, size: 64, offset: 1408)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !311, file: !35, line: 665, baseType: !528, size: 128, offset: 1472)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !311, file: !35, line: 666, baseType: !487, size: 128, offset: 1600)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !311, file: !35, line: 675, baseType: !487, size: 128, offset: 1728)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !311, file: !35, line: 676, baseType: !487, size: 128, offset: 1856)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !311, file: !35, line: 677, baseType: !487, size: 128, offset: 1984)
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !35, line: 678, baseType: !2605, size: 128, offset: 2112)
!2605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !35, line: 678, size: 128, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2605, file: !35, line: 679, baseType: !524, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2605, file: !35, line: 680, baseType: !248, size: 128, align: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !311, file: !35, line: 682, baseType: !680, size: 64, offset: 2240)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !311, file: !35, line: 683, baseType: !680, size: 64, offset: 2304)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !311, file: !35, line: 684, baseType: !654, size: 32, offset: 2368)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !311, file: !35, line: 685, baseType: !654, size: 32, offset: 2400)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !311, file: !35, line: 686, baseType: !654, size: 32, offset: 2432)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !311, file: !35, line: 688, baseType: !654, size: 32, offset: 2464)
!2615 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !35, line: 690, baseType: !2616, size: 64, offset: 2496)
!2616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !35, line: 690, size: 64, elements: !2617)
!2617 = !{!2618, !2848}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2616, file: !35, line: 691, baseType: !2619, size: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2621)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1822, size: 2048, elements: !2622)
!2622 = !{!2623, !2624, !2628, !2633, !2637, !2638, !2639, !2643, !2656, !2657, !2672, !2676, !2677, !2681, !2682, !2686, !2691, !2692, !2696, !2700, !2808, !2812, !2813, !2817, !2818, !2822, !2826, !2831, !2835, !2839, !2843, !2847}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2621, file: !35, line: 1823, baseType: !160, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2621, file: !35, line: 1824, baseType: !2625, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!418, !235, !418, !167}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2621, file: !35, line: 1825, baseType: !2629, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{!457, !235, !372, !460, !2632}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2621, file: !35, line: 1826, baseType: !2634, size: 64, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!457, !235, !346, !460, !2632}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2621, file: !35, line: 1827, baseType: !751, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2621, file: !35, line: 1828, baseType: !751, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2621, file: !35, line: 1829, baseType: !2640, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!167, !754, !377}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2621, file: !35, line: 1830, baseType: !2644, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!167, !235, !2647}
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1776, size: 128, elements: !2649)
!2649 = !{!2650, !2655}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2648, file: !35, line: 1777, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1773, baseType: !2652)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!167, !2647, !346, !167, !418, !302, !5}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2648, file: !35, line: 1778, baseType: !418, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2621, file: !35, line: 1831, baseType: !2644, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2621, file: !35, line: 1832, baseType: !2658, size: 64, offset: 576)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!233, !235, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2663, line: 43, size: 128, elements: !2664)
!2663 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2664 = !{!2665, !2671}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2662, file: !2663, line: 44, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2663, line: 37, baseType: !2667)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{null, !235, !2670, !2661}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2662, file: !2663, line: 45, baseType: !233, size: 32, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2621, file: !35, line: 1833, baseType: !2673, size: 64, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!210, !235, !5, !222}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2621, file: !35, line: 1834, baseType: !2673, size: 64, offset: 704)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2621, file: !35, line: 1835, baseType: !2678, size: 64, offset: 768)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!167, !235, !888}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2621, file: !35, line: 1836, baseType: !222, size: 64, offset: 832)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2621, file: !35, line: 1837, baseType: !2683, size: 64, offset: 896)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DISubroutineType(types: !2685)
!2685 = !{!167, !310, !235}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2621, file: !35, line: 1838, baseType: !2687, size: 64, offset: 960)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!167, !235, !2690}
!2690 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1007, baseType: !147)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2621, file: !35, line: 1839, baseType: !2683, size: 64, offset: 1024)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2621, file: !35, line: 1840, baseType: !2693, size: 64, offset: 1088)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!167, !235, !418, !418, !167}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2621, file: !35, line: 1841, baseType: !2697, size: 64, offset: 1152)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!167, !167, !235, !167}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2621, file: !35, line: 1842, baseType: !2701, size: 64, offset: 1216)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!167, !235, !167, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1062, size: 1664, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2738, !2739, !2740, !2753, !2784}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2705, file: !35, line: 1063, baseType: !2704, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2705, file: !35, line: 1064, baseType: !487, size: 128, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2705, file: !35, line: 1065, baseType: !528, size: 128, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2705, file: !35, line: 1066, baseType: !487, size: 128, offset: 320)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2705, file: !35, line: 1069, baseType: !487, size: 128, offset: 448)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2705, file: !35, line: 1072, baseType: !2690, size: 64, offset: 576)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2705, file: !35, line: 1073, baseType: !5, size: 32, offset: 640)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2705, file: !35, line: 1074, baseType: !308, size: 8, offset: 672)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2705, file: !35, line: 1075, baseType: !5, size: 32, offset: 704)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2705, file: !35, line: 1076, baseType: !167, size: 32, offset: 736)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2705, file: !35, line: 1077, baseType: !1310, size: 128, offset: 768)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2705, file: !35, line: 1078, baseType: !235, size: 64, offset: 896)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2705, file: !35, line: 1079, baseType: !418, size: 64, offset: 960)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2705, file: !35, line: 1080, baseType: !418, size: 64, offset: 1024)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2705, file: !35, line: 1082, baseType: !2722, size: 64, offset: 1088)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !35, line: 1314, size: 320, elements: !2724)
!2724 = !{!2725, !2733, !2734, !2735, !2736, !2737}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2723, file: !35, line: 1315, baseType: !2726)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2727, line: 20, baseType: !2728)
!2727 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2727, line: 11, elements: !2729)
!2729 = !{!2730}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2728, file: !2727, line: 12, baseType: !2731)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !647, line: 33, baseType: !2732)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !647, line: 31, elements: !536)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2723, file: !35, line: 1316, baseType: !167, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2723, file: !35, line: 1317, baseType: !167, size: 32, offset: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2723, file: !35, line: 1318, baseType: !2722, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2723, file: !35, line: 1319, baseType: !235, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2723, file: !35, line: 1320, baseType: !248, size: 128, align: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2705, file: !35, line: 1084, baseType: !222, size: 64, offset: 1152)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2705, file: !35, line: 1085, baseType: !222, size: 64, offset: 1216)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2705, file: !35, line: 1087, baseType: !2741, size: 64, offset: 1280)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2743)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !35, line: 1011, size: 128, elements: !2744)
!2744 = !{!2745, !2749}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2743, file: !35, line: 1012, baseType: !2746, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{null, !2704, !2704}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2743, file: !35, line: 1013, baseType: !2750, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{null, !2704}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2705, file: !35, line: 1088, baseType: !2754, size: 64, offset: 1344)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2756)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !35, line: 1016, size: 512, elements: !2757)
!2757 = !{!2758, !2762, !2766, !2767, !2771, !2775, !2779, !2783}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2756, file: !35, line: 1017, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!2690, !2690}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2756, file: !35, line: 1018, baseType: !2763, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{null, !2690}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2756, file: !35, line: 1019, baseType: !2750, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2756, file: !35, line: 1020, baseType: !2768, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{!167, !2704, !167}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2756, file: !35, line: 1021, baseType: !2772, size: 64, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!377, !2704}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2756, file: !35, line: 1022, baseType: !2776, size: 64, offset: 320)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!167, !2704, !167, !490}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2756, file: !35, line: 1023, baseType: !2780, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{null, !2704, !728}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2756, file: !35, line: 1024, baseType: !2772, size: 64, offset: 448)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2705, file: !35, line: 1097, baseType: !2785, size: 256, offset: 1408)
!2785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2705, file: !35, line: 1089, size: 256, elements: !2786)
!2786 = !{!2787, !2796, !2802}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2785, file: !35, line: 1090, baseType: !2788, size: 256)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2789, line: 10, size: 256, elements: !2790)
!2789 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2790 = !{!2791, !2792, !2795}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2788, file: !2789, line: 11, baseType: !298, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2788, file: !2789, line: 12, baseType: !2793, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2789, line: 5, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2788, file: !2789, line: 13, baseType: !487, size: 128, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2785, file: !35, line: 1091, baseType: !2797, size: 64)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2789, line: 17, size: 64, elements: !2798)
!2798 = !{!2799}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2797, file: !2789, line: 18, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2789, line: 16, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2785, file: !35, line: 1096, baseType: !2803, size: 192)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2785, file: !35, line: 1092, size: 192, elements: !2804)
!2804 = !{!2805, !2806, !2807}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2803, file: !35, line: 1093, baseType: !487, size: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2803, file: !35, line: 1094, baseType: !167, size: 32, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2803, file: !35, line: 1095, baseType: !5, size: 32, offset: 160)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2621, file: !35, line: 1843, baseType: !2809, size: 64, offset: 1280)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!457, !235, !613, !167, !460, !2632, !167}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2621, file: !35, line: 1844, baseType: !928, size: 64, offset: 1344)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2621, file: !35, line: 1845, baseType: !2814, size: 64, offset: 1408)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!167, !167}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2621, file: !35, line: 1846, baseType: !2701, size: 64, offset: 1472)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2621, file: !35, line: 1847, baseType: !2819, size: 64, offset: 1536)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!457, !1929, !235, !2632, !460, !5}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2621, file: !35, line: 1848, baseType: !2823, size: 64, offset: 1600)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!457, !235, !2632, !1929, !460, !5}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2621, file: !35, line: 1849, baseType: !2827, size: 64, offset: 1664)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!167, !235, !210, !2830, !728}
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2621, file: !35, line: 1850, baseType: !2832, size: 64, offset: 1728)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!210, !235, !167, !418, !418}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2621, file: !35, line: 1852, baseType: !2836, size: 64, offset: 1792)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{null, !603, !235}
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2621, file: !35, line: 1856, baseType: !2840, size: 64, offset: 1856)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{!457, !235, !418, !235, !418, !460, !5}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2621, file: !35, line: 1858, baseType: !2844, size: 64, offset: 1920)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!418, !235, !418, !235, !418, !418, !5}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2621, file: !35, line: 1861, baseType: !2693, size: 64, offset: 1984)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2616, file: !35, line: 692, baseType: !556, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !311, file: !35, line: 694, baseType: !2850, size: 64, offset: 2560)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 1100, size: 384, elements: !2852)
!2852 = !{!2853, !2854, !2855, !2856}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2851, file: !35, line: 1101, baseType: !635)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2851, file: !35, line: 1102, baseType: !487, size: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2851, file: !35, line: 1103, baseType: !487, size: 128, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2851, file: !35, line: 1104, baseType: !487, size: 128, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !311, file: !35, line: 695, baseType: !627, size: 1216, align: 64, offset: 2624)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !311, file: !35, line: 696, baseType: !487, size: 128, offset: 3840)
!2859 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !35, line: 697, baseType: !2860, size: 64, offset: 3968)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !35, line: 697, size: 64, elements: !2861)
!2861 = !{!2862, !2863, !2864, !3173, !3174}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2860, file: !35, line: 698, baseType: !1929, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2860, file: !35, line: 699, baseType: !2372, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2860, file: !35, line: 700, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2867, line: 14, size: 832, elements: !2868)
!2867 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2868 = !{!2869, !3168, !3169, !3170, !3171, !3172}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2866, file: !2867, line: 15, baseType: !2870, size: 512)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2871, line: 64, size: 512, elements: !2872)
!2871 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2872 = !{!2873, !2874, !2875, !2877, !2917, !3019, !3158, !3163, !3164, !3165, !3166, !3167}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2870, file: !2871, line: 65, baseType: !346, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2870, file: !2871, line: 66, baseType: !487, size: 128, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2870, file: !2871, line: 67, baseType: !2876, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2870, file: !2871, line: 68, baseType: !2878, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2871, line: 192, size: 704, elements: !2880)
!2880 = !{!2881, !2882, !2883, !2884}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2879, file: !2871, line: 193, baseType: !487, size: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2879, file: !2871, line: 194, baseType: !635, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2879, file: !2871, line: 195, baseType: !2870, size: 512, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2879, file: !2871, line: 196, baseType: !2885, size: 64, offset: 640)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2887)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2871, line: 156, size: 192, elements: !2888)
!2888 = !{!2889, !2894, !2899}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2887, file: !2871, line: 157, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!167, !2878, !2876}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2887, file: !2871, line: 158, baseType: !2895, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2896)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!346, !2878, !2876}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2887, file: !2871, line: 159, baseType: !2900, size: 64, offset: 128)
!2900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2901)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!167, !2878, !2876, !2904}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2871, line: 148, size: 20736, elements: !2906)
!2906 = !{!2907, !2909, !2911, !2912, !2916}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2905, file: !2871, line: 149, baseType: !2908, size: 192)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 192, elements: !541)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2905, file: !2871, line: 150, baseType: !2910, size: 4096, offset: 192)
!2910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 4096, elements: !1710)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2905, file: !2871, line: 151, baseType: !167, size: 32, offset: 4288)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2905, file: !2871, line: 152, baseType: !2913, size: 16384, offset: 4320)
!2913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 16384, elements: !2914)
!2914 = !{!2915}
!2915 = !DISubrange(count: 2048)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2905, file: !2871, line: 153, baseType: !167, size: 32, offset: 20704)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2870, file: !2871, line: 69, baseType: !2918, size: 64, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2871, line: 138, size: 448, elements: !2920)
!2920 = !{!2921, !2925, !2944, !2946, !2979, !3009, !3013}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2919, file: !2871, line: 139, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{null, !2876}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2919, file: !2871, line: 140, baseType: !2926, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2928)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2929, line: 230, size: 128, elements: !2930)
!2929 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2930 = !{!2931, !2940}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2928, file: !2929, line: 231, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!457, !2876, !2935, !372}
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2929, line: 30, size: 128, elements: !2937)
!2937 = !{!2938, !2939}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2936, file: !2929, line: 31, baseType: !346, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2936, file: !2929, line: 32, baseType: !314, size: 16, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2928, file: !2929, line: 232, baseType: !2941, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!457, !2876, !2935, !346, !460}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2919, file: !2871, line: 141, baseType: !2945, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2919, file: !2871, line: 142, baseType: !2947, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2950)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2929, line: 84, size: 320, elements: !2951)
!2951 = !{!2952, !2953, !2957, !2976, !2977}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2950, file: !2929, line: 85, baseType: !346, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2950, file: !2929, line: 86, baseType: !2954, size: 64, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{!314, !2876, !2935, !167}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2950, file: !2929, line: 88, baseType: !2958, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!314, !2876, !2961, !167}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2929, line: 168, size: 448, elements: !2963)
!2963 = !{!2964, !2965, !2966, !2967, !2971, !2972}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2962, file: !2929, line: 169, baseType: !2936, size: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2962, file: !2929, line: 170, baseType: !460, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2962, file: !2929, line: 171, baseType: !147, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2962, file: !2929, line: 172, baseType: !2968, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!457, !235, !2876, !2961, !372, !418, !460}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2962, file: !2929, line: 174, baseType: !2968, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2962, file: !2929, line: 176, baseType: !2973, size: 64, offset: 384)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!167, !235, !2876, !2961, !888}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2950, file: !2929, line: 90, baseType: !2945, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2950, file: !2929, line: 91, baseType: !2978, size: 64, offset: 256)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2919, file: !2871, line: 143, baseType: !2980, size: 64, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!2983, !2876}
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2985)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !2986)
!2986 = !{!2987, !2988, !2992, !2996, !3004, !3008}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2985, file: !29, line: 40, baseType: !28, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2985, file: !29, line: 41, baseType: !2989, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!377}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2985, file: !29, line: 42, baseType: !2993, size: 64, offset: 128)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!147}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2985, file: !29, line: 43, baseType: !2997, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!3000, !3002}
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2985, file: !29, line: 44, baseType: !3005, size: 64, offset: 256)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!3000}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2985, file: !29, line: 45, baseType: !354, size: 64, offset: 320)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2919, file: !2871, line: 144, baseType: !3010, size: 64, offset: 320)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!3000, !2876}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2919, file: !2871, line: 145, baseType: !3014, size: 64, offset: 384)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !2876, !3017, !3018}
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2870, file: !2871, line: 70, baseType: !3020, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !508, line: 123, size: 1024, elements: !3022)
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3151, !3152, !3153, !3154, !3155}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3021, file: !508, line: 124, baseType: !654, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3021, file: !508, line: 125, baseType: !654, size: 32, offset: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3021, file: !508, line: 135, baseType: !3020, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3021, file: !508, line: 136, baseType: !346, size: 64, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3021, file: !508, line: 138, baseType: !667, size: 192, align: 64, offset: 192)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3021, file: !508, line: 140, baseType: !3000, size: 64, offset: 384)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3021, file: !508, line: 141, baseType: !5, size: 32, offset: 448)
!3030 = !DIDerivedType(tag: DW_TAG_member, scope: !3021, file: !508, line: 142, baseType: !3031, size: 256, offset: 512)
!3031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3021, file: !508, line: 142, size: 256, elements: !3032)
!3032 = !{!3033, !3079, !3083}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3031, file: !508, line: 143, baseType: !3034, size: 192)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !508, line: 91, size: 192, elements: !3035)
!3035 = !{!3036, !3037, !3038}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3034, file: !508, line: 92, baseType: !222, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3034, file: !508, line: 94, baseType: !663, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3034, file: !508, line: 100, baseType: !3039, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !508, line: 180, size: 704, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3051, !3052, !3053, !3077, !3078}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3040, file: !508, line: 182, baseType: !3020, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3040, file: !508, line: 183, baseType: !5, size: 32, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3040, file: !508, line: 186, baseType: !3045, size: 192, offset: 128)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3046, line: 19, size: 192, elements: !3047)
!3046 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3047 = !{!3048, !3049, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3045, file: !3046, line: 20, baseType: !631, size: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3045, file: !3046, line: 21, baseType: !5, size: 32, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3045, file: !3046, line: 22, baseType: !5, size: 32, offset: 160)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3040, file: !508, line: 187, baseType: !298, size: 32, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3040, file: !508, line: 188, baseType: !298, size: 32, offset: 352)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3040, file: !508, line: 189, baseType: !3054, size: 64, offset: 384)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !508, line: 168, size: 320, elements: !3056)
!3056 = !{!3057, !3061, !3065, !3069, !3073}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3055, file: !508, line: 169, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!167, !603, !3039}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3055, file: !508, line: 171, baseType: !3062, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!167, !3020, !346, !314}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3055, file: !508, line: 173, baseType: !3066, size: 64, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!167, !3020}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3055, file: !508, line: 174, baseType: !3070, size: 64, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!167, !3020, !3020, !346}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3055, file: !508, line: 176, baseType: !3074, size: 64, offset: 256)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!167, !603, !3020, !3039}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3040, file: !508, line: 192, baseType: !487, size: 128, offset: 448)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3040, file: !508, line: 194, baseType: !1310, size: 128, offset: 576)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3031, file: !508, line: 144, baseType: !3080, size: 64)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !508, line: 103, size: 64, elements: !3081)
!3081 = !{!3082}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3080, file: !508, line: 104, baseType: !3020, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3031, file: !508, line: 145, baseType: !3084, size: 256)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !508, line: 107, size: 256, elements: !3085)
!3085 = !{!3086, !3146, !3149, !3150}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3084, file: !508, line: 108, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3089)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !508, line: 217, size: 768, elements: !3090)
!3090 = !{!3091, !3111, !3115, !3119, !3123, !3127, !3131, !3135, !3136, !3137, !3138, !3142}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3089, file: !508, line: 222, baseType: !3092, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!167, !3095}
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !508, line: 197, size: 1088, elements: !3097)
!3097 = !{!3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3096, file: !508, line: 199, baseType: !3020, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3096, file: !508, line: 200, baseType: !235, size: 64, offset: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3096, file: !508, line: 201, baseType: !603, size: 64, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3096, file: !508, line: 202, baseType: !147, size: 64, offset: 192)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3096, file: !508, line: 205, baseType: !998, size: 192, offset: 256)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3096, file: !508, line: 206, baseType: !998, size: 192, offset: 448)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3096, file: !508, line: 207, baseType: !167, size: 32, offset: 640)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3096, file: !508, line: 208, baseType: !487, size: 128, offset: 704)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3096, file: !508, line: 209, baseType: !372, size: 64, offset: 832)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3096, file: !508, line: 211, baseType: !460, size: 64, offset: 896)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3096, file: !508, line: 212, baseType: !377, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3096, file: !508, line: 213, baseType: !377, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3096, file: !508, line: 214, baseType: !916, size: 64, offset: 1024)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3089, file: !508, line: 223, baseType: !3112, size: 64, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{null, !3095}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3089, file: !508, line: 236, baseType: !3116, size: 64, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!167, !603, !147}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3089, file: !508, line: 238, baseType: !3120, size: 64, offset: 192)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!147, !603, !2632}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3089, file: !508, line: 239, baseType: !3124, size: 64, offset: 256)
!3124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!147, !603, !147, !2632}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3089, file: !508, line: 240, baseType: !3128, size: 64, offset: 320)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{null, !603, !147}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3089, file: !508, line: 242, baseType: !3132, size: 64, offset: 384)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!457, !3095, !372, !460, !418}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3089, file: !508, line: 252, baseType: !460, size: 64, offset: 448)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3089, file: !508, line: 259, baseType: !377, size: 8, offset: 512)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3089, file: !508, line: 260, baseType: !3132, size: 64, offset: 576)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3089, file: !508, line: 263, baseType: !3139, size: 64, offset: 640)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!233, !3095, !2661}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3089, file: !508, line: 266, baseType: !3143, size: 64, offset: 704)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!167, !3095, !888}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3084, file: !508, line: 109, baseType: !3147, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !508, line: 31, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3084, file: !508, line: 110, baseType: !418, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3084, file: !508, line: 111, baseType: !3020, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3021, file: !508, line: 148, baseType: !147, size: 64, offset: 768)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3021, file: !508, line: 154, baseType: !302, size: 64, offset: 832)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3021, file: !508, line: 156, baseType: !315, size: 16, offset: 896)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3021, file: !508, line: 157, baseType: !314, size: 16, offset: 912)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3021, file: !508, line: 158, baseType: !3156, size: 64, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !508, line: 32, flags: DIFlagFwdDecl)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2870, file: !2871, line: 71, baseType: !3159, size: 32, offset: 448)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3160, line: 19, size: 32, elements: !3161)
!3160 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3161 = !{!3162}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3159, file: !3160, line: 20, baseType: !1055, size: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2870, file: !2871, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2870, file: !2871, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2870, file: !2871, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2870, file: !2871, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2870, file: !2871, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2866, file: !2867, line: 16, baseType: !160, size: 64, offset: 512)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2866, file: !2867, line: 17, baseType: !2619, size: 64, offset: 576)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2866, file: !2867, line: 18, baseType: !487, size: 128, offset: 640)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2866, file: !2867, line: 19, baseType: !400, size: 32, offset: 768)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2866, file: !2867, line: 20, baseType: !5, size: 32, offset: 800)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2860, file: !35, line: 701, baseType: !372, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2860, file: !35, line: 702, baseType: !5, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !311, file: !35, line: 705, baseType: !110, size: 32, offset: 4032)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !311, file: !35, line: 708, baseType: !110, size: 32, offset: 4064)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !311, file: !35, line: 709, baseType: !2454, size: 64, offset: 4096)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !311, file: !35, line: 720, baseType: !147, size: 64, offset: 4160)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !266, file: !263, line: 98, baseType: !3180, size: 256, offset: 448)
!3180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 256, elements: !2048)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !266, file: !263, line: 101, baseType: !3182, size: 32, offset: 704)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3183, line: 25, size: 32, elements: !3184)
!3183 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3184 = !{!3185}
!3185 = !DIDerivedType(tag: DW_TAG_member, scope: !3182, file: !3183, line: 26, baseType: !3186, size: 32)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3182, file: !3183, line: 26, size: 32, elements: !3187)
!3187 = !{!3188}
!3188 = !DIDerivedType(tag: DW_TAG_member, scope: !3186, file: !3183, line: 30, baseType: !3189, size: 32)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3186, file: !3183, line: 30, size: 32, elements: !3190)
!3190 = !{!3191, !3192}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3189, file: !3183, line: 31, baseType: !635)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3189, file: !3183, line: 32, baseType: !167, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !266, file: !263, line: 102, baseType: !2470, size: 64, offset: 768)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !266, file: !263, line: 103, baseType: !483, size: 64, offset: 832)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !266, file: !263, line: 104, baseType: !222, size: 64, offset: 896)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !266, file: !263, line: 105, baseType: !147, size: 64, offset: 960)
!3197 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !263, line: 107, baseType: !3198, size: 128, offset: 1024)
!3198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !263, line: 107, size: 128, elements: !3199)
!3199 = !{!3200, !3201}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3198, file: !263, line: 108, baseType: !487, size: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3198, file: !263, line: 109, baseType: !2670, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !266, file: !263, line: 111, baseType: !487, size: 128, offset: 1152)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !266, file: !263, line: 112, baseType: !487, size: 128, offset: 1280)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !266, file: !263, line: 120, baseType: !3205, size: 128, offset: 1408)
!3205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !263, line: 116, size: 128, elements: !3206)
!3206 = !{!3207, !3208, !3209}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3205, file: !263, line: 117, baseType: !528, size: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3205, file: !263, line: 118, baseType: !280, size: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3205, file: !263, line: 119, baseType: !248, size: 128, align: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !236, file: !35, line: 922, baseType: !310, size: 64, offset: 256)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !236, file: !35, line: 923, baseType: !2619, size: 64, offset: 320)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !236, file: !35, line: 929, baseType: !635, offset: 384)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !236, file: !35, line: 930, baseType: !34, size: 32, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !236, file: !35, line: 931, baseType: !678, size: 64, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !236, file: !35, line: 932, baseType: !5, size: 32, offset: 512)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !236, file: !35, line: 933, baseType: !227, size: 32, offset: 544)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !236, file: !35, line: 934, baseType: !998, size: 192, offset: 576)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !236, file: !35, line: 935, baseType: !418, size: 64, offset: 768)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !236, file: !35, line: 936, baseType: !3220, size: 192, offset: 832)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 885, size: 192, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3220, file: !35, line: 886, baseType: !2726)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3220, file: !35, line: 887, baseType: !1300, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3220, file: !35, line: 888, baseType: !43, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3220, file: !35, line: 889, baseType: !318, size: 32, offset: 96)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3220, file: !35, line: 889, baseType: !318, size: 32, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3220, file: !35, line: 890, baseType: !167, size: 32, offset: 160)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !236, file: !35, line: 937, baseType: !1376, size: 64, offset: 1024)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !236, file: !35, line: 938, baseType: !3230, size: 256, offset: 1088)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 896, size: 256, elements: !3231)
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3237}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3230, file: !35, line: 897, baseType: !222, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3230, file: !35, line: 898, baseType: !5, size: 32, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3230, file: !35, line: 899, baseType: !5, size: 32, offset: 96)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3230, file: !35, line: 902, baseType: !5, size: 32, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3230, file: !35, line: 903, baseType: !5, size: 32, offset: 160)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3230, file: !35, line: 904, baseType: !418, size: 64, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !236, file: !35, line: 940, baseType: !302, size: 64, offset: 1344)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !236, file: !35, line: 945, baseType: !147, size: 64, offset: 1408)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !236, file: !35, line: 949, baseType: !487, size: 128, offset: 1472)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !236, file: !35, line: 950, baseType: !487, size: 128, offset: 1600)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !236, file: !35, line: 952, baseType: !626, size: 64, offset: 1728)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !236, file: !35, line: 953, baseType: !816, size: 32, offset: 1792)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !236, file: !35, line: 954, baseType: !816, size: 32, offset: 1824)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !2663, line: 46, baseType: !2662)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !157, file: !154, line: 61, baseType: !3248, size: 64, offset: 512)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!167, !168}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !157, file: !154, line: 63, baseType: !3252, size: 64, offset: 576)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!457, !168, !3255, !372, !460}
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !228, line: 87, baseType: !5)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !153, file: !154, line: 87, baseType: !2866, size: 832, offset: 640)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !153, file: !154, line: 88, baseType: !3258, size: 64, offset: 1472)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !58, line: 461, size: 5568, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3266, !3267, !3318, !3391, !3392, !3393, !3394, !3395, !3404, !3509, !3522, !3525, !3526, !3530, !3532, !3533, !3534, !3538, !3544, !3545, !3548, !3552, !3555, !3556, !3557, !3558, !3559, !3591, !3592, !3593, !3596, !3599, !3600, !3601, !3602}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3259, file: !58, line: 462, baseType: !2870, size: 512)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3259, file: !58, line: 463, baseType: !3258, size: 64, offset: 512)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3259, file: !58, line: 465, baseType: !3264, size: 64, offset: 576)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !58, line: 36, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3259, file: !58, line: 467, baseType: !346, size: 64, offset: 640)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3259, file: !58, line: 468, baseType: !3268, size: 64, offset: 704)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3270)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !58, line: 87, size: 384, elements: !3271)
!3271 = !{!3272, !3273, !3274, !3278, !3283, !3287}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3270, file: !58, line: 88, baseType: !346, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3270, file: !58, line: 89, baseType: !2947, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3270, file: !58, line: 90, baseType: !3275, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!167, !3258, !2904}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3270, file: !58, line: 91, baseType: !3279, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!372, !3258, !3282, !3017, !3018}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3270, file: !58, line: 93, baseType: !3284, size: 64, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !3258}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3270, file: !58, line: 95, baseType: !3288, size: 64, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !65, line: 278, size: 1472, elements: !3291)
!3291 = !{!3292, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3290, file: !65, line: 279, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!167, !3258}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3290, file: !65, line: 280, baseType: !3284, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3290, file: !65, line: 281, baseType: !3293, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3290, file: !65, line: 282, baseType: !3293, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3290, file: !65, line: 283, baseType: !3293, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3290, file: !65, line: 284, baseType: !3293, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3290, file: !65, line: 285, baseType: !3293, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3290, file: !65, line: 286, baseType: !3293, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3290, file: !65, line: 287, baseType: !3293, size: 64, offset: 512)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3290, file: !65, line: 288, baseType: !3293, size: 64, offset: 576)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3290, file: !65, line: 289, baseType: !3293, size: 64, offset: 640)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3290, file: !65, line: 290, baseType: !3293, size: 64, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3290, file: !65, line: 291, baseType: !3293, size: 64, offset: 768)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3290, file: !65, line: 292, baseType: !3293, size: 64, offset: 832)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3290, file: !65, line: 293, baseType: !3293, size: 64, offset: 896)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3290, file: !65, line: 294, baseType: !3293, size: 64, offset: 960)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3290, file: !65, line: 295, baseType: !3293, size: 64, offset: 1024)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3290, file: !65, line: 296, baseType: !3293, size: 64, offset: 1088)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3290, file: !65, line: 297, baseType: !3293, size: 64, offset: 1152)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3290, file: !65, line: 298, baseType: !3293, size: 64, offset: 1216)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3290, file: !65, line: 299, baseType: !3293, size: 64, offset: 1280)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3290, file: !65, line: 300, baseType: !3293, size: 64, offset: 1344)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3290, file: !65, line: 301, baseType: !3293, size: 64, offset: 1408)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3259, file: !58, line: 470, baseType: !3319, size: 64, offset: 768)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3321, line: 82, size: 1408, elements: !3322)
!3321 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3328, !3329, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3386, !3389, !3390}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3320, file: !3321, line: 83, baseType: !346, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3320, file: !3321, line: 84, baseType: !346, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3320, file: !3321, line: 85, baseType: !3258, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3320, file: !3321, line: 86, baseType: !2947, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3320, file: !3321, line: 87, baseType: !2947, size: 64, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3320, file: !3321, line: 88, baseType: !2947, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3320, file: !3321, line: 90, baseType: !3330, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!167, !3258, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !52, line: 95, size: 1152, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341, !3342, !3346, !3350, !3351, !3352, !3353, !3354, !3362, !3363, !3364, !3365, !3366, !3367}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3334, file: !52, line: 96, baseType: !346, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3334, file: !52, line: 97, baseType: !3319, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3334, file: !52, line: 99, baseType: !160, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3334, file: !52, line: 100, baseType: !346, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3334, file: !52, line: 102, baseType: !377, size: 8, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3334, file: !52, line: 103, baseType: !51, size: 32, offset: 288)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3334, file: !52, line: 105, baseType: !3343, size: 64, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3345)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !52, line: 105, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3334, file: !52, line: 106, baseType: !3347, size: 64, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3349)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !52, line: 106, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3334, file: !52, line: 108, baseType: !3293, size: 64, offset: 448)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3334, file: !52, line: 109, baseType: !3284, size: 64, offset: 512)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3334, file: !52, line: 110, baseType: !3293, size: 64, offset: 576)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3334, file: !52, line: 111, baseType: !3284, size: 64, offset: 640)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3334, file: !52, line: 112, baseType: !3355, size: 64, offset: 704)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!167, !3258, !3358}
!3358 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !65, line: 52, baseType: !3359)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !65, line: 50, size: 32, elements: !3360)
!3360 = !{!3361}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3359, file: !65, line: 51, baseType: !167, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3334, file: !52, line: 113, baseType: !3293, size: 64, offset: 768)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3334, file: !52, line: 114, baseType: !2947, size: 64, offset: 832)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3334, file: !52, line: 115, baseType: !2947, size: 64, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3334, file: !52, line: 117, baseType: !3288, size: 64, offset: 960)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3334, file: !52, line: 118, baseType: !3284, size: 64, offset: 1024)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3334, file: !52, line: 120, baseType: !3368, size: 64, offset: 1088)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !52, line: 120, flags: DIFlagFwdDecl)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3320, file: !3321, line: 91, baseType: !3275, size: 64, offset: 448)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3320, file: !3321, line: 92, baseType: !3293, size: 64, offset: 512)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3320, file: !3321, line: 93, baseType: !3284, size: 64, offset: 576)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3320, file: !3321, line: 94, baseType: !3293, size: 64, offset: 640)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3320, file: !3321, line: 95, baseType: !3284, size: 64, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3320, file: !3321, line: 97, baseType: !3293, size: 64, offset: 768)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3320, file: !3321, line: 98, baseType: !3293, size: 64, offset: 832)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3320, file: !3321, line: 100, baseType: !3355, size: 64, offset: 896)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3320, file: !3321, line: 101, baseType: !3293, size: 64, offset: 960)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3320, file: !3321, line: 103, baseType: !3293, size: 64, offset: 1024)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3320, file: !3321, line: 105, baseType: !3293, size: 64, offset: 1088)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3320, file: !3321, line: 107, baseType: !3288, size: 64, offset: 1152)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3320, file: !3321, line: 109, baseType: !3383, size: 64, offset: 1216)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3385)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3321, line: 109, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3320, file: !3321, line: 111, baseType: !3387, size: 64, offset: 1280)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3321, line: 111, flags: DIFlagFwdDecl)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3320, file: !3321, line: 112, baseType: !534, offset: 1344)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3320, file: !3321, line: 114, baseType: !377, size: 8, offset: 1344)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3259, file: !58, line: 471, baseType: !3333, size: 64, offset: 832)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3259, file: !58, line: 473, baseType: !147, size: 64, offset: 896)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3259, file: !58, line: 475, baseType: !147, size: 64, offset: 960)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3259, file: !58, line: 480, baseType: !998, size: 192, offset: 1024)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3259, file: !58, line: 484, baseType: !3396, size: 576, offset: 1216)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !58, line: 361, size: 576, elements: !3397)
!3397 = !{!3398, !3399, !3400, !3401, !3402, !3403}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3396, file: !58, line: 362, baseType: !487, size: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3396, file: !58, line: 363, baseType: !487, size: 128, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3396, file: !58, line: 364, baseType: !487, size: 128, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3396, file: !58, line: 365, baseType: !487, size: 128, offset: 384)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3396, file: !58, line: 366, baseType: !377, size: 8, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3396, file: !58, line: 367, baseType: !57, size: 32, offset: 544)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3259, file: !58, line: 485, baseType: !3405, size: 2304, offset: 1792)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !65, line: 565, size: 2304, elements: !3406)
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3502, !3506}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3405, file: !65, line: 566, baseType: !3358, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3405, file: !65, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3405, file: !65, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3405, file: !65, line: 569, baseType: !377, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3405, file: !65, line: 570, baseType: !377, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3405, file: !65, line: 571, baseType: !377, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3405, file: !65, line: 572, baseType: !377, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3405, file: !65, line: 573, baseType: !377, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3405, file: !65, line: 574, baseType: !377, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3405, file: !65, line: 575, baseType: !377, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3405, file: !65, line: 576, baseType: !377, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3405, file: !65, line: 577, baseType: !298, size: 32, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3405, file: !65, line: 578, baseType: !635, offset: 96)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3405, file: !65, line: 580, baseType: !487, size: 128, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3405, file: !65, line: 581, baseType: !1331, size: 192, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3405, file: !65, line: 582, baseType: !3423, size: 64, offset: 448)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3425, line: 43, size: 1472, elements: !3426)
!3425 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3434, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3424, file: !3425, line: 44, baseType: !346, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3424, file: !3425, line: 45, baseType: !167, size: 32, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3424, file: !3425, line: 46, baseType: !487, size: 128, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3424, file: !3425, line: 47, baseType: !635, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3424, file: !3425, line: 48, baseType: !3432, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !65, line: 533, flags: DIFlagFwdDecl)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3424, file: !3425, line: 49, baseType: !3435, size: 320, offset: 320)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3436, line: 11, size: 320, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3437 = !{!3438, !3439, !3440, !3445}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3435, file: !3436, line: 16, baseType: !528, size: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3435, file: !3436, line: 17, baseType: !222, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3435, file: !3436, line: 18, baseType: !3441, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{null, !3444}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3435, file: !3436, line: 19, baseType: !298, size: 32, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3424, file: !3425, line: 50, baseType: !222, size: 64, offset: 640)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3424, file: !3425, line: 51, baseType: !1125, size: 64, offset: 704)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3424, file: !3425, line: 52, baseType: !1125, size: 64, offset: 768)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3424, file: !3425, line: 53, baseType: !1125, size: 64, offset: 832)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3424, file: !3425, line: 54, baseType: !1125, size: 64, offset: 896)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3424, file: !3425, line: 55, baseType: !1125, size: 64, offset: 960)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3424, file: !3425, line: 56, baseType: !222, size: 64, offset: 1024)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3424, file: !3425, line: 57, baseType: !222, size: 64, offset: 1088)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3424, file: !3425, line: 58, baseType: !222, size: 64, offset: 1152)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3424, file: !3425, line: 59, baseType: !222, size: 64, offset: 1216)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3424, file: !3425, line: 60, baseType: !222, size: 64, offset: 1280)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3424, file: !3425, line: 61, baseType: !3258, size: 64, offset: 1344)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3424, file: !3425, line: 62, baseType: !377, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3424, file: !3425, line: 63, baseType: !377, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3405, file: !65, line: 583, baseType: !377, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3405, file: !65, line: 584, baseType: !377, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3405, file: !65, line: 585, baseType: !377, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3405, file: !65, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3405, file: !65, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3405, file: !65, line: 592, baseType: !1117, size: 512, offset: 576)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3405, file: !65, line: 593, baseType: !302, size: 64, offset: 1088)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3405, file: !65, line: 594, baseType: !1788, size: 256, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3405, file: !65, line: 595, baseType: !1310, size: 128, offset: 1408)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3405, file: !65, line: 596, baseType: !3432, size: 64, offset: 1536)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3405, file: !65, line: 597, baseType: !654, size: 32, offset: 1600)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3405, file: !65, line: 598, baseType: !654, size: 32, offset: 1632)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3405, file: !65, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3405, file: !65, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3405, file: !65, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3405, file: !65, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3405, file: !65, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3405, file: !65, line: 604, baseType: !377, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3405, file: !65, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3405, file: !65, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3405, file: !65, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3405, file: !65, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3405, file: !65, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3405, file: !65, line: 610, baseType: !5, size: 32, offset: 1696)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3405, file: !65, line: 611, baseType: !64, size: 32, offset: 1728)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3405, file: !65, line: 612, baseType: !72, size: 32, offset: 1760)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3405, file: !65, line: 613, baseType: !167, size: 32, offset: 1792)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3405, file: !65, line: 614, baseType: !167, size: 32, offset: 1824)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3405, file: !65, line: 615, baseType: !302, size: 64, offset: 1856)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3405, file: !65, line: 616, baseType: !302, size: 64, offset: 1920)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3405, file: !65, line: 617, baseType: !302, size: 64, offset: 1984)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3405, file: !65, line: 618, baseType: !302, size: 64, offset: 2048)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3405, file: !65, line: 620, baseType: !3493, size: 64, offset: 2112)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !65, line: 536, size: 256, elements: !3495)
!3495 = !{!3496, !3497, !3498, !3499}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3494, file: !65, line: 537, baseType: !635)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3494, file: !65, line: 538, baseType: !5, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3494, file: !65, line: 540, baseType: !487, size: 128, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3494, file: !65, line: 543, baseType: !3500, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !65, line: 534, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3405, file: !65, line: 621, baseType: !3503, size: 64, offset: 2176)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{null, !3258, !1268}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3405, file: !65, line: 622, baseType: !3507, size: 64, offset: 2240)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !65, line: 622, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3259, file: !58, line: 486, baseType: !3510, size: 64, offset: 4096)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !65, line: 642, size: 1792, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3519, !3520, !3521}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3511, file: !65, line: 643, baseType: !3290, size: 1472)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3511, file: !65, line: 644, baseType: !3293, size: 64, offset: 1472)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3511, file: !65, line: 645, baseType: !3516, size: 64, offset: 1536)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{null, !3258, !377}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3511, file: !65, line: 646, baseType: !3293, size: 64, offset: 1600)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3511, file: !65, line: 647, baseType: !3284, size: 64, offset: 1664)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3511, file: !65, line: 648, baseType: !3284, size: 64, offset: 1728)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3259, file: !58, line: 493, baseType: !3523, size: 64, offset: 4160)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !58, line: 493, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3259, file: !58, line: 499, baseType: !487, size: 128, offset: 4224)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3259, file: !58, line: 502, baseType: !3527, size: 64, offset: 4352)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3529)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !58, line: 502, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3259, file: !58, line: 504, baseType: !3531, size: 64, offset: 4416)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3259, file: !58, line: 505, baseType: !302, size: 64, offset: 4480)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3259, file: !58, line: 510, baseType: !302, size: 64, offset: 4544)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3259, file: !58, line: 511, baseType: !3535, size: 64, offset: 4608)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3537)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !58, line: 511, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3259, file: !58, line: 513, baseType: !3539, size: 64, offset: 4672)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !58, line: 288, size: 128, elements: !3541)
!3541 = !{!3542, !3543}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3540, file: !58, line: 293, baseType: !5, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3540, file: !58, line: 294, baseType: !222, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3259, file: !58, line: 515, baseType: !487, size: 128, offset: 4736)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3259, file: !58, line: 526, baseType: !3546, offset: 4864)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3547, line: 5, elements: !536)
!3547 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3259, file: !58, line: 528, baseType: !3549, size: 64, offset: 4864)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3551, line: 14, flags: DIFlagFwdDecl)
!3551 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3259, file: !58, line: 529, baseType: !3553, size: 64, offset: 4928)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3321, line: 22, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3259, file: !58, line: 534, baseType: !400, size: 32, offset: 4992)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3259, file: !58, line: 535, baseType: !298, size: 32, offset: 5024)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3259, file: !58, line: 537, baseType: !635, offset: 5056)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3259, file: !58, line: 538, baseType: !487, size: 128, offset: 5056)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3259, file: !58, line: 540, baseType: !3560, size: 64, offset: 5184)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3562, line: 54, size: 960, elements: !3563)
!3562 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3574, !3578, !3579, !3580, !3581, !3585, !3589, !3590}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3561, file: !3562, line: 55, baseType: !346, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3561, file: !3562, line: 56, baseType: !160, size: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3561, file: !3562, line: 58, baseType: !2947, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3561, file: !3562, line: 59, baseType: !2947, size: 64, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3561, file: !3562, line: 60, baseType: !2876, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3561, file: !3562, line: 62, baseType: !3275, size: 64, offset: 320)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3561, file: !3562, line: 63, baseType: !3571, size: 64, offset: 384)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!372, !3258, !3282}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3561, file: !3562, line: 65, baseType: !3575, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{null, !3560}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3561, file: !3562, line: 66, baseType: !3284, size: 64, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3561, file: !3562, line: 68, baseType: !3293, size: 64, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3561, file: !3562, line: 70, baseType: !2983, size: 64, offset: 640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3561, file: !3562, line: 71, baseType: !3582, size: 64, offset: 704)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!3000, !3258}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3561, file: !3562, line: 73, baseType: !3586, size: 64, offset: 768)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{null, !3258, !3017, !3018}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3561, file: !3562, line: 75, baseType: !3288, size: 64, offset: 832)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3561, file: !3562, line: 77, baseType: !3387, size: 64, offset: 896)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3259, file: !58, line: 541, baseType: !2947, size: 64, offset: 5248)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3259, file: !58, line: 543, baseType: !3284, size: 64, offset: 5312)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3259, file: !58, line: 544, baseType: !3594, size: 64, offset: 5376)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !58, line: 45, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3259, file: !58, line: 545, baseType: !3597, size: 64, offset: 5440)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !58, line: 47, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3259, file: !58, line: 547, baseType: !377, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3259, file: !58, line: 548, baseType: !377, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3259, file: !58, line: 549, baseType: !377, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3259, file: !58, line: 550, baseType: !377, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !153, file: !154, line: 89, baseType: !674, size: 256, offset: 1536)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "zombie", scope: !153, file: !154, line: 90, baseType: !377, size: 8, offset: 1792)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !149, file: !150, line: 31, baseType: !3259, size: 5568, offset: 1856)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !149, file: !150, line: 32, baseType: !3607, size: 64, offset: 7424)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_info", file: !79, line: 122, size: 1152, elements: !3609)
!3609 = !{!3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3631, !3635, !3639, !3640, !3644, !3648, !3657, !3668, !3672, !3677, !3681}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3608, file: !79, line: 123, baseType: !160, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3608, file: !79, line: 124, baseType: !1561, size: 128, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "max_adj", scope: !3608, file: !79, line: 125, baseType: !1268, size: 32, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "n_alarm", scope: !3608, file: !79, line: 126, baseType: !167, size: 32, offset: 224)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "n_ext_ts", scope: !3608, file: !79, line: 127, baseType: !167, size: 32, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "n_per_out", scope: !3608, file: !79, line: 128, baseType: !167, size: 32, offset: 288)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "n_pins", scope: !3608, file: !79, line: 129, baseType: !167, size: 32, offset: 320)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !3608, file: !79, line: 130, baseType: !167, size: 32, offset: 352)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !3608, file: !79, line: 131, baseType: !3619, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_pin_desc", file: !88, line: 174, size: 768, elements: !3621)
!3621 = !{!3622, !3624, !3625, !3626, !3627}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3620, file: !88, line: 180, baseType: !3623, size: 512)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 512, elements: !1710)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3620, file: !88, line: 184, baseType: !5, size: 32, offset: 512)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3620, file: !88, line: 188, baseType: !5, size: 32, offset: 544)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "chan", scope: !3620, file: !88, line: 194, baseType: !5, size: 32, offset: 576)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !3620, file: !88, line: 198, baseType: !3628, size: 160, offset: 608)
!3628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 160, elements: !3629)
!3629 = !{!3630}
!3630 = !DISubrange(count: 5)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "adjfine", scope: !3608, file: !79, line: 132, baseType: !3632, size: 64, offset: 448)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!167, !3607, !210}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "adjfreq", scope: !3608, file: !79, line: 133, baseType: !3636, size: 64, offset: 512)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!167, !3607, !1268}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "adjphase", scope: !3608, file: !79, line: 134, baseType: !3636, size: 64, offset: 576)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "adjtime", scope: !3608, file: !79, line: 135, baseType: !3641, size: 64, offset: 640)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!167, !3607, !684}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "gettime64", scope: !3608, file: !79, line: 136, baseType: !3645, size: 64, offset: 704)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!167, !3607, !203}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "gettimex64", scope: !3608, file: !79, line: 137, baseType: !3649, size: 64, offset: 768)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!167, !3607, !203, !3652}
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_system_timestamp", file: !79, line: 33, size: 256, elements: !3654)
!3654 = !{!3655, !3656}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "pre_ts", scope: !3653, file: !79, line: 34, baseType: !204, size: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "post_ts", scope: !3653, file: !79, line: 35, baseType: !204, size: 128, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "getcrosststamp", scope: !3608, file: !79, line: 139, baseType: !3658, size: 64, offset: 832)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!167, !3607, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "system_device_crosststamp", file: !3663, line: 261, size: 192, elements: !3664)
!3663 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/lizy2001/genbc/linux")
!3664 = !{!3665, !3666, !3667}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3662, file: !3663, line: 262, baseType: !1125, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "sys_realtime", scope: !3662, file: !3663, line: 263, baseType: !1125, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "sys_monoraw", scope: !3662, file: !3663, line: 264, baseType: !1125, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "settime64", scope: !3608, file: !79, line: 141, baseType: !3669, size: 64, offset: 896)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!167, !3607, !216}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !3608, file: !79, line: 142, baseType: !3673, size: 64, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!167, !3607, !3676, !167}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "verify", scope: !3608, file: !79, line: 144, baseType: !3678, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!167, !3607, !5, !128, !5}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "do_aux_work", scope: !3608, file: !79, line: 146, baseType: !3682, size: 64, offset: 1088)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!210, !3607}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !149, file: !150, line: 33, baseType: !400, size: 32, offset: 7488)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !149, file: !150, line: 34, baseType: !167, size: 32, offset: 7520)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "pps_source", scope: !149, file: !150, line: 35, baseType: !3688, size: 64, offset: 7552)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_device", file: !3690, line: 43, size: 2688, elements: !3691)
!3690 = !DIFile(filename: "./include/linux/pps_kernel.h", directory: "/home/lizy2001/genbc/linux")
!3691 = !{!3692, !3704, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3689, file: !3690, line: 44, baseType: !3693, size: 768)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_source_info", file: !3690, line: 23, size: 768, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3698, !3702, !3703}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3693, file: !3690, line: 24, baseType: !2457, size: 256)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !3693, file: !3690, line: 25, baseType: !2457, size: 256, offset: 256)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3693, file: !3690, line: 26, baseType: !167, size: 32, offset: 512)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !3693, file: !3690, line: 28, baseType: !3699, size: 64, offset: 576)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{null, !3688, !167, !147}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3693, file: !3690, line: 31, baseType: !160, size: 64, offset: 640)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3693, file: !3690, line: 32, baseType: !3258, size: 64, offset: 704)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !3689, file: !3690, line: 46, baseType: !3705, size: 320, offset: 768)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_kparams", file: !3706, line: 83, size: 320, elements: !3707)
!3706 = !DIFile(filename: "./include/uapi/linux/pps.h", directory: "/home/lizy2001/genbc/linux")
!3707 = !{!3708, !3709, !3710, !3716}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "api_version", scope: !3705, file: !3706, line: 84, baseType: !167, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3705, file: !3706, line: 85, baseType: !167, size: 32, offset: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "assert_off_tu", scope: !3705, file: !3706, line: 86, baseType: !3711, size: 128, offset: 64)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_ktime", file: !3706, line: 54, size: 128, elements: !3712)
!3712 = !{!3713, !3714, !3715}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !3711, file: !3706, line: 55, baseType: !106, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !3711, file: !3706, line: 56, baseType: !1269, size: 32, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3711, file: !3706, line: 57, baseType: !110, size: 32, offset: 96)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "clear_off_tu", scope: !3705, file: !3706, line: 87, baseType: !3711, size: 128, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "assert_sequence", scope: !3689, file: !3690, line: 48, baseType: !110, size: 32, offset: 1088)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "clear_sequence", scope: !3689, file: !3690, line: 49, baseType: !110, size: 32, offset: 1120)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "assert_tu", scope: !3689, file: !3690, line: 50, baseType: !3711, size: 128, offset: 1152)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tu", scope: !3689, file: !3690, line: 51, baseType: !3711, size: 128, offset: 1280)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "current_mode", scope: !3689, file: !3690, line: 52, baseType: !167, size: 32, offset: 1408)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "last_ev", scope: !3689, file: !3690, line: 54, baseType: !5, size: 32, offset: 1440)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !3689, file: !3690, line: 55, baseType: !1310, size: 128, offset: 1472)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3689, file: !3690, line: 57, baseType: !5, size: 32, offset: 1600)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_cookie", scope: !3689, file: !3690, line: 58, baseType: !3000, size: 64, offset: 1664)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !3689, file: !3690, line: 59, baseType: !2866, size: 832, offset: 1728)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3689, file: !3690, line: 60, baseType: !3258, size: 64, offset: 2560)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !3689, file: !3690, line: 61, baseType: !2722, size: 64, offset: 2624)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3689, file: !3690, line: 62, baseType: !635, offset: 2688)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "dialed_frequency", scope: !149, file: !150, line: 36, baseType: !210, size: 64, offset: 7616)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "tsevq", scope: !149, file: !150, line: 37, baseType: !3732, size: 32832, offset: 7680)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timestamp_event_queue", file: !150, line: 22, size: 32832, elements: !3733)
!3733 = !{!3734, !3744, !3745, !3746}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3732, file: !150, line: 23, baseType: !3735, size: 32768)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3736, size: 32768, elements: !3742)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_extts_event", file: !88, line: 227, size: 256, elements: !3737)
!3737 = !{!3738, !3739, !3740, !3741}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !3736, file: !88, line: 228, baseType: !103, size: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3736, file: !88, line: 229, baseType: !5, size: 32, offset: 128)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3736, file: !88, line: 230, baseType: !5, size: 32, offset: 160)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !3736, file: !88, line: 231, baseType: !93, size: 64, offset: 192)
!3742 = !{!3743}
!3743 = !DISubrange(count: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3732, file: !150, line: 24, baseType: !167, size: 32, offset: 32768)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3732, file: !150, line: 25, baseType: !167, size: 32, offset: 32800)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3732, file: !150, line: 26, baseType: !635, offset: 32832)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "tsevq_mux", scope: !149, file: !150, line: 38, baseType: !998, size: 192, offset: 40512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg_mux", scope: !149, file: !150, line: 39, baseType: !998, size: 192, offset: 40704)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "tsev_wq", scope: !149, file: !150, line: 40, baseType: !1310, size: 128, offset: 40896)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "defunct", scope: !149, file: !150, line: 41, baseType: !167, size: 32, offset: 41024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "pin_dev_attr", scope: !149, file: !150, line: 42, baseType: !3752, size: 64, offset: 41088)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !58, line: 99, size: 256, elements: !3754)
!3754 = !{!3755, !3756, !3760}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3753, file: !58, line: 100, baseType: !2936, size: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3753, file: !58, line: 101, baseType: !3757, size: 64, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!457, !3258, !3752, !372}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3753, file: !58, line: 103, baseType: !3761, size: 64, offset: 192)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!457, !3258, !3752, !346, !460}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr", scope: !149, file: !150, line: 43, baseType: !2945, size: 64, offset: 41152)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr_group", scope: !149, file: !150, line: 44, baseType: !2950, size: 320, offset: 41216)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "pin_attr_groups", scope: !149, file: !150, line: 46, baseType: !3767, size: 128, offset: 41536)
!3767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2948, size: 128, elements: !94)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "kworker", scope: !149, file: !150, line: 47, baseType: !3769, size: 64, offset: 41664)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_worker", file: !3771, line: 89, size: 448, elements: !3772)
!3771 = !DIFile(filename: "./include/linux/kthread.h", directory: "/home/lizy2001/genbc/linux")
!3772 = !{!3773, !3774, !3775, !3776, !3777, !3778}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3770, file: !3771, line: 90, baseType: !5, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3770, file: !3771, line: 91, baseType: !687, offset: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3770, file: !3771, line: 92, baseType: !487, size: 128, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_work_list", scope: !3770, file: !3771, line: 93, baseType: !487, size: 128, offset: 192)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3770, file: !3771, line: 94, baseType: !1041, size: 64, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "current_work", scope: !3770, file: !3771, line: 95, baseType: !3779, size: 64, offset: 384)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_work", file: !3771, line: 98, size: 320, elements: !3781)
!3781 = !{!3782, !3783, !3788, !3789}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3780, file: !3771, line: 99, baseType: !487, size: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3780, file: !3771, line: 100, baseType: !3784, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "kthread_work_func_t", file: !3771, line: 82, baseType: !3785)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{null, !3779}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !3780, file: !3771, line: 101, baseType: !3769, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "canceling", scope: !3780, file: !3771, line: 103, baseType: !167, size: 32, offset: 256)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "aux_work", scope: !149, file: !150, line: 48, baseType: !3791, size: 640, offset: 41728)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kthread_delayed_work", file: !3771, line: 106, size: 640, elements: !3792)
!3792 = !{!3793, !3794}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3791, file: !3771, line: 107, baseType: !3780, size: 320)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3791, file: !3771, line: 108, baseType: !3435, size: 320, offset: 320)
!3795 = !{!"rsp"}
!3796 = !{i32 7, !"Dwarf Version", i32 4}
!3797 = !{i32 2, !"Debug Info Version", i32 3}
!3798 = !{i32 1, !"wchar_size", i32 2}
!3799 = !{i32 1, !"Code Model", i32 2}
!3800 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3801 = distinct !DISubprogram(name: "ptp_set_pinfunc", scope: !1, file: !1, line: 48, type: !3802, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !536)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!167, !148, !5, !128, !5}
!3804 = !DILocalVariable(name: "ptp", arg: 1, scope: !3801, file: !1, line: 48, type: !148)
!3805 = !DILocation(line: 48, column: 39, scope: !3801)
!3806 = !DILocalVariable(name: "pin", arg: 2, scope: !3801, file: !1, line: 48, type: !5)
!3807 = !DILocation(line: 48, column: 57, scope: !3801)
!3808 = !DILocalVariable(name: "func", arg: 3, scope: !3801, file: !1, line: 49, type: !128)
!3809 = !DILocation(line: 49, column: 29, scope: !3801)
!3810 = !DILocalVariable(name: "chan", arg: 4, scope: !3801, file: !1, line: 49, type: !5)
!3811 = !DILocation(line: 49, column: 48, scope: !3801)
!3812 = !DILocalVariable(name: "info", scope: !3801, file: !1, line: 51, type: !3607)
!3813 = !DILocation(line: 51, column: 25, scope: !3801)
!3814 = !DILocation(line: 51, column: 32, scope: !3801)
!3815 = !DILocation(line: 51, column: 37, scope: !3801)
!3816 = !DILocalVariable(name: "pin1", scope: !3801, file: !1, line: 52, type: !3619)
!3817 = !DILocation(line: 52, column: 23, scope: !3801)
!3818 = !DILocalVariable(name: "pin2", scope: !3801, file: !1, line: 52, type: !3619)
!3819 = !DILocation(line: 52, column: 37, scope: !3801)
!3820 = !DILocation(line: 52, column: 45, scope: !3801)
!3821 = !DILocation(line: 52, column: 51, scope: !3801)
!3822 = !DILocation(line: 52, column: 62, scope: !3801)
!3823 = !DILocalVariable(name: "i", scope: !3801, file: !1, line: 53, type: !5)
!3824 = !DILocation(line: 53, column: 15, scope: !3801)
!3825 = !DILocation(line: 56, column: 9, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3801, file: !1, line: 56, column: 2)
!3827 = !DILocation(line: 56, column: 7, scope: !3826)
!3828 = !DILocation(line: 56, column: 14, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3826, file: !1, line: 56, column: 2)
!3830 = !DILocation(line: 56, column: 18, scope: !3829)
!3831 = !DILocation(line: 56, column: 24, scope: !3829)
!3832 = !DILocation(line: 56, column: 16, scope: !3829)
!3833 = !DILocation(line: 56, column: 2, scope: !3826)
!3834 = !DILocation(line: 57, column: 7, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !1, line: 57, column: 7)
!3836 = distinct !DILexicalBlock(scope: !3829, file: !1, line: 56, column: 37)
!3837 = !DILocation(line: 57, column: 13, scope: !3835)
!3838 = !DILocation(line: 57, column: 24, scope: !3835)
!3839 = !DILocation(line: 57, column: 27, scope: !3835)
!3840 = !DILocation(line: 57, column: 35, scope: !3835)
!3841 = !DILocation(line: 57, column: 32, scope: !3835)
!3842 = !DILocation(line: 57, column: 40, scope: !3835)
!3843 = !DILocation(line: 58, column: 7, scope: !3835)
!3844 = !DILocation(line: 58, column: 13, scope: !3835)
!3845 = !DILocation(line: 58, column: 24, scope: !3835)
!3846 = !DILocation(line: 58, column: 27, scope: !3835)
!3847 = !DILocation(line: 58, column: 35, scope: !3835)
!3848 = !DILocation(line: 58, column: 32, scope: !3835)
!3849 = !DILocation(line: 57, column: 7, scope: !3836)
!3850 = !DILocation(line: 59, column: 12, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3835, file: !1, line: 58, column: 41)
!3852 = !DILocation(line: 59, column: 18, scope: !3851)
!3853 = !DILocation(line: 59, column: 29, scope: !3851)
!3854 = !DILocation(line: 59, column: 9, scope: !3851)
!3855 = !DILocation(line: 60, column: 4, scope: !3851)
!3856 = !DILocation(line: 62, column: 2, scope: !3836)
!3857 = !DILocation(line: 56, column: 33, scope: !3829)
!3858 = !DILocation(line: 56, column: 2, scope: !3829)
!3859 = distinct !{!3859, !3833, !3860}
!3860 = !DILocation(line: 62, column: 2, scope: !3826)
!3861 = !DILocation(line: 63, column: 6, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3801, file: !1, line: 63, column: 6)
!3863 = !DILocation(line: 63, column: 11, scope: !3862)
!3864 = !DILocation(line: 63, column: 14, scope: !3862)
!3865 = !DILocation(line: 63, column: 19, scope: !3862)
!3866 = !DILocation(line: 63, column: 16, scope: !3862)
!3867 = !DILocation(line: 63, column: 6, scope: !3801)
!3868 = !DILocation(line: 64, column: 3, scope: !3862)
!3869 = !DILocation(line: 67, column: 10, scope: !3801)
!3870 = !DILocation(line: 67, column: 2, scope: !3801)
!3871 = !DILocation(line: 69, column: 3, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3801, file: !1, line: 67, column: 16)
!3873 = !DILocation(line: 71, column: 7, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3872, file: !1, line: 71, column: 7)
!3875 = !DILocation(line: 71, column: 15, scope: !3874)
!3876 = !DILocation(line: 71, column: 21, scope: !3874)
!3877 = !DILocation(line: 71, column: 12, scope: !3874)
!3878 = !DILocation(line: 71, column: 7, scope: !3872)
!3879 = !DILocation(line: 72, column: 4, scope: !3874)
!3880 = !DILocation(line: 73, column: 3, scope: !3872)
!3881 = !DILocation(line: 75, column: 7, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3872, file: !1, line: 75, column: 7)
!3883 = !DILocation(line: 75, column: 15, scope: !3882)
!3884 = !DILocation(line: 75, column: 21, scope: !3882)
!3885 = !DILocation(line: 75, column: 12, scope: !3882)
!3886 = !DILocation(line: 75, column: 7, scope: !3872)
!3887 = !DILocation(line: 76, column: 4, scope: !3882)
!3888 = !DILocation(line: 77, column: 3, scope: !3872)
!3889 = !DILocation(line: 79, column: 7, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3872, file: !1, line: 79, column: 7)
!3891 = !DILocation(line: 79, column: 12, scope: !3890)
!3892 = !DILocation(line: 79, column: 7, scope: !3872)
!3893 = !DILocation(line: 80, column: 4, scope: !3890)
!3894 = !DILocation(line: 81, column: 3, scope: !3872)
!3895 = !DILocation(line: 83, column: 3, scope: !3872)
!3896 = !DILocation(line: 86, column: 6, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3801, file: !1, line: 86, column: 6)
!3898 = !DILocation(line: 86, column: 12, scope: !3897)
!3899 = !DILocation(line: 86, column: 19, scope: !3897)
!3900 = !DILocation(line: 86, column: 25, scope: !3897)
!3901 = !DILocation(line: 86, column: 30, scope: !3897)
!3902 = !DILocation(line: 86, column: 36, scope: !3897)
!3903 = !DILocation(line: 86, column: 6, scope: !3801)
!3904 = !DILocation(line: 87, column: 3, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3897, file: !1, line: 86, column: 43)
!3906 = !DILocation(line: 88, column: 3, scope: !3905)
!3907 = !DILocation(line: 92, column: 6, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3801, file: !1, line: 92, column: 6)
!3909 = !DILocation(line: 92, column: 6, scope: !3801)
!3910 = !DILocation(line: 93, column: 23, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3908, file: !1, line: 92, column: 12)
!3912 = !DILocation(line: 93, column: 29, scope: !3911)
!3913 = !DILocation(line: 93, column: 35, scope: !3911)
!3914 = !DILocation(line: 93, column: 3, scope: !3911)
!3915 = !DILocation(line: 94, column: 3, scope: !3911)
!3916 = !DILocation(line: 94, column: 9, scope: !3911)
!3917 = !DILocation(line: 94, column: 14, scope: !3911)
!3918 = !DILocation(line: 95, column: 3, scope: !3911)
!3919 = !DILocation(line: 95, column: 9, scope: !3911)
!3920 = !DILocation(line: 95, column: 14, scope: !3911)
!3921 = !DILocation(line: 96, column: 2, scope: !3911)
!3922 = !DILocation(line: 97, column: 22, scope: !3801)
!3923 = !DILocation(line: 97, column: 28, scope: !3801)
!3924 = !DILocation(line: 97, column: 34, scope: !3801)
!3925 = !DILocation(line: 97, column: 40, scope: !3801)
!3926 = !DILocation(line: 97, column: 46, scope: !3801)
!3927 = !DILocation(line: 97, column: 2, scope: !3801)
!3928 = !DILocation(line: 98, column: 15, scope: !3801)
!3929 = !DILocation(line: 98, column: 2, scope: !3801)
!3930 = !DILocation(line: 98, column: 8, scope: !3801)
!3931 = !DILocation(line: 98, column: 13, scope: !3801)
!3932 = !DILocation(line: 99, column: 15, scope: !3801)
!3933 = !DILocation(line: 99, column: 2, scope: !3801)
!3934 = !DILocation(line: 99, column: 8, scope: !3801)
!3935 = !DILocation(line: 99, column: 13, scope: !3801)
!3936 = !DILocation(line: 101, column: 2, scope: !3801)
!3937 = !DILocation(line: 102, column: 1, scope: !3801)
!3938 = distinct !DISubprogram(name: "ptp_disable_pinfunc", scope: !1, file: !1, line: 18, type: !3939, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{!167, !3607, !128, !5}
!3941 = !DILocalVariable(name: "ops", arg: 1, scope: !3938, file: !1, line: 18, type: !3607)
!3942 = !DILocation(line: 18, column: 55, scope: !3938)
!3943 = !DILocalVariable(name: "func", arg: 2, scope: !3938, file: !1, line: 19, type: !128)
!3944 = !DILocation(line: 19, column: 33, scope: !3938)
!3945 = !DILocalVariable(name: "chan", arg: 3, scope: !3938, file: !1, line: 19, type: !5)
!3946 = !DILocation(line: 19, column: 52, scope: !3938)
!3947 = !DILocalVariable(name: "rq", scope: !3938, file: !1, line: 21, type: !80)
!3948 = !DILocation(line: 21, column: 27, scope: !3938)
!3949 = !DILocalVariable(name: "err", scope: !3938, file: !1, line: 22, type: !167)
!3950 = !DILocation(line: 22, column: 6, scope: !3938)
!3951 = !DILocation(line: 24, column: 2, scope: !3938)
!3952 = !DILocation(line: 26, column: 10, scope: !3938)
!3953 = !DILocation(line: 26, column: 2, scope: !3938)
!3954 = !DILocation(line: 28, column: 3, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3938, file: !1, line: 26, column: 16)
!3956 = !DILocation(line: 30, column: 6, scope: !3955)
!3957 = !DILocation(line: 30, column: 11, scope: !3955)
!3958 = !DILocation(line: 31, column: 20, scope: !3955)
!3959 = !DILocation(line: 31, column: 6, scope: !3955)
!3960 = !DILocation(line: 31, column: 12, scope: !3955)
!3961 = !DILocation(line: 31, column: 18, scope: !3955)
!3962 = !DILocation(line: 32, column: 9, scope: !3955)
!3963 = !DILocation(line: 32, column: 14, scope: !3955)
!3964 = !DILocation(line: 32, column: 21, scope: !3955)
!3965 = !DILocation(line: 32, column: 7, scope: !3955)
!3966 = !DILocation(line: 33, column: 3, scope: !3955)
!3967 = !DILocation(line: 35, column: 6, scope: !3955)
!3968 = !DILocation(line: 35, column: 11, scope: !3955)
!3969 = !DILocation(line: 36, column: 21, scope: !3955)
!3970 = !DILocation(line: 36, column: 6, scope: !3955)
!3971 = !DILocation(line: 36, column: 13, scope: !3955)
!3972 = !DILocation(line: 36, column: 19, scope: !3955)
!3973 = !DILocation(line: 37, column: 9, scope: !3955)
!3974 = !DILocation(line: 37, column: 14, scope: !3955)
!3975 = !DILocation(line: 37, column: 21, scope: !3955)
!3976 = !DILocation(line: 37, column: 7, scope: !3955)
!3977 = !DILocation(line: 38, column: 3, scope: !3955)
!3978 = !DILocation(line: 40, column: 3, scope: !3955)
!3979 = !DILocation(line: 42, column: 3, scope: !3955)
!3980 = !DILocation(line: 45, column: 9, scope: !3938)
!3981 = !DILocation(line: 45, column: 2, scope: !3938)
!3982 = !DILocation(line: 46, column: 1, scope: !3938)
!3983 = distinct !DISubprogram(name: "ptp_open", scope: !1, file: !1, line: 104, type: !225, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !536)
!3984 = !DILocalVariable(name: "pc", arg: 1, scope: !3983, file: !1, line: 104, type: !168)
!3985 = !DILocation(line: 104, column: 34, scope: !3983)
!3986 = !DILocalVariable(name: "fmode", arg: 2, scope: !3983, file: !1, line: 104, type: !227)
!3987 = !DILocation(line: 104, column: 46, scope: !3983)
!3988 = !DILocation(line: 106, column: 2, scope: !3983)
!3989 = distinct !DISubprogram(name: "ptp_ioctl", scope: !1, file: !1, line: 109, type: !220, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !536)
!3990 = !DILocalVariable(name: "addr", arg: 1, scope: !3991, file: !3992, line: 138, type: !3000)
!3991 = distinct !DISubprogram(name: "check_copy_size", scope: !3992, file: !3992, line: 138, type: !3993, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!3992 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!377, !3000, !460, !377}
!3995 = !DILocation(line: 138, column: 29, scope: !3991, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 191, column: 6, scope: !3997, inlinedAt: !4002)
!3997 = distinct !DILexicalBlock(scope: !3999, file: !3998, line: 191, column: 6)
!3998 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!3999 = distinct !DISubprogram(name: "copy_from_user", scope: !3998, file: !3998, line: 189, type: !4000, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!222, !147, !3000, !222}
!4002 = distinct !DILocation(line: 393, column: 7, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 393, column: 7)
!4004 = distinct !DILexicalBlock(scope: !3989, file: !1, line: 126, column: 15)
!4005 = !DILocalVariable(name: "bytes", arg: 2, scope: !3991, file: !3992, line: 138, type: !460)
!4006 = !DILocation(line: 138, column: 42, scope: !3991, inlinedAt: !3996)
!4007 = !DILocalVariable(name: "is_source", arg: 3, scope: !3991, file: !3992, line: 138, type: !377)
!4008 = !DILocation(line: 138, column: 54, scope: !3991, inlinedAt: !3996)
!4009 = !DILocalVariable(name: "sz", scope: !3991, file: !3992, line: 140, type: !167)
!4010 = !DILocation(line: 140, column: 6, scope: !3991, inlinedAt: !3996)
!4011 = !DILocalVariable(name: "__ret_warn_on", scope: !4012, file: !3992, line: 150, type: !167)
!4012 = distinct !DILexicalBlock(scope: !4013, file: !3992, line: 150, column: 6)
!4013 = distinct !DILexicalBlock(scope: !3991, file: !3992, line: 150, column: 6)
!4014 = !DILocation(line: 150, column: 6, scope: !4012, inlinedAt: !3996)
!4015 = !DILocalVariable(name: "to", arg: 1, scope: !3999, file: !3998, line: 189, type: !147)
!4016 = !DILocation(line: 189, column: 22, scope: !3999, inlinedAt: !4002)
!4017 = !DILocalVariable(name: "from", arg: 2, scope: !3999, file: !3998, line: 189, type: !3000)
!4018 = !DILocation(line: 189, column: 45, scope: !3999, inlinedAt: !4002)
!4019 = !DILocalVariable(name: "n", arg: 3, scope: !3999, file: !3998, line: 189, type: !222)
!4020 = !DILocation(line: 189, column: 65, scope: !3999, inlinedAt: !4002)
!4021 = !DILocation(line: 138, column: 29, scope: !3991, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !4025)
!4023 = distinct !DILexicalBlock(scope: !4024, file: !3998, line: 199, column: 6)
!4024 = distinct !DISubprogram(name: "copy_to_user", scope: !3998, file: !3998, line: 197, type: !4000, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!4025 = distinct !DILocation(line: 387, column: 15, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 387, column: 7)
!4027 = !DILocation(line: 138, column: 42, scope: !3991, inlinedAt: !4022)
!4028 = !DILocation(line: 138, column: 54, scope: !3991, inlinedAt: !4022)
!4029 = !DILocation(line: 140, column: 6, scope: !3991, inlinedAt: !4022)
!4030 = !DILocation(line: 150, column: 6, scope: !4012, inlinedAt: !4022)
!4031 = !DILocalVariable(name: "to", arg: 1, scope: !4024, file: !3998, line: 197, type: !147)
!4032 = !DILocation(line: 197, column: 27, scope: !4024, inlinedAt: !4025)
!4033 = !DILocalVariable(name: "from", arg: 2, scope: !4024, file: !3998, line: 197, type: !3000)
!4034 = !DILocation(line: 197, column: 43, scope: !4024, inlinedAt: !4025)
!4035 = !DILocalVariable(name: "n", arg: 3, scope: !4024, file: !3998, line: 197, type: !222)
!4036 = !DILocation(line: 197, column: 63, scope: !4024, inlinedAt: !4025)
!4037 = !DILocation(line: 138, column: 29, scope: !3991, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 191, column: 6, scope: !3997, inlinedAt: !4039)
!4039 = distinct !DILocation(line: 361, column: 7, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 361, column: 7)
!4041 = !DILocation(line: 138, column: 42, scope: !3991, inlinedAt: !4038)
!4042 = !DILocation(line: 138, column: 54, scope: !3991, inlinedAt: !4038)
!4043 = !DILocation(line: 140, column: 6, scope: !3991, inlinedAt: !4038)
!4044 = !DILocation(line: 150, column: 6, scope: !4012, inlinedAt: !4038)
!4045 = !DILocation(line: 189, column: 22, scope: !3999, inlinedAt: !4039)
!4046 = !DILocation(line: 189, column: 45, scope: !3999, inlinedAt: !4039)
!4047 = !DILocation(line: 189, column: 65, scope: !3999, inlinedAt: !4039)
!4048 = !DILocation(line: 138, column: 29, scope: !3991, inlinedAt: !4049)
!4049 = distinct !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 355, column: 7, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 355, column: 7)
!4052 = !DILocation(line: 138, column: 42, scope: !3991, inlinedAt: !4049)
!4053 = !DILocation(line: 138, column: 54, scope: !3991, inlinedAt: !4049)
!4054 = !DILocation(line: 140, column: 6, scope: !3991, inlinedAt: !4049)
!4055 = !DILocation(line: 150, column: 6, scope: !4012, inlinedAt: !4049)
!4056 = !DILocation(line: 197, column: 27, scope: !4024, inlinedAt: !4050)
!4057 = !DILocation(line: 197, column: 43, scope: !4024, inlinedAt: !4050)
!4058 = !DILocation(line: 197, column: 63, scope: !4024, inlinedAt: !4050)
!4059 = !DILocation(line: 138, column: 29, scope: !3991, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 320, column: 7, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 320, column: 7)
!4063 = !DILocation(line: 138, column: 42, scope: !3991, inlinedAt: !4060)
!4064 = !DILocation(line: 138, column: 54, scope: !3991, inlinedAt: !4060)
!4065 = !DILocation(line: 140, column: 6, scope: !3991, inlinedAt: !4060)
!4066 = !DILocation(line: 150, column: 6, scope: !4012, inlinedAt: !4060)
!4067 = !DILocation(line: 197, column: 27, scope: !4024, inlinedAt: !4061)
!4068 = !DILocation(line: 197, column: 43, scope: !4024, inlinedAt: !4061)
!4069 = !DILocation(line: 197, column: 63, scope: !4024, inlinedAt: !4061)
!4070 = !DILocation(line: 138, column: 29, scope: !3991, inlinedAt: !4071)
!4071 = distinct !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 287, column: 7, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 287, column: 7)
!4074 = !DILocation(line: 138, column: 42, scope: !3991, inlinedAt: !4071)
!4075 = !DILocation(line: 138, column: 54, scope: !3991, inlinedAt: !4071)
!4076 = !DILocation(line: 140, column: 6, scope: !3991, inlinedAt: !4071)
!4077 = !DILocation(line: 150, column: 6, scope: !4012, inlinedAt: !4071)
!4078 = !DILocation(line: 197, column: 27, scope: !4024, inlinedAt: !4072)
!4079 = !DILocation(line: 197, column: 43, scope: !4024, inlinedAt: !4072)
!4080 = !DILocation(line: 197, column: 63, scope: !4024, inlinedAt: !4072)
!4081 = !DILocation(line: 138, column: 29, scope: !3991, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 191, column: 6, scope: !3997, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 189, column: 7, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 189, column: 7)
!4085 = !DILocation(line: 138, column: 42, scope: !3991, inlinedAt: !4082)
!4086 = !DILocation(line: 138, column: 54, scope: !3991, inlinedAt: !4082)
!4087 = !DILocation(line: 140, column: 6, scope: !3991, inlinedAt: !4082)
!4088 = !DILocation(line: 150, column: 6, scope: !4012, inlinedAt: !4082)
!4089 = !DILocation(line: 189, column: 22, scope: !3999, inlinedAt: !4083)
!4090 = !DILocation(line: 189, column: 45, scope: !3999, inlinedAt: !4083)
!4091 = !DILocation(line: 189, column: 65, scope: !3999, inlinedAt: !4083)
!4092 = !DILocation(line: 138, column: 29, scope: !3991, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 191, column: 6, scope: !3997, inlinedAt: !4094)
!4094 = distinct !DILocation(line: 148, column: 7, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 148, column: 7)
!4096 = !DILocation(line: 138, column: 42, scope: !3991, inlinedAt: !4093)
!4097 = !DILocation(line: 138, column: 54, scope: !3991, inlinedAt: !4093)
!4098 = !DILocation(line: 140, column: 6, scope: !3991, inlinedAt: !4093)
!4099 = !DILocation(line: 150, column: 6, scope: !4012, inlinedAt: !4093)
!4100 = !DILocation(line: 189, column: 22, scope: !3999, inlinedAt: !4094)
!4101 = !DILocation(line: 189, column: 45, scope: !3999, inlinedAt: !4094)
!4102 = !DILocation(line: 189, column: 65, scope: !3999, inlinedAt: !4094)
!4103 = !DILocation(line: 138, column: 29, scope: !3991, inlinedAt: !4104)
!4104 = distinct !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 140, column: 7, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 140, column: 7)
!4107 = !DILocation(line: 138, column: 42, scope: !3991, inlinedAt: !4104)
!4108 = !DILocation(line: 138, column: 54, scope: !3991, inlinedAt: !4104)
!4109 = !DILocation(line: 140, column: 6, scope: !3991, inlinedAt: !4104)
!4110 = !DILocation(line: 150, column: 6, scope: !4012, inlinedAt: !4104)
!4111 = !DILocation(line: 197, column: 27, scope: !4024, inlinedAt: !4105)
!4112 = !DILocation(line: 197, column: 43, scope: !4024, inlinedAt: !4105)
!4113 = !DILocation(line: 197, column: 63, scope: !4024, inlinedAt: !4105)
!4114 = !DILocalVariable(name: "pc", arg: 1, scope: !3989, file: !1, line: 109, type: !168)
!4115 = !DILocation(line: 109, column: 36, scope: !3989)
!4116 = !DILocalVariable(name: "cmd", arg: 2, scope: !3989, file: !1, line: 109, type: !5)
!4117 = !DILocation(line: 109, column: 53, scope: !3989)
!4118 = !DILocalVariable(name: "arg", arg: 3, scope: !3989, file: !1, line: 109, type: !222)
!4119 = !DILocation(line: 109, column: 72, scope: !3989)
!4120 = !DILocalVariable(name: "ptp", scope: !3989, file: !1, line: 111, type: !148)
!4121 = !DILocation(line: 111, column: 20, scope: !3989)
!4122 = !DILocalVariable(name: "__mptr", scope: !4123, file: !1, line: 111, type: !147)
!4123 = distinct !DILexicalBlock(scope: !3989, file: !1, line: 111, column: 26)
!4124 = !DILocation(line: 111, column: 26, scope: !4123)
!4125 = !DILocation(line: 111, column: 26, scope: !4126)
!4126 = distinct !DILexicalBlock(scope: !4123, file: !1, line: 111, column: 26)
!4127 = !DILocalVariable(name: "extoff", scope: !3989, file: !1, line: 112, type: !4128)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_sys_offset_extended", file: !88, line: 150, size: 9728, elements: !4130)
!4130 = !{!4131, !4132, !4134}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "n_samples", scope: !4129, file: !88, line: 151, baseType: !5, size: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4129, file: !88, line: 152, baseType: !4133, size: 96, offset: 32)
!4133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, elements: !541)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !4129, file: !88, line: 157, baseType: !4135, size: 9600, offset: 128)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 9600, elements: !4136)
!4136 = !{!4137, !542}
!4137 = !DISubrange(count: 25)
!4138 = !DILocation(line: 112, column: 34, scope: !3989)
!4139 = !DILocalVariable(name: "precise_offset", scope: !3989, file: !1, line: 113, type: !4140)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_sys_offset_precise", file: !88, line: 160, size: 512, elements: !4141)
!4141 = !{!4142, !4143, !4144, !4145}
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4140, file: !88, line: 161, baseType: !103, size: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "sys_realtime", scope: !4140, file: !88, line: 162, baseType: !103, size: 128, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "sys_monoraw", scope: !4140, file: !88, line: 163, baseType: !103, size: 128, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4140, file: !88, line: 164, baseType: !121, size: 128, offset: 384)
!4146 = !DILocation(line: 113, column: 32, scope: !3989)
!4147 = !DILocalVariable(name: "xtstamp", scope: !3989, file: !1, line: 114, type: !3662)
!4148 = !DILocation(line: 114, column: 35, scope: !3989)
!4149 = !DILocalVariable(name: "ops", scope: !3989, file: !1, line: 115, type: !3607)
!4150 = !DILocation(line: 115, column: 25, scope: !3989)
!4151 = !DILocation(line: 115, column: 31, scope: !3989)
!4152 = !DILocation(line: 115, column: 36, scope: !3989)
!4153 = !DILocalVariable(name: "sysoff", scope: !3989, file: !1, line: 116, type: !4154)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_sys_offset", file: !88, line: 139, size: 6656, elements: !4156)
!4156 = !{!4157, !4158, !4159}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "n_samples", scope: !4155, file: !88, line: 140, baseType: !5, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4155, file: !88, line: 141, baseType: !4133, size: 96, offset: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !4155, file: !88, line: 147, baseType: !4160, size: 6528, offset: 128)
!4160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 6528, elements: !4161)
!4161 = !{!4162}
!4162 = !DISubrange(count: 51)
!4163 = !DILocation(line: 116, column: 25, scope: !3989)
!4164 = !DILocalVariable(name: "sts", scope: !3989, file: !1, line: 117, type: !3653)
!4165 = !DILocation(line: 117, column: 30, scope: !3989)
!4166 = !DILocalVariable(name: "req", scope: !3989, file: !1, line: 118, type: !80)
!4167 = !DILocation(line: 118, column: 27, scope: !3989)
!4168 = !DILocalVariable(name: "caps", scope: !3989, file: !1, line: 119, type: !4169)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptp_clock_caps", file: !88, line: 87, size: 640, elements: !4170)
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "max_adj", scope: !4169, file: !88, line: 88, baseType: !167, size: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "n_alarm", scope: !4169, file: !88, line: 89, baseType: !167, size: 32, offset: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "n_ext_ts", scope: !4169, file: !88, line: 90, baseType: !167, size: 32, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "n_per_out", scope: !4169, file: !88, line: 91, baseType: !167, size: 32, offset: 96)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !4169, file: !88, line: 92, baseType: !167, size: 32, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "n_pins", scope: !4169, file: !88, line: 93, baseType: !167, size: 32, offset: 160)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "cross_timestamping", scope: !4169, file: !88, line: 95, baseType: !167, size: 32, offset: 192)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "adjust_phase", scope: !4169, file: !88, line: 97, baseType: !167, size: 32, offset: 224)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "rsv", scope: !4169, file: !88, line: 98, baseType: !4180, size: 384, offset: 256)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 384, elements: !2054)
!4181 = !DILocation(line: 119, column: 24, scope: !3989)
!4182 = !DILocalVariable(name: "pct", scope: !3989, file: !1, line: 120, type: !4183)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!4184 = !DILocation(line: 120, column: 25, scope: !3989)
!4185 = !DILocalVariable(name: "i", scope: !3989, file: !1, line: 121, type: !5)
!4186 = !DILocation(line: 121, column: 15, scope: !3989)
!4187 = !DILocalVariable(name: "pin_index", scope: !3989, file: !1, line: 121, type: !5)
!4188 = !DILocation(line: 121, column: 18, scope: !3989)
!4189 = !DILocalVariable(name: "pd", scope: !3989, file: !1, line: 122, type: !3620)
!4190 = !DILocation(line: 122, column: 22, scope: !3989)
!4191 = !DILocalVariable(name: "ts", scope: !3989, file: !1, line: 123, type: !204)
!4192 = !DILocation(line: 123, column: 20, scope: !3989)
!4193 = !DILocalVariable(name: "enable", scope: !3989, file: !1, line: 124, type: !167)
!4194 = !DILocation(line: 124, column: 6, scope: !3989)
!4195 = !DILocalVariable(name: "err", scope: !3989, file: !1, line: 124, type: !167)
!4196 = !DILocation(line: 124, column: 14, scope: !3989)
!4197 = !DILocation(line: 126, column: 10, scope: !3989)
!4198 = !DILocation(line: 126, column: 2, scope: !3989)
!4199 = !DILocation(line: 130, column: 3, scope: !4004)
!4200 = !DILocation(line: 132, column: 18, scope: !4004)
!4201 = !DILocation(line: 132, column: 23, scope: !4004)
!4202 = !DILocation(line: 132, column: 29, scope: !4004)
!4203 = !DILocation(line: 132, column: 8, scope: !4004)
!4204 = !DILocation(line: 132, column: 16, scope: !4004)
!4205 = !DILocation(line: 133, column: 18, scope: !4004)
!4206 = !DILocation(line: 133, column: 23, scope: !4004)
!4207 = !DILocation(line: 133, column: 29, scope: !4004)
!4208 = !DILocation(line: 133, column: 8, scope: !4004)
!4209 = !DILocation(line: 133, column: 16, scope: !4004)
!4210 = !DILocation(line: 134, column: 19, scope: !4004)
!4211 = !DILocation(line: 134, column: 24, scope: !4004)
!4212 = !DILocation(line: 134, column: 30, scope: !4004)
!4213 = !DILocation(line: 134, column: 8, scope: !4004)
!4214 = !DILocation(line: 134, column: 17, scope: !4004)
!4215 = !DILocation(line: 135, column: 20, scope: !4004)
!4216 = !DILocation(line: 135, column: 25, scope: !4004)
!4217 = !DILocation(line: 135, column: 31, scope: !4004)
!4218 = !DILocation(line: 135, column: 8, scope: !4004)
!4219 = !DILocation(line: 135, column: 18, scope: !4004)
!4220 = !DILocation(line: 136, column: 14, scope: !4004)
!4221 = !DILocation(line: 136, column: 19, scope: !4004)
!4222 = !DILocation(line: 136, column: 25, scope: !4004)
!4223 = !DILocation(line: 136, column: 8, scope: !4004)
!4224 = !DILocation(line: 136, column: 12, scope: !4004)
!4225 = !DILocation(line: 137, column: 17, scope: !4004)
!4226 = !DILocation(line: 137, column: 22, scope: !4004)
!4227 = !DILocation(line: 137, column: 28, scope: !4004)
!4228 = !DILocation(line: 137, column: 8, scope: !4004)
!4229 = !DILocation(line: 137, column: 15, scope: !4004)
!4230 = !DILocation(line: 138, column: 29, scope: !4004)
!4231 = !DILocation(line: 138, column: 34, scope: !4004)
!4232 = !DILocation(line: 138, column: 40, scope: !4004)
!4233 = !DILocation(line: 138, column: 55, scope: !4004)
!4234 = !DILocation(line: 138, column: 8, scope: !4004)
!4235 = !DILocation(line: 138, column: 27, scope: !4004)
!4236 = !DILocation(line: 139, column: 23, scope: !4004)
!4237 = !DILocation(line: 139, column: 28, scope: !4004)
!4238 = !DILocation(line: 139, column: 34, scope: !4004)
!4239 = !DILocation(line: 139, column: 43, scope: !4004)
!4240 = !DILocation(line: 139, column: 8, scope: !4004)
!4241 = !DILocation(line: 139, column: 21, scope: !4004)
!4242 = !DILocation(line: 140, column: 35, scope: !4106)
!4243 = !DILocation(line: 140, column: 20, scope: !4106)
!4244 = !DILocation(line: 140, column: 40, scope: !4106)
!4245 = !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !4105)
!4246 = !DILocation(line: 141, column: 6, scope: !4247, inlinedAt: !4104)
!4247 = distinct !DILexicalBlock(scope: !3991, file: !3992, line: 141, column: 6)
!4248 = !DILocation(line: 0, scope: !4247, inlinedAt: !4104)
!4249 = !DILocation(line: 141, column: 6, scope: !3991, inlinedAt: !4104)
!4250 = !DILocation(line: 142, column: 29, scope: !4251, inlinedAt: !4104)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !3992, line: 142, column: 7)
!4252 = distinct !DILexicalBlock(scope: !4247, file: !3992, line: 141, column: 39)
!4253 = !DILocation(line: 142, column: 8, scope: !4251, inlinedAt: !4104)
!4254 = !DILocation(line: 142, column: 7, scope: !4252, inlinedAt: !4104)
!4255 = !DILocation(line: 143, column: 18, scope: !4251, inlinedAt: !4104)
!4256 = !DILocation(line: 143, column: 22, scope: !4251, inlinedAt: !4104)
!4257 = !DILocation(line: 143, column: 4, scope: !4251, inlinedAt: !4104)
!4258 = !DILocation(line: 144, column: 12, scope: !4259, inlinedAt: !4104)
!4259 = distinct !DILexicalBlock(scope: !4251, file: !3992, line: 144, column: 12)
!4260 = !DILocation(line: 144, column: 12, scope: !4251, inlinedAt: !4104)
!4261 = !DILocation(line: 145, column: 4, scope: !4259, inlinedAt: !4104)
!4262 = !DILocation(line: 147, column: 4, scope: !4259, inlinedAt: !4104)
!4263 = !DILocation(line: 148, column: 3, scope: !4252, inlinedAt: !4104)
!4264 = !DILocation(line: 150, column: 6, scope: !4265, inlinedAt: !4104)
!4265 = distinct !DILexicalBlock(scope: !4012, file: !3992, line: 150, column: 6)
!4266 = !DILocation(line: 150, column: 6, scope: !4267, inlinedAt: !4104)
!4267 = distinct !DILexicalBlock(scope: !4268, file: !3992, line: 150, column: 6)
!4268 = distinct !DILexicalBlock(scope: !4265, file: !3992, line: 150, column: 6)
!4269 = !{i32 -2145547716, i32 -2145547687, i32 -2145547641, i32 -2145547583, i32 -2145547529, i32 -2145547475, i32 -2145547420, i32 -2145547389}
!4270 = !DILocation(line: 150, column: 6, scope: !4271, inlinedAt: !4104)
!4271 = distinct !DILexicalBlock(scope: !4268, file: !3992, line: 150, column: 6)
!4272 = !{i32 -2145546969, i32 -2145546962, i32 -2145546910, i32 -2145546879, i32 -2145546849}
!4273 = !DILocation(line: 150, column: 6, scope: !4268, inlinedAt: !4104)
!4274 = !DILocation(line: 150, column: 6, scope: !4013, inlinedAt: !4104)
!4275 = !DILocation(line: 150, column: 6, scope: !3991, inlinedAt: !4104)
!4276 = !DILocation(line: 151, column: 3, scope: !4013, inlinedAt: !4104)
!4277 = !DILocation(line: 152, column: 20, scope: !3991, inlinedAt: !4104)
!4278 = !DILocation(line: 152, column: 26, scope: !3991, inlinedAt: !4104)
!4279 = !DILocation(line: 152, column: 33, scope: !3991, inlinedAt: !4104)
!4280 = !DILocation(line: 152, column: 2, scope: !3991, inlinedAt: !4104)
!4281 = !DILocation(line: 153, column: 2, scope: !3991, inlinedAt: !4104)
!4282 = !DILocation(line: 154, column: 1, scope: !3991, inlinedAt: !4104)
!4283 = !DILocation(line: 199, column: 6, scope: !4024, inlinedAt: !4105)
!4284 = !DILocation(line: 200, column: 21, scope: !4023, inlinedAt: !4105)
!4285 = !DILocation(line: 200, column: 25, scope: !4023, inlinedAt: !4105)
!4286 = !DILocation(line: 200, column: 31, scope: !4023, inlinedAt: !4105)
!4287 = !DILocation(line: 200, column: 7, scope: !4023, inlinedAt: !4105)
!4288 = !DILocation(line: 200, column: 5, scope: !4023, inlinedAt: !4105)
!4289 = !DILocation(line: 200, column: 3, scope: !4023, inlinedAt: !4105)
!4290 = !DILocation(line: 201, column: 9, scope: !4024, inlinedAt: !4105)
!4291 = !DILocation(line: 140, column: 7, scope: !4106)
!4292 = !DILocation(line: 140, column: 7, scope: !4004)
!4293 = !DILocation(line: 141, column: 8, scope: !4106)
!4294 = !DILocation(line: 141, column: 4, scope: !4106)
!4295 = !DILocation(line: 142, column: 3, scope: !4004)
!4296 = !DILocation(line: 146, column: 3, scope: !4004)
!4297 = !DILocation(line: 148, column: 27, scope: !4095)
!4298 = !DILocation(line: 148, column: 22, scope: !4095)
!4299 = !DILocation(line: 148, column: 49, scope: !4095)
!4300 = !DILocation(line: 148, column: 34, scope: !4095)
!4301 = !DILocation(line: 191, column: 6, scope: !3997, inlinedAt: !4094)
!4302 = !DILocation(line: 141, column: 6, scope: !4247, inlinedAt: !4093)
!4303 = !DILocation(line: 0, scope: !4247, inlinedAt: !4093)
!4304 = !DILocation(line: 141, column: 6, scope: !3991, inlinedAt: !4093)
!4305 = !DILocation(line: 142, column: 29, scope: !4251, inlinedAt: !4093)
!4306 = !DILocation(line: 142, column: 8, scope: !4251, inlinedAt: !4093)
!4307 = !DILocation(line: 142, column: 7, scope: !4252, inlinedAt: !4093)
!4308 = !DILocation(line: 143, column: 18, scope: !4251, inlinedAt: !4093)
!4309 = !DILocation(line: 143, column: 22, scope: !4251, inlinedAt: !4093)
!4310 = !DILocation(line: 143, column: 4, scope: !4251, inlinedAt: !4093)
!4311 = !DILocation(line: 144, column: 12, scope: !4259, inlinedAt: !4093)
!4312 = !DILocation(line: 144, column: 12, scope: !4251, inlinedAt: !4093)
!4313 = !DILocation(line: 145, column: 4, scope: !4259, inlinedAt: !4093)
!4314 = !DILocation(line: 147, column: 4, scope: !4259, inlinedAt: !4093)
!4315 = !DILocation(line: 148, column: 3, scope: !4252, inlinedAt: !4093)
!4316 = !DILocation(line: 150, column: 6, scope: !4265, inlinedAt: !4093)
!4317 = !DILocation(line: 150, column: 6, scope: !4267, inlinedAt: !4093)
!4318 = !DILocation(line: 150, column: 6, scope: !4271, inlinedAt: !4093)
!4319 = !DILocation(line: 150, column: 6, scope: !4268, inlinedAt: !4093)
!4320 = !DILocation(line: 150, column: 6, scope: !4013, inlinedAt: !4093)
!4321 = !DILocation(line: 150, column: 6, scope: !3991, inlinedAt: !4093)
!4322 = !DILocation(line: 151, column: 3, scope: !4013, inlinedAt: !4093)
!4323 = !DILocation(line: 152, column: 20, scope: !3991, inlinedAt: !4093)
!4324 = !DILocation(line: 152, column: 26, scope: !3991, inlinedAt: !4093)
!4325 = !DILocation(line: 152, column: 33, scope: !3991, inlinedAt: !4093)
!4326 = !DILocation(line: 152, column: 2, scope: !3991, inlinedAt: !4093)
!4327 = !DILocation(line: 153, column: 2, scope: !3991, inlinedAt: !4093)
!4328 = !DILocation(line: 154, column: 1, scope: !3991, inlinedAt: !4093)
!4329 = !DILocation(line: 191, column: 6, scope: !3999, inlinedAt: !4094)
!4330 = !DILocation(line: 192, column: 23, scope: !3997, inlinedAt: !4094)
!4331 = !DILocation(line: 192, column: 27, scope: !3997, inlinedAt: !4094)
!4332 = !DILocation(line: 192, column: 33, scope: !3997, inlinedAt: !4094)
!4333 = !DILocation(line: 192, column: 7, scope: !3997, inlinedAt: !4094)
!4334 = !DILocation(line: 192, column: 5, scope: !3997, inlinedAt: !4094)
!4335 = !DILocation(line: 192, column: 3, scope: !3997, inlinedAt: !4094)
!4336 = !DILocation(line: 193, column: 9, scope: !3999, inlinedAt: !4094)
!4337 = !DILocation(line: 148, column: 7, scope: !4095)
!4338 = !DILocation(line: 148, column: 7, scope: !4004)
!4339 = !DILocation(line: 150, column: 8, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4095, file: !1, line: 149, column: 28)
!4341 = !DILocation(line: 151, column: 4, scope: !4340)
!4342 = !DILocation(line: 153, column: 7, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 153, column: 7)
!4344 = !DILocation(line: 153, column: 11, scope: !4343)
!4345 = !DILocation(line: 153, column: 7, scope: !4004)
!4346 = !DILocation(line: 155, column: 8, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4343, file: !1, line: 153, column: 34)
!4348 = !DILocation(line: 155, column: 14, scope: !4347)
!4349 = !DILocation(line: 155, column: 20, scope: !4347)
!4350 = !DILocation(line: 157, column: 13, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4347, file: !1, line: 157, column: 8)
!4352 = !DILocation(line: 157, column: 19, scope: !4351)
!4353 = !DILocation(line: 157, column: 25, scope: !4351)
!4354 = !DILocation(line: 157, column: 51, scope: !4351)
!4355 = !DILocation(line: 158, column: 12, scope: !4351)
!4356 = !DILocation(line: 158, column: 18, scope: !4351)
!4357 = !DILocation(line: 158, column: 8, scope: !4351)
!4358 = !DILocation(line: 158, column: 25, scope: !4351)
!4359 = !DILocation(line: 158, column: 32, scope: !4351)
!4360 = !DILocation(line: 158, column: 38, scope: !4351)
!4361 = !DILocation(line: 158, column: 28, scope: !4351)
!4362 = !DILocation(line: 157, column: 8, scope: !4347)
!4363 = !DILocation(line: 159, column: 9, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4351, file: !1, line: 158, column: 46)
!4365 = !DILocation(line: 160, column: 5, scope: !4364)
!4366 = !DILocation(line: 163, column: 13, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4347, file: !1, line: 163, column: 8)
!4368 = !DILocation(line: 163, column: 19, scope: !4367)
!4369 = !DILocation(line: 163, column: 25, scope: !4367)
!4370 = !DILocation(line: 163, column: 47, scope: !4367)
!4371 = !DILocation(line: 164, column: 13, scope: !4367)
!4372 = !DILocation(line: 164, column: 19, scope: !4367)
!4373 = !DILocation(line: 164, column: 25, scope: !4367)
!4374 = !DILocation(line: 164, column: 44, scope: !4367)
!4375 = !DILocation(line: 163, column: 8, scope: !4347)
!4376 = !DILocation(line: 165, column: 9, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4367, file: !1, line: 164, column: 50)
!4378 = !DILocation(line: 166, column: 5, scope: !4377)
!4379 = !DILocation(line: 168, column: 3, scope: !4347)
!4380 = !DILocation(line: 168, column: 14, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4343, file: !1, line: 168, column: 14)
!4382 = !DILocation(line: 168, column: 18, scope: !4381)
!4383 = !DILocation(line: 168, column: 14, scope: !4343)
!4384 = !DILocation(line: 169, column: 8, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4381, file: !1, line: 168, column: 40)
!4386 = !DILocation(line: 169, column: 14, scope: !4385)
!4387 = !DILocation(line: 169, column: 20, scope: !4385)
!4388 = !DILocation(line: 170, column: 8, scope: !4385)
!4389 = !DILocation(line: 170, column: 14, scope: !4385)
!4390 = !DILocation(line: 170, column: 4, scope: !4385)
!4391 = !DILocation(line: 170, column: 21, scope: !4385)
!4392 = !DILocation(line: 171, column: 8, scope: !4385)
!4393 = !DILocation(line: 171, column: 14, scope: !4385)
!4394 = !DILocation(line: 171, column: 4, scope: !4385)
!4395 = !DILocation(line: 171, column: 21, scope: !4385)
!4396 = !DILocation(line: 172, column: 3, scope: !4385)
!4397 = !DILocation(line: 173, column: 11, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 173, column: 7)
!4399 = !DILocation(line: 173, column: 17, scope: !4398)
!4400 = !DILocation(line: 173, column: 26, scope: !4398)
!4401 = !DILocation(line: 173, column: 31, scope: !4398)
!4402 = !DILocation(line: 173, column: 23, scope: !4398)
!4403 = !DILocation(line: 173, column: 7, scope: !4004)
!4404 = !DILocation(line: 174, column: 8, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4398, file: !1, line: 173, column: 41)
!4406 = !DILocation(line: 175, column: 4, scope: !4405)
!4407 = !DILocation(line: 177, column: 7, scope: !4004)
!4408 = !DILocation(line: 177, column: 12, scope: !4004)
!4409 = !DILocation(line: 178, column: 16, scope: !4004)
!4410 = !DILocation(line: 178, column: 22, scope: !4004)
!4411 = !DILocation(line: 178, column: 28, scope: !4004)
!4412 = !DILocation(line: 178, column: 12, scope: !4004)
!4413 = !DILocation(line: 178, column: 10, scope: !4004)
!4414 = !DILocation(line: 179, column: 33, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 179, column: 7)
!4416 = !DILocation(line: 179, column: 38, scope: !4415)
!4417 = !DILocation(line: 179, column: 7, scope: !4415)
!4418 = !DILocation(line: 179, column: 7, scope: !4004)
!4419 = !DILocation(line: 180, column: 4, scope: !4415)
!4420 = !DILocation(line: 181, column: 9, scope: !4004)
!4421 = !DILocation(line: 181, column: 14, scope: !4004)
!4422 = !DILocation(line: 181, column: 21, scope: !4004)
!4423 = !DILocation(line: 181, column: 32, scope: !4004)
!4424 = !DILocation(line: 181, column: 7, scope: !4004)
!4425 = !DILocation(line: 182, column: 17, scope: !4004)
!4426 = !DILocation(line: 182, column: 22, scope: !4004)
!4427 = !DILocation(line: 182, column: 3, scope: !4004)
!4428 = !DILocation(line: 183, column: 3, scope: !4004)
!4429 = !DILocation(line: 187, column: 3, scope: !4004)
!4430 = !DILocation(line: 189, column: 27, scope: !4084)
!4431 = !DILocation(line: 189, column: 22, scope: !4084)
!4432 = !DILocation(line: 189, column: 50, scope: !4084)
!4433 = !DILocation(line: 189, column: 35, scope: !4084)
!4434 = !DILocation(line: 191, column: 6, scope: !3997, inlinedAt: !4083)
!4435 = !DILocation(line: 141, column: 6, scope: !4247, inlinedAt: !4082)
!4436 = !DILocation(line: 0, scope: !4247, inlinedAt: !4082)
!4437 = !DILocation(line: 141, column: 6, scope: !3991, inlinedAt: !4082)
!4438 = !DILocation(line: 142, column: 29, scope: !4251, inlinedAt: !4082)
!4439 = !DILocation(line: 142, column: 8, scope: !4251, inlinedAt: !4082)
!4440 = !DILocation(line: 142, column: 7, scope: !4252, inlinedAt: !4082)
!4441 = !DILocation(line: 143, column: 18, scope: !4251, inlinedAt: !4082)
!4442 = !DILocation(line: 143, column: 22, scope: !4251, inlinedAt: !4082)
!4443 = !DILocation(line: 143, column: 4, scope: !4251, inlinedAt: !4082)
!4444 = !DILocation(line: 144, column: 12, scope: !4259, inlinedAt: !4082)
!4445 = !DILocation(line: 144, column: 12, scope: !4251, inlinedAt: !4082)
!4446 = !DILocation(line: 145, column: 4, scope: !4259, inlinedAt: !4082)
!4447 = !DILocation(line: 147, column: 4, scope: !4259, inlinedAt: !4082)
!4448 = !DILocation(line: 148, column: 3, scope: !4252, inlinedAt: !4082)
!4449 = !DILocation(line: 150, column: 6, scope: !4265, inlinedAt: !4082)
!4450 = !DILocation(line: 150, column: 6, scope: !4267, inlinedAt: !4082)
!4451 = !DILocation(line: 150, column: 6, scope: !4271, inlinedAt: !4082)
!4452 = !DILocation(line: 150, column: 6, scope: !4268, inlinedAt: !4082)
!4453 = !DILocation(line: 150, column: 6, scope: !4013, inlinedAt: !4082)
!4454 = !DILocation(line: 150, column: 6, scope: !3991, inlinedAt: !4082)
!4455 = !DILocation(line: 151, column: 3, scope: !4013, inlinedAt: !4082)
!4456 = !DILocation(line: 152, column: 20, scope: !3991, inlinedAt: !4082)
!4457 = !DILocation(line: 152, column: 26, scope: !3991, inlinedAt: !4082)
!4458 = !DILocation(line: 152, column: 33, scope: !3991, inlinedAt: !4082)
!4459 = !DILocation(line: 152, column: 2, scope: !3991, inlinedAt: !4082)
!4460 = !DILocation(line: 153, column: 2, scope: !3991, inlinedAt: !4082)
!4461 = !DILocation(line: 154, column: 1, scope: !3991, inlinedAt: !4082)
!4462 = !DILocation(line: 191, column: 6, scope: !3999, inlinedAt: !4083)
!4463 = !DILocation(line: 192, column: 23, scope: !3997, inlinedAt: !4083)
!4464 = !DILocation(line: 192, column: 27, scope: !3997, inlinedAt: !4083)
!4465 = !DILocation(line: 192, column: 33, scope: !3997, inlinedAt: !4083)
!4466 = !DILocation(line: 192, column: 7, scope: !3997, inlinedAt: !4083)
!4467 = !DILocation(line: 192, column: 5, scope: !3997, inlinedAt: !4083)
!4468 = !DILocation(line: 192, column: 3, scope: !3997, inlinedAt: !4083)
!4469 = !DILocation(line: 193, column: 9, scope: !3999, inlinedAt: !4083)
!4470 = !DILocation(line: 189, column: 7, scope: !4084)
!4471 = !DILocation(line: 189, column: 7, scope: !4004)
!4472 = !DILocation(line: 191, column: 8, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4084, file: !1, line: 190, column: 29)
!4474 = !DILocation(line: 192, column: 4, scope: !4473)
!4475 = !DILocation(line: 194, column: 7, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 194, column: 7)
!4477 = !DILocation(line: 194, column: 11, scope: !4476)
!4478 = !DILocation(line: 194, column: 7, scope: !4004)
!4479 = !DILocalVariable(name: "perout", scope: !4480, file: !1, line: 195, type: !4481)
!4480 = distinct !DILexicalBlock(scope: !4476, file: !1, line: 194, column: 35)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!4482 = !DILocation(line: 195, column: 31, scope: !4480)
!4483 = !DILocation(line: 195, column: 45, scope: !4480)
!4484 = !DILocation(line: 197, column: 8, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4480, file: !1, line: 197, column: 8)
!4486 = !DILocation(line: 197, column: 16, scope: !4485)
!4487 = !DILocation(line: 197, column: 22, scope: !4485)
!4488 = !DILocation(line: 197, column: 8, scope: !4480)
!4489 = !DILocation(line: 198, column: 9, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4485, file: !1, line: 197, column: 49)
!4491 = !DILocation(line: 199, column: 5, scope: !4490)
!4492 = !DILocation(line: 206, column: 10, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4480, file: !1, line: 206, column: 8)
!4494 = !DILocation(line: 206, column: 18, scope: !4493)
!4495 = !DILocation(line: 206, column: 24, scope: !4493)
!4496 = !DILocation(line: 206, column: 49, scope: !4493)
!4497 = !DILocation(line: 207, column: 9, scope: !4493)
!4498 = !DILocation(line: 207, column: 17, scope: !4493)
!4499 = !DILocation(line: 207, column: 24, scope: !4493)
!4500 = !DILocation(line: 207, column: 27, scope: !4493)
!4501 = !DILocation(line: 207, column: 35, scope: !4493)
!4502 = !DILocation(line: 207, column: 42, scope: !4493)
!4503 = !DILocation(line: 208, column: 9, scope: !4493)
!4504 = !DILocation(line: 208, column: 17, scope: !4493)
!4505 = !DILocation(line: 208, column: 24, scope: !4493)
!4506 = !DILocation(line: 208, column: 27, scope: !4493)
!4507 = !DILocation(line: 208, column: 35, scope: !4493)
!4508 = !DILocation(line: 206, column: 8, scope: !4480)
!4509 = !DILocation(line: 209, column: 9, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4493, file: !1, line: 208, column: 44)
!4511 = !DILocation(line: 210, column: 5, scope: !4510)
!4512 = !DILocation(line: 212, column: 8, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4480, file: !1, line: 212, column: 8)
!4514 = !DILocation(line: 212, column: 16, scope: !4513)
!4515 = !DILocation(line: 212, column: 22, scope: !4513)
!4516 = !DILocation(line: 212, column: 8, scope: !4480)
!4517 = !DILocation(line: 214, column: 9, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !1, line: 214, column: 9)
!4519 = distinct !DILexicalBlock(scope: !4513, file: !1, line: 212, column: 47)
!4520 = !DILocation(line: 214, column: 17, scope: !4518)
!4521 = !DILocation(line: 214, column: 20, scope: !4518)
!4522 = !DILocation(line: 214, column: 26, scope: !4518)
!4523 = !DILocation(line: 214, column: 34, scope: !4518)
!4524 = !DILocation(line: 214, column: 41, scope: !4518)
!4525 = !DILocation(line: 214, column: 24, scope: !4518)
!4526 = !DILocation(line: 214, column: 45, scope: !4518)
!4527 = !DILocation(line: 215, column: 10, scope: !4518)
!4528 = !DILocation(line: 215, column: 18, scope: !4518)
!4529 = !DILocation(line: 215, column: 21, scope: !4518)
!4530 = !DILocation(line: 215, column: 28, scope: !4518)
!4531 = !DILocation(line: 215, column: 36, scope: !4518)
!4532 = !DILocation(line: 215, column: 43, scope: !4518)
!4533 = !DILocation(line: 215, column: 25, scope: !4518)
!4534 = !DILocation(line: 215, column: 47, scope: !4518)
!4535 = !DILocation(line: 216, column: 10, scope: !4518)
!4536 = !DILocation(line: 216, column: 18, scope: !4518)
!4537 = !DILocation(line: 216, column: 21, scope: !4518)
!4538 = !DILocation(line: 216, column: 28, scope: !4518)
!4539 = !DILocation(line: 216, column: 36, scope: !4518)
!4540 = !DILocation(line: 216, column: 43, scope: !4518)
!4541 = !DILocation(line: 216, column: 26, scope: !4518)
!4542 = !DILocation(line: 214, column: 9, scope: !4519)
!4543 = !DILocation(line: 217, column: 10, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4518, file: !1, line: 216, column: 50)
!4545 = !DILocation(line: 218, column: 6, scope: !4544)
!4546 = !DILocation(line: 220, column: 4, scope: !4519)
!4547 = !DILocation(line: 221, column: 8, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4480, file: !1, line: 221, column: 8)
!4549 = !DILocation(line: 221, column: 16, scope: !4548)
!4550 = !DILocation(line: 221, column: 22, scope: !4548)
!4551 = !DILocation(line: 221, column: 8, scope: !4480)
!4552 = !DILocation(line: 227, column: 9, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !1, line: 227, column: 9)
!4554 = distinct !DILexicalBlock(scope: !4548, file: !1, line: 221, column: 42)
!4555 = !DILocation(line: 227, column: 17, scope: !4553)
!4556 = !DILocation(line: 227, column: 23, scope: !4553)
!4557 = !DILocation(line: 227, column: 29, scope: !4553)
!4558 = !DILocation(line: 227, column: 37, scope: !4553)
!4559 = !DILocation(line: 227, column: 44, scope: !4553)
!4560 = !DILocation(line: 227, column: 27, scope: !4553)
!4561 = !DILocation(line: 227, column: 48, scope: !4553)
!4562 = !DILocation(line: 228, column: 10, scope: !4553)
!4563 = !DILocation(line: 228, column: 18, scope: !4553)
!4564 = !DILocation(line: 228, column: 24, scope: !4553)
!4565 = !DILocation(line: 228, column: 31, scope: !4553)
!4566 = !DILocation(line: 228, column: 39, scope: !4553)
!4567 = !DILocation(line: 228, column: 46, scope: !4553)
!4568 = !DILocation(line: 228, column: 28, scope: !4553)
!4569 = !DILocation(line: 228, column: 50, scope: !4553)
!4570 = !DILocation(line: 229, column: 10, scope: !4553)
!4571 = !DILocation(line: 229, column: 18, scope: !4553)
!4572 = !DILocation(line: 229, column: 24, scope: !4553)
!4573 = !DILocation(line: 229, column: 32, scope: !4553)
!4574 = !DILocation(line: 229, column: 40, scope: !4553)
!4575 = !DILocation(line: 229, column: 47, scope: !4553)
!4576 = !DILocation(line: 229, column: 29, scope: !4553)
!4577 = !DILocation(line: 227, column: 9, scope: !4554)
!4578 = !DILocation(line: 230, column: 10, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4553, file: !1, line: 229, column: 54)
!4580 = !DILocation(line: 231, column: 6, scope: !4579)
!4581 = !DILocation(line: 233, column: 4, scope: !4554)
!4582 = !DILocation(line: 234, column: 3, scope: !4480)
!4583 = !DILocation(line: 234, column: 14, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4476, file: !1, line: 234, column: 14)
!4585 = !DILocation(line: 234, column: 18, scope: !4584)
!4586 = !DILocation(line: 234, column: 14, scope: !4476)
!4587 = !DILocation(line: 235, column: 8, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4584, file: !1, line: 234, column: 41)
!4589 = !DILocation(line: 235, column: 15, scope: !4588)
!4590 = !DILocation(line: 235, column: 21, scope: !4588)
!4591 = !DILocation(line: 236, column: 8, scope: !4588)
!4592 = !DILocation(line: 236, column: 15, scope: !4588)
!4593 = !DILocation(line: 236, column: 4, scope: !4588)
!4594 = !DILocation(line: 236, column: 22, scope: !4588)
!4595 = !DILocation(line: 237, column: 8, scope: !4588)
!4596 = !DILocation(line: 237, column: 15, scope: !4588)
!4597 = !DILocation(line: 237, column: 4, scope: !4588)
!4598 = !DILocation(line: 237, column: 22, scope: !4588)
!4599 = !DILocation(line: 238, column: 8, scope: !4588)
!4600 = !DILocation(line: 238, column: 15, scope: !4588)
!4601 = !DILocation(line: 238, column: 4, scope: !4588)
!4602 = !DILocation(line: 238, column: 22, scope: !4588)
!4603 = !DILocation(line: 239, column: 8, scope: !4588)
!4604 = !DILocation(line: 239, column: 15, scope: !4588)
!4605 = !DILocation(line: 239, column: 4, scope: !4588)
!4606 = !DILocation(line: 239, column: 22, scope: !4588)
!4607 = !DILocation(line: 240, column: 3, scope: !4588)
!4608 = !DILocation(line: 241, column: 11, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 241, column: 7)
!4610 = !DILocation(line: 241, column: 18, scope: !4609)
!4611 = !DILocation(line: 241, column: 27, scope: !4609)
!4612 = !DILocation(line: 241, column: 32, scope: !4609)
!4613 = !DILocation(line: 241, column: 24, scope: !4609)
!4614 = !DILocation(line: 241, column: 7, scope: !4004)
!4615 = !DILocation(line: 242, column: 8, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4609, file: !1, line: 241, column: 43)
!4617 = !DILocation(line: 243, column: 4, scope: !4616)
!4618 = !DILocation(line: 245, column: 7, scope: !4004)
!4619 = !DILocation(line: 245, column: 12, scope: !4004)
!4620 = !DILocation(line: 246, column: 16, scope: !4004)
!4621 = !DILocation(line: 246, column: 23, scope: !4004)
!4622 = !DILocation(line: 246, column: 30, scope: !4004)
!4623 = !DILocation(line: 246, column: 12, scope: !4004)
!4624 = !DILocation(line: 246, column: 34, scope: !4004)
!4625 = !DILocation(line: 246, column: 41, scope: !4004)
!4626 = !DILocation(line: 246, column: 48, scope: !4004)
!4627 = !DILocation(line: 246, column: 55, scope: !4004)
!4628 = !DILocation(line: 246, column: 10, scope: !4004)
!4629 = !DILocation(line: 247, column: 33, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 247, column: 7)
!4631 = !DILocation(line: 247, column: 38, scope: !4630)
!4632 = !DILocation(line: 247, column: 7, scope: !4630)
!4633 = !DILocation(line: 247, column: 7, scope: !4004)
!4634 = !DILocation(line: 248, column: 4, scope: !4630)
!4635 = !DILocation(line: 249, column: 9, scope: !4004)
!4636 = !DILocation(line: 249, column: 14, scope: !4004)
!4637 = !DILocation(line: 249, column: 21, scope: !4004)
!4638 = !DILocation(line: 249, column: 32, scope: !4004)
!4639 = !DILocation(line: 249, column: 7, scope: !4004)
!4640 = !DILocation(line: 250, column: 17, scope: !4004)
!4641 = !DILocation(line: 250, column: 22, scope: !4004)
!4642 = !DILocation(line: 250, column: 3, scope: !4004)
!4643 = !DILocation(line: 251, column: 3, scope: !4004)
!4644 = !DILocation(line: 255, column: 3, scope: !4004)
!4645 = !DILocation(line: 257, column: 8, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 257, column: 7)
!4647 = !DILocation(line: 257, column: 7, scope: !4004)
!4648 = !DILocation(line: 258, column: 4, scope: !4646)
!4649 = !DILocation(line: 259, column: 7, scope: !4004)
!4650 = !DILocation(line: 259, column: 12, scope: !4004)
!4651 = !DILocation(line: 260, column: 12, scope: !4004)
!4652 = !DILocation(line: 260, column: 10, scope: !4004)
!4653 = !DILocation(line: 261, column: 33, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 261, column: 7)
!4655 = !DILocation(line: 261, column: 38, scope: !4654)
!4656 = !DILocation(line: 261, column: 7, scope: !4654)
!4657 = !DILocation(line: 261, column: 7, scope: !4004)
!4658 = !DILocation(line: 262, column: 4, scope: !4654)
!4659 = !DILocation(line: 263, column: 9, scope: !4004)
!4660 = !DILocation(line: 263, column: 14, scope: !4004)
!4661 = !DILocation(line: 263, column: 21, scope: !4004)
!4662 = !DILocation(line: 263, column: 32, scope: !4004)
!4663 = !DILocation(line: 263, column: 7, scope: !4004)
!4664 = !DILocation(line: 264, column: 17, scope: !4004)
!4665 = !DILocation(line: 264, column: 22, scope: !4004)
!4666 = !DILocation(line: 264, column: 3, scope: !4004)
!4667 = !DILocation(line: 265, column: 3, scope: !4004)
!4668 = !DILocation(line: 269, column: 8, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 269, column: 7)
!4670 = !DILocation(line: 269, column: 13, scope: !4669)
!4671 = !DILocation(line: 269, column: 19, scope: !4669)
!4672 = !DILocation(line: 269, column: 7, scope: !4004)
!4673 = !DILocation(line: 270, column: 8, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4669, file: !1, line: 269, column: 35)
!4675 = !DILocation(line: 271, column: 4, scope: !4674)
!4676 = !DILocation(line: 273, column: 9, scope: !4004)
!4677 = !DILocation(line: 273, column: 14, scope: !4004)
!4678 = !DILocation(line: 273, column: 20, scope: !4004)
!4679 = !DILocation(line: 273, column: 35, scope: !4004)
!4680 = !DILocation(line: 273, column: 40, scope: !4004)
!4681 = !DILocation(line: 273, column: 7, scope: !4004)
!4682 = !DILocation(line: 274, column: 7, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 274, column: 7)
!4684 = !DILocation(line: 274, column: 7, scope: !4004)
!4685 = !DILocation(line: 275, column: 4, scope: !4683)
!4686 = !DILocation(line: 277, column: 3, scope: !4004)
!4687 = !DILocation(line: 278, column: 8, scope: !4004)
!4688 = !DILocation(line: 279, column: 34, scope: !4004)
!4689 = !DILocation(line: 279, column: 18, scope: !4004)
!4690 = !DILocation(line: 279, column: 25, scope: !4004)
!4691 = !DILocation(line: 279, column: 29, scope: !4004)
!4692 = !DILocation(line: 280, column: 35, scope: !4004)
!4693 = !DILocation(line: 280, column: 32, scope: !4004)
!4694 = !DILocation(line: 280, column: 18, scope: !4004)
!4695 = !DILocation(line: 280, column: 25, scope: !4004)
!4696 = !DILocation(line: 280, column: 30, scope: !4004)
!4697 = !DILocation(line: 281, column: 8, scope: !4004)
!4698 = !DILocation(line: 282, column: 40, scope: !4004)
!4699 = !DILocation(line: 282, column: 18, scope: !4004)
!4700 = !DILocation(line: 282, column: 31, scope: !4004)
!4701 = !DILocation(line: 282, column: 35, scope: !4004)
!4702 = !DILocation(line: 283, column: 41, scope: !4004)
!4703 = !DILocation(line: 283, column: 38, scope: !4004)
!4704 = !DILocation(line: 283, column: 18, scope: !4004)
!4705 = !DILocation(line: 283, column: 31, scope: !4004)
!4706 = !DILocation(line: 283, column: 36, scope: !4004)
!4707 = !DILocation(line: 284, column: 8, scope: !4004)
!4708 = !DILocation(line: 285, column: 39, scope: !4004)
!4709 = !DILocation(line: 285, column: 18, scope: !4004)
!4710 = !DILocation(line: 285, column: 30, scope: !4004)
!4711 = !DILocation(line: 285, column: 34, scope: !4004)
!4712 = !DILocation(line: 286, column: 40, scope: !4004)
!4713 = !DILocation(line: 286, column: 37, scope: !4004)
!4714 = !DILocation(line: 286, column: 18, scope: !4004)
!4715 = !DILocation(line: 286, column: 30, scope: !4004)
!4716 = !DILocation(line: 286, column: 35, scope: !4004)
!4717 = !DILocation(line: 287, column: 35, scope: !4073)
!4718 = !DILocation(line: 287, column: 20, scope: !4073)
!4719 = !DILocation(line: 287, column: 40, scope: !4073)
!4720 = !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !4072)
!4721 = !DILocation(line: 141, column: 6, scope: !4247, inlinedAt: !4071)
!4722 = !DILocation(line: 0, scope: !4247, inlinedAt: !4071)
!4723 = !DILocation(line: 141, column: 6, scope: !3991, inlinedAt: !4071)
!4724 = !DILocation(line: 142, column: 29, scope: !4251, inlinedAt: !4071)
!4725 = !DILocation(line: 142, column: 8, scope: !4251, inlinedAt: !4071)
!4726 = !DILocation(line: 142, column: 7, scope: !4252, inlinedAt: !4071)
!4727 = !DILocation(line: 143, column: 18, scope: !4251, inlinedAt: !4071)
!4728 = !DILocation(line: 143, column: 22, scope: !4251, inlinedAt: !4071)
!4729 = !DILocation(line: 143, column: 4, scope: !4251, inlinedAt: !4071)
!4730 = !DILocation(line: 144, column: 12, scope: !4259, inlinedAt: !4071)
!4731 = !DILocation(line: 144, column: 12, scope: !4251, inlinedAt: !4071)
!4732 = !DILocation(line: 145, column: 4, scope: !4259, inlinedAt: !4071)
!4733 = !DILocation(line: 147, column: 4, scope: !4259, inlinedAt: !4071)
!4734 = !DILocation(line: 148, column: 3, scope: !4252, inlinedAt: !4071)
!4735 = !DILocation(line: 150, column: 6, scope: !4265, inlinedAt: !4071)
!4736 = !DILocation(line: 150, column: 6, scope: !4267, inlinedAt: !4071)
!4737 = !DILocation(line: 150, column: 6, scope: !4271, inlinedAt: !4071)
!4738 = !DILocation(line: 150, column: 6, scope: !4268, inlinedAt: !4071)
!4739 = !DILocation(line: 150, column: 6, scope: !4013, inlinedAt: !4071)
!4740 = !DILocation(line: 150, column: 6, scope: !3991, inlinedAt: !4071)
!4741 = !DILocation(line: 151, column: 3, scope: !4013, inlinedAt: !4071)
!4742 = !DILocation(line: 152, column: 20, scope: !3991, inlinedAt: !4071)
!4743 = !DILocation(line: 152, column: 26, scope: !3991, inlinedAt: !4071)
!4744 = !DILocation(line: 152, column: 33, scope: !3991, inlinedAt: !4071)
!4745 = !DILocation(line: 152, column: 2, scope: !3991, inlinedAt: !4071)
!4746 = !DILocation(line: 153, column: 2, scope: !3991, inlinedAt: !4071)
!4747 = !DILocation(line: 154, column: 1, scope: !3991, inlinedAt: !4071)
!4748 = !DILocation(line: 199, column: 6, scope: !4024, inlinedAt: !4072)
!4749 = !DILocation(line: 200, column: 21, scope: !4023, inlinedAt: !4072)
!4750 = !DILocation(line: 200, column: 25, scope: !4023, inlinedAt: !4072)
!4751 = !DILocation(line: 200, column: 31, scope: !4023, inlinedAt: !4072)
!4752 = !DILocation(line: 200, column: 7, scope: !4023, inlinedAt: !4072)
!4753 = !DILocation(line: 200, column: 5, scope: !4023, inlinedAt: !4072)
!4754 = !DILocation(line: 200, column: 3, scope: !4023, inlinedAt: !4072)
!4755 = !DILocation(line: 201, column: 9, scope: !4024, inlinedAt: !4072)
!4756 = !DILocation(line: 287, column: 7, scope: !4073)
!4757 = !DILocation(line: 287, column: 7, scope: !4004)
!4758 = !DILocation(line: 289, column: 8, scope: !4073)
!4759 = !DILocation(line: 289, column: 4, scope: !4073)
!4760 = !DILocation(line: 290, column: 3, scope: !4004)
!4761 = !DILocation(line: 294, column: 8, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 294, column: 7)
!4763 = !DILocation(line: 294, column: 13, scope: !4762)
!4764 = !DILocation(line: 294, column: 19, scope: !4762)
!4765 = !DILocation(line: 294, column: 7, scope: !4004)
!4766 = !DILocation(line: 295, column: 8, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4762, file: !1, line: 294, column: 31)
!4768 = !DILocation(line: 296, column: 4, scope: !4767)
!4769 = !DILocation(line: 298, column: 39, scope: !4004)
!4770 = !DILocation(line: 298, column: 24, scope: !4004)
!4771 = !DILocation(line: 298, column: 12, scope: !4004)
!4772 = !DILocation(line: 298, column: 10, scope: !4004)
!4773 = !DILocation(line: 299, column: 14, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 299, column: 7)
!4775 = !DILocation(line: 299, column: 7, scope: !4774)
!4776 = !DILocation(line: 299, column: 7, scope: !4004)
!4777 = !DILocation(line: 300, column: 18, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4774, file: !1, line: 299, column: 23)
!4779 = !DILocation(line: 300, column: 10, scope: !4778)
!4780 = !DILocation(line: 300, column: 8, scope: !4778)
!4781 = !DILocation(line: 301, column: 11, scope: !4778)
!4782 = !DILocation(line: 302, column: 4, scope: !4778)
!4783 = !DILocation(line: 304, column: 7, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 304, column: 7)
!4785 = !DILocation(line: 304, column: 15, scope: !4784)
!4786 = !DILocation(line: 304, column: 25, scope: !4784)
!4787 = !DILocation(line: 305, column: 7, scope: !4784)
!4788 = !DILocation(line: 305, column: 10, scope: !4784)
!4789 = !DILocation(line: 305, column: 18, scope: !4784)
!4790 = !DILocation(line: 305, column: 25, scope: !4784)
!4791 = !DILocation(line: 305, column: 28, scope: !4784)
!4792 = !DILocation(line: 305, column: 36, scope: !4784)
!4793 = !DILocation(line: 305, column: 43, scope: !4784)
!4794 = !DILocation(line: 305, column: 46, scope: !4784)
!4795 = !DILocation(line: 305, column: 54, scope: !4784)
!4796 = !DILocation(line: 304, column: 7, scope: !4004)
!4797 = !DILocation(line: 306, column: 8, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4784, file: !1, line: 305, column: 62)
!4799 = !DILocation(line: 307, column: 4, scope: !4798)
!4800 = !DILocation(line: 309, column: 10, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 309, column: 3)
!4802 = !DILocation(line: 309, column: 8, scope: !4801)
!4803 = !DILocation(line: 309, column: 15, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4801, file: !1, line: 309, column: 3)
!4805 = !DILocation(line: 309, column: 19, scope: !4804)
!4806 = !DILocation(line: 309, column: 27, scope: !4804)
!4807 = !DILocation(line: 309, column: 17, scope: !4804)
!4808 = !DILocation(line: 309, column: 3, scope: !4801)
!4809 = !DILocation(line: 310, column: 10, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4804, file: !1, line: 309, column: 43)
!4811 = !DILocation(line: 310, column: 15, scope: !4810)
!4812 = !DILocation(line: 310, column: 21, scope: !4810)
!4813 = !DILocation(line: 310, column: 32, scope: !4810)
!4814 = !DILocation(line: 310, column: 37, scope: !4810)
!4815 = !DILocation(line: 310, column: 8, scope: !4810)
!4816 = !DILocation(line: 311, column: 8, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4810, file: !1, line: 311, column: 8)
!4818 = !DILocation(line: 311, column: 8, scope: !4810)
!4819 = !DILocation(line: 312, column: 5, scope: !4817)
!4820 = !DILocation(line: 313, column: 31, scope: !4810)
!4821 = !DILocation(line: 313, column: 38, scope: !4810)
!4822 = !DILocation(line: 313, column: 4, scope: !4810)
!4823 = !DILocation(line: 313, column: 12, scope: !4810)
!4824 = !DILocation(line: 313, column: 15, scope: !4810)
!4825 = !DILocation(line: 313, column: 21, scope: !4810)
!4826 = !DILocation(line: 313, column: 25, scope: !4810)
!4827 = !DILocation(line: 314, column: 32, scope: !4810)
!4828 = !DILocation(line: 314, column: 39, scope: !4810)
!4829 = !DILocation(line: 314, column: 28, scope: !4810)
!4830 = !DILocation(line: 314, column: 4, scope: !4810)
!4831 = !DILocation(line: 314, column: 12, scope: !4810)
!4832 = !DILocation(line: 314, column: 15, scope: !4810)
!4833 = !DILocation(line: 314, column: 21, scope: !4810)
!4834 = !DILocation(line: 314, column: 26, scope: !4810)
!4835 = !DILocation(line: 315, column: 30, scope: !4810)
!4836 = !DILocation(line: 315, column: 4, scope: !4810)
!4837 = !DILocation(line: 315, column: 12, scope: !4810)
!4838 = !DILocation(line: 315, column: 15, scope: !4810)
!4839 = !DILocation(line: 315, column: 21, scope: !4810)
!4840 = !DILocation(line: 315, column: 25, scope: !4810)
!4841 = !DILocation(line: 316, column: 31, scope: !4810)
!4842 = !DILocation(line: 316, column: 28, scope: !4810)
!4843 = !DILocation(line: 316, column: 4, scope: !4810)
!4844 = !DILocation(line: 316, column: 12, scope: !4810)
!4845 = !DILocation(line: 316, column: 15, scope: !4810)
!4846 = !DILocation(line: 316, column: 21, scope: !4810)
!4847 = !DILocation(line: 316, column: 26, scope: !4810)
!4848 = !DILocation(line: 317, column: 31, scope: !4810)
!4849 = !DILocation(line: 317, column: 39, scope: !4810)
!4850 = !DILocation(line: 317, column: 4, scope: !4810)
!4851 = !DILocation(line: 317, column: 12, scope: !4810)
!4852 = !DILocation(line: 317, column: 15, scope: !4810)
!4853 = !DILocation(line: 317, column: 21, scope: !4810)
!4854 = !DILocation(line: 317, column: 25, scope: !4810)
!4855 = !DILocation(line: 318, column: 32, scope: !4810)
!4856 = !DILocation(line: 318, column: 40, scope: !4810)
!4857 = !DILocation(line: 318, column: 28, scope: !4810)
!4858 = !DILocation(line: 318, column: 4, scope: !4810)
!4859 = !DILocation(line: 318, column: 12, scope: !4810)
!4860 = !DILocation(line: 318, column: 15, scope: !4810)
!4861 = !DILocation(line: 318, column: 21, scope: !4810)
!4862 = !DILocation(line: 318, column: 26, scope: !4810)
!4863 = !DILocation(line: 319, column: 3, scope: !4810)
!4864 = !DILocation(line: 309, column: 39, scope: !4804)
!4865 = !DILocation(line: 309, column: 3, scope: !4804)
!4866 = distinct !{!4866, !4808, !4867}
!4867 = !DILocation(line: 319, column: 3, scope: !4801)
!4868 = !DILocation(line: 320, column: 35, scope: !4062)
!4869 = !DILocation(line: 320, column: 20, scope: !4062)
!4870 = !DILocation(line: 320, column: 40, scope: !4062)
!4871 = !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !4061)
!4872 = !DILocation(line: 141, column: 6, scope: !4247, inlinedAt: !4060)
!4873 = !DILocation(line: 0, scope: !4247, inlinedAt: !4060)
!4874 = !DILocation(line: 141, column: 6, scope: !3991, inlinedAt: !4060)
!4875 = !DILocation(line: 142, column: 29, scope: !4251, inlinedAt: !4060)
!4876 = !DILocation(line: 142, column: 8, scope: !4251, inlinedAt: !4060)
!4877 = !DILocation(line: 142, column: 7, scope: !4252, inlinedAt: !4060)
!4878 = !DILocation(line: 143, column: 18, scope: !4251, inlinedAt: !4060)
!4879 = !DILocation(line: 143, column: 22, scope: !4251, inlinedAt: !4060)
!4880 = !DILocation(line: 143, column: 4, scope: !4251, inlinedAt: !4060)
!4881 = !DILocation(line: 144, column: 12, scope: !4259, inlinedAt: !4060)
!4882 = !DILocation(line: 144, column: 12, scope: !4251, inlinedAt: !4060)
!4883 = !DILocation(line: 145, column: 4, scope: !4259, inlinedAt: !4060)
!4884 = !DILocation(line: 147, column: 4, scope: !4259, inlinedAt: !4060)
!4885 = !DILocation(line: 148, column: 3, scope: !4252, inlinedAt: !4060)
!4886 = !DILocation(line: 150, column: 6, scope: !4265, inlinedAt: !4060)
!4887 = !DILocation(line: 150, column: 6, scope: !4267, inlinedAt: !4060)
!4888 = !DILocation(line: 150, column: 6, scope: !4271, inlinedAt: !4060)
!4889 = !DILocation(line: 150, column: 6, scope: !4268, inlinedAt: !4060)
!4890 = !DILocation(line: 150, column: 6, scope: !4013, inlinedAt: !4060)
!4891 = !DILocation(line: 150, column: 6, scope: !3991, inlinedAt: !4060)
!4892 = !DILocation(line: 151, column: 3, scope: !4013, inlinedAt: !4060)
!4893 = !DILocation(line: 152, column: 20, scope: !3991, inlinedAt: !4060)
!4894 = !DILocation(line: 152, column: 26, scope: !3991, inlinedAt: !4060)
!4895 = !DILocation(line: 152, column: 33, scope: !3991, inlinedAt: !4060)
!4896 = !DILocation(line: 152, column: 2, scope: !3991, inlinedAt: !4060)
!4897 = !DILocation(line: 153, column: 2, scope: !3991, inlinedAt: !4060)
!4898 = !DILocation(line: 154, column: 1, scope: !3991, inlinedAt: !4060)
!4899 = !DILocation(line: 199, column: 6, scope: !4024, inlinedAt: !4061)
!4900 = !DILocation(line: 200, column: 21, scope: !4023, inlinedAt: !4061)
!4901 = !DILocation(line: 200, column: 25, scope: !4023, inlinedAt: !4061)
!4902 = !DILocation(line: 200, column: 31, scope: !4023, inlinedAt: !4061)
!4903 = !DILocation(line: 200, column: 7, scope: !4023, inlinedAt: !4061)
!4904 = !DILocation(line: 200, column: 5, scope: !4023, inlinedAt: !4061)
!4905 = !DILocation(line: 200, column: 3, scope: !4023, inlinedAt: !4061)
!4906 = !DILocation(line: 201, column: 9, scope: !4024, inlinedAt: !4061)
!4907 = !DILocation(line: 320, column: 7, scope: !4062)
!4908 = !DILocation(line: 320, column: 7, scope: !4004)
!4909 = !DILocation(line: 321, column: 8, scope: !4062)
!4910 = !DILocation(line: 321, column: 4, scope: !4062)
!4911 = !DILocation(line: 322, column: 3, scope: !4004)
!4912 = !DILocation(line: 326, column: 39, scope: !4004)
!4913 = !DILocation(line: 326, column: 24, scope: !4004)
!4914 = !DILocation(line: 326, column: 12, scope: !4004)
!4915 = !DILocation(line: 326, column: 10, scope: !4004)
!4916 = !DILocation(line: 327, column: 14, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 327, column: 7)
!4918 = !DILocation(line: 327, column: 7, scope: !4917)
!4919 = !DILocation(line: 327, column: 7, scope: !4004)
!4920 = !DILocation(line: 328, column: 18, scope: !4921)
!4921 = distinct !DILexicalBlock(scope: !4917, file: !1, line: 327, column: 23)
!4922 = !DILocation(line: 328, column: 10, scope: !4921)
!4923 = !DILocation(line: 328, column: 8, scope: !4921)
!4924 = !DILocation(line: 329, column: 11, scope: !4921)
!4925 = !DILocation(line: 330, column: 4, scope: !4921)
!4926 = !DILocation(line: 332, column: 7, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 332, column: 7)
!4928 = !DILocation(line: 332, column: 15, scope: !4927)
!4929 = !DILocation(line: 332, column: 25, scope: !4927)
!4930 = !DILocation(line: 332, column: 7, scope: !4004)
!4931 = !DILocation(line: 333, column: 8, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4927, file: !1, line: 332, column: 44)
!4933 = !DILocation(line: 334, column: 4, scope: !4932)
!4934 = !DILocation(line: 336, column: 10, scope: !4004)
!4935 = !DILocation(line: 336, column: 18, scope: !4004)
!4936 = !DILocation(line: 336, column: 7, scope: !4004)
!4937 = !DILocation(line: 337, column: 10, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 337, column: 3)
!4939 = !DILocation(line: 337, column: 8, scope: !4938)
!4940 = !DILocation(line: 337, column: 15, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4938, file: !1, line: 337, column: 3)
!4942 = !DILocation(line: 337, column: 19, scope: !4941)
!4943 = !DILocation(line: 337, column: 27, scope: !4941)
!4944 = !DILocation(line: 337, column: 17, scope: !4941)
!4945 = !DILocation(line: 337, column: 3, scope: !4938)
!4946 = !DILocation(line: 338, column: 4, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4941, file: !1, line: 337, column: 43)
!4948 = !DILocation(line: 339, column: 18, scope: !4947)
!4949 = !DILocation(line: 339, column: 4, scope: !4947)
!4950 = !DILocation(line: 339, column: 9, scope: !4947)
!4951 = !DILocation(line: 339, column: 13, scope: !4947)
!4952 = !DILocation(line: 340, column: 19, scope: !4947)
!4953 = !DILocation(line: 340, column: 16, scope: !4947)
!4954 = !DILocation(line: 340, column: 4, scope: !4947)
!4955 = !DILocation(line: 340, column: 9, scope: !4947)
!4956 = !DILocation(line: 340, column: 14, scope: !4947)
!4957 = !DILocation(line: 341, column: 7, scope: !4947)
!4958 = !DILocation(line: 342, column: 8, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4947, file: !1, line: 342, column: 8)
!4960 = !DILocation(line: 342, column: 13, scope: !4959)
!4961 = !DILocation(line: 342, column: 8, scope: !4947)
!4962 = !DILocation(line: 343, column: 11, scope: !4959)
!4963 = !DILocation(line: 343, column: 16, scope: !4959)
!4964 = !DILocation(line: 343, column: 27, scope: !4959)
!4965 = !DILocation(line: 343, column: 9, scope: !4959)
!4966 = !DILocation(line: 343, column: 5, scope: !4959)
!4967 = !DILocation(line: 345, column: 11, scope: !4959)
!4968 = !DILocation(line: 345, column: 16, scope: !4959)
!4969 = !DILocation(line: 345, column: 26, scope: !4959)
!4970 = !DILocation(line: 345, column: 9, scope: !4959)
!4971 = !DILocation(line: 346, column: 8, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4947, file: !1, line: 346, column: 8)
!4973 = !DILocation(line: 346, column: 8, scope: !4947)
!4974 = !DILocation(line: 347, column: 5, scope: !4972)
!4975 = !DILocation(line: 348, column: 18, scope: !4947)
!4976 = !DILocation(line: 348, column: 4, scope: !4947)
!4977 = !DILocation(line: 348, column: 9, scope: !4947)
!4978 = !DILocation(line: 348, column: 13, scope: !4947)
!4979 = !DILocation(line: 349, column: 19, scope: !4947)
!4980 = !DILocation(line: 349, column: 16, scope: !4947)
!4981 = !DILocation(line: 349, column: 4, scope: !4947)
!4982 = !DILocation(line: 349, column: 9, scope: !4947)
!4983 = !DILocation(line: 349, column: 14, scope: !4947)
!4984 = !DILocation(line: 350, column: 7, scope: !4947)
!4985 = !DILocation(line: 351, column: 3, scope: !4947)
!4986 = !DILocation(line: 337, column: 39, scope: !4941)
!4987 = !DILocation(line: 337, column: 3, scope: !4941)
!4988 = distinct !{!4988, !4945, !4989}
!4989 = !DILocation(line: 351, column: 3, scope: !4938)
!4990 = !DILocation(line: 352, column: 3, scope: !4004)
!4991 = !DILocation(line: 353, column: 17, scope: !4004)
!4992 = !DILocation(line: 353, column: 3, scope: !4004)
!4993 = !DILocation(line: 353, column: 8, scope: !4004)
!4994 = !DILocation(line: 353, column: 12, scope: !4004)
!4995 = !DILocation(line: 354, column: 18, scope: !4004)
!4996 = !DILocation(line: 354, column: 15, scope: !4004)
!4997 = !DILocation(line: 354, column: 3, scope: !4004)
!4998 = !DILocation(line: 354, column: 8, scope: !4004)
!4999 = !DILocation(line: 354, column: 13, scope: !4004)
!5000 = !DILocation(line: 355, column: 35, scope: !4051)
!5001 = !DILocation(line: 355, column: 20, scope: !4051)
!5002 = !DILocation(line: 355, column: 40, scope: !4051)
!5003 = !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !4050)
!5004 = !DILocation(line: 141, column: 6, scope: !4247, inlinedAt: !4049)
!5005 = !DILocation(line: 0, scope: !4247, inlinedAt: !4049)
!5006 = !DILocation(line: 141, column: 6, scope: !3991, inlinedAt: !4049)
!5007 = !DILocation(line: 142, column: 29, scope: !4251, inlinedAt: !4049)
!5008 = !DILocation(line: 142, column: 8, scope: !4251, inlinedAt: !4049)
!5009 = !DILocation(line: 142, column: 7, scope: !4252, inlinedAt: !4049)
!5010 = !DILocation(line: 143, column: 18, scope: !4251, inlinedAt: !4049)
!5011 = !DILocation(line: 143, column: 22, scope: !4251, inlinedAt: !4049)
!5012 = !DILocation(line: 143, column: 4, scope: !4251, inlinedAt: !4049)
!5013 = !DILocation(line: 144, column: 12, scope: !4259, inlinedAt: !4049)
!5014 = !DILocation(line: 144, column: 12, scope: !4251, inlinedAt: !4049)
!5015 = !DILocation(line: 145, column: 4, scope: !4259, inlinedAt: !4049)
!5016 = !DILocation(line: 147, column: 4, scope: !4259, inlinedAt: !4049)
!5017 = !DILocation(line: 148, column: 3, scope: !4252, inlinedAt: !4049)
!5018 = !DILocation(line: 150, column: 6, scope: !4265, inlinedAt: !4049)
!5019 = !DILocation(line: 150, column: 6, scope: !4267, inlinedAt: !4049)
!5020 = !DILocation(line: 150, column: 6, scope: !4271, inlinedAt: !4049)
!5021 = !DILocation(line: 150, column: 6, scope: !4268, inlinedAt: !4049)
!5022 = !DILocation(line: 150, column: 6, scope: !4013, inlinedAt: !4049)
!5023 = !DILocation(line: 150, column: 6, scope: !3991, inlinedAt: !4049)
!5024 = !DILocation(line: 151, column: 3, scope: !4013, inlinedAt: !4049)
!5025 = !DILocation(line: 152, column: 20, scope: !3991, inlinedAt: !4049)
!5026 = !DILocation(line: 152, column: 26, scope: !3991, inlinedAt: !4049)
!5027 = !DILocation(line: 152, column: 33, scope: !3991, inlinedAt: !4049)
!5028 = !DILocation(line: 152, column: 2, scope: !3991, inlinedAt: !4049)
!5029 = !DILocation(line: 153, column: 2, scope: !3991, inlinedAt: !4049)
!5030 = !DILocation(line: 154, column: 1, scope: !3991, inlinedAt: !4049)
!5031 = !DILocation(line: 199, column: 6, scope: !4024, inlinedAt: !4050)
!5032 = !DILocation(line: 200, column: 21, scope: !4023, inlinedAt: !4050)
!5033 = !DILocation(line: 200, column: 25, scope: !4023, inlinedAt: !4050)
!5034 = !DILocation(line: 200, column: 31, scope: !4023, inlinedAt: !4050)
!5035 = !DILocation(line: 200, column: 7, scope: !4023, inlinedAt: !4050)
!5036 = !DILocation(line: 200, column: 5, scope: !4023, inlinedAt: !4050)
!5037 = !DILocation(line: 200, column: 3, scope: !4023, inlinedAt: !4050)
!5038 = !DILocation(line: 201, column: 9, scope: !4024, inlinedAt: !4050)
!5039 = !DILocation(line: 355, column: 7, scope: !4051)
!5040 = !DILocation(line: 355, column: 7, scope: !4004)
!5041 = !DILocation(line: 356, column: 8, scope: !4051)
!5042 = !DILocation(line: 356, column: 4, scope: !4051)
!5043 = !DILocation(line: 357, column: 3, scope: !4004)
!5044 = !DILocation(line: 361, column: 22, scope: !4040)
!5045 = !DILocation(line: 361, column: 42, scope: !4040)
!5046 = !DILocation(line: 361, column: 27, scope: !4040)
!5047 = !DILocation(line: 191, column: 6, scope: !3997, inlinedAt: !4039)
!5048 = !DILocation(line: 141, column: 6, scope: !4247, inlinedAt: !4038)
!5049 = !DILocation(line: 0, scope: !4247, inlinedAt: !4038)
!5050 = !DILocation(line: 141, column: 6, scope: !3991, inlinedAt: !4038)
!5051 = !DILocation(line: 142, column: 29, scope: !4251, inlinedAt: !4038)
!5052 = !DILocation(line: 142, column: 8, scope: !4251, inlinedAt: !4038)
!5053 = !DILocation(line: 142, column: 7, scope: !4252, inlinedAt: !4038)
!5054 = !DILocation(line: 143, column: 18, scope: !4251, inlinedAt: !4038)
!5055 = !DILocation(line: 143, column: 22, scope: !4251, inlinedAt: !4038)
!5056 = !DILocation(line: 143, column: 4, scope: !4251, inlinedAt: !4038)
!5057 = !DILocation(line: 144, column: 12, scope: !4259, inlinedAt: !4038)
!5058 = !DILocation(line: 144, column: 12, scope: !4251, inlinedAt: !4038)
!5059 = !DILocation(line: 145, column: 4, scope: !4259, inlinedAt: !4038)
!5060 = !DILocation(line: 147, column: 4, scope: !4259, inlinedAt: !4038)
!5061 = !DILocation(line: 148, column: 3, scope: !4252, inlinedAt: !4038)
!5062 = !DILocation(line: 150, column: 6, scope: !4265, inlinedAt: !4038)
!5063 = !DILocation(line: 150, column: 6, scope: !4267, inlinedAt: !4038)
!5064 = !DILocation(line: 150, column: 6, scope: !4271, inlinedAt: !4038)
!5065 = !DILocation(line: 150, column: 6, scope: !4268, inlinedAt: !4038)
!5066 = !DILocation(line: 150, column: 6, scope: !4013, inlinedAt: !4038)
!5067 = !DILocation(line: 150, column: 6, scope: !3991, inlinedAt: !4038)
!5068 = !DILocation(line: 151, column: 3, scope: !4013, inlinedAt: !4038)
!5069 = !DILocation(line: 152, column: 20, scope: !3991, inlinedAt: !4038)
!5070 = !DILocation(line: 152, column: 26, scope: !3991, inlinedAt: !4038)
!5071 = !DILocation(line: 152, column: 33, scope: !3991, inlinedAt: !4038)
!5072 = !DILocation(line: 152, column: 2, scope: !3991, inlinedAt: !4038)
!5073 = !DILocation(line: 153, column: 2, scope: !3991, inlinedAt: !4038)
!5074 = !DILocation(line: 154, column: 1, scope: !3991, inlinedAt: !4038)
!5075 = !DILocation(line: 191, column: 6, scope: !3999, inlinedAt: !4039)
!5076 = !DILocation(line: 192, column: 23, scope: !3997, inlinedAt: !4039)
!5077 = !DILocation(line: 192, column: 27, scope: !3997, inlinedAt: !4039)
!5078 = !DILocation(line: 192, column: 33, scope: !3997, inlinedAt: !4039)
!5079 = !DILocation(line: 192, column: 7, scope: !3997, inlinedAt: !4039)
!5080 = !DILocation(line: 192, column: 5, scope: !3997, inlinedAt: !4039)
!5081 = !DILocation(line: 192, column: 3, scope: !3997, inlinedAt: !4039)
!5082 = !DILocation(line: 193, column: 9, scope: !3999, inlinedAt: !4039)
!5083 = !DILocation(line: 361, column: 7, scope: !4040)
!5084 = !DILocation(line: 361, column: 7, scope: !4004)
!5085 = !DILocation(line: 362, column: 8, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !4040, file: !1, line: 361, column: 60)
!5087 = !DILocation(line: 363, column: 4, scope: !5086)
!5088 = !DILocation(line: 365, column: 11, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 365, column: 7)
!5090 = !DILocation(line: 365, column: 8, scope: !5089)
!5091 = !DILocation(line: 365, column: 18, scope: !5089)
!5092 = !DILocation(line: 365, column: 24, scope: !5089)
!5093 = !DILocation(line: 365, column: 21, scope: !5089)
!5094 = !DILocation(line: 365, column: 31, scope: !5089)
!5095 = !DILocation(line: 365, column: 37, scope: !5089)
!5096 = !DILocation(line: 365, column: 34, scope: !5089)
!5097 = !DILocation(line: 366, column: 5, scope: !5089)
!5098 = !DILocation(line: 366, column: 11, scope: !5089)
!5099 = !DILocation(line: 366, column: 8, scope: !5089)
!5100 = !DILocation(line: 366, column: 18, scope: !5089)
!5101 = !DILocation(line: 366, column: 24, scope: !5089)
!5102 = !DILocation(line: 366, column: 21, scope: !5089)
!5103 = !DILocation(line: 367, column: 4, scope: !5089)
!5104 = !DILocation(line: 367, column: 7, scope: !5089)
!5105 = !DILocation(line: 367, column: 11, scope: !5089)
!5106 = !DILocation(line: 365, column: 7, scope: !4004)
!5107 = !DILocation(line: 368, column: 8, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5089, file: !1, line: 367, column: 32)
!5109 = !DILocation(line: 369, column: 4, scope: !5108)
!5110 = !DILocation(line: 370, column: 14, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5089, file: !1, line: 370, column: 14)
!5112 = !DILocation(line: 370, column: 18, scope: !5111)
!5113 = !DILocation(line: 370, column: 14, scope: !5089)
!5114 = !DILocation(line: 371, column: 7, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5111, file: !1, line: 370, column: 38)
!5116 = !DILocation(line: 371, column: 4, scope: !5115)
!5117 = !DILocation(line: 371, column: 14, scope: !5115)
!5118 = !DILocation(line: 372, column: 7, scope: !5115)
!5119 = !DILocation(line: 372, column: 4, scope: !5115)
!5120 = !DILocation(line: 372, column: 14, scope: !5115)
!5121 = !DILocation(line: 373, column: 7, scope: !5115)
!5122 = !DILocation(line: 373, column: 4, scope: !5115)
!5123 = !DILocation(line: 373, column: 14, scope: !5115)
!5124 = !DILocation(line: 374, column: 7, scope: !5115)
!5125 = !DILocation(line: 374, column: 4, scope: !5115)
!5126 = !DILocation(line: 374, column: 14, scope: !5115)
!5127 = !DILocation(line: 375, column: 7, scope: !5115)
!5128 = !DILocation(line: 375, column: 4, scope: !5115)
!5129 = !DILocation(line: 375, column: 14, scope: !5115)
!5130 = !DILocation(line: 376, column: 3, scope: !5115)
!5131 = !DILocation(line: 377, column: 18, scope: !4004)
!5132 = !DILocation(line: 377, column: 13, scope: !4004)
!5133 = !DILocation(line: 378, column: 7, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 378, column: 7)
!5135 = !DILocation(line: 378, column: 20, scope: !5134)
!5136 = !DILocation(line: 378, column: 25, scope: !5134)
!5137 = !DILocation(line: 378, column: 17, scope: !5134)
!5138 = !DILocation(line: 378, column: 7, scope: !4004)
!5139 = !DILocation(line: 379, column: 8, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5134, file: !1, line: 378, column: 33)
!5141 = !DILocation(line: 380, column: 4, scope: !5140)
!5142 = !DILocalVariable(name: "_i", scope: !5143, file: !1, line: 382, type: !5)
!5143 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 382, column: 15)
!5144 = !DILocation(line: 382, column: 15, scope: !5143)
!5145 = !DILocalVariable(name: "_s", scope: !5143, file: !1, line: 382, type: !167)
!5146 = !DILocalVariable(name: "_mask", scope: !5143, file: !1, line: 382, type: !222)
!5147 = !DILocation(line: 382, column: 15, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5143, file: !1, line: 382, column: 15)
!5149 = !DILocation(line: 382, column: 15, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5143, file: !1, line: 382, column: 15)
!5151 = !DILocation(line: 382, column: 13, scope: !4004)
!5152 = !DILocation(line: 383, column: 33, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 383, column: 7)
!5154 = !DILocation(line: 383, column: 38, scope: !5153)
!5155 = !DILocation(line: 383, column: 7, scope: !5153)
!5156 = !DILocation(line: 383, column: 7, scope: !4004)
!5157 = !DILocation(line: 384, column: 4, scope: !5153)
!5158 = !DILocation(line: 385, column: 8, scope: !4004)
!5159 = !DILocation(line: 385, column: 13, scope: !4004)
!5160 = !DILocation(line: 385, column: 24, scope: !4004)
!5161 = !DILocation(line: 386, column: 17, scope: !4004)
!5162 = !DILocation(line: 386, column: 22, scope: !4004)
!5163 = !DILocation(line: 386, column: 3, scope: !4004)
!5164 = !DILocation(line: 387, column: 8, scope: !4026)
!5165 = !DILocation(line: 387, column: 12, scope: !4026)
!5166 = !DILocation(line: 387, column: 43, scope: !4026)
!5167 = !DILocation(line: 387, column: 28, scope: !4026)
!5168 = !DILocation(line: 387, column: 48, scope: !4026)
!5169 = !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !4025)
!5170 = !DILocation(line: 141, column: 6, scope: !4247, inlinedAt: !4022)
!5171 = !DILocation(line: 0, scope: !4247, inlinedAt: !4022)
!5172 = !DILocation(line: 141, column: 6, scope: !3991, inlinedAt: !4022)
!5173 = !DILocation(line: 142, column: 29, scope: !4251, inlinedAt: !4022)
!5174 = !DILocation(line: 142, column: 8, scope: !4251, inlinedAt: !4022)
!5175 = !DILocation(line: 142, column: 7, scope: !4252, inlinedAt: !4022)
!5176 = !DILocation(line: 143, column: 18, scope: !4251, inlinedAt: !4022)
!5177 = !DILocation(line: 143, column: 22, scope: !4251, inlinedAt: !4022)
!5178 = !DILocation(line: 143, column: 4, scope: !4251, inlinedAt: !4022)
!5179 = !DILocation(line: 144, column: 12, scope: !4259, inlinedAt: !4022)
!5180 = !DILocation(line: 144, column: 12, scope: !4251, inlinedAt: !4022)
!5181 = !DILocation(line: 145, column: 4, scope: !4259, inlinedAt: !4022)
!5182 = !DILocation(line: 147, column: 4, scope: !4259, inlinedAt: !4022)
!5183 = !DILocation(line: 148, column: 3, scope: !4252, inlinedAt: !4022)
!5184 = !DILocation(line: 150, column: 6, scope: !4265, inlinedAt: !4022)
!5185 = !DILocation(line: 150, column: 6, scope: !4267, inlinedAt: !4022)
!5186 = !DILocation(line: 150, column: 6, scope: !4271, inlinedAt: !4022)
!5187 = !DILocation(line: 150, column: 6, scope: !4268, inlinedAt: !4022)
!5188 = !DILocation(line: 150, column: 6, scope: !4013, inlinedAt: !4022)
!5189 = !DILocation(line: 150, column: 6, scope: !3991, inlinedAt: !4022)
!5190 = !DILocation(line: 151, column: 3, scope: !4013, inlinedAt: !4022)
!5191 = !DILocation(line: 152, column: 20, scope: !3991, inlinedAt: !4022)
!5192 = !DILocation(line: 152, column: 26, scope: !3991, inlinedAt: !4022)
!5193 = !DILocation(line: 152, column: 33, scope: !3991, inlinedAt: !4022)
!5194 = !DILocation(line: 152, column: 2, scope: !3991, inlinedAt: !4022)
!5195 = !DILocation(line: 153, column: 2, scope: !3991, inlinedAt: !4022)
!5196 = !DILocation(line: 154, column: 1, scope: !3991, inlinedAt: !4022)
!5197 = !DILocation(line: 199, column: 6, scope: !4024, inlinedAt: !4025)
!5198 = !DILocation(line: 200, column: 21, scope: !4023, inlinedAt: !4025)
!5199 = !DILocation(line: 200, column: 25, scope: !4023, inlinedAt: !4025)
!5200 = !DILocation(line: 200, column: 31, scope: !4023, inlinedAt: !4025)
!5201 = !DILocation(line: 200, column: 7, scope: !4023, inlinedAt: !4025)
!5202 = !DILocation(line: 200, column: 5, scope: !4023, inlinedAt: !4025)
!5203 = !DILocation(line: 200, column: 3, scope: !4023, inlinedAt: !4025)
!5204 = !DILocation(line: 201, column: 9, scope: !4024, inlinedAt: !4025)
!5205 = !DILocation(line: 387, column: 15, scope: !4026)
!5206 = !DILocation(line: 387, column: 7, scope: !4004)
!5207 = !DILocation(line: 388, column: 8, scope: !4026)
!5208 = !DILocation(line: 388, column: 4, scope: !4026)
!5209 = !DILocation(line: 389, column: 3, scope: !4004)
!5210 = !DILocation(line: 393, column: 22, scope: !4003)
!5211 = !DILocation(line: 393, column: 42, scope: !4003)
!5212 = !DILocation(line: 393, column: 27, scope: !4003)
!5213 = !DILocation(line: 191, column: 6, scope: !3997, inlinedAt: !4002)
!5214 = !DILocation(line: 141, column: 6, scope: !4247, inlinedAt: !3996)
!5215 = !DILocation(line: 0, scope: !4247, inlinedAt: !3996)
!5216 = !DILocation(line: 141, column: 6, scope: !3991, inlinedAt: !3996)
!5217 = !DILocation(line: 142, column: 29, scope: !4251, inlinedAt: !3996)
!5218 = !DILocation(line: 142, column: 8, scope: !4251, inlinedAt: !3996)
!5219 = !DILocation(line: 142, column: 7, scope: !4252, inlinedAt: !3996)
!5220 = !DILocation(line: 143, column: 18, scope: !4251, inlinedAt: !3996)
!5221 = !DILocation(line: 143, column: 22, scope: !4251, inlinedAt: !3996)
!5222 = !DILocation(line: 143, column: 4, scope: !4251, inlinedAt: !3996)
!5223 = !DILocation(line: 144, column: 12, scope: !4259, inlinedAt: !3996)
!5224 = !DILocation(line: 144, column: 12, scope: !4251, inlinedAt: !3996)
!5225 = !DILocation(line: 145, column: 4, scope: !4259, inlinedAt: !3996)
!5226 = !DILocation(line: 147, column: 4, scope: !4259, inlinedAt: !3996)
!5227 = !DILocation(line: 148, column: 3, scope: !4252, inlinedAt: !3996)
!5228 = !DILocation(line: 150, column: 6, scope: !4265, inlinedAt: !3996)
!5229 = !DILocation(line: 150, column: 6, scope: !4267, inlinedAt: !3996)
!5230 = !DILocation(line: 150, column: 6, scope: !4271, inlinedAt: !3996)
!5231 = !DILocation(line: 150, column: 6, scope: !4268, inlinedAt: !3996)
!5232 = !DILocation(line: 150, column: 6, scope: !4013, inlinedAt: !3996)
!5233 = !DILocation(line: 150, column: 6, scope: !3991, inlinedAt: !3996)
!5234 = !DILocation(line: 151, column: 3, scope: !4013, inlinedAt: !3996)
!5235 = !DILocation(line: 152, column: 20, scope: !3991, inlinedAt: !3996)
!5236 = !DILocation(line: 152, column: 26, scope: !3991, inlinedAt: !3996)
!5237 = !DILocation(line: 152, column: 33, scope: !3991, inlinedAt: !3996)
!5238 = !DILocation(line: 152, column: 2, scope: !3991, inlinedAt: !3996)
!5239 = !DILocation(line: 153, column: 2, scope: !3991, inlinedAt: !3996)
!5240 = !DILocation(line: 154, column: 1, scope: !3991, inlinedAt: !3996)
!5241 = !DILocation(line: 191, column: 6, scope: !3999, inlinedAt: !4002)
!5242 = !DILocation(line: 192, column: 23, scope: !3997, inlinedAt: !4002)
!5243 = !DILocation(line: 192, column: 27, scope: !3997, inlinedAt: !4002)
!5244 = !DILocation(line: 192, column: 33, scope: !3997, inlinedAt: !4002)
!5245 = !DILocation(line: 192, column: 7, scope: !3997, inlinedAt: !4002)
!5246 = !DILocation(line: 192, column: 5, scope: !3997, inlinedAt: !4002)
!5247 = !DILocation(line: 192, column: 3, scope: !3997, inlinedAt: !4002)
!5248 = !DILocation(line: 193, column: 9, scope: !3999, inlinedAt: !4002)
!5249 = !DILocation(line: 393, column: 7, scope: !4003)
!5250 = !DILocation(line: 393, column: 7, scope: !4004)
!5251 = !DILocation(line: 394, column: 8, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !4003, file: !1, line: 393, column: 60)
!5253 = !DILocation(line: 395, column: 4, scope: !5252)
!5254 = !DILocation(line: 397, column: 11, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 397, column: 7)
!5256 = !DILocation(line: 397, column: 8, scope: !5255)
!5257 = !DILocation(line: 397, column: 18, scope: !5255)
!5258 = !DILocation(line: 397, column: 24, scope: !5255)
!5259 = !DILocation(line: 397, column: 21, scope: !5255)
!5260 = !DILocation(line: 397, column: 31, scope: !5255)
!5261 = !DILocation(line: 397, column: 37, scope: !5255)
!5262 = !DILocation(line: 397, column: 34, scope: !5255)
!5263 = !DILocation(line: 398, column: 5, scope: !5255)
!5264 = !DILocation(line: 398, column: 11, scope: !5255)
!5265 = !DILocation(line: 398, column: 8, scope: !5255)
!5266 = !DILocation(line: 398, column: 18, scope: !5255)
!5267 = !DILocation(line: 398, column: 24, scope: !5255)
!5268 = !DILocation(line: 398, column: 21, scope: !5255)
!5269 = !DILocation(line: 399, column: 4, scope: !5255)
!5270 = !DILocation(line: 399, column: 7, scope: !5255)
!5271 = !DILocation(line: 399, column: 11, scope: !5255)
!5272 = !DILocation(line: 397, column: 7, scope: !4004)
!5273 = !DILocation(line: 400, column: 8, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5255, file: !1, line: 399, column: 32)
!5275 = !DILocation(line: 401, column: 4, scope: !5274)
!5276 = !DILocation(line: 402, column: 14, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5255, file: !1, line: 402, column: 14)
!5278 = !DILocation(line: 402, column: 18, scope: !5277)
!5279 = !DILocation(line: 402, column: 14, scope: !5255)
!5280 = !DILocation(line: 403, column: 7, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5277, file: !1, line: 402, column: 38)
!5282 = !DILocation(line: 403, column: 4, scope: !5281)
!5283 = !DILocation(line: 403, column: 14, scope: !5281)
!5284 = !DILocation(line: 404, column: 7, scope: !5281)
!5285 = !DILocation(line: 404, column: 4, scope: !5281)
!5286 = !DILocation(line: 404, column: 14, scope: !5281)
!5287 = !DILocation(line: 405, column: 7, scope: !5281)
!5288 = !DILocation(line: 405, column: 4, scope: !5281)
!5289 = !DILocation(line: 405, column: 14, scope: !5281)
!5290 = !DILocation(line: 406, column: 7, scope: !5281)
!5291 = !DILocation(line: 406, column: 4, scope: !5281)
!5292 = !DILocation(line: 406, column: 14, scope: !5281)
!5293 = !DILocation(line: 407, column: 7, scope: !5281)
!5294 = !DILocation(line: 407, column: 4, scope: !5281)
!5295 = !DILocation(line: 407, column: 14, scope: !5281)
!5296 = !DILocation(line: 408, column: 3, scope: !5281)
!5297 = !DILocation(line: 409, column: 18, scope: !4004)
!5298 = !DILocation(line: 409, column: 13, scope: !4004)
!5299 = !DILocation(line: 410, column: 7, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 410, column: 7)
!5301 = !DILocation(line: 410, column: 20, scope: !5300)
!5302 = !DILocation(line: 410, column: 25, scope: !5300)
!5303 = !DILocation(line: 410, column: 17, scope: !5300)
!5304 = !DILocation(line: 410, column: 7, scope: !4004)
!5305 = !DILocation(line: 411, column: 8, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5300, file: !1, line: 410, column: 33)
!5307 = !DILocation(line: 412, column: 4, scope: !5306)
!5308 = !DILocalVariable(name: "_i", scope: !5309, file: !1, line: 414, type: !5)
!5309 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 414, column: 15)
!5310 = !DILocation(line: 414, column: 15, scope: !5309)
!5311 = !DILocalVariable(name: "_s", scope: !5309, file: !1, line: 414, type: !167)
!5312 = !DILocalVariable(name: "_mask", scope: !5309, file: !1, line: 414, type: !222)
!5313 = !DILocation(line: 414, column: 15, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5309, file: !1, line: 414, column: 15)
!5315 = !DILocation(line: 414, column: 15, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5309, file: !1, line: 414, column: 15)
!5317 = !DILocation(line: 414, column: 13, scope: !4004)
!5318 = !DILocation(line: 415, column: 33, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 415, column: 7)
!5320 = !DILocation(line: 415, column: 38, scope: !5319)
!5321 = !DILocation(line: 415, column: 7, scope: !5319)
!5322 = !DILocation(line: 415, column: 7, scope: !4004)
!5323 = !DILocation(line: 416, column: 4, scope: !5319)
!5324 = !DILocation(line: 417, column: 25, scope: !4004)
!5325 = !DILocation(line: 417, column: 30, scope: !4004)
!5326 = !DILocation(line: 417, column: 44, scope: !4004)
!5327 = !DILocation(line: 417, column: 53, scope: !4004)
!5328 = !DILocation(line: 417, column: 9, scope: !4004)
!5329 = !DILocation(line: 417, column: 7, scope: !4004)
!5330 = !DILocation(line: 418, column: 17, scope: !4004)
!5331 = !DILocation(line: 418, column: 22, scope: !4004)
!5332 = !DILocation(line: 418, column: 3, scope: !4004)
!5333 = !DILocation(line: 419, column: 3, scope: !4004)
!5334 = !DILocation(line: 422, column: 7, scope: !4004)
!5335 = !DILocation(line: 423, column: 3, scope: !4004)
!5336 = !DILocation(line: 424, column: 2, scope: !4004)
!5337 = !DILabel(scope: !3989, name: "out", file: !1, line: 426)
!5338 = !DILocation(line: 426, column: 1, scope: !3989)
!5339 = !DILocation(line: 427, column: 8, scope: !3989)
!5340 = !DILocation(line: 427, column: 2, scope: !3989)
!5341 = !DILocation(line: 428, column: 8, scope: !3989)
!5342 = !DILocation(line: 428, column: 2, scope: !3989)
!5343 = !DILocation(line: 429, column: 9, scope: !3989)
!5344 = !DILocation(line: 429, column: 2, scope: !3989)
!5345 = !DILocation(line: 430, column: 1, scope: !3989)
!5346 = distinct !DISubprogram(name: "IS_ERR", scope: !5347, file: !5347, line: 34, type: !5348, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5347 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!377, !3000}
!5350 = !DILocalVariable(name: "ptr", arg: 1, scope: !5346, file: !5347, line: 34, type: !3000)
!5351 = !DILocation(line: 34, column: 60, scope: !5346)
!5352 = !DILocation(line: 36, column: 9, scope: !5346)
!5353 = !DILocation(line: 36, column: 2, scope: !5346)
!5354 = distinct !DISubprogram(name: "PTR_ERR", scope: !5347, file: !5347, line: 29, type: !5355, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!210, !3000}
!5357 = !DILocalVariable(name: "ptr", arg: 1, scope: !5354, file: !5347, line: 29, type: !3000)
!5358 = !DILocation(line: 29, column: 61, scope: !5354)
!5359 = !DILocation(line: 31, column: 16, scope: !5354)
!5360 = !DILocation(line: 31, column: 9, scope: !5354)
!5361 = !DILocation(line: 31, column: 2, scope: !5354)
!5362 = distinct !DISubprogram(name: "array_index_mask_nospec", scope: !5363, file: !5363, line: 36, type: !5364, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5363 = !DIFile(filename: "./arch/x86/include/asm/barrier.h", directory: "/home/lizy2001/genbc/linux")
!5364 = !DISubroutineType(types: !5365)
!5365 = !{!222, !222, !222}
!5366 = !DILocalVariable(name: "index", arg: 1, scope: !5362, file: !5363, line: 36, type: !222)
!5367 = !DILocation(line: 36, column: 67, scope: !5362)
!5368 = !DILocalVariable(name: "size", arg: 2, scope: !5362, file: !5363, line: 37, type: !222)
!5369 = !DILocation(line: 37, column: 17, scope: !5362)
!5370 = !DILocalVariable(name: "mask", scope: !5362, file: !5363, line: 39, type: !222)
!5371 = !DILocation(line: 39, column: 16, scope: !5362)
!5372 = !DILocation(line: 43, column: 9, scope: !5362)
!5373 = !DILocation(line: 43, column: 20, scope: !5362)
!5374 = !DILocation(line: 41, column: 2, scope: !5362)
!5375 = !{i32 328542}
!5376 = !DILocation(line: 45, column: 9, scope: !5362)
!5377 = !DILocation(line: 45, column: 2, scope: !5362)
!5378 = distinct !DISubprogram(name: "ptp_poll", scope: !1, file: !1, line: 432, type: !231, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5379 = !DILocalVariable(name: "pc", arg: 1, scope: !5378, file: !1, line: 432, type: !168)
!5380 = !DILocation(line: 432, column: 39, scope: !5378)
!5381 = !DILocalVariable(name: "fp", arg: 2, scope: !5378, file: !1, line: 432, type: !235)
!5382 = !DILocation(line: 432, column: 56, scope: !5378)
!5383 = !DILocalVariable(name: "wait", arg: 3, scope: !5378, file: !1, line: 432, type: !3245)
!5384 = !DILocation(line: 432, column: 72, scope: !5378)
!5385 = !DILocalVariable(name: "ptp", scope: !5378, file: !1, line: 434, type: !148)
!5386 = !DILocation(line: 434, column: 20, scope: !5378)
!5387 = !DILocalVariable(name: "__mptr", scope: !5388, file: !1, line: 434, type: !147)
!5388 = distinct !DILexicalBlock(scope: !5378, file: !1, line: 434, column: 26)
!5389 = !DILocation(line: 434, column: 26, scope: !5388)
!5390 = !DILocation(line: 434, column: 26, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5388, file: !1, line: 434, column: 26)
!5392 = !DILocation(line: 436, column: 12, scope: !5378)
!5393 = !DILocation(line: 436, column: 17, scope: !5378)
!5394 = !DILocation(line: 436, column: 22, scope: !5378)
!5395 = !DILocation(line: 436, column: 31, scope: !5378)
!5396 = !DILocation(line: 436, column: 2, scope: !5378)
!5397 = !DILocation(line: 438, column: 20, scope: !5378)
!5398 = !DILocation(line: 438, column: 25, scope: !5378)
!5399 = !DILocation(line: 438, column: 9, scope: !5378)
!5400 = !DILocation(line: 438, column: 2, scope: !5378)
!5401 = distinct !DISubprogram(name: "poll_wait", scope: !2663, file: !2663, line: 48, type: !5402, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{null, !235, !2670, !3245}
!5404 = !DILocalVariable(name: "filp", arg: 1, scope: !5401, file: !2663, line: 48, type: !235)
!5405 = !DILocation(line: 48, column: 44, scope: !5401)
!5406 = !DILocalVariable(name: "wait_address", arg: 2, scope: !5401, file: !2663, line: 48, type: !2670)
!5407 = !DILocation(line: 48, column: 70, scope: !5401)
!5408 = !DILocalVariable(name: "p", arg: 3, scope: !5401, file: !2663, line: 48, type: !3245)
!5409 = !DILocation(line: 48, column: 96, scope: !5401)
!5410 = !DILocation(line: 50, column: 6, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5401, file: !2663, line: 50, column: 6)
!5412 = !DILocation(line: 50, column: 8, scope: !5411)
!5413 = !DILocation(line: 50, column: 11, scope: !5411)
!5414 = !DILocation(line: 50, column: 14, scope: !5411)
!5415 = !DILocation(line: 50, column: 21, scope: !5411)
!5416 = !DILocation(line: 50, column: 24, scope: !5411)
!5417 = !DILocation(line: 50, column: 6, scope: !5401)
!5418 = !DILocation(line: 51, column: 3, scope: !5411)
!5419 = !DILocation(line: 51, column: 6, scope: !5411)
!5420 = !DILocation(line: 51, column: 13, scope: !5411)
!5421 = !DILocation(line: 51, column: 19, scope: !5411)
!5422 = !DILocation(line: 51, column: 33, scope: !5411)
!5423 = !DILocation(line: 52, column: 1, scope: !5401)
!5424 = distinct !DISubprogram(name: "queue_cnt", scope: !150, file: !150, line: 58, type: !5425, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!167, !5427}
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!5428 = !DILocalVariable(name: "q", arg: 1, scope: !5424, file: !150, line: 58, type: !5427)
!5429 = !DILocation(line: 58, column: 59, scope: !5424)
!5430 = !DILocalVariable(name: "cnt", scope: !5424, file: !150, line: 60, type: !167)
!5431 = !DILocation(line: 60, column: 6, scope: !5424)
!5432 = !DILocation(line: 60, column: 12, scope: !5424)
!5433 = !DILocation(line: 60, column: 15, scope: !5424)
!5434 = !DILocation(line: 60, column: 22, scope: !5424)
!5435 = !DILocation(line: 60, column: 25, scope: !5424)
!5436 = !DILocation(line: 60, column: 20, scope: !5424)
!5437 = !DILocation(line: 61, column: 9, scope: !5424)
!5438 = !DILocation(line: 61, column: 13, scope: !5424)
!5439 = !DILocation(line: 61, column: 40, scope: !5424)
!5440 = !DILocation(line: 61, column: 38, scope: !5424)
!5441 = !DILocation(line: 61, column: 46, scope: !5424)
!5442 = !DILocation(line: 61, column: 2, scope: !5424)
!5443 = distinct !DISubprogram(name: "ptp_read", scope: !1, file: !1, line: 443, type: !3253, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5444 = !DILocation(line: 138, column: 29, scope: !3991, inlinedAt: !5445)
!5445 = distinct !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !5446)
!5446 = distinct !DILocation(line: 500, column: 6, scope: !5447)
!5447 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 500, column: 6)
!5448 = !DILocation(line: 138, column: 42, scope: !3991, inlinedAt: !5445)
!5449 = !DILocation(line: 138, column: 54, scope: !3991, inlinedAt: !5445)
!5450 = !DILocation(line: 140, column: 6, scope: !3991, inlinedAt: !5445)
!5451 = !DILocation(line: 150, column: 6, scope: !4012, inlinedAt: !5445)
!5452 = !DILocation(line: 197, column: 27, scope: !4024, inlinedAt: !5446)
!5453 = !DILocation(line: 197, column: 43, scope: !4024, inlinedAt: !5446)
!5454 = !DILocation(line: 197, column: 63, scope: !4024, inlinedAt: !5446)
!5455 = !DILocalVariable(name: "lock", arg: 1, scope: !5456, file: !5457, line: 407, type: !5460)
!5456 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5457, file: !5457, line: 407, type: !5458, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5457 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!5458 = !DISubroutineType(types: !5459)
!5459 = !{null, !5460, !222}
!5460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!5461 = !DILocation(line: 407, column: 64, scope: !5456, inlinedAt: !5462)
!5462 = distinct !DILocation(line: 493, column: 2, scope: !5443)
!5463 = !DILocalVariable(name: "flags", arg: 2, scope: !5456, file: !5457, line: 407, type: !222)
!5464 = !DILocation(line: 407, column: 84, scope: !5456, inlinedAt: !5462)
!5465 = !DILocalVariable(name: "lock", arg: 1, scope: !5466, file: !5457, line: 327, type: !5460)
!5466 = distinct !DISubprogram(name: "spinlock_check", scope: !5457, file: !5457, line: 327, type: !5467, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!5469, !5460}
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!5470 = !DILocation(line: 327, column: 67, scope: !5466, inlinedAt: !5471)
!5471 = distinct !DILocation(line: 481, column: 2, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5473, file: !1, line: 481, column: 2)
!5473 = distinct !DILexicalBlock(scope: !5474, file: !1, line: 481, column: 2)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !1, line: 481, column: 2)
!5475 = distinct !DILexicalBlock(scope: !5476, file: !1, line: 481, column: 2)
!5476 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 481, column: 2)
!5477 = !DILocalVariable(name: "s", arg: 1, scope: !5478, file: !140, line: 445, type: !842)
!5478 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !140, file: !140, line: 445, type: !5479, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!147, !842, !650, !460}
!5481 = !DILocation(line: 445, column: 72, scope: !5478, inlinedAt: !5482)
!5482 = distinct !DILocation(line: 552, column: 10, scope: !5483, inlinedAt: !5488)
!5483 = distinct !DILexicalBlock(scope: !5484, file: !140, line: 540, column: 34)
!5484 = distinct !DILexicalBlock(scope: !5485, file: !140, line: 540, column: 6)
!5485 = distinct !DISubprogram(name: "kmalloc", scope: !140, file: !140, line: 538, type: !5486, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5486 = !DISubroutineType(types: !5487)
!5487 = !{!147, !460, !650}
!5488 = distinct !DILocation(line: 475, column: 10, scope: !5443)
!5489 = !DILocalVariable(name: "flags", arg: 2, scope: !5478, file: !140, line: 446, type: !650)
!5490 = !DILocation(line: 446, column: 9, scope: !5478, inlinedAt: !5482)
!5491 = !DILocalVariable(name: "size", arg: 3, scope: !5478, file: !140, line: 446, type: !460)
!5492 = !DILocation(line: 446, column: 23, scope: !5478, inlinedAt: !5482)
!5493 = !DILocalVariable(name: "ret", scope: !5478, file: !140, line: 448, type: !147)
!5494 = !DILocation(line: 448, column: 8, scope: !5478, inlinedAt: !5482)
!5495 = !DILocalVariable(name: "flags", arg: 1, scope: !5496, file: !140, line: 318, type: !650)
!5496 = distinct !DISubprogram(name: "kmalloc_type", scope: !140, file: !140, line: 318, type: !5497, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{!139, !650}
!5499 = !DILocation(line: 318, column: 67, scope: !5496, inlinedAt: !5500)
!5500 = distinct !DILocation(line: 553, column: 20, scope: !5483, inlinedAt: !5488)
!5501 = !DILocalVariable(name: "size", arg: 1, scope: !5502, file: !140, line: 346, type: !460)
!5502 = distinct !DISubprogram(name: "kmalloc_index", scope: !140, file: !140, line: 346, type: !5503, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!5, !460}
!5505 = !DILocation(line: 346, column: 58, scope: !5502, inlinedAt: !5506)
!5506 = distinct !DILocation(line: 547, column: 11, scope: !5483, inlinedAt: !5488)
!5507 = !DILocalVariable(name: "size", arg: 1, scope: !5508, file: !140, line: 472, type: !460)
!5508 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !140, file: !140, line: 472, type: !5509, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!147, !460, !650, !5}
!5511 = !DILocation(line: 472, column: 28, scope: !5508, inlinedAt: !5512)
!5512 = distinct !DILocation(line: 481, column: 9, scope: !5513, inlinedAt: !5514)
!5513 = distinct !DISubprogram(name: "kmalloc_large", scope: !140, file: !140, line: 478, type: !5486, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5514 = distinct !DILocation(line: 545, column: 11, scope: !5515, inlinedAt: !5488)
!5515 = distinct !DILexicalBlock(scope: !5483, file: !140, line: 544, column: 7)
!5516 = !DILocalVariable(name: "flags", arg: 2, scope: !5508, file: !140, line: 472, type: !650)
!5517 = !DILocation(line: 472, column: 40, scope: !5508, inlinedAt: !5512)
!5518 = !DILocalVariable(name: "order", arg: 3, scope: !5508, file: !140, line: 472, type: !5)
!5519 = !DILocation(line: 472, column: 60, scope: !5508, inlinedAt: !5512)
!5520 = !DILocalVariable(name: "size", arg: 1, scope: !5513, file: !140, line: 478, type: !460)
!5521 = !DILocation(line: 478, column: 51, scope: !5513, inlinedAt: !5514)
!5522 = !DILocalVariable(name: "flags", arg: 2, scope: !5513, file: !140, line: 478, type: !650)
!5523 = !DILocation(line: 478, column: 63, scope: !5513, inlinedAt: !5514)
!5524 = !DILocalVariable(name: "order", scope: !5513, file: !140, line: 480, type: !5)
!5525 = !DILocation(line: 480, column: 15, scope: !5513, inlinedAt: !5514)
!5526 = !DILocalVariable(name: "size", arg: 1, scope: !5485, file: !140, line: 538, type: !460)
!5527 = !DILocation(line: 538, column: 45, scope: !5485, inlinedAt: !5488)
!5528 = !DILocalVariable(name: "flags", arg: 2, scope: !5485, file: !140, line: 538, type: !650)
!5529 = !DILocation(line: 538, column: 57, scope: !5485, inlinedAt: !5488)
!5530 = !DILocalVariable(name: "index", scope: !5483, file: !140, line: 542, type: !5)
!5531 = !DILocation(line: 542, column: 16, scope: !5483, inlinedAt: !5488)
!5532 = !DILocalVariable(name: "pc", arg: 1, scope: !5443, file: !1, line: 443, type: !168)
!5533 = !DILocation(line: 443, column: 38, scope: !5443)
!5534 = !DILocalVariable(name: "rdflags", arg: 2, scope: !5443, file: !1, line: 444, type: !3255)
!5535 = !DILocation(line: 444, column: 9, scope: !5443)
!5536 = !DILocalVariable(name: "buf", arg: 3, scope: !5443, file: !1, line: 444, type: !372)
!5537 = !DILocation(line: 444, column: 31, scope: !5443)
!5538 = !DILocalVariable(name: "cnt", arg: 4, scope: !5443, file: !1, line: 444, type: !460)
!5539 = !DILocation(line: 444, column: 43, scope: !5443)
!5540 = !DILocalVariable(name: "ptp", scope: !5443, file: !1, line: 446, type: !148)
!5541 = !DILocation(line: 446, column: 20, scope: !5443)
!5542 = !DILocalVariable(name: "__mptr", scope: !5543, file: !1, line: 446, type: !147)
!5543 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 446, column: 26)
!5544 = !DILocation(line: 446, column: 26, scope: !5543)
!5545 = !DILocation(line: 446, column: 26, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5543, file: !1, line: 446, column: 26)
!5547 = !DILocalVariable(name: "queue", scope: !5443, file: !1, line: 447, type: !5427)
!5548 = !DILocation(line: 447, column: 32, scope: !5443)
!5549 = !DILocation(line: 447, column: 41, scope: !5443)
!5550 = !DILocation(line: 447, column: 46, scope: !5443)
!5551 = !DILocalVariable(name: "event", scope: !5443, file: !1, line: 448, type: !5552)
!5552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!5553 = !DILocation(line: 448, column: 26, scope: !5443)
!5554 = !DILocalVariable(name: "flags", scope: !5443, file: !1, line: 449, type: !222)
!5555 = !DILocation(line: 449, column: 16, scope: !5443)
!5556 = !DILocalVariable(name: "qcnt", scope: !5443, file: !1, line: 450, type: !460)
!5557 = !DILocation(line: 450, column: 9, scope: !5443)
!5558 = !DILocalVariable(name: "i", scope: !5443, file: !1, line: 450, type: !460)
!5559 = !DILocation(line: 450, column: 15, scope: !5443)
!5560 = !DILocalVariable(name: "result", scope: !5443, file: !1, line: 451, type: !167)
!5561 = !DILocation(line: 451, column: 6, scope: !5443)
!5562 = !DILocation(line: 453, column: 6, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 453, column: 6)
!5564 = !DILocation(line: 453, column: 10, scope: !5563)
!5565 = !DILocation(line: 453, column: 43, scope: !5563)
!5566 = !DILocation(line: 453, column: 6, scope: !5443)
!5567 = !DILocation(line: 454, column: 3, scope: !5563)
!5568 = !DILocation(line: 456, column: 6, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 456, column: 6)
!5570 = !DILocation(line: 456, column: 10, scope: !5569)
!5571 = !DILocation(line: 456, column: 6, scope: !5443)
!5572 = !DILocation(line: 457, column: 7, scope: !5569)
!5573 = !DILocation(line: 457, column: 3, scope: !5569)
!5574 = !DILocation(line: 459, column: 8, scope: !5443)
!5575 = !DILocation(line: 459, column: 12, scope: !5443)
!5576 = !DILocation(line: 459, column: 6, scope: !5443)
!5577 = !DILocation(line: 461, column: 32, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 461, column: 6)
!5579 = !DILocation(line: 461, column: 37, scope: !5578)
!5580 = !DILocation(line: 461, column: 6, scope: !5578)
!5581 = !DILocation(line: 461, column: 6, scope: !5443)
!5582 = !DILocation(line: 462, column: 3, scope: !5578)
!5583 = !DILocalVariable(name: "__ret", scope: !5584, file: !1, line: 464, type: !167)
!5584 = distinct !DILexicalBlock(scope: !5585, file: !1, line: 464, column: 6)
!5585 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 464, column: 6)
!5586 = !DILocation(line: 464, column: 6, scope: !5584)
!5587 = !DILocation(line: 464, column: 6, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5584, file: !1, line: 464, column: 6)
!5589 = !DILocation(line: 464, column: 6, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5588, file: !1, line: 464, column: 6)
!5591 = !DILocation(line: 464, column: 6, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5584, file: !1, line: 464, column: 6)
!5593 = !DILocalVariable(name: "__wq_entry", scope: !5594, file: !1, line: 464, type: !5595)
!5594 = distinct !DILexicalBlock(scope: !5592, file: !1, line: 464, column: 6)
!5595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1311, line: 29, size: 320, elements: !5596)
!5596 = !{!5597, !5598, !5599, !5605}
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5595, file: !1311, line: 30, baseType: !5, size: 32)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5595, file: !1311, line: 31, baseType: !147, size: 64, offset: 64)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5595, file: !1311, line: 32, baseType: !5600, size: 64, offset: 128)
!5600 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1311, line: 16, baseType: !5601)
!5601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5602, size: 64)
!5602 = !DISubroutineType(types: !5603)
!5603 = !{!167, !5604, !5, !167, !147}
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5595, size: 64)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5595, file: !1311, line: 33, baseType: !487, size: 128, offset: 192)
!5606 = !DILocation(line: 464, column: 6, scope: !5594)
!5607 = !DILocalVariable(name: "__ret", scope: !5594, file: !1, line: 464, type: !210)
!5608 = !DILocalVariable(name: "__int", scope: !5609, file: !1, line: 464, type: !210)
!5609 = distinct !DILexicalBlock(scope: !5610, file: !1, line: 464, column: 6)
!5610 = distinct !DILexicalBlock(scope: !5611, file: !1, line: 464, column: 6)
!5611 = distinct !DILexicalBlock(scope: !5594, file: !1, line: 464, column: 6)
!5612 = !DILocation(line: 464, column: 6, scope: !5609)
!5613 = !DILocation(line: 464, column: 6, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5609, file: !1, line: 464, column: 6)
!5615 = !DILocation(line: 464, column: 6, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5609, file: !1, line: 464, column: 6)
!5617 = !DILocation(line: 464, column: 6, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5616, file: !1, line: 464, column: 6)
!5619 = !DILocation(line: 464, column: 6, scope: !5610)
!5620 = distinct !{!5620, !5621, !5621}
!5621 = !DILocation(line: 464, column: 6, scope: !5611)
!5622 = !DILabel(scope: !5594, name: "__out", file: !1, line: 464)
!5623 = !DILocation(line: 464, column: 6, scope: !5585)
!5624 = !DILocation(line: 464, column: 6, scope: !5443)
!5625 = !DILocation(line: 466, column: 17, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5585, file: !1, line: 465, column: 45)
!5627 = !DILocation(line: 466, column: 22, scope: !5626)
!5628 = !DILocation(line: 466, column: 3, scope: !5626)
!5629 = !DILocation(line: 467, column: 3, scope: !5626)
!5630 = !DILocation(line: 470, column: 6, scope: !5631)
!5631 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 470, column: 6)
!5632 = !DILocation(line: 470, column: 11, scope: !5631)
!5633 = !DILocation(line: 470, column: 6, scope: !5443)
!5634 = !DILocation(line: 471, column: 17, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5631, file: !1, line: 470, column: 20)
!5636 = !DILocation(line: 471, column: 22, scope: !5635)
!5637 = !DILocation(line: 471, column: 3, scope: !5635)
!5638 = !DILocation(line: 472, column: 3, scope: !5635)
!5639 = !DILocation(line: 540, column: 27, scope: !5484, inlinedAt: !5488)
!5640 = !DILocation(line: 540, column: 6, scope: !5484, inlinedAt: !5488)
!5641 = !DILocation(line: 540, column: 6, scope: !5485, inlinedAt: !5488)
!5642 = !DILocation(line: 544, column: 7, scope: !5515, inlinedAt: !5488)
!5643 = !DILocation(line: 544, column: 12, scope: !5515, inlinedAt: !5488)
!5644 = !DILocation(line: 544, column: 7, scope: !5483, inlinedAt: !5488)
!5645 = !DILocation(line: 545, column: 25, scope: !5515, inlinedAt: !5488)
!5646 = !DILocation(line: 545, column: 31, scope: !5515, inlinedAt: !5488)
!5647 = !DILocation(line: 480, column: 33, scope: !5513, inlinedAt: !5514)
!5648 = !DILocation(line: 480, column: 23, scope: !5513, inlinedAt: !5514)
!5649 = !DILocation(line: 481, column: 29, scope: !5513, inlinedAt: !5514)
!5650 = !DILocation(line: 481, column: 35, scope: !5513, inlinedAt: !5514)
!5651 = !DILocation(line: 481, column: 42, scope: !5513, inlinedAt: !5514)
!5652 = !DILocation(line: 474, column: 23, scope: !5508, inlinedAt: !5512)
!5653 = !DILocation(line: 474, column: 29, scope: !5508, inlinedAt: !5512)
!5654 = !DILocation(line: 474, column: 36, scope: !5508, inlinedAt: !5512)
!5655 = !DILocation(line: 474, column: 9, scope: !5508, inlinedAt: !5512)
!5656 = !DILocation(line: 545, column: 4, scope: !5515, inlinedAt: !5488)
!5657 = !DILocation(line: 547, column: 25, scope: !5483, inlinedAt: !5488)
!5658 = !DILocation(line: 348, column: 7, scope: !5659, inlinedAt: !5506)
!5659 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 348, column: 6)
!5660 = !DILocation(line: 348, column: 6, scope: !5502, inlinedAt: !5506)
!5661 = !DILocation(line: 349, column: 3, scope: !5659, inlinedAt: !5506)
!5662 = !DILocation(line: 351, column: 6, scope: !5663, inlinedAt: !5506)
!5663 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 351, column: 6)
!5664 = !DILocation(line: 351, column: 11, scope: !5663, inlinedAt: !5506)
!5665 = !DILocation(line: 351, column: 6, scope: !5502, inlinedAt: !5506)
!5666 = !DILocation(line: 352, column: 3, scope: !5663, inlinedAt: !5506)
!5667 = !DILocation(line: 354, column: 32, scope: !5668, inlinedAt: !5506)
!5668 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 354, column: 6)
!5669 = !DILocation(line: 354, column: 37, scope: !5668, inlinedAt: !5506)
!5670 = !DILocation(line: 354, column: 42, scope: !5668, inlinedAt: !5506)
!5671 = !DILocation(line: 354, column: 45, scope: !5668, inlinedAt: !5506)
!5672 = !DILocation(line: 354, column: 50, scope: !5668, inlinedAt: !5506)
!5673 = !DILocation(line: 354, column: 6, scope: !5502, inlinedAt: !5506)
!5674 = !DILocation(line: 355, column: 3, scope: !5668, inlinedAt: !5506)
!5675 = !DILocation(line: 356, column: 32, scope: !5676, inlinedAt: !5506)
!5676 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 356, column: 6)
!5677 = !DILocation(line: 356, column: 37, scope: !5676, inlinedAt: !5506)
!5678 = !DILocation(line: 356, column: 43, scope: !5676, inlinedAt: !5506)
!5679 = !DILocation(line: 356, column: 46, scope: !5676, inlinedAt: !5506)
!5680 = !DILocation(line: 356, column: 51, scope: !5676, inlinedAt: !5506)
!5681 = !DILocation(line: 356, column: 6, scope: !5502, inlinedAt: !5506)
!5682 = !DILocation(line: 357, column: 3, scope: !5676, inlinedAt: !5506)
!5683 = !DILocation(line: 358, column: 6, scope: !5684, inlinedAt: !5506)
!5684 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 358, column: 6)
!5685 = !DILocation(line: 358, column: 11, scope: !5684, inlinedAt: !5506)
!5686 = !DILocation(line: 358, column: 6, scope: !5502, inlinedAt: !5506)
!5687 = !DILocation(line: 358, column: 26, scope: !5684, inlinedAt: !5506)
!5688 = !DILocation(line: 359, column: 6, scope: !5689, inlinedAt: !5506)
!5689 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 359, column: 6)
!5690 = !DILocation(line: 359, column: 11, scope: !5689, inlinedAt: !5506)
!5691 = !DILocation(line: 359, column: 6, scope: !5502, inlinedAt: !5506)
!5692 = !DILocation(line: 359, column: 26, scope: !5689, inlinedAt: !5506)
!5693 = !DILocation(line: 360, column: 6, scope: !5694, inlinedAt: !5506)
!5694 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 360, column: 6)
!5695 = !DILocation(line: 360, column: 11, scope: !5694, inlinedAt: !5506)
!5696 = !DILocation(line: 360, column: 6, scope: !5502, inlinedAt: !5506)
!5697 = !DILocation(line: 360, column: 26, scope: !5694, inlinedAt: !5506)
!5698 = !DILocation(line: 361, column: 6, scope: !5699, inlinedAt: !5506)
!5699 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 361, column: 6)
!5700 = !DILocation(line: 361, column: 11, scope: !5699, inlinedAt: !5506)
!5701 = !DILocation(line: 361, column: 6, scope: !5502, inlinedAt: !5506)
!5702 = !DILocation(line: 361, column: 26, scope: !5699, inlinedAt: !5506)
!5703 = !DILocation(line: 362, column: 6, scope: !5704, inlinedAt: !5506)
!5704 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 362, column: 6)
!5705 = !DILocation(line: 362, column: 11, scope: !5704, inlinedAt: !5506)
!5706 = !DILocation(line: 362, column: 6, scope: !5502, inlinedAt: !5506)
!5707 = !DILocation(line: 362, column: 26, scope: !5704, inlinedAt: !5506)
!5708 = !DILocation(line: 363, column: 6, scope: !5709, inlinedAt: !5506)
!5709 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 363, column: 6)
!5710 = !DILocation(line: 363, column: 11, scope: !5709, inlinedAt: !5506)
!5711 = !DILocation(line: 363, column: 6, scope: !5502, inlinedAt: !5506)
!5712 = !DILocation(line: 363, column: 26, scope: !5709, inlinedAt: !5506)
!5713 = !DILocation(line: 364, column: 6, scope: !5714, inlinedAt: !5506)
!5714 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 364, column: 6)
!5715 = !DILocation(line: 364, column: 11, scope: !5714, inlinedAt: !5506)
!5716 = !DILocation(line: 364, column: 6, scope: !5502, inlinedAt: !5506)
!5717 = !DILocation(line: 364, column: 26, scope: !5714, inlinedAt: !5506)
!5718 = !DILocation(line: 365, column: 6, scope: !5719, inlinedAt: !5506)
!5719 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 365, column: 6)
!5720 = !DILocation(line: 365, column: 11, scope: !5719, inlinedAt: !5506)
!5721 = !DILocation(line: 365, column: 6, scope: !5502, inlinedAt: !5506)
!5722 = !DILocation(line: 365, column: 26, scope: !5719, inlinedAt: !5506)
!5723 = !DILocation(line: 366, column: 6, scope: !5724, inlinedAt: !5506)
!5724 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 366, column: 6)
!5725 = !DILocation(line: 366, column: 11, scope: !5724, inlinedAt: !5506)
!5726 = !DILocation(line: 366, column: 6, scope: !5502, inlinedAt: !5506)
!5727 = !DILocation(line: 366, column: 26, scope: !5724, inlinedAt: !5506)
!5728 = !DILocation(line: 367, column: 6, scope: !5729, inlinedAt: !5506)
!5729 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 367, column: 6)
!5730 = !DILocation(line: 367, column: 11, scope: !5729, inlinedAt: !5506)
!5731 = !DILocation(line: 367, column: 6, scope: !5502, inlinedAt: !5506)
!5732 = !DILocation(line: 367, column: 26, scope: !5729, inlinedAt: !5506)
!5733 = !DILocation(line: 368, column: 6, scope: !5734, inlinedAt: !5506)
!5734 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 368, column: 6)
!5735 = !DILocation(line: 368, column: 11, scope: !5734, inlinedAt: !5506)
!5736 = !DILocation(line: 368, column: 6, scope: !5502, inlinedAt: !5506)
!5737 = !DILocation(line: 368, column: 26, scope: !5734, inlinedAt: !5506)
!5738 = !DILocation(line: 369, column: 6, scope: !5739, inlinedAt: !5506)
!5739 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 369, column: 6)
!5740 = !DILocation(line: 369, column: 11, scope: !5739, inlinedAt: !5506)
!5741 = !DILocation(line: 369, column: 6, scope: !5502, inlinedAt: !5506)
!5742 = !DILocation(line: 369, column: 26, scope: !5739, inlinedAt: !5506)
!5743 = !DILocation(line: 370, column: 6, scope: !5744, inlinedAt: !5506)
!5744 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 370, column: 6)
!5745 = !DILocation(line: 370, column: 11, scope: !5744, inlinedAt: !5506)
!5746 = !DILocation(line: 370, column: 6, scope: !5502, inlinedAt: !5506)
!5747 = !DILocation(line: 370, column: 26, scope: !5744, inlinedAt: !5506)
!5748 = !DILocation(line: 371, column: 6, scope: !5749, inlinedAt: !5506)
!5749 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 371, column: 6)
!5750 = !DILocation(line: 371, column: 11, scope: !5749, inlinedAt: !5506)
!5751 = !DILocation(line: 371, column: 6, scope: !5502, inlinedAt: !5506)
!5752 = !DILocation(line: 371, column: 26, scope: !5749, inlinedAt: !5506)
!5753 = !DILocation(line: 372, column: 6, scope: !5754, inlinedAt: !5506)
!5754 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 372, column: 6)
!5755 = !DILocation(line: 372, column: 11, scope: !5754, inlinedAt: !5506)
!5756 = !DILocation(line: 372, column: 6, scope: !5502, inlinedAt: !5506)
!5757 = !DILocation(line: 372, column: 26, scope: !5754, inlinedAt: !5506)
!5758 = !DILocation(line: 373, column: 6, scope: !5759, inlinedAt: !5506)
!5759 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 373, column: 6)
!5760 = !DILocation(line: 373, column: 11, scope: !5759, inlinedAt: !5506)
!5761 = !DILocation(line: 373, column: 6, scope: !5502, inlinedAt: !5506)
!5762 = !DILocation(line: 373, column: 26, scope: !5759, inlinedAt: !5506)
!5763 = !DILocation(line: 374, column: 6, scope: !5764, inlinedAt: !5506)
!5764 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 374, column: 6)
!5765 = !DILocation(line: 374, column: 11, scope: !5764, inlinedAt: !5506)
!5766 = !DILocation(line: 374, column: 6, scope: !5502, inlinedAt: !5506)
!5767 = !DILocation(line: 374, column: 26, scope: !5764, inlinedAt: !5506)
!5768 = !DILocation(line: 375, column: 6, scope: !5769, inlinedAt: !5506)
!5769 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 375, column: 6)
!5770 = !DILocation(line: 375, column: 11, scope: !5769, inlinedAt: !5506)
!5771 = !DILocation(line: 375, column: 6, scope: !5502, inlinedAt: !5506)
!5772 = !DILocation(line: 375, column: 27, scope: !5769, inlinedAt: !5506)
!5773 = !DILocation(line: 376, column: 6, scope: !5774, inlinedAt: !5506)
!5774 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 376, column: 6)
!5775 = !DILocation(line: 376, column: 11, scope: !5774, inlinedAt: !5506)
!5776 = !DILocation(line: 376, column: 6, scope: !5502, inlinedAt: !5506)
!5777 = !DILocation(line: 376, column: 32, scope: !5774, inlinedAt: !5506)
!5778 = !DILocation(line: 377, column: 6, scope: !5779, inlinedAt: !5506)
!5779 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 377, column: 6)
!5780 = !DILocation(line: 377, column: 11, scope: !5779, inlinedAt: !5506)
!5781 = !DILocation(line: 377, column: 6, scope: !5502, inlinedAt: !5506)
!5782 = !DILocation(line: 377, column: 32, scope: !5779, inlinedAt: !5506)
!5783 = !DILocation(line: 378, column: 6, scope: !5784, inlinedAt: !5506)
!5784 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 378, column: 6)
!5785 = !DILocation(line: 378, column: 11, scope: !5784, inlinedAt: !5506)
!5786 = !DILocation(line: 378, column: 6, scope: !5502, inlinedAt: !5506)
!5787 = !DILocation(line: 378, column: 32, scope: !5784, inlinedAt: !5506)
!5788 = !DILocation(line: 379, column: 6, scope: !5789, inlinedAt: !5506)
!5789 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 379, column: 6)
!5790 = !DILocation(line: 379, column: 11, scope: !5789, inlinedAt: !5506)
!5791 = !DILocation(line: 379, column: 6, scope: !5502, inlinedAt: !5506)
!5792 = !DILocation(line: 379, column: 33, scope: !5789, inlinedAt: !5506)
!5793 = !DILocation(line: 380, column: 6, scope: !5794, inlinedAt: !5506)
!5794 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 380, column: 6)
!5795 = !DILocation(line: 380, column: 11, scope: !5794, inlinedAt: !5506)
!5796 = !DILocation(line: 380, column: 6, scope: !5502, inlinedAt: !5506)
!5797 = !DILocation(line: 380, column: 33, scope: !5794, inlinedAt: !5506)
!5798 = !DILocation(line: 381, column: 6, scope: !5799, inlinedAt: !5506)
!5799 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 381, column: 6)
!5800 = !DILocation(line: 381, column: 11, scope: !5799, inlinedAt: !5506)
!5801 = !DILocation(line: 381, column: 6, scope: !5502, inlinedAt: !5506)
!5802 = !DILocation(line: 381, column: 33, scope: !5799, inlinedAt: !5506)
!5803 = !DILocation(line: 382, column: 2, scope: !5804, inlinedAt: !5506)
!5804 = distinct !DILexicalBlock(scope: !5805, file: !140, line: 382, column: 2)
!5805 = distinct !DILexicalBlock(scope: !5502, file: !140, line: 382, column: 2)
!5806 = !{i32 -2142880910, i32 -2142880881, i32 -2142880835, i32 -2142880777, i32 -2142880723, i32 -2142880669, i32 -2142880614, i32 -2142880583}
!5807 = !DILocation(line: 382, column: 2, scope: !5808, inlinedAt: !5506)
!5808 = distinct !DILexicalBlock(scope: !5809, file: !140, line: 382, column: 2)
!5809 = distinct !DILexicalBlock(scope: !5805, file: !140, line: 382, column: 2)
!5810 = !{i32 -2142880140, i32 -2142880133, i32 -2142880079, i32 -2142880048, i32 -2142880018}
!5811 = !DILocation(line: 382, column: 2, scope: !5809, inlinedAt: !5506)
!5812 = !DILocation(line: 386, column: 1, scope: !5502, inlinedAt: !5506)
!5813 = !DILocation(line: 547, column: 9, scope: !5483, inlinedAt: !5488)
!5814 = !DILocation(line: 549, column: 8, scope: !5815, inlinedAt: !5488)
!5815 = distinct !DILexicalBlock(scope: !5483, file: !140, line: 549, column: 7)
!5816 = !DILocation(line: 549, column: 7, scope: !5483, inlinedAt: !5488)
!5817 = !DILocation(line: 550, column: 4, scope: !5815, inlinedAt: !5488)
!5818 = !DILocation(line: 553, column: 33, scope: !5483, inlinedAt: !5488)
!5819 = !DILocation(line: 325, column: 6, scope: !5820, inlinedAt: !5500)
!5820 = distinct !DILexicalBlock(scope: !5496, file: !140, line: 325, column: 6)
!5821 = !DILocation(line: 325, column: 6, scope: !5496, inlinedAt: !5500)
!5822 = !DILocation(line: 326, column: 3, scope: !5820, inlinedAt: !5500)
!5823 = !DILocation(line: 332, column: 9, scope: !5496, inlinedAt: !5500)
!5824 = !DILocation(line: 332, column: 15, scope: !5496, inlinedAt: !5500)
!5825 = !DILocation(line: 332, column: 2, scope: !5496, inlinedAt: !5500)
!5826 = !DILocation(line: 336, column: 1, scope: !5496, inlinedAt: !5500)
!5827 = !DILocation(line: 553, column: 5, scope: !5483, inlinedAt: !5488)
!5828 = !DILocation(line: 553, column: 41, scope: !5483, inlinedAt: !5488)
!5829 = !DILocation(line: 554, column: 5, scope: !5483, inlinedAt: !5488)
!5830 = !DILocation(line: 554, column: 12, scope: !5483, inlinedAt: !5488)
!5831 = !DILocation(line: 448, column: 31, scope: !5478, inlinedAt: !5482)
!5832 = !DILocation(line: 448, column: 34, scope: !5478, inlinedAt: !5482)
!5833 = !DILocation(line: 448, column: 14, scope: !5478, inlinedAt: !5482)
!5834 = !DILocation(line: 450, column: 22, scope: !5478, inlinedAt: !5482)
!5835 = !DILocation(line: 450, column: 25, scope: !5478, inlinedAt: !5482)
!5836 = !DILocation(line: 450, column: 30, scope: !5478, inlinedAt: !5482)
!5837 = !DILocation(line: 450, column: 36, scope: !5478, inlinedAt: !5482)
!5838 = !DILocation(line: 450, column: 8, scope: !5478, inlinedAt: !5482)
!5839 = !DILocation(line: 450, column: 6, scope: !5478, inlinedAt: !5482)
!5840 = !DILocation(line: 451, column: 9, scope: !5478, inlinedAt: !5482)
!5841 = !DILocation(line: 552, column: 3, scope: !5483, inlinedAt: !5488)
!5842 = !DILocation(line: 557, column: 19, scope: !5485, inlinedAt: !5488)
!5843 = !DILocation(line: 557, column: 25, scope: !5485, inlinedAt: !5488)
!5844 = !DILocation(line: 557, column: 9, scope: !5485, inlinedAt: !5488)
!5845 = !DILocation(line: 557, column: 2, scope: !5485, inlinedAt: !5488)
!5846 = !DILocation(line: 558, column: 1, scope: !5485, inlinedAt: !5488)
!5847 = !DILocation(line: 475, column: 10, scope: !5443)
!5848 = !DILocation(line: 475, column: 8, scope: !5443)
!5849 = !DILocation(line: 476, column: 7, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 476, column: 6)
!5851 = !DILocation(line: 476, column: 6, scope: !5443)
!5852 = !DILocation(line: 477, column: 17, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5850, file: !1, line: 476, column: 14)
!5854 = !DILocation(line: 477, column: 22, scope: !5853)
!5855 = !DILocation(line: 477, column: 3, scope: !5853)
!5856 = !DILocation(line: 478, column: 3, scope: !5853)
!5857 = !DILocation(line: 481, column: 2, scope: !5443)
!5858 = !DILocation(line: 481, column: 2, scope: !5476)
!5859 = !DILocalVariable(name: "__dummy", scope: !5860, file: !1, line: 481, type: !222)
!5860 = distinct !DILexicalBlock(scope: !5475, file: !1, line: 481, column: 2)
!5861 = !DILocation(line: 481, column: 2, scope: !5860)
!5862 = !DILocalVariable(name: "__dummy2", scope: !5860, file: !1, line: 481, type: !222)
!5863 = !DILocation(line: 481, column: 2, scope: !5475)
!5864 = !DILocation(line: 481, column: 2, scope: !5474)
!5865 = !DILocation(line: 481, column: 2, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !5474, file: !1, line: 481, column: 2)
!5867 = !DILocalVariable(name: "__dummy", scope: !5868, file: !1, line: 481, type: !222)
!5868 = distinct !DILexicalBlock(scope: !5869, file: !1, line: 481, column: 2)
!5869 = distinct !DILexicalBlock(scope: !5866, file: !1, line: 481, column: 2)
!5870 = !DILocation(line: 481, column: 2, scope: !5868)
!5871 = !DILocalVariable(name: "__dummy2", scope: !5868, file: !1, line: 481, type: !222)
!5872 = !DILocation(line: 481, column: 2, scope: !5869)
!5873 = !DILocation(line: 481, column: 2, scope: !5473)
!5874 = !{i32 -2142801020}
!5875 = !DILocation(line: 481, column: 2, scope: !5472)
!5876 = !DILocation(line: 329, column: 10, scope: !5466, inlinedAt: !5471)
!5877 = !DILocation(line: 329, column: 16, scope: !5466, inlinedAt: !5471)
!5878 = !DILocation(line: 483, column: 19, scope: !5443)
!5879 = !DILocation(line: 483, column: 9, scope: !5443)
!5880 = !DILocation(line: 483, column: 7, scope: !5443)
!5881 = !DILocation(line: 485, column: 6, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 485, column: 6)
!5883 = !DILocation(line: 485, column: 12, scope: !5882)
!5884 = !DILocation(line: 485, column: 10, scope: !5882)
!5885 = !DILocation(line: 485, column: 6, scope: !5443)
!5886 = !DILocation(line: 486, column: 9, scope: !5882)
!5887 = !DILocation(line: 486, column: 7, scope: !5882)
!5888 = !DILocation(line: 486, column: 3, scope: !5882)
!5889 = !DILocation(line: 488, column: 9, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5443, file: !1, line: 488, column: 2)
!5891 = !DILocation(line: 488, column: 7, scope: !5890)
!5892 = !DILocation(line: 488, column: 14, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5890, file: !1, line: 488, column: 2)
!5894 = !DILocation(line: 488, column: 18, scope: !5893)
!5895 = !DILocation(line: 488, column: 16, scope: !5893)
!5896 = !DILocation(line: 488, column: 2, scope: !5890)
!5897 = !DILocation(line: 489, column: 3, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5893, file: !1, line: 488, column: 28)
!5899 = !DILocation(line: 489, column: 9, scope: !5898)
!5900 = !DILocation(line: 489, column: 14, scope: !5898)
!5901 = !DILocation(line: 489, column: 21, scope: !5898)
!5902 = !DILocation(line: 489, column: 25, scope: !5898)
!5903 = !DILocation(line: 489, column: 32, scope: !5898)
!5904 = !DILocation(line: 490, column: 18, scope: !5898)
!5905 = !DILocation(line: 490, column: 25, scope: !5898)
!5906 = !DILocation(line: 490, column: 30, scope: !5898)
!5907 = !DILocation(line: 490, column: 35, scope: !5898)
!5908 = !DILocation(line: 490, column: 3, scope: !5898)
!5909 = !DILocation(line: 490, column: 10, scope: !5898)
!5910 = !DILocation(line: 490, column: 15, scope: !5898)
!5911 = !DILocation(line: 491, column: 2, scope: !5898)
!5912 = !DILocation(line: 488, column: 24, scope: !5893)
!5913 = !DILocation(line: 488, column: 2, scope: !5893)
!5914 = distinct !{!5914, !5896, !5915}
!5915 = !DILocation(line: 491, column: 2, scope: !5890)
!5916 = !DILocation(line: 493, column: 26, scope: !5443)
!5917 = !DILocation(line: 493, column: 33, scope: !5443)
!5918 = !DILocation(line: 493, column: 39, scope: !5443)
!5919 = !DILocalVariable(name: "__dummy", scope: !5920, file: !5457, line: 409, type: !222)
!5920 = distinct !DILexicalBlock(scope: !5921, file: !5457, line: 409, column: 2)
!5921 = distinct !DILexicalBlock(scope: !5456, file: !5457, line: 409, column: 2)
!5922 = !DILocation(line: 409, column: 2, scope: !5920, inlinedAt: !5462)
!5923 = !DILocalVariable(name: "__dummy2", scope: !5920, file: !5457, line: 409, type: !222)
!5924 = !DILocalVariable(name: "__dummy", scope: !5925, file: !5457, line: 409, type: !222)
!5925 = distinct !DILexicalBlock(scope: !5926, file: !5457, line: 409, column: 2)
!5926 = distinct !DILexicalBlock(scope: !5927, file: !5457, line: 409, column: 2)
!5927 = distinct !DILexicalBlock(scope: !5928, file: !5457, line: 409, column: 2)
!5928 = distinct !DILexicalBlock(scope: !5921, file: !5457, line: 409, column: 2)
!5929 = !DILocation(line: 409, column: 2, scope: !5925, inlinedAt: !5462)
!5930 = !DILocalVariable(name: "__dummy2", scope: !5925, file: !5457, line: 409, type: !222)
!5931 = !DILocation(line: 409, column: 2, scope: !5926, inlinedAt: !5462)
!5932 = !DILocation(line: 409, column: 2, scope: !5933, inlinedAt: !5462)
!5933 = distinct !DILexicalBlock(scope: !5928, file: !5457, line: 409, column: 2)
!5934 = !{i32 -2145465274}
!5935 = !DILocation(line: 409, column: 2, scope: !5936, inlinedAt: !5462)
!5936 = distinct !DILexicalBlock(scope: !5933, file: !5457, line: 409, column: 2)
!5937 = !DILocation(line: 495, column: 8, scope: !5443)
!5938 = !DILocation(line: 495, column: 12, scope: !5443)
!5939 = !DILocation(line: 495, column: 6, scope: !5443)
!5940 = !DILocation(line: 497, column: 16, scope: !5443)
!5941 = !DILocation(line: 497, column: 21, scope: !5443)
!5942 = !DILocation(line: 497, column: 2, scope: !5443)
!5943 = !DILocation(line: 499, column: 11, scope: !5443)
!5944 = !DILocation(line: 499, column: 9, scope: !5443)
!5945 = !DILocation(line: 500, column: 19, scope: !5447)
!5946 = !DILocation(line: 500, column: 24, scope: !5447)
!5947 = !DILocation(line: 500, column: 31, scope: !5447)
!5948 = !DILocation(line: 199, column: 6, scope: !4023, inlinedAt: !5446)
!5949 = !DILocation(line: 141, column: 6, scope: !4247, inlinedAt: !5445)
!5950 = !DILocation(line: 0, scope: !4247, inlinedAt: !5445)
!5951 = !DILocation(line: 141, column: 6, scope: !3991, inlinedAt: !5445)
!5952 = !DILocation(line: 142, column: 29, scope: !4251, inlinedAt: !5445)
!5953 = !DILocation(line: 142, column: 8, scope: !4251, inlinedAt: !5445)
!5954 = !DILocation(line: 142, column: 7, scope: !4252, inlinedAt: !5445)
!5955 = !DILocation(line: 143, column: 18, scope: !4251, inlinedAt: !5445)
!5956 = !DILocation(line: 143, column: 22, scope: !4251, inlinedAt: !5445)
!5957 = !DILocation(line: 143, column: 4, scope: !4251, inlinedAt: !5445)
!5958 = !DILocation(line: 144, column: 12, scope: !4259, inlinedAt: !5445)
!5959 = !DILocation(line: 144, column: 12, scope: !4251, inlinedAt: !5445)
!5960 = !DILocation(line: 145, column: 4, scope: !4259, inlinedAt: !5445)
!5961 = !DILocation(line: 147, column: 4, scope: !4259, inlinedAt: !5445)
!5962 = !DILocation(line: 148, column: 3, scope: !4252, inlinedAt: !5445)
!5963 = !DILocation(line: 150, column: 6, scope: !4265, inlinedAt: !5445)
!5964 = !DILocation(line: 150, column: 6, scope: !4267, inlinedAt: !5445)
!5965 = !DILocation(line: 150, column: 6, scope: !4271, inlinedAt: !5445)
!5966 = !DILocation(line: 150, column: 6, scope: !4268, inlinedAt: !5445)
!5967 = !DILocation(line: 150, column: 6, scope: !4013, inlinedAt: !5445)
!5968 = !DILocation(line: 150, column: 6, scope: !3991, inlinedAt: !5445)
!5969 = !DILocation(line: 151, column: 3, scope: !4013, inlinedAt: !5445)
!5970 = !DILocation(line: 152, column: 20, scope: !3991, inlinedAt: !5445)
!5971 = !DILocation(line: 152, column: 26, scope: !3991, inlinedAt: !5445)
!5972 = !DILocation(line: 152, column: 33, scope: !3991, inlinedAt: !5445)
!5973 = !DILocation(line: 152, column: 2, scope: !3991, inlinedAt: !5445)
!5974 = !DILocation(line: 153, column: 2, scope: !3991, inlinedAt: !5445)
!5975 = !DILocation(line: 154, column: 1, scope: !3991, inlinedAt: !5445)
!5976 = !DILocation(line: 199, column: 6, scope: !4024, inlinedAt: !5446)
!5977 = !DILocation(line: 200, column: 21, scope: !4023, inlinedAt: !5446)
!5978 = !DILocation(line: 200, column: 25, scope: !4023, inlinedAt: !5446)
!5979 = !DILocation(line: 200, column: 31, scope: !4023, inlinedAt: !5446)
!5980 = !DILocation(line: 200, column: 7, scope: !4023, inlinedAt: !5446)
!5981 = !DILocation(line: 200, column: 5, scope: !4023, inlinedAt: !5446)
!5982 = !DILocation(line: 200, column: 3, scope: !4023, inlinedAt: !5446)
!5983 = !DILocation(line: 201, column: 9, scope: !4024, inlinedAt: !5446)
!5984 = !DILocation(line: 500, column: 6, scope: !5447)
!5985 = !DILocation(line: 500, column: 6, scope: !5443)
!5986 = !DILocation(line: 501, column: 10, scope: !5447)
!5987 = !DILocation(line: 501, column: 3, scope: !5447)
!5988 = !DILocation(line: 503, column: 8, scope: !5443)
!5989 = !DILocation(line: 503, column: 2, scope: !5443)
!5990 = !DILocation(line: 504, column: 9, scope: !5443)
!5991 = !DILocation(line: 504, column: 2, scope: !5443)
!5992 = !DILocation(line: 505, column: 1, scope: !5443)
!5993 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5994, file: !5994, line: 666, type: !5995, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!5994 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5995 = !DISubroutineType(types: !5996)
!5996 = !{!222}
!5997 = !DILocalVariable(name: "f", scope: !5993, file: !5994, line: 668, type: !222)
!5998 = !DILocation(line: 668, column: 16, scope: !5993)
!5999 = !DILocation(line: 670, column: 6, scope: !5993)
!6000 = !DILocation(line: 670, column: 4, scope: !5993)
!6001 = !DILocation(line: 671, column: 2, scope: !5993)
!6002 = !DILocation(line: 672, column: 9, scope: !5993)
!6003 = !DILocation(line: 672, column: 2, scope: !5993)
!6004 = distinct !DISubprogram(name: "copy_overflow", scope: !3992, file: !3992, line: 132, type: !6005, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!6005 = !DISubroutineType(types: !6006)
!6006 = !{null, !167, !222}
!6007 = !DILocalVariable(name: "size", arg: 1, scope: !6004, file: !3992, line: 132, type: !167)
!6008 = !DILocation(line: 132, column: 38, scope: !6004)
!6009 = !DILocalVariable(name: "count", arg: 2, scope: !6004, file: !3992, line: 132, type: !222)
!6010 = !DILocation(line: 132, column: 58, scope: !6004)
!6011 = !DILocalVariable(name: "__ret_warn_on", scope: !6012, file: !3992, line: 134, type: !167)
!6012 = distinct !DILexicalBlock(scope: !6004, file: !3992, line: 134, column: 2)
!6013 = !DILocation(line: 134, column: 2, scope: !6012)
!6014 = !DILocation(line: 134, column: 2, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6012, file: !3992, line: 134, column: 2)
!6016 = !DILocation(line: 134, column: 2, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6015, file: !3992, line: 134, column: 2)
!6018 = !DILocation(line: 134, column: 2, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6017, file: !3992, line: 134, column: 2)
!6020 = !DILocation(line: 134, column: 2, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6017, file: !3992, line: 134, column: 2)
!6022 = !DILocation(line: 134, column: 2, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !6021, file: !3992, line: 134, column: 2)
!6024 = !DILocation(line: 134, column: 2, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6021, file: !3992, line: 134, column: 2)
!6026 = !{i32 -2145549540, i32 -2145549511, i32 -2145549465, i32 -2145549407, i32 -2145549353, i32 -2145549299, i32 -2145549244, i32 -2145549213}
!6027 = !DILocation(line: 134, column: 2, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6021, file: !3992, line: 134, column: 2)
!6029 = !{i32 -2145548793, i32 -2145548786, i32 -2145548734, i32 -2145548703, i32 -2145548673}
!6030 = !DILocation(line: 134, column: 2, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6021, file: !3992, line: 134, column: 2)
!6032 = !DILocation(line: 134, column: 2, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6017, file: !3992, line: 134, column: 2)
!6034 = !DILocation(line: 135, column: 1, scope: !6004)
!6035 = distinct !DISubprogram(name: "check_object_size", scope: !3992, file: !3992, line: 122, type: !6036, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!6036 = !DISubroutineType(types: !6037)
!6037 = !{null, !3000, !222, !377}
!6038 = !DILocalVariable(name: "ptr", arg: 1, scope: !6035, file: !3992, line: 122, type: !3000)
!6039 = !DILocation(line: 122, column: 50, scope: !6035)
!6040 = !DILocalVariable(name: "n", arg: 2, scope: !6035, file: !3992, line: 122, type: !222)
!6041 = !DILocation(line: 122, column: 69, scope: !6035)
!6042 = !DILocalVariable(name: "to_user", arg: 3, scope: !6035, file: !3992, line: 123, type: !377)
!6043 = !DILocation(line: 123, column: 15, scope: !6035)
!6044 = !DILocation(line: 124, column: 3, scope: !6035)
!6045 = distinct !DISubprogram(name: "get_order", scope: !6046, file: !6046, line: 29, type: !6047, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!6046 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6047 = !DISubroutineType(types: !6048)
!6048 = !{!167, !222}
!6049 = !DILocalVariable(name: "x", arg: 1, scope: !6050, file: !6051, line: 366, type: !303)
!6050 = distinct !DISubprogram(name: "fls64", scope: !6051, file: !6051, line: 366, type: !6052, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!6051 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!6052 = !DISubroutineType(types: !6053)
!6053 = !{!167, !303}
!6054 = !DILocation(line: 366, column: 40, scope: !6050, inlinedAt: !6055)
!6055 = distinct !DILocation(line: 46, column: 9, scope: !6045)
!6056 = !DILocalVariable(name: "bitpos", scope: !6050, file: !6051, line: 368, type: !167)
!6057 = !DILocation(line: 368, column: 6, scope: !6050, inlinedAt: !6055)
!6058 = !DILocalVariable(name: "size", arg: 1, scope: !6045, file: !6046, line: 29, type: !222)
!6059 = !DILocation(line: 29, column: 63, scope: !6045)
!6060 = !DILocation(line: 31, column: 27, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6045, file: !6046, line: 31, column: 6)
!6062 = !DILocation(line: 31, column: 6, scope: !6061)
!6063 = !DILocation(line: 31, column: 6, scope: !6045)
!6064 = !DILocation(line: 32, column: 8, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6066, file: !6046, line: 32, column: 7)
!6066 = distinct !DILexicalBlock(scope: !6061, file: !6046, line: 31, column: 34)
!6067 = !DILocation(line: 32, column: 7, scope: !6066)
!6068 = !DILocation(line: 33, column: 4, scope: !6065)
!6069 = !DILocation(line: 35, column: 7, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6066, file: !6046, line: 35, column: 7)
!6071 = !DILocation(line: 35, column: 12, scope: !6070)
!6072 = !DILocation(line: 35, column: 7, scope: !6066)
!6073 = !DILocation(line: 36, column: 4, scope: !6070)
!6074 = !DILocation(line: 38, column: 10, scope: !6066)
!6075 = !DILocation(line: 38, column: 28, scope: !6066)
!6076 = !DILocation(line: 38, column: 41, scope: !6066)
!6077 = !DILocation(line: 38, column: 3, scope: !6066)
!6078 = !DILocation(line: 41, column: 6, scope: !6045)
!6079 = !DILocation(line: 42, column: 7, scope: !6045)
!6080 = !DILocation(line: 46, column: 15, scope: !6045)
!6081 = !DILocation(line: 374, column: 2, scope: !6050, inlinedAt: !6055)
!6082 = !DILocation(line: 376, column: 14, scope: !6050, inlinedAt: !6055)
!6083 = !{i32 309116}
!6084 = !DILocation(line: 377, column: 9, scope: !6050, inlinedAt: !6055)
!6085 = !DILocation(line: 377, column: 16, scope: !6050, inlinedAt: !6055)
!6086 = !DILocation(line: 46, column: 2, scope: !6045)
!6087 = !DILocation(line: 48, column: 1, scope: !6045)
!6088 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6089, file: !6089, line: 30, type: !6090, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!6089 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6090 = !DISubroutineType(types: !6091)
!6091 = !{!167, !302}
!6092 = !DILocation(line: 366, column: 40, scope: !6050, inlinedAt: !6093)
!6093 = distinct !DILocation(line: 32, column: 9, scope: !6088)
!6094 = !DILocation(line: 368, column: 6, scope: !6050, inlinedAt: !6093)
!6095 = !DILocalVariable(name: "n", arg: 1, scope: !6088, file: !6089, line: 30, type: !302)
!6096 = !DILocation(line: 30, column: 21, scope: !6088)
!6097 = !DILocation(line: 32, column: 15, scope: !6088)
!6098 = !DILocation(line: 374, column: 2, scope: !6050, inlinedAt: !6093)
!6099 = !DILocation(line: 376, column: 14, scope: !6050, inlinedAt: !6093)
!6100 = !DILocation(line: 377, column: 9, scope: !6050, inlinedAt: !6093)
!6101 = !DILocation(line: 377, column: 16, scope: !6050, inlinedAt: !6093)
!6102 = !DILocation(line: 32, column: 18, scope: !6088)
!6103 = !DILocation(line: 32, column: 2, scope: !6088)
!6104 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6105, file: !6105, line: 137, type: !6106, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!6105 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6106 = !DISubroutineType(types: !6107)
!6107 = !{!147, !842, !3000, !460, !650}
!6108 = !DILocalVariable(name: "s", arg: 1, scope: !6104, file: !6105, line: 137, type: !842)
!6109 = !DILocation(line: 137, column: 54, scope: !6104)
!6110 = !DILocalVariable(name: "object", arg: 2, scope: !6104, file: !6105, line: 137, type: !3000)
!6111 = !DILocation(line: 137, column: 69, scope: !6104)
!6112 = !DILocalVariable(name: "size", arg: 3, scope: !6104, file: !6105, line: 138, type: !460)
!6113 = !DILocation(line: 138, column: 12, scope: !6104)
!6114 = !DILocalVariable(name: "flags", arg: 4, scope: !6104, file: !6105, line: 138, type: !650)
!6115 = !DILocation(line: 138, column: 24, scope: !6104)
!6116 = !DILocation(line: 140, column: 17, scope: !6104)
!6117 = !DILocation(line: 140, column: 2, scope: !6104)
!6118 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5994, file: !5994, line: 646, type: !5995, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!6119 = !DILocalVariable(name: "__ret", scope: !6120, file: !5994, line: 648, type: !222)
!6120 = distinct !DILexicalBlock(scope: !6118, file: !5994, line: 648, column: 9)
!6121 = !DILocation(line: 648, column: 9, scope: !6120)
!6122 = !DILocalVariable(name: "__edi", scope: !6120, file: !5994, line: 648, type: !222)
!6123 = !DILocalVariable(name: "__esi", scope: !6120, file: !5994, line: 648, type: !222)
!6124 = !DILocalVariable(name: "__edx", scope: !6120, file: !5994, line: 648, type: !222)
!6125 = !DILocalVariable(name: "__ecx", scope: !6120, file: !5994, line: 648, type: !222)
!6126 = !DILocalVariable(name: "__eax", scope: !6120, file: !5994, line: 648, type: !222)
!6127 = !DILocation(line: 648, column: 9, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6129, file: !5994, line: 648, column: 9)
!6129 = distinct !DILexicalBlock(scope: !6120, file: !5994, line: 648, column: 9)
!6130 = !{i32 -2145778843, i32 -2145776528, i32 -2145776294, i32 -2145776243, i32 -2145776215, i32 -2145776190, i32 -2145776506, i32 -2145776493, i32 -2145776055, i32 -2145775936, i32 -2145776401, i32 -2145776374, i32 -2145776346, i32 -2145776316}
!6131 = !DILocalVariable(name: "__mask", scope: !6132, file: !5994, line: 648, type: !222)
!6132 = distinct !DILexicalBlock(scope: !6128, file: !5994, line: 648, column: 9)
!6133 = !DILocation(line: 648, column: 9, scope: !6132)
!6134 = !DILocation(line: 648, column: 9, scope: !6129)
!6135 = !DILocation(line: 648, column: 2, scope: !6118)
!6136 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5994, file: !5994, line: 656, type: !1707, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!6137 = !DILocalVariable(name: "__edi", scope: !6138, file: !5994, line: 658, type: !222)
!6138 = distinct !DILexicalBlock(scope: !6136, file: !5994, line: 658, column: 2)
!6139 = !DILocation(line: 658, column: 2, scope: !6138)
!6140 = !DILocalVariable(name: "__esi", scope: !6138, file: !5994, line: 658, type: !222)
!6141 = !DILocalVariable(name: "__edx", scope: !6138, file: !5994, line: 658, type: !222)
!6142 = !DILocalVariable(name: "__ecx", scope: !6138, file: !5994, line: 658, type: !222)
!6143 = !DILocalVariable(name: "__eax", scope: !6138, file: !5994, line: 658, type: !222)
!6144 = !{i32 -2145771749, i32 -2145771017, i32 -2145770783, i32 -2145770732, i32 -2145770704, i32 -2145770679, i32 -2145770995, i32 -2145770982, i32 -2145770544, i32 -2145770425, i32 -2145770890, i32 -2145770863, i32 -2145770835, i32 -2145770805}
!6145 = !DILocation(line: 659, column: 1, scope: !6136)
!6146 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5994, file: !5994, line: 651, type: !6147, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !536)
!6147 = !DISubroutineType(types: !6148)
!6148 = !{null, !222}
!6149 = !DILocalVariable(name: "f", arg: 1, scope: !6146, file: !5994, line: 651, type: !222)
!6150 = !DILocation(line: 651, column: 65, scope: !6146)
!6151 = !DILocalVariable(name: "__edi", scope: !6152, file: !5994, line: 653, type: !222)
!6152 = distinct !DILexicalBlock(scope: !6146, file: !5994, line: 653, column: 2)
!6153 = !DILocation(line: 653, column: 2, scope: !6152)
!6154 = !DILocalVariable(name: "__esi", scope: !6152, file: !5994, line: 653, type: !222)
!6155 = !DILocalVariable(name: "__edx", scope: !6152, file: !5994, line: 653, type: !222)
!6156 = !DILocalVariable(name: "__ecx", scope: !6152, file: !5994, line: 653, type: !222)
!6157 = !DILocalVariable(name: "__eax", scope: !6152, file: !5994, line: 653, type: !222)
!6158 = !{i32 -2145774376, i32 -2145773626, i32 -2145773392, i32 -2145773341, i32 -2145773313, i32 -2145773288, i32 -2145773604, i32 -2145773591, i32 -2145773153, i32 -2145773034, i32 -2145773499, i32 -2145773472, i32 -2145773444, i32 -2145773414}
!6159 = !DILocation(line: 654, column: 1, scope: !6146)
