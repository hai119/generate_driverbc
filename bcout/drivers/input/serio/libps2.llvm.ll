; ModuleID = '../bcout/drivers/input/serio/libps2.llvm.bc'
source_filename = "drivers/input/serio/libps2.c"
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
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { %struct.spinlock, i32 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.51, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
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
%struct.poll_table_struct = type opaque
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
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
%struct.ps2dev = type { %struct.serio*, %struct.mutex, %struct.wait_queue_head, i64, [8 x i8], i8, i8 }
%struct.serio = type { i8*, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, i32 (%struct.serio*, i8)*, i32 (%struct.serio*)*, void (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, %struct.serio*, %struct.list_head, %struct.list_head, i32, %struct.serio_driver*, %struct.mutex, %struct.device, %struct.list_head, %struct.mutex* }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio_driver = type { i8*, %struct.serio_device_id*, i8, void (%struct.serio*)*, i32 (%struct.serio*, i8, i32)*, i32 (%struct.serio*, %struct.serio_driver*)*, i32 (%struct.serio*)*, i32 (%struct.serio*)*, void (%struct.serio*)*, void (%struct.serio*)*, %struct.device_driver }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.63 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }

@__UNIQUE_ID_author202 = internal constant [45 x i8] c"libps2.author=Dmitry Torokhov <dtor@mail.ru>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description203 = internal constant [39 x i8] c"libps2.description=PS/2 driver library\00", section ".modinfo", align 1, !dbg !96
@__UNIQUE_ID_file204 = internal constant [39 x i8] c"libps2.file=drivers/input/serio/libps2\00", section ".modinfo", align 1, !dbg !103
@__UNIQUE_ID_license205 = internal constant [19 x i8] c"libps2.license=GPL\00", section ".modinfo", align 1, !dbg !105
@.str = private unnamed_addr constant [29 x i8] c"drivers/input/serio/libps2.c\00", align 1
@ps2_is_keyboard_id.keyboard_ids = internal constant [6 x i8] c"\AB\AC+]`G", align 1, !dbg !110
@ps2_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !128
@.str.1 = private unnamed_addr constant [19 x i8] c"&ps2dev->cmd_mutex\00", align 1
@ps2_init.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3573
@.str.3 = private unnamed_addr constant [14 x i8] c"&ps2dev->wait\00", align 1
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@llvm.used = appending global [4 x i8*] [i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__UNIQUE_ID_author202, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_description203, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_file204, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license205, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ps2_sendbyte(%struct.ps2dev* %ps2dev, i8 zeroext %byte, i32 %timeout) #0 !dbg !3584 {
entry:
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %byte.addr = alloca i8, align 1
  %timeout.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !3587, metadata !DIExpression()), !dbg !3588
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !3589, metadata !DIExpression()), !dbg !3590
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !3591, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !3593, metadata !DIExpression()), !dbg !3594
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3595
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %0, i32 0, i32 0, !dbg !3596
  %1 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3596
  call void @serio_pause_rx(%struct.serio* %1) #7, !dbg !3597
  %2 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3598
  %3 = load i8, i8* %byte.addr, align 1, !dbg !3599
  %4 = load i32, i32* %timeout.addr, align 4, !dbg !3600
  %call = call i32 @ps2_do_sendbyte(%struct.ps2dev* %2, i8 zeroext %3, i32 %4, i32 1) #7, !dbg !3601
  store i32 %call, i32* %retval1, align 4, !dbg !3602
  %5 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3603
  %serio2 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %5, i32 0, i32 0, !dbg !3604
  %6 = load %struct.serio*, %struct.serio** %serio2, align 8, !dbg !3604
  call void @serio_continue_rx(%struct.serio* %6) #7, !dbg !3605
  %7 = load i32, i32* %retval1, align 4, !dbg !3606
  ret i32 %7, !dbg !3607
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_pause_rx(%struct.serio* %serio) #0 !dbg !3608 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3609, metadata !DIExpression()), !dbg !3615
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !3617, metadata !DIExpression()), !dbg !3618
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3619
  %lock = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 6, !dbg !3620
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_disable() #8, !dbg !3621
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !3624, !srcloc !3626
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3627
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !3627
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !3627
  ret void, !dbg !3629
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ps2_do_sendbyte(%struct.ps2dev* %ps2dev, i8 zeroext %byte, i32 %timeout, i32 %max_attempts) #0 !dbg !3630 {
entry:
  %retval.i69 = alloca i64, align 8
  %m.addr.i70 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i70, metadata !3633, metadata !DIExpression()), !dbg !3638
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !3633, metadata !DIExpression()), !dbg !3645
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %byte.addr = alloca i8, align 1
  %timeout.addr = alloca i32, align 4
  %max_attempts.addr = alloca i32, align 4
  %attempt = alloca i32, align 4
  %error = alloca i32, align 4
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret19 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond22 = alloca i8, align 1
  %tmp33 = alloca i32, align 4
  %tmp45 = alloca i64, align 8
  %tmp47 = alloca i64, align 8
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !3647, metadata !DIExpression()), !dbg !3648
  store i8 %byte, i8* %byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %byte.addr, metadata !3649, metadata !DIExpression()), !dbg !3650
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !3651, metadata !DIExpression()), !dbg !3652
  store i32 %max_attempts, i32* %max_attempts.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %max_attempts.addr, metadata !3653, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.declare(metadata i32* %attempt, metadata !3655, metadata !DIExpression()), !dbg !3656
  store i32 0, i32* %attempt, align 4, !dbg !3656
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3657, metadata !DIExpression()), !dbg !3658
  br label %do.body, !dbg !3659

do.body:                                          ; preds = %entry
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3660
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %0, i32 0, i32 0, !dbg !3660
  %1 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3660
  %lock = getelementptr inbounds %struct.serio, %struct.serio* %1, i32 0, i32 6, !dbg !3660
  br label %do.end, !dbg !3660

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !3662

do.body1:                                         ; preds = %land.end, %do.end
  %2 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3663
  %nak = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %2, i32 0, i32 6, !dbg !3664
  store i8 1, i8* %nak, align 1, !dbg !3665
  %3 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3666
  %flags = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %3, i32 0, i32 3, !dbg !3667
  %4 = load i64, i64* %flags, align 8, !dbg !3668
  %or = or i64 %4, 1, !dbg !3668
  store i64 %or, i64* %flags, align 8, !dbg !3668
  %5 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3669
  %serio2 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %5, i32 0, i32 0, !dbg !3670
  %6 = load %struct.serio*, %struct.serio** %serio2, align 8, !dbg !3670
  call void @serio_continue_rx(%struct.serio* %6) #7, !dbg !3671
  %7 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3672
  %serio3 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %7, i32 0, i32 0, !dbg !3673
  %8 = load %struct.serio*, %struct.serio** %serio3, align 8, !dbg !3673
  %9 = load i8, i8* %byte.addr, align 1, !dbg !3674
  %call = call i32 @serio_write(%struct.serio* %8, i8 zeroext %9) #7, !dbg !3675
  store i32 %call, i32* %error, align 4, !dbg !3676
  %10 = load i32, i32* %error, align 4, !dbg !3677
  %tobool = icmp ne i32 %10, 0, !dbg !3677
  br i1 %tobool, label %if.then, label %if.else, !dbg !3678

if.then:                                          ; preds = %do.body1
  br label %if.end48, !dbg !3679

if.else:                                          ; preds = %do.body1
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3680, metadata !DIExpression()), !dbg !3681
  %11 = load i32, i32* %timeout.addr, align 4, !dbg !3681
  store i32 %11, i32* %m.addr.i, align 4
  %12 = load i32, i32* %m.addr.i, align 4, !dbg !3682
  %13 = call i1 @llvm.is.constant.i32(i32 %12) #5, !dbg !3684
  br i1 %13, label %if.then.i, label %if.else.i, !dbg !3685

if.then.i:                                        ; preds = %if.else
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !3686
  %cmp.i = icmp slt i32 %14, 0, !dbg !3689
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3690

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !3691
  br label %msecs_to_jiffies.exit, !dbg !3691

if.end.i:                                         ; preds = %if.then.i
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !3692
  %call.i = call i64 @_msecs_to_jiffies(i32 %15) #8, !dbg !3693
  store i64 %call.i, i64* %retval.i, align 8, !dbg !3694
  br label %msecs_to_jiffies.exit, !dbg !3694

if.else.i:                                        ; preds = %if.else
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !3695
  %call2.i = call i64 @__msecs_to_jiffies(i32 %16) #8, !dbg !3697
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !3698
  br label %msecs_to_jiffies.exit, !dbg !3698

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %17 = load i64, i64* %retval.i, align 8, !dbg !3699
  store i64 %17, i64* %__ret, align 8, !dbg !3681
  br label %do.body5, !dbg !3681

do.body5:                                         ; preds = %msecs_to_jiffies.exit
  br label %do.body6, !dbg !3700

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3702

do.end7:                                          ; preds = %do.body6
  br label %do.end8, !dbg !3700

do.end8:                                          ; preds = %do.end7
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !3704, metadata !DIExpression()), !dbg !3706
  %18 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3706
  %flags9 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %18, i32 0, i32 3, !dbg !3706
  %19 = load i64, i64* %flags9, align 8, !dbg !3706
  %and = and i64 %19, 1, !dbg !3706
  %tobool10 = icmp ne i64 %and, 0, !dbg !3706
  %lnot = xor i1 %tobool10, true, !dbg !3706
  %frombool = zext i1 %lnot to i8, !dbg !3706
  store i8 %frombool, i8* %__cond, align 1, !dbg !3706
  %20 = load i8, i8* %__cond, align 1, !dbg !3707
  %tobool11 = trunc i8 %20 to i1, !dbg !3707
  br i1 %tobool11, label %land.lhs.true, label %if.end, !dbg !3707

land.lhs.true:                                    ; preds = %do.end8
  %21 = load i64, i64* %__ret, align 8, !dbg !3707
  %tobool12 = icmp ne i64 %21, 0, !dbg !3707
  br i1 %tobool12, label %if.end, label %if.then13, !dbg !3706

if.then13:                                        ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !3707
  br label %if.end, !dbg !3707

if.end:                                           ; preds = %if.then13, %land.lhs.true, %do.end8
  %22 = load i8, i8* %__cond, align 1, !dbg !3706
  %tobool14 = trunc i8 %22 to i1, !dbg !3706
  br i1 %tobool14, label %lor.end, label %lor.rhs, !dbg !3706

lor.rhs:                                          ; preds = %if.end
  %23 = load i64, i64* %__ret, align 8, !dbg !3706
  %tobool15 = icmp ne i64 %23, 0, !dbg !3706
  %lnot16 = xor i1 %tobool15, true, !dbg !3706
  br label %lor.end, !dbg !3706

lor.end:                                          ; preds = %lor.rhs, %if.end
  %24 = phi i1 [ true, %if.end ], [ %lnot16, %lor.rhs ]
  %lor.ext = zext i1 %24 to i32, !dbg !3706
  store i32 %lor.ext, i32* %tmp, align 4, !dbg !3707
  %25 = load i32, i32* %tmp, align 4, !dbg !3706
  %tobool17 = icmp ne i32 %25, 0, !dbg !3709
  br i1 %tobool17, label %if.end46, label %if.then18, !dbg !3681

if.then18:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !3710, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.declare(metadata i64* %__ret19, metadata !3723, metadata !DIExpression()), !dbg !3722
  %26 = load i32, i32* %timeout.addr, align 4, !dbg !3722
  store i32 %26, i32* %m.addr.i70, align 4
  %27 = load i32, i32* %m.addr.i70, align 4, !dbg !3724
  %28 = call i1 @llvm.is.constant.i32(i32 %27) #5, !dbg !3725
  br i1 %28, label %if.then.i72, label %if.else.i77, !dbg !3726

if.then.i72:                                      ; preds = %if.then18
  %29 = load i32, i32* %m.addr.i70, align 4, !dbg !3727
  %cmp.i71 = icmp slt i32 %29, 0, !dbg !3728
  br i1 %cmp.i71, label %if.then1.i73, label %if.end.i75, !dbg !3729

if.then1.i73:                                     ; preds = %if.then.i72
  store i64 4611686018427387902, i64* %retval.i69, align 8, !dbg !3730
  br label %msecs_to_jiffies.exit78, !dbg !3730

if.end.i75:                                       ; preds = %if.then.i72
  %30 = load i32, i32* %m.addr.i70, align 4, !dbg !3731
  %call.i74 = call i64 @_msecs_to_jiffies(i32 %30) #8, !dbg !3732
  store i64 %call.i74, i64* %retval.i69, align 8, !dbg !3733
  br label %msecs_to_jiffies.exit78, !dbg !3733

if.else.i77:                                      ; preds = %if.then18
  %31 = load i32, i32* %m.addr.i70, align 4, !dbg !3734
  %call2.i76 = call i64 @__msecs_to_jiffies(i32 %31) #8, !dbg !3735
  store i64 %call2.i76, i64* %retval.i69, align 8, !dbg !3736
  br label %msecs_to_jiffies.exit78, !dbg !3736

msecs_to_jiffies.exit78:                          ; preds = %if.then1.i73, %if.end.i75, %if.else.i77
  %32 = load i64, i64* %retval.i69, align 8, !dbg !3737
  store i64 %32, i64* %__ret19, align 8, !dbg !3722
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #7, !dbg !3722
  br label %for.cond, !dbg !3722

for.cond:                                         ; preds = %if.end42, %msecs_to_jiffies.exit78
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !3738, metadata !DIExpression()), !dbg !3742
  %33 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3742
  %wait = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %33, i32 0, i32 2, !dbg !3742
  %call21 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %wait, %struct.wait_queue_entry* %__wq_entry, i32 2) #7, !dbg !3742
  store i64 %call21, i64* %__int, align 8, !dbg !3742
  call void @llvm.dbg.declare(metadata i8* %__cond22, metadata !3743, metadata !DIExpression()), !dbg !3746
  %34 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3746
  %flags23 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %34, i32 0, i32 3, !dbg !3746
  %35 = load i64, i64* %flags23, align 8, !dbg !3746
  %and24 = and i64 %35, 1, !dbg !3746
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3746
  %lnot26 = xor i1 %tobool25, true, !dbg !3746
  %frombool27 = zext i1 %lnot26 to i8, !dbg !3746
  store i8 %frombool27, i8* %__cond22, align 1, !dbg !3746
  %36 = load i8, i8* %__cond22, align 1, !dbg !3747
  %tobool28 = trunc i8 %36 to i1, !dbg !3747
  br i1 %tobool28, label %land.lhs.true29, label %if.end32, !dbg !3747

land.lhs.true29:                                  ; preds = %for.cond
  %37 = load i64, i64* %__ret19, align 8, !dbg !3747
  %tobool30 = icmp ne i64 %37, 0, !dbg !3747
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !3746

if.then31:                                        ; preds = %land.lhs.true29
  store i64 1, i64* %__ret19, align 8, !dbg !3747
  br label %if.end32, !dbg !3747

if.end32:                                         ; preds = %if.then31, %land.lhs.true29, %for.cond
  %38 = load i8, i8* %__cond22, align 1, !dbg !3746
  %tobool34 = trunc i8 %38 to i1, !dbg !3746
  br i1 %tobool34, label %lor.end38, label %lor.rhs35, !dbg !3746

lor.rhs35:                                        ; preds = %if.end32
  %39 = load i64, i64* %__ret19, align 8, !dbg !3746
  %tobool36 = icmp ne i64 %39, 0, !dbg !3746
  %lnot37 = xor i1 %tobool36, true, !dbg !3746
  br label %lor.end38, !dbg !3746

lor.end38:                                        ; preds = %lor.rhs35, %if.end32
  %40 = phi i1 [ true, %if.end32 ], [ %lnot37, %lor.rhs35 ]
  %lor.ext39 = zext i1 %40 to i32, !dbg !3746
  store i32 %lor.ext39, i32* %tmp33, align 4, !dbg !3747
  %41 = load i32, i32* %tmp33, align 4, !dbg !3746
  %tobool40 = icmp ne i32 %41, 0, !dbg !3749
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !3742

if.then41:                                        ; preds = %lor.end38
  br label %for.end, !dbg !3749

if.end42:                                         ; preds = %lor.end38
  %42 = load i64, i64* %__ret19, align 8, !dbg !3742
  %call43 = call i64 @schedule_timeout(i64 %42) #7, !dbg !3742
  store i64 %call43, i64* %__ret19, align 8, !dbg !3742
  br label %for.cond, !dbg !3750, !llvm.loop !3751

for.end:                                          ; preds = %if.then41
  %43 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3722
  %wait44 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %43, i32 0, i32 2, !dbg !3722
  call void @finish_wait(%struct.wait_queue_head* %wait44, %struct.wait_queue_entry* %__wq_entry) #7, !dbg !3722
  br label %__out, !dbg !3722

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !3753), !dbg !3722
  %44 = load i64, i64* %__ret19, align 8, !dbg !3722
  store i64 %44, i64* %tmp45, align 8, !dbg !3722
  %45 = load i64, i64* %tmp45, align 8, !dbg !3722
  store i64 %45, i64* %__ret, align 8, !dbg !3709
  br label %if.end46, !dbg !3709

if.end46:                                         ; preds = %__out, %lor.end
  %46 = load i64, i64* %__ret, align 8, !dbg !3681
  store i64 %46, i64* %tmp47, align 8, !dbg !3709
  %47 = load i64, i64* %tmp47, align 8, !dbg !3681
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.then
  %48 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3754
  %serio49 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %48, i32 0, i32 0, !dbg !3755
  %49 = load %struct.serio*, %struct.serio** %serio49, align 8, !dbg !3755
  call void @serio_pause_rx(%struct.serio* %49) #7, !dbg !3756
  br label %do.cond, !dbg !3757

do.cond:                                          ; preds = %if.end48
  %50 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3758
  %nak50 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %50, i32 0, i32 6, !dbg !3759
  %51 = load i8, i8* %nak50, align 1, !dbg !3759
  %conv = zext i8 %51 to i32, !dbg !3758
  %cmp = icmp eq i32 %conv, 254, !dbg !3760
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3761

land.rhs:                                         ; preds = %do.cond
  %52 = load i32, i32* %attempt, align 4, !dbg !3762
  %inc = add i32 %52, 1, !dbg !3762
  store i32 %inc, i32* %attempt, align 4, !dbg !3762
  %53 = load i32, i32* %max_attempts.addr, align 4, !dbg !3763
  %cmp52 = icmp ult i32 %inc, %53, !dbg !3764
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %54 = phi i1 [ false, %do.cond ], [ %cmp52, %land.rhs ], !dbg !3765
  br i1 %54, label %do.body1, label %do.end54, !dbg !3757, !llvm.loop !3766

do.end54:                                         ; preds = %land.end
  %55 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3768
  %flags55 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %55, i32 0, i32 3, !dbg !3769
  %56 = load i64, i64* %flags55, align 8, !dbg !3770
  %and56 = and i64 %56, -2, !dbg !3770
  store i64 %and56, i64* %flags55, align 8, !dbg !3770
  %57 = load i32, i32* %error, align 4, !dbg !3771
  %tobool57 = icmp ne i32 %57, 0, !dbg !3771
  br i1 %tobool57, label %if.end63, label %if.then58, !dbg !3773

if.then58:                                        ; preds = %do.end54
  %58 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3774
  %nak59 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %58, i32 0, i32 6, !dbg !3776
  %59 = load i8, i8* %nak59, align 1, !dbg !3776
  %conv60 = zext i8 %59 to i32, !dbg !3774
  switch i32 %conv60, label %sw.default [
    i32 0, label %sw.bb
    i32 254, label %sw.bb61
    i32 252, label %sw.bb62
  ], !dbg !3777

sw.bb:                                            ; preds = %if.then58
  br label %sw.epilog, !dbg !3778

sw.bb61:                                          ; preds = %if.then58
  store i32 -11, i32* %error, align 4, !dbg !3780
  br label %sw.epilog, !dbg !3781

sw.bb62:                                          ; preds = %if.then58
  store i32 -71, i32* %error, align 4, !dbg !3782
  br label %sw.epilog, !dbg !3783

sw.default:                                       ; preds = %if.then58
  store i32 -5, i32* %error, align 4, !dbg !3784
  br label %sw.epilog, !dbg !3785

sw.epilog:                                        ; preds = %sw.default, %sw.bb62, %sw.bb61, %sw.bb
  br label %if.end63, !dbg !3786

if.end63:                                         ; preds = %sw.epilog, %do.end54
  %60 = load i32, i32* %error, align 4, !dbg !3787
  %tobool64 = icmp ne i32 %60, 0, !dbg !3787
  br i1 %tobool64, label %if.then67, label %lor.lhs.false, !dbg !3789

lor.lhs.false:                                    ; preds = %if.end63
  %61 = load i32, i32* %attempt, align 4, !dbg !3790
  %cmp65 = icmp sgt i32 %61, 1, !dbg !3791
  br i1 %cmp65, label %if.then67, label %if.end68, !dbg !3792

if.then67:                                        ; preds = %lor.lhs.false, %if.end63
  br label %if.end68, !dbg !3793

if.end68:                                         ; preds = %if.then67, %lor.lhs.false
  %62 = load i32, i32* %error, align 4, !dbg !3794
  ret i32 %62, !dbg !3795
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @serio_continue_rx(%struct.serio* %serio) #0 !dbg !3796 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3797, metadata !DIExpression()), !dbg !3799
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !3801, metadata !DIExpression()), !dbg !3802
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !3803
  %lock = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 6, !dbg !3804
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  call void @arch_local_irq_enable() #8, !dbg !3805
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !dbg !3808, !srcloc !3810
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3811
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !3811
  %rlock.i = bitcast %union.anon* %2 to %struct.raw_spinlock*, !dbg !3811
  ret void, !dbg !3813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ps2_begin_command(%struct.ps2dev* %ps2dev) #0 !dbg !3814 {
entry:
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %m = alloca %struct.mutex*, align 8
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !3817, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.declare(metadata %struct.mutex** %m, metadata !3819, metadata !DIExpression()), !dbg !3820
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3821
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %0, i32 0, i32 0, !dbg !3822
  %1 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3822
  %ps2_cmd_mutex = getelementptr inbounds %struct.serio, %struct.serio* %1, i32 0, i32 20, !dbg !3823
  %2 = load %struct.mutex*, %struct.mutex** %ps2_cmd_mutex, align 8, !dbg !3823
  %tobool = icmp ne %struct.mutex* %2, null, !dbg !3821
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3821

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3821

cond.false:                                       ; preds = %entry
  %3 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3824
  %cmd_mutex = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %3, i32 0, i32 1, !dbg !3825
  br label %cond.end, !dbg !3821

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mutex* [ %2, %cond.true ], [ %cmd_mutex, %cond.false ], !dbg !3821
  store %struct.mutex* %cond, %struct.mutex** %m, align 8, !dbg !3820
  %4 = load %struct.mutex*, %struct.mutex** %m, align 8, !dbg !3826
  call void @mutex_lock(%struct.mutex* %4) #7, !dbg !3827
  ret void, !dbg !3828
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ps2_end_command(%struct.ps2dev* %ps2dev) #0 !dbg !3829 {
entry:
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %m = alloca %struct.mutex*, align 8
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !3830, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.declare(metadata %struct.mutex** %m, metadata !3832, metadata !DIExpression()), !dbg !3833
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3834
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %0, i32 0, i32 0, !dbg !3835
  %1 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3835
  %ps2_cmd_mutex = getelementptr inbounds %struct.serio, %struct.serio* %1, i32 0, i32 20, !dbg !3836
  %2 = load %struct.mutex*, %struct.mutex** %ps2_cmd_mutex, align 8, !dbg !3836
  %tobool = icmp ne %struct.mutex* %2, null, !dbg !3834
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3834

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3834

cond.false:                                       ; preds = %entry
  %3 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3837
  %cmd_mutex = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %3, i32 0, i32 1, !dbg !3838
  br label %cond.end, !dbg !3834

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.mutex* [ %2, %cond.true ], [ %cmd_mutex, %cond.false ], !dbg !3834
  store %struct.mutex* %cond, %struct.mutex** %m, align 8, !dbg !3833
  %4 = load %struct.mutex*, %struct.mutex** %m, align 8, !dbg !3839
  call void @mutex_unlock(%struct.mutex* %4) #7, !dbg !3840
  ret void, !dbg !3841
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ps2_drain(%struct.ps2dev* %ps2dev, i64 %maxbytes, i32 %timeout) #0 !dbg !3842 {
entry:
  %retval.i73 = alloca i64, align 8
  %m.addr.i74 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i74, metadata !3633, metadata !DIExpression()), !dbg !3845
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !3633, metadata !DIExpression()), !dbg !3850
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %maxbytes.addr = alloca i64, align 8
  %timeout.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp32 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret40 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond43 = alloca i8, align 1
  %tmp56 = alloca i32, align 4
  %tmp70 = alloca i64, align 8
  %tmp72 = alloca i64, align 8
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !3852, metadata !DIExpression()), !dbg !3853
  store i64 %maxbytes, i64* %maxbytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %maxbytes.addr, metadata !3854, metadata !DIExpression()), !dbg !3855
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !3856, metadata !DIExpression()), !dbg !3857
  %0 = load i64, i64* %maxbytes.addr, align 8, !dbg !3858
  %cmp = icmp ugt i64 %0, 8, !dbg !3860
  br i1 %cmp, label %if.then, label %if.end16, !dbg !3861

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3862, metadata !DIExpression()), !dbg !3865
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !3865
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !3866
  %tobool = icmp ne i32 %1, 0, !dbg !3866
  %lnot = xor i1 %tobool, true, !dbg !3866
  %lnot1 = xor i1 %lnot, true, !dbg !3866
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3866
  %conv = sext i32 %lnot.ext to i64, !dbg !3866
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3866
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !3865

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !3866

do.body:                                          ; preds = %if.then3
  br label %do.body4, !dbg !3868

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3870

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3868

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 125, i32 2305, i64 12) #5, !dbg !3872, !srcloc !3874
  br label %do.end6, !dbg !3872

do.end6:                                          ; preds = %do.body5
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 206) #5, !dbg !3875, !srcloc !3877
  br label %do.body7, !dbg !3868

do.body7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !3878

do.end8:                                          ; preds = %do.body7
  br label %do.end9, !dbg !3868

do.end9:                                          ; preds = %do.end8
  br label %if.end, !dbg !3868

if.end:                                           ; preds = %do.end9, %if.then
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !3865
  %tobool10 = icmp ne i32 %2, 0, !dbg !3865
  %lnot11 = xor i1 %tobool10, true, !dbg !3865
  %lnot13 = xor i1 %lnot11, true, !dbg !3865
  %lnot.ext14 = zext i1 %lnot13 to i32, !dbg !3865
  %conv15 = sext i32 %lnot.ext14 to i64, !dbg !3865
  store i64 %conv15, i64* %tmp, align 8, !dbg !3866
  %3 = load i64, i64* %tmp, align 8, !dbg !3865
  store i64 8, i64* %maxbytes.addr, align 8, !dbg !3880
  br label %if.end16, !dbg !3881

if.end16:                                         ; preds = %if.end, %entry
  %4 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3882
  call void @ps2_begin_command(%struct.ps2dev* %4) #7, !dbg !3883
  %5 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3884
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %5, i32 0, i32 0, !dbg !3885
  %6 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !3885
  call void @serio_pause_rx(%struct.serio* %6) #7, !dbg !3886
  %7 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3887
  %flags = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %7, i32 0, i32 3, !dbg !3888
  store i64 2, i64* %flags, align 8, !dbg !3889
  %8 = load i64, i64* %maxbytes.addr, align 8, !dbg !3890
  %conv17 = trunc i64 %8 to i8, !dbg !3890
  %9 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3891
  %cmdcnt = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %9, i32 0, i32 5, !dbg !3892
  store i8 %conv17, i8* %cmdcnt, align 8, !dbg !3893
  %10 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3894
  %serio18 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %10, i32 0, i32 0, !dbg !3895
  %11 = load %struct.serio*, %struct.serio** %serio18, align 8, !dbg !3895
  call void @serio_continue_rx(%struct.serio* %11) #7, !dbg !3896
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3897, metadata !DIExpression()), !dbg !3898
  %12 = load i32, i32* %timeout.addr, align 4, !dbg !3898
  store i32 %12, i32* %m.addr.i, align 4
  %13 = load i32, i32* %m.addr.i, align 4, !dbg !3899
  %14 = call i1 @llvm.is.constant.i32(i32 %13) #5, !dbg !3900
  br i1 %14, label %if.then.i, label %if.else.i, !dbg !3901

if.then.i:                                        ; preds = %if.end16
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !3902
  %cmp.i = icmp slt i32 %15, 0, !dbg !3903
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3904

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !3905
  br label %msecs_to_jiffies.exit, !dbg !3905

if.end.i:                                         ; preds = %if.then.i
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !3906
  %call.i = call i64 @_msecs_to_jiffies(i32 %16) #8, !dbg !3907
  store i64 %call.i, i64* %retval.i, align 8, !dbg !3908
  br label %msecs_to_jiffies.exit, !dbg !3908

if.else.i:                                        ; preds = %if.end16
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !3909
  %call2.i = call i64 @__msecs_to_jiffies(i32 %17) #8, !dbg !3910
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !3911
  br label %msecs_to_jiffies.exit, !dbg !3911

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %18 = load i64, i64* %retval.i, align 8, !dbg !3912
  store i64 %18, i64* %__ret, align 8, !dbg !3898
  br label %do.body19, !dbg !3898

do.body19:                                        ; preds = %msecs_to_jiffies.exit
  br label %do.body20, !dbg !3913

do.body20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !3915

do.end21:                                         ; preds = %do.body20
  br label %do.end22, !dbg !3913

do.end22:                                         ; preds = %do.end21
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !3917, metadata !DIExpression()), !dbg !3919
  %19 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3919
  %flags23 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %19, i32 0, i32 3, !dbg !3919
  %20 = load i64, i64* %flags23, align 8, !dbg !3919
  %and = and i64 %20, 2, !dbg !3919
  %tobool24 = icmp ne i64 %and, 0, !dbg !3919
  %lnot25 = xor i1 %tobool24, true, !dbg !3919
  %frombool = zext i1 %lnot25 to i8, !dbg !3919
  store i8 %frombool, i8* %__cond, align 1, !dbg !3919
  %21 = load i8, i8* %__cond, align 1, !dbg !3920
  %tobool27 = trunc i8 %21 to i1, !dbg !3920
  br i1 %tobool27, label %land.lhs.true, label %if.end31, !dbg !3920

land.lhs.true:                                    ; preds = %do.end22
  %22 = load i64, i64* %__ret, align 8, !dbg !3920
  %tobool29 = icmp ne i64 %22, 0, !dbg !3920
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !3919

if.then30:                                        ; preds = %land.lhs.true
  store i64 1, i64* %__ret, align 8, !dbg !3920
  br label %if.end31, !dbg !3920

if.end31:                                         ; preds = %if.then30, %land.lhs.true, %do.end22
  %23 = load i8, i8* %__cond, align 1, !dbg !3919
  %tobool33 = trunc i8 %23 to i1, !dbg !3919
  br i1 %tobool33, label %lor.end, label %lor.rhs, !dbg !3919

lor.rhs:                                          ; preds = %if.end31
  %24 = load i64, i64* %__ret, align 8, !dbg !3919
  %tobool35 = icmp ne i64 %24, 0, !dbg !3919
  %lnot36 = xor i1 %tobool35, true, !dbg !3919
  br label %lor.end, !dbg !3919

lor.end:                                          ; preds = %lor.rhs, %if.end31
  %25 = phi i1 [ true, %if.end31 ], [ %lnot36, %lor.rhs ]
  %lor.ext = zext i1 %25 to i32, !dbg !3919
  store i32 %lor.ext, i32* %tmp32, align 4, !dbg !3920
  %26 = load i32, i32* %tmp32, align 4, !dbg !3919
  %tobool38 = icmp ne i32 %26, 0, !dbg !3922
  br i1 %tobool38, label %if.end71, label %if.then39, !dbg !3898

if.then39:                                        ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !3923, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.declare(metadata i64* %__ret40, metadata !3925, metadata !DIExpression()), !dbg !3924
  %27 = load i32, i32* %timeout.addr, align 4, !dbg !3924
  store i32 %27, i32* %m.addr.i74, align 4
  %28 = load i32, i32* %m.addr.i74, align 4, !dbg !3926
  %29 = call i1 @llvm.is.constant.i32(i32 %28) #5, !dbg !3927
  br i1 %29, label %if.then.i76, label %if.else.i81, !dbg !3928

if.then.i76:                                      ; preds = %if.then39
  %30 = load i32, i32* %m.addr.i74, align 4, !dbg !3929
  %cmp.i75 = icmp slt i32 %30, 0, !dbg !3930
  br i1 %cmp.i75, label %if.then1.i77, label %if.end.i79, !dbg !3931

if.then1.i77:                                     ; preds = %if.then.i76
  store i64 4611686018427387902, i64* %retval.i73, align 8, !dbg !3932
  br label %msecs_to_jiffies.exit82, !dbg !3932

if.end.i79:                                       ; preds = %if.then.i76
  %31 = load i32, i32* %m.addr.i74, align 4, !dbg !3933
  %call.i78 = call i64 @_msecs_to_jiffies(i32 %31) #8, !dbg !3934
  store i64 %call.i78, i64* %retval.i73, align 8, !dbg !3935
  br label %msecs_to_jiffies.exit82, !dbg !3935

if.else.i81:                                      ; preds = %if.then39
  %32 = load i32, i32* %m.addr.i74, align 4, !dbg !3936
  %call2.i80 = call i64 @__msecs_to_jiffies(i32 %32) #8, !dbg !3937
  store i64 %call2.i80, i64* %retval.i73, align 8, !dbg !3938
  br label %msecs_to_jiffies.exit82, !dbg !3938

msecs_to_jiffies.exit82:                          ; preds = %if.then1.i77, %if.end.i79, %if.else.i81
  %33 = load i64, i64* %retval.i73, align 8, !dbg !3939
  store i64 %33, i64* %__ret40, align 8, !dbg !3924
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #7, !dbg !3924
  br label %for.cond, !dbg !3924

for.cond:                                         ; preds = %if.end67, %msecs_to_jiffies.exit82
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !3940, metadata !DIExpression()), !dbg !3944
  %34 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3944
  %wait = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %34, i32 0, i32 2, !dbg !3944
  %call42 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %wait, %struct.wait_queue_entry* %__wq_entry, i32 2) #7, !dbg !3944
  store i64 %call42, i64* %__int, align 8, !dbg !3944
  call void @llvm.dbg.declare(metadata i8* %__cond43, metadata !3945, metadata !DIExpression()), !dbg !3948
  %35 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3948
  %flags44 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %35, i32 0, i32 3, !dbg !3948
  %36 = load i64, i64* %flags44, align 8, !dbg !3948
  %and45 = and i64 %36, 2, !dbg !3948
  %tobool46 = icmp ne i64 %and45, 0, !dbg !3948
  %lnot47 = xor i1 %tobool46, true, !dbg !3948
  %frombool49 = zext i1 %lnot47 to i8, !dbg !3948
  store i8 %frombool49, i8* %__cond43, align 1, !dbg !3948
  %37 = load i8, i8* %__cond43, align 1, !dbg !3949
  %tobool50 = trunc i8 %37 to i1, !dbg !3949
  br i1 %tobool50, label %land.lhs.true52, label %if.end55, !dbg !3949

land.lhs.true52:                                  ; preds = %for.cond
  %38 = load i64, i64* %__ret40, align 8, !dbg !3949
  %tobool53 = icmp ne i64 %38, 0, !dbg !3949
  br i1 %tobool53, label %if.end55, label %if.then54, !dbg !3948

if.then54:                                        ; preds = %land.lhs.true52
  store i64 1, i64* %__ret40, align 8, !dbg !3949
  br label %if.end55, !dbg !3949

if.end55:                                         ; preds = %if.then54, %land.lhs.true52, %for.cond
  %39 = load i8, i8* %__cond43, align 1, !dbg !3948
  %tobool57 = trunc i8 %39 to i1, !dbg !3948
  br i1 %tobool57, label %lor.end63, label %lor.rhs59, !dbg !3948

lor.rhs59:                                        ; preds = %if.end55
  %40 = load i64, i64* %__ret40, align 8, !dbg !3948
  %tobool60 = icmp ne i64 %40, 0, !dbg !3948
  %lnot61 = xor i1 %tobool60, true, !dbg !3948
  br label %lor.end63, !dbg !3948

lor.end63:                                        ; preds = %lor.rhs59, %if.end55
  %41 = phi i1 [ true, %if.end55 ], [ %lnot61, %lor.rhs59 ]
  %lor.ext64 = zext i1 %41 to i32, !dbg !3948
  store i32 %lor.ext64, i32* %tmp56, align 4, !dbg !3949
  %42 = load i32, i32* %tmp56, align 4, !dbg !3948
  %tobool65 = icmp ne i32 %42, 0, !dbg !3951
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !3944

if.then66:                                        ; preds = %lor.end63
  br label %for.end, !dbg !3951

if.end67:                                         ; preds = %lor.end63
  %43 = load i64, i64* %__ret40, align 8, !dbg !3944
  %call68 = call i64 @schedule_timeout(i64 %43) #7, !dbg !3944
  store i64 %call68, i64* %__ret40, align 8, !dbg !3944
  br label %for.cond, !dbg !3952, !llvm.loop !3953

for.end:                                          ; preds = %if.then66
  %44 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3924
  %wait69 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %44, i32 0, i32 2, !dbg !3924
  call void @finish_wait(%struct.wait_queue_head* %wait69, %struct.wait_queue_entry* %__wq_entry) #7, !dbg !3924
  br label %__out, !dbg !3924

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !3955), !dbg !3924
  %45 = load i64, i64* %__ret40, align 8, !dbg !3924
  store i64 %45, i64* %tmp70, align 8, !dbg !3924
  %46 = load i64, i64* %tmp70, align 8, !dbg !3924
  store i64 %46, i64* %__ret, align 8, !dbg !3922
  br label %if.end71, !dbg !3922

if.end71:                                         ; preds = %__out, %lor.end
  %47 = load i64, i64* %__ret, align 8, !dbg !3898
  store i64 %47, i64* %tmp72, align 8, !dbg !3922
  %48 = load i64, i64* %tmp72, align 8, !dbg !3898
  %49 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !3956
  call void @ps2_end_command(%struct.ps2dev* %49) #7, !dbg !3957
  ret void, !dbg !3958
}

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout(i64) #2

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @ps2_is_keyboard_id(i8 zeroext %id_byte) #0 !dbg !112 {
entry:
  %id_byte.addr = alloca i8, align 1
  store i8 %id_byte, i8* %id_byte.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %id_byte.addr, metadata !3959, metadata !DIExpression()), !dbg !3960
  %0 = load i8, i8* %id_byte.addr, align 1, !dbg !3961
  %conv = zext i8 %0 to i32, !dbg !3961
  %call = call i8* @memchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ps2_is_keyboard_id.keyboard_ids, i64 0, i64 0), i32 %conv, i64 6) #7, !dbg !3962
  %cmp = icmp ne i8* %call, null, !dbg !3963
  ret i1 %cmp, !dbg !3964
}

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__ps2_command(%struct.ps2dev* %ps2dev, i8* %param, i32 %command) #0 !dbg !3965 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !3633, metadata !DIExpression()), !dbg !3969
  %retval = alloca i32, align 4
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %param.addr = alloca i8*, align 8
  %command.addr = alloca i32, align 4
  %timeout = alloca i32, align 4
  %send = alloca i32, align 4
  %receive = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %send_param = alloca [16 x i8], align 16
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on24 = alloca i32, align 4
  %tmp42 = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp110 = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret118 = alloca i64, align 8
  %__int = alloca i64, align 8
  %__cond122 = alloca i8, align 1
  %tmp135 = alloca i32, align 4
  %tmp150 = alloca i64, align 8
  %tmp152 = alloca i64, align 8
  %__ret163 = alloca i64, align 8
  %__cond169 = alloca i8, align 1
  %tmp182 = alloca i32, align 4
  %__wq_entry193 = alloca %struct.wait_queue_entry, align 8
  %__ret194 = alloca i64, align 8
  %__int197 = alloca i64, align 8
  %__cond200 = alloca i8, align 1
  %tmp213 = alloca i32, align 4
  %tmp229 = alloca i64, align 8
  %tmp231 = alloca i64, align 8
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !3971, metadata !DIExpression()), !dbg !3972
  store i8* %param, i8** %param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %param.addr, metadata !3973, metadata !DIExpression()), !dbg !3974
  store i32 %command, i32* %command.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %command.addr, metadata !3975, metadata !DIExpression()), !dbg !3976
  call void @llvm.dbg.declare(metadata i32* %timeout, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.declare(metadata i32* %send, metadata !3979, metadata !DIExpression()), !dbg !3980
  %0 = load i32, i32* %command.addr, align 4, !dbg !3981
  %shr = lshr i32 %0, 12, !dbg !3982
  %and = and i32 %shr, 15, !dbg !3983
  store i32 %and, i32* %send, align 4, !dbg !3980
  call void @llvm.dbg.declare(metadata i32* %receive, metadata !3984, metadata !DIExpression()), !dbg !3985
  %1 = load i32, i32* %command.addr, align 4, !dbg !3986
  %shr1 = lshr i32 %1, 8, !dbg !3987
  %and2 = and i32 %shr1, 15, !dbg !3988
  store i32 %and2, i32* %receive, align 4, !dbg !3985
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !3989, metadata !DIExpression()), !dbg !3990
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3991, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.declare(metadata [16 x i8]* %send_param, metadata !3993, metadata !DIExpression()), !dbg !3995
  %2 = load i32, i32* %receive, align 4, !dbg !3996
  %conv = zext i32 %2 to i64, !dbg !3996
  %cmp = icmp ugt i64 %conv, 8, !dbg !3998
  br i1 %cmp, label %if.then, label %if.end20, !dbg !3999

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4000, metadata !DIExpression()), !dbg !4003
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4003
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !4004
  %tobool = icmp ne i32 %3, 0, !dbg !4004
  %lnot = xor i1 %tobool, true, !dbg !4004
  %lnot4 = xor i1 %lnot, true, !dbg !4004
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4004
  %conv5 = sext i32 %lnot.ext to i64, !dbg !4004
  %tobool6 = icmp ne i64 %conv5, 0, !dbg !4004
  br i1 %tobool6, label %if.then7, label %if.end, !dbg !4003

if.then7:                                         ; preds = %if.then
  br label %do.body, !dbg !4004

do.body:                                          ; preds = %if.then7
  br label %do.body8, !dbg !4006

do.body8:                                         ; preds = %do.body
  br label %do.end, !dbg !4008

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !4006

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 236, i32 2305, i64 12) #5, !dbg !4010, !srcloc !4012
  br label %do.end10, !dbg !4010

do.end10:                                         ; preds = %do.body9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 207) #5, !dbg !4013, !srcloc !4015
  br label %do.body11, !dbg !4006

do.body11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4016

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !4006

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !4006

if.end:                                           ; preds = %do.end13, %if.then
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4003
  %tobool14 = icmp ne i32 %4, 0, !dbg !4003
  %lnot15 = xor i1 %tobool14, true, !dbg !4003
  %lnot17 = xor i1 %lnot15, true, !dbg !4003
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4003
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !4003
  store i64 %conv19, i64* %tmp, align 8, !dbg !4004
  %5 = load i64, i64* %tmp, align 8, !dbg !4003
  store i32 -22, i32* %retval, align 4, !dbg !4018
  br label %return, !dbg !4018

if.end20:                                         ; preds = %entry
  %6 = load i32, i32* %send, align 4, !dbg !4019
  %tobool21 = icmp ne i32 %6, 0, !dbg !4019
  br i1 %tobool21, label %land.lhs.true, label %if.end49, !dbg !4021

land.lhs.true:                                    ; preds = %if.end20
  %7 = load i8*, i8** %param.addr, align 8, !dbg !4022
  %tobool22 = icmp ne i8* %7, null, !dbg !4022
  br i1 %tobool22, label %if.end49, label %if.then23, !dbg !4023

if.then23:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on24, metadata !4024, metadata !DIExpression()), !dbg !4027
  store i32 1, i32* %__ret_warn_on24, align 4, !dbg !4027
  %8 = load i32, i32* %__ret_warn_on24, align 4, !dbg !4028
  %tobool25 = icmp ne i32 %8, 0, !dbg !4028
  %lnot26 = xor i1 %tobool25, true, !dbg !4028
  %lnot28 = xor i1 %lnot26, true, !dbg !4028
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !4028
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !4028
  %tobool31 = icmp ne i64 %conv30, 0, !dbg !4028
  br i1 %tobool31, label %if.then32, label %if.end41, !dbg !4027

if.then32:                                        ; preds = %if.then23
  br label %do.body33, !dbg !4028

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !4030

do.body34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !4032

do.end35:                                         ; preds = %do.body34
  br label %do.body36, !dbg !4030

do.body36:                                        ; preds = %do.end35
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 241, i32 2305, i64 12) #5, !dbg !4034, !srcloc !4036
  br label %do.end37, !dbg !4034

do.end37:                                         ; preds = %do.body36
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 208) #5, !dbg !4037, !srcloc !4039
  br label %do.body38, !dbg !4030

do.body38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !4040

do.end39:                                         ; preds = %do.body38
  br label %do.end40, !dbg !4030

do.end40:                                         ; preds = %do.end39
  br label %if.end41, !dbg !4030

if.end41:                                         ; preds = %do.end40, %if.then23
  %9 = load i32, i32* %__ret_warn_on24, align 4, !dbg !4027
  %tobool43 = icmp ne i32 %9, 0, !dbg !4027
  %lnot44 = xor i1 %tobool43, true, !dbg !4027
  %lnot46 = xor i1 %lnot44, true, !dbg !4027
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !4027
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !4027
  store i64 %conv48, i64* %tmp42, align 8, !dbg !4028
  %10 = load i64, i64* %tmp42, align 8, !dbg !4027
  store i32 -22, i32* %retval, align 4, !dbg !4042
  br label %return, !dbg !4042

if.end49:                                         ; preds = %land.lhs.true, %if.end20
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %send_param, i64 0, i64 0, !dbg !4043
  %11 = load i8*, i8** %param.addr, align 8, !dbg !4044
  %12 = load i32, i32* %send, align 4, !dbg !4045
  %conv50 = zext i32 %12 to i64, !dbg !4045
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %arraydecay, i8* align 1 %11, i64 %conv50, i1 false), !dbg !4043
  %13 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4046
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %13, i32 0, i32 0, !dbg !4047
  %14 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4047
  call void @serio_pause_rx(%struct.serio* %14) #7, !dbg !4048
  %15 = load i32, i32* %command.addr, align 4, !dbg !4049
  %cmp51 = icmp eq i32 %15, 754, !dbg !4050
  %16 = zext i1 %cmp51 to i64, !dbg !4049
  %cond = select i1 %cmp51, i64 8, i64 0, !dbg !4049
  %17 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4051
  %flags = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %17, i32 0, i32 3, !dbg !4052
  store i64 %cond, i64* %flags, align 8, !dbg !4053
  %18 = load i32, i32* %receive, align 4, !dbg !4054
  %conv53 = trunc i32 %18 to i8, !dbg !4054
  %19 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4055
  %cmdcnt = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %19, i32 0, i32 5, !dbg !4056
  store i8 %conv53, i8* %cmdcnt, align 8, !dbg !4057
  %20 = load i32, i32* %receive, align 4, !dbg !4058
  %tobool54 = icmp ne i32 %20, 0, !dbg !4058
  br i1 %tobool54, label %land.lhs.true55, label %if.end63, !dbg !4060

land.lhs.true55:                                  ; preds = %if.end49
  %21 = load i8*, i8** %param.addr, align 8, !dbg !4061
  %tobool56 = icmp ne i8* %21, null, !dbg !4061
  br i1 %tobool56, label %if.then57, label %if.end63, !dbg !4062

if.then57:                                        ; preds = %land.lhs.true55
  store i32 0, i32* %i, align 4, !dbg !4063
  br label %for.cond, !dbg !4065

for.cond:                                         ; preds = %for.inc, %if.then57
  %22 = load i32, i32* %i, align 4, !dbg !4066
  %23 = load i32, i32* %receive, align 4, !dbg !4068
  %cmp58 = icmp ult i32 %22, %23, !dbg !4069
  br i1 %cmp58, label %for.body, label %for.end, !dbg !4070

for.body:                                         ; preds = %for.cond
  %24 = load i8*, i8** %param.addr, align 8, !dbg !4071
  %25 = load i32, i32* %i, align 4, !dbg !4072
  %idxprom = sext i32 %25 to i64, !dbg !4071
  %arrayidx = getelementptr i8, i8* %24, i64 %idxprom, !dbg !4071
  %26 = load i8, i8* %arrayidx, align 1, !dbg !4071
  %27 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4073
  %cmdbuf = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %27, i32 0, i32 4, !dbg !4074
  %28 = load i32, i32* %receive, align 4, !dbg !4075
  %sub = sub i32 %28, 1, !dbg !4076
  %29 = load i32, i32* %i, align 4, !dbg !4077
  %sub60 = sub i32 %sub, %29, !dbg !4078
  %idxprom61 = zext i32 %sub60 to i64, !dbg !4073
  %arrayidx62 = getelementptr [8 x i8], [8 x i8]* %cmdbuf, i64 0, i64 %idxprom61, !dbg !4073
  store i8 %26, i8* %arrayidx62, align 1, !dbg !4079
  br label %for.inc, !dbg !4073

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4, !dbg !4080
  %inc = add i32 %30, 1, !dbg !4080
  store i32 %inc, i32* %i, align 4, !dbg !4080
  br label %for.cond, !dbg !4081, !llvm.loop !4082

for.end:                                          ; preds = %for.cond
  br label %if.end63, !dbg !4083

if.end63:                                         ; preds = %for.end, %land.lhs.true55, %if.end49
  %31 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4084
  %flags64 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %31, i32 0, i32 3, !dbg !4085
  %32 = load i64, i64* %flags64, align 8, !dbg !4086
  %or = or i64 %32, 32, !dbg !4086
  store i64 %or, i64* %flags64, align 8, !dbg !4086
  %33 = load i32, i32* %command.addr, align 4, !dbg !4087
  %cmp65 = icmp eq i32 %33, 767, !dbg !4088
  %34 = zext i1 %cmp65 to i64, !dbg !4087
  %cond67 = select i1 %cmp65, i32 1000, i32 200, !dbg !4087
  store i32 %cond67, i32* %timeout, align 4, !dbg !4089
  %35 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4090
  %36 = load i32, i32* %command.addr, align 4, !dbg !4091
  %and68 = and i32 %36, 255, !dbg !4092
  %conv69 = trunc i32 %and68 to i8, !dbg !4091
  %37 = load i32, i32* %timeout, align 4, !dbg !4093
  %call = call i32 @ps2_do_sendbyte(%struct.ps2dev* %35, i8 zeroext %conv69, i32 %37, i32 2) #7, !dbg !4094
  store i32 %call, i32* %rc, align 4, !dbg !4095
  %38 = load i32, i32* %rc, align 4, !dbg !4096
  %tobool70 = icmp ne i32 %38, 0, !dbg !4096
  br i1 %tobool70, label %if.then71, label %if.end72, !dbg !4098

if.then71:                                        ; preds = %if.end63
  br label %out_reset_flags, !dbg !4099

if.end72:                                         ; preds = %if.end63
  %39 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4100
  %flags73 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %39, i32 0, i32 3, !dbg !4101
  %40 = load i64, i64* %flags73, align 8, !dbg !4102
  %and74 = and i64 %40, -33, !dbg !4102
  store i64 %and74, i64* %flags73, align 8, !dbg !4102
  store i32 0, i32* %i, align 4, !dbg !4103
  br label %for.cond75, !dbg !4105

for.cond75:                                       ; preds = %for.inc85, %if.end72
  %41 = load i32, i32* %i, align 4, !dbg !4106
  %42 = load i32, i32* %send, align 4, !dbg !4108
  %cmp76 = icmp ult i32 %41, %42, !dbg !4109
  br i1 %cmp76, label %for.body78, label %for.end87, !dbg !4110

for.body78:                                       ; preds = %for.cond75
  %43 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4111
  %44 = load i8*, i8** %param.addr, align 8, !dbg !4113
  %45 = load i32, i32* %i, align 4, !dbg !4114
  %idxprom79 = sext i32 %45 to i64, !dbg !4113
  %arrayidx80 = getelementptr i8, i8* %44, i64 %idxprom79, !dbg !4113
  %46 = load i8, i8* %arrayidx80, align 1, !dbg !4113
  %call81 = call i32 @ps2_do_sendbyte(%struct.ps2dev* %43, i8 zeroext %46, i32 200, i32 2) #7, !dbg !4115
  store i32 %call81, i32* %rc, align 4, !dbg !4116
  %47 = load i32, i32* %rc, align 4, !dbg !4117
  %tobool82 = icmp ne i32 %47, 0, !dbg !4117
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !4119

if.then83:                                        ; preds = %for.body78
  br label %out_reset_flags, !dbg !4120

if.end84:                                         ; preds = %for.body78
  br label %for.inc85, !dbg !4121

for.inc85:                                        ; preds = %if.end84
  %48 = load i32, i32* %i, align 4, !dbg !4122
  %inc86 = add i32 %48, 1, !dbg !4122
  store i32 %inc86, i32* %i, align 4, !dbg !4122
  br label %for.cond75, !dbg !4123, !llvm.loop !4124

for.end87:                                        ; preds = %for.cond75
  %49 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4126
  %serio88 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %49, i32 0, i32 0, !dbg !4127
  %50 = load %struct.serio*, %struct.serio** %serio88, align 8, !dbg !4127
  call void @serio_continue_rx(%struct.serio* %50) #7, !dbg !4128
  %51 = load i32, i32* %command.addr, align 4, !dbg !4129
  %cmp89 = icmp eq i32 %51, 767, !dbg !4130
  %52 = zext i1 %cmp89 to i64, !dbg !4129
  %cond91 = select i1 %cmp89, i32 4000, i32 500, !dbg !4129
  store i32 %cond91, i32* %m.addr.i, align 4
  %53 = load i32, i32* %m.addr.i, align 4, !dbg !4131
  %54 = call i1 @llvm.is.constant.i32(i32 %53) #5, !dbg !4132
  br i1 %54, label %if.then.i, label %if.else.i, !dbg !4133

if.then.i:                                        ; preds = %for.end87
  %55 = load i32, i32* %m.addr.i, align 4, !dbg !4134
  %cmp.i = icmp slt i32 %55, 0, !dbg !4135
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4136

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4137
  br label %msecs_to_jiffies.exit, !dbg !4137

if.end.i:                                         ; preds = %if.then.i
  %56 = load i32, i32* %m.addr.i, align 4, !dbg !4138
  %call.i = call i64 @_msecs_to_jiffies(i32 %56) #8, !dbg !4139
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4140
  br label %msecs_to_jiffies.exit, !dbg !4140

if.else.i:                                        ; preds = %for.end87
  %57 = load i32, i32* %m.addr.i, align 4, !dbg !4141
  %call2.i = call i64 @__msecs_to_jiffies(i32 %57) #8, !dbg !4142
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4143
  br label %msecs_to_jiffies.exit, !dbg !4143

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %58 = load i64, i64* %retval.i, align 8, !dbg !4144
  %conv93 = trunc i64 %58 to i32, !dbg !4145
  store i32 %conv93, i32* %timeout, align 4, !dbg !4146
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !4147, metadata !DIExpression()), !dbg !4149
  %59 = load i32, i32* %timeout, align 4, !dbg !4149
  %conv94 = zext i32 %59 to i64, !dbg !4149
  store i64 %conv94, i64* %__ret, align 8, !dbg !4149
  br label %do.body95, !dbg !4149

do.body95:                                        ; preds = %msecs_to_jiffies.exit
  br label %do.body96, !dbg !4150

do.body96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !4152

do.end97:                                         ; preds = %do.body96
  br label %do.end98, !dbg !4150

do.end98:                                         ; preds = %do.end97
  call void @llvm.dbg.declare(metadata i8* %__cond, metadata !4154, metadata !DIExpression()), !dbg !4157
  %60 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4157
  %flags99 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %60, i32 0, i32 3, !dbg !4157
  %61 = load i64, i64* %flags99, align 8, !dbg !4157
  %and100 = and i64 %61, 4, !dbg !4157
  %tobool101 = icmp ne i64 %and100, 0, !dbg !4157
  %lnot102 = xor i1 %tobool101, true, !dbg !4157
  %frombool = zext i1 %lnot102 to i8, !dbg !4157
  store i8 %frombool, i8* %__cond, align 1, !dbg !4157
  %62 = load i8, i8* %__cond, align 1, !dbg !4158
  %tobool104 = trunc i8 %62 to i1, !dbg !4158
  br i1 %tobool104, label %land.lhs.true106, label %if.end109, !dbg !4158

land.lhs.true106:                                 ; preds = %do.end98
  %63 = load i64, i64* %__ret, align 8, !dbg !4158
  %tobool107 = icmp ne i64 %63, 0, !dbg !4158
  br i1 %tobool107, label %if.end109, label %if.then108, !dbg !4157

if.then108:                                       ; preds = %land.lhs.true106
  store i64 1, i64* %__ret, align 8, !dbg !4158
  br label %if.end109, !dbg !4158

if.end109:                                        ; preds = %if.then108, %land.lhs.true106, %do.end98
  %64 = load i8, i8* %__cond, align 1, !dbg !4157
  %tobool111 = trunc i8 %64 to i1, !dbg !4157
  br i1 %tobool111, label %lor.end, label %lor.rhs, !dbg !4157

lor.rhs:                                          ; preds = %if.end109
  %65 = load i64, i64* %__ret, align 8, !dbg !4157
  %tobool113 = icmp ne i64 %65, 0, !dbg !4157
  %lnot114 = xor i1 %tobool113, true, !dbg !4157
  br label %lor.end, !dbg !4157

lor.end:                                          ; preds = %lor.rhs, %if.end109
  %66 = phi i1 [ true, %if.end109 ], [ %lnot114, %lor.rhs ]
  %lor.ext = zext i1 %66 to i32, !dbg !4157
  store i32 %lor.ext, i32* %tmp110, align 4, !dbg !4158
  %67 = load i32, i32* %tmp110, align 4, !dbg !4157
  %tobool116 = icmp ne i32 %67, 0, !dbg !4160
  br i1 %tobool116, label %if.end151, label %if.then117, !dbg !4149

if.then117:                                       ; preds = %lor.end
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4161, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.declare(metadata i64* %__ret118, metadata !4164, metadata !DIExpression()), !dbg !4163
  %68 = load i32, i32* %timeout, align 4, !dbg !4163
  %conv119 = zext i32 %68 to i64, !dbg !4163
  store i64 %conv119, i64* %__ret118, align 8, !dbg !4163
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #7, !dbg !4163
  br label %for.cond120, !dbg !4163

for.cond120:                                      ; preds = %if.end146, %if.then117
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4165, metadata !DIExpression()), !dbg !4169
  %69 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4169
  %wait = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %69, i32 0, i32 2, !dbg !4169
  %call121 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %wait, %struct.wait_queue_entry* %__wq_entry, i32 2) #7, !dbg !4169
  store i64 %call121, i64* %__int, align 8, !dbg !4169
  call void @llvm.dbg.declare(metadata i8* %__cond122, metadata !4170, metadata !DIExpression()), !dbg !4173
  %70 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4173
  %flags123 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %70, i32 0, i32 3, !dbg !4173
  %71 = load i64, i64* %flags123, align 8, !dbg !4173
  %and124 = and i64 %71, 4, !dbg !4173
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4173
  %lnot126 = xor i1 %tobool125, true, !dbg !4173
  %frombool128 = zext i1 %lnot126 to i8, !dbg !4173
  store i8 %frombool128, i8* %__cond122, align 1, !dbg !4173
  %72 = load i8, i8* %__cond122, align 1, !dbg !4174
  %tobool129 = trunc i8 %72 to i1, !dbg !4174
  br i1 %tobool129, label %land.lhs.true131, label %if.end134, !dbg !4174

land.lhs.true131:                                 ; preds = %for.cond120
  %73 = load i64, i64* %__ret118, align 8, !dbg !4174
  %tobool132 = icmp ne i64 %73, 0, !dbg !4174
  br i1 %tobool132, label %if.end134, label %if.then133, !dbg !4173

if.then133:                                       ; preds = %land.lhs.true131
  store i64 1, i64* %__ret118, align 8, !dbg !4174
  br label %if.end134, !dbg !4174

if.end134:                                        ; preds = %if.then133, %land.lhs.true131, %for.cond120
  %74 = load i8, i8* %__cond122, align 1, !dbg !4173
  %tobool136 = trunc i8 %74 to i1, !dbg !4173
  br i1 %tobool136, label %lor.end142, label %lor.rhs138, !dbg !4173

lor.rhs138:                                       ; preds = %if.end134
  %75 = load i64, i64* %__ret118, align 8, !dbg !4173
  %tobool139 = icmp ne i64 %75, 0, !dbg !4173
  %lnot140 = xor i1 %tobool139, true, !dbg !4173
  br label %lor.end142, !dbg !4173

lor.end142:                                       ; preds = %lor.rhs138, %if.end134
  %76 = phi i1 [ true, %if.end134 ], [ %lnot140, %lor.rhs138 ]
  %lor.ext143 = zext i1 %76 to i32, !dbg !4173
  store i32 %lor.ext143, i32* %tmp135, align 4, !dbg !4174
  %77 = load i32, i32* %tmp135, align 4, !dbg !4173
  %tobool144 = icmp ne i32 %77, 0, !dbg !4176
  br i1 %tobool144, label %if.then145, label %if.end146, !dbg !4169

if.then145:                                       ; preds = %lor.end142
  br label %for.end148, !dbg !4176

if.end146:                                        ; preds = %lor.end142
  %78 = load i64, i64* %__ret118, align 8, !dbg !4169
  %call147 = call i64 @schedule_timeout(i64 %78) #7, !dbg !4169
  store i64 %call147, i64* %__ret118, align 8, !dbg !4169
  br label %for.cond120, !dbg !4177, !llvm.loop !4178

for.end148:                                       ; preds = %if.then145
  %79 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4163
  %wait149 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %79, i32 0, i32 2, !dbg !4163
  call void @finish_wait(%struct.wait_queue_head* %wait149, %struct.wait_queue_entry* %__wq_entry) #7, !dbg !4163
  br label %__out, !dbg !4163

__out:                                            ; preds = %for.end148
  call void @llvm.dbg.label(metadata !4180), !dbg !4163
  %80 = load i64, i64* %__ret118, align 8, !dbg !4163
  store i64 %80, i64* %tmp150, align 8, !dbg !4163
  %81 = load i64, i64* %tmp150, align 8, !dbg !4163
  store i64 %81, i64* %__ret, align 8, !dbg !4160
  br label %if.end151, !dbg !4160

if.end151:                                        ; preds = %__out, %lor.end
  %82 = load i64, i64* %__ret, align 8, !dbg !4149
  store i64 %82, i64* %tmp152, align 8, !dbg !4160
  %83 = load i64, i64* %tmp152, align 8, !dbg !4149
  %conv153 = trunc i64 %83 to i32, !dbg !4181
  store i32 %conv153, i32* %timeout, align 4, !dbg !4182
  %84 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4183
  %cmdcnt154 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %84, i32 0, i32 5, !dbg !4185
  %85 = load i8, i8* %cmdcnt154, align 8, !dbg !4185
  %conv155 = zext i8 %85 to i32, !dbg !4183
  %tobool156 = icmp ne i32 %conv155, 0, !dbg !4183
  br i1 %tobool156, label %land.lhs.true157, label %if.end232, !dbg !4186

land.lhs.true157:                                 ; preds = %if.end151
  %86 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4187
  %flags158 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %86, i32 0, i32 3, !dbg !4188
  %87 = load i64, i64* %flags158, align 8, !dbg !4188
  %and159 = and i64 %87, 4, !dbg !4189
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4189
  br i1 %tobool160, label %if.end232, label %if.then161, !dbg !4190

if.then161:                                       ; preds = %land.lhs.true157
  %88 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4191
  %89 = load i32, i32* %command.addr, align 4, !dbg !4193
  %90 = load i32, i32* %timeout, align 4, !dbg !4194
  %call162 = call i32 @ps2_adjust_timeout(%struct.ps2dev* %88, i32 %89, i32 %90) #7, !dbg !4195
  store i32 %call162, i32* %timeout, align 4, !dbg !4196
  call void @llvm.dbg.declare(metadata i64* %__ret163, metadata !4197, metadata !DIExpression()), !dbg !4199
  %91 = load i32, i32* %timeout, align 4, !dbg !4199
  %conv164 = zext i32 %91 to i64, !dbg !4199
  store i64 %conv164, i64* %__ret163, align 8, !dbg !4199
  br label %do.body165, !dbg !4199

do.body165:                                       ; preds = %if.then161
  br label %do.body166, !dbg !4200

do.body166:                                       ; preds = %do.body165
  br label %do.end167, !dbg !4202

do.end167:                                        ; preds = %do.body166
  br label %do.end168, !dbg !4200

do.end168:                                        ; preds = %do.end167
  call void @llvm.dbg.declare(metadata i8* %__cond169, metadata !4204, metadata !DIExpression()), !dbg !4207
  %92 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4207
  %flags170 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %92, i32 0, i32 3, !dbg !4207
  %93 = load i64, i64* %flags170, align 8, !dbg !4207
  %and171 = and i64 %93, 2, !dbg !4207
  %tobool172 = icmp ne i64 %and171, 0, !dbg !4207
  %lnot173 = xor i1 %tobool172, true, !dbg !4207
  %frombool175 = zext i1 %lnot173 to i8, !dbg !4207
  store i8 %frombool175, i8* %__cond169, align 1, !dbg !4207
  %94 = load i8, i8* %__cond169, align 1, !dbg !4208
  %tobool176 = trunc i8 %94 to i1, !dbg !4208
  br i1 %tobool176, label %land.lhs.true178, label %if.end181, !dbg !4208

land.lhs.true178:                                 ; preds = %do.end168
  %95 = load i64, i64* %__ret163, align 8, !dbg !4208
  %tobool179 = icmp ne i64 %95, 0, !dbg !4208
  br i1 %tobool179, label %if.end181, label %if.then180, !dbg !4207

if.then180:                                       ; preds = %land.lhs.true178
  store i64 1, i64* %__ret163, align 8, !dbg !4208
  br label %if.end181, !dbg !4208

if.end181:                                        ; preds = %if.then180, %land.lhs.true178, %do.end168
  %96 = load i8, i8* %__cond169, align 1, !dbg !4207
  %tobool183 = trunc i8 %96 to i1, !dbg !4207
  br i1 %tobool183, label %lor.end189, label %lor.rhs185, !dbg !4207

lor.rhs185:                                       ; preds = %if.end181
  %97 = load i64, i64* %__ret163, align 8, !dbg !4207
  %tobool186 = icmp ne i64 %97, 0, !dbg !4207
  %lnot187 = xor i1 %tobool186, true, !dbg !4207
  br label %lor.end189, !dbg !4207

lor.end189:                                       ; preds = %lor.rhs185, %if.end181
  %98 = phi i1 [ true, %if.end181 ], [ %lnot187, %lor.rhs185 ]
  %lor.ext190 = zext i1 %98 to i32, !dbg !4207
  store i32 %lor.ext190, i32* %tmp182, align 4, !dbg !4208
  %99 = load i32, i32* %tmp182, align 4, !dbg !4207
  %tobool191 = icmp ne i32 %99, 0, !dbg !4210
  br i1 %tobool191, label %if.end230, label %if.then192, !dbg !4199

if.then192:                                       ; preds = %lor.end189
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry193, metadata !4211, metadata !DIExpression()), !dbg !4213
  call void @llvm.dbg.declare(metadata i64* %__ret194, metadata !4214, metadata !DIExpression()), !dbg !4213
  %100 = load i32, i32* %timeout, align 4, !dbg !4213
  %conv195 = zext i32 %100 to i64, !dbg !4213
  store i64 %conv195, i64* %__ret194, align 8, !dbg !4213
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry193, i32 0) #7, !dbg !4213
  br label %for.cond196, !dbg !4213

for.cond196:                                      ; preds = %if.end224, %if.then192
  call void @llvm.dbg.declare(metadata i64* %__int197, metadata !4215, metadata !DIExpression()), !dbg !4219
  %101 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4219
  %wait198 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %101, i32 0, i32 2, !dbg !4219
  %call199 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %wait198, %struct.wait_queue_entry* %__wq_entry193, i32 2) #7, !dbg !4219
  store i64 %call199, i64* %__int197, align 8, !dbg !4219
  call void @llvm.dbg.declare(metadata i8* %__cond200, metadata !4220, metadata !DIExpression()), !dbg !4223
  %102 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4223
  %flags201 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %102, i32 0, i32 3, !dbg !4223
  %103 = load i64, i64* %flags201, align 8, !dbg !4223
  %and202 = and i64 %103, 2, !dbg !4223
  %tobool203 = icmp ne i64 %and202, 0, !dbg !4223
  %lnot204 = xor i1 %tobool203, true, !dbg !4223
  %frombool206 = zext i1 %lnot204 to i8, !dbg !4223
  store i8 %frombool206, i8* %__cond200, align 1, !dbg !4223
  %104 = load i8, i8* %__cond200, align 1, !dbg !4224
  %tobool207 = trunc i8 %104 to i1, !dbg !4224
  br i1 %tobool207, label %land.lhs.true209, label %if.end212, !dbg !4224

land.lhs.true209:                                 ; preds = %for.cond196
  %105 = load i64, i64* %__ret194, align 8, !dbg !4224
  %tobool210 = icmp ne i64 %105, 0, !dbg !4224
  br i1 %tobool210, label %if.end212, label %if.then211, !dbg !4223

if.then211:                                       ; preds = %land.lhs.true209
  store i64 1, i64* %__ret194, align 8, !dbg !4224
  br label %if.end212, !dbg !4224

if.end212:                                        ; preds = %if.then211, %land.lhs.true209, %for.cond196
  %106 = load i8, i8* %__cond200, align 1, !dbg !4223
  %tobool214 = trunc i8 %106 to i1, !dbg !4223
  br i1 %tobool214, label %lor.end220, label %lor.rhs216, !dbg !4223

lor.rhs216:                                       ; preds = %if.end212
  %107 = load i64, i64* %__ret194, align 8, !dbg !4223
  %tobool217 = icmp ne i64 %107, 0, !dbg !4223
  %lnot218 = xor i1 %tobool217, true, !dbg !4223
  br label %lor.end220, !dbg !4223

lor.end220:                                       ; preds = %lor.rhs216, %if.end212
  %108 = phi i1 [ true, %if.end212 ], [ %lnot218, %lor.rhs216 ]
  %lor.ext221 = zext i1 %108 to i32, !dbg !4223
  store i32 %lor.ext221, i32* %tmp213, align 4, !dbg !4224
  %109 = load i32, i32* %tmp213, align 4, !dbg !4223
  %tobool222 = icmp ne i32 %109, 0, !dbg !4226
  br i1 %tobool222, label %if.then223, label %if.end224, !dbg !4219

if.then223:                                       ; preds = %lor.end220
  br label %for.end226, !dbg !4226

if.end224:                                        ; preds = %lor.end220
  %110 = load i64, i64* %__ret194, align 8, !dbg !4219
  %call225 = call i64 @schedule_timeout(i64 %110) #7, !dbg !4219
  store i64 %call225, i64* %__ret194, align 8, !dbg !4219
  br label %for.cond196, !dbg !4227, !llvm.loop !4228

for.end226:                                       ; preds = %if.then223
  %111 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4213
  %wait227 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %111, i32 0, i32 2, !dbg !4213
  call void @finish_wait(%struct.wait_queue_head* %wait227, %struct.wait_queue_entry* %__wq_entry193) #7, !dbg !4213
  br label %__out228, !dbg !4213

__out228:                                         ; preds = %for.end226
  call void @llvm.dbg.label(metadata !4230), !dbg !4213
  %112 = load i64, i64* %__ret194, align 8, !dbg !4213
  store i64 %112, i64* %tmp229, align 8, !dbg !4213
  %113 = load i64, i64* %tmp229, align 8, !dbg !4213
  store i64 %113, i64* %__ret163, align 8, !dbg !4210
  br label %if.end230, !dbg !4210

if.end230:                                        ; preds = %__out228, %lor.end189
  %114 = load i64, i64* %__ret163, align 8, !dbg !4199
  store i64 %114, i64* %tmp231, align 8, !dbg !4210
  %115 = load i64, i64* %tmp231, align 8, !dbg !4199
  br label %if.end232, !dbg !4231

if.end232:                                        ; preds = %if.end230, %land.lhs.true157, %if.end151
  %116 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4232
  %serio233 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %116, i32 0, i32 0, !dbg !4233
  %117 = load %struct.serio*, %struct.serio** %serio233, align 8, !dbg !4233
  call void @serio_pause_rx(%struct.serio* %117) #7, !dbg !4234
  %118 = load i8*, i8** %param.addr, align 8, !dbg !4235
  %tobool234 = icmp ne i8* %118, null, !dbg !4235
  br i1 %tobool234, label %if.then235, label %if.end250, !dbg !4237

if.then235:                                       ; preds = %if.end232
  store i32 0, i32* %i, align 4, !dbg !4238
  br label %for.cond236, !dbg !4240

for.cond236:                                      ; preds = %for.inc247, %if.then235
  %119 = load i32, i32* %i, align 4, !dbg !4241
  %120 = load i32, i32* %receive, align 4, !dbg !4243
  %cmp237 = icmp ult i32 %119, %120, !dbg !4244
  br i1 %cmp237, label %for.body239, label %for.end249, !dbg !4245

for.body239:                                      ; preds = %for.cond236
  %121 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4246
  %cmdbuf240 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %121, i32 0, i32 4, !dbg !4247
  %122 = load i32, i32* %receive, align 4, !dbg !4248
  %sub241 = sub i32 %122, 1, !dbg !4249
  %123 = load i32, i32* %i, align 4, !dbg !4250
  %sub242 = sub i32 %sub241, %123, !dbg !4251
  %idxprom243 = zext i32 %sub242 to i64, !dbg !4246
  %arrayidx244 = getelementptr [8 x i8], [8 x i8]* %cmdbuf240, i64 0, i64 %idxprom243, !dbg !4246
  %124 = load i8, i8* %arrayidx244, align 1, !dbg !4246
  %125 = load i8*, i8** %param.addr, align 8, !dbg !4252
  %126 = load i32, i32* %i, align 4, !dbg !4253
  %idxprom245 = sext i32 %126 to i64, !dbg !4252
  %arrayidx246 = getelementptr i8, i8* %125, i64 %idxprom245, !dbg !4252
  store i8 %124, i8* %arrayidx246, align 1, !dbg !4254
  br label %for.inc247, !dbg !4252

for.inc247:                                       ; preds = %for.body239
  %127 = load i32, i32* %i, align 4, !dbg !4255
  %inc248 = add i32 %127, 1, !dbg !4255
  store i32 %inc248, i32* %i, align 4, !dbg !4255
  br label %for.cond236, !dbg !4256, !llvm.loop !4257

for.end249:                                       ; preds = %for.cond236
  br label %if.end250, !dbg !4258

if.end250:                                        ; preds = %for.end249, %if.end232
  %128 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4259
  %cmdcnt251 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %128, i32 0, i32 5, !dbg !4261
  %129 = load i8, i8* %cmdcnt251, align 8, !dbg !4261
  %conv252 = zext i8 %129 to i32, !dbg !4259
  %tobool253 = icmp ne i32 %conv252, 0, !dbg !4259
  br i1 %tobool253, label %land.lhs.true254, label %if.end262, !dbg !4262

land.lhs.true254:                                 ; preds = %if.end250
  %130 = load i32, i32* %command.addr, align 4, !dbg !4263
  %cmp255 = icmp ne i32 %130, 767, !dbg !4264
  br i1 %cmp255, label %if.then261, label %lor.lhs.false, !dbg !4265

lor.lhs.false:                                    ; preds = %land.lhs.true254
  %131 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4266
  %cmdcnt257 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %131, i32 0, i32 5, !dbg !4267
  %132 = load i8, i8* %cmdcnt257, align 8, !dbg !4267
  %conv258 = zext i8 %132 to i32, !dbg !4266
  %cmp259 = icmp ne i32 %conv258, 1, !dbg !4268
  br i1 %cmp259, label %if.then261, label %if.end262, !dbg !4269

if.then261:                                       ; preds = %lor.lhs.false, %land.lhs.true254
  store i32 -71, i32* %rc, align 4, !dbg !4270
  br label %out_reset_flags, !dbg !4272

if.end262:                                        ; preds = %lor.lhs.false, %if.end250
  store i32 0, i32* %rc, align 4, !dbg !4273
  br label %out_reset_flags, !dbg !4274

out_reset_flags:                                  ; preds = %if.end262, %if.then261, %if.then83, %if.then71
  call void @llvm.dbg.label(metadata !4275), !dbg !4276
  %133 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4277
  %flags263 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %133, i32 0, i32 3, !dbg !4278
  store i64 0, i64* %flags263, align 8, !dbg !4279
  %134 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4280
  %serio264 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %134, i32 0, i32 0, !dbg !4281
  %135 = load %struct.serio*, %struct.serio** %serio264, align 8, !dbg !4281
  call void @serio_continue_rx(%struct.serio* %135) #7, !dbg !4282
  %136 = load i32, i32* %rc, align 4, !dbg !4283
  %cmp265 = icmp ne i32 %136, -11, !dbg !4284
  br i1 %cmp265, label %cond.true, label %cond.false, !dbg !4283

cond.true:                                        ; preds = %out_reset_flags
  %137 = load i32, i32* %rc, align 4, !dbg !4285
  br label %cond.end, !dbg !4283

cond.false:                                       ; preds = %out_reset_flags
  br label %cond.end, !dbg !4283

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond267 = phi i32 [ %137, %cond.true ], [ -71, %cond.false ], !dbg !4283
  store i32 %cond267, i32* %retval, align 4, !dbg !4286
  br label %return, !dbg !4286

return:                                           ; preds = %cond.end, %if.end41, %if.end
  %138 = load i32, i32* %retval, align 4, !dbg !4287
  ret i32 %138, !dbg !4287
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ps2_adjust_timeout(%struct.ps2dev* %ps2dev, i32 %command, i32 %timeout) #0 !dbg !4288 {
entry:
  %retval.i19 = alloca i64, align 8
  %m.addr.i20 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i20, metadata !3633, metadata !DIExpression()), !dbg !4291
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !3633, metadata !DIExpression()), !dbg !4295
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %command.addr = alloca i32, align 4
  %timeout.addr = alloca i32, align 4
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !4297, metadata !DIExpression()), !dbg !4298
  store i32 %command, i32* %command.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %command.addr, metadata !4299, metadata !DIExpression()), !dbg !4300
  store i32 %timeout, i32* %timeout.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %timeout.addr, metadata !4301, metadata !DIExpression()), !dbg !4302
  %0 = load i32, i32* %command.addr, align 4, !dbg !4303
  switch i32 %0, label %sw.default [
    i32 767, label %sw.bb
    i32 754, label %sw.bb4
  ], !dbg !4304

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %timeout.addr, align 4, !dbg !4305
  %conv = zext i32 %1 to i64, !dbg !4305
  store i32 100, i32* %m.addr.i, align 4
  %2 = load i32, i32* %m.addr.i, align 4, !dbg !4306
  %3 = call i1 @llvm.is.constant.i32(i32 %2) #5, !dbg !4307
  br i1 %3, label %if.then.i, label %if.else.i, !dbg !4308

if.then.i:                                        ; preds = %sw.bb
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !4309
  %cmp.i = icmp slt i32 %4, 0, !dbg !4310
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4311

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !4312
  br label %msecs_to_jiffies.exit, !dbg !4312

if.end.i:                                         ; preds = %if.then.i
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !4313
  %call.i = call i64 @_msecs_to_jiffies(i32 %5) #8, !dbg !4314
  store i64 %call.i, i64* %retval.i, align 8, !dbg !4315
  br label %msecs_to_jiffies.exit, !dbg !4315

if.else.i:                                        ; preds = %sw.bb
  %6 = load i32, i32* %m.addr.i, align 4, !dbg !4316
  %call2.i = call i64 @__msecs_to_jiffies(i32 %6) #8, !dbg !4317
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !4318
  br label %msecs_to_jiffies.exit, !dbg !4318

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %7 = load i64, i64* %retval.i, align 8, !dbg !4319
  %cmp = icmp ugt i64 %conv, %7, !dbg !4320
  br i1 %cmp, label %if.then, label %if.end, !dbg !4321

if.then:                                          ; preds = %msecs_to_jiffies.exit
  store i32 100, i32* %m.addr.i20, align 4
  %8 = load i32, i32* %m.addr.i20, align 4, !dbg !4322
  %9 = call i1 @llvm.is.constant.i32(i32 %8) #5, !dbg !4323
  br i1 %9, label %if.then.i22, label %if.else.i27, !dbg !4324

if.then.i22:                                      ; preds = %if.then
  %10 = load i32, i32* %m.addr.i20, align 4, !dbg !4325
  %cmp.i21 = icmp slt i32 %10, 0, !dbg !4326
  br i1 %cmp.i21, label %if.then1.i23, label %if.end.i25, !dbg !4327

if.then1.i23:                                     ; preds = %if.then.i22
  store i64 4611686018427387902, i64* %retval.i19, align 8, !dbg !4328
  br label %msecs_to_jiffies.exit28, !dbg !4328

if.end.i25:                                       ; preds = %if.then.i22
  %11 = load i32, i32* %m.addr.i20, align 4, !dbg !4329
  %call.i24 = call i64 @_msecs_to_jiffies(i32 %11) #8, !dbg !4330
  store i64 %call.i24, i64* %retval.i19, align 8, !dbg !4331
  br label %msecs_to_jiffies.exit28, !dbg !4331

if.else.i27:                                      ; preds = %if.then
  %12 = load i32, i32* %m.addr.i20, align 4, !dbg !4332
  %call2.i26 = call i64 @__msecs_to_jiffies(i32 %12) #8, !dbg !4333
  store i64 %call2.i26, i64* %retval.i19, align 8, !dbg !4334
  br label %msecs_to_jiffies.exit28, !dbg !4334

msecs_to_jiffies.exit28:                          ; preds = %if.then1.i23, %if.end.i25, %if.else.i27
  %13 = load i64, i64* %retval.i19, align 8, !dbg !4335
  %conv3 = trunc i64 %13 to i32, !dbg !4336
  store i32 %conv3, i32* %timeout.addr, align 4, !dbg !4337
  br label %if.end, !dbg !4338

if.end:                                           ; preds = %msecs_to_jiffies.exit28, %msecs_to_jiffies.exit
  br label %sw.epilog, !dbg !4339

sw.bb4:                                           ; preds = %entry
  %14 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4340
  %cmdbuf = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %14, i32 0, i32 4, !dbg !4342
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %cmdbuf, i64 0, i64 1, !dbg !4340
  %15 = load i8, i8* %arrayidx, align 1, !dbg !4340
  %conv5 = zext i8 %15 to i32, !dbg !4340
  %cmp6 = icmp eq i32 %conv5, 170, !dbg !4343
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !4344

if.then8:                                         ; preds = %sw.bb4
  %16 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4345
  %serio = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %16, i32 0, i32 0, !dbg !4347
  %17 = load %struct.serio*, %struct.serio** %serio, align 8, !dbg !4347
  call void @serio_pause_rx(%struct.serio* %17) #7, !dbg !4348
  %18 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4349
  %flags = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %18, i32 0, i32 3, !dbg !4350
  store i64 0, i64* %flags, align 8, !dbg !4351
  %19 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4352
  %serio9 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %19, i32 0, i32 0, !dbg !4353
  %20 = load %struct.serio*, %struct.serio** %serio9, align 8, !dbg !4353
  call void @serio_continue_rx(%struct.serio* %20) #7, !dbg !4354
  store i32 0, i32* %timeout.addr, align 4, !dbg !4355
  br label %if.end10, !dbg !4356

if.end10:                                         ; preds = %if.then8, %sw.bb4
  %21 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4357
  %cmdbuf11 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %21, i32 0, i32 4, !dbg !4359
  %arrayidx12 = getelementptr [8 x i8], [8 x i8]* %cmdbuf11, i64 0, i64 1, !dbg !4357
  %22 = load i8, i8* %arrayidx12, align 1, !dbg !4357
  %call13 = call zeroext i1 @ps2_is_keyboard_id(i8 zeroext %22) #7, !dbg !4360
  br i1 %call13, label %if.end18, label %if.then14, !dbg !4361

if.then14:                                        ; preds = %if.end10
  %23 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4362
  %serio15 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %23, i32 0, i32 0, !dbg !4364
  %24 = load %struct.serio*, %struct.serio** %serio15, align 8, !dbg !4364
  call void @serio_pause_rx(%struct.serio* %24) #7, !dbg !4365
  %25 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4366
  %cmdcnt = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %25, i32 0, i32 5, !dbg !4367
  store i8 0, i8* %cmdcnt, align 8, !dbg !4368
  %26 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4369
  %flags16 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %26, i32 0, i32 3, !dbg !4370
  store i64 0, i64* %flags16, align 8, !dbg !4371
  %27 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4372
  %serio17 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %27, i32 0, i32 0, !dbg !4373
  %28 = load %struct.serio*, %struct.serio** %serio17, align 8, !dbg !4373
  call void @serio_continue_rx(%struct.serio* %28) #7, !dbg !4374
  store i32 0, i32* %timeout.addr, align 4, !dbg !4375
  br label %if.end18, !dbg !4376

if.end18:                                         ; preds = %if.then14, %if.end10
  br label %sw.epilog, !dbg !4377

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !4378

sw.epilog:                                        ; preds = %sw.default, %if.end18, %if.end
  %29 = load i32, i32* %timeout.addr, align 4, !dbg !4379
  ret i32 %29, !dbg !4380
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ps2_command(%struct.ps2dev* %ps2dev, i8* %param, i32 %command) #0 !dbg !4381 {
entry:
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %param.addr = alloca i8*, align 8
  %command.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !4382, metadata !DIExpression()), !dbg !4383
  store i8* %param, i8** %param.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %param.addr, metadata !4384, metadata !DIExpression()), !dbg !4385
  store i32 %command, i32* %command.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %command.addr, metadata !4386, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4388, metadata !DIExpression()), !dbg !4389
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4390
  call void @ps2_begin_command(%struct.ps2dev* %0) #7, !dbg !4391
  %1 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4392
  %2 = load i8*, i8** %param.addr, align 8, !dbg !4393
  %3 = load i32, i32* %command.addr, align 4, !dbg !4394
  %call = call i32 @__ps2_command(%struct.ps2dev* %1, i8* %2, i32 %3) #7, !dbg !4395
  store i32 %call, i32* %rc, align 4, !dbg !4396
  %4 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4397
  call void @ps2_end_command(%struct.ps2dev* %4) #7, !dbg !4398
  %5 = load i32, i32* %rc, align 4, !dbg !4399
  ret i32 %5, !dbg !4400
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ps2_sliced_command(%struct.ps2dev* %ps2dev, i8 zeroext %command) #0 !dbg !4401 {
entry:
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %command.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %d = alloca i8, align 1
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !4404, metadata !DIExpression()), !dbg !4405
  store i8 %command, i8* %command.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %command.addr, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4408, metadata !DIExpression()), !dbg !4409
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !4410, metadata !DIExpression()), !dbg !4411
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4412
  call void @ps2_begin_command(%struct.ps2dev* %0) #7, !dbg !4413
  %1 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4414
  %call = call i32 @__ps2_command(%struct.ps2dev* %1, i8* null, i32 230) #7, !dbg !4415
  store i32 %call, i32* %retval1, align 4, !dbg !4416
  %2 = load i32, i32* %retval1, align 4, !dbg !4417
  %tobool = icmp ne i32 %2, 0, !dbg !4417
  br i1 %tobool, label %if.then, label %if.end, !dbg !4419

if.then:                                          ; preds = %entry
  br label %out, !dbg !4420

if.end:                                           ; preds = %entry
  store i32 6, i32* %i, align 4, !dbg !4421
  br label %for.cond, !dbg !4423

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !4424
  %cmp = icmp sge i32 %3, 0, !dbg !4426
  br i1 %cmp, label %for.body, label %for.end, !dbg !4427

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %d, metadata !4428, metadata !DIExpression()), !dbg !4430
  %4 = load i8, i8* %command.addr, align 1, !dbg !4431
  %conv = zext i8 %4 to i32, !dbg !4431
  %5 = load i32, i32* %i, align 4, !dbg !4432
  %shr = ashr i32 %conv, %5, !dbg !4433
  %and = and i32 %shr, 3, !dbg !4434
  %conv2 = trunc i32 %and to i8, !dbg !4435
  store i8 %conv2, i8* %d, align 1, !dbg !4430
  %6 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4436
  %call3 = call i32 @__ps2_command(%struct.ps2dev* %6, i8* %d, i32 4328) #7, !dbg !4437
  store i32 %call3, i32* %retval1, align 4, !dbg !4438
  %7 = load i32, i32* %retval1, align 4, !dbg !4439
  %tobool4 = icmp ne i32 %7, 0, !dbg !4439
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4441

if.then5:                                         ; preds = %for.body
  br label %for.end, !dbg !4442

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !4443

for.inc:                                          ; preds = %if.end6
  %8 = load i32, i32* %i, align 4, !dbg !4444
  %sub = sub i32 %8, 2, !dbg !4444
  store i32 %sub, i32* %i, align 4, !dbg !4444
  br label %for.cond, !dbg !4445, !llvm.loop !4446

for.end:                                          ; preds = %if.then5, %for.cond
  br label %out, !dbg !4447

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !4448), !dbg !4449
  %9 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4450
  call void @ps2_end_command(%struct.ps2dev* %9) #7, !dbg !4451
  %10 = load i32, i32* %retval1, align 4, !dbg !4452
  ret i32 %10, !dbg !4453
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ps2_init(%struct.ps2dev* %ps2dev, %struct.serio* %serio) #0 !dbg !130 {
entry:
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %serio.addr = alloca %struct.serio*, align 8
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !4454, metadata !DIExpression()), !dbg !4455
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4456, metadata !DIExpression()), !dbg !4457
  br label %do.body, !dbg !4458

do.body:                                          ; preds = %entry
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4459
  %cmd_mutex = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %0, i32 0, i32 1, !dbg !4459
  call void @__mutex_init(%struct.mutex* %cmd_mutex, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @ps2_init.__key) #7, !dbg !4459
  br label %do.end, !dbg !4459

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4461

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4462

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !4464

do.body3:                                         ; preds = %do.end2
  %1 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4465
  %wait = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %1, i32 0, i32 2, !dbg !4465
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wait, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.lock_class_key* @ps2_init.__key.2) #7, !dbg !4465
  br label %do.end4, !dbg !4465

do.end4:                                          ; preds = %do.body3
  %2 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4467
  %3 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4468
  %serio5 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %3, i32 0, i32 0, !dbg !4469
  store %struct.serio* %2, %struct.serio** %serio5, align 8, !dbg !4470
  ret void, !dbg !4471
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @ps2_handle_ack(%struct.ps2dev* %ps2dev, i8 zeroext %data) #0 !dbg !4472 {
entry:
  %retval = alloca i1, align 1
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %data.addr = alloca i8, align 1
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !4475, metadata !DIExpression()), !dbg !4476
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !4477, metadata !DIExpression()), !dbg !4478
  %0 = load i8, i8* %data.addr, align 1, !dbg !4479
  %conv = zext i8 %0 to i32, !dbg !4479
  switch i32 %conv, label %sw.default [
    i32 250, label %sw.bb
    i32 254, label %sw.bb1
    i32 252, label %sw.bb3
    i32 0, label %sw.bb8
    i32 3, label %sw.bb8
    i32 4, label %sw.bb8
  ], !dbg !4480

sw.bb:                                            ; preds = %entry
  %1 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4481
  %nak = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %1, i32 0, i32 6, !dbg !4483
  store i8 0, i8* %nak, align 1, !dbg !4484
  br label %sw.epilog, !dbg !4485

sw.bb1:                                           ; preds = %entry
  %2 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4486
  %flags = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %2, i32 0, i32 3, !dbg !4487
  %3 = load i64, i64* %flags, align 8, !dbg !4488
  %or = or i64 %3, 16, !dbg !4488
  store i64 %or, i64* %flags, align 8, !dbg !4488
  %4 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4489
  %nak2 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %4, i32 0, i32 6, !dbg !4490
  store i8 -2, i8* %nak2, align 1, !dbg !4491
  br label %sw.epilog, !dbg !4492

sw.bb3:                                           ; preds = %entry
  %5 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4493
  %flags4 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %5, i32 0, i32 3, !dbg !4495
  %6 = load i64, i64* %flags4, align 8, !dbg !4495
  %and = and i64 %6, 16, !dbg !4496
  %tobool = icmp ne i64 %and, 0, !dbg !4496
  br i1 %tobool, label %if.then, label %if.end, !dbg !4497

if.then:                                          ; preds = %sw.bb3
  %7 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4498
  %flags5 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %7, i32 0, i32 3, !dbg !4500
  %8 = load i64, i64* %flags5, align 8, !dbg !4501
  %and6 = and i64 %8, -17, !dbg !4501
  store i64 %and6, i64* %flags5, align 8, !dbg !4501
  %9 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4502
  %nak7 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %9, i32 0, i32 6, !dbg !4503
  store i8 -4, i8* %nak7, align 1, !dbg !4504
  br label %sw.epilog, !dbg !4505

if.end:                                           ; preds = %sw.bb3
  br label %sw.bb8, !dbg !4506

sw.bb8:                                           ; preds = %entry, %entry, %entry, %if.end
  %10 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4507
  %flags9 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %10, i32 0, i32 3, !dbg !4509
  %11 = load i64, i64* %flags9, align 8, !dbg !4509
  %and10 = and i64 %11, 8, !dbg !4510
  %tobool11 = icmp ne i64 %and10, 0, !dbg !4510
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !4511

if.then12:                                        ; preds = %sw.bb8
  %12 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4512
  %nak13 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %12, i32 0, i32 6, !dbg !4514
  store i8 0, i8* %nak13, align 1, !dbg !4515
  br label %sw.epilog, !dbg !4516

if.end14:                                         ; preds = %sw.bb8
  br label %sw.default, !dbg !4517

sw.default:                                       ; preds = %entry, %if.end14
  %13 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4518
  %flags15 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %13, i32 0, i32 3, !dbg !4519
  %14 = load i64, i64* %flags15, align 8, !dbg !4520
  %and16 = and i64 %14, -9, !dbg !4520
  store i64 %and16, i64* %flags15, align 8, !dbg !4520
  %15 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4521
  %flags17 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %15, i32 0, i32 3, !dbg !4522
  %16 = load i64, i64* %flags17, align 8, !dbg !4522
  %and18 = and i64 %16, 32, !dbg !4523
  %tobool19 = icmp ne i64 %and18, 0, !dbg !4521
  store i1 %tobool19, i1* %retval, align 1, !dbg !4524
  br label %return, !dbg !4524

sw.epilog:                                        ; preds = %if.then12, %if.then, %sw.bb1, %sw.bb
  %17 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4525
  %nak20 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %17, i32 0, i32 6, !dbg !4527
  %18 = load i8, i8* %nak20, align 1, !dbg !4527
  %tobool21 = icmp ne i8 %18, 0, !dbg !4525
  br i1 %tobool21, label %if.end30, label %if.then22, !dbg !4528

if.then22:                                        ; preds = %sw.epilog
  %19 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4529
  %flags23 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %19, i32 0, i32 3, !dbg !4531
  %20 = load i64, i64* %flags23, align 8, !dbg !4532
  %and24 = and i64 %20, -17, !dbg !4532
  store i64 %and24, i64* %flags23, align 8, !dbg !4532
  %21 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4533
  %cmdcnt = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %21, i32 0, i32 5, !dbg !4535
  %22 = load i8, i8* %cmdcnt, align 8, !dbg !4535
  %tobool25 = icmp ne i8 %22, 0, !dbg !4533
  br i1 %tobool25, label %if.then26, label %if.end29, !dbg !4536

if.then26:                                        ; preds = %if.then22
  %23 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4537
  %flags27 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %23, i32 0, i32 3, !dbg !4538
  %24 = load i64, i64* %flags27, align 8, !dbg !4539
  %or28 = or i64 %24, 6, !dbg !4539
  store i64 %or28, i64* %flags27, align 8, !dbg !4539
  br label %if.end29, !dbg !4537

if.end29:                                         ; preds = %if.then26, %if.then22
  br label %if.end30, !dbg !4540

if.end30:                                         ; preds = %if.end29, %sw.epilog
  %25 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4541
  %flags31 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %25, i32 0, i32 3, !dbg !4542
  %26 = load i64, i64* %flags31, align 8, !dbg !4543
  %and32 = and i64 %26, -2, !dbg !4543
  store i64 %and32, i64* %flags31, align 8, !dbg !4543
  %27 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4544
  %wait = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %27, i32 0, i32 2, !dbg !4544
  call void @__wake_up(%struct.wait_queue_head* %wait, i32 3, i32 1, i8* null) #7, !dbg !4544
  %28 = load i8, i8* %data.addr, align 1, !dbg !4545
  %conv33 = zext i8 %28 to i32, !dbg !4545
  %cmp = icmp ne i32 %conv33, 250, !dbg !4547
  br i1 %cmp, label %if.then35, label %if.end36, !dbg !4548

if.then35:                                        ; preds = %if.end30
  %29 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4549
  %30 = load i8, i8* %data.addr, align 1, !dbg !4550
  %call = call zeroext i1 @ps2_handle_response(%struct.ps2dev* %29, i8 zeroext %30) #7, !dbg !4551
  br label %if.end36, !dbg !4551

if.end36:                                         ; preds = %if.then35, %if.end30
  store i1 true, i1* %retval, align 1, !dbg !4552
  br label %return, !dbg !4552

return:                                           ; preds = %if.end36, %sw.default
  %31 = load i1, i1* %retval, align 1, !dbg !4553
  ret i1 %31, !dbg !4553
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @ps2_handle_response(%struct.ps2dev* %ps2dev, i8 zeroext %data) #0 !dbg !4554 {
entry:
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  %data.addr = alloca i8, align 1
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4559
  %cmdcnt = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %0, i32 0, i32 5, !dbg !4561
  %1 = load i8, i8* %cmdcnt, align 8, !dbg !4561
  %tobool = icmp ne i8 %1, 0, !dbg !4559
  br i1 %tobool, label %if.then, label %if.end, !dbg !4562

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %data.addr, align 1, !dbg !4563
  %3 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4564
  %cmdbuf = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %3, i32 0, i32 4, !dbg !4565
  %4 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4566
  %cmdcnt1 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %4, i32 0, i32 5, !dbg !4567
  %5 = load i8, i8* %cmdcnt1, align 8, !dbg !4568
  %dec = add i8 %5, -1, !dbg !4568
  store i8 %dec, i8* %cmdcnt1, align 8, !dbg !4568
  %idxprom = zext i8 %dec to i64, !dbg !4564
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %cmdbuf, i64 0, i64 %idxprom, !dbg !4564
  store i8 %2, i8* %arrayidx, align 1, !dbg !4569
  br label %if.end, !dbg !4564

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4570
  %flags = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %6, i32 0, i32 3, !dbg !4572
  %7 = load i64, i64* %flags, align 8, !dbg !4572
  %and = and i64 %7, 4, !dbg !4573
  %tobool2 = icmp ne i64 %and, 0, !dbg !4573
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !4574

if.then3:                                         ; preds = %if.end
  %8 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4575
  %flags4 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %8, i32 0, i32 3, !dbg !4577
  %9 = load i64, i64* %flags4, align 8, !dbg !4578
  %and5 = and i64 %9, -5, !dbg !4578
  store i64 %and5, i64* %flags4, align 8, !dbg !4578
  %10 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4579
  %cmdcnt6 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %10, i32 0, i32 5, !dbg !4581
  %11 = load i8, i8* %cmdcnt6, align 8, !dbg !4581
  %tobool7 = icmp ne i8 %11, 0, !dbg !4579
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4582

if.then8:                                         ; preds = %if.then3
  %12 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4583
  %wait = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %12, i32 0, i32 2, !dbg !4583
  call void @__wake_up(%struct.wait_queue_head* %wait, i32 3, i32 1, i8* null) #7, !dbg !4583
  br label %if.end9, !dbg !4583

if.end9:                                          ; preds = %if.then8, %if.then3
  br label %if.end10, !dbg !4584

if.end10:                                         ; preds = %if.end9, %if.end
  %13 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4585
  %cmdcnt11 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %13, i32 0, i32 5, !dbg !4587
  %14 = load i8, i8* %cmdcnt11, align 8, !dbg !4587
  %tobool12 = icmp ne i8 %14, 0, !dbg !4585
  br i1 %tobool12, label %if.end17, label %if.then13, !dbg !4588

if.then13:                                        ; preds = %if.end10
  %15 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4589
  %flags14 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %15, i32 0, i32 3, !dbg !4591
  %16 = load i64, i64* %flags14, align 8, !dbg !4592
  %and15 = and i64 %16, -3, !dbg !4592
  store i64 %and15, i64* %flags14, align 8, !dbg !4592
  %17 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4593
  %wait16 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %17, i32 0, i32 2, !dbg !4593
  call void @__wake_up(%struct.wait_queue_head* %wait16, i32 3, i32 1, i8* null) #7, !dbg !4593
  br label %if.end17, !dbg !4594

if.end17:                                         ; preds = %if.then13, %if.end10
  ret i1 true, !dbg !4595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ps2_cmd_aborted(%struct.ps2dev* %ps2dev) #0 !dbg !4596 {
entry:
  %ps2dev.addr = alloca %struct.ps2dev*, align 8
  store %struct.ps2dev* %ps2dev, %struct.ps2dev** %ps2dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ps2dev** %ps2dev.addr, metadata !4597, metadata !DIExpression()), !dbg !4598
  %0 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4599
  %flags = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %0, i32 0, i32 3, !dbg !4601
  %1 = load i64, i64* %flags, align 8, !dbg !4601
  %and = and i64 %1, 1, !dbg !4602
  %tobool = icmp ne i64 %and, 0, !dbg !4602
  br i1 %tobool, label %if.then, label %if.end, !dbg !4603

if.then:                                          ; preds = %entry
  %2 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4604
  %nak = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %2, i32 0, i32 6, !dbg !4605
  store i8 1, i8* %nak, align 1, !dbg !4606
  br label %if.end, !dbg !4604

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4607
  %flags1 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %3, i32 0, i32 3, !dbg !4609
  %4 = load i64, i64* %flags1, align 8, !dbg !4609
  %and2 = and i64 %4, 3, !dbg !4610
  %tobool3 = icmp ne i64 %and2, 0, !dbg !4610
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4611

if.then4:                                         ; preds = %if.end
  %5 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4612
  %wait = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %5, i32 0, i32 2, !dbg !4612
  call void @__wake_up(%struct.wait_queue_head* %wait, i32 3, i32 1, i8* null) #7, !dbg !4612
  br label %if.end5, !dbg !4612

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = load %struct.ps2dev*, %struct.ps2dev** %ps2dev.addr, align 8, !dbg !4613
  %flags6 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %6, i32 0, i32 3, !dbg !4614
  %7 = load i64, i64* %flags6, align 8, !dbg !4615
  %and7 = and i64 %7, 16, !dbg !4615
  store i64 %and7, i64* %flags6, align 8, !dbg !4615
  ret void, !dbg !4616
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !4617 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4619, metadata !DIExpression()), !dbg !4621
  %0 = load i64, i64* %__edi, align 8, !dbg !4621
  store i64 %0, i64* %__edi, align 8, !dbg !4621
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4622, metadata !DIExpression()), !dbg !4621
  %1 = load i64, i64* %__esi, align 8, !dbg !4621
  store i64 %1, i64* %__esi, align 8, !dbg !4621
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4623, metadata !DIExpression()), !dbg !4621
  %2 = load i64, i64* %__edx, align 8, !dbg !4621
  store i64 %2, i64* %__edx, align 8, !dbg !4621
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4624, metadata !DIExpression()), !dbg !4621
  %3 = load i64, i64* %__ecx, align 8, !dbg !4621
  store i64 %3, i64* %__ecx, align 8, !dbg !4621
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4625, metadata !DIExpression()), !dbg !4621
  %4 = load i64, i64* %__eax, align 8, !dbg !4621
  store i64 %4, i64* %__eax, align 8, !dbg !4621
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !4621
  %6 = call i64 @llvm.read_register.i64(metadata !3578), !dbg !4621
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #5, !dbg !4621, !srcloc !4626
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4621
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4621
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4621
  call void @llvm.write_register.i64(metadata !3578, i64 %asmresult1), !dbg !4621
  ret void, !dbg !4627
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #4

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @serio_write(%struct.serio* %serio, i8 zeroext %data) #0 !dbg !4628 {
entry:
  %retval = alloca i32, align 4
  %serio.addr = alloca %struct.serio*, align 8
  %data.addr = alloca i8, align 1
  store %struct.serio* %serio, %struct.serio** %serio.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.serio** %serio.addr, metadata !4629, metadata !DIExpression()), !dbg !4630
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !4631, metadata !DIExpression()), !dbg !4632
  %0 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4633
  %write = getelementptr inbounds %struct.serio, %struct.serio* %0, i32 0, i32 7, !dbg !4635
  %1 = load i32 (%struct.serio*, i8)*, i32 (%struct.serio*, i8)** %write, align 8, !dbg !4635
  %tobool = icmp ne i32 (%struct.serio*, i8)* %1, null, !dbg !4633
  br i1 %tobool, label %if.then, label %if.else, !dbg !4636

if.then:                                          ; preds = %entry
  %2 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4637
  %write1 = getelementptr inbounds %struct.serio, %struct.serio* %2, i32 0, i32 7, !dbg !4638
  %3 = load i32 (%struct.serio*, i8)*, i32 (%struct.serio*, i8)** %write1, align 8, !dbg !4638
  %4 = load %struct.serio*, %struct.serio** %serio.addr, align 8, !dbg !4639
  %5 = load i8, i8* %data.addr, align 1, !dbg !4640
  %call = call i32 %3(%struct.serio* %4, i8 zeroext %5) #7, !dbg !4637
  store i32 %call, i32* %retval, align 4, !dbg !4641
  br label %return, !dbg !4641

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !4642
  br label %return, !dbg !4642

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4643
  ret i32 %6, !dbg !4643
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !4644 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !4645, metadata !DIExpression()), !dbg !4647
  %0 = load i64, i64* %__edi, align 8, !dbg !4647
  store i64 %0, i64* %__edi, align 8, !dbg !4647
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !4648, metadata !DIExpression()), !dbg !4647
  %1 = load i64, i64* %__esi, align 8, !dbg !4647
  store i64 %1, i64* %__esi, align 8, !dbg !4647
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !4649, metadata !DIExpression()), !dbg !4647
  %2 = load i64, i64* %__edx, align 8, !dbg !4647
  store i64 %2, i64* %__edx, align 8, !dbg !4647
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !4650, metadata !DIExpression()), !dbg !4647
  %3 = load i64, i64* %__ecx, align 8, !dbg !4647
  store i64 %3, i64* %__ecx, align 8, !dbg !4647
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !4651, metadata !DIExpression()), !dbg !4647
  %4 = load i64, i64* %__eax, align 8, !dbg !4647
  store i64 %4, i64* %__eax, align 8, !dbg !4647
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !4647
  %6 = call i64 @llvm.read_register.i64(metadata !3578), !dbg !4647
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #5, !dbg !4647, !srcloc !4652
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !4647
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !4647
  store i64 %asmresult, i64* %__eax, align 8, !dbg !4647
  call void @llvm.write_register.i64(metadata !3578, i64 %asmresult1), !dbg !4647
  ret void, !dbg !4653
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !4654 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !4655, metadata !DIExpression()), !dbg !4656
  %0 = load i32, i32* %m.addr, align 4, !dbg !4657
  %conv = zext i32 %0 to i64, !dbg !4657
  %add = add i64 %conv, 4, !dbg !4658
  %sub = sub i64 %add, 1, !dbg !4659
  %div = sdiv i64 %sub, 4, !dbg !4660
  ret i64 %div, !dbg !4661
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3578}
!llvm.module.flags = !{!3579, !3580, !3581, !3582}
!llvm.ident = !{!3583}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author202", scope: !2, file: !3, line: 21, type: !3575, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !91, globals: !95, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/serio/libps2.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !12, !19, !24, !30, !36, !45, !53, !59, !66, !74, !80, !86}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !13, line: 15, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!18 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !20, line: 65, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !25, line: 16, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !31, line: 54, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !37, line: 296, baseType: !7, size: 32, elements: !38)
!37 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!38 = !{!39, !40, !41, !42, !43, !44}
!39 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !46, line: 9, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!51 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!52 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !54, line: 26, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !81, line: 44, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 10, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!88 = !{!89, !90}
!89 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!91 = !{!92, !93, !94}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!95 = !{!0, !96, !103, !105, !110, !128, !3573}
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description203", scope: !2, file: !3, line: 22, type: !98, isLocal: true, isDefinition: true, align: 8)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 312, elements: !101)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !{!102}
!102 = !DISubrange(count: 39)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file204", scope: !2, file: !3, line: 23, type: !98, isLocal: true, isDefinition: true, align: 8)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license205", scope: !2, file: !3, line: 23, type: !107, isLocal: true, isDefinition: true, align: 8)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 152, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 19)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "keyboard_ids", scope: !112, file: !3, line: 151, type: !124, isLocal: true, isDefinition: true)
!112 = distinct !DISubprogram(name: "ps2_is_keyboard_id", scope: !3, file: !3, line: 149, type: !113, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !118}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !116, line: 30, baseType: !117)
!116 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!117 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !119, line: 17, baseType: !120)
!119 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !121, line: 21, baseType: !122)
!121 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!122 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !{}
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 48, elements: !126)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!126 = !{!127}
!127 = !DISubrange(count: 6)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "__key", scope: !130, file: !3, line: 378, type: !646, isLocal: true, isDefinition: true)
!130 = distinct !DISubprogram(name: "ps2_init", scope: !3, file: !3, line: 376, type: !131, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !133, !138}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ps2dev", file: !135, line: 33, size: 576, elements: !136)
!135 = !DIFile(filename: "./include/linux/libps2.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137, !3566, !3567, !3568, !3569, !3571, !3572}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "serio", scope: !134, file: !135, line: 34, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio", file: !140, line: 20, size: 8384, elements: !141)
!140 = !DIFile(filename: "./include/linux/serio.h", directory: "/home/lizy2001/genbc/linux")
!141 = !{!142, !143, !147, !148, !152, !153, !161, !176, !180, !184, !188, !189, !190, !191, !197, !198, !199, !3561, !3562, !3563, !3564}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !139, file: !140, line: 21, baseType: !92, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !139, file: !140, line: 23, baseType: !144, size: 256, offset: 64)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !139, file: !140, line: 24, baseType: !144, size: 256, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "firmware_id", scope: !139, file: !140, line: 25, baseType: !149, size: 1024, offset: 576)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 1024, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !139, file: !140, line: 27, baseType: !115, size: 8, offset: 1600)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !139, file: !140, line: 29, baseType: !154, size: 32, offset: 1608)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_device_id", file: !155, line: 236, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157, !158, !159, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !154, file: !155, line: 237, baseType: !120, size: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !154, file: !155, line: 238, baseType: !120, size: 8, offset: 8)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !154, file: !155, line: 239, baseType: !120, size: 8, offset: 16)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !154, file: !155, line: 240, baseType: !120, size: 8, offset: 24)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !139, file: !140, line: 32, baseType: !162, offset: 1640)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !163, line: 83, baseType: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !163, line: 71, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !163, line: 72, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !163, line: 72, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !167, file: !163, line: 73, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !163, line: 20, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !170, file: !163, line: 21, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !174, line: 25, baseType: !175)
!174 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 25, elements: !123)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !139, file: !140, line: 34, baseType: !177, size: 64, offset: 1664)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!93, !138, !122}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !139, file: !140, line: 35, baseType: !181, size: 64, offset: 1728)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!93, !138}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !139, file: !140, line: 36, baseType: !185, size: 64, offset: 1792)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !138}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !139, file: !140, line: 37, baseType: !181, size: 64, offset: 1856)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !139, file: !140, line: 38, baseType: !185, size: 64, offset: 1920)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !139, file: !140, line: 40, baseType: !138, size: 64, offset: 1984)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "child_node", scope: !139, file: !140, line: 42, baseType: !192, size: 128, offset: 2048)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !116, line: 178, size: 128, elements: !193)
!193 = !{!194, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !192, file: !116, line: 179, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !192, file: !116, line: 179, baseType: !195, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !139, file: !140, line: 43, baseType: !192, size: 128, offset: 2176)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !139, file: !140, line: 45, baseType: !7, size: 32, offset: 2304)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !139, file: !140, line: 51, baseType: !200, size: 64, offset: 2368)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serio_driver", file: !140, line: 67, size: 1792, elements: !202)
!202 = !{!203, !205, !208, !209, !210, !215, !219, !220, !221, !222, !223}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !201, file: !140, line: 68, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !201, file: !140, line: 70, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "manual_bind", scope: !201, file: !140, line: 71, baseType: !115, size: 8, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !201, file: !140, line: 73, baseType: !185, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !201, file: !140, line: 74, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !138, !122, !7}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !6, line: 17, baseType: !5)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !201, file: !140, line: 75, baseType: !216, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!93, !138, !200}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !201, file: !140, line: 76, baseType: !181, size: 64, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "fast_reconnect", scope: !201, file: !140, line: 77, baseType: !181, size: 64, offset: 448)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !201, file: !140, line: 78, baseType: !185, size: 64, offset: 512)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !201, file: !140, line: 79, baseType: !185, size: 64, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !201, file: !140, line: 81, baseType: !224, size: 1152, offset: 640)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !81, line: 95, size: 1152, elements: !225)
!225 = !{!226, !227, !3522, !3523, !3524, !3525, !3526, !3535, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !81, line: 96, baseType: !204, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !224, file: !81, line: 97, baseType: !228, size: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !230, line: 82, size: 1408, elements: !231)
!230 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !233, !234, !3493, !3494, !3495, !3496, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3511, !3512, !3513, !3514, !3515, !3519, !3520, !3521}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !229, file: !230, line: 83, baseType: !204, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !229, file: !230, line: 84, baseType: !204, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !229, file: !230, line: 85, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !237)
!237 = !{!238, !3217, !3218, !3221, !3222, !3273, !3274, !3276, !3277, !3278, !3279, !3288, !3397, !3410, !3413, !3414, !3418, !3420, !3421, !3422, !3426, !3432, !3433, !3436, !3440, !3443, !3444, !3445, !3446, !3447, !3481, !3482, !3483, !3486, !3489, !3490, !3491, !3492}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !236, file: !60, line: 462, baseType: !239, size: 512)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !240, line: 64, size: 512, elements: !241)
!240 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!241 = !{!242, !243, !244, !246, !291, !3068, !3207, !3212, !3213, !3214, !3215, !3216}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !240, line: 65, baseType: !204, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !239, file: !240, line: 66, baseType: !192, size: 128, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !240, line: 67, baseType: !245, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !239, file: !240, line: 68, baseType: !247, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !240, line: 192, size: 704, elements: !249)
!249 = !{!250, !251, !252, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !248, file: !240, line: 193, baseType: !192, size: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !248, file: !240, line: 194, baseType: !162, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !248, file: !240, line: 195, baseType: !239, size: 512, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !248, file: !240, line: 196, baseType: !254, size: 64, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !240, line: 156, size: 192, elements: !257)
!257 = !{!258, !263, !268}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !256, file: !240, line: 157, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!93, !247, !245}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !240, line: 158, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!204, !247, !245}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !256, file: !240, line: 159, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!93, !247, !245, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !240, line: 148, size: 20736, elements: !275)
!275 = !{!276, !281, !285, !286, !290}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !274, file: !240, line: 149, baseType: !277, size: 192)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 192, elements: !279)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!279 = !{!280}
!280 = !DISubrange(count: 3)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !274, file: !240, line: 150, baseType: !282, size: 4096, offset: 192)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 4096, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !274, file: !240, line: 151, baseType: !93, size: 32, offset: 4288)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !274, file: !240, line: 152, baseType: !287, size: 16384, offset: 4320)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 16384, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 2048)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !274, file: !240, line: 153, baseType: !93, size: 32, offset: 20704)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !239, file: !240, line: 69, baseType: !292, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !240, line: 138, size: 448, elements: !294)
!294 = !{!295, !299, !328, !330, !3028, !3058, !3062}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !293, file: !240, line: 139, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !245}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !293, file: !240, line: 140, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !303, line: 230, size: 128, elements: !304)
!303 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!304 = !{!305, !320}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !302, file: !303, line: 231, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !245, !313, !278}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !116, line: 60, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !311, line: 73, baseType: !312)
!311 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !311, line: 15, baseType: !94)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !303, line: 30, size: 128, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !303, line: 31, baseType: !204, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !314, file: !303, line: 32, baseType: !318, size: 16, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !116, line: 19, baseType: !319)
!319 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !302, file: !303, line: 232, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!309, !245, !313, !204, !324}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 55, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !311, line: 72, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !311, line: 16, baseType: !327)
!327 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !293, file: !240, line: 141, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !293, file: !240, line: 142, baseType: !331, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !303, line: 84, size: 320, elements: !335)
!335 = !{!336, !337, !341, !3025, !3026}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !334, file: !303, line: 85, baseType: !204, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !334, file: !303, line: 86, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!318, !245, !313, !93}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !334, file: !303, line: 88, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!318, !245, !345, !93}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !303, line: 168, size: 448, elements: !347)
!347 = !{!348, !349, !350, !351, !3020, !3021}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !346, file: !303, line: 169, baseType: !314, size: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !346, file: !303, line: 170, baseType: !324, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !346, file: !303, line: 171, baseType: !92, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !346, file: !303, line: 172, baseType: !352, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!309, !355, !245, !345, !278, !529, !324}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !37, line: 916, size: 1856, align: 32, elements: !357)
!357 = !{!358, !376, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !3003, !3004, !3013, !3014, !3015, !3016, !3017, !3018, !3019}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !356, file: !37, line: 920, baseType: !359, size: 128)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !37, line: 917, size: 128, elements: !360)
!360 = !{!361, !367}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !359, file: !37, line: 918, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !363, line: 58, size: 64, elements: !364)
!363 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !363, line: 59, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !359, file: !37, line: 919, baseType: !368, size: 128, align: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !116, line: 216, size: 128, align: 64, elements: !369)
!369 = !{!370, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !116, line: 217, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !368, file: !116, line: 218, baseType: !373, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !371}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !356, file: !37, line: 921, baseType: !377, size: 128, offset: 128)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !378, line: 8, size: 128, elements: !379)
!378 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!379 = !{!380, !384}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !377, file: !378, line: 9, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !383, line: 18, flags: DIFlagFwdDecl)
!383 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!384 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !377, file: !378, line: 10, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !383, line: 89, size: 1536, elements: !387)
!387 = !{!388, !389, !399, !407, !408, !428, !2953, !2955, !2967, !2968, !2969, !2970, !2971, !2977, !2978, !2979}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !386, file: !383, line: 91, baseType: !7, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !386, file: !383, line: 92, baseType: !390, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !391, line: 277, baseType: !392)
!391 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !391, line: 277, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !392, file: !391, line: 277, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !391, line: 70, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !391, line: 65, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !396, file: !391, line: 66, baseType: !7, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !386, file: !383, line: 93, baseType: !400, size: 128, offset: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !401, line: 38, size: 128, elements: !402)
!401 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!402 = !{!403, !405}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !401, line: 39, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !400, file: !401, line: 39, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !386, file: !383, line: 94, baseType: !385, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !386, file: !383, line: 95, baseType: !409, size: 128, offset: 256)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !383, line: 47, size: 128, elements: !410)
!410 = !{!411, !425}
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !383, line: 48, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !383, line: 48, size: 64, elements: !413)
!413 = !{!414, !421}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !383, line: 49, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !412, file: !383, line: 49, size: 64, elements: !416)
!416 = !{!417, !420}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !415, file: !383, line: 50, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !119, line: 21, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !121, line: 27, baseType: !7)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !415, file: !383, line: 50, baseType: !418, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !412, file: !383, line: 52, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !119, line: 23, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !121, line: 31, baseType: !424)
!424 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !383, line: 54, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !386, file: !383, line: 96, baseType: !429, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !37, line: 610, size: 4224, elements: !431)
!431 = !{!432, !433, !434, !442, !449, !450, !596, !2664, !2665, !2666, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2929, !2937, !2938, !2939, !2949, !2950, !2951, !2952}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !430, file: !37, line: 611, baseType: !318, size: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !430, file: !37, line: 612, baseType: !319, size: 16, offset: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !430, file: !37, line: 613, baseType: !435, size: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !436, line: 23, baseType: !437)
!436 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 21, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !437, file: !436, line: 22, baseType: !440, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !116, line: 32, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !311, line: 49, baseType: !7)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !430, file: !37, line: 614, baseType: !443, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !436, line: 28, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 26, size: 32, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !444, file: !436, line: 27, baseType: !447, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !116, line: 33, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !311, line: 50, baseType: !7)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !430, file: !37, line: 615, baseType: !7, size: 32, offset: 96)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !430, file: !37, line: 622, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !37, line: 1864, size: 1536, align: 512, elements: !454)
!454 = !{!455, !459, !472, !476, !482, !486, !490, !494, !498, !502, !506, !507, !513, !517, !543, !572, !576, !582, !587, !591, !592}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !453, file: !37, line: 1865, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!385, !429, !385, !7}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !453, file: !37, line: 1866, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!204, !385, !429, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !465, line: 10, size: 128, elements: !466)
!465 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!466 = !{!467, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !464, file: !465, line: 11, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !92}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !464, file: !465, line: 12, baseType: !92, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !453, file: !37, line: 1867, baseType: !473, size: 64, offset: 128)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!93, !429, !93}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !453, file: !37, line: 1868, baseType: !477, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!480, !429, !93}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !37, line: 581, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !453, file: !37, line: 1870, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!93, !385, !278, !93}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !453, file: !37, line: 1872, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!93, !429, !385, !318, !115}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !453, file: !37, line: 1873, baseType: !491, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!93, !385, !429, !385}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !453, file: !37, line: 1874, baseType: !495, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!93, !429, !385}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !453, file: !37, line: 1875, baseType: !499, size: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!93, !429, !385, !204}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !453, file: !37, line: 1876, baseType: !503, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!93, !429, !385, !318}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !453, file: !37, line: 1877, baseType: !495, size: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !453, file: !37, line: 1878, baseType: !508, size: 64, offset: 704)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!93, !429, !385, !318, !511}
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !116, line: 16, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !116, line: 13, baseType: !418)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !453, file: !37, line: 1879, baseType: !514, size: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!93, !429, !385, !429, !385, !7}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !453, file: !37, line: 1881, baseType: !518, size: 64, offset: 832)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!93, !385, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !37, line: 219, size: 640, elements: !523)
!523 = !{!524, !525, !526, !527, !528, !532, !540, !541, !542}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !522, file: !37, line: 220, baseType: !7, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !522, file: !37, line: 221, baseType: !318, size: 16, offset: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !522, file: !37, line: 222, baseType: !435, size: 32, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !522, file: !37, line: 223, baseType: !443, size: 32, offset: 96)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !522, file: !37, line: 224, baseType: !529, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !116, line: 46, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !311, line: 88, baseType: !531)
!531 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !522, file: !37, line: 225, baseType: !533, size: 128, offset: 192)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !534, line: 13, size: 128, elements: !535)
!534 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!535 = !{!536, !539}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !533, file: !534, line: 14, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !534, line: 8, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !121, line: 30, baseType: !531)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !533, file: !534, line: 15, baseType: !94, size: 64, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !522, file: !37, line: 226, baseType: !533, size: 128, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !522, file: !37, line: 227, baseType: !533, size: 128, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !522, file: !37, line: 234, baseType: !355, size: 64, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !453, file: !37, line: 1882, baseType: !544, size: 64, offset: 896)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!93, !547, !549, !418, !7}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !551, line: 22, size: 1152, elements: !552)
!551 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!552 = !{!553, !554, !555, !556, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !550, file: !551, line: 23, baseType: !418, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !550, file: !551, line: 24, baseType: !318, size: 16, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !550, file: !551, line: 25, baseType: !7, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !550, file: !551, line: 26, baseType: !557, size: 32, offset: 96)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !116, line: 104, baseType: !418)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !550, file: !551, line: 27, baseType: !422, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !550, file: !551, line: 28, baseType: !422, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !550, file: !551, line: 37, baseType: !422, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !550, file: !551, line: 38, baseType: !511, size: 32, offset: 320)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !550, file: !551, line: 39, baseType: !511, size: 32, offset: 352)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !550, file: !551, line: 40, baseType: !435, size: 32, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !550, file: !551, line: 41, baseType: !443, size: 32, offset: 416)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !550, file: !551, line: 42, baseType: !529, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !550, file: !551, line: 43, baseType: !533, size: 128, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !550, file: !551, line: 44, baseType: !533, size: 128, offset: 640)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !550, file: !551, line: 45, baseType: !533, size: 128, offset: 768)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !550, file: !551, line: 46, baseType: !533, size: 128, offset: 896)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !550, file: !551, line: 47, baseType: !422, size: 64, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !550, file: !551, line: 48, baseType: !422, size: 64, offset: 1088)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !453, file: !37, line: 1883, baseType: !573, size: 64, offset: 960)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!309, !385, !278, !324}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !453, file: !37, line: 1884, baseType: !577, size: 64, offset: 1024)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!93, !429, !580, !422, !422}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !37, line: 50, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !453, file: !37, line: 1886, baseType: !583, size: 64, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!93, !429, !586, !93}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !453, file: !37, line: 1887, baseType: !588, size: 64, offset: 1152)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!93, !429, !385, !355, !7, !318}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !453, file: !37, line: 1890, baseType: !503, size: 64, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !453, file: !37, line: 1891, baseType: !593, size: 64, offset: 1280)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!93, !429, !480, !93}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !430, file: !37, line: 623, baseType: !597, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !37, line: 1416, size: 9472, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !655, !2272, !2354, !2437, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2453, !2457, !2458, !2461, !2462, !2465, !2466, !2467, !2508, !2535, !2536, !2537, !2538, !2539, !2540, !2543, !2544, !2551, !2552, !2554, !2555, !2556, !2615, !2616, !2631, !2632, !2633, !2634, !2635, !2638, !2639, !2640, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !598, file: !37, line: 1417, baseType: !192, size: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !598, file: !37, line: 1418, baseType: !511, size: 32, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !598, file: !37, line: 1419, baseType: !122, size: 8, offset: 160)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !598, file: !37, line: 1420, baseType: !327, size: 64, offset: 192)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !598, file: !37, line: 1421, baseType: !529, size: 64, offset: 256)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !598, file: !37, line: 1422, baseType: !606, size: 64, offset: 320)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !37, line: 2228, size: 576, elements: !608)
!608 = !{!609, !610, !611, !618, !622, !626, !630, !634, !635, !645, !648, !649, !650, !652, !653, !654}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !607, file: !37, line: 2229, baseType: !204, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !607, file: !37, line: 2230, baseType: !93, size: 32, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !607, file: !37, line: 2238, baseType: !612, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!93, !615}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !617, line: 28, flags: DIFlagFwdDecl)
!617 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!618 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !607, file: !37, line: 2239, baseType: !619, size: 64, offset: 192)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !37, line: 70, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !607, file: !37, line: 2240, baseType: !623, size: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!385, !606, !93, !204, !92}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !607, file: !37, line: 2242, baseType: !627, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !597}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !607, file: !37, line: 2243, baseType: !631, size: 64, offset: 384)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !633, line: 76, flags: DIFlagFwdDecl)
!633 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !607, file: !37, line: 2244, baseType: !606, size: 64, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !607, file: !37, line: 2245, baseType: !636, size: 64, offset: 512)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !116, line: 182, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !636, file: !116, line: 183, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !116, line: 186, size: 128, elements: !641)
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !640, file: !116, line: 187, baseType: !639, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !640, file: !116, line: 187, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !607, file: !37, line: 2247, baseType: !646, offset: 576)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !647, line: 187, elements: !123)
!647 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!648 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !607, file: !37, line: 2248, baseType: !646, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !607, file: !37, line: 2249, baseType: !646, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !607, file: !37, line: 2250, baseType: !651, offset: 576)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, elements: !279)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !607, file: !37, line: 2252, baseType: !646, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !607, file: !37, line: 2253, baseType: !646, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !607, file: !37, line: 2254, baseType: !646, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !598, file: !37, line: 1423, baseType: !656, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !37, line: 1935, size: 1472, elements: !659)
!659 = !{!660, !664, !668, !669, !673, !679, !683, !684, !685, !689, !693, !694, !695, !696, !702, !707, !708, !715, !716, !717, !718, !2256, !2271}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !658, file: !37, line: 1936, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!429, !597}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !658, file: !37, line: 1937, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !429}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !658, file: !37, line: 1938, baseType: !665, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !658, file: !37, line: 1940, baseType: !670, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !429, !93}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !658, file: !37, line: 1941, baseType: !674, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!93, !429, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !37, line: 289, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !658, file: !37, line: 1942, baseType: !680, size: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!93, !429}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !658, file: !37, line: 1943, baseType: !665, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !658, file: !37, line: 1944, baseType: !627, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !658, file: !37, line: 1945, baseType: !686, size: 64, offset: 512)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!93, !597, !93}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !658, file: !37, line: 1946, baseType: !690, size: 64, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!93, !597}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !658, file: !37, line: 1947, baseType: !690, size: 64, offset: 640)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !658, file: !37, line: 1948, baseType: !690, size: 64, offset: 704)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !658, file: !37, line: 1949, baseType: !690, size: 64, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !658, file: !37, line: 1950, baseType: !697, size: 64, offset: 832)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!93, !385, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !37, line: 57, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !658, file: !37, line: 1951, baseType: !703, size: 64, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!93, !597, !706, !278}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !658, file: !37, line: 1952, baseType: !627, size: 64, offset: 960)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !658, file: !37, line: 1954, baseType: !709, size: 64, offset: 1024)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{!93, !712, !385}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !714, line: 539, flags: DIFlagFwdDecl)
!714 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!715 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !658, file: !37, line: 1955, baseType: !709, size: 64, offset: 1088)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !658, file: !37, line: 1956, baseType: !709, size: 64, offset: 1152)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !658, file: !37, line: 1957, baseType: !709, size: 64, offset: 1216)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !658, file: !37, line: 1963, baseType: !719, size: 64, offset: 1280)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!93, !597, !722, !745}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !724, line: 68, size: 512, align: 128, elements: !725)
!724 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!725 = !{!726, !727, !2248, !2255}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !724, line: 69, baseType: !327, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !724, line: 77, baseType: !728, size: 320, offset: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !724, line: 77, size: 320, elements: !729)
!729 = !{!730, !918, !923, !951, !959, !965, !2240, !2247}
!730 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 78, baseType: !731, size: 320)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 78, size: 320, elements: !732)
!732 = !{!733, !734, !916, !917}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !731, file: !724, line: 84, baseType: !192, size: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !731, file: !724, line: 86, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !37, line: 451, size: 1216, align: 64, elements: !737)
!737 = !{!738, !739, !747, !748, !753, !768, !784, !785, !786, !787, !909, !910, !913, !914, !915}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !736, file: !37, line: 452, baseType: !429, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !736, file: !37, line: 453, baseType: !740, size: 128, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !741, line: 292, size: 128, elements: !742)
!741 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !744, !746}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !740, file: !741, line: 293, baseType: !162)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !740, file: !741, line: 295, baseType: !745, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !116, line: 148, baseType: !7)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !740, file: !741, line: 296, baseType: !92, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !736, file: !37, line: 454, baseType: !745, size: 32, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !736, file: !37, line: 455, baseType: !749, size: 32, offset: 224)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !116, line: 168, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 166, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !750, file: !116, line: 167, baseType: !93, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !736, file: !37, line: 460, baseType: !754, size: 128, offset: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !755, line: 125, size: 128, elements: !756)
!755 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757, !767}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !754, file: !755, line: 126, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !755, line: 31, size: 64, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !758, file: !755, line: 32, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !755, line: 24, size: 192, align: 64, elements: !763)
!763 = !{!764, !765, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !762, file: !755, line: 25, baseType: !327, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !762, file: !755, line: 26, baseType: !761, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !762, file: !755, line: 27, baseType: !761, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !754, file: !755, line: 127, baseType: !761, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !736, file: !37, line: 461, baseType: !769, size: 256, offset: 384)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !770, line: 35, size: 256, elements: !771)
!770 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !780, !781, !783}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !769, file: !770, line: 36, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !774, line: 13, baseType: !775)
!774 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !116, line: 175, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !116, line: 173, size: 64, elements: !777)
!777 = !{!778}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !776, file: !116, line: 174, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !119, line: 22, baseType: !538)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !769, file: !770, line: 42, baseType: !773, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !769, file: !770, line: 46, baseType: !782, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !163, line: 29, baseType: !170)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !769, file: !770, line: 47, baseType: !192, size: 128, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !736, file: !37, line: 462, baseType: !327, size: 64, offset: 640)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !736, file: !37, line: 463, baseType: !327, size: 64, offset: 704)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !736, file: !37, line: 464, baseType: !327, size: 64, offset: 768)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !736, file: !37, line: 465, baseType: !788, size: 64, offset: 832)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !37, line: 367, size: 1408, elements: !791)
!791 = !{!792, !796, !800, !804, !808, !812, !818, !824, !828, !833, !837, !841, !845, !873, !877, !883, !884, !885, !889, !894, !898, !905}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !790, file: !37, line: 368, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{!93, !722, !677}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !790, file: !37, line: 369, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!93, !355, !722}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !790, file: !37, line: 372, baseType: !801, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!93, !735, !677}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !790, file: !37, line: 375, baseType: !805, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!93, !722}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !790, file: !37, line: 381, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!93, !355, !735, !195, !7}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !790, file: !37, line: 383, baseType: !813, size: 64, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !816}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !37, line: 290, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !790, file: !37, line: 385, baseType: !819, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!93, !355, !735, !529, !7, !7, !822, !823}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !790, file: !37, line: 388, baseType: !825, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!93, !355, !735, !529, !7, !7, !722, !92}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !790, file: !37, line: 393, baseType: !829, size: 64, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!832, !735, !832}
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !116, line: 125, baseType: !422)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !790, file: !37, line: 394, baseType: !834, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !722, !7, !7}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !790, file: !37, line: 395, baseType: !838, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!93, !722, !745}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !790, file: !37, line: 396, baseType: !842, size: 64, offset: 704)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !722}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !790, file: !37, line: 397, baseType: !846, size: 64, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!309, !849, !871}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !37, line: 320, size: 384, elements: !851)
!851 = !{!852, !853, !854, !858, !859, !860, !863, !864}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !850, file: !37, line: 321, baseType: !355, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !850, file: !37, line: 326, baseType: !529, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !850, file: !37, line: 327, baseType: !855, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !849, !94, !94}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !850, file: !37, line: 328, baseType: !92, size: 64, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !850, file: !37, line: 329, baseType: !93, size: 32, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !850, file: !37, line: 330, baseType: !861, size: 16, offset: 288)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !119, line: 19, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !121, line: 24, baseType: !319)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !850, file: !37, line: 331, baseType: !861, size: 16, offset: 304)
!864 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !37, line: 332, baseType: !865, size: 64, offset: 320)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !37, line: 332, size: 64, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !865, file: !37, line: 333, baseType: !7, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !865, file: !37, line: 334, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !37, line: 334, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !37, line: 64, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !790, file: !37, line: 402, baseType: !874, size: 64, offset: 832)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!93, !735, !722, !722, !12}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !790, file: !37, line: 404, baseType: !878, size: 64, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!115, !722, !881}
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !882, line: 305, baseType: !7)
!882 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!883 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !790, file: !37, line: 405, baseType: !842, size: 64, offset: 960)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !790, file: !37, line: 406, baseType: !805, size: 64, offset: 1024)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !790, file: !37, line: 407, baseType: !886, size: 64, offset: 1088)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!93, !722, !327, !327}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !790, file: !37, line: 409, baseType: !890, size: 64, offset: 1152)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !722, !893, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !790, file: !37, line: 410, baseType: !895, size: 64, offset: 1216)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!93, !735, !722}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !790, file: !37, line: 413, baseType: !899, size: 64, offset: 1280)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!93, !902, !355, !904}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !37, line: 61, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !790, file: !37, line: 415, baseType: !906, size: 64, offset: 1344)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !355}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !736, file: !37, line: 466, baseType: !327, size: 64, offset: 896)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !736, file: !37, line: 467, baseType: !911, size: 32, offset: 960)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !912, line: 8, baseType: !418)
!912 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!913 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !736, file: !37, line: 468, baseType: !162, offset: 992)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !736, file: !37, line: 469, baseType: !192, size: 128, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !736, file: !37, line: 470, baseType: !92, size: 64, offset: 1152)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !731, file: !724, line: 87, baseType: !327, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !731, file: !724, line: 94, baseType: !327, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 96, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 96, size: 64, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !919, file: !724, line: 101, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !116, line: 143, baseType: !422)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 103, baseType: !924, size: 320)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 103, size: 320, elements: !925)
!925 = !{!926, !936, !939, !940}
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !724, line: 104, baseType: !927, size: 128)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !724, line: 104, size: 128, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !927, file: !724, line: 105, baseType: !192, size: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !724, line: 106, baseType: !931, size: 128)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !927, file: !724, line: 106, size: 128, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !931, file: !724, line: 107, baseType: !722, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !931, file: !724, line: 109, baseType: !93, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !931, file: !724, line: 110, baseType: !93, size: 32, offset: 96)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !924, file: !724, line: 117, baseType: !937, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !724, line: 117, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !924, file: !724, line: 119, baseType: !92, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !724, line: 120, baseType: !941, size: 64, offset: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !924, file: !724, line: 120, size: 64, elements: !942)
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !941, file: !724, line: 121, baseType: !92, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !941, file: !724, line: 122, baseType: !327, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !724, line: 123, baseType: !946, size: 32)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !941, file: !724, line: 123, size: 32, elements: !947)
!947 = !{!948, !949, !950}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !946, file: !724, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !946, file: !724, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !946, file: !724, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 130, baseType: !952, size: 192)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 130, size: 192, elements: !953)
!953 = !{!954, !955, !956, !957, !958}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !952, file: !724, line: 131, baseType: !327, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !952, file: !724, line: 134, baseType: !122, size: 8, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !952, file: !724, line: 135, baseType: !122, size: 8, offset: 72)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !952, file: !724, line: 136, baseType: !749, size: 32, offset: 96)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !952, file: !724, line: 137, baseType: !7, size: 32, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 139, baseType: !960, size: 256)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 139, size: 256, elements: !961)
!961 = !{!962, !963, !964}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !960, file: !724, line: 140, baseType: !327, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !960, file: !724, line: 141, baseType: !749, size: 32, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !960, file: !724, line: 143, baseType: !192, size: 128, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 145, baseType: !966, size: 256)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 145, size: 256, elements: !967)
!967 = !{!968, !969, !971, !972, !2239}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !966, file: !724, line: 146, baseType: !327, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !966, file: !724, line: 147, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !714, line: 509, baseType: !722)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !966, file: !724, line: 148, baseType: !327, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !724, line: 149, baseType: !973, size: 64, offset: 192)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !724, line: 149, size: 64, elements: !974)
!974 = !{!975, !2238}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !973, file: !724, line: 150, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !724, line: 388, size: 7296, elements: !978)
!978 = !{!979, !2234}
!979 = !DIDerivedType(tag: DW_TAG_member, scope: !977, file: !724, line: 389, baseType: !980, size: 7296)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !977, file: !724, line: 389, size: 7296, elements: !981)
!981 = !{!982, !1020, !1021, !1022, !1026, !1027, !1028, !1029, !1030, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1071, !1079, !1082, !1128, !1129, !2218, !2219, !2222, !2223, !2224, !2227, !2228, !2229, !2232, !2233}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !980, file: !724, line: 390, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !724, line: 305, size: 1472, elements: !985)
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !1000, !1001, !1006, !1007, !1010, !1014, !1015, !1016, !1017, !1018}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !984, file: !724, line: 308, baseType: !327, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !984, file: !724, line: 309, baseType: !327, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !984, file: !724, line: 313, baseType: !983, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !984, file: !724, line: 313, baseType: !983, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !984, file: !724, line: 315, baseType: !762, size: 192, align: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !984, file: !724, line: 323, baseType: !327, size: 64, offset: 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !984, file: !724, line: 327, baseType: !976, size: 64, offset: 512)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !984, file: !724, line: 333, baseType: !994, size: 64, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !714, line: 284, baseType: !995)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !714, line: 284, size: 64, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !995, file: !714, line: 284, baseType: !998, size: 64)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !999, line: 19, baseType: !327)
!999 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !984, file: !724, line: 334, baseType: !327, size: 64, offset: 640)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !984, file: !724, line: 343, baseType: !1002, size: 256, offset: 704)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !984, file: !724, line: 340, size: 256, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1002, file: !724, line: 341, baseType: !762, size: 192, align: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1002, file: !724, line: 342, baseType: !327, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !984, file: !724, line: 351, baseType: !192, size: 128, offset: 960)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !984, file: !724, line: 353, baseType: !1008, size: 64, offset: 1088)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !724, line: 353, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !984, file: !724, line: 356, baseType: !1011, size: 64, offset: 1152)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !724, line: 356, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !984, file: !724, line: 359, baseType: !327, size: 64, offset: 1216)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !984, file: !724, line: 361, baseType: !355, size: 64, offset: 1280)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !984, file: !724, line: 362, baseType: !92, size: 64, offset: 1344)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !984, file: !724, line: 365, baseType: !773, size: 64, offset: 1408)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !984, file: !724, line: 373, baseType: !1019, offset: 1472)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !724, line: 296, elements: !123)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !980, file: !724, line: 391, baseType: !758, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !980, file: !724, line: 392, baseType: !422, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !980, file: !724, line: 394, baseType: !1023, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!327, !355, !327, !327, !327, !327}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !980, file: !724, line: 398, baseType: !327, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !980, file: !724, line: 399, baseType: !327, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !980, file: !724, line: 405, baseType: !327, size: 64, offset: 384)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !980, file: !724, line: 406, baseType: !327, size: 64, offset: 448)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !980, file: !724, line: 407, baseType: !1031, size: 64, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !714, line: 286, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !714, line: 286, size: 64, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1033, file: !714, line: 286, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !999, line: 18, baseType: !327)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !980, file: !724, line: 416, baseType: !749, size: 32, offset: 576)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !980, file: !724, line: 428, baseType: !749, size: 32, offset: 608)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !980, file: !724, line: 437, baseType: !749, size: 32, offset: 640)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !980, file: !724, line: 447, baseType: !749, size: 32, offset: 672)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !980, file: !724, line: 450, baseType: !773, size: 64, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !980, file: !724, line: 452, baseType: !93, size: 32, offset: 768)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !980, file: !724, line: 454, baseType: !162, offset: 800)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !980, file: !724, line: 457, baseType: !769, size: 256, offset: 832)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !980, file: !724, line: 459, baseType: !192, size: 128, offset: 1088)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !980, file: !724, line: 466, baseType: !327, size: 64, offset: 1216)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !980, file: !724, line: 467, baseType: !327, size: 64, offset: 1280)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !980, file: !724, line: 469, baseType: !327, size: 64, offset: 1344)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !980, file: !724, line: 470, baseType: !327, size: 64, offset: 1408)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !980, file: !724, line: 471, baseType: !775, size: 64, offset: 1472)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !980, file: !724, line: 472, baseType: !327, size: 64, offset: 1536)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !980, file: !724, line: 473, baseType: !327, size: 64, offset: 1600)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !980, file: !724, line: 474, baseType: !327, size: 64, offset: 1664)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !980, file: !724, line: 475, baseType: !327, size: 64, offset: 1728)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !980, file: !724, line: 477, baseType: !162, offset: 1792)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !980, file: !724, line: 478, baseType: !327, size: 64, offset: 1792)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !980, file: !724, line: 478, baseType: !327, size: 64, offset: 1856)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !980, file: !724, line: 478, baseType: !327, size: 64, offset: 1920)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !980, file: !724, line: 478, baseType: !327, size: 64, offset: 1984)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !980, file: !724, line: 479, baseType: !327, size: 64, offset: 2048)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !980, file: !724, line: 479, baseType: !327, size: 64, offset: 2112)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !980, file: !724, line: 479, baseType: !327, size: 64, offset: 2176)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !980, file: !724, line: 480, baseType: !327, size: 64, offset: 2240)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !980, file: !724, line: 480, baseType: !327, size: 64, offset: 2304)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !980, file: !724, line: 480, baseType: !327, size: 64, offset: 2368)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !980, file: !724, line: 480, baseType: !327, size: 64, offset: 2432)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !980, file: !724, line: 482, baseType: !1068, size: 2816, offset: 2496)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 2816, elements: !1069)
!1069 = !{!1070}
!1070 = !DISubrange(count: 44)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !980, file: !724, line: 488, baseType: !1072, size: 256, offset: 5312)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1073, line: 60, size: 256, elements: !1074)
!1073 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1072, file: !1073, line: 61, baseType: !1076, size: 256)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !773, size: 256, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 4)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !980, file: !724, line: 490, baseType: !1080, size: 64, offset: 5568)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !724, line: 490, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !980, file: !724, line: 493, baseType: !1083, size: 896, offset: 5632)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1084, line: 53, baseType: !1085)
!1084 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1084, line: 13, size: 896, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1093, !1094, !1101, !1102, !1122, !1123, !1124}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1085, file: !1084, line: 18, baseType: !422, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1085, file: !1084, line: 28, baseType: !775, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1085, file: !1084, line: 31, baseType: !769, size: 256, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1085, file: !1084, line: 32, baseType: !1091, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1084, line: 32, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1085, file: !1084, line: 37, baseType: !319, size: 16, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1085, file: !1084, line: 40, baseType: !1095, size: 192, offset: 512)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1096, line: 53, size: 192, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !{!1098, !1099, !1100}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1095, file: !1096, line: 54, baseType: !773, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1095, file: !1096, line: 55, baseType: !162, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1095, file: !1096, line: 59, baseType: !192, size: 128, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1085, file: !1084, line: 41, baseType: !92, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1085, file: !1084, line: 42, baseType: !1103, size: 64, offset: 768)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1106, line: 13, size: 896, elements: !1107)
!1106 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1105, file: !1106, line: 14, baseType: !92, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1105, file: !1106, line: 15, baseType: !327, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1105, file: !1106, line: 17, baseType: !327, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1105, file: !1106, line: 17, baseType: !327, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1105, file: !1106, line: 19, baseType: !94, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1105, file: !1106, line: 21, baseType: !94, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1105, file: !1106, line: 22, baseType: !94, size: 64, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1105, file: !1106, line: 23, baseType: !94, size: 64, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1105, file: !1106, line: 24, baseType: !94, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1105, file: !1106, line: 25, baseType: !94, size: 64, offset: 576)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1105, file: !1106, line: 26, baseType: !94, size: 64, offset: 640)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1105, file: !1106, line: 27, baseType: !94, size: 64, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1105, file: !1106, line: 28, baseType: !94, size: 64, offset: 768)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1105, file: !1106, line: 29, baseType: !94, size: 64, offset: 832)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1085, file: !1084, line: 44, baseType: !749, size: 32, offset: 832)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1085, file: !1084, line: 50, baseType: !861, size: 16, offset: 864)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1085, file: !1084, line: 51, baseType: !1125, size: 16, offset: 880)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !119, line: 18, baseType: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !121, line: 23, baseType: !1127)
!1127 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !724, line: 495, baseType: !327, size: 64, offset: 6528)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !980, file: !724, line: 497, baseType: !1130, size: 64, offset: 6592)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !724, line: 381, size: 384, elements: !1132)
!1132 = !{!1133, !1134, !2217}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1131, file: !724, line: 382, baseType: !749, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1131, file: !724, line: 383, baseType: !1135, size: 128, offset: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !724, line: 376, size: 128, elements: !1136)
!1136 = !{!1137, !2215}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1135, file: !724, line: 377, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1140, line: 640, size: 48640, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1141 = !{!1142, !1148, !1150, !1151, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1168, !1186, !1197, !1280, !1281, !1282, !1293, !1294, !1296, !1297, !1298, !1299, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1378, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1416, !1418, !1419, !1420, !1432, !1433, !1434, !1435, !1436, !1437, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1461, !1466, !1648, !1649, !1650, !1651, !1655, !1658, !1661, !1664, !1667, !1671, !1772, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1818, !1819, !1820, !1821, !1822, !1827, !1828, !1829, !1832, !1833, !1836, !1839, !1842, !1845, !1888, !1891, !1892, !1971, !1972, !1975, !1976, !1979, !1980, !1981, !1985, !1986, !1987, !2000, !2001, !2002, !2012, !2017, !2020, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1139, file: !1140, line: 646, baseType: !1143, size: 128)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1144, line: 56, size: 128, elements: !1145)
!1144 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !1144, line: 57, baseType: !327, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1143, file: !1144, line: 58, baseType: !418, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1139, file: !1140, line: 649, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1139, file: !1140, line: 657, baseType: !92, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1139, file: !1140, line: 658, baseType: !1152, size: 32, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1153, line: 113, baseType: !1154)
!1153 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1153, line: 111, size: 32, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1154, file: !1153, line: 112, baseType: !749, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !1140, line: 660, baseType: !7, size: 32, offset: 288)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1139, file: !1140, line: 661, baseType: !7, size: 32, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1139, file: !1140, line: 684, baseType: !93, size: 32, offset: 352)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1139, file: !1140, line: 686, baseType: !93, size: 32, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1139, file: !1140, line: 687, baseType: !93, size: 32, offset: 416)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1139, file: !1140, line: 688, baseType: !93, size: 32, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1139, file: !1140, line: 689, baseType: !7, size: 32, offset: 480)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1139, file: !1140, line: 691, baseType: !1165, size: 64, offset: 512)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1167)
!1167 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1140, line: 691, flags: DIFlagFwdDecl)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1139, file: !1140, line: 692, baseType: !1169, size: 832, offset: 576)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1140, line: 451, size: 832, elements: !1170)
!1170 = !{!1171, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1169, file: !1140, line: 453, baseType: !1172, size: 128)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1140, line: 325, size: 128, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1172, file: !1140, line: 326, baseType: !327, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1172, file: !1140, line: 327, baseType: !418, size: 32, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1169, file: !1140, line: 454, baseType: !762, size: 192, align: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1169, file: !1140, line: 455, baseType: !192, size: 128, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1169, file: !1140, line: 456, baseType: !7, size: 32, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1169, file: !1140, line: 458, baseType: !422, size: 64, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1169, file: !1140, line: 459, baseType: !422, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1169, file: !1140, line: 460, baseType: !422, size: 64, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1169, file: !1140, line: 461, baseType: !422, size: 64, offset: 704)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1169, file: !1140, line: 463, baseType: !422, size: 64, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1169, file: !1140, line: 465, baseType: !1185, offset: 832)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1140, line: 415, elements: !123)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1139, file: !1140, line: 693, baseType: !1187, size: 384, offset: 1408)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1140, line: 489, size: 384, elements: !1188)
!1188 = !{!1189, !1190, !1191, !1192, !1193, !1194, !1195}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1187, file: !1140, line: 490, baseType: !192, size: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1187, file: !1140, line: 491, baseType: !327, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1187, file: !1140, line: 492, baseType: !327, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1187, file: !1140, line: 493, baseType: !7, size: 32, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1187, file: !1140, line: 494, baseType: !319, size: 16, offset: 288)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1187, file: !1140, line: 495, baseType: !319, size: 16, offset: 304)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1187, file: !1140, line: 497, baseType: !1196, size: 64, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1139, file: !1140, line: 697, baseType: !1198, size: 1792, offset: 1792)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1140, line: 507, size: 1792, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1277, !1278}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1198, file: !1140, line: 508, baseType: !762, size: 192, align: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1198, file: !1140, line: 515, baseType: !422, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1198, file: !1140, line: 516, baseType: !422, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1198, file: !1140, line: 517, baseType: !422, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1198, file: !1140, line: 518, baseType: !422, size: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1198, file: !1140, line: 519, baseType: !422, size: 64, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1198, file: !1140, line: 526, baseType: !779, size: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1198, file: !1140, line: 527, baseType: !422, size: 64, offset: 576)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1198, file: !1140, line: 528, baseType: !7, size: 32, offset: 640)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1198, file: !1140, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1198, file: !1140, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1198, file: !1140, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1198, file: !1140, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1198, file: !1140, line: 563, baseType: !1214, size: 512, offset: 704)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1215)
!1215 = !{!1216, !1224, !1225, !1230, !1273, !1274, !1275, !1276}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1214, file: !20, line: 119, baseType: !1217, size: 256)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1218, line: 9, size: 256, elements: !1219)
!1218 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1217, file: !1218, line: 10, baseType: !762, size: 192, align: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1217, file: !1218, line: 11, baseType: !1222, size: 64, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1223, line: 29, baseType: !779)
!1223 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1214, file: !20, line: 120, baseType: !1222, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1214, file: !20, line: 121, baseType: !1226, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!19, !1229}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1214, file: !20, line: 122, baseType: !1231, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1233)
!1233 = !{!1234, !1254, !1255, !1258, !1263, !1264, !1268, !1272}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1232, file: !20, line: 160, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1236, file: !20, line: 215, baseType: !782)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1236, file: !20, line: 216, baseType: !7, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1236, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1236, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1236, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1236, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1236, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1236, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1236, file: !20, line: 233, baseType: !1222, size: 64, offset: 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1236, file: !20, line: 234, baseType: !1229, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1236, file: !20, line: 235, baseType: !1222, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1236, file: !20, line: 236, baseType: !1229, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1236, file: !20, line: 237, baseType: !1251, size: 4096, offset: 512)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 4096, elements: !1252)
!1252 = !{!1253}
!1253 = !DISubrange(count: 8)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1232, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1232, file: !20, line: 162, baseType: !1256, size: 32, offset: 96)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !116, line: 27, baseType: !1257)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !311, line: 96, baseType: !93)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1232, file: !20, line: 163, baseType: !1259, size: 32, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !391, line: 276, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !391, line: 276, size: 32, elements: !1261)
!1261 = !{!1262}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1260, file: !391, line: 276, baseType: !395, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1232, file: !20, line: 164, baseType: !1229, size: 64, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1232, file: !20, line: 165, baseType: !1265, size: 128, offset: 256)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1218, line: 14, size: 128, elements: !1266)
!1266 = !{!1267}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1265, file: !1218, line: 15, baseType: !754, size: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1232, file: !20, line: 166, baseType: !1269, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!1222}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1232, file: !20, line: 167, baseType: !1222, size: 64, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1214, file: !20, line: 123, baseType: !118, size: 8, offset: 448)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1214, file: !20, line: 124, baseType: !118, size: 8, offset: 456)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1214, file: !20, line: 125, baseType: !118, size: 8, offset: 464)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1214, file: !20, line: 126, baseType: !118, size: 8, offset: 472)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1198, file: !1140, line: 572, baseType: !1214, size: 512, offset: 1216)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1198, file: !1140, line: 580, baseType: !1279, size: 64, offset: 1728)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1139, file: !1140, line: 721, baseType: !7, size: 32, offset: 3584)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1139, file: !1140, line: 722, baseType: !93, size: 32, offset: 3616)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1139, file: !1140, line: 723, baseType: !1283, size: 64, offset: 3648)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1286, line: 17, baseType: !1287)
!1286 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1286, line: 17, size: 64, elements: !1288)
!1288 = !{!1289}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1287, file: !1286, line: 17, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 64, elements: !1291)
!1291 = !{!1292}
!1292 = !DISubrange(count: 1)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1139, file: !1140, line: 724, baseType: !1285, size: 64, offset: 3712)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1139, file: !1140, line: 749, baseType: !1295, offset: 3776)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1140, line: 290, elements: !123)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1139, file: !1140, line: 751, baseType: !192, size: 128, offset: 3776)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1139, file: !1140, line: 757, baseType: !976, size: 64, offset: 3904)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1139, file: !1140, line: 758, baseType: !976, size: 64, offset: 3968)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1139, file: !1140, line: 761, baseType: !1300, size: 320, offset: 4032)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1073, line: 34, size: 320, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1300, file: !1073, line: 35, baseType: !422, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1300, file: !1073, line: 36, baseType: !1304, size: 256, offset: 64)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 256, elements: !1077)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1139, file: !1140, line: 766, baseType: !93, size: 32, offset: 4352)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1139, file: !1140, line: 767, baseType: !93, size: 32, offset: 4384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1139, file: !1140, line: 768, baseType: !93, size: 32, offset: 4416)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1139, file: !1140, line: 770, baseType: !93, size: 32, offset: 4448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1139, file: !1140, line: 772, baseType: !327, size: 64, offset: 4480)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1139, file: !1140, line: 775, baseType: !7, size: 32, offset: 4544)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1139, file: !1140, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1139, file: !1140, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1139, file: !1140, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1139, file: !1140, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1139, file: !1140, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1139, file: !1140, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1139, file: !1140, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1139, file: !1140, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1139, file: !1140, line: 831, baseType: !327, size: 64, offset: 4672)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1139, file: !1140, line: 833, baseType: !1321, size: 384, offset: 4736)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1322)
!1322 = !{!1323, !1328}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1321, file: !25, line: 26, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!94, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !25, line: 27, baseType: !1329, size: 320, offset: 64)
!1329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1321, file: !25, line: 27, size: 320, elements: !1330)
!1330 = !{!1331, !1341, !1368}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1329, file: !25, line: 36, baseType: !1332, size: 320)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1329, file: !25, line: 29, size: 320, elements: !1333)
!1333 = !{!1334, !1336, !1337, !1338, !1339, !1340}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1332, file: !25, line: 30, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1332, file: !25, line: 31, baseType: !418, size: 32, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1332, file: !25, line: 32, baseType: !418, size: 32, offset: 96)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1332, file: !25, line: 33, baseType: !418, size: 32, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1332, file: !25, line: 34, baseType: !422, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1332, file: !25, line: 35, baseType: !1335, size: 64, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1329, file: !25, line: 46, baseType: !1342, size: 192)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1329, file: !25, line: 38, size: 192, elements: !1343)
!1343 = !{!1344, !1345, !1346, !1367}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1342, file: !25, line: 39, baseType: !1256, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1342, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !25, line: 41, baseType: !1347, size: 64, offset: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1342, file: !25, line: 41, size: 64, elements: !1348)
!1348 = !{!1349, !1357}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1347, file: !25, line: 42, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1352, line: 7, size: 128, elements: !1353)
!1352 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1353 = !{!1354, !1356}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1351, file: !1352, line: 8, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !311, line: 93, baseType: !531)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1351, file: !1352, line: 9, baseType: !531, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1347, file: !25, line: 43, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1360, line: 7, size: 64, elements: !1361)
!1360 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1361 = !{!1362, !1366}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1359, file: !1360, line: 8, baseType: !1363, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1360, line: 5, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !119, line: 20, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !121, line: 26, baseType: !93)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1359, file: !1360, line: 9, baseType: !1364, size: 32, offset: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1342, file: !25, line: 45, baseType: !422, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1329, file: !25, line: 54, baseType: !1369, size: 256)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1329, file: !25, line: 48, size: 256, elements: !1370)
!1370 = !{!1371, !1374, !1375, !1376, !1377}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1369, file: !25, line: 49, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1369, file: !25, line: 50, baseType: !93, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1369, file: !25, line: 51, baseType: !93, size: 32, offset: 96)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1369, file: !25, line: 52, baseType: !327, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1369, file: !25, line: 53, baseType: !327, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1139, file: !1140, line: 835, baseType: !1379, size: 32, offset: 5120)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !116, line: 22, baseType: !1380)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !311, line: 28, baseType: !93)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1139, file: !1140, line: 836, baseType: !1379, size: 32, offset: 5152)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1139, file: !1140, line: 840, baseType: !327, size: 64, offset: 5184)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1139, file: !1140, line: 849, baseType: !1138, size: 64, offset: 5248)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1139, file: !1140, line: 852, baseType: !1138, size: 64, offset: 5312)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1139, file: !1140, line: 857, baseType: !192, size: 128, offset: 5376)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1139, file: !1140, line: 858, baseType: !192, size: 128, offset: 5504)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1139, file: !1140, line: 859, baseType: !1138, size: 64, offset: 5632)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1139, file: !1140, line: 867, baseType: !192, size: 128, offset: 5696)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1139, file: !1140, line: 868, baseType: !192, size: 128, offset: 5824)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1139, file: !1140, line: 871, baseType: !1391, size: 64, offset: 5952)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1399, !1400, !1407, !1408}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1392, file: !46, line: 61, baseType: !1152, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1392, file: !46, line: 62, baseType: !7, size: 32, offset: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1392, file: !46, line: 63, baseType: !162, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1392, file: !46, line: 65, baseType: !1398, size: 256, offset: 64)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !636, size: 256, elements: !1077)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1392, file: !46, line: 66, baseType: !636, size: 64, offset: 320)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1392, file: !46, line: 68, baseType: !1401, size: 128, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1402, line: 40, baseType: !1403)
!1402 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1402, line: 36, size: 128, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1403, file: !1402, line: 37, baseType: !162)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1403, file: !1402, line: 38, baseType: !192, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1392, file: !46, line: 69, baseType: !368, size: 128, align: 64, offset: 512)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1392, file: !46, line: 70, baseType: !1409, size: 128, offset: 640)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1410, size: 128, elements: !1291)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1411)
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1410, file: !46, line: 55, baseType: !93, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1410, file: !46, line: 56, baseType: !1414, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1139, file: !1140, line: 872, baseType: !1417, size: 512, offset: 6016)
!1417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 512, elements: !1077)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1139, file: !1140, line: 873, baseType: !192, size: 128, offset: 6528)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1139, file: !1140, line: 874, baseType: !192, size: 128, offset: 6656)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1139, file: !1140, line: 876, baseType: !1421, size: 64, offset: 6784)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1423, line: 26, size: 192, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1422, file: !1423, line: 27, baseType: !7, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1422, file: !1423, line: 28, baseType: !1427, size: 128, offset: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1428, line: 43, size: 128, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1427, file: !1428, line: 44, baseType: !782)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1427, file: !1428, line: 45, baseType: !192, size: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1139, file: !1140, line: 879, baseType: !706, size: 64, offset: 6848)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1139, file: !1140, line: 882, baseType: !706, size: 64, offset: 6912)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1139, file: !1140, line: 884, baseType: !422, size: 64, offset: 6976)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1139, file: !1140, line: 885, baseType: !422, size: 64, offset: 7040)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1139, file: !1140, line: 890, baseType: !422, size: 64, offset: 7104)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1139, file: !1140, line: 891, baseType: !1438, size: 128, offset: 7168)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1140, line: 242, size: 128, elements: !1439)
!1439 = !{!1440, !1441, !1442}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1438, file: !1140, line: 244, baseType: !422, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1438, file: !1140, line: 245, baseType: !422, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !1140, line: 246, baseType: !782, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1139, file: !1140, line: 900, baseType: !327, size: 64, offset: 7296)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1139, file: !1140, line: 901, baseType: !327, size: 64, offset: 7360)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1139, file: !1140, line: 904, baseType: !422, size: 64, offset: 7424)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1139, file: !1140, line: 907, baseType: !422, size: 64, offset: 7488)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1139, file: !1140, line: 910, baseType: !327, size: 64, offset: 7552)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1139, file: !1140, line: 911, baseType: !327, size: 64, offset: 7616)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1139, file: !1140, line: 914, baseType: !1450, size: 640, offset: 7680)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1451, line: 123, size: 640, elements: !1452)
!1451 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !{!1453, !1459, !1460}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1450, file: !1451, line: 124, baseType: !1454, size: 576)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1455, size: 576, elements: !279)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1451, line: 108, size: 192, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1455, file: !1451, line: 109, baseType: !422, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1455, file: !1451, line: 110, baseType: !1265, size: 128, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1450, file: !1451, line: 125, baseType: !7, size: 32, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1450, file: !1451, line: 126, baseType: !7, size: 32, offset: 608)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1139, file: !1140, line: 917, baseType: !1462, size: 192, offset: 8320)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1451, line: 134, size: 192, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1462, file: !1451, line: 135, baseType: !368, size: 128, align: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1462, file: !1451, line: 136, baseType: !7, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1139, file: !1140, line: 923, baseType: !1467, size: 64, offset: 8512)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1470, line: 111, size: 1280, elements: !1471)
!1470 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1491, !1492, !1493, !1494, !1495, !1496, !1601, !1602, !1603, !1604, !1630, !1633, !1643}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1469, file: !1470, line: 112, baseType: !749, size: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1469, file: !1470, line: 120, baseType: !435, size: 32, offset: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1469, file: !1470, line: 121, baseType: !443, size: 32, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1469, file: !1470, line: 122, baseType: !435, size: 32, offset: 96)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1469, file: !1470, line: 123, baseType: !443, size: 32, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1469, file: !1470, line: 124, baseType: !435, size: 32, offset: 160)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1469, file: !1470, line: 125, baseType: !443, size: 32, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1469, file: !1470, line: 126, baseType: !435, size: 32, offset: 224)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1469, file: !1470, line: 127, baseType: !443, size: 32, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1469, file: !1470, line: 128, baseType: !7, size: 32, offset: 288)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1469, file: !1470, line: 129, baseType: !1483, size: 64, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1484, line: 26, baseType: !1485)
!1484 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1484, line: 24, size: 64, elements: !1486)
!1486 = !{!1487}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1485, file: !1484, line: 25, baseType: !1488, size: 64)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 64, elements: !1489)
!1489 = !{!1490}
!1490 = !DISubrange(count: 2)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1469, file: !1470, line: 130, baseType: !1483, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1469, file: !1470, line: 131, baseType: !1483, size: 64, offset: 448)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1469, file: !1470, line: 132, baseType: !1483, size: 64, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1469, file: !1470, line: 133, baseType: !1483, size: 64, offset: 576)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1469, file: !1470, line: 135, baseType: !122, size: 8, offset: 640)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1469, file: !1470, line: 137, baseType: !1497, size: 64, offset: 704)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1499, line: 189, size: 1664, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1500 = !{!1501, !1502, !1505, !1510, !1511, !1514, !1515, !1520, !1521, !1522, !1523, !1525, !1526, !1527, !1528, !1529, !1565, !1586}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1498, file: !1499, line: 190, baseType: !1152, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1498, file: !1499, line: 191, baseType: !1503, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1499, line: 28, baseType: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !116, line: 98, baseType: !1364)
!1505 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1499, line: 192, baseType: !1506, size: 192, offset: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1499, line: 192, size: 192, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1506, file: !1499, line: 193, baseType: !192, size: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1506, file: !1499, line: 194, baseType: !762, size: 192, align: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1498, file: !1499, line: 199, baseType: !769, size: 256, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1498, file: !1499, line: 200, baseType: !1512, size: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1499, line: 200, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1498, file: !1499, line: 201, baseType: !92, size: 64, offset: 576)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1499, line: 202, baseType: !1516, size: 64, offset: 640)
!1516 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1499, line: 202, size: 64, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1516, file: !1499, line: 203, baseType: !537, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1516, file: !1499, line: 204, baseType: !537, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1498, file: !1499, line: 206, baseType: !537, size: 64, offset: 704)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1498, file: !1499, line: 207, baseType: !435, size: 32, offset: 768)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1498, file: !1499, line: 208, baseType: !443, size: 32, offset: 800)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1498, file: !1499, line: 209, baseType: !1524, size: 32, offset: 832)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1499, line: 31, baseType: !557)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1498, file: !1499, line: 210, baseType: !319, size: 16, offset: 864)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1498, file: !1499, line: 211, baseType: !319, size: 16, offset: 880)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1498, file: !1499, line: 215, baseType: !1127, size: 16, offset: 896)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1498, file: !1499, line: 222, baseType: !327, size: 64, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1499, line: 239, baseType: !1530, size: 320, offset: 1024)
!1530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1499, line: 239, size: 320, elements: !1531)
!1531 = !{!1532, !1557}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1530, file: !1499, line: 240, baseType: !1533, size: 320)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1499, line: 108, size: 320, elements: !1534)
!1534 = !{!1535, !1536, !1546, !1549, !1556}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1533, file: !1499, line: 110, baseType: !327, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, scope: !1533, file: !1499, line: 111, baseType: !1537, size: 64, offset: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1533, file: !1499, line: 111, size: 64, elements: !1538)
!1538 = !{!1539, !1545}
!1539 = !DIDerivedType(tag: DW_TAG_member, scope: !1537, file: !1499, line: 112, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1537, file: !1499, line: 112, size: 64, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1540, file: !1499, line: 114, baseType: !861, size: 16)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1540, file: !1499, line: 115, baseType: !1544, size: 48, offset: 16)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 48, elements: !126)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1537, file: !1499, line: 121, baseType: !327, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1533, file: !1499, line: 123, baseType: !1547, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1499, line: 96, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1533, file: !1499, line: 124, baseType: !1550, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1499, line: 102, size: 192, elements: !1552)
!1552 = !{!1553, !1554, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1551, file: !1499, line: 103, baseType: !368, size: 128, align: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1551, file: !1499, line: 104, baseType: !1152, size: 32, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1551, file: !1499, line: 105, baseType: !115, size: 8, offset: 160)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1533, file: !1499, line: 125, baseType: !204, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, scope: !1530, file: !1499, line: 241, baseType: !1558, size: 320)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1530, file: !1499, line: 241, size: 320, elements: !1559)
!1559 = !{!1560, !1561, !1562, !1563, !1564}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1558, file: !1499, line: 242, baseType: !327, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1558, file: !1499, line: 243, baseType: !327, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1558, file: !1499, line: 244, baseType: !1547, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1558, file: !1499, line: 245, baseType: !1550, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1558, file: !1499, line: 246, baseType: !278, size: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !1499, line: 254, baseType: !1566, size: 256, offset: 1344)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1498, file: !1499, line: 254, size: 256, elements: !1567)
!1567 = !{!1568, !1574}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1566, file: !1499, line: 255, baseType: !1569, size: 256)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1499, line: 128, size: 256, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1569, file: !1499, line: 129, baseType: !92, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1569, file: !1499, line: 130, baseType: !1573, size: 256)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !1077)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !1499, line: 256, baseType: !1575, size: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1566, file: !1499, line: 256, size: 256, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1575, file: !1499, line: 258, baseType: !192, size: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1575, file: !1499, line: 259, baseType: !1579, size: 128, offset: 128)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1580, line: 22, size: 128, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !{!1582, !1585}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1579, file: !1580, line: 23, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1580, line: 23, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1579, file: !1580, line: 24, baseType: !327, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1498, file: !1499, line: 274, baseType: !1587, size: 64, offset: 1600)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1499, line: 170, size: 192, elements: !1589)
!1589 = !{!1590, !1599, !1600}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1588, file: !1499, line: 171, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1499, line: 165, baseType: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!93, !1497, !1595, !1597, !1497}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1588, file: !1499, line: 172, baseType: !1497, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1588, file: !1499, line: 173, baseType: !1547, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1469, file: !1470, line: 138, baseType: !1497, size: 64, offset: 768)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1469, file: !1470, line: 139, baseType: !1497, size: 64, offset: 832)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1469, file: !1470, line: 140, baseType: !1497, size: 64, offset: 896)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1469, file: !1470, line: 145, baseType: !1605, size: 64, offset: 960)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1607, line: 13, size: 896, elements: !1608)
!1607 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1606, file: !1607, line: 14, baseType: !1152, size: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1606, file: !1607, line: 15, baseType: !749, size: 32, offset: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1606, file: !1607, line: 16, baseType: !749, size: 32, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1606, file: !1607, line: 21, baseType: !773, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1606, file: !1607, line: 27, baseType: !327, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1606, file: !1607, line: 28, baseType: !327, size: 64, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1606, file: !1607, line: 29, baseType: !773, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1606, file: !1607, line: 32, baseType: !640, size: 128, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1606, file: !1607, line: 33, baseType: !435, size: 32, offset: 512)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1606, file: !1607, line: 37, baseType: !773, size: 64, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1606, file: !1607, line: 44, baseType: !1620, size: 256, offset: 640)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1621, line: 15, size: 256, elements: !1622)
!1621 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1622 = !{!1623, !1624, !1625, !1626, !1627, !1628, !1629}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1620, file: !1621, line: 16, baseType: !782)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1620, file: !1621, line: 18, baseType: !93, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1620, file: !1621, line: 19, baseType: !93, size: 32, offset: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1620, file: !1621, line: 20, baseType: !93, size: 32, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1620, file: !1621, line: 21, baseType: !93, size: 32, offset: 96)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1620, file: !1621, line: 22, baseType: !327, size: 64, offset: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1620, file: !1621, line: 23, baseType: !327, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1469, file: !1470, line: 146, baseType: !1631, size: 64, offset: 1024)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !436, line: 18, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1469, file: !1470, line: 147, baseType: !1634, size: 64, offset: 1088)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1470, line: 25, size: 64, elements: !1636)
!1636 = !{!1637, !1638, !1639}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1635, file: !1470, line: 26, baseType: !749, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1635, file: !1470, line: 27, baseType: !93, size: 32, offset: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1635, file: !1470, line: 28, baseType: !1640, offset: 64)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, elements: !1641)
!1641 = !{!1642}
!1642 = !DISubrange(count: 0)
!1643 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1470, line: 149, baseType: !1644, size: 128, offset: 1152)
!1644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1469, file: !1470, line: 149, size: 128, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1644, file: !1470, line: 150, baseType: !93, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1644, file: !1470, line: 151, baseType: !368, size: 128, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1139, file: !1140, line: 926, baseType: !1467, size: 64, offset: 8576)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1139, file: !1140, line: 929, baseType: !1467, size: 64, offset: 8640)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1139, file: !1140, line: 933, baseType: !1497, size: 64, offset: 8704)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1139, file: !1140, line: 943, baseType: !1652, size: 128, offset: 8768)
!1652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !1653)
!1653 = !{!1654}
!1654 = !DISubrange(count: 16)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1139, file: !1140, line: 945, baseType: !1656, size: 64, offset: 8896)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1140, line: 49, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1139, file: !1140, line: 956, baseType: !1659, size: 64, offset: 8960)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1140, line: 45, flags: DIFlagFwdDecl)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1139, file: !1140, line: 959, baseType: !1662, size: 64, offset: 9024)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1140, line: 959, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1139, file: !1140, line: 962, baseType: !1665, size: 64, offset: 9088)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1140, line: 66, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1139, file: !1140, line: 966, baseType: !1668, size: 64, offset: 9152)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1670, line: 35, flags: DIFlagFwdDecl)
!1670 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1139, file: !1140, line: 969, baseType: !1672, size: 64, offset: 9216)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1674, line: 82, size: 7296, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1711, !1720, !1721, !1723, !1724, !1725, !1728, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1758, !1759, !1766, !1767, !1768, !1769, !1770, !1771}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1673, file: !1674, line: 83, baseType: !1152, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1673, file: !1674, line: 84, baseType: !749, size: 32, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1673, file: !1674, line: 85, baseType: !93, size: 32, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1673, file: !1674, line: 86, baseType: !192, size: 128, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1673, file: !1674, line: 88, baseType: !1401, size: 128, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1673, file: !1674, line: 91, baseType: !1138, size: 64, offset: 384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1673, file: !1674, line: 94, baseType: !1683, size: 192, offset: 448)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1684, line: 30, size: 192, elements: !1685)
!1684 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1683, file: !1684, line: 31, baseType: !192, size: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1683, file: !1684, line: 32, baseType: !1688, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1689, line: 25, baseType: !1690)
!1689 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1689, line: 23, size: 64, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1690, file: !1689, line: 24, baseType: !1290, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1673, file: !1674, line: 97, baseType: !636, size: 64, offset: 640)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1673, file: !1674, line: 100, baseType: !93, size: 32, offset: 704)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1673, file: !1674, line: 106, baseType: !93, size: 32, offset: 736)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1673, file: !1674, line: 107, baseType: !1138, size: 64, offset: 768)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1673, file: !1674, line: 110, baseType: !93, size: 32, offset: 832)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1673, file: !1674, line: 111, baseType: !7, size: 32, offset: 864)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1673, file: !1674, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1673, file: !1674, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1673, file: !1674, line: 128, baseType: !93, size: 32, offset: 928)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1673, file: !1674, line: 129, baseType: !192, size: 128, offset: 960)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1673, file: !1674, line: 132, baseType: !1214, size: 512, offset: 1088)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1673, file: !1674, line: 133, baseType: !1222, size: 64, offset: 1600)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1673, file: !1674, line: 140, baseType: !1706, size: 256, offset: 1664)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1707, size: 256, elements: !1489)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1674, line: 38, size: 128, elements: !1708)
!1708 = !{!1709, !1710}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1707, file: !1674, line: 39, baseType: !422, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1707, file: !1674, line: 40, baseType: !422, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1673, file: !1674, line: 146, baseType: !1712, size: 192, offset: 1920)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1674, line: 66, size: 192, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1712, file: !1674, line: 67, baseType: !1715, size: 192)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1674, line: 47, size: 192, elements: !1716)
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1715, file: !1674, line: 48, baseType: !775, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1715, file: !1674, line: 49, baseType: !775, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1715, file: !1674, line: 50, baseType: !775, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1673, file: !1674, line: 150, baseType: !1450, size: 640, offset: 2112)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1673, file: !1674, line: 153, baseType: !1722, size: 256, offset: 2752)
!1722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 256, elements: !1077)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1673, file: !1674, line: 159, baseType: !1391, size: 64, offset: 3008)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1673, file: !1674, line: 162, baseType: !93, size: 32, offset: 3072)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1673, file: !1674, line: 164, baseType: !1726, size: 64, offset: 3136)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1674, line: 164, flags: DIFlagFwdDecl)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1673, file: !1674, line: 175, baseType: !1729, size: 32, offset: 3200)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !391, line: 805, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 798, size: 32, elements: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1730, file: !391, line: 803, baseType: !390, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1730, file: !391, line: 804, baseType: !162, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1673, file: !1674, line: 176, baseType: !422, size: 64, offset: 3264)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1673, file: !1674, line: 176, baseType: !422, size: 64, offset: 3328)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1673, file: !1674, line: 176, baseType: !422, size: 64, offset: 3392)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1673, file: !1674, line: 176, baseType: !422, size: 64, offset: 3456)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1673, file: !1674, line: 177, baseType: !422, size: 64, offset: 3520)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1673, file: !1674, line: 178, baseType: !422, size: 64, offset: 3584)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1673, file: !1674, line: 179, baseType: !1438, size: 128, offset: 3648)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1673, file: !1674, line: 180, baseType: !327, size: 64, offset: 3776)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1673, file: !1674, line: 180, baseType: !327, size: 64, offset: 3840)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1673, file: !1674, line: 180, baseType: !327, size: 64, offset: 3904)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1673, file: !1674, line: 180, baseType: !327, size: 64, offset: 3968)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1673, file: !1674, line: 181, baseType: !327, size: 64, offset: 4032)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1673, file: !1674, line: 181, baseType: !327, size: 64, offset: 4096)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1673, file: !1674, line: 181, baseType: !327, size: 64, offset: 4160)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1673, file: !1674, line: 181, baseType: !327, size: 64, offset: 4224)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1673, file: !1674, line: 182, baseType: !327, size: 64, offset: 4288)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1673, file: !1674, line: 182, baseType: !327, size: 64, offset: 4352)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1673, file: !1674, line: 182, baseType: !327, size: 64, offset: 4416)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1673, file: !1674, line: 182, baseType: !327, size: 64, offset: 4480)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1673, file: !1674, line: 183, baseType: !327, size: 64, offset: 4544)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1673, file: !1674, line: 183, baseType: !327, size: 64, offset: 4608)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1673, file: !1674, line: 184, baseType: !1756, offset: 4672)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1757, line: 12, elements: !123)
!1757 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1673, file: !1674, line: 192, baseType: !424, size: 64, offset: 4672)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1673, file: !1674, line: 203, baseType: !1760, size: 2048, offset: 4736)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, size: 2048, elements: !1653)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1762, line: 43, size: 128, elements: !1763)
!1762 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1761, file: !1762, line: 44, baseType: !326, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1761, file: !1762, line: 45, baseType: !326, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1673, file: !1674, line: 220, baseType: !115, size: 8, offset: 6784)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1673, file: !1674, line: 221, baseType: !1127, size: 16, offset: 6800)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1673, file: !1674, line: 222, baseType: !1127, size: 16, offset: 6816)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1673, file: !1674, line: 224, baseType: !976, size: 64, offset: 6848)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1673, file: !1674, line: 227, baseType: !1095, size: 192, offset: 6912)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1673, file: !1674, line: 233, baseType: !1095, size: 192, offset: 7104)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1139, file: !1140, line: 970, baseType: !1773, size: 64, offset: 9280)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1674, line: 20, size: 16576, elements: !1775)
!1775 = !{!1776, !1777, !1778, !1779}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1774, file: !1674, line: 21, baseType: !162)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1774, file: !1674, line: 22, baseType: !1152, size: 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1774, file: !1674, line: 23, baseType: !1401, size: 128, offset: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1774, file: !1674, line: 24, baseType: !1780, size: 16384, offset: 192)
!1780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1781, size: 16384, elements: !283)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1684, line: 49, size: 256, elements: !1782)
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1781, file: !1684, line: 50, baseType: !1784, size: 256)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1684, line: 35, size: 256, elements: !1785)
!1785 = !{!1786, !1793, !1794, !1800}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1784, file: !1684, line: 37, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1788, line: 19, baseType: !1789)
!1788 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1788, line: 18, baseType: !1791)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !93}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1784, file: !1684, line: 38, baseType: !327, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1784, file: !1684, line: 44, baseType: !1795, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1788, line: 22, baseType: !1796)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1788, line: 21, baseType: !1798)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1784, file: !1684, line: 46, baseType: !1688, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1139, file: !1140, line: 971, baseType: !1688, size: 64, offset: 9344)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1139, file: !1140, line: 972, baseType: !1688, size: 64, offset: 9408)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1139, file: !1140, line: 974, baseType: !1688, size: 64, offset: 9472)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1139, file: !1140, line: 975, baseType: !1683, size: 192, offset: 9536)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1139, file: !1140, line: 976, baseType: !327, size: 64, offset: 9728)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1139, file: !1140, line: 977, baseType: !324, size: 64, offset: 9792)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1139, file: !1140, line: 978, baseType: !7, size: 32, offset: 9856)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1139, file: !1140, line: 980, baseType: !371, size: 64, offset: 9920)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1139, file: !1140, line: 989, baseType: !1810, size: 128, offset: 9984)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1811, line: 35, size: 128, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1812 = !{!1813, !1814, !1815}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1810, file: !1811, line: 36, baseType: !93, size: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1810, file: !1811, line: 37, baseType: !749, size: 32, offset: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1810, file: !1811, line: 38, baseType: !1816, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1811, line: 23, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1139, file: !1140, line: 992, baseType: !422, size: 64, offset: 10112)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1139, file: !1140, line: 993, baseType: !422, size: 64, offset: 10176)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1139, file: !1140, line: 996, baseType: !162, offset: 10240)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1139, file: !1140, line: 999, baseType: !782, offset: 10240)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1139, file: !1140, line: 1001, baseType: !1823, size: 64, offset: 10240)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1140, line: 636, size: 64, elements: !1824)
!1824 = !{!1825}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1823, file: !1140, line: 637, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1139, file: !1140, line: 1005, baseType: !754, size: 128, offset: 10304)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1139, file: !1140, line: 1007, baseType: !1138, size: 64, offset: 10432)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1139, file: !1140, line: 1009, baseType: !1830, size: 64, offset: 10496)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1140, line: 1009, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1139, file: !1140, line: 1043, baseType: !92, size: 64, offset: 10560)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1139, file: !1140, line: 1046, baseType: !1834, size: 64, offset: 10624)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1140, line: 41, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1139, file: !1140, line: 1050, baseType: !1837, size: 64, offset: 10688)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1140, line: 42, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1139, file: !1140, line: 1054, baseType: !1840, size: 64, offset: 10752)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1140, line: 55, flags: DIFlagFwdDecl)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1139, file: !1140, line: 1056, baseType: !1843, size: 64, offset: 10816)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1140, line: 40, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1139, file: !1140, line: 1058, baseType: !1846, size: 64, offset: 10880)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1848, line: 99, size: 704, elements: !1849)
!1848 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855, !1856, !1875, !1876}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1847, file: !1848, line: 100, baseType: !773, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1847, file: !1848, line: 101, baseType: !749, size: 32, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1847, file: !1848, line: 102, baseType: !749, size: 32, offset: 96)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1847, file: !1848, line: 105, baseType: !162, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1847, file: !1848, line: 107, baseType: !319, size: 16, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1847, file: !1848, line: 109, baseType: !740, size: 128, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1847, file: !1848, line: 110, baseType: !1857, size: 64, offset: 320)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1848, line: 73, size: 448, elements: !1859)
!1859 = !{!1860, !1863, !1864, !1869, !1874}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1858, file: !1848, line: 74, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1848, line: 74, flags: DIFlagFwdDecl)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1858, file: !1848, line: 75, baseType: !1846, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1848, line: 83, baseType: !1865, size: 128, offset: 128)
!1865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1848, line: 83, size: 128, elements: !1866)
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1865, file: !1848, line: 84, baseType: !192, size: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1865, file: !1848, line: 85, baseType: !937, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1848, line: 87, baseType: !1870, size: 128, offset: 256)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1848, line: 87, size: 128, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1870, file: !1848, line: 88, baseType: !640, size: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1870, file: !1848, line: 89, baseType: !368, size: 128, align: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1858, file: !1848, line: 92, baseType: !7, size: 32, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1847, file: !1848, line: 111, baseType: !636, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1847, file: !1848, line: 113, baseType: !1877, size: 256, offset: 448)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1878, line: 102, size: 256, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1879 = !{!1880, !1881, !1882}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1877, file: !1878, line: 103, baseType: !773, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1877, file: !1878, line: 104, baseType: !192, size: 128, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1877, file: !1878, line: 105, baseType: !1883, size: 64, offset: 192)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1878, line: 21, baseType: !1884)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !1887}
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1139, file: !1140, line: 1061, baseType: !1889, size: 64, offset: 10944)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1140, line: 43, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1139, file: !1140, line: 1064, baseType: !327, size: 64, offset: 11008)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1139, file: !1140, line: 1065, baseType: !1893, size: 64, offset: 11072)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1684, line: 14, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1684, line: 12, size: 384, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1895, file: !1684, line: 13, baseType: !1898, size: 384)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1895, file: !1684, line: 13, size: 384, elements: !1899)
!1899 = !{!1900, !1901, !1902, !1903}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1898, file: !1684, line: 13, baseType: !93, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1898, file: !1684, line: 13, baseType: !93, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1898, file: !1684, line: 13, baseType: !93, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1898, file: !1684, line: 13, baseType: !1904, size: 256, offset: 128)
!1904 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1905, line: 32, size: 256, elements: !1906)
!1905 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1906 = !{!1907, !1912, !1925, !1931, !1940, !1960, !1965}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1904, file: !1905, line: 37, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 34, size: 64, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1908, file: !1905, line: 35, baseType: !1380, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1908, file: !1905, line: 36, baseType: !441, size: 32, offset: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1904, file: !1905, line: 45, baseType: !1913, size: 192)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 40, size: 192, elements: !1914)
!1914 = !{!1915, !1917, !1918, !1924}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1913, file: !1905, line: 41, baseType: !1916, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !311, line: 95, baseType: !93)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1913, file: !1905, line: 42, baseType: !93, size: 32, offset: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1913, file: !1905, line: 43, baseType: !1919, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1905, line: 11, baseType: !1920)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1905, line: 8, size: 64, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1920, file: !1905, line: 9, baseType: !93, size: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1920, file: !1905, line: 10, baseType: !92, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1913, file: !1905, line: 44, baseType: !93, size: 32, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1904, file: !1905, line: 52, baseType: !1926, size: 128)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 48, size: 128, elements: !1927)
!1927 = !{!1928, !1929, !1930}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1926, file: !1905, line: 49, baseType: !1380, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1926, file: !1905, line: 50, baseType: !441, size: 32, offset: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1926, file: !1905, line: 51, baseType: !1919, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1904, file: !1905, line: 61, baseType: !1932, size: 256)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 55, size: 256, elements: !1933)
!1933 = !{!1934, !1935, !1936, !1937, !1939}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1932, file: !1905, line: 56, baseType: !1380, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1932, file: !1905, line: 57, baseType: !441, size: 32, offset: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1932, file: !1905, line: 58, baseType: !93, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1932, file: !1905, line: 59, baseType: !1938, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !311, line: 94, baseType: !312)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1932, file: !1905, line: 60, baseType: !1938, size: 64, offset: 192)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1904, file: !1905, line: 95, baseType: !1941, size: 256)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 64, size: 256, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1941, file: !1905, line: 65, baseType: !92, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, scope: !1941, file: !1905, line: 77, baseType: !1945, size: 192, offset: 64)
!1945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1941, file: !1905, line: 77, size: 192, elements: !1946)
!1946 = !{!1947, !1948, !1955}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1945, file: !1905, line: 82, baseType: !1127, size: 16)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1945, file: !1905, line: 88, baseType: !1949, size: 192)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1905, line: 84, size: 192, elements: !1950)
!1950 = !{!1951, !1953, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1949, file: !1905, line: 85, baseType: !1952, size: 64)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !1252)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1949, file: !1905, line: 86, baseType: !92, size: 64, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1949, file: !1905, line: 87, baseType: !92, size: 64, offset: 128)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1945, file: !1905, line: 93, baseType: !1956, size: 96)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1905, line: 90, size: 96, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1956, file: !1905, line: 91, baseType: !1952, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1956, file: !1905, line: 92, baseType: !419, size: 32, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1904, file: !1905, line: 101, baseType: !1961, size: 128)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 98, size: 128, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1961, file: !1905, line: 99, baseType: !94, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1961, file: !1905, line: 100, baseType: !93, size: 32, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1904, file: !1905, line: 108, baseType: !1966, size: 128)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1904, file: !1905, line: 104, size: 128, elements: !1967)
!1967 = !{!1968, !1969, !1970}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1966, file: !1905, line: 105, baseType: !92, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1966, file: !1905, line: 106, baseType: !93, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1966, file: !1905, line: 107, baseType: !7, size: 32, offset: 96)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1139, file: !1140, line: 1067, baseType: !1756, offset: 11136)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1139, file: !1140, line: 1099, baseType: !1973, size: 64, offset: 11136)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1140, line: 56, flags: DIFlagFwdDecl)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1139, file: !1140, line: 1103, baseType: !192, size: 128, offset: 11200)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1139, file: !1140, line: 1104, baseType: !1977, size: 64, offset: 11328)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1140, line: 46, flags: DIFlagFwdDecl)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1139, file: !1140, line: 1105, baseType: !1095, size: 192, offset: 11392)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1139, file: !1140, line: 1106, baseType: !7, size: 32, offset: 11584)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1139, file: !1140, line: 1109, baseType: !1982, size: 128, offset: 11648)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1983, size: 128, elements: !1489)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1140, line: 51, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1139, file: !1140, line: 1110, baseType: !1095, size: 192, offset: 11776)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1139, file: !1140, line: 1111, baseType: !192, size: 128, offset: 11968)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1139, file: !1140, line: 1173, baseType: !1988, size: 64, offset: 12096)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1990, line: 62, size: 256, align: 256, elements: !1991)
!1990 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !{!1992, !1993, !1994, !1999}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1989, file: !1990, line: 75, baseType: !419, size: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1989, file: !1990, line: 90, baseType: !419, size: 32, offset: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1989, file: !1990, line: 124, baseType: !1995, size: 64, offset: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1989, file: !1990, line: 109, size: 64, elements: !1996)
!1996 = !{!1997, !1998}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1995, file: !1990, line: 110, baseType: !423, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1995, file: !1990, line: 112, baseType: !423, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1989, file: !1990, line: 144, baseType: !419, size: 32, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1139, file: !1140, line: 1174, baseType: !418, size: 32, offset: 12160)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1139, file: !1140, line: 1179, baseType: !327, size: 64, offset: 12224)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1139, file: !1140, line: 1182, baseType: !2003, size: 128, offset: 12288)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1073, line: 76, size: 128, elements: !2004)
!2004 = !{!2005, !2010, !2011}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2003, file: !1073, line: 85, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2007, line: 7, size: 64, elements: !2008)
!2007 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2006, file: !2007, line: 12, baseType: !1287, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2003, file: !1073, line: 88, baseType: !115, size: 8, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2003, file: !1073, line: 95, baseType: !115, size: 8, offset: 72)
!2012 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !1140, line: 1184, baseType: !2013, size: 128, offset: 12416)
!2013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !1140, line: 1184, size: 128, elements: !2014)
!2014 = !{!2015, !2016}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2013, file: !1140, line: 1185, baseType: !1152, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2013, file: !1140, line: 1186, baseType: !368, size: 128, align: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1139, file: !1140, line: 1190, baseType: !2018, size: 64, offset: 12544)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1140, line: 53, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1139, file: !1140, line: 1192, baseType: !2021, size: 128, offset: 12608)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1073, line: 64, size: 128, elements: !2022)
!2022 = !{!2023, !2024, !2025}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2021, file: !1073, line: 65, baseType: !722, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2021, file: !1073, line: 67, baseType: !419, size: 32, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2021, file: !1073, line: 68, baseType: !419, size: 32, offset: 96)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1139, file: !1140, line: 1206, baseType: !93, size: 32, offset: 12736)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1139, file: !1140, line: 1207, baseType: !93, size: 32, offset: 12768)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1139, file: !1140, line: 1209, baseType: !327, size: 64, offset: 12800)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1139, file: !1140, line: 1219, baseType: !422, size: 64, offset: 12864)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1139, file: !1140, line: 1220, baseType: !422, size: 64, offset: 12928)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1139, file: !1140, line: 1317, baseType: !93, size: 32, offset: 12992)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1139, file: !1140, line: 1319, baseType: !1138, size: 64, offset: 13056)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1139, file: !1140, line: 1322, baseType: !2034, size: 64, offset: 13120)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1140, line: 1322, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1139, file: !1140, line: 1326, baseType: !1152, size: 32, offset: 13184)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1139, file: !1140, line: 1342, baseType: !92, size: 64, offset: 13248)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1139, file: !1140, line: 1343, baseType: !423, size: 64, offset: 13312)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1139, file: !1140, line: 1344, baseType: !422, size: 64, offset: 13376)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1139, file: !1140, line: 1345, baseType: !423, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1139, file: !1140, line: 1346, baseType: !423, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1139, file: !1140, line: 1347, baseType: !423, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1139, file: !1140, line: 1348, baseType: !368, size: 128, align: 64, offset: 13504)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1139, file: !1140, line: 1358, baseType: !2045, size: 34816, offset: 13824)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2046, line: 485, size: 34816, elements: !2047)
!2046 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2047 = !{!2048, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2077, !2078, !2079, !2080, !2081, !2082, !2085, !2086, !2087}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2045, file: !2046, line: 487, baseType: !2049, size: 192)
!2049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2050, size: 192, elements: !279)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2051, line: 16, size: 64, elements: !2052)
!2051 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2052 = !{!2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2050, file: !2051, line: 17, baseType: !861, size: 16)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2050, file: !2051, line: 18, baseType: !861, size: 16, offset: 16)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2050, file: !2051, line: 19, baseType: !861, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2050, file: !2051, line: 19, baseType: !861, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2050, file: !2051, line: 19, baseType: !861, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2050, file: !2051, line: 19, baseType: !861, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2050, file: !2051, line: 19, baseType: !861, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2050, file: !2051, line: 20, baseType: !861, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2050, file: !2051, line: 20, baseType: !861, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2050, file: !2051, line: 20, baseType: !861, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2050, file: !2051, line: 20, baseType: !861, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2050, file: !2051, line: 20, baseType: !861, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2050, file: !2051, line: 20, baseType: !861, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2045, file: !2046, line: 491, baseType: !327, size: 64, offset: 192)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2045, file: !2046, line: 495, baseType: !319, size: 16, offset: 256)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2045, file: !2046, line: 496, baseType: !319, size: 16, offset: 272)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2045, file: !2046, line: 497, baseType: !319, size: 16, offset: 288)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2045, file: !2046, line: 498, baseType: !319, size: 16, offset: 304)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2045, file: !2046, line: 502, baseType: !327, size: 64, offset: 320)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2045, file: !2046, line: 503, baseType: !327, size: 64, offset: 384)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2045, file: !2046, line: 514, baseType: !2074, size: 256, offset: 448)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2075, size: 256, elements: !1077)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2046, line: 483, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2045, file: !2046, line: 516, baseType: !327, size: 64, offset: 704)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2045, file: !2046, line: 518, baseType: !327, size: 64, offset: 768)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2045, file: !2046, line: 520, baseType: !327, size: 64, offset: 832)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2045, file: !2046, line: 521, baseType: !327, size: 64, offset: 896)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2045, file: !2046, line: 522, baseType: !327, size: 64, offset: 960)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2045, file: !2046, line: 528, baseType: !2083, size: 64, offset: 1024)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2046, line: 10, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2045, file: !2046, line: 535, baseType: !327, size: 64, offset: 1088)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2045, file: !2046, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2045, file: !2046, line: 540, baseType: !2088, size: 33280, offset: 1536)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2089, line: 317, size: 33280, elements: !2090)
!2089 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2090 = !{!2091, !2092, !2093}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2088, file: !2089, line: 330, baseType: !7, size: 32)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2088, file: !2089, line: 337, baseType: !327, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2088, file: !2089, line: 348, baseType: !2094, size: 32768, offset: 512)
!2094 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2089, line: 304, size: 32768, elements: !2095)
!2095 = !{!2096, !2111, !2148, !2198, !2211}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2094, file: !2089, line: 305, baseType: !2097, size: 896)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2089, line: 12, size: 896, elements: !2098)
!2098 = !{!2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2110}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2097, file: !2089, line: 13, baseType: !418, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2097, file: !2089, line: 14, baseType: !418, size: 32, offset: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2097, file: !2089, line: 15, baseType: !418, size: 32, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2097, file: !2089, line: 16, baseType: !418, size: 32, offset: 96)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2097, file: !2089, line: 17, baseType: !418, size: 32, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2097, file: !2089, line: 18, baseType: !418, size: 32, offset: 160)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2097, file: !2089, line: 19, baseType: !418, size: 32, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2097, file: !2089, line: 22, baseType: !2107, size: 640, offset: 224)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 640, elements: !2108)
!2108 = !{!2109}
!2109 = !DISubrange(count: 20)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2097, file: !2089, line: 25, baseType: !418, size: 32, offset: 864)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2094, file: !2089, line: 306, baseType: !2112, size: 4096, align: 128)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2089, line: 34, size: 4096, align: 128, elements: !2113)
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2133, !2134, !2135, !2137, !2139, !2143}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2112, file: !2089, line: 35, baseType: !861, size: 16)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2112, file: !2089, line: 36, baseType: !861, size: 16, offset: 16)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2112, file: !2089, line: 37, baseType: !861, size: 16, offset: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2112, file: !2089, line: 38, baseType: !861, size: 16, offset: 48)
!2118 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !2089, line: 39, baseType: !2119, size: 128, offset: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2112, file: !2089, line: 39, size: 128, elements: !2120)
!2120 = !{!2121, !2126}
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !2089, line: 40, baseType: !2122, size: 128)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2089, line: 40, size: 128, elements: !2123)
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2122, file: !2089, line: 41, baseType: !422, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2122, file: !2089, line: 42, baseType: !422, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !2089, line: 44, baseType: !2127, size: 128)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2119, file: !2089, line: 44, size: 128, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2132}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2127, file: !2089, line: 45, baseType: !418, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2127, file: !2089, line: 46, baseType: !418, size: 32, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2127, file: !2089, line: 47, baseType: !418, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2127, file: !2089, line: 48, baseType: !418, size: 32, offset: 96)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2112, file: !2089, line: 51, baseType: !418, size: 32, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2112, file: !2089, line: 52, baseType: !418, size: 32, offset: 224)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2112, file: !2089, line: 55, baseType: !2136, size: 1024, offset: 256)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 1024, elements: !145)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2112, file: !2089, line: 58, baseType: !2138, size: 2048, offset: 1280)
!2138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 2048, elements: !283)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2112, file: !2089, line: 60, baseType: !2140, size: 384, offset: 3328)
!2140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !2141)
!2141 = !{!2142}
!2142 = !DISubrange(count: 12)
!2143 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !2089, line: 62, baseType: !2144, size: 384, offset: 3712)
!2144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2112, file: !2089, line: 62, size: 384, elements: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2144, file: !2089, line: 63, baseType: !2140, size: 384)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2144, file: !2089, line: 64, baseType: !2140, size: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2094, file: !2089, line: 307, baseType: !2149, size: 1088)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2089, line: 79, size: 1088, elements: !2150)
!2150 = !{!2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2197}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2149, file: !2089, line: 80, baseType: !418, size: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2149, file: !2089, line: 81, baseType: !418, size: 32, offset: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2149, file: !2089, line: 82, baseType: !418, size: 32, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2149, file: !2089, line: 83, baseType: !418, size: 32, offset: 96)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2149, file: !2089, line: 84, baseType: !418, size: 32, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2149, file: !2089, line: 85, baseType: !418, size: 32, offset: 160)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2149, file: !2089, line: 86, baseType: !418, size: 32, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2149, file: !2089, line: 88, baseType: !2107, size: 640, offset: 224)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2149, file: !2089, line: 89, baseType: !118, size: 8, offset: 864)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2149, file: !2089, line: 90, baseType: !118, size: 8, offset: 872)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2149, file: !2089, line: 91, baseType: !118, size: 8, offset: 880)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2149, file: !2089, line: 92, baseType: !118, size: 8, offset: 888)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2149, file: !2089, line: 93, baseType: !118, size: 8, offset: 896)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2149, file: !2089, line: 94, baseType: !118, size: 8, offset: 904)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2149, file: !2089, line: 95, baseType: !2166, size: 64, offset: 960)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2168, line: 11, size: 128, elements: !2169)
!2168 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2167, file: !2168, line: 12, baseType: !94, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2167, file: !2168, line: 13, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2174, line: 56, size: 1344, elements: !2175)
!2174 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2175 = !{!2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2173, file: !2174, line: 61, baseType: !327, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2173, file: !2174, line: 62, baseType: !327, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2173, file: !2174, line: 63, baseType: !327, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2173, file: !2174, line: 64, baseType: !327, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2173, file: !2174, line: 65, baseType: !327, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2173, file: !2174, line: 66, baseType: !327, size: 64, offset: 320)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2173, file: !2174, line: 68, baseType: !327, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2173, file: !2174, line: 69, baseType: !327, size: 64, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2173, file: !2174, line: 70, baseType: !327, size: 64, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2173, file: !2174, line: 71, baseType: !327, size: 64, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2173, file: !2174, line: 72, baseType: !327, size: 64, offset: 640)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2173, file: !2174, line: 73, baseType: !327, size: 64, offset: 704)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2173, file: !2174, line: 74, baseType: !327, size: 64, offset: 768)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2173, file: !2174, line: 75, baseType: !327, size: 64, offset: 832)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2173, file: !2174, line: 76, baseType: !327, size: 64, offset: 896)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2173, file: !2174, line: 81, baseType: !327, size: 64, offset: 960)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2173, file: !2174, line: 83, baseType: !327, size: 64, offset: 1024)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2173, file: !2174, line: 84, baseType: !327, size: 64, offset: 1088)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2173, file: !2174, line: 85, baseType: !327, size: 64, offset: 1152)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2173, file: !2174, line: 86, baseType: !327, size: 64, offset: 1216)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2173, file: !2174, line: 87, baseType: !327, size: 64, offset: 1280)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2149, file: !2089, line: 96, baseType: !418, size: 32, offset: 1024)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2094, file: !2089, line: 308, baseType: !2199, size: 4608, align: 512)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2089, line: 289, size: 4608, align: 512, elements: !2200)
!2200 = !{!2201, !2202, !2209}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2199, file: !2089, line: 290, baseType: !2112, size: 4096, align: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2199, file: !2089, line: 291, baseType: !2203, size: 512, offset: 4096)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2089, line: 268, size: 512, elements: !2204)
!2204 = !{!2205, !2206, !2207}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2203, file: !2089, line: 269, baseType: !422, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2203, file: !2089, line: 270, baseType: !422, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2203, file: !2089, line: 271, baseType: !2208, size: 384, offset: 128)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 384, elements: !126)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2199, file: !2089, line: 292, baseType: !2210, offset: 4608)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, elements: !1641)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2094, file: !2089, line: 309, baseType: !2212, size: 32768)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 32768, elements: !2213)
!2213 = !{!2214}
!2214 = !DISubrange(count: 4096)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1135, file: !724, line: 378, baseType: !2216, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1131, file: !724, line: 384, baseType: !1422, size: 192, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !980, file: !724, line: 500, baseType: !162, offset: 6656)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !980, file: !724, line: 501, baseType: !2220, size: 64, offset: 6656)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !724, line: 387, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !980, file: !724, line: 516, baseType: !1631, size: 64, offset: 6720)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !980, file: !724, line: 519, baseType: !355, size: 64, offset: 6784)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !980, file: !724, line: 521, baseType: !2225, size: 64, offset: 6848)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !724, line: 521, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !980, file: !724, line: 545, baseType: !749, size: 32, offset: 6912)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !980, file: !724, line: 548, baseType: !115, size: 8, offset: 6944)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !980, file: !724, line: 550, baseType: !2230, offset: 6952)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2231, line: 142, elements: !123)
!2231 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !980, file: !724, line: 554, baseType: !1877, size: 256, offset: 6976)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !980, file: !724, line: 557, baseType: !418, size: 32, offset: 7232)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !977, file: !724, line: 565, baseType: !2235, offset: 7296)
!2235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, elements: !2236)
!2236 = !{!2237}
!2237 = !DISubrange(count: -1)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !973, file: !724, line: 151, baseType: !749, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !966, file: !724, line: 156, baseType: !162, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !728, file: !724, line: 159, baseType: !2241, size: 128)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !728, file: !724, line: 159, size: 128, elements: !2242)
!2242 = !{!2243, !2246}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2241, file: !724, line: 161, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !724, line: 161, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2241, file: !724, line: 162, baseType: !92, size: 64, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !728, file: !724, line: 176, baseType: !368, size: 128, align: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, scope: !723, file: !724, line: 179, baseType: !2249, size: 32, offset: 384)
!2249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !723, file: !724, line: 179, size: 32, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2254}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2249, file: !724, line: 184, baseType: !749, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2249, file: !724, line: 192, baseType: !7, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2249, file: !724, line: 194, baseType: !7, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2249, file: !724, line: 195, baseType: !93, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !723, file: !724, line: 199, baseType: !749, size: 32, offset: 416)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !658, file: !37, line: 1964, baseType: !2257, size: 64, offset: 1344)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!94, !597, !2260}
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2262, line: 12, size: 256, elements: !2263)
!2262 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2263 = !{!2264, !2265, !2266, !2267, !2268}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2261, file: !2262, line: 13, baseType: !745, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2261, file: !2262, line: 16, baseType: !93, size: 32, offset: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2261, file: !2262, line: 23, baseType: !327, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2261, file: !2262, line: 30, baseType: !327, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2261, file: !2262, line: 33, baseType: !2269, size: 64, offset: 192)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !724, line: 27, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !658, file: !37, line: 1966, baseType: !2257, size: 64, offset: 1408)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !598, file: !37, line: 1424, baseType: !2273, size: 64, offset: 448)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2275)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !31, line: 322, size: 704, elements: !2276)
!2276 = !{!2277, !2323, !2327, !2331, !2332, !2333, !2334, !2335, !2340, !2345, !2349}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2275, file: !31, line: 323, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!93, !2281}
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !31, line: 294, size: 1600, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2308, !2309, !2310}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2282, file: !31, line: 295, baseType: !640, size: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2282, file: !31, line: 296, baseType: !192, size: 128, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2282, file: !31, line: 297, baseType: !192, size: 128, offset: 256)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2282, file: !31, line: 298, baseType: !192, size: 128, offset: 384)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2282, file: !31, line: 299, baseType: !1095, size: 192, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2282, file: !31, line: 300, baseType: !162, offset: 704)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2282, file: !31, line: 301, baseType: !749, size: 32, offset: 704)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2282, file: !31, line: 302, baseType: !597, size: 64, offset: 768)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2282, file: !31, line: 303, baseType: !2293, size: 64, offset: 832)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !31, line: 68, size: 64, elements: !2294)
!2294 = !{!2295, !2307}
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !31, line: 69, baseType: !2296, size: 32)
!2296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2293, file: !31, line: 69, size: 32, elements: !2297)
!2297 = !{!2298, !2299, !2300}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2296, file: !31, line: 70, baseType: !435, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2296, file: !31, line: 71, baseType: !443, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2296, file: !31, line: 72, baseType: !2301, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2302, line: 24, baseType: !2303)
!2302 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2302, line: 22, size: 32, elements: !2304)
!2304 = !{!2305}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2303, file: !2302, line: 23, baseType: !2306, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2302, line: 20, baseType: !441)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2293, file: !31, line: 74, baseType: !30, size: 32, offset: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2282, file: !31, line: 304, baseType: !529, size: 64, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2282, file: !31, line: 305, baseType: !327, size: 64, offset: 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2282, file: !31, line: 306, baseType: !2311, size: 576, offset: 1024)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !31, line: 205, size: 576, elements: !2312)
!2312 = !{!2313, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2311, file: !31, line: 206, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !31, line: 66, baseType: !531)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2311, file: !31, line: 207, baseType: !2314, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2311, file: !31, line: 208, baseType: !2314, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2311, file: !31, line: 209, baseType: !2314, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2311, file: !31, line: 210, baseType: !2314, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2311, file: !31, line: 211, baseType: !2314, size: 64, offset: 320)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2311, file: !31, line: 212, baseType: !2314, size: 64, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2311, file: !31, line: 213, baseType: !537, size: 64, offset: 448)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2311, file: !31, line: 214, baseType: !537, size: 64, offset: 512)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2275, file: !31, line: 324, baseType: !2324, size: 64, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!2281, !597, !93}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2275, file: !31, line: 325, baseType: !2328, size: 64, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !2281}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2275, file: !31, line: 326, baseType: !2278, size: 64, offset: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2275, file: !31, line: 327, baseType: !2278, size: 64, offset: 256)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2275, file: !31, line: 328, baseType: !2278, size: 64, offset: 320)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2275, file: !31, line: 329, baseType: !686, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2275, file: !31, line: 332, baseType: !2336, size: 64, offset: 448)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!2339, !429}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2275, file: !31, line: 333, baseType: !2341, size: 64, offset: 512)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!93, !429, !2344}
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2275, file: !31, line: 335, baseType: !2346, size: 64, offset: 576)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!93, !429, !2339}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2275, file: !31, line: 337, baseType: !2350, size: 64, offset: 640)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!93, !597, !2353}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !598, file: !37, line: 1425, baseType: !2355, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2357)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !31, line: 428, size: 704, elements: !2358)
!2358 = !{!2359, !2363, !2364, !2368, !2369, !2370, !2385, !2408, !2412, !2413, !2436}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2357, file: !31, line: 429, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!93, !597, !93, !93, !547}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2357, file: !31, line: 430, baseType: !686, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2357, file: !31, line: 431, baseType: !2365, size: 64, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!93, !597, !7}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2357, file: !31, line: 432, baseType: !2365, size: 64, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2357, file: !31, line: 433, baseType: !686, size: 64, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2357, file: !31, line: 434, baseType: !2371, size: 64, offset: 320)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!93, !597, !93, !2374}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !31, line: 415, size: 256, elements: !2376)
!2376 = !{!2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2375, file: !31, line: 416, baseType: !93, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2375, file: !31, line: 417, baseType: !7, size: 32, offset: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2375, file: !31, line: 418, baseType: !7, size: 32, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2375, file: !31, line: 420, baseType: !7, size: 32, offset: 96)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2375, file: !31, line: 421, baseType: !7, size: 32, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2375, file: !31, line: 422, baseType: !7, size: 32, offset: 160)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2375, file: !31, line: 423, baseType: !7, size: 32, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2375, file: !31, line: 424, baseType: !7, size: 32, offset: 224)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2357, file: !31, line: 435, baseType: !2386, size: 64, offset: 384)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!93, !597, !2293, !2389}
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !31, line: 343, size: 960, elements: !2391)
!2391 = !{!2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2390, file: !31, line: 344, baseType: !93, size: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2390, file: !31, line: 345, baseType: !422, size: 64, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2390, file: !31, line: 346, baseType: !422, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2390, file: !31, line: 347, baseType: !422, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2390, file: !31, line: 348, baseType: !422, size: 64, offset: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2390, file: !31, line: 349, baseType: !422, size: 64, offset: 320)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2390, file: !31, line: 350, baseType: !422, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2390, file: !31, line: 351, baseType: !779, size: 64, offset: 448)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2390, file: !31, line: 353, baseType: !779, size: 64, offset: 512)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2390, file: !31, line: 354, baseType: !93, size: 32, offset: 576)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2390, file: !31, line: 355, baseType: !93, size: 32, offset: 608)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2390, file: !31, line: 356, baseType: !422, size: 64, offset: 640)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2390, file: !31, line: 357, baseType: !422, size: 64, offset: 704)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2390, file: !31, line: 358, baseType: !422, size: 64, offset: 768)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2390, file: !31, line: 359, baseType: !779, size: 64, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2390, file: !31, line: 360, baseType: !93, size: 32, offset: 896)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2357, file: !31, line: 436, baseType: !2409, size: 64, offset: 448)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!93, !597, !2353, !2389}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2357, file: !31, line: 438, baseType: !2386, size: 64, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2357, file: !31, line: 439, baseType: !2414, size: 64, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!93, !597, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !31, line: 409, size: 1408, elements: !2419)
!2419 = !{!2420, !2421}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2418, file: !31, line: 410, baseType: !7, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2418, file: !31, line: 411, baseType: !2422, size: 1344, offset: 64)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2423, size: 1344, elements: !279)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !31, line: 395, size: 448, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2435}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2423, file: !31, line: 396, baseType: !7, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2423, file: !31, line: 397, baseType: !7, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2423, file: !31, line: 399, baseType: !7, size: 32, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2423, file: !31, line: 400, baseType: !7, size: 32, offset: 96)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2423, file: !31, line: 401, baseType: !7, size: 32, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2423, file: !31, line: 402, baseType: !7, size: 32, offset: 160)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2423, file: !31, line: 403, baseType: !7, size: 32, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2423, file: !31, line: 404, baseType: !424, size: 64, offset: 256)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2423, file: !31, line: 405, baseType: !2434, size: 64, offset: 320)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !116, line: 126, baseType: !422)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2423, file: !31, line: 406, baseType: !2434, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2357, file: !31, line: 440, baseType: !2365, size: 64, offset: 640)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !598, file: !37, line: 1426, baseType: !2438, size: 64, offset: 576)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2440)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !37, line: 49, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !598, file: !37, line: 1427, baseType: !327, size: 64, offset: 640)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !598, file: !37, line: 1428, baseType: !327, size: 64, offset: 704)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !598, file: !37, line: 1429, baseType: !327, size: 64, offset: 768)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !598, file: !37, line: 1430, baseType: !385, size: 64, offset: 832)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !598, file: !37, line: 1431, baseType: !769, size: 256, offset: 896)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !598, file: !37, line: 1432, baseType: !93, size: 32, offset: 1152)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !598, file: !37, line: 1433, baseType: !749, size: 32, offset: 1184)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !598, file: !37, line: 1437, baseType: !2449, size: 64, offset: 1216)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2452)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !37, line: 1437, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !598, file: !37, line: 1449, baseType: !2454, size: 64, offset: 1280)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !401, line: 34, size: 64, elements: !2455)
!2455 = !{!2456}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2454, file: !401, line: 35, baseType: !404, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !598, file: !37, line: 1450, baseType: !192, size: 128, offset: 1344)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !598, file: !37, line: 1451, baseType: !2459, size: 64, offset: 1472)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !37, line: 699, flags: DIFlagFwdDecl)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !598, file: !37, line: 1452, baseType: !1843, size: 64, offset: 1536)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !598, file: !37, line: 1453, baseType: !2463, size: 64, offset: 1600)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !37, line: 1453, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !598, file: !37, line: 1454, baseType: !640, size: 128, offset: 1664)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !598, file: !37, line: 1455, baseType: !7, size: 32, offset: 1792)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !598, file: !37, line: 1456, baseType: !2468, size: 2432, offset: 1856)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !31, line: 518, size: 2432, elements: !2469)
!2469 = !{!2470, !2471, !2472, !2474, !2506}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2468, file: !31, line: 519, baseType: !7, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2468, file: !31, line: 520, baseType: !769, size: 256, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2468, file: !31, line: 521, baseType: !2473, size: 192, offset: 320)
!2473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 192, elements: !279)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2468, file: !31, line: 522, baseType: !2475, size: 1728, offset: 512)
!2475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2476, size: 1728, elements: !279)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !31, line: 222, size: 576, elements: !2477)
!2477 = !{!2478, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2476, file: !31, line: 223, baseType: !2479, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !31, line: 443, size: 256, elements: !2481)
!2481 = !{!2482, !2483, !2496, !2497}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2480, file: !31, line: 444, baseType: !93, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2480, file: !31, line: 445, baseType: !2484, size: 64, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2486)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !31, line: 310, size: 512, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2486, file: !31, line: 311, baseType: !686, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2486, file: !31, line: 312, baseType: !686, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2486, file: !31, line: 313, baseType: !686, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2486, file: !31, line: 314, baseType: !686, size: 64, offset: 192)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2486, file: !31, line: 315, baseType: !2278, size: 64, offset: 256)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2486, file: !31, line: 316, baseType: !2278, size: 64, offset: 320)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2486, file: !31, line: 317, baseType: !2278, size: 64, offset: 384)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2486, file: !31, line: 318, baseType: !2350, size: 64, offset: 448)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2480, file: !31, line: 446, baseType: !631, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2480, file: !31, line: 447, baseType: !2479, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2476, file: !31, line: 224, baseType: !93, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2476, file: !31, line: 226, baseType: !192, size: 128, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2476, file: !31, line: 227, baseType: !327, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2476, file: !31, line: 228, baseType: !7, size: 32, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2476, file: !31, line: 229, baseType: !7, size: 32, offset: 352)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2476, file: !31, line: 230, baseType: !2314, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2476, file: !31, line: 231, baseType: !2314, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2476, file: !31, line: 232, baseType: !92, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2468, file: !31, line: 523, baseType: !2507, size: 192, offset: 2240)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2484, size: 192, elements: !279)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !598, file: !37, line: 1458, baseType: !2509, size: 2112, offset: 4288)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !37, line: 1410, size: 2112, elements: !2510)
!2510 = !{!2511, !2512, !2513}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2509, file: !37, line: 1411, baseType: !93, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2509, file: !37, line: 1412, baseType: !1401, size: 128, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2509, file: !37, line: 1413, baseType: !2514, size: 1920, offset: 192)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2515, size: 1920, elements: !279)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2516, line: 12, size: 640, elements: !2517)
!2516 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2517 = !{!2518, !2526, !2528, !2533, !2534}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2515, file: !2516, line: 13, baseType: !2519, size: 320)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2520, line: 17, size: 320, elements: !2521)
!2520 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2521 = !{!2522, !2523, !2524, !2525}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2519, file: !2520, line: 18, baseType: !93, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2519, file: !2520, line: 19, baseType: !93, size: 32, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2519, file: !2520, line: 20, baseType: !1401, size: 128, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2519, file: !2520, line: 22, baseType: !368, size: 128, align: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2515, file: !2516, line: 14, baseType: !2527, size: 64, offset: 320)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2515, file: !2516, line: 15, baseType: !2529, size: 64, offset: 384)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2530, line: 16, size: 64, elements: !2531)
!2530 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2531 = !{!2532}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2529, file: !2530, line: 17, baseType: !1138, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2515, file: !2516, line: 16, baseType: !1401, size: 128, offset: 448)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2515, file: !2516, line: 17, baseType: !749, size: 32, offset: 576)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !598, file: !37, line: 1465, baseType: !92, size: 64, offset: 6400)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !598, file: !37, line: 1468, baseType: !418, size: 32, offset: 6464)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !598, file: !37, line: 1470, baseType: !537, size: 64, offset: 6528)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !598, file: !37, line: 1471, baseType: !537, size: 64, offset: 6592)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !598, file: !37, line: 1473, baseType: !419, size: 32, offset: 6656)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !598, file: !37, line: 1474, baseType: !2541, size: 64, offset: 6720)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !37, line: 603, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !598, file: !37, line: 1477, baseType: !144, size: 256, offset: 6784)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !598, file: !37, line: 1478, baseType: !2545, size: 128, offset: 7040)
!2545 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2546, line: 18, baseType: !2547)
!2546 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2546, line: 16, size: 128, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2547, file: !2546, line: 17, baseType: !2550, size: 128)
!2550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 128, elements: !1653)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !598, file: !37, line: 1480, baseType: !7, size: 32, offset: 7168)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !598, file: !37, line: 1481, baseType: !2553, size: 32, offset: 7200)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !116, line: 150, baseType: !7)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !598, file: !37, line: 1487, baseType: !1095, size: 192, offset: 7232)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !598, file: !37, line: 1493, baseType: !204, size: 64, offset: 7424)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !598, file: !37, line: 1495, baseType: !2557, size: 64, offset: 7488)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2559)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !383, line: 135, size: 1024, align: 512, elements: !2560)
!2560 = !{!2561, !2565, !2566, !2573, !2579, !2583, !2587, !2591, !2592, !2596, !2600, !2605, !2609}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2559, file: !383, line: 136, baseType: !2562, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!93, !385, !7}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2559, file: !383, line: 137, baseType: !2562, size: 64, offset: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2559, file: !383, line: 138, baseType: !2567, size: 64, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!93, !2570, !2572}
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2559, file: !383, line: 139, baseType: !2574, size: 64, offset: 192)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!93, !2570, !7, !204, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2559, file: !383, line: 141, baseType: !2580, size: 64, offset: 256)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!93, !2570}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2559, file: !383, line: 142, baseType: !2584, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!93, !385}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2559, file: !383, line: 143, baseType: !2588, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null, !385}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2559, file: !383, line: 144, baseType: !2588, size: 64, offset: 448)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2559, file: !383, line: 145, baseType: !2593, size: 64, offset: 512)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !385, !429}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2559, file: !383, line: 146, baseType: !2597, size: 64, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!278, !385, !278, !93}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2559, file: !383, line: 147, baseType: !2601, size: 64, offset: 640)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!381, !2604}
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2559, file: !383, line: 148, baseType: !2606, size: 64, offset: 704)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!93, !547, !115}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2559, file: !383, line: 149, baseType: !2610, size: 64, offset: 768)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!385, !385, !2613}
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !598, file: !37, line: 1500, baseType: !93, size: 32, offset: 7552)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !598, file: !37, line: 1502, baseType: !2617, size: 448, offset: 7616)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2262, line: 60, size: 448, elements: !2618)
!2618 = !{!2619, !2624, !2625, !2626, !2627, !2628, !2629}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2617, file: !2262, line: 61, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!327, !2623, !2260}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2617, file: !2262, line: 63, baseType: !2620, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2617, file: !2262, line: 66, baseType: !94, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2617, file: !2262, line: 67, baseType: !93, size: 32, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2617, file: !2262, line: 68, baseType: !7, size: 32, offset: 224)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2617, file: !2262, line: 71, baseType: !192, size: 128, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2617, file: !2262, line: 77, baseType: !2630, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !598, file: !37, line: 1505, baseType: !773, size: 64, offset: 8064)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !598, file: !37, line: 1508, baseType: !773, size: 64, offset: 8128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !598, file: !37, line: 1511, baseType: !93, size: 32, offset: 8192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !598, file: !37, line: 1514, baseType: !911, size: 32, offset: 8224)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !598, file: !37, line: 1517, baseType: !2636, size: 64, offset: 8256)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1878, line: 18, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !598, file: !37, line: 1518, baseType: !636, size: 64, offset: 8320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !598, file: !37, line: 1525, baseType: !1631, size: 64, offset: 8384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !598, file: !37, line: 1532, baseType: !2641, size: 64, offset: 8448)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2642, line: 52, size: 64, elements: !2643)
!2642 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2643 = !{!2644}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2641, file: !2642, line: 53, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2642, line: 40, size: 256, elements: !2647)
!2647 = !{!2648, !2649, !2654}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2646, file: !2642, line: 42, baseType: !162)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2646, file: !2642, line: 44, baseType: !2650, size: 192)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2642, line: 28, size: 192, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2650, file: !2642, line: 29, baseType: !192, size: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2650, file: !2642, line: 31, baseType: !94, size: 64, offset: 128)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2646, file: !2642, line: 49, baseType: !94, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !598, file: !37, line: 1533, baseType: !2641, size: 64, offset: 8512)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !598, file: !37, line: 1534, baseType: !368, size: 128, align: 64, offset: 8576)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !598, file: !37, line: 1535, baseType: !1877, size: 256, offset: 8704)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !598, file: !37, line: 1537, baseType: !1095, size: 192, offset: 8960)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !598, file: !37, line: 1542, baseType: !93, size: 32, offset: 9152)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !598, file: !37, line: 1545, baseType: !162, offset: 9184)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !598, file: !37, line: 1546, baseType: !192, size: 128, offset: 9216)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !598, file: !37, line: 1548, baseType: !162, offset: 9344)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !598, file: !37, line: 1549, baseType: !192, size: 128, offset: 9344)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !430, file: !37, line: 624, baseType: !735, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !430, file: !37, line: 631, baseType: !327, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !37, line: 639, baseType: !2667, size: 32, offset: 384)
!2667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !37, line: 639, size: 32, elements: !2668)
!2668 = !{!2669, !2671}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2667, file: !37, line: 640, baseType: !2670, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2667, file: !37, line: 641, baseType: !7, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !430, file: !37, line: 643, baseType: !511, size: 32, offset: 416)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !430, file: !37, line: 644, baseType: !529, size: 64, offset: 448)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !430, file: !37, line: 645, baseType: !533, size: 128, offset: 512)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !430, file: !37, line: 646, baseType: !533, size: 128, offset: 640)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !430, file: !37, line: 647, baseType: !533, size: 128, offset: 768)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !430, file: !37, line: 648, baseType: !162, offset: 896)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !430, file: !37, line: 649, baseType: !319, size: 16, offset: 896)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !430, file: !37, line: 650, baseType: !118, size: 8, offset: 912)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !430, file: !37, line: 651, baseType: !118, size: 8, offset: 920)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !430, file: !37, line: 652, baseType: !2434, size: 64, offset: 960)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !430, file: !37, line: 659, baseType: !327, size: 64, offset: 1024)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !430, file: !37, line: 660, baseType: !769, size: 256, offset: 1088)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !430, file: !37, line: 662, baseType: !327, size: 64, offset: 1344)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !430, file: !37, line: 663, baseType: !327, size: 64, offset: 1408)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !430, file: !37, line: 665, baseType: !640, size: 128, offset: 1472)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !430, file: !37, line: 666, baseType: !192, size: 128, offset: 1600)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !430, file: !37, line: 675, baseType: !192, size: 128, offset: 1728)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !430, file: !37, line: 676, baseType: !192, size: 128, offset: 1856)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !430, file: !37, line: 677, baseType: !192, size: 128, offset: 1984)
!2691 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !37, line: 678, baseType: !2692, size: 128, offset: 2112)
!2692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !37, line: 678, size: 128, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2692, file: !37, line: 679, baseType: !636, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2692, file: !37, line: 680, baseType: !368, size: 128, align: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !430, file: !37, line: 682, baseType: !775, size: 64, offset: 2240)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !430, file: !37, line: 683, baseType: !775, size: 64, offset: 2304)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !430, file: !37, line: 684, baseType: !749, size: 32, offset: 2368)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !430, file: !37, line: 685, baseType: !749, size: 32, offset: 2400)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !430, file: !37, line: 686, baseType: !749, size: 32, offset: 2432)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !430, file: !37, line: 688, baseType: !749, size: 32, offset: 2464)
!2702 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !37, line: 690, baseType: !2703, size: 64, offset: 2496)
!2703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !37, line: 690, size: 64, elements: !2704)
!2704 = !{!2705, !2928}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2703, file: !37, line: 691, baseType: !2706, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2708)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !37, line: 1822, size: 2048, elements: !2709)
!2709 = !{!2710, !2711, !2715, !2720, !2724, !2725, !2726, !2730, !2743, !2744, !2752, !2756, !2757, !2761, !2762, !2766, !2771, !2772, !2776, !2780, !2888, !2892, !2893, !2897, !2898, !2902, !2906, !2911, !2915, !2919, !2923, !2927}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2708, file: !37, line: 1823, baseType: !631, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2708, file: !37, line: 1824, baseType: !2712, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!529, !355, !529, !93}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2708, file: !37, line: 1825, baseType: !2716, size: 64, offset: 128)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!309, !355, !278, !324, !2719}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2708, file: !37, line: 1826, baseType: !2721, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!309, !355, !204, !324, !2719}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2708, file: !37, line: 1827, baseType: !846, size: 64, offset: 256)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2708, file: !37, line: 1828, baseType: !846, size: 64, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2708, file: !37, line: 1829, baseType: !2727, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!93, !849, !115}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2708, file: !37, line: 1830, baseType: !2731, size: 64, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!93, !355, !2734}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !37, line: 1776, size: 128, elements: !2736)
!2736 = !{!2737, !2742}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2735, file: !37, line: 1777, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !37, line: 1773, baseType: !2739)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!93, !2734, !204, !93, !529, !422, !7}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2735, file: !37, line: 1778, baseType: !529, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2708, file: !37, line: 1831, baseType: !2731, size: 64, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2708, file: !37, line: 1832, baseType: !2745, size: 64, offset: 576)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!2748, !355, !2750}
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2749, line: 52, baseType: !7)
!2749 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !617, line: 27, flags: DIFlagFwdDecl)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2708, file: !37, line: 1833, baseType: !2753, size: 64, offset: 640)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!94, !355, !7, !327}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2708, file: !37, line: 1834, baseType: !2753, size: 64, offset: 704)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2708, file: !37, line: 1835, baseType: !2758, size: 64, offset: 768)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!93, !355, !983}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2708, file: !37, line: 1836, baseType: !327, size: 64, offset: 832)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2708, file: !37, line: 1837, baseType: !2763, size: 64, offset: 896)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!93, !429, !355}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2708, file: !37, line: 1838, baseType: !2767, size: 64, offset: 960)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!93, !355, !2770}
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !37, line: 1007, baseType: !92)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2708, file: !37, line: 1839, baseType: !2763, size: 64, offset: 1024)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2708, file: !37, line: 1840, baseType: !2773, size: 64, offset: 1088)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!93, !355, !529, !529, !93}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2708, file: !37, line: 1841, baseType: !2777, size: 64, offset: 1152)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!93, !93, !355, !93}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2708, file: !37, line: 1842, baseType: !2781, size: 64, offset: 1216)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!93, !355, !93, !2784}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !37, line: 1062, size: 1664, elements: !2786)
!2786 = !{!2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2818, !2819, !2820, !2833, !2864}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2785, file: !37, line: 1063, baseType: !2784, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2785, file: !37, line: 1064, baseType: !192, size: 128, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2785, file: !37, line: 1065, baseType: !640, size: 128, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2785, file: !37, line: 1066, baseType: !192, size: 128, offset: 320)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2785, file: !37, line: 1069, baseType: !192, size: 128, offset: 448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2785, file: !37, line: 1072, baseType: !2770, size: 64, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2785, file: !37, line: 1073, baseType: !7, size: 32, offset: 640)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2785, file: !37, line: 1074, baseType: !122, size: 8, offset: 672)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2785, file: !37, line: 1075, baseType: !7, size: 32, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2785, file: !37, line: 1076, baseType: !93, size: 32, offset: 736)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2785, file: !37, line: 1077, baseType: !1401, size: 128, offset: 768)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2785, file: !37, line: 1078, baseType: !355, size: 64, offset: 896)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2785, file: !37, line: 1079, baseType: !529, size: 64, offset: 960)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2785, file: !37, line: 1080, baseType: !529, size: 64, offset: 1024)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2785, file: !37, line: 1082, baseType: !2802, size: 64, offset: 1088)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !37, line: 1314, size: 320, elements: !2804)
!2804 = !{!2805, !2813, !2814, !2815, !2816, !2817}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2803, file: !37, line: 1315, baseType: !2806)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2807, line: 20, baseType: !2808)
!2807 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2807, line: 11, elements: !2809)
!2809 = !{!2810}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2808, file: !2807, line: 12, baseType: !2811)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !174, line: 33, baseType: !2812)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 31, elements: !123)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2803, file: !37, line: 1316, baseType: !93, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2803, file: !37, line: 1317, baseType: !93, size: 32, offset: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2803, file: !37, line: 1318, baseType: !2802, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2803, file: !37, line: 1319, baseType: !355, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2803, file: !37, line: 1320, baseType: !368, size: 128, align: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2785, file: !37, line: 1084, baseType: !327, size: 64, offset: 1152)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2785, file: !37, line: 1085, baseType: !327, size: 64, offset: 1216)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2785, file: !37, line: 1087, baseType: !2821, size: 64, offset: 1280)
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2823)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !37, line: 1011, size: 128, elements: !2824)
!2824 = !{!2825, !2829}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2823, file: !37, line: 1012, baseType: !2826, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{null, !2784, !2784}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2823, file: !37, line: 1013, baseType: !2830, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null, !2784}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2785, file: !37, line: 1088, baseType: !2834, size: 64, offset: 1344)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2836)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !37, line: 1016, size: 512, elements: !2837)
!2837 = !{!2838, !2842, !2846, !2847, !2851, !2855, !2859, !2863}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2836, file: !37, line: 1017, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!2770, !2770}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2836, file: !37, line: 1018, baseType: !2843, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !2770}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2836, file: !37, line: 1019, baseType: !2830, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2836, file: !37, line: 1020, baseType: !2848, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!93, !2784, !93}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2836, file: !37, line: 1021, baseType: !2852, size: 64, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!115, !2784}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2836, file: !37, line: 1022, baseType: !2856, size: 64, offset: 320)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!93, !2784, !93, !195}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2836, file: !37, line: 1023, baseType: !2860, size: 64, offset: 384)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{null, !2784, !823}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2836, file: !37, line: 1024, baseType: !2852, size: 64, offset: 448)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2785, file: !37, line: 1097, baseType: !2865, size: 256, offset: 1408)
!2865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2785, file: !37, line: 1089, size: 256, elements: !2866)
!2866 = !{!2867, !2876, !2882}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2865, file: !37, line: 1090, baseType: !2868, size: 256)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2869, line: 10, size: 256, elements: !2870)
!2869 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2870 = !{!2871, !2872, !2875}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2868, file: !2869, line: 11, baseType: !418, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2868, file: !2869, line: 12, baseType: !2873, size: 64, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2869, line: 5, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2868, file: !2869, line: 13, baseType: !192, size: 128, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2865, file: !37, line: 1091, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2869, line: 17, size: 64, elements: !2878)
!2878 = !{!2879}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2877, file: !2869, line: 18, baseType: !2880, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2869, line: 16, flags: DIFlagFwdDecl)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2865, file: !37, line: 1096, baseType: !2883, size: 192)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2865, file: !37, line: 1092, size: 192, elements: !2884)
!2884 = !{!2885, !2886, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2883, file: !37, line: 1093, baseType: !192, size: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2883, file: !37, line: 1094, baseType: !93, size: 32, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2883, file: !37, line: 1095, baseType: !7, size: 32, offset: 160)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2708, file: !37, line: 1843, baseType: !2889, size: 64, offset: 1280)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!309, !355, !722, !93, !324, !2719, !93}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2708, file: !37, line: 1844, baseType: !1023, size: 64, offset: 1344)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2708, file: !37, line: 1845, baseType: !2894, size: 64, offset: 1408)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!93, !93}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2708, file: !37, line: 1846, baseType: !2781, size: 64, offset: 1472)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2708, file: !37, line: 1847, baseType: !2899, size: 64, offset: 1536)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!309, !2018, !355, !2719, !324, !7}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2708, file: !37, line: 1848, baseType: !2903, size: 64, offset: 1600)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!309, !355, !2719, !2018, !324, !7}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2708, file: !37, line: 1849, baseType: !2907, size: 64, offset: 1664)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!93, !355, !94, !2910, !823}
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2708, file: !37, line: 1850, baseType: !2912, size: 64, offset: 1728)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!94, !355, !93, !529, !529}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2708, file: !37, line: 1852, baseType: !2916, size: 64, offset: 1792)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{null, !712, !355}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2708, file: !37, line: 1856, baseType: !2920, size: 64, offset: 1856)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!309, !355, !529, !355, !529, !324, !7}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2708, file: !37, line: 1858, baseType: !2924, size: 64, offset: 1920)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!529, !355, !529, !355, !529, !529, !7}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2708, file: !37, line: 1861, baseType: !2773, size: 64, offset: 1984)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2703, file: !37, line: 692, baseType: !665, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !430, file: !37, line: 694, baseType: !2930, size: 64, offset: 2560)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !37, line: 1100, size: 384, elements: !2932)
!2932 = !{!2933, !2934, !2935, !2936}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2931, file: !37, line: 1101, baseType: !162)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2931, file: !37, line: 1102, baseType: !192, size: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2931, file: !37, line: 1103, baseType: !192, size: 128, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2931, file: !37, line: 1104, baseType: !192, size: 128, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !430, file: !37, line: 695, baseType: !736, size: 1216, align: 64, offset: 2624)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !430, file: !37, line: 696, baseType: !192, size: 128, offset: 3840)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !37, line: 697, baseType: !2940, size: 64, offset: 3968)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !37, line: 697, size: 64, elements: !2941)
!2941 = !{!2942, !2943, !2944, !2947, !2948}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2940, file: !37, line: 698, baseType: !2018, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2940, file: !37, line: 699, baseType: !2459, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2940, file: !37, line: 700, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !37, line: 700, flags: DIFlagFwdDecl)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2940, file: !37, line: 701, baseType: !278, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2940, file: !37, line: 702, baseType: !7, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !430, file: !37, line: 705, baseType: !419, size: 32, offset: 4032)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !430, file: !37, line: 708, baseType: !419, size: 32, offset: 4064)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !430, file: !37, line: 709, baseType: !2541, size: 64, offset: 4096)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !430, file: !37, line: 720, baseType: !92, size: 64, offset: 4160)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !386, file: !383, line: 98, baseType: !2954, size: 256, offset: 448)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 256, elements: !145)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !386, file: !383, line: 101, baseType: !2956, size: 32, offset: 704)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2957, line: 25, size: 32, elements: !2958)
!2957 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2958 = !{!2959}
!2959 = !DIDerivedType(tag: DW_TAG_member, scope: !2956, file: !2957, line: 26, baseType: !2960, size: 32)
!2960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2956, file: !2957, line: 26, size: 32, elements: !2961)
!2961 = !{!2962}
!2962 = !DIDerivedType(tag: DW_TAG_member, scope: !2960, file: !2957, line: 30, baseType: !2963, size: 32)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2960, file: !2957, line: 30, size: 32, elements: !2964)
!2964 = !{!2965, !2966}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2963, file: !2957, line: 31, baseType: !162)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2963, file: !2957, line: 32, baseType: !93, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !386, file: !383, line: 102, baseType: !2557, size: 64, offset: 768)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !386, file: !383, line: 103, baseType: !597, size: 64, offset: 832)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !386, file: !383, line: 104, baseType: !327, size: 64, offset: 896)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !386, file: !383, line: 105, baseType: !92, size: 64, offset: 960)
!2971 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !383, line: 107, baseType: !2972, size: 128, offset: 1024)
!2972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !383, line: 107, size: 128, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2972, file: !383, line: 108, baseType: !192, size: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2972, file: !383, line: 109, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !386, file: !383, line: 111, baseType: !192, size: 128, offset: 1152)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !386, file: !383, line: 112, baseType: !192, size: 128, offset: 1280)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !386, file: !383, line: 120, baseType: !2980, size: 128, offset: 1408)
!2980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !383, line: 116, size: 128, elements: !2981)
!2981 = !{!2982, !2983, !2984}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2980, file: !383, line: 117, baseType: !640, size: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2980, file: !383, line: 118, baseType: !400, size: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2980, file: !383, line: 119, baseType: !368, size: 128, align: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !356, file: !37, line: 922, baseType: !429, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !356, file: !37, line: 923, baseType: !2706, size: 64, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !356, file: !37, line: 929, baseType: !162, offset: 384)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !356, file: !37, line: 930, baseType: !36, size: 32, offset: 384)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !356, file: !37, line: 931, baseType: !773, size: 64, offset: 448)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !356, file: !37, line: 932, baseType: !7, size: 32, offset: 512)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !356, file: !37, line: 933, baseType: !2553, size: 32, offset: 544)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !356, file: !37, line: 934, baseType: !1095, size: 192, offset: 576)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !356, file: !37, line: 935, baseType: !529, size: 64, offset: 768)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !356, file: !37, line: 936, baseType: !2995, size: 192, offset: 832)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !37, line: 885, size: 192, elements: !2996)
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3002}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2995, file: !37, line: 886, baseType: !2806)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2995, file: !37, line: 887, baseType: !1391, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2995, file: !37, line: 888, baseType: !45, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2995, file: !37, line: 889, baseType: !435, size: 32, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2995, file: !37, line: 889, baseType: !435, size: 32, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2995, file: !37, line: 890, baseType: !93, size: 32, offset: 160)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !356, file: !37, line: 937, baseType: !1467, size: 64, offset: 1024)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !356, file: !37, line: 938, baseType: !3005, size: 256, offset: 1088)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !37, line: 896, size: 256, elements: !3006)
!3006 = !{!3007, !3008, !3009, !3010, !3011, !3012}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3005, file: !37, line: 897, baseType: !327, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3005, file: !37, line: 898, baseType: !7, size: 32, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3005, file: !37, line: 899, baseType: !7, size: 32, offset: 96)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3005, file: !37, line: 902, baseType: !7, size: 32, offset: 128)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3005, file: !37, line: 903, baseType: !7, size: 32, offset: 160)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3005, file: !37, line: 904, baseType: !529, size: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !356, file: !37, line: 940, baseType: !422, size: 64, offset: 1344)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !356, file: !37, line: 945, baseType: !92, size: 64, offset: 1408)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !356, file: !37, line: 949, baseType: !192, size: 128, offset: 1472)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !356, file: !37, line: 950, baseType: !192, size: 128, offset: 1600)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !356, file: !37, line: 952, baseType: !735, size: 64, offset: 1728)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !356, file: !37, line: 953, baseType: !911, size: 32, offset: 1792)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !356, file: !37, line: 954, baseType: !911, size: 32, offset: 1824)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !346, file: !303, line: 174, baseType: !352, size: 64, offset: 320)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !346, file: !303, line: 176, baseType: !3022, size: 64, offset: 384)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!93, !355, !245, !345, !983}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !334, file: !303, line: 90, baseType: !329, size: 64, offset: 192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !334, file: !303, line: 91, baseType: !3027, size: 64, offset: 256)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !293, file: !240, line: 143, baseType: !3029, size: 64, offset: 256)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!3032, !245}
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3034)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !54, line: 39, size: 384, elements: !3035)
!3035 = !{!3036, !3037, !3041, !3045, !3053, !3057}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3034, file: !54, line: 40, baseType: !53, size: 32)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3034, file: !54, line: 41, baseType: !3038, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!115}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3034, file: !54, line: 42, baseType: !3042, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DISubroutineType(types: !3044)
!3044 = !{!92}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3034, file: !54, line: 43, baseType: !3046, size: 64, offset: 192)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!3049, !3051}
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !54, line: 19, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3034, file: !54, line: 44, baseType: !3054, size: 64, offset: 256)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!3049}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3034, file: !54, line: 45, baseType: !468, size: 64, offset: 320)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !293, file: !240, line: 144, baseType: !3059, size: 64, offset: 320)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!3049, !245}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !293, file: !240, line: 145, baseType: !3063, size: 64, offset: 384)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !245, !3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !239, file: !240, line: 70, baseType: !3069, size: 64, offset: 384)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !617, line: 123, size: 1024, elements: !3071)
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3200, !3201, !3202, !3203, !3204}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3070, file: !617, line: 124, baseType: !749, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3070, file: !617, line: 125, baseType: !749, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3070, file: !617, line: 135, baseType: !3069, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3070, file: !617, line: 136, baseType: !204, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3070, file: !617, line: 138, baseType: !762, size: 192, align: 64, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3070, file: !617, line: 140, baseType: !3049, size: 64, offset: 384)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3070, file: !617, line: 141, baseType: !7, size: 32, offset: 448)
!3079 = !DIDerivedType(tag: DW_TAG_member, scope: !3070, file: !617, line: 142, baseType: !3080, size: 256, offset: 512)
!3080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3070, file: !617, line: 142, size: 256, elements: !3081)
!3081 = !{!3082, !3128, !3132}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3080, file: !617, line: 143, baseType: !3083, size: 192)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !617, line: 91, size: 192, elements: !3084)
!3084 = !{!3085, !3086, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3083, file: !617, line: 92, baseType: !327, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3083, file: !617, line: 94, baseType: !758, size: 64, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3083, file: !617, line: 100, baseType: !3088, size: 64, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !617, line: 180, size: 704, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3100, !3101, !3102, !3126, !3127}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3089, file: !617, line: 182, baseType: !3069, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3089, file: !617, line: 183, baseType: !7, size: 32, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3089, file: !617, line: 186, baseType: !3094, size: 192, offset: 128)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3095, line: 19, size: 192, elements: !3096)
!3095 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3094, file: !3095, line: 20, baseType: !740, size: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3094, file: !3095, line: 21, baseType: !7, size: 32, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3094, file: !3095, line: 22, baseType: !7, size: 32, offset: 160)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3089, file: !617, line: 187, baseType: !418, size: 32, offset: 320)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3089, file: !617, line: 188, baseType: !418, size: 32, offset: 352)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3089, file: !617, line: 189, baseType: !3103, size: 64, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !617, line: 168, size: 320, elements: !3105)
!3105 = !{!3106, !3110, !3114, !3118, !3122}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3104, file: !617, line: 169, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!93, !712, !3088}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3104, file: !617, line: 171, baseType: !3111, size: 64, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!93, !3069, !204, !318}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3104, file: !617, line: 173, baseType: !3115, size: 64, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!93, !3069}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3104, file: !617, line: 174, baseType: !3119, size: 64, offset: 192)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!93, !3069, !3069, !204}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3104, file: !617, line: 176, baseType: !3123, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!93, !712, !3069, !3088}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3089, file: !617, line: 192, baseType: !192, size: 128, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3089, file: !617, line: 194, baseType: !1401, size: 128, offset: 576)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3080, file: !617, line: 144, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !617, line: 103, size: 64, elements: !3130)
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3129, file: !617, line: 104, baseType: !3069, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3080, file: !617, line: 145, baseType: !3133, size: 256)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !617, line: 107, size: 256, elements: !3134)
!3134 = !{!3135, !3195, !3198, !3199}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3133, file: !617, line: 108, baseType: !3136, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3138)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !617, line: 217, size: 768, elements: !3139)
!3139 = !{!3140, !3160, !3164, !3168, !3172, !3176, !3180, !3184, !3185, !3186, !3187, !3191}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3138, file: !617, line: 222, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!93, !3144}
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !617, line: 197, size: 1088, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3145, file: !617, line: 199, baseType: !3069, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3145, file: !617, line: 200, baseType: !355, size: 64, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3145, file: !617, line: 201, baseType: !712, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3145, file: !617, line: 202, baseType: !92, size: 64, offset: 192)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3145, file: !617, line: 205, baseType: !1095, size: 192, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3145, file: !617, line: 206, baseType: !1095, size: 192, offset: 448)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3145, file: !617, line: 207, baseType: !93, size: 32, offset: 640)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3145, file: !617, line: 208, baseType: !192, size: 128, offset: 704)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3145, file: !617, line: 209, baseType: !278, size: 64, offset: 832)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3145, file: !617, line: 211, baseType: !324, size: 64, offset: 896)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3145, file: !617, line: 212, baseType: !115, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3145, file: !617, line: 213, baseType: !115, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3145, file: !617, line: 214, baseType: !1011, size: 64, offset: 1024)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3138, file: !617, line: 223, baseType: !3161, size: 64, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{null, !3144}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3138, file: !617, line: 236, baseType: !3165, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!93, !712, !92}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3138, file: !617, line: 238, baseType: !3169, size: 64, offset: 192)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!92, !712, !2719}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3138, file: !617, line: 239, baseType: !3173, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!92, !712, !92, !2719}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3138, file: !617, line: 240, baseType: !3177, size: 64, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !712, !92}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3138, file: !617, line: 242, baseType: !3181, size: 64, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!309, !3144, !278, !324, !529}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3138, file: !617, line: 252, baseType: !324, size: 64, offset: 448)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3138, file: !617, line: 259, baseType: !115, size: 8, offset: 512)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3138, file: !617, line: 260, baseType: !3181, size: 64, offset: 576)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3138, file: !617, line: 263, baseType: !3188, size: 64, offset: 640)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!2748, !3144, !2750}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3138, file: !617, line: 266, baseType: !3192, size: 64, offset: 704)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!93, !3144, !983}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3133, file: !617, line: 109, baseType: !3196, size: 64, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !617, line: 31, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3133, file: !617, line: 110, baseType: !529, size: 64, offset: 128)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3133, file: !617, line: 111, baseType: !3069, size: 64, offset: 192)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3070, file: !617, line: 148, baseType: !92, size: 64, offset: 768)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3070, file: !617, line: 154, baseType: !422, size: 64, offset: 832)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3070, file: !617, line: 156, baseType: !319, size: 16, offset: 896)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3070, file: !617, line: 157, baseType: !318, size: 16, offset: 912)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3070, file: !617, line: 158, baseType: !3205, size: 64, offset: 960)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !617, line: 32, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !239, file: !240, line: 71, baseType: !3208, size: 32, offset: 448)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3209, line: 19, size: 32, elements: !3210)
!3209 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3208, file: !3209, line: 20, baseType: !1152, size: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !239, file: !240, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !239, file: !240, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !239, file: !240, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !239, file: !240, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !239, file: !240, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !236, file: !60, line: 463, baseType: !235, size: 64, offset: 512)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !236, file: !60, line: 465, baseType: !3219, size: 64, offset: 576)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !236, file: !60, line: 467, baseType: !204, size: 64, offset: 640)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !60, line: 468, baseType: !3223, size: 64, offset: 704)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3225)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3226)
!3226 = !{!3227, !3228, !3229, !3233, !3238, !3242}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3225, file: !60, line: 88, baseType: !204, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3225, file: !60, line: 89, baseType: !331, size: 64, offset: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3225, file: !60, line: 90, baseType: !3230, size: 64, offset: 128)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!93, !235, !273}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3225, file: !60, line: 91, baseType: !3234, size: 64, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!278, !235, !3237, !3066, !3067}
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3225, file: !60, line: 93, baseType: !3239, size: 64, offset: 256)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{null, !235}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3225, file: !60, line: 95, baseType: !3243, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3245)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3246)
!3246 = !{!3247, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3245, file: !67, line: 279, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!93, !235}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3245, file: !67, line: 280, baseType: !3239, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3245, file: !67, line: 281, baseType: !3248, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3245, file: !67, line: 282, baseType: !3248, size: 64, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3245, file: !67, line: 283, baseType: !3248, size: 64, offset: 256)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3245, file: !67, line: 284, baseType: !3248, size: 64, offset: 320)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3245, file: !67, line: 285, baseType: !3248, size: 64, offset: 384)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3245, file: !67, line: 286, baseType: !3248, size: 64, offset: 448)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3245, file: !67, line: 287, baseType: !3248, size: 64, offset: 512)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3245, file: !67, line: 288, baseType: !3248, size: 64, offset: 576)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3245, file: !67, line: 289, baseType: !3248, size: 64, offset: 640)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3245, file: !67, line: 290, baseType: !3248, size: 64, offset: 704)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3245, file: !67, line: 291, baseType: !3248, size: 64, offset: 768)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3245, file: !67, line: 292, baseType: !3248, size: 64, offset: 832)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3245, file: !67, line: 293, baseType: !3248, size: 64, offset: 896)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3245, file: !67, line: 294, baseType: !3248, size: 64, offset: 960)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3245, file: !67, line: 295, baseType: !3248, size: 64, offset: 1024)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3245, file: !67, line: 296, baseType: !3248, size: 64, offset: 1088)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3245, file: !67, line: 297, baseType: !3248, size: 64, offset: 1152)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3245, file: !67, line: 298, baseType: !3248, size: 64, offset: 1216)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3245, file: !67, line: 299, baseType: !3248, size: 64, offset: 1280)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3245, file: !67, line: 300, baseType: !3248, size: 64, offset: 1344)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3245, file: !67, line: 301, baseType: !3248, size: 64, offset: 1408)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !236, file: !60, line: 470, baseType: !228, size: 64, offset: 768)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !236, file: !60, line: 471, baseType: !3275, size: 64, offset: 832)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !236, file: !60, line: 473, baseType: !92, size: 64, offset: 896)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !236, file: !60, line: 475, baseType: !92, size: 64, offset: 960)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !236, file: !60, line: 480, baseType: !1095, size: 192, offset: 1024)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !236, file: !60, line: 484, baseType: !3280, size: 576, offset: 1216)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3280, file: !60, line: 362, baseType: !192, size: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3280, file: !60, line: 363, baseType: !192, size: 128, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3280, file: !60, line: 364, baseType: !192, size: 128, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3280, file: !60, line: 365, baseType: !192, size: 128, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3280, file: !60, line: 366, baseType: !115, size: 8, offset: 512)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3280, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !236, file: !60, line: 485, baseType: !3289, size: 2304, offset: 1792)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3290)
!3290 = !{!3291, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3390, !3394}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3289, file: !67, line: 566, baseType: !3292, size: 32)
!3292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3294)
!3294 = !{!3295}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3293, file: !67, line: 51, baseType: !93, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3289, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3289, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3289, file: !67, line: 569, baseType: !115, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3289, file: !67, line: 570, baseType: !115, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3289, file: !67, line: 571, baseType: !115, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3289, file: !67, line: 572, baseType: !115, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3289, file: !67, line: 573, baseType: !115, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3289, file: !67, line: 574, baseType: !115, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3289, file: !67, line: 575, baseType: !115, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3289, file: !67, line: 576, baseType: !115, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3289, file: !67, line: 577, baseType: !418, size: 32, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3289, file: !67, line: 578, baseType: !162, offset: 96)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3289, file: !67, line: 580, baseType: !192, size: 128, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3289, file: !67, line: 581, baseType: !1422, size: 192, offset: 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3289, file: !67, line: 582, baseType: !3311, size: 64, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3313, line: 43, size: 1472, elements: !3314)
!3313 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3322, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3312, file: !3313, line: 44, baseType: !204, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3312, file: !3313, line: 45, baseType: !93, size: 32, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3312, file: !3313, line: 46, baseType: !192, size: 128, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3312, file: !3313, line: 47, baseType: !162, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3312, file: !3313, line: 48, baseType: !3320, size: 64, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3312, file: !3313, line: 49, baseType: !3323, size: 320, offset: 320)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3324, line: 11, size: 320, elements: !3325)
!3324 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3325 = !{!3326, !3327, !3328, !3333}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3323, file: !3324, line: 16, baseType: !640, size: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3323, file: !3324, line: 17, baseType: !327, size: 64, offset: 128)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3323, file: !3324, line: 18, baseType: !3329, size: 64, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{null, !3332}
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3323, file: !3324, line: 19, baseType: !418, size: 32, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3312, file: !3313, line: 50, baseType: !327, size: 64, offset: 640)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3312, file: !3313, line: 51, baseType: !1222, size: 64, offset: 704)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3312, file: !3313, line: 52, baseType: !1222, size: 64, offset: 768)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3312, file: !3313, line: 53, baseType: !1222, size: 64, offset: 832)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3312, file: !3313, line: 54, baseType: !1222, size: 64, offset: 896)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3312, file: !3313, line: 55, baseType: !1222, size: 64, offset: 960)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3312, file: !3313, line: 56, baseType: !327, size: 64, offset: 1024)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3312, file: !3313, line: 57, baseType: !327, size: 64, offset: 1088)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3312, file: !3313, line: 58, baseType: !327, size: 64, offset: 1152)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3312, file: !3313, line: 59, baseType: !327, size: 64, offset: 1216)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3312, file: !3313, line: 60, baseType: !327, size: 64, offset: 1280)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3312, file: !3313, line: 61, baseType: !235, size: 64, offset: 1344)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3312, file: !3313, line: 62, baseType: !115, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3312, file: !3313, line: 63, baseType: !115, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3289, file: !67, line: 583, baseType: !115, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3289, file: !67, line: 584, baseType: !115, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3289, file: !67, line: 585, baseType: !115, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3289, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3289, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3289, file: !67, line: 592, baseType: !1214, size: 512, offset: 576)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3289, file: !67, line: 593, baseType: !422, size: 64, offset: 1088)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3289, file: !67, line: 594, baseType: !1877, size: 256, offset: 1152)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3289, file: !67, line: 595, baseType: !1401, size: 128, offset: 1408)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3289, file: !67, line: 596, baseType: !3320, size: 64, offset: 1536)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3289, file: !67, line: 597, baseType: !749, size: 32, offset: 1600)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3289, file: !67, line: 598, baseType: !749, size: 32, offset: 1632)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3289, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3289, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3289, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3289, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3289, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3289, file: !67, line: 604, baseType: !115, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3289, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3289, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3289, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3289, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3289, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3289, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3289, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3289, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3289, file: !67, line: 613, baseType: !93, size: 32, offset: 1792)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3289, file: !67, line: 614, baseType: !93, size: 32, offset: 1824)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3289, file: !67, line: 615, baseType: !422, size: 64, offset: 1856)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3289, file: !67, line: 616, baseType: !422, size: 64, offset: 1920)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3289, file: !67, line: 617, baseType: !422, size: 64, offset: 1984)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3289, file: !67, line: 618, baseType: !422, size: 64, offset: 2048)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3289, file: !67, line: 620, baseType: !3381, size: 64, offset: 2112)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3383)
!3383 = !{!3384, !3385, !3386, !3387}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3382, file: !67, line: 537, baseType: !162)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3382, file: !67, line: 538, baseType: !7, size: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3382, file: !67, line: 540, baseType: !192, size: 128, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3382, file: !67, line: 543, baseType: !3388, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3289, file: !67, line: 621, baseType: !3391, size: 64, offset: 2176)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{null, !235, !1364}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3289, file: !67, line: 622, baseType: !3395, size: 64, offset: 2240)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !236, file: !60, line: 486, baseType: !3398, size: 64, offset: 4096)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3407, !3408, !3409}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3399, file: !67, line: 643, baseType: !3245, size: 1472)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3399, file: !67, line: 644, baseType: !3248, size: 64, offset: 1472)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3399, file: !67, line: 645, baseType: !3404, size: 64, offset: 1536)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{null, !235, !115}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3399, file: !67, line: 646, baseType: !3248, size: 64, offset: 1600)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3399, file: !67, line: 647, baseType: !3239, size: 64, offset: 1664)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3399, file: !67, line: 648, baseType: !3239, size: 64, offset: 1728)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !236, file: !60, line: 493, baseType: !3411, size: 64, offset: 4160)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !236, file: !60, line: 499, baseType: !192, size: 128, offset: 4224)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !236, file: !60, line: 502, baseType: !3415, size: 64, offset: 4352)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3417)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !236, file: !60, line: 504, baseType: !3419, size: 64, offset: 4416)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !236, file: !60, line: 505, baseType: !422, size: 64, offset: 4480)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !236, file: !60, line: 510, baseType: !422, size: 64, offset: 4544)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !236, file: !60, line: 511, baseType: !3423, size: 64, offset: 4608)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3425)
!3425 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !236, file: !60, line: 513, baseType: !3427, size: 64, offset: 4672)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3428, file: !60, line: 293, baseType: !7, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3428, file: !60, line: 294, baseType: !327, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !236, file: !60, line: 515, baseType: !192, size: 128, offset: 4736)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !236, file: !60, line: 526, baseType: !3434, offset: 4864)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3435, line: 5, elements: !123)
!3435 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !236, file: !60, line: 528, baseType: !3437, size: 64, offset: 4864)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3439, line: 14, flags: DIFlagFwdDecl)
!3439 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !236, file: !60, line: 529, baseType: !3441, size: 64, offset: 4928)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !230, line: 22, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !236, file: !60, line: 534, baseType: !511, size: 32, offset: 4992)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !236, file: !60, line: 535, baseType: !418, size: 32, offset: 5024)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !236, file: !60, line: 537, baseType: !162, offset: 5056)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !236, file: !60, line: 538, baseType: !192, size: 128, offset: 5056)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !236, file: !60, line: 540, baseType: !3448, size: 64, offset: 5184)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3450, line: 54, size: 960, elements: !3451)
!3450 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458, !3462, !3466, !3467, !3468, !3469, !3473, !3477, !3478}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3449, file: !3450, line: 55, baseType: !204, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3449, file: !3450, line: 56, baseType: !631, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3449, file: !3450, line: 58, baseType: !331, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3449, file: !3450, line: 59, baseType: !331, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3449, file: !3450, line: 60, baseType: !245, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3449, file: !3450, line: 62, baseType: !3230, size: 64, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3449, file: !3450, line: 63, baseType: !3459, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!278, !235, !3237}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3449, file: !3450, line: 65, baseType: !3463, size: 64, offset: 448)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{null, !3448}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3449, file: !3450, line: 66, baseType: !3239, size: 64, offset: 512)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3449, file: !3450, line: 68, baseType: !3248, size: 64, offset: 576)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3449, file: !3450, line: 70, baseType: !3032, size: 64, offset: 640)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3449, file: !3450, line: 71, baseType: !3470, size: 64, offset: 704)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!3049, !235}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3449, file: !3450, line: 73, baseType: !3474, size: 64, offset: 768)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !235, !3066, !3067}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3449, file: !3450, line: 75, baseType: !3243, size: 64, offset: 832)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3449, file: !3450, line: 77, baseType: !3479, size: 64, offset: 896)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !230, line: 111, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !236, file: !60, line: 541, baseType: !331, size: 64, offset: 5248)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !236, file: !60, line: 543, baseType: !3239, size: 64, offset: 5312)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !236, file: !60, line: 544, baseType: !3484, size: 64, offset: 5376)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !236, file: !60, line: 545, baseType: !3487, size: 64, offset: 5440)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !236, file: !60, line: 547, baseType: !115, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !236, file: !60, line: 548, baseType: !115, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !236, file: !60, line: 549, baseType: !115, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !236, file: !60, line: 550, baseType: !115, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !229, file: !230, line: 86, baseType: !331, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !229, file: !230, line: 87, baseType: !331, size: 64, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !229, file: !230, line: 88, baseType: !331, size: 64, offset: 320)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !229, file: !230, line: 90, baseType: !3497, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!93, !235, !3275}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !229, file: !230, line: 91, baseType: !3230, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !229, file: !230, line: 92, baseType: !3248, size: 64, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !229, file: !230, line: 93, baseType: !3239, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !229, file: !230, line: 94, baseType: !3248, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !229, file: !230, line: 95, baseType: !3239, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !229, file: !230, line: 97, baseType: !3248, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !229, file: !230, line: 98, baseType: !3248, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !229, file: !230, line: 100, baseType: !3508, size: 64, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!93, !235, !3292}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !229, file: !230, line: 101, baseType: !3248, size: 64, offset: 960)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !229, file: !230, line: 103, baseType: !3248, size: 64, offset: 1024)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !229, file: !230, line: 105, baseType: !3248, size: 64, offset: 1088)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !229, file: !230, line: 107, baseType: !3243, size: 64, offset: 1152)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !229, file: !230, line: 109, baseType: !3516, size: 64, offset: 1216)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !230, line: 109, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !229, file: !230, line: 111, baseType: !3479, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !229, file: !230, line: 112, baseType: !646, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !229, file: !230, line: 114, baseType: !115, size: 8, offset: 1344)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !224, file: !81, line: 99, baseType: !631, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !224, file: !81, line: 100, baseType: !204, size: 64, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !224, file: !81, line: 102, baseType: !115, size: 8, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !224, file: !81, line: 103, baseType: !80, size: 32, offset: 288)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !224, file: !81, line: 105, baseType: !3527, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3529)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !155, line: 262, size: 1600, elements: !3530)
!3530 = !{!3531, !3532, !3533, !3534}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3529, file: !155, line: 263, baseType: !144, size: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3529, file: !155, line: 264, baseType: !144, size: 256, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3529, file: !155, line: 265, baseType: !149, size: 1024, offset: 512)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3529, file: !155, line: 266, baseType: !3049, size: 64, offset: 1536)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !224, file: !81, line: 106, baseType: !3536, size: 64, offset: 384)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3538)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !155, line: 210, size: 256, elements: !3539)
!3539 = !{!3540, !3544, !3546, !3547}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3538, file: !155, line: 211, baseType: !3541, size: 72)
!3541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 72, elements: !3542)
!3542 = !{!3543}
!3543 = !DISubrange(count: 9)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3538, file: !155, line: 212, baseType: !3545, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !155, line: 14, baseType: !327)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3538, file: !155, line: 213, baseType: !419, size: 32, offset: 192)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3538, file: !155, line: 214, baseType: !419, size: 32, offset: 224)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !224, file: !81, line: 108, baseType: !3248, size: 64, offset: 448)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !224, file: !81, line: 109, baseType: !3239, size: 64, offset: 512)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !224, file: !81, line: 110, baseType: !3248, size: 64, offset: 576)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !224, file: !81, line: 111, baseType: !3239, size: 64, offset: 640)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !224, file: !81, line: 112, baseType: !3508, size: 64, offset: 704)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !224, file: !81, line: 113, baseType: !3248, size: 64, offset: 768)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !224, file: !81, line: 114, baseType: !331, size: 64, offset: 832)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !224, file: !81, line: 115, baseType: !331, size: 64, offset: 896)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !224, file: !81, line: 117, baseType: !3243, size: 64, offset: 960)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !224, file: !81, line: 118, baseType: !3239, size: 64, offset: 1024)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !224, file: !81, line: 120, baseType: !3559, size: 64, offset: 1088)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !81, line: 120, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !139, file: !140, line: 53, baseType: !1095, size: 192, offset: 2432)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !139, file: !140, line: 55, baseType: !236, size: 5568, offset: 2624)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !140, line: 57, baseType: !192, size: 128, offset: 8192)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "ps2_cmd_mutex", scope: !139, file: !140, line: 63, baseType: !3565, size: 64, offset: 8320)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !134, file: !135, line: 37, baseType: !1095, size: 192, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !134, file: !135, line: 40, baseType: !1401, size: 128, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !135, line: 42, baseType: !327, size: 64, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "cmdbuf", scope: !134, file: !135, line: 43, baseType: !3570, size: 64, offset: 448)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !1252)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcnt", scope: !134, file: !135, line: 44, baseType: !118, size: 8, offset: 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "nak", scope: !134, file: !135, line: 45, baseType: !118, size: 8, offset: 520)
!3573 = !DIGlobalVariableExpression(var: !3574, expr: !DIExpression())
!3574 = distinct !DIGlobalVariable(name: "__key", scope: !130, file: !3, line: 380, type: !646, isLocal: true, isDefinition: true)
!3575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 360, elements: !3576)
!3576 = !{!3577}
!3577 = !DISubrange(count: 45)
!3578 = !{!"rsp"}
!3579 = !{i32 7, !"Dwarf Version", i32 4}
!3580 = !{i32 2, !"Debug Info Version", i32 3}
!3581 = !{i32 1, !"wchar_size", i32 2}
!3582 = !{i32 1, !"Code Model", i32 2}
!3583 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3584 = distinct !DISubprogram(name: "ps2_sendbyte", scope: !3, file: !3, line: 86, type: !3585, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!93, !133, !118, !7}
!3587 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !3584, file: !3, line: 86, type: !133)
!3588 = !DILocation(line: 86, column: 33, scope: !3584)
!3589 = !DILocalVariable(name: "byte", arg: 2, scope: !3584, file: !3, line: 86, type: !118)
!3590 = !DILocation(line: 86, column: 44, scope: !3584)
!3591 = !DILocalVariable(name: "timeout", arg: 3, scope: !3584, file: !3, line: 86, type: !7)
!3592 = !DILocation(line: 86, column: 63, scope: !3584)
!3593 = !DILocalVariable(name: "retval", scope: !3584, file: !3, line: 88, type: !93)
!3594 = !DILocation(line: 88, column: 6, scope: !3584)
!3595 = !DILocation(line: 90, column: 17, scope: !3584)
!3596 = !DILocation(line: 90, column: 25, scope: !3584)
!3597 = !DILocation(line: 90, column: 2, scope: !3584)
!3598 = !DILocation(line: 92, column: 27, scope: !3584)
!3599 = !DILocation(line: 92, column: 35, scope: !3584)
!3600 = !DILocation(line: 92, column: 41, scope: !3584)
!3601 = !DILocation(line: 92, column: 11, scope: !3584)
!3602 = !DILocation(line: 92, column: 9, scope: !3584)
!3603 = !DILocation(line: 95, column: 20, scope: !3584)
!3604 = !DILocation(line: 95, column: 28, scope: !3584)
!3605 = !DILocation(line: 95, column: 2, scope: !3584)
!3606 = !DILocation(line: 97, column: 9, scope: !3584)
!3607 = !DILocation(line: 97, column: 2, scope: !3584)
!3608 = distinct !DISubprogram(name: "serio_pause_rx", scope: !140, file: !140, line: 154, type: !186, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3609 = !DILocalVariable(name: "lock", arg: 1, scope: !3610, file: !3611, line: 377, type: !3614)
!3610 = distinct !DISubprogram(name: "spin_lock_irq", scope: !3611, file: !3611, line: 377, type: !3612, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3611 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !3614}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!3615 = !DILocation(line: 377, column: 55, scope: !3610, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 156, column: 2, scope: !3608)
!3617 = !DILocalVariable(name: "serio", arg: 1, scope: !3608, file: !140, line: 154, type: !138)
!3618 = !DILocation(line: 154, column: 49, scope: !3608)
!3619 = !DILocation(line: 156, column: 17, scope: !3608)
!3620 = !DILocation(line: 156, column: 24, scope: !3608)
!3621 = !DILocation(line: 379, column: 2, scope: !3622, inlinedAt: !3616)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3611, line: 379, column: 2)
!3623 = distinct !DILexicalBlock(scope: !3610, file: !3611, line: 379, column: 2)
!3624 = !DILocation(line: 379, column: 2, scope: !3625, inlinedAt: !3616)
!3625 = distinct !DILexicalBlock(scope: !3623, file: !3611, line: 379, column: 2)
!3626 = !{i32 -2145464767}
!3627 = !DILocation(line: 379, column: 2, scope: !3628, inlinedAt: !3616)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !3611, line: 379, column: 2)
!3629 = !DILocation(line: 157, column: 1, scope: !3608)
!3630 = distinct !DISubprogram(name: "ps2_do_sendbyte", scope: !3, file: !3, line: 25, type: !3631, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!93, !133, !118, !7, !7}
!3633 = !DILocalVariable(name: "m", arg: 1, scope: !3634, file: !3635, line: 363, type: !2670)
!3634 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !3635, file: !3635, line: 363, type: !3636, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3635 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!327, !2670}
!3638 = !DILocation(line: 363, column: 74, scope: !3634, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 45, column: 4, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 45, column: 4)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 45, column: 4)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 45, column: 4)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 41, column: 7)
!3644 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 34, column: 5)
!3645 = !DILocation(line: 363, column: 74, scope: !3634, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 45, column: 4, scope: !3642)
!3647 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !3630, file: !3, line: 25, type: !133)
!3648 = !DILocation(line: 25, column: 43, scope: !3630)
!3649 = !DILocalVariable(name: "byte", arg: 2, scope: !3630, file: !3, line: 25, type: !118)
!3650 = !DILocation(line: 25, column: 54, scope: !3630)
!3651 = !DILocalVariable(name: "timeout", arg: 3, scope: !3630, file: !3, line: 26, type: !7)
!3652 = !DILocation(line: 26, column: 20, scope: !3630)
!3653 = !DILocalVariable(name: "max_attempts", arg: 4, scope: !3630, file: !3, line: 26, type: !7)
!3654 = !DILocation(line: 26, column: 42, scope: !3630)
!3655 = !DILocalVariable(name: "attempt", scope: !3630, file: !3, line: 29, type: !93)
!3656 = !DILocation(line: 29, column: 6, scope: !3630)
!3657 = !DILocalVariable(name: "error", scope: !3630, file: !3, line: 30, type: !93)
!3658 = !DILocation(line: 30, column: 6, scope: !3630)
!3659 = !DILocation(line: 32, column: 2, scope: !3630)
!3660 = !DILocation(line: 32, column: 2, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 32, column: 2)
!3662 = !DILocation(line: 34, column: 2, scope: !3630)
!3663 = !DILocation(line: 35, column: 3, scope: !3644)
!3664 = !DILocation(line: 35, column: 11, scope: !3644)
!3665 = !DILocation(line: 35, column: 15, scope: !3644)
!3666 = !DILocation(line: 36, column: 3, scope: !3644)
!3667 = !DILocation(line: 36, column: 11, scope: !3644)
!3668 = !DILocation(line: 36, column: 17, scope: !3644)
!3669 = !DILocation(line: 38, column: 21, scope: !3644)
!3670 = !DILocation(line: 38, column: 29, scope: !3644)
!3671 = !DILocation(line: 38, column: 3, scope: !3644)
!3672 = !DILocation(line: 40, column: 23, scope: !3644)
!3673 = !DILocation(line: 40, column: 31, scope: !3644)
!3674 = !DILocation(line: 40, column: 38, scope: !3644)
!3675 = !DILocation(line: 40, column: 11, scope: !3644)
!3676 = !DILocation(line: 40, column: 9, scope: !3644)
!3677 = !DILocation(line: 41, column: 7, scope: !3643)
!3678 = !DILocation(line: 41, column: 7, scope: !3644)
!3679 = !DILocation(line: 42, column: 4, scope: !3643)
!3680 = !DILocalVariable(name: "__ret", scope: !3642, file: !3, line: 45, type: !94)
!3681 = !DILocation(line: 45, column: 4, scope: !3642)
!3682 = !DILocation(line: 365, column: 27, scope: !3683, inlinedAt: !3646)
!3683 = distinct !DILexicalBlock(scope: !3634, file: !3635, line: 365, column: 6)
!3684 = !DILocation(line: 365, column: 6, scope: !3683, inlinedAt: !3646)
!3685 = !DILocation(line: 365, column: 6, scope: !3634, inlinedAt: !3646)
!3686 = !DILocation(line: 366, column: 12, scope: !3687, inlinedAt: !3646)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !3635, line: 366, column: 7)
!3688 = distinct !DILexicalBlock(scope: !3683, file: !3635, line: 365, column: 31)
!3689 = !DILocation(line: 366, column: 14, scope: !3687, inlinedAt: !3646)
!3690 = !DILocation(line: 366, column: 7, scope: !3688, inlinedAt: !3646)
!3691 = !DILocation(line: 367, column: 4, scope: !3687, inlinedAt: !3646)
!3692 = !DILocation(line: 368, column: 28, scope: !3688, inlinedAt: !3646)
!3693 = !DILocation(line: 368, column: 10, scope: !3688, inlinedAt: !3646)
!3694 = !DILocation(line: 368, column: 3, scope: !3688, inlinedAt: !3646)
!3695 = !DILocation(line: 370, column: 29, scope: !3696, inlinedAt: !3646)
!3696 = distinct !DILexicalBlock(scope: !3683, file: !3635, line: 369, column: 9)
!3697 = !DILocation(line: 370, column: 10, scope: !3696, inlinedAt: !3646)
!3698 = !DILocation(line: 370, column: 3, scope: !3696, inlinedAt: !3646)
!3699 = !DILocation(line: 372, column: 1, scope: !3634, inlinedAt: !3646)
!3700 = !DILocation(line: 45, column: 4, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3642, file: !3, line: 45, column: 4)
!3702 = !DILocation(line: 45, column: 4, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3701, file: !3, line: 45, column: 4)
!3704 = !DILocalVariable(name: "__cond", scope: !3705, file: !3, line: 45, type: !115)
!3705 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 45, column: 4)
!3706 = !DILocation(line: 45, column: 4, scope: !3705)
!3707 = !DILocation(line: 45, column: 4, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 45, column: 4)
!3709 = !DILocation(line: 45, column: 4, scope: !3641)
!3710 = !DILocalVariable(name: "__wq_entry", scope: !3640, file: !3, line: 45, type: !3711)
!3711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1402, line: 29, size: 320, elements: !3712)
!3712 = !{!3713, !3714, !3715, !3721}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3711, file: !1402, line: 30, baseType: !7, size: 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3711, file: !1402, line: 31, baseType: !92, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3711, file: !1402, line: 32, baseType: !3716, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1402, line: 16, baseType: !3717)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!93, !3720, !7, !93, !92}
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3711, file: !1402, line: 33, baseType: !192, size: 128, offset: 192)
!3722 = !DILocation(line: 45, column: 4, scope: !3640)
!3723 = !DILocalVariable(name: "__ret", scope: !3640, file: !3, line: 45, type: !94)
!3724 = !DILocation(line: 365, column: 27, scope: !3683, inlinedAt: !3639)
!3725 = !DILocation(line: 365, column: 6, scope: !3683, inlinedAt: !3639)
!3726 = !DILocation(line: 365, column: 6, scope: !3634, inlinedAt: !3639)
!3727 = !DILocation(line: 366, column: 12, scope: !3687, inlinedAt: !3639)
!3728 = !DILocation(line: 366, column: 14, scope: !3687, inlinedAt: !3639)
!3729 = !DILocation(line: 366, column: 7, scope: !3688, inlinedAt: !3639)
!3730 = !DILocation(line: 367, column: 4, scope: !3687, inlinedAt: !3639)
!3731 = !DILocation(line: 368, column: 28, scope: !3688, inlinedAt: !3639)
!3732 = !DILocation(line: 368, column: 10, scope: !3688, inlinedAt: !3639)
!3733 = !DILocation(line: 368, column: 3, scope: !3688, inlinedAt: !3639)
!3734 = !DILocation(line: 370, column: 29, scope: !3696, inlinedAt: !3639)
!3735 = !DILocation(line: 370, column: 10, scope: !3696, inlinedAt: !3639)
!3736 = !DILocation(line: 370, column: 3, scope: !3696, inlinedAt: !3639)
!3737 = !DILocation(line: 372, column: 1, scope: !3634, inlinedAt: !3639)
!3738 = !DILocalVariable(name: "__int", scope: !3739, file: !3, line: 45, type: !94)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 45, column: 4)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 45, column: 4)
!3741 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 45, column: 4)
!3742 = !DILocation(line: 45, column: 4, scope: !3739)
!3743 = !DILocalVariable(name: "__cond", scope: !3744, file: !3, line: 45, type: !115)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !3, line: 45, column: 4)
!3745 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 45, column: 4)
!3746 = !DILocation(line: 45, column: 4, scope: !3744)
!3747 = !DILocation(line: 45, column: 4, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3744, file: !3, line: 45, column: 4)
!3749 = !DILocation(line: 45, column: 4, scope: !3745)
!3750 = !DILocation(line: 45, column: 4, scope: !3740)
!3751 = distinct !{!3751, !3752, !3752}
!3752 = !DILocation(line: 45, column: 4, scope: !3741)
!3753 = !DILabel(scope: !3640, name: "__out", file: !3, line: 45)
!3754 = !DILocation(line: 49, column: 18, scope: !3644)
!3755 = !DILocation(line: 49, column: 26, scope: !3644)
!3756 = !DILocation(line: 49, column: 3, scope: !3644)
!3757 = !DILocation(line: 50, column: 2, scope: !3644)
!3758 = !DILocation(line: 50, column: 11, scope: !3630)
!3759 = !DILocation(line: 50, column: 19, scope: !3630)
!3760 = !DILocation(line: 50, column: 23, scope: !3630)
!3761 = !DILocation(line: 50, column: 38, scope: !3630)
!3762 = !DILocation(line: 50, column: 41, scope: !3630)
!3763 = !DILocation(line: 50, column: 53, scope: !3630)
!3764 = !DILocation(line: 50, column: 51, scope: !3630)
!3765 = !DILocation(line: 0, scope: !3630)
!3766 = distinct !{!3766, !3662, !3767}
!3767 = !DILocation(line: 50, column: 65, scope: !3630)
!3768 = !DILocation(line: 52, column: 2, scope: !3630)
!3769 = !DILocation(line: 52, column: 10, scope: !3630)
!3770 = !DILocation(line: 52, column: 16, scope: !3630)
!3771 = !DILocation(line: 54, column: 7, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 54, column: 6)
!3773 = !DILocation(line: 54, column: 6, scope: !3630)
!3774 = !DILocation(line: 55, column: 11, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 54, column: 14)
!3776 = !DILocation(line: 55, column: 19, scope: !3775)
!3777 = !DILocation(line: 55, column: 3, scope: !3775)
!3778 = !DILocation(line: 57, column: 4, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 55, column: 24)
!3780 = !DILocation(line: 59, column: 10, scope: !3779)
!3781 = !DILocation(line: 60, column: 4, scope: !3779)
!3782 = !DILocation(line: 62, column: 10, scope: !3779)
!3783 = !DILocation(line: 63, column: 4, scope: !3779)
!3784 = !DILocation(line: 65, column: 10, scope: !3779)
!3785 = !DILocation(line: 66, column: 4, scope: !3779)
!3786 = !DILocation(line: 68, column: 2, scope: !3775)
!3787 = !DILocation(line: 70, column: 6, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3630, file: !3, line: 70, column: 6)
!3789 = !DILocation(line: 70, column: 12, scope: !3788)
!3790 = !DILocation(line: 70, column: 15, scope: !3788)
!3791 = !DILocation(line: 70, column: 23, scope: !3788)
!3792 = !DILocation(line: 70, column: 6, scope: !3630)
!3793 = !DILocation(line: 71, column: 3, scope: !3788)
!3794 = !DILocation(line: 75, column: 9, scope: !3630)
!3795 = !DILocation(line: 75, column: 2, scope: !3630)
!3796 = distinct !DISubprogram(name: "serio_continue_rx", scope: !140, file: !140, line: 159, type: !186, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3797 = !DILocalVariable(name: "lock", arg: 1, scope: !3798, file: !3611, line: 402, type: !3614)
!3798 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !3611, file: !3611, line: 402, type: !3612, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3799 = !DILocation(line: 402, column: 57, scope: !3798, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 161, column: 2, scope: !3796)
!3801 = !DILocalVariable(name: "serio", arg: 1, scope: !3796, file: !140, line: 159, type: !138)
!3802 = !DILocation(line: 159, column: 52, scope: !3796)
!3803 = !DILocation(line: 161, column: 19, scope: !3796)
!3804 = !DILocation(line: 161, column: 26, scope: !3796)
!3805 = !DILocation(line: 404, column: 2, scope: !3806, inlinedAt: !3800)
!3806 = distinct !DILexicalBlock(scope: !3807, file: !3611, line: 404, column: 2)
!3807 = distinct !DILexicalBlock(scope: !3798, file: !3611, line: 404, column: 2)
!3808 = !DILocation(line: 404, column: 2, scope: !3809, inlinedAt: !3800)
!3809 = distinct !DILexicalBlock(scope: !3807, file: !3611, line: 404, column: 2)
!3810 = !{i32 -2145463019}
!3811 = !DILocation(line: 404, column: 2, scope: !3812, inlinedAt: !3800)
!3812 = distinct !DILexicalBlock(scope: !3809, file: !3611, line: 404, column: 2)
!3813 = !DILocation(line: 162, column: 1, scope: !3796)
!3814 = distinct !DISubprogram(name: "ps2_begin_command", scope: !3, file: !3, line: 101, type: !3815, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !133}
!3817 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !3814, file: !3, line: 101, type: !133)
!3818 = !DILocation(line: 101, column: 39, scope: !3814)
!3819 = !DILocalVariable(name: "m", scope: !3814, file: !3, line: 103, type: !3565)
!3820 = !DILocation(line: 103, column: 16, scope: !3814)
!3821 = !DILocation(line: 103, column: 20, scope: !3814)
!3822 = !DILocation(line: 103, column: 28, scope: !3814)
!3823 = !DILocation(line: 103, column: 35, scope: !3814)
!3824 = !DILocation(line: 103, column: 53, scope: !3814)
!3825 = !DILocation(line: 103, column: 61, scope: !3814)
!3826 = !DILocation(line: 105, column: 13, scope: !3814)
!3827 = !DILocation(line: 105, column: 2, scope: !3814)
!3828 = !DILocation(line: 106, column: 1, scope: !3814)
!3829 = distinct !DISubprogram(name: "ps2_end_command", scope: !3, file: !3, line: 109, type: !3815, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3830 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !3829, file: !3, line: 109, type: !133)
!3831 = !DILocation(line: 109, column: 37, scope: !3829)
!3832 = !DILocalVariable(name: "m", scope: !3829, file: !3, line: 111, type: !3565)
!3833 = !DILocation(line: 111, column: 16, scope: !3829)
!3834 = !DILocation(line: 111, column: 20, scope: !3829)
!3835 = !DILocation(line: 111, column: 28, scope: !3829)
!3836 = !DILocation(line: 111, column: 35, scope: !3829)
!3837 = !DILocation(line: 111, column: 53, scope: !3829)
!3838 = !DILocation(line: 111, column: 61, scope: !3829)
!3839 = !DILocation(line: 113, column: 15, scope: !3829)
!3840 = !DILocation(line: 113, column: 2, scope: !3829)
!3841 = !DILocation(line: 114, column: 1, scope: !3829)
!3842 = distinct !DISubprogram(name: "ps2_drain", scope: !3, file: !3, line: 122, type: !3843, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{null, !133, !324, !7}
!3845 = !DILocation(line: 363, column: 74, scope: !3634, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 136, column: 2, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 136, column: 2)
!3848 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 136, column: 2)
!3849 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 136, column: 2)
!3850 = !DILocation(line: 363, column: 74, scope: !3634, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 136, column: 2, scope: !3849)
!3852 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !3842, file: !3, line: 122, type: !133)
!3853 = !DILocation(line: 122, column: 31, scope: !3842)
!3854 = !DILocalVariable(name: "maxbytes", arg: 2, scope: !3842, file: !3, line: 122, type: !324)
!3855 = !DILocation(line: 122, column: 46, scope: !3842)
!3856 = !DILocalVariable(name: "timeout", arg: 3, scope: !3842, file: !3, line: 122, type: !7)
!3857 = !DILocation(line: 122, column: 69, scope: !3842)
!3858 = !DILocation(line: 124, column: 6, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 124, column: 6)
!3860 = !DILocation(line: 124, column: 15, scope: !3859)
!3861 = !DILocation(line: 124, column: 6, scope: !3842)
!3862 = !DILocalVariable(name: "__ret_warn_on", scope: !3863, file: !3, line: 125, type: !93)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !3, line: 125, column: 3)
!3864 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 124, column: 41)
!3865 = !DILocation(line: 125, column: 3, scope: !3863)
!3866 = !DILocation(line: 125, column: 3, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 125, column: 3)
!3868 = !DILocation(line: 125, column: 3, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 125, column: 3)
!3870 = !DILocation(line: 125, column: 3, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 125, column: 3)
!3872 = !DILocation(line: 125, column: 3, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 125, column: 3)
!3874 = !{i32 -2142792616, i32 -2142792587, i32 -2142792541, i32 -2142792483, i32 -2142792429, i32 -2142792375, i32 -2142792320, i32 -2142792289}
!3875 = !DILocation(line: 125, column: 3, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 125, column: 3)
!3877 = !{i32 -2142791879, i32 -2142791872, i32 -2142791820, i32 -2142791789, i32 -2142791759}
!3878 = !DILocation(line: 125, column: 3, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3869, file: !3, line: 125, column: 3)
!3880 = !DILocation(line: 126, column: 12, scope: !3864)
!3881 = !DILocation(line: 127, column: 2, scope: !3864)
!3882 = !DILocation(line: 129, column: 20, scope: !3842)
!3883 = !DILocation(line: 129, column: 2, scope: !3842)
!3884 = !DILocation(line: 131, column: 17, scope: !3842)
!3885 = !DILocation(line: 131, column: 25, scope: !3842)
!3886 = !DILocation(line: 131, column: 2, scope: !3842)
!3887 = !DILocation(line: 132, column: 2, scope: !3842)
!3888 = !DILocation(line: 132, column: 10, scope: !3842)
!3889 = !DILocation(line: 132, column: 16, scope: !3842)
!3890 = !DILocation(line: 133, column: 19, scope: !3842)
!3891 = !DILocation(line: 133, column: 2, scope: !3842)
!3892 = !DILocation(line: 133, column: 10, scope: !3842)
!3893 = !DILocation(line: 133, column: 17, scope: !3842)
!3894 = !DILocation(line: 134, column: 20, scope: !3842)
!3895 = !DILocation(line: 134, column: 28, scope: !3842)
!3896 = !DILocation(line: 134, column: 2, scope: !3842)
!3897 = !DILocalVariable(name: "__ret", scope: !3849, file: !3, line: 136, type: !94)
!3898 = !DILocation(line: 136, column: 2, scope: !3849)
!3899 = !DILocation(line: 365, column: 27, scope: !3683, inlinedAt: !3851)
!3900 = !DILocation(line: 365, column: 6, scope: !3683, inlinedAt: !3851)
!3901 = !DILocation(line: 365, column: 6, scope: !3634, inlinedAt: !3851)
!3902 = !DILocation(line: 366, column: 12, scope: !3687, inlinedAt: !3851)
!3903 = !DILocation(line: 366, column: 14, scope: !3687, inlinedAt: !3851)
!3904 = !DILocation(line: 366, column: 7, scope: !3688, inlinedAt: !3851)
!3905 = !DILocation(line: 367, column: 4, scope: !3687, inlinedAt: !3851)
!3906 = !DILocation(line: 368, column: 28, scope: !3688, inlinedAt: !3851)
!3907 = !DILocation(line: 368, column: 10, scope: !3688, inlinedAt: !3851)
!3908 = !DILocation(line: 368, column: 3, scope: !3688, inlinedAt: !3851)
!3909 = !DILocation(line: 370, column: 29, scope: !3696, inlinedAt: !3851)
!3910 = !DILocation(line: 370, column: 10, scope: !3696, inlinedAt: !3851)
!3911 = !DILocation(line: 370, column: 3, scope: !3696, inlinedAt: !3851)
!3912 = !DILocation(line: 372, column: 1, scope: !3634, inlinedAt: !3851)
!3913 = !DILocation(line: 136, column: 2, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3849, file: !3, line: 136, column: 2)
!3915 = !DILocation(line: 136, column: 2, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3914, file: !3, line: 136, column: 2)
!3917 = !DILocalVariable(name: "__cond", scope: !3918, file: !3, line: 136, type: !115)
!3918 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 136, column: 2)
!3919 = !DILocation(line: 136, column: 2, scope: !3918)
!3920 = !DILocation(line: 136, column: 2, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 136, column: 2)
!3922 = !DILocation(line: 136, column: 2, scope: !3848)
!3923 = !DILocalVariable(name: "__wq_entry", scope: !3847, file: !3, line: 136, type: !3711)
!3924 = !DILocation(line: 136, column: 2, scope: !3847)
!3925 = !DILocalVariable(name: "__ret", scope: !3847, file: !3, line: 136, type: !94)
!3926 = !DILocation(line: 365, column: 27, scope: !3683, inlinedAt: !3846)
!3927 = !DILocation(line: 365, column: 6, scope: !3683, inlinedAt: !3846)
!3928 = !DILocation(line: 365, column: 6, scope: !3634, inlinedAt: !3846)
!3929 = !DILocation(line: 366, column: 12, scope: !3687, inlinedAt: !3846)
!3930 = !DILocation(line: 366, column: 14, scope: !3687, inlinedAt: !3846)
!3931 = !DILocation(line: 366, column: 7, scope: !3688, inlinedAt: !3846)
!3932 = !DILocation(line: 367, column: 4, scope: !3687, inlinedAt: !3846)
!3933 = !DILocation(line: 368, column: 28, scope: !3688, inlinedAt: !3846)
!3934 = !DILocation(line: 368, column: 10, scope: !3688, inlinedAt: !3846)
!3935 = !DILocation(line: 368, column: 3, scope: !3688, inlinedAt: !3846)
!3936 = !DILocation(line: 370, column: 29, scope: !3696, inlinedAt: !3846)
!3937 = !DILocation(line: 370, column: 10, scope: !3696, inlinedAt: !3846)
!3938 = !DILocation(line: 370, column: 3, scope: !3696, inlinedAt: !3846)
!3939 = !DILocation(line: 372, column: 1, scope: !3634, inlinedAt: !3846)
!3940 = !DILocalVariable(name: "__int", scope: !3941, file: !3, line: 136, type: !94)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 136, column: 2)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 136, column: 2)
!3943 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 136, column: 2)
!3944 = !DILocation(line: 136, column: 2, scope: !3941)
!3945 = !DILocalVariable(name: "__cond", scope: !3946, file: !3, line: 136, type: !115)
!3946 = distinct !DILexicalBlock(scope: !3947, file: !3, line: 136, column: 2)
!3947 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 136, column: 2)
!3948 = !DILocation(line: 136, column: 2, scope: !3946)
!3949 = !DILocation(line: 136, column: 2, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3946, file: !3, line: 136, column: 2)
!3951 = !DILocation(line: 136, column: 2, scope: !3947)
!3952 = !DILocation(line: 136, column: 2, scope: !3942)
!3953 = distinct !{!3953, !3954, !3954}
!3954 = !DILocation(line: 136, column: 2, scope: !3943)
!3955 = !DILabel(scope: !3847, name: "__out", file: !3, line: 136)
!3956 = !DILocation(line: 140, column: 18, scope: !3842)
!3957 = !DILocation(line: 140, column: 2, scope: !3842)
!3958 = !DILocation(line: 141, column: 1, scope: !3842)
!3959 = !DILocalVariable(name: "id_byte", arg: 1, scope: !112, file: !3, line: 149, type: !118)
!3960 = !DILocation(line: 149, column: 28, scope: !112)
!3961 = !DILocation(line: 160, column: 30, scope: !112)
!3962 = !DILocation(line: 160, column: 9, scope: !112)
!3963 = !DILocation(line: 160, column: 61, scope: !112)
!3964 = !DILocation(line: 160, column: 2, scope: !112)
!3965 = distinct !DISubprogram(name: "__ps2_command", scope: !3, file: !3, line: 226, type: !3966, scopeLine: 227, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!93, !133, !3968, !7}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!3969 = !DILocation(line: 363, column: 74, scope: !3634, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 283, column: 12, scope: !3965)
!3971 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !3965, file: !3, line: 226, type: !133)
!3972 = !DILocation(line: 226, column: 34, scope: !3965)
!3973 = !DILocalVariable(name: "param", arg: 2, scope: !3965, file: !3, line: 226, type: !3968)
!3974 = !DILocation(line: 226, column: 46, scope: !3965)
!3975 = !DILocalVariable(name: "command", arg: 3, scope: !3965, file: !3, line: 226, type: !7)
!3976 = !DILocation(line: 226, column: 66, scope: !3965)
!3977 = !DILocalVariable(name: "timeout", scope: !3965, file: !3, line: 228, type: !7)
!3978 = !DILocation(line: 228, column: 15, scope: !3965)
!3979 = !DILocalVariable(name: "send", scope: !3965, file: !3, line: 229, type: !7)
!3980 = !DILocation(line: 229, column: 15, scope: !3965)
!3981 = !DILocation(line: 229, column: 23, scope: !3965)
!3982 = !DILocation(line: 229, column: 31, scope: !3965)
!3983 = !DILocation(line: 229, column: 38, scope: !3965)
!3984 = !DILocalVariable(name: "receive", scope: !3965, file: !3, line: 230, type: !7)
!3985 = !DILocation(line: 230, column: 15, scope: !3965)
!3986 = !DILocation(line: 230, column: 26, scope: !3965)
!3987 = !DILocation(line: 230, column: 34, scope: !3965)
!3988 = !DILocation(line: 230, column: 40, scope: !3965)
!3989 = !DILocalVariable(name: "rc", scope: !3965, file: !3, line: 231, type: !93)
!3990 = !DILocation(line: 231, column: 6, scope: !3965)
!3991 = !DILocalVariable(name: "i", scope: !3965, file: !3, line: 232, type: !93)
!3992 = !DILocation(line: 232, column: 6, scope: !3965)
!3993 = !DILocalVariable(name: "send_param", scope: !3965, file: !3, line: 233, type: !3994)
!3994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !1653)
!3995 = !DILocation(line: 233, column: 5, scope: !3965)
!3996 = !DILocation(line: 235, column: 6, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 235, column: 6)
!3998 = !DILocation(line: 235, column: 14, scope: !3997)
!3999 = !DILocation(line: 235, column: 6, scope: !3965)
!4000 = !DILocalVariable(name: "__ret_warn_on", scope: !4001, file: !3, line: 236, type: !93)
!4001 = distinct !DILexicalBlock(scope: !4002, file: !3, line: 236, column: 3)
!4002 = distinct !DILexicalBlock(scope: !3997, file: !3, line: 235, column: 40)
!4003 = !DILocation(line: 236, column: 3, scope: !4001)
!4004 = !DILocation(line: 236, column: 3, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4001, file: !3, line: 236, column: 3)
!4006 = !DILocation(line: 236, column: 3, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 236, column: 3)
!4008 = !DILocation(line: 236, column: 3, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 236, column: 3)
!4010 = !DILocation(line: 236, column: 3, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 236, column: 3)
!4012 = !{i32 -2142788759, i32 -2142788730, i32 -2142788684, i32 -2142788626, i32 -2142788572, i32 -2142788518, i32 -2142788463, i32 -2142788432}
!4013 = !DILocation(line: 236, column: 3, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 236, column: 3)
!4015 = !{i32 -2142788022, i32 -2142788015, i32 -2142787963, i32 -2142787932, i32 -2142787902}
!4016 = !DILocation(line: 236, column: 3, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 236, column: 3)
!4018 = !DILocation(line: 237, column: 3, scope: !4002)
!4019 = !DILocation(line: 240, column: 6, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 240, column: 6)
!4021 = !DILocation(line: 240, column: 11, scope: !4020)
!4022 = !DILocation(line: 240, column: 15, scope: !4020)
!4023 = !DILocation(line: 240, column: 6, scope: !3965)
!4024 = !DILocalVariable(name: "__ret_warn_on", scope: !4025, file: !3, line: 241, type: !93)
!4025 = distinct !DILexicalBlock(scope: !4026, file: !3, line: 241, column: 3)
!4026 = distinct !DILexicalBlock(scope: !4020, file: !3, line: 240, column: 22)
!4027 = !DILocation(line: 241, column: 3, scope: !4025)
!4028 = !DILocation(line: 241, column: 3, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4025, file: !3, line: 241, column: 3)
!4030 = !DILocation(line: 241, column: 3, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 241, column: 3)
!4032 = !DILocation(line: 241, column: 3, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 241, column: 3)
!4034 = !DILocation(line: 241, column: 3, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 241, column: 3)
!4036 = !{i32 -2142787326, i32 -2142787297, i32 -2142787251, i32 -2142787193, i32 -2142787139, i32 -2142787085, i32 -2142787030, i32 -2142786999}
!4037 = !DILocation(line: 241, column: 3, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 241, column: 3)
!4039 = !{i32 -2142786589, i32 -2142786582, i32 -2142786530, i32 -2142786499, i32 -2142786469}
!4040 = !DILocation(line: 241, column: 3, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 241, column: 3)
!4042 = !DILocation(line: 242, column: 3, scope: !4026)
!4043 = !DILocation(line: 245, column: 2, scope: !3965)
!4044 = !DILocation(line: 245, column: 21, scope: !3965)
!4045 = !DILocation(line: 245, column: 28, scope: !3965)
!4046 = !DILocation(line: 247, column: 17, scope: !3965)
!4047 = !DILocation(line: 247, column: 25, scope: !3965)
!4048 = !DILocation(line: 247, column: 2, scope: !3965)
!4049 = !DILocation(line: 249, column: 18, scope: !3965)
!4050 = !DILocation(line: 249, column: 26, scope: !3965)
!4051 = !DILocation(line: 249, column: 2, scope: !3965)
!4052 = !DILocation(line: 249, column: 10, scope: !3965)
!4053 = !DILocation(line: 249, column: 16, scope: !3965)
!4054 = !DILocation(line: 250, column: 19, scope: !3965)
!4055 = !DILocation(line: 250, column: 2, scope: !3965)
!4056 = !DILocation(line: 250, column: 10, scope: !3965)
!4057 = !DILocation(line: 250, column: 17, scope: !3965)
!4058 = !DILocation(line: 251, column: 6, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 251, column: 6)
!4060 = !DILocation(line: 251, column: 14, scope: !4059)
!4061 = !DILocation(line: 251, column: 17, scope: !4059)
!4062 = !DILocation(line: 251, column: 6, scope: !3965)
!4063 = !DILocation(line: 252, column: 10, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 252, column: 3)
!4065 = !DILocation(line: 252, column: 8, scope: !4064)
!4066 = !DILocation(line: 252, column: 15, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 252, column: 3)
!4068 = !DILocation(line: 252, column: 19, scope: !4067)
!4069 = !DILocation(line: 252, column: 17, scope: !4067)
!4070 = !DILocation(line: 252, column: 3, scope: !4064)
!4071 = !DILocation(line: 253, column: 40, scope: !4067)
!4072 = !DILocation(line: 253, column: 46, scope: !4067)
!4073 = !DILocation(line: 253, column: 4, scope: !4067)
!4074 = !DILocation(line: 253, column: 12, scope: !4067)
!4075 = !DILocation(line: 253, column: 20, scope: !4067)
!4076 = !DILocation(line: 253, column: 28, scope: !4067)
!4077 = !DILocation(line: 253, column: 35, scope: !4067)
!4078 = !DILocation(line: 253, column: 33, scope: !4067)
!4079 = !DILocation(line: 253, column: 38, scope: !4067)
!4080 = !DILocation(line: 252, column: 29, scope: !4067)
!4081 = !DILocation(line: 252, column: 3, scope: !4067)
!4082 = distinct !{!4082, !4070, !4083}
!4083 = !DILocation(line: 253, column: 47, scope: !4064)
!4084 = !DILocation(line: 256, column: 2, scope: !3965)
!4085 = !DILocation(line: 256, column: 10, scope: !3965)
!4086 = !DILocation(line: 256, column: 16, scope: !3965)
!4087 = !DILocation(line: 263, column: 12, scope: !3965)
!4088 = !DILocation(line: 263, column: 20, scope: !3965)
!4089 = !DILocation(line: 263, column: 10, scope: !3965)
!4090 = !DILocation(line: 265, column: 23, scope: !3965)
!4091 = !DILocation(line: 265, column: 31, scope: !3965)
!4092 = !DILocation(line: 265, column: 39, scope: !3965)
!4093 = !DILocation(line: 265, column: 47, scope: !3965)
!4094 = !DILocation(line: 265, column: 7, scope: !3965)
!4095 = !DILocation(line: 265, column: 5, scope: !3965)
!4096 = !DILocation(line: 266, column: 6, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 266, column: 6)
!4098 = !DILocation(line: 266, column: 6, scope: !3965)
!4099 = !DILocation(line: 267, column: 3, scope: !4097)
!4100 = !DILocation(line: 270, column: 2, scope: !3965)
!4101 = !DILocation(line: 270, column: 10, scope: !3965)
!4102 = !DILocation(line: 270, column: 16, scope: !3965)
!4103 = !DILocation(line: 272, column: 9, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 272, column: 2)
!4105 = !DILocation(line: 272, column: 7, scope: !4104)
!4106 = !DILocation(line: 272, column: 14, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 272, column: 2)
!4108 = !DILocation(line: 272, column: 18, scope: !4107)
!4109 = !DILocation(line: 272, column: 16, scope: !4107)
!4110 = !DILocation(line: 272, column: 2, scope: !4104)
!4111 = !DILocation(line: 273, column: 24, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 272, column: 29)
!4113 = !DILocation(line: 273, column: 32, scope: !4112)
!4114 = !DILocation(line: 273, column: 38, scope: !4112)
!4115 = !DILocation(line: 273, column: 8, scope: !4112)
!4116 = !DILocation(line: 273, column: 6, scope: !4112)
!4117 = !DILocation(line: 274, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4112, file: !3, line: 274, column: 7)
!4119 = !DILocation(line: 274, column: 7, scope: !4112)
!4120 = !DILocation(line: 275, column: 4, scope: !4118)
!4121 = !DILocation(line: 276, column: 2, scope: !4112)
!4122 = !DILocation(line: 272, column: 25, scope: !4107)
!4123 = !DILocation(line: 272, column: 2, scope: !4107)
!4124 = distinct !{!4124, !4110, !4125}
!4125 = !DILocation(line: 276, column: 2, scope: !4104)
!4126 = !DILocation(line: 278, column: 20, scope: !3965)
!4127 = !DILocation(line: 278, column: 28, scope: !3965)
!4128 = !DILocation(line: 278, column: 2, scope: !3965)
!4129 = !DILocation(line: 283, column: 29, scope: !3965)
!4130 = !DILocation(line: 283, column: 37, scope: !3965)
!4131 = !DILocation(line: 365, column: 27, scope: !3683, inlinedAt: !3970)
!4132 = !DILocation(line: 365, column: 6, scope: !3683, inlinedAt: !3970)
!4133 = !DILocation(line: 365, column: 6, scope: !3634, inlinedAt: !3970)
!4134 = !DILocation(line: 366, column: 12, scope: !3687, inlinedAt: !3970)
!4135 = !DILocation(line: 366, column: 14, scope: !3687, inlinedAt: !3970)
!4136 = !DILocation(line: 366, column: 7, scope: !3688, inlinedAt: !3970)
!4137 = !DILocation(line: 367, column: 4, scope: !3687, inlinedAt: !3970)
!4138 = !DILocation(line: 368, column: 28, scope: !3688, inlinedAt: !3970)
!4139 = !DILocation(line: 368, column: 10, scope: !3688, inlinedAt: !3970)
!4140 = !DILocation(line: 368, column: 3, scope: !3688, inlinedAt: !3970)
!4141 = !DILocation(line: 370, column: 29, scope: !3696, inlinedAt: !3970)
!4142 = !DILocation(line: 370, column: 10, scope: !3696, inlinedAt: !3970)
!4143 = !DILocation(line: 370, column: 3, scope: !3696, inlinedAt: !3970)
!4144 = !DILocation(line: 372, column: 1, scope: !3634, inlinedAt: !3970)
!4145 = !DILocation(line: 283, column: 12, scope: !3965)
!4146 = !DILocation(line: 283, column: 10, scope: !3965)
!4147 = !DILocalVariable(name: "__ret", scope: !4148, file: !3, line: 285, type: !94)
!4148 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 285, column: 12)
!4149 = !DILocation(line: 285, column: 12, scope: !4148)
!4150 = !DILocation(line: 285, column: 12, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 285, column: 12)
!4152 = !DILocation(line: 285, column: 12, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 285, column: 12)
!4154 = !DILocalVariable(name: "__cond", scope: !4155, file: !3, line: 285, type: !115)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 285, column: 12)
!4156 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 285, column: 12)
!4157 = !DILocation(line: 285, column: 12, scope: !4155)
!4158 = !DILocation(line: 285, column: 12, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 285, column: 12)
!4160 = !DILocation(line: 285, column: 12, scope: !4156)
!4161 = !DILocalVariable(name: "__wq_entry", scope: !4162, file: !3, line: 285, type: !3711)
!4162 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 285, column: 12)
!4163 = !DILocation(line: 285, column: 12, scope: !4162)
!4164 = !DILocalVariable(name: "__ret", scope: !4162, file: !3, line: 285, type: !94)
!4165 = !DILocalVariable(name: "__int", scope: !4166, file: !3, line: 285, type: !94)
!4166 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 285, column: 12)
!4167 = distinct !DILexicalBlock(scope: !4168, file: !3, line: 285, column: 12)
!4168 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 285, column: 12)
!4169 = !DILocation(line: 285, column: 12, scope: !4166)
!4170 = !DILocalVariable(name: "__cond", scope: !4171, file: !3, line: 285, type: !115)
!4171 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 285, column: 12)
!4172 = distinct !DILexicalBlock(scope: !4166, file: !3, line: 285, column: 12)
!4173 = !DILocation(line: 285, column: 12, scope: !4171)
!4174 = !DILocation(line: 285, column: 12, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4171, file: !3, line: 285, column: 12)
!4176 = !DILocation(line: 285, column: 12, scope: !4172)
!4177 = !DILocation(line: 285, column: 12, scope: !4167)
!4178 = distinct !{!4178, !4179, !4179}
!4179 = !DILocation(line: 285, column: 12, scope: !4168)
!4180 = !DILabel(scope: !4162, name: "__out", file: !3, line: 285)
!4181 = !DILocation(line: 285, column: 12, scope: !3965)
!4182 = !DILocation(line: 285, column: 10, scope: !3965)
!4183 = !DILocation(line: 288, column: 6, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 288, column: 6)
!4185 = !DILocation(line: 288, column: 14, scope: !4184)
!4186 = !DILocation(line: 288, column: 21, scope: !4184)
!4187 = !DILocation(line: 288, column: 26, scope: !4184)
!4188 = !DILocation(line: 288, column: 34, scope: !4184)
!4189 = !DILocation(line: 288, column: 40, scope: !4184)
!4190 = !DILocation(line: 288, column: 6, scope: !3965)
!4191 = !DILocation(line: 290, column: 32, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 288, column: 58)
!4193 = !DILocation(line: 290, column: 40, scope: !4192)
!4194 = !DILocation(line: 290, column: 49, scope: !4192)
!4195 = !DILocation(line: 290, column: 13, scope: !4192)
!4196 = !DILocation(line: 290, column: 11, scope: !4192)
!4197 = !DILocalVariable(name: "__ret", scope: !4198, file: !3, line: 291, type: !94)
!4198 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 291, column: 3)
!4199 = !DILocation(line: 291, column: 3, scope: !4198)
!4200 = !DILocation(line: 291, column: 3, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 291, column: 3)
!4202 = !DILocation(line: 291, column: 3, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 291, column: 3)
!4204 = !DILocalVariable(name: "__cond", scope: !4205, file: !3, line: 291, type: !115)
!4205 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 291, column: 3)
!4206 = distinct !DILexicalBlock(scope: !4198, file: !3, line: 291, column: 3)
!4207 = !DILocation(line: 291, column: 3, scope: !4205)
!4208 = !DILocation(line: 291, column: 3, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 291, column: 3)
!4210 = !DILocation(line: 291, column: 3, scope: !4206)
!4211 = !DILocalVariable(name: "__wq_entry", scope: !4212, file: !3, line: 291, type: !3711)
!4212 = distinct !DILexicalBlock(scope: !4206, file: !3, line: 291, column: 3)
!4213 = !DILocation(line: 291, column: 3, scope: !4212)
!4214 = !DILocalVariable(name: "__ret", scope: !4212, file: !3, line: 291, type: !94)
!4215 = !DILocalVariable(name: "__int", scope: !4216, file: !3, line: 291, type: !94)
!4216 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 291, column: 3)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 291, column: 3)
!4218 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 291, column: 3)
!4219 = !DILocation(line: 291, column: 3, scope: !4216)
!4220 = !DILocalVariable(name: "__cond", scope: !4221, file: !3, line: 291, type: !115)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 291, column: 3)
!4222 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 291, column: 3)
!4223 = !DILocation(line: 291, column: 3, scope: !4221)
!4224 = !DILocation(line: 291, column: 3, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 291, column: 3)
!4226 = !DILocation(line: 291, column: 3, scope: !4222)
!4227 = !DILocation(line: 291, column: 3, scope: !4217)
!4228 = distinct !{!4228, !4229, !4229}
!4229 = !DILocation(line: 291, column: 3, scope: !4218)
!4230 = !DILabel(scope: !4212, name: "__out", file: !3, line: 291)
!4231 = !DILocation(line: 293, column: 2, scope: !4192)
!4232 = !DILocation(line: 295, column: 17, scope: !3965)
!4233 = !DILocation(line: 295, column: 25, scope: !3965)
!4234 = !DILocation(line: 295, column: 2, scope: !3965)
!4235 = !DILocation(line: 297, column: 6, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 297, column: 6)
!4237 = !DILocation(line: 297, column: 6, scope: !3965)
!4238 = !DILocation(line: 298, column: 10, scope: !4239)
!4239 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 298, column: 3)
!4240 = !DILocation(line: 298, column: 8, scope: !4239)
!4241 = !DILocation(line: 298, column: 15, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 298, column: 3)
!4243 = !DILocation(line: 298, column: 19, scope: !4242)
!4244 = !DILocation(line: 298, column: 17, scope: !4242)
!4245 = !DILocation(line: 298, column: 3, scope: !4239)
!4246 = !DILocation(line: 299, column: 15, scope: !4242)
!4247 = !DILocation(line: 299, column: 23, scope: !4242)
!4248 = !DILocation(line: 299, column: 31, scope: !4242)
!4249 = !DILocation(line: 299, column: 39, scope: !4242)
!4250 = !DILocation(line: 299, column: 46, scope: !4242)
!4251 = !DILocation(line: 299, column: 44, scope: !4242)
!4252 = !DILocation(line: 299, column: 4, scope: !4242)
!4253 = !DILocation(line: 299, column: 10, scope: !4242)
!4254 = !DILocation(line: 299, column: 13, scope: !4242)
!4255 = !DILocation(line: 298, column: 29, scope: !4242)
!4256 = !DILocation(line: 298, column: 3, scope: !4242)
!4257 = distinct !{!4257, !4245, !4258}
!4258 = !DILocation(line: 299, column: 47, scope: !4239)
!4259 = !DILocation(line: 301, column: 6, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 301, column: 6)
!4261 = !DILocation(line: 301, column: 14, scope: !4260)
!4262 = !DILocation(line: 301, column: 21, scope: !4260)
!4263 = !DILocation(line: 302, column: 7, scope: !4260)
!4264 = !DILocation(line: 302, column: 15, scope: !4260)
!4265 = !DILocation(line: 302, column: 36, scope: !4260)
!4266 = !DILocation(line: 302, column: 39, scope: !4260)
!4267 = !DILocation(line: 302, column: 47, scope: !4260)
!4268 = !DILocation(line: 302, column: 54, scope: !4260)
!4269 = !DILocation(line: 301, column: 6, scope: !3965)
!4270 = !DILocation(line: 303, column: 6, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 302, column: 61)
!4272 = !DILocation(line: 304, column: 3, scope: !4271)
!4273 = !DILocation(line: 307, column: 5, scope: !3965)
!4274 = !DILocation(line: 307, column: 2, scope: !3965)
!4275 = !DILabel(scope: !3965, name: "out_reset_flags", file: !3, line: 309)
!4276 = !DILocation(line: 309, column: 2, scope: !3965)
!4277 = !DILocation(line: 310, column: 2, scope: !3965)
!4278 = !DILocation(line: 310, column: 10, scope: !3965)
!4279 = !DILocation(line: 310, column: 16, scope: !3965)
!4280 = !DILocation(line: 311, column: 20, scope: !3965)
!4281 = !DILocation(line: 311, column: 28, scope: !3965)
!4282 = !DILocation(line: 311, column: 2, scope: !3965)
!4283 = !DILocation(line: 323, column: 9, scope: !3965)
!4284 = !DILocation(line: 323, column: 12, scope: !3965)
!4285 = !DILocation(line: 323, column: 25, scope: !3965)
!4286 = !DILocation(line: 323, column: 2, scope: !3965)
!4287 = !DILocation(line: 324, column: 1, scope: !3965)
!4288 = distinct !DISubprogram(name: "ps2_adjust_timeout", scope: !3, file: !3, line: 170, type: !4289, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!93, !133, !7, !7}
!4291 = !DILocation(line: 363, column: 74, scope: !3634, inlinedAt: !4292)
!4292 = distinct !DILocation(line: 183, column: 14, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 182, column: 7)
!4294 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 173, column: 19)
!4295 = !DILocation(line: 363, column: 74, scope: !3634, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 182, column: 17, scope: !4293)
!4297 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4288, file: !3, line: 170, type: !133)
!4298 = !DILocation(line: 170, column: 46, scope: !4288)
!4299 = !DILocalVariable(name: "command", arg: 2, scope: !4288, file: !3, line: 171, type: !7)
!4300 = !DILocation(line: 171, column: 23, scope: !4288)
!4301 = !DILocalVariable(name: "timeout", arg: 3, scope: !4288, file: !3, line: 171, type: !7)
!4302 = !DILocation(line: 171, column: 45, scope: !4288)
!4303 = !DILocation(line: 173, column: 10, scope: !4288)
!4304 = !DILocation(line: 173, column: 2, scope: !4288)
!4305 = !DILocation(line: 182, column: 7, scope: !4293)
!4306 = !DILocation(line: 365, column: 27, scope: !3683, inlinedAt: !4296)
!4307 = !DILocation(line: 365, column: 6, scope: !3683, inlinedAt: !4296)
!4308 = !DILocation(line: 365, column: 6, scope: !3634, inlinedAt: !4296)
!4309 = !DILocation(line: 366, column: 12, scope: !3687, inlinedAt: !4296)
!4310 = !DILocation(line: 366, column: 14, scope: !3687, inlinedAt: !4296)
!4311 = !DILocation(line: 366, column: 7, scope: !3688, inlinedAt: !4296)
!4312 = !DILocation(line: 367, column: 4, scope: !3687, inlinedAt: !4296)
!4313 = !DILocation(line: 368, column: 28, scope: !3688, inlinedAt: !4296)
!4314 = !DILocation(line: 368, column: 10, scope: !3688, inlinedAt: !4296)
!4315 = !DILocation(line: 368, column: 3, scope: !3688, inlinedAt: !4296)
!4316 = !DILocation(line: 370, column: 29, scope: !3696, inlinedAt: !4296)
!4317 = !DILocation(line: 370, column: 10, scope: !3696, inlinedAt: !4296)
!4318 = !DILocation(line: 370, column: 3, scope: !3696, inlinedAt: !4296)
!4319 = !DILocation(line: 372, column: 1, scope: !3634, inlinedAt: !4296)
!4320 = !DILocation(line: 182, column: 15, scope: !4293)
!4321 = !DILocation(line: 182, column: 7, scope: !4294)
!4322 = !DILocation(line: 365, column: 27, scope: !3683, inlinedAt: !4292)
!4323 = !DILocation(line: 365, column: 6, scope: !3683, inlinedAt: !4292)
!4324 = !DILocation(line: 365, column: 6, scope: !3634, inlinedAt: !4292)
!4325 = !DILocation(line: 366, column: 12, scope: !3687, inlinedAt: !4292)
!4326 = !DILocation(line: 366, column: 14, scope: !3687, inlinedAt: !4292)
!4327 = !DILocation(line: 366, column: 7, scope: !3688, inlinedAt: !4292)
!4328 = !DILocation(line: 367, column: 4, scope: !3687, inlinedAt: !4292)
!4329 = !DILocation(line: 368, column: 28, scope: !3688, inlinedAt: !4292)
!4330 = !DILocation(line: 368, column: 10, scope: !3688, inlinedAt: !4292)
!4331 = !DILocation(line: 368, column: 3, scope: !3688, inlinedAt: !4292)
!4332 = !DILocation(line: 370, column: 29, scope: !3696, inlinedAt: !4292)
!4333 = !DILocation(line: 370, column: 10, scope: !3696, inlinedAt: !4292)
!4334 = !DILocation(line: 370, column: 3, scope: !3696, inlinedAt: !4292)
!4335 = !DILocation(line: 372, column: 1, scope: !3634, inlinedAt: !4292)
!4336 = !DILocation(line: 183, column: 14, scope: !4293)
!4337 = !DILocation(line: 183, column: 12, scope: !4293)
!4338 = !DILocation(line: 183, column: 4, scope: !4293)
!4339 = !DILocation(line: 184, column: 3, scope: !4294)
!4340 = !DILocation(line: 193, column: 7, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 193, column: 7)
!4342 = !DILocation(line: 193, column: 15, scope: !4341)
!4343 = !DILocation(line: 193, column: 25, scope: !4341)
!4344 = !DILocation(line: 193, column: 7, scope: !4294)
!4345 = !DILocation(line: 194, column: 19, scope: !4346)
!4346 = distinct !DILexicalBlock(scope: !4341, file: !3, line: 193, column: 34)
!4347 = !DILocation(line: 194, column: 27, scope: !4346)
!4348 = !DILocation(line: 194, column: 4, scope: !4346)
!4349 = !DILocation(line: 195, column: 4, scope: !4346)
!4350 = !DILocation(line: 195, column: 12, scope: !4346)
!4351 = !DILocation(line: 195, column: 18, scope: !4346)
!4352 = !DILocation(line: 196, column: 22, scope: !4346)
!4353 = !DILocation(line: 196, column: 30, scope: !4346)
!4354 = !DILocation(line: 196, column: 4, scope: !4346)
!4355 = !DILocation(line: 197, column: 12, scope: !4346)
!4356 = !DILocation(line: 198, column: 3, scope: !4346)
!4357 = !DILocation(line: 204, column: 27, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 204, column: 7)
!4359 = !DILocation(line: 204, column: 35, scope: !4358)
!4360 = !DILocation(line: 204, column: 8, scope: !4358)
!4361 = !DILocation(line: 204, column: 7, scope: !4294)
!4362 = !DILocation(line: 205, column: 19, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 204, column: 47)
!4364 = !DILocation(line: 205, column: 27, scope: !4363)
!4365 = !DILocation(line: 205, column: 4, scope: !4363)
!4366 = !DILocation(line: 206, column: 20, scope: !4363)
!4367 = !DILocation(line: 206, column: 28, scope: !4363)
!4368 = !DILocation(line: 206, column: 35, scope: !4363)
!4369 = !DILocation(line: 206, column: 4, scope: !4363)
!4370 = !DILocation(line: 206, column: 12, scope: !4363)
!4371 = !DILocation(line: 206, column: 18, scope: !4363)
!4372 = !DILocation(line: 207, column: 22, scope: !4363)
!4373 = !DILocation(line: 207, column: 30, scope: !4363)
!4374 = !DILocation(line: 207, column: 4, scope: !4363)
!4375 = !DILocation(line: 208, column: 12, scope: !4363)
!4376 = !DILocation(line: 209, column: 3, scope: !4363)
!4377 = !DILocation(line: 210, column: 3, scope: !4294)
!4378 = !DILocation(line: 213, column: 3, scope: !4294)
!4379 = !DILocation(line: 216, column: 9, scope: !4288)
!4380 = !DILocation(line: 216, column: 2, scope: !4288)
!4381 = distinct !DISubprogram(name: "ps2_command", scope: !3, file: !3, line: 327, type: !3966, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!4382 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4381, file: !3, line: 327, type: !133)
!4383 = !DILocation(line: 327, column: 32, scope: !4381)
!4384 = !DILocalVariable(name: "param", arg: 2, scope: !4381, file: !3, line: 327, type: !3968)
!4385 = !DILocation(line: 327, column: 44, scope: !4381)
!4386 = !DILocalVariable(name: "command", arg: 3, scope: !4381, file: !3, line: 327, type: !7)
!4387 = !DILocation(line: 327, column: 64, scope: !4381)
!4388 = !DILocalVariable(name: "rc", scope: !4381, file: !3, line: 329, type: !93)
!4389 = !DILocation(line: 329, column: 6, scope: !4381)
!4390 = !DILocation(line: 331, column: 20, scope: !4381)
!4391 = !DILocation(line: 331, column: 2, scope: !4381)
!4392 = !DILocation(line: 332, column: 21, scope: !4381)
!4393 = !DILocation(line: 332, column: 29, scope: !4381)
!4394 = !DILocation(line: 332, column: 36, scope: !4381)
!4395 = !DILocation(line: 332, column: 7, scope: !4381)
!4396 = !DILocation(line: 332, column: 5, scope: !4381)
!4397 = !DILocation(line: 333, column: 18, scope: !4381)
!4398 = !DILocation(line: 333, column: 2, scope: !4381)
!4399 = !DILocation(line: 335, column: 9, scope: !4381)
!4400 = !DILocation(line: 335, column: 2, scope: !4381)
!4401 = distinct !DISubprogram(name: "ps2_sliced_command", scope: !3, file: !3, line: 347, type: !4402, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!93, !133, !118}
!4404 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4401, file: !3, line: 347, type: !133)
!4405 = !DILocation(line: 347, column: 39, scope: !4401)
!4406 = !DILocalVariable(name: "command", arg: 2, scope: !4401, file: !3, line: 347, type: !118)
!4407 = !DILocation(line: 347, column: 50, scope: !4401)
!4408 = !DILocalVariable(name: "i", scope: !4401, file: !3, line: 349, type: !93)
!4409 = !DILocation(line: 349, column: 6, scope: !4401)
!4410 = !DILocalVariable(name: "retval", scope: !4401, file: !3, line: 350, type: !93)
!4411 = !DILocation(line: 350, column: 6, scope: !4401)
!4412 = !DILocation(line: 352, column: 20, scope: !4401)
!4413 = !DILocation(line: 352, column: 2, scope: !4401)
!4414 = !DILocation(line: 354, column: 25, scope: !4401)
!4415 = !DILocation(line: 354, column: 11, scope: !4401)
!4416 = !DILocation(line: 354, column: 9, scope: !4401)
!4417 = !DILocation(line: 355, column: 6, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 355, column: 6)
!4419 = !DILocation(line: 355, column: 6, scope: !4401)
!4420 = !DILocation(line: 356, column: 3, scope: !4418)
!4421 = !DILocation(line: 358, column: 9, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 358, column: 2)
!4423 = !DILocation(line: 358, column: 7, scope: !4422)
!4424 = !DILocation(line: 358, column: 14, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 358, column: 2)
!4426 = !DILocation(line: 358, column: 16, scope: !4425)
!4427 = !DILocation(line: 358, column: 2, scope: !4422)
!4428 = !DILocalVariable(name: "d", scope: !4429, file: !3, line: 359, type: !118)
!4429 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 358, column: 30)
!4430 = !DILocation(line: 359, column: 6, scope: !4429)
!4431 = !DILocation(line: 359, column: 11, scope: !4429)
!4432 = !DILocation(line: 359, column: 22, scope: !4429)
!4433 = !DILocation(line: 359, column: 19, scope: !4429)
!4434 = !DILocation(line: 359, column: 25, scope: !4429)
!4435 = !DILocation(line: 359, column: 10, scope: !4429)
!4436 = !DILocation(line: 360, column: 26, scope: !4429)
!4437 = !DILocation(line: 360, column: 12, scope: !4429)
!4438 = !DILocation(line: 360, column: 10, scope: !4429)
!4439 = !DILocation(line: 361, column: 7, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 361, column: 7)
!4441 = !DILocation(line: 361, column: 7, scope: !4429)
!4442 = !DILocation(line: 362, column: 4, scope: !4440)
!4443 = !DILocation(line: 363, column: 2, scope: !4429)
!4444 = !DILocation(line: 358, column: 24, scope: !4425)
!4445 = !DILocation(line: 358, column: 2, scope: !4425)
!4446 = distinct !{!4446, !4427, !4447}
!4447 = !DILocation(line: 363, column: 2, scope: !4422)
!4448 = !DILabel(scope: !4401, name: "out", file: !3, line: 365)
!4449 = !DILocation(line: 365, column: 1, scope: !4401)
!4450 = !DILocation(line: 367, column: 18, scope: !4401)
!4451 = !DILocation(line: 367, column: 2, scope: !4401)
!4452 = !DILocation(line: 368, column: 9, scope: !4401)
!4453 = !DILocation(line: 368, column: 2, scope: !4401)
!4454 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !130, file: !3, line: 376, type: !133)
!4455 = !DILocation(line: 376, column: 30, scope: !130)
!4456 = !DILocalVariable(name: "serio", arg: 2, scope: !130, file: !3, line: 376, type: !138)
!4457 = !DILocation(line: 376, column: 52, scope: !130)
!4458 = !DILocation(line: 378, column: 2, scope: !130)
!4459 = !DILocation(line: 378, column: 2, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !130, file: !3, line: 378, column: 2)
!4461 = !DILocation(line: 379, column: 2, scope: !130)
!4462 = !DILocation(line: 379, column: 2, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !130, file: !3, line: 379, column: 2)
!4464 = !DILocation(line: 380, column: 2, scope: !130)
!4465 = !DILocation(line: 380, column: 2, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !130, file: !3, line: 380, column: 2)
!4467 = !DILocation(line: 381, column: 18, scope: !130)
!4468 = !DILocation(line: 381, column: 2, scope: !130)
!4469 = !DILocation(line: 381, column: 10, scope: !130)
!4470 = !DILocation(line: 381, column: 16, scope: !130)
!4471 = !DILocation(line: 382, column: 1, scope: !130)
!4472 = distinct !DISubprogram(name: "ps2_handle_ack", scope: !3, file: !3, line: 390, type: !4473, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!115, !133, !118}
!4475 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4472, file: !3, line: 390, type: !133)
!4476 = !DILocation(line: 390, column: 36, scope: !4472)
!4477 = !DILocalVariable(name: "data", arg: 2, scope: !4472, file: !3, line: 390, type: !118)
!4478 = !DILocation(line: 390, column: 47, scope: !4472)
!4479 = !DILocation(line: 392, column: 10, scope: !4472)
!4480 = !DILocation(line: 392, column: 2, scope: !4472)
!4481 = !DILocation(line: 394, column: 3, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 392, column: 16)
!4483 = !DILocation(line: 394, column: 11, scope: !4482)
!4484 = !DILocation(line: 394, column: 15, scope: !4482)
!4485 = !DILocation(line: 395, column: 3, scope: !4482)
!4486 = !DILocation(line: 398, column: 3, scope: !4482)
!4487 = !DILocation(line: 398, column: 11, scope: !4482)
!4488 = !DILocation(line: 398, column: 17, scope: !4482)
!4489 = !DILocation(line: 399, column: 3, scope: !4482)
!4490 = !DILocation(line: 399, column: 11, scope: !4482)
!4491 = !DILocation(line: 399, column: 15, scope: !4482)
!4492 = !DILocation(line: 400, column: 3, scope: !4482)
!4493 = !DILocation(line: 403, column: 7, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 403, column: 7)
!4495 = !DILocation(line: 403, column: 15, scope: !4494)
!4496 = !DILocation(line: 403, column: 21, scope: !4494)
!4497 = !DILocation(line: 403, column: 7, scope: !4482)
!4498 = !DILocation(line: 404, column: 4, scope: !4499)
!4499 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 403, column: 37)
!4500 = !DILocation(line: 404, column: 12, scope: !4499)
!4501 = !DILocation(line: 404, column: 18, scope: !4499)
!4502 = !DILocation(line: 405, column: 4, scope: !4499)
!4503 = !DILocation(line: 405, column: 12, scope: !4499)
!4504 = !DILocation(line: 405, column: 16, scope: !4499)
!4505 = !DILocation(line: 406, column: 4, scope: !4499)
!4506 = !DILocation(line: 403, column: 23, scope: !4494)
!4507 = !DILocation(line: 417, column: 7, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 417, column: 7)
!4509 = !DILocation(line: 417, column: 15, scope: !4508)
!4510 = !DILocation(line: 417, column: 21, scope: !4508)
!4511 = !DILocation(line: 417, column: 7, scope: !4482)
!4512 = !DILocation(line: 418, column: 4, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 417, column: 40)
!4514 = !DILocation(line: 418, column: 12, scope: !4513)
!4515 = !DILocation(line: 418, column: 16, scope: !4513)
!4516 = !DILocation(line: 419, column: 4, scope: !4513)
!4517 = !DILocation(line: 417, column: 23, scope: !4508)
!4518 = !DILocation(line: 434, column: 3, scope: !4482)
!4519 = !DILocation(line: 434, column: 11, scope: !4482)
!4520 = !DILocation(line: 434, column: 17, scope: !4482)
!4521 = !DILocation(line: 435, column: 10, scope: !4482)
!4522 = !DILocation(line: 435, column: 18, scope: !4482)
!4523 = !DILocation(line: 435, column: 24, scope: !4482)
!4524 = !DILocation(line: 435, column: 3, scope: !4482)
!4525 = !DILocation(line: 438, column: 7, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 438, column: 6)
!4527 = !DILocation(line: 438, column: 15, scope: !4526)
!4528 = !DILocation(line: 438, column: 6, scope: !4472)
!4529 = !DILocation(line: 439, column: 3, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 438, column: 20)
!4531 = !DILocation(line: 439, column: 11, scope: !4530)
!4532 = !DILocation(line: 439, column: 17, scope: !4530)
!4533 = !DILocation(line: 440, column: 7, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 440, column: 7)
!4535 = !DILocation(line: 440, column: 15, scope: !4534)
!4536 = !DILocation(line: 440, column: 7, scope: !4530)
!4537 = !DILocation(line: 441, column: 4, scope: !4534)
!4538 = !DILocation(line: 441, column: 12, scope: !4534)
!4539 = !DILocation(line: 441, column: 18, scope: !4534)
!4540 = !DILocation(line: 442, column: 2, scope: !4530)
!4541 = !DILocation(line: 444, column: 2, scope: !4472)
!4542 = !DILocation(line: 444, column: 10, scope: !4472)
!4543 = !DILocation(line: 444, column: 16, scope: !4472)
!4544 = !DILocation(line: 445, column: 2, scope: !4472)
!4545 = !DILocation(line: 447, column: 6, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 447, column: 6)
!4547 = !DILocation(line: 447, column: 11, scope: !4546)
!4548 = !DILocation(line: 447, column: 6, scope: !4472)
!4549 = !DILocation(line: 448, column: 23, scope: !4546)
!4550 = !DILocation(line: 448, column: 31, scope: !4546)
!4551 = !DILocation(line: 448, column: 3, scope: !4546)
!4552 = !DILocation(line: 450, column: 2, scope: !4472)
!4553 = !DILocation(line: 451, column: 1, scope: !4472)
!4554 = distinct !DISubprogram(name: "ps2_handle_response", scope: !3, file: !3, line: 460, type: !4473, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!4555 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4554, file: !3, line: 460, type: !133)
!4556 = !DILocation(line: 460, column: 41, scope: !4554)
!4557 = !DILocalVariable(name: "data", arg: 2, scope: !4554, file: !3, line: 460, type: !118)
!4558 = !DILocation(line: 460, column: 52, scope: !4554)
!4559 = !DILocation(line: 462, column: 6, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 462, column: 6)
!4561 = !DILocation(line: 462, column: 14, scope: !4560)
!4562 = !DILocation(line: 462, column: 6, scope: !4554)
!4563 = !DILocation(line: 463, column: 38, scope: !4560)
!4564 = !DILocation(line: 463, column: 3, scope: !4560)
!4565 = !DILocation(line: 463, column: 11, scope: !4560)
!4566 = !DILocation(line: 463, column: 20, scope: !4560)
!4567 = !DILocation(line: 463, column: 28, scope: !4560)
!4568 = !DILocation(line: 463, column: 18, scope: !4560)
!4569 = !DILocation(line: 463, column: 36, scope: !4560)
!4570 = !DILocation(line: 465, column: 6, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 465, column: 6)
!4572 = !DILocation(line: 465, column: 14, scope: !4571)
!4573 = !DILocation(line: 465, column: 20, scope: !4571)
!4574 = !DILocation(line: 465, column: 6, scope: !4554)
!4575 = !DILocation(line: 466, column: 3, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4571, file: !3, line: 465, column: 37)
!4577 = !DILocation(line: 466, column: 11, scope: !4576)
!4578 = !DILocation(line: 466, column: 17, scope: !4576)
!4579 = !DILocation(line: 467, column: 7, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 467, column: 7)
!4581 = !DILocation(line: 467, column: 15, scope: !4580)
!4582 = !DILocation(line: 467, column: 7, scope: !4576)
!4583 = !DILocation(line: 468, column: 4, scope: !4580)
!4584 = !DILocation(line: 469, column: 2, scope: !4576)
!4585 = !DILocation(line: 471, column: 7, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 471, column: 6)
!4587 = !DILocation(line: 471, column: 15, scope: !4586)
!4588 = !DILocation(line: 471, column: 6, scope: !4554)
!4589 = !DILocation(line: 472, column: 3, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 471, column: 23)
!4591 = !DILocation(line: 472, column: 11, scope: !4590)
!4592 = !DILocation(line: 472, column: 17, scope: !4590)
!4593 = !DILocation(line: 473, column: 3, scope: !4590)
!4594 = !DILocation(line: 474, column: 2, scope: !4590)
!4595 = !DILocation(line: 476, column: 2, scope: !4554)
!4596 = distinct !DISubprogram(name: "ps2_cmd_aborted", scope: !3, file: !3, line: 480, type: !3815, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!4597 = !DILocalVariable(name: "ps2dev", arg: 1, scope: !4596, file: !3, line: 480, type: !133)
!4598 = !DILocation(line: 480, column: 37, scope: !4596)
!4599 = !DILocation(line: 482, column: 6, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4596, file: !3, line: 482, column: 6)
!4601 = !DILocation(line: 482, column: 14, scope: !4600)
!4602 = !DILocation(line: 482, column: 20, scope: !4600)
!4603 = !DILocation(line: 482, column: 6, scope: !4596)
!4604 = !DILocation(line: 483, column: 3, scope: !4600)
!4605 = !DILocation(line: 483, column: 11, scope: !4600)
!4606 = !DILocation(line: 483, column: 15, scope: !4600)
!4607 = !DILocation(line: 485, column: 6, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4596, file: !3, line: 485, column: 6)
!4609 = !DILocation(line: 485, column: 14, scope: !4608)
!4610 = !DILocation(line: 485, column: 20, scope: !4608)
!4611 = !DILocation(line: 485, column: 6, scope: !4596)
!4612 = !DILocation(line: 486, column: 3, scope: !4608)
!4613 = !DILocation(line: 489, column: 2, scope: !4596)
!4614 = !DILocation(line: 489, column: 10, scope: !4596)
!4615 = !DILocation(line: 489, column: 16, scope: !4596)
!4616 = !DILocation(line: 490, column: 1, scope: !4596)
!4617 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4618, file: !4618, line: 656, type: !1798, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!4618 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4619 = !DILocalVariable(name: "__edi", scope: !4620, file: !4618, line: 658, type: !327)
!4620 = distinct !DILexicalBlock(scope: !4617, file: !4618, line: 658, column: 2)
!4621 = !DILocation(line: 658, column: 2, scope: !4620)
!4622 = !DILocalVariable(name: "__esi", scope: !4620, file: !4618, line: 658, type: !327)
!4623 = !DILocalVariable(name: "__edx", scope: !4620, file: !4618, line: 658, type: !327)
!4624 = !DILocalVariable(name: "__ecx", scope: !4620, file: !4618, line: 658, type: !327)
!4625 = !DILocalVariable(name: "__eax", scope: !4620, file: !4618, line: 658, type: !327)
!4626 = !{i32 -2145768450, i32 -2145767718, i32 -2145767484, i32 -2145767433, i32 -2145767405, i32 -2145767380, i32 -2145767696, i32 -2145767683, i32 -2145767245, i32 -2145767126, i32 -2145767591, i32 -2145767564, i32 -2145767536, i32 -2145767506}
!4627 = !DILocation(line: 659, column: 1, scope: !4617)
!4628 = distinct !DISubprogram(name: "serio_write", scope: !140, file: !140, line: 122, type: !178, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!4629 = !DILocalVariable(name: "serio", arg: 1, scope: !4628, file: !140, line: 122, type: !138)
!4630 = !DILocation(line: 122, column: 45, scope: !4628)
!4631 = !DILocalVariable(name: "data", arg: 2, scope: !4628, file: !140, line: 122, type: !122)
!4632 = !DILocation(line: 122, column: 66, scope: !4628)
!4633 = !DILocation(line: 124, column: 6, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4628, file: !140, line: 124, column: 6)
!4635 = !DILocation(line: 124, column: 13, scope: !4634)
!4636 = !DILocation(line: 124, column: 6, scope: !4628)
!4637 = !DILocation(line: 125, column: 10, scope: !4634)
!4638 = !DILocation(line: 125, column: 17, scope: !4634)
!4639 = !DILocation(line: 125, column: 23, scope: !4634)
!4640 = !DILocation(line: 125, column: 30, scope: !4634)
!4641 = !DILocation(line: 125, column: 3, scope: !4634)
!4642 = !DILocation(line: 127, column: 3, scope: !4634)
!4643 = !DILocation(line: 128, column: 1, scope: !4628)
!4644 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4618, file: !4618, line: 661, type: !1798, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!4645 = !DILocalVariable(name: "__edi", scope: !4646, file: !4618, line: 663, type: !327)
!4646 = distinct !DILexicalBlock(scope: !4644, file: !4618, line: 663, column: 2)
!4647 = !DILocation(line: 663, column: 2, scope: !4646)
!4648 = !DILocalVariable(name: "__esi", scope: !4646, file: !4618, line: 663, type: !327)
!4649 = !DILocalVariable(name: "__edx", scope: !4646, file: !4618, line: 663, type: !327)
!4650 = !DILocalVariable(name: "__ecx", scope: !4646, file: !4618, line: 663, type: !327)
!4651 = !DILocalVariable(name: "__eax", scope: !4646, file: !4618, line: 663, type: !327)
!4652 = !{i32 -2145765866, i32 -2145765136, i32 -2145764902, i32 -2145764851, i32 -2145764823, i32 -2145764798, i32 -2145765114, i32 -2145765101, i32 -2145764663, i32 -2145764544, i32 -2145765009, i32 -2145764982, i32 -2145764954, i32 -2145764924}
!4653 = !DILocation(line: 664, column: 1, scope: !4644)
!4654 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !3635, file: !3635, line: 308, type: !3636, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!4655 = !DILocalVariable(name: "m", arg: 1, scope: !4654, file: !3635, line: 308, type: !2670)
!4656 = !DILocation(line: 308, column: 66, scope: !4654)
!4657 = !DILocation(line: 310, column: 10, scope: !4654)
!4658 = !DILocation(line: 310, column: 12, scope: !4654)
!4659 = !DILocation(line: 310, column: 34, scope: !4654)
!4660 = !DILocation(line: 310, column: 39, scope: !4654)
!4661 = !DILocation(line: 310, column: 2, scope: !4654)
