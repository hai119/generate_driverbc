; ModuleID = '../bcout/drivers/usb/phy/phy.llvm.bc'
source_filename = "drivers/usb/phy/phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.workqueue_struct = type opaque
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.59 }
%union.anon.59 = type { %struct.anon.60 }
%struct.anon.60 = type { %struct.spinlock, i32 }
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
%struct.usb_phy = type { %struct.device*, i8*, i32, i32, i32, %struct.usb_otg*, %struct.device*, %struct.usb_phy_io_ops*, i8*, %struct.extcon_dev*, %struct.extcon_dev*, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, i32 (%struct.usb_phy*)*, void (%struct.usb_phy*)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i1)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*)* }
%struct.usb_otg = type opaque
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.63 = type { %struct.kernfs_elem_attr }
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
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.usb_phy_io_ops = type { i32 (%struct.usb_phy*, i32)*, i32 (%struct.usb_phy*, i32, i32)* }
%struct.extcon_dev = type opaque
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, %struct.notifier_block* }
%struct.phy_devm = type { %struct.usb_phy*, %struct.notifier_block* }

@phy_lock = internal global %struct.spinlock undef, align 1, !dbg !0
@phy_list = internal global %struct.list_head { %struct.list_head* @phy_list, %struct.list_head* @phy_list }, align 8, !dbg !3756
@devm_usb_put_phy.__warned = internal global i8 0, section ".data.once", align 1, !dbg !3751
@.str = private unnamed_addr constant [35 x i8] c"%s %s: couldn't find PHY resource\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"drivers/usb/phy/phy.c\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"not accepting initialized PHY %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"transceiver type %s already exists\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no device provided for PHY\0A\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"USB_CHARGER_STATE=%s\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"USB_CHARGER_PRESENT\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"USB_CHARGER_ABSENT\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Unknown USB charger state: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"USB_CHARGER_TYPE=%s\00", align 1
@usb_chger_type = internal constant [5 x i8*] [i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)], align 16, !dbg !3758
@.str.10 = private unnamed_addr constant [25 x i8] c"USB_CHARGER_UNKNOWN_TYPE\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"USB_CHARGER_SDP_TYPE\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"USB_CHARGER_DCP_TYPE\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"USB_CHARGER_CDP_TYPE\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"USB_CHARGER_ACA_TYPE\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"No separate ID extcon device\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"register VBUS notifier failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"register extcon USB SDP failed.\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"register extcon USB CDP failed.\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"register extcon USB DCP failed.\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"register extcon USB ACA failed.\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"register ID notifier failed\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"USB2 PHY\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"USB3 PHY\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"UNKNOWN PHY TYPE\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_phy_set_charger_current(%struct.usb_phy* %usb_phy, i32 %mA) #0 !dbg !3770 {
entry:
  %usb_phy.addr = alloca %struct.usb_phy*, align 8
  %mA.addr = alloca i32, align 4
  store %struct.usb_phy* %usb_phy, %struct.usb_phy** %usb_phy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %usb_phy.addr, metadata !3773, metadata !DIExpression()), !dbg !3774
  store i32 %mA, i32* %mA.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mA.addr, metadata !3775, metadata !DIExpression()), !dbg !3776
  %0 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3777
  %chg_type = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 14, !dbg !3778
  %1 = load i32, i32* %chg_type, align 8, !dbg !3778
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb16
    i32 4, label %sw.bb28
  ], !dbg !3779

sw.bb:                                            ; preds = %entry
  %2 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3780
  %chg_cur = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %2, i32 0, i32 16, !dbg !3783
  %sdp_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur, i32 0, i32 1, !dbg !3784
  %3 = load i32, i32* %sdp_max, align 4, !dbg !3784
  %4 = load i32, i32* %mA.addr, align 4, !dbg !3785
  %cmp = icmp eq i32 %3, %4, !dbg !3786
  br i1 %cmp, label %if.then, label %if.end, !dbg !3787

if.then:                                          ; preds = %sw.bb
  br label %return, !dbg !3788

if.end:                                           ; preds = %sw.bb
  %5 = load i32, i32* %mA.addr, align 4, !dbg !3789
  %cmp1 = icmp ugt i32 %5, 900, !dbg !3790
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !3791

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !3791

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* %mA.addr, align 4, !dbg !3792
  br label %cond.end, !dbg !3791

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 900, %cond.true ], [ %6, %cond.false ], !dbg !3791
  %7 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3793
  %chg_cur2 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 16, !dbg !3794
  %sdp_max3 = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur2, i32 0, i32 1, !dbg !3795
  store i32 %cond, i32* %sdp_max3, align 4, !dbg !3796
  br label %sw.epilog, !dbg !3797

sw.bb4:                                           ; preds = %entry
  %8 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3798
  %chg_cur5 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %8, i32 0, i32 16, !dbg !3800
  %dcp_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur5, i32 0, i32 3, !dbg !3801
  %9 = load i32, i32* %dcp_max, align 4, !dbg !3801
  %10 = load i32, i32* %mA.addr, align 4, !dbg !3802
  %cmp6 = icmp eq i32 %9, %10, !dbg !3803
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3804

if.then7:                                         ; preds = %sw.bb4
  br label %return, !dbg !3805

if.end8:                                          ; preds = %sw.bb4
  %11 = load i32, i32* %mA.addr, align 4, !dbg !3806
  %cmp9 = icmp ugt i32 %11, 5000, !dbg !3807
  br i1 %cmp9, label %cond.true10, label %cond.false11, !dbg !3808

cond.true10:                                      ; preds = %if.end8
  br label %cond.end12, !dbg !3808

cond.false11:                                     ; preds = %if.end8
  %12 = load i32, i32* %mA.addr, align 4, !dbg !3809
  br label %cond.end12, !dbg !3808

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ 5000, %cond.true10 ], [ %12, %cond.false11 ], !dbg !3808
  %13 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3810
  %chg_cur14 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %13, i32 0, i32 16, !dbg !3811
  %dcp_max15 = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur14, i32 0, i32 3, !dbg !3812
  store i32 %cond13, i32* %dcp_max15, align 4, !dbg !3813
  br label %sw.epilog, !dbg !3814

sw.bb16:                                          ; preds = %entry
  %14 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3815
  %chg_cur17 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %14, i32 0, i32 16, !dbg !3817
  %cdp_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur17, i32 0, i32 5, !dbg !3818
  %15 = load i32, i32* %cdp_max, align 4, !dbg !3818
  %16 = load i32, i32* %mA.addr, align 4, !dbg !3819
  %cmp18 = icmp eq i32 %15, %16, !dbg !3820
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3821

if.then19:                                        ; preds = %sw.bb16
  br label %return, !dbg !3822

if.end20:                                         ; preds = %sw.bb16
  %17 = load i32, i32* %mA.addr, align 4, !dbg !3823
  %cmp21 = icmp ugt i32 %17, 5000, !dbg !3824
  br i1 %cmp21, label %cond.true22, label %cond.false23, !dbg !3825

cond.true22:                                      ; preds = %if.end20
  br label %cond.end24, !dbg !3825

cond.false23:                                     ; preds = %if.end20
  %18 = load i32, i32* %mA.addr, align 4, !dbg !3826
  br label %cond.end24, !dbg !3825

cond.end24:                                       ; preds = %cond.false23, %cond.true22
  %cond25 = phi i32 [ 5000, %cond.true22 ], [ %18, %cond.false23 ], !dbg !3825
  %19 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3827
  %chg_cur26 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %19, i32 0, i32 16, !dbg !3828
  %cdp_max27 = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur26, i32 0, i32 5, !dbg !3829
  store i32 %cond25, i32* %cdp_max27, align 4, !dbg !3830
  br label %sw.epilog, !dbg !3831

sw.bb28:                                          ; preds = %entry
  %20 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3832
  %chg_cur29 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %20, i32 0, i32 16, !dbg !3834
  %aca_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur29, i32 0, i32 7, !dbg !3835
  %21 = load i32, i32* %aca_max, align 4, !dbg !3835
  %22 = load i32, i32* %mA.addr, align 4, !dbg !3836
  %cmp30 = icmp eq i32 %21, %22, !dbg !3837
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3838

if.then31:                                        ; preds = %sw.bb28
  br label %return, !dbg !3839

if.end32:                                         ; preds = %sw.bb28
  %23 = load i32, i32* %mA.addr, align 4, !dbg !3840
  %cmp33 = icmp ugt i32 %23, 5000, !dbg !3841
  br i1 %cmp33, label %cond.true34, label %cond.false35, !dbg !3842

cond.true34:                                      ; preds = %if.end32
  br label %cond.end36, !dbg !3842

cond.false35:                                     ; preds = %if.end32
  %24 = load i32, i32* %mA.addr, align 4, !dbg !3843
  br label %cond.end36, !dbg !3842

cond.end36:                                       ; preds = %cond.false35, %cond.true34
  %cond37 = phi i32 [ 5000, %cond.true34 ], [ %24, %cond.false35 ], !dbg !3842
  %25 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3844
  %chg_cur38 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %25, i32 0, i32 16, !dbg !3845
  %aca_max39 = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur38, i32 0, i32 7, !dbg !3846
  store i32 %cond37, i32* %aca_max39, align 4, !dbg !3847
  br label %sw.epilog, !dbg !3848

sw.default:                                       ; preds = %entry
  br label %return, !dbg !3849

sw.epilog:                                        ; preds = %cond.end36, %cond.end24, %cond.end12, %cond.end
  %26 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3850
  %chg_work = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %26, i32 0, i32 17, !dbg !3851
  %call = call zeroext i1 @schedule_work(%struct.work_struct* %chg_work) #7, !dbg !3852
  br label %return, !dbg !3853

return:                                           ; preds = %sw.epilog, %sw.default, %if.then31, %if.then19, %if.then7, %if.then
  ret void, !dbg !3853
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #0 !dbg !3854 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3857, metadata !DIExpression()), !dbg !3858
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !3859
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3860
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #7, !dbg !3861
  ret i1 %call, !dbg !3862
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_phy_get_charger_current(%struct.usb_phy* %usb_phy, i32* %min, i32* %max) #0 !dbg !3863 {
entry:
  %usb_phy.addr = alloca %struct.usb_phy*, align 8
  %min.addr = alloca i32*, align 8
  %max.addr = alloca i32*, align 8
  store %struct.usb_phy* %usb_phy, %struct.usb_phy** %usb_phy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %usb_phy.addr, metadata !3866, metadata !DIExpression()), !dbg !3867
  store i32* %min, i32** %min.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %min.addr, metadata !3868, metadata !DIExpression()), !dbg !3869
  store i32* %max, i32** %max.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %max.addr, metadata !3870, metadata !DIExpression()), !dbg !3871
  %0 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3872
  %chg_type = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 14, !dbg !3873
  %1 = load i32, i32* %chg_type, align 8, !dbg !3873
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb5
    i32 4, label %sw.bb8
  ], !dbg !3874

sw.bb:                                            ; preds = %entry
  %2 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3875
  %chg_cur = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %2, i32 0, i32 16, !dbg !3877
  %sdp_min = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur, i32 0, i32 0, !dbg !3878
  %3 = load i32, i32* %sdp_min, align 8, !dbg !3878
  %4 = load i32*, i32** %min.addr, align 8, !dbg !3879
  store i32 %3, i32* %4, align 4, !dbg !3880
  %5 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3881
  %chg_cur1 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %5, i32 0, i32 16, !dbg !3882
  %sdp_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur1, i32 0, i32 1, !dbg !3883
  %6 = load i32, i32* %sdp_max, align 4, !dbg !3883
  %7 = load i32*, i32** %max.addr, align 8, !dbg !3884
  store i32 %6, i32* %7, align 4, !dbg !3885
  br label %sw.epilog, !dbg !3886

sw.bb2:                                           ; preds = %entry
  %8 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3887
  %chg_cur3 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %8, i32 0, i32 16, !dbg !3888
  %dcp_min = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur3, i32 0, i32 2, !dbg !3889
  %9 = load i32, i32* %dcp_min, align 8, !dbg !3889
  %10 = load i32*, i32** %min.addr, align 8, !dbg !3890
  store i32 %9, i32* %10, align 4, !dbg !3891
  %11 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3892
  %chg_cur4 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %11, i32 0, i32 16, !dbg !3893
  %dcp_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur4, i32 0, i32 3, !dbg !3894
  %12 = load i32, i32* %dcp_max, align 4, !dbg !3894
  %13 = load i32*, i32** %max.addr, align 8, !dbg !3895
  store i32 %12, i32* %13, align 4, !dbg !3896
  br label %sw.epilog, !dbg !3897

sw.bb5:                                           ; preds = %entry
  %14 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3898
  %chg_cur6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %14, i32 0, i32 16, !dbg !3899
  %cdp_min = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur6, i32 0, i32 4, !dbg !3900
  %15 = load i32, i32* %cdp_min, align 8, !dbg !3900
  %16 = load i32*, i32** %min.addr, align 8, !dbg !3901
  store i32 %15, i32* %16, align 4, !dbg !3902
  %17 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3903
  %chg_cur7 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %17, i32 0, i32 16, !dbg !3904
  %cdp_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur7, i32 0, i32 5, !dbg !3905
  %18 = load i32, i32* %cdp_max, align 4, !dbg !3905
  %19 = load i32*, i32** %max.addr, align 8, !dbg !3906
  store i32 %18, i32* %19, align 4, !dbg !3907
  br label %sw.epilog, !dbg !3908

sw.bb8:                                           ; preds = %entry
  %20 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3909
  %chg_cur9 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %20, i32 0, i32 16, !dbg !3910
  %aca_min = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur9, i32 0, i32 6, !dbg !3911
  %21 = load i32, i32* %aca_min, align 8, !dbg !3911
  %22 = load i32*, i32** %min.addr, align 8, !dbg !3912
  store i32 %21, i32* %22, align 4, !dbg !3913
  %23 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3914
  %chg_cur10 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %23, i32 0, i32 16, !dbg !3915
  %aca_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur10, i32 0, i32 7, !dbg !3916
  %24 = load i32, i32* %aca_max, align 4, !dbg !3916
  %25 = load i32*, i32** %max.addr, align 8, !dbg !3917
  store i32 %24, i32* %25, align 4, !dbg !3918
  br label %sw.epilog, !dbg !3919

sw.default:                                       ; preds = %entry
  %26 = load i32*, i32** %min.addr, align 8, !dbg !3920
  store i32 0, i32* %26, align 4, !dbg !3921
  %27 = load i32*, i32** %max.addr, align 8, !dbg !3922
  store i32 0, i32* %27, align 4, !dbg !3923
  br label %sw.epilog, !dbg !3924

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  ret void, !dbg !3925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_phy_set_charger_state(%struct.usb_phy* %usb_phy, i32 %state) #0 !dbg !3926 {
entry:
  %usb_phy.addr = alloca %struct.usb_phy*, align 8
  %state.addr = alloca i32, align 4
  store %struct.usb_phy* %usb_phy, %struct.usb_phy** %usb_phy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %usb_phy.addr, metadata !3929, metadata !DIExpression()), !dbg !3930
  store i32 %state, i32* %state.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %state.addr, metadata !3931, metadata !DIExpression()), !dbg !3932
  %0 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3933
  %chg_state = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 15, !dbg !3935
  %1 = load i32, i32* %chg_state, align 4, !dbg !3935
  %2 = load i32, i32* %state.addr, align 4, !dbg !3936
  %cmp = icmp eq i32 %1, %2, !dbg !3937
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3938

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3939
  %charger_detect = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %3, i32 0, i32 30, !dbg !3940
  %4 = load i32 (%struct.usb_phy*)*, i32 (%struct.usb_phy*)** %charger_detect, align 8, !dbg !3940
  %tobool = icmp ne i32 (%struct.usb_phy*)* %4, null, !dbg !3939
  br i1 %tobool, label %if.end, label %if.then, !dbg !3941

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !3942

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, i32* %state.addr, align 4, !dbg !3943
  %6 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3944
  %chg_state1 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %6, i32 0, i32 15, !dbg !3945
  store i32 %5, i32* %chg_state1, align 4, !dbg !3946
  %7 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3947
  %chg_state2 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 15, !dbg !3949
  %8 = load i32, i32* %chg_state2, align 4, !dbg !3949
  %cmp3 = icmp eq i32 %8, 1, !dbg !3950
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !3951

if.then4:                                         ; preds = %if.end
  %9 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3952
  %charger_detect5 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %9, i32 0, i32 30, !dbg !3953
  %10 = load i32 (%struct.usb_phy*)*, i32 (%struct.usb_phy*)** %charger_detect5, align 8, !dbg !3953
  %11 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3954
  %call = call i32 %10(%struct.usb_phy* %11) #7, !dbg !3952
  %12 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3955
  %chg_type = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %12, i32 0, i32 14, !dbg !3956
  store i32 %call, i32* %chg_type, align 8, !dbg !3957
  br label %if.end7, !dbg !3955

if.else:                                          ; preds = %if.end
  %13 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3958
  %chg_type6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %13, i32 0, i32 14, !dbg !3959
  store i32 0, i32* %chg_type6, align 8, !dbg !3960
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %14 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !3961
  %chg_work = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %14, i32 0, i32 17, !dbg !3962
  %call8 = call zeroext i1 @schedule_work(%struct.work_struct* %chg_work) #7, !dbg !3963
  br label %return, !dbg !3964

return:                                           ; preds = %if.end7, %if.then
  ret void, !dbg !3964
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.usb_phy* @devm_usb_get_phy(%struct.device* %dev, i32 %type) #0 !dbg !3965 {
entry:
  %retval = alloca %struct.usb_phy*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %type.addr = alloca i32, align 4
  %ptr = alloca %struct.usb_phy**, align 8
  %phy = alloca %struct.usb_phy*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3968, metadata !DIExpression()), !dbg !3969
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3970, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.declare(metadata %struct.usb_phy*** %ptr, metadata !3972, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %phy, metadata !3974, metadata !DIExpression()), !dbg !3975
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_usb_phy_release, i64 8, i32 3264) #7, !dbg !3976
  %0 = bitcast i8* %call to %struct.usb_phy**, !dbg !3976
  store %struct.usb_phy** %0, %struct.usb_phy*** %ptr, align 8, !dbg !3977
  %1 = load %struct.usb_phy**, %struct.usb_phy*** %ptr, align 8, !dbg !3978
  %tobool = icmp ne %struct.usb_phy** %1, null, !dbg !3978
  br i1 %tobool, label %if.end, label %if.then, !dbg !3980

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #7, !dbg !3981
  %2 = bitcast i8* %call1 to %struct.usb_phy*, !dbg !3981
  store %struct.usb_phy* %2, %struct.usb_phy** %retval, align 8, !dbg !3982
  br label %return, !dbg !3982

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %type.addr, align 4, !dbg !3983
  %call2 = call %struct.usb_phy* @usb_get_phy(i32 %3) #7, !dbg !3984
  store %struct.usb_phy* %call2, %struct.usb_phy** %phy, align 8, !dbg !3985
  %4 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !3986
  %5 = bitcast %struct.usb_phy* %4 to i8*, !dbg !3986
  %call3 = call zeroext i1 @IS_ERR(i8* %5) #7, !dbg !3988
  br i1 %call3, label %if.else, label %if.then4, !dbg !3989

if.then4:                                         ; preds = %if.end
  %6 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !3990
  %7 = load %struct.usb_phy**, %struct.usb_phy*** %ptr, align 8, !dbg !3992
  store %struct.usb_phy* %6, %struct.usb_phy** %7, align 8, !dbg !3993
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3994
  %9 = load %struct.usb_phy**, %struct.usb_phy*** %ptr, align 8, !dbg !3995
  %10 = bitcast %struct.usb_phy** %9 to i8*, !dbg !3995
  call void @devres_add(%struct.device* %8, i8* %10) #7, !dbg !3996
  br label %if.end5, !dbg !3997

if.else:                                          ; preds = %if.end
  %11 = load %struct.usb_phy**, %struct.usb_phy*** %ptr, align 8, !dbg !3998
  %12 = bitcast %struct.usb_phy** %11 to i8*, !dbg !3998
  call void @devres_free(i8* %12) #7, !dbg !3999
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %13 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4000
  store %struct.usb_phy* %13, %struct.usb_phy** %retval, align 8, !dbg !4001
  br label %return, !dbg !4001

return:                                           ; preds = %if.end5, %if.then
  %14 = load %struct.usb_phy*, %struct.usb_phy** %retval, align 8, !dbg !4002
  ret %struct.usb_phy* %14, !dbg !4002
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !4003 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !4010, metadata !DIExpression()), !dbg !4011
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4012, metadata !DIExpression()), !dbg !4013
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4014, metadata !DIExpression()), !dbg !4015
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !4016
  %1 = load i64, i64* %size.addr, align 8, !dbg !4017
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4018
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #7, !dbg !4019
  ret i8* %call, !dbg !4020
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_usb_phy_release(%struct.device* %dev, i8* %res) #0 !dbg !4021 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %phy = alloca %struct.usb_phy*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4022, metadata !DIExpression()), !dbg !4023
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %phy, metadata !4026, metadata !DIExpression()), !dbg !4027
  %0 = load i8*, i8** %res.addr, align 8, !dbg !4028
  %1 = bitcast i8* %0 to %struct.usb_phy**, !dbg !4029
  %2 = load %struct.usb_phy*, %struct.usb_phy** %1, align 8, !dbg !4030
  store %struct.usb_phy* %2, %struct.usb_phy** %phy, align 8, !dbg !4027
  %3 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4031
  call void @usb_put_phy(%struct.usb_phy* %3) #7, !dbg !4032
  ret void, !dbg !4033
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4034 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4038, metadata !DIExpression()), !dbg !4039
  %0 = load i64, i64* %error.addr, align 8, !dbg !4040
  %1 = inttoptr i64 %0 to i8*, !dbg !4041
  ret i8* %1, !dbg !4042
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.usb_phy* @usb_get_phy(i32 %type) #0 !dbg !4043 {
entry:
  %lock.addr.i30 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i30, metadata !4046, metadata !DIExpression()), !dbg !4052
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4054, metadata !DIExpression()), !dbg !4055
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4056, metadata !DIExpression()), !dbg !4061
  %type.addr = alloca i32, align 4
  %phy = alloca %struct.usb_phy*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4068, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %phy, metadata !4070, metadata !DIExpression()), !dbg !4071
  store %struct.usb_phy* null, %struct.usb_phy** %phy, align 8, !dbg !4071
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4072, metadata !DIExpression()), !dbg !4073
  br label %do.body, !dbg !4074

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4075

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4076, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4079, metadata !DIExpression()), !dbg !4078
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4078
  %conv = zext i1 %cmp to i32, !dbg !4078
  store i32 1, i32* %tmp, align 4, !dbg !4078
  %0 = load i32, i32* %tmp, align 4, !dbg !4078
  br label %do.body2, !dbg !4080

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4081

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4082

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4084, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4088, metadata !DIExpression()), !dbg !4087
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4087
  %conv8 = zext i1 %cmp7 to i32, !dbg !4087
  store i32 1, i32* %tmp9, align 4, !dbg !4087
  %1 = load i32, i32* %tmp9, align 4, !dbg !4087
  %call = call i64 @arch_local_irq_save() #7, !dbg !4089
  store i64 %call, i64* %flags, align 8, !dbg !4089
  br label %do.end, !dbg !4089

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4082

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4081

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4090, !srcloc !4091
  br label %do.body12, !dbg !4090

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @phy_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4092
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4093
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !4093
  br label %do.end14, !dbg !4094

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4090

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4081

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4080

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4075

do.end18:                                         ; preds = %do.end17
  %4 = load i32, i32* %type.addr, align 4, !dbg !4095
  %call19 = call %struct.usb_phy* @__usb_find_phy(%struct.list_head* @phy_list, i32 %4) #7, !dbg !4096
  store %struct.usb_phy* %call19, %struct.usb_phy** %phy, align 8, !dbg !4097
  %5 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4098
  %6 = bitcast %struct.usb_phy* %5 to i8*, !dbg !4098
  %call20 = call zeroext i1 @IS_ERR(i8* %6) #7, !dbg !4100
  br i1 %call20, label %if.then, label %lor.lhs.false, !dbg !4101

lor.lhs.false:                                    ; preds = %do.end18
  %7 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4102
  %dev = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 0, !dbg !4103
  %8 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4103
  %driver = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 6, !dbg !4104
  %9 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4104
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %9, i32 0, i32 2, !dbg !4105
  %10 = load %struct.module*, %struct.module** %owner, align 8, !dbg !4105
  %call22 = call zeroext i1 @try_module_get(%struct.module* %10) #7, !dbg !4106
  br i1 %call22, label %if.end27, label %if.then, !dbg !4107

if.then:                                          ; preds = %lor.lhs.false, %do.end18
  store i32 0, i32* %tmp23, align 4, !dbg !4108
  %11 = load i32, i32* %tmp23, align 4, !dbg !4112
  %12 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4113
  %13 = bitcast %struct.usb_phy* %12 to i8*, !dbg !4113
  %call24 = call zeroext i1 @IS_ERR(i8* %13) #7, !dbg !4115
  br i1 %call24, label %if.end, label %if.then25, !dbg !4116

if.then25:                                        ; preds = %if.then
  %call26 = call i8* @ERR_PTR(i64 -19) #7, !dbg !4117
  %14 = bitcast i8* %call26 to %struct.usb_phy*, !dbg !4117
  store %struct.usb_phy* %14, %struct.usb_phy** %phy, align 8, !dbg !4118
  br label %if.end, !dbg !4119

if.end:                                           ; preds = %if.then25, %if.then
  br label %err0, !dbg !4120

if.end27:                                         ; preds = %lor.lhs.false
  %15 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4121
  %dev28 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %15, i32 0, i32 0, !dbg !4122
  %16 = load %struct.device*, %struct.device** %dev28, align 8, !dbg !4122
  %call29 = call %struct.device* @get_device(%struct.device* %16) #7, !dbg !4123
  br label %err0, !dbg !4123

err0:                                             ; preds = %if.end27, %if.end
  call void @llvm.dbg.label(metadata !4124), !dbg !4125
  %17 = load i64, i64* %flags, align 8, !dbg !4126
  store %struct.spinlock* @phy_lock, %struct.spinlock** %lock.addr.i30, align 8
  store i64 %17, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !211, metadata !4127, metadata !DIExpression()) #6, !dbg !4130
  call void @llvm.dbg.declare(metadata !211, metadata !4131, metadata !DIExpression()) #6, !dbg !4130
  store i32 1, i32* %tmp.i, align 4, !dbg !4130
  %18 = load i32, i32* %tmp.i, align 4, !dbg !4130
  call void @llvm.dbg.declare(metadata !211, metadata !4132, metadata !DIExpression()) #6, !dbg !4137
  call void @llvm.dbg.declare(metadata !211, metadata !4138, metadata !DIExpression()) #6, !dbg !4137
  store i32 1, i32* %tmp8.i, align 4, !dbg !4137
  %19 = load i32, i32* %tmp8.i, align 4, !dbg !4137
  %20 = load i64, i64* %flags.addr.i, align 8, !dbg !4139
  call void @arch_local_irq_restore(i64 %20) #8, !dbg !4139
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4140, !srcloc !4142
  %21 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i30, align 8, !dbg !4143
  %22 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %21, i32 0, i32 0, !dbg !4143
  %rlock.i31 = bitcast %union.anon.3* %22 to %struct.raw_spinlock*, !dbg !4143
  %23 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4145
  ret %struct.usb_phy* %23, !dbg !4146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !4147 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4150, metadata !DIExpression()), !dbg !4151
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4152
  %1 = ptrtoint i8* %0 to i64, !dbg !4152
  %2 = inttoptr i64 %1 to i8*, !dbg !4152
  %3 = ptrtoint i8* %2 to i64, !dbg !4152
  %cmp = icmp uge i64 %3, -4095, !dbg !4152
  %lnot = xor i1 %cmp, true, !dbg !4152
  %lnot1 = xor i1 %lnot, true, !dbg !4152
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4152
  %conv = sext i32 %lnot.ext to i64, !dbg !4152
  %tobool = icmp ne i64 %conv, 0, !dbg !4152
  ret i1 %tobool, !dbg !4153
}

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !4154 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !4158, metadata !DIExpression()), !dbg !4159
  %call = call i64 @arch_local_save_flags() #7, !dbg !4160
  store i64 %call, i64* %f, align 8, !dbg !4161
  call void @arch_local_irq_disable() #7, !dbg !4162
  %0 = load i64, i64* %f, align 8, !dbg !4163
  ret i64 %0, !dbg !4164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_phy* @__usb_find_phy(%struct.list_head* %list, i32 %type) #0 !dbg !4165 {
entry:
  %retval = alloca %struct.usb_phy*, align 8
  %list.addr = alloca %struct.list_head*, align 8
  %type.addr = alloca i32, align 4
  %phy = alloca %struct.usb_phy*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_phy*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp8 = alloca %struct.usb_phy*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %phy, metadata !4172, metadata !DIExpression()), !dbg !4173
  store %struct.usb_phy* null, %struct.usb_phy** %phy, align 8, !dbg !4173
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4174, metadata !DIExpression()), !dbg !4177
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4177
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4177
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4177
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4177
  store i8* %2, i8** %__mptr, align 8, !dbg !4177
  br label %do.body, !dbg !4177

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4178

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4177
  %add.ptr = getelementptr i8, i8* %3, i64 -240, !dbg !4177
  %4 = bitcast i8* %add.ptr to %struct.usb_phy*, !dbg !4177
  store %struct.usb_phy* %4, %struct.usb_phy** %tmp, align 8, !dbg !4178
  %5 = load %struct.usb_phy*, %struct.usb_phy** %tmp, align 8, !dbg !4177
  store %struct.usb_phy* %5, %struct.usb_phy** %phy, align 8, !dbg !4180
  br label %for.cond, !dbg !4180

for.cond:                                         ; preds = %do.end7, %do.end
  %6 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4181
  %head = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %6, i32 0, i32 21, !dbg !4181
  %7 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4181
  %cmp = icmp eq %struct.list_head* %head, %7, !dbg !4181
  %lnot = xor i1 %cmp, true, !dbg !4181
  br i1 %lnot, label %for.body, label %for.end, !dbg !4180

for.body:                                         ; preds = %for.cond
  %8 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4183
  %type1 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %8, i32 0, i32 3, !dbg !4186
  %9 = load i32, i32* %type1, align 4, !dbg !4186
  %10 = load i32, i32* %type.addr, align 4, !dbg !4187
  %cmp2 = icmp ne i32 %9, %10, !dbg !4188
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4189

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !4190

if.end:                                           ; preds = %for.body
  %11 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4191
  store %struct.usb_phy* %11, %struct.usb_phy** %retval, align 8, !dbg !4192
  br label %return, !dbg !4192

for.inc:                                          ; preds = %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !4193, metadata !DIExpression()), !dbg !4195
  %12 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4195
  %head4 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %12, i32 0, i32 21, !dbg !4195
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %head4, i32 0, i32 0, !dbg !4195
  %13 = load %struct.list_head*, %struct.list_head** %next5, align 8, !dbg !4195
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !4195
  store i8* %14, i8** %__mptr3, align 8, !dbg !4195
  br label %do.body6, !dbg !4195

do.body6:                                         ; preds = %for.inc
  br label %do.end7, !dbg !4196

do.end7:                                          ; preds = %do.body6
  %15 = load i8*, i8** %__mptr3, align 8, !dbg !4195
  %add.ptr9 = getelementptr i8, i8* %15, i64 -240, !dbg !4195
  %16 = bitcast i8* %add.ptr9 to %struct.usb_phy*, !dbg !4195
  store %struct.usb_phy* %16, %struct.usb_phy** %tmp8, align 8, !dbg !4196
  %17 = load %struct.usb_phy*, %struct.usb_phy** %tmp8, align 8, !dbg !4195
  store %struct.usb_phy* %17, %struct.usb_phy** %phy, align 8, !dbg !4181
  br label %for.cond, !dbg !4181, !llvm.loop !4198

for.end:                                          ; preds = %for.cond
  %call = call i8* @ERR_PTR(i64 -19) #7, !dbg !4200
  %18 = bitcast i8* %call to %struct.usb_phy*, !dbg !4200
  store %struct.usb_phy* %18, %struct.usb_phy** %retval, align 8, !dbg !4201
  br label %return, !dbg !4201

return:                                           ; preds = %for.end, %if.end
  %19 = load %struct.usb_phy*, %struct.usb_phy** %retval, align 8, !dbg !4202
  ret %struct.usb_phy* %19, !dbg !4202
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !4203 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4207, metadata !DIExpression()), !dbg !4208
  ret i1 true, !dbg !4209
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_device(%struct.device*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.usb_phy* @devm_usb_get_phy_by_node(%struct.device* %dev, %struct.device_node* %node, %struct.notifier_block* %nb) #0 !dbg !4210 {
entry:
  %lock.addr.i38 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i38, metadata !4046, metadata !DIExpression()), !dbg !4213
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4054, metadata !DIExpression()), !dbg !4215
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4056, metadata !DIExpression()), !dbg !4216
  %dev.addr = alloca %struct.device*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %nb.addr = alloca %struct.notifier_block*, align 8
  %phy = alloca %struct.usb_phy*, align 8
  %ptr = alloca %struct.phy_devm*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4223, metadata !DIExpression()), !dbg !4224
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4225, metadata !DIExpression()), !dbg !4226
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !4227, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %phy, metadata !4229, metadata !DIExpression()), !dbg !4230
  %call = call i8* @ERR_PTR(i64 -12) #7, !dbg !4231
  %0 = bitcast i8* %call to %struct.usb_phy*, !dbg !4231
  store %struct.usb_phy* %0, %struct.usb_phy** %phy, align 8, !dbg !4230
  call void @llvm.dbg.declare(metadata %struct.phy_devm** %ptr, metadata !4232, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4239, metadata !DIExpression()), !dbg !4240
  %call1 = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_usb_phy_release2, i64 16, i32 3264) #7, !dbg !4241
  %1 = bitcast i8* %call1 to %struct.phy_devm*, !dbg !4241
  store %struct.phy_devm* %1, %struct.phy_devm** %ptr, align 8, !dbg !4242
  %2 = load %struct.phy_devm*, %struct.phy_devm** %ptr, align 8, !dbg !4243
  %tobool = icmp ne %struct.phy_devm* %2, null, !dbg !4243
  br i1 %tobool, label %if.end, label %if.then, !dbg !4245

if.then:                                          ; preds = %entry
  br label %err0, !dbg !4246

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4248

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !4249

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4250, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4253, metadata !DIExpression()), !dbg !4252
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4252
  %conv = zext i1 %cmp to i32, !dbg !4252
  store i32 1, i32* %tmp, align 4, !dbg !4252
  %3 = load i32, i32* %tmp, align 4, !dbg !4252
  br label %do.body3, !dbg !4254

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4255

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !4256

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !4258, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !4262, metadata !DIExpression()), !dbg !4261
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !4261
  %conv9 = zext i1 %cmp8 to i32, !dbg !4261
  store i32 1, i32* %tmp10, align 4, !dbg !4261
  %4 = load i32, i32* %tmp10, align 4, !dbg !4261
  %call11 = call i64 @arch_local_irq_save() #7, !dbg !4263
  store i64 %call11, i64* %flags, align 8, !dbg !4263
  br label %do.end, !dbg !4263

do.end:                                           ; preds = %do.body5
  br label %do.end12, !dbg !4256

do.end12:                                         ; preds = %do.end
  br label %do.body13, !dbg !4255

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4264, !srcloc !4265
  br label %do.body14, !dbg !4264

do.body14:                                        ; preds = %do.body13
  store %struct.spinlock* @phy_lock, %struct.spinlock** %lock.addr.i, align 8
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4266
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !4267
  %rlock.i = bitcast %union.anon.3* %6 to %struct.raw_spinlock*, !dbg !4267
  br label %do.end16, !dbg !4268

do.end16:                                         ; preds = %do.body14
  br label %do.end17, !dbg !4264

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4255

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !4254

do.end19:                                         ; preds = %do.end18
  br label %do.end20, !dbg !4249

do.end20:                                         ; preds = %do.end19
  %7 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4269
  %call21 = call %struct.usb_phy* @__of_usb_find_phy(%struct.device_node* %7) #7, !dbg !4270
  store %struct.usb_phy* %call21, %struct.usb_phy** %phy, align 8, !dbg !4271
  %8 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4272
  %9 = bitcast %struct.usb_phy* %8 to i8*, !dbg !4272
  %call22 = call zeroext i1 @IS_ERR(i8* %9) #7, !dbg !4274
  br i1 %call22, label %if.then23, label %if.end24, !dbg !4275

if.then23:                                        ; preds = %do.end20
  %10 = load %struct.phy_devm*, %struct.phy_devm** %ptr, align 8, !dbg !4276
  %11 = bitcast %struct.phy_devm* %10 to i8*, !dbg !4276
  call void @devres_free(i8* %11) #7, !dbg !4278
  br label %err1, !dbg !4279

if.end24:                                         ; preds = %do.end20
  %12 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4280
  %dev25 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %12, i32 0, i32 0, !dbg !4282
  %13 = load %struct.device*, %struct.device** %dev25, align 8, !dbg !4282
  %driver = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 6, !dbg !4283
  %14 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4283
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %14, i32 0, i32 2, !dbg !4284
  %15 = load %struct.module*, %struct.module** %owner, align 8, !dbg !4284
  %call26 = call zeroext i1 @try_module_get(%struct.module* %15) #7, !dbg !4285
  br i1 %call26, label %if.end29, label %if.then27, !dbg !4286

if.then27:                                        ; preds = %if.end24
  %call28 = call i8* @ERR_PTR(i64 -19) #7, !dbg !4287
  %16 = bitcast i8* %call28 to %struct.usb_phy*, !dbg !4287
  store %struct.usb_phy* %16, %struct.usb_phy** %phy, align 8, !dbg !4289
  %17 = load %struct.phy_devm*, %struct.phy_devm** %ptr, align 8, !dbg !4290
  %18 = bitcast %struct.phy_devm* %17 to i8*, !dbg !4290
  call void @devres_free(i8* %18) #7, !dbg !4291
  br label %err1, !dbg !4292

if.end29:                                         ; preds = %if.end24
  %19 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !4293
  %tobool30 = icmp ne %struct.notifier_block* %19, null, !dbg !4293
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !4295

if.then31:                                        ; preds = %if.end29
  %20 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4296
  %21 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !4297
  %call32 = call i32 @usb_register_notifier(%struct.usb_phy* %20, %struct.notifier_block* %21) #7, !dbg !4298
  br label %if.end33, !dbg !4298

if.end33:                                         ; preds = %if.then31, %if.end29
  %22 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4299
  %23 = load %struct.phy_devm*, %struct.phy_devm** %ptr, align 8, !dbg !4300
  %phy34 = getelementptr inbounds %struct.phy_devm, %struct.phy_devm* %23, i32 0, i32 0, !dbg !4301
  store %struct.usb_phy* %22, %struct.usb_phy** %phy34, align 8, !dbg !4302
  %24 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !4303
  %25 = load %struct.phy_devm*, %struct.phy_devm** %ptr, align 8, !dbg !4304
  %nb35 = getelementptr inbounds %struct.phy_devm, %struct.phy_devm* %25, i32 0, i32 1, !dbg !4305
  store %struct.notifier_block* %24, %struct.notifier_block** %nb35, align 8, !dbg !4306
  %26 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4307
  %27 = load %struct.phy_devm*, %struct.phy_devm** %ptr, align 8, !dbg !4308
  %28 = bitcast %struct.phy_devm* %27 to i8*, !dbg !4308
  call void @devres_add(%struct.device* %26, i8* %28) #7, !dbg !4309
  %29 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4310
  %dev36 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %29, i32 0, i32 0, !dbg !4311
  %30 = load %struct.device*, %struct.device** %dev36, align 8, !dbg !4311
  %call37 = call %struct.device* @get_device(%struct.device* %30) #7, !dbg !4312
  br label %err1, !dbg !4312

err1:                                             ; preds = %if.end33, %if.then27, %if.then23
  call void @llvm.dbg.label(metadata !4313), !dbg !4314
  %31 = load i64, i64* %flags, align 8, !dbg !4315
  store %struct.spinlock* @phy_lock, %struct.spinlock** %lock.addr.i38, align 8
  store i64 %31, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !211, metadata !4127, metadata !DIExpression()) #6, !dbg !4316
  call void @llvm.dbg.declare(metadata !211, metadata !4131, metadata !DIExpression()) #6, !dbg !4316
  store i32 1, i32* %tmp.i, align 4, !dbg !4316
  %32 = load i32, i32* %tmp.i, align 4, !dbg !4316
  call void @llvm.dbg.declare(metadata !211, metadata !4132, metadata !DIExpression()) #6, !dbg !4317
  call void @llvm.dbg.declare(metadata !211, metadata !4138, metadata !DIExpression()) #6, !dbg !4317
  store i32 1, i32* %tmp8.i, align 4, !dbg !4317
  %33 = load i32, i32* %tmp8.i, align 4, !dbg !4317
  %34 = load i64, i64* %flags.addr.i, align 8, !dbg !4318
  call void @arch_local_irq_restore(i64 %34) #8, !dbg !4318
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4319, !srcloc !4142
  %35 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i38, align 8, !dbg !4320
  %36 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %35, i32 0, i32 0, !dbg !4320
  %rlock.i39 = bitcast %union.anon.3* %36 to %struct.raw_spinlock*, !dbg !4320
  br label %err0, !dbg !4321

err0:                                             ; preds = %err1, %if.then
  call void @llvm.dbg.label(metadata !4322), !dbg !4323
  %37 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4324
  ret %struct.usb_phy* %37, !dbg !4325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_usb_phy_release2(%struct.device* %dev, i8* %_res) #0 !dbg !4326 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %_res.addr = alloca i8*, align 8
  %res = alloca %struct.phy_devm*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4327, metadata !DIExpression()), !dbg !4328
  store i8* %_res, i8** %_res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_res.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.declare(metadata %struct.phy_devm** %res, metadata !4331, metadata !DIExpression()), !dbg !4332
  %0 = load i8*, i8** %_res.addr, align 8, !dbg !4333
  %1 = bitcast i8* %0 to %struct.phy_devm*, !dbg !4333
  store %struct.phy_devm* %1, %struct.phy_devm** %res, align 8, !dbg !4332
  %2 = load %struct.phy_devm*, %struct.phy_devm** %res, align 8, !dbg !4334
  %nb = getelementptr inbounds %struct.phy_devm, %struct.phy_devm* %2, i32 0, i32 1, !dbg !4336
  %3 = load %struct.notifier_block*, %struct.notifier_block** %nb, align 8, !dbg !4336
  %tobool = icmp ne %struct.notifier_block* %3, null, !dbg !4334
  br i1 %tobool, label %if.then, label %if.end, !dbg !4337

if.then:                                          ; preds = %entry
  %4 = load %struct.phy_devm*, %struct.phy_devm** %res, align 8, !dbg !4338
  %phy = getelementptr inbounds %struct.phy_devm, %struct.phy_devm* %4, i32 0, i32 0, !dbg !4339
  %5 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4339
  %6 = load %struct.phy_devm*, %struct.phy_devm** %res, align 8, !dbg !4340
  %nb1 = getelementptr inbounds %struct.phy_devm, %struct.phy_devm* %6, i32 0, i32 1, !dbg !4341
  %7 = load %struct.notifier_block*, %struct.notifier_block** %nb1, align 8, !dbg !4341
  call void @usb_unregister_notifier(%struct.usb_phy* %5, %struct.notifier_block* %7) #7, !dbg !4342
  br label %if.end, !dbg !4342

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.phy_devm*, %struct.phy_devm** %res, align 8, !dbg !4343
  %phy2 = getelementptr inbounds %struct.phy_devm, %struct.phy_devm* %8, i32 0, i32 0, !dbg !4344
  %9 = load %struct.usb_phy*, %struct.usb_phy** %phy2, align 8, !dbg !4344
  call void @usb_put_phy(%struct.usb_phy* %9) #7, !dbg !4345
  ret void, !dbg !4346
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_phy* @__of_usb_find_phy(%struct.device_node* %node) #0 !dbg !4347 {
entry:
  %retval = alloca %struct.usb_phy*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %phy = alloca %struct.usb_phy*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_phy*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp9 = alloca %struct.usb_phy*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4350, metadata !DIExpression()), !dbg !4351
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %phy, metadata !4352, metadata !DIExpression()), !dbg !4353
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4354
  %call = call zeroext i1 @of_device_is_available(%struct.device_node* %0) #7, !dbg !4356
  br i1 %call, label %if.end, label %if.then, !dbg !4357

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -19) #7, !dbg !4358
  %1 = bitcast i8* %call1 to %struct.usb_phy*, !dbg !4358
  store %struct.usb_phy* %1, %struct.usb_phy** %retval, align 8, !dbg !4359
  br label %return, !dbg !4359

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4360, metadata !DIExpression()), !dbg !4363
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @phy_list, i32 0, i32 0), align 8, !dbg !4363
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4363
  store i8* %3, i8** %__mptr, align 8, !dbg !4363
  br label %do.body, !dbg !4363

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !4364

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4363
  %add.ptr = getelementptr i8, i8* %4, i64 -240, !dbg !4363
  %5 = bitcast i8* %add.ptr to %struct.usb_phy*, !dbg !4363
  store %struct.usb_phy* %5, %struct.usb_phy** %tmp, align 8, !dbg !4364
  %6 = load %struct.usb_phy*, %struct.usb_phy** %tmp, align 8, !dbg !4363
  store %struct.usb_phy* %6, %struct.usb_phy** %phy, align 8, !dbg !4366
  br label %for.cond, !dbg !4366

for.cond:                                         ; preds = %do.end8, %do.end
  %7 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4367
  %head = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 21, !dbg !4367
  %cmp = icmp eq %struct.list_head* %head, @phy_list, !dbg !4367
  %lnot = xor i1 %cmp, true, !dbg !4367
  br i1 %lnot, label %for.body, label %for.end, !dbg !4366

for.body:                                         ; preds = %for.cond
  %8 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4369
  %9 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4372
  %dev = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %9, i32 0, i32 0, !dbg !4373
  %10 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4373
  %of_node = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 23, !dbg !4374
  %11 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4374
  %cmp2 = icmp ne %struct.device_node* %8, %11, !dbg !4375
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4376

if.then3:                                         ; preds = %for.body
  br label %for.inc, !dbg !4377

if.end4:                                          ; preds = %for.body
  %12 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4378
  store %struct.usb_phy* %12, %struct.usb_phy** %retval, align 8, !dbg !4379
  br label %return, !dbg !4379

for.inc:                                          ; preds = %if.then3
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !4380, metadata !DIExpression()), !dbg !4382
  %13 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4382
  %head6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %13, i32 0, i32 21, !dbg !4382
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head6, i32 0, i32 0, !dbg !4382
  %14 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4382
  %15 = bitcast %struct.list_head* %14 to i8*, !dbg !4382
  store i8* %15, i8** %__mptr5, align 8, !dbg !4382
  br label %do.body7, !dbg !4382

do.body7:                                         ; preds = %for.inc
  br label %do.end8, !dbg !4383

do.end8:                                          ; preds = %do.body7
  %16 = load i8*, i8** %__mptr5, align 8, !dbg !4382
  %add.ptr10 = getelementptr i8, i8* %16, i64 -240, !dbg !4382
  %17 = bitcast i8* %add.ptr10 to %struct.usb_phy*, !dbg !4382
  store %struct.usb_phy* %17, %struct.usb_phy** %tmp9, align 8, !dbg !4383
  %18 = load %struct.usb_phy*, %struct.usb_phy** %tmp9, align 8, !dbg !4382
  store %struct.usb_phy* %18, %struct.usb_phy** %phy, align 8, !dbg !4367
  br label %for.cond, !dbg !4367, !llvm.loop !4385

for.end:                                          ; preds = %for.cond
  %call11 = call i8* @ERR_PTR(i64 -517) #7, !dbg !4387
  %19 = bitcast i8* %call11 to %struct.usb_phy*, !dbg !4387
  store %struct.usb_phy* %19, %struct.usb_phy** %retval, align 8, !dbg !4388
  br label %return, !dbg !4388

return:                                           ; preds = %for.end, %if.end4, %if.then
  %20 = load %struct.usb_phy*, %struct.usb_phy** %retval, align 8, !dbg !4389
  ret %struct.usb_phy* %20, !dbg !4389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_register_notifier(%struct.usb_phy* %x, %struct.notifier_block* %nb) #0 !dbg !4390 {
entry:
  %x.addr = alloca %struct.usb_phy*, align 8
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !4393, metadata !DIExpression()), !dbg !4394
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !4395, metadata !DIExpression()), !dbg !4396
  %0 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4397
  %notifier = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 18, !dbg !4398
  %1 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !4399
  %call = call i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head* %notifier, %struct.notifier_block* %1) #7, !dbg !4400
  ret i32 %call, !dbg !4401
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.usb_phy* @devm_usb_get_phy_by_phandle(%struct.device* %dev, i8* %phandle, i8 zeroext %index) #0 !dbg !4402 {
entry:
  %retval = alloca %struct.usb_phy*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %phandle.addr = alloca i8*, align 8
  %index.addr = alloca i8, align 1
  %node = alloca %struct.device_node*, align 8
  %phy = alloca %struct.usb_phy*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4405, metadata !DIExpression()), !dbg !4406
  store i8* %phandle, i8** %phandle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %phandle.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  store i8 %index, i8* %index.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %index.addr, metadata !4409, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.declare(metadata %struct.device_node** %node, metadata !4411, metadata !DIExpression()), !dbg !4412
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %phy, metadata !4413, metadata !DIExpression()), !dbg !4414
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4415
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !4417
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4417
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !4415
  br i1 %tobool, label %if.end, label %if.then, !dbg !4418

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -22) #7, !dbg !4419
  %2 = bitcast i8* %call to %struct.usb_phy*, !dbg !4419
  store %struct.usb_phy* %2, %struct.usb_phy** %retval, align 8, !dbg !4421
  br label %return, !dbg !4421

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4422
  %of_node1 = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 23, !dbg !4423
  %4 = load %struct.device_node*, %struct.device_node** %of_node1, align 8, !dbg !4423
  %5 = load i8*, i8** %phandle.addr, align 8, !dbg !4424
  %6 = load i8, i8* %index.addr, align 1, !dbg !4425
  %conv = zext i8 %6 to i32, !dbg !4425
  %call2 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %4, i8* %5, i32 %conv) #7, !dbg !4426
  store %struct.device_node* %call2, %struct.device_node** %node, align 8, !dbg !4427
  %7 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4428
  %tobool3 = icmp ne %struct.device_node* %7, null, !dbg !4428
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4430

if.then4:                                         ; preds = %if.end
  %call5 = call i8* @ERR_PTR(i64 -19) #7, !dbg !4431
  %8 = bitcast i8* %call5 to %struct.usb_phy*, !dbg !4431
  store %struct.usb_phy* %8, %struct.usb_phy** %retval, align 8, !dbg !4433
  br label %return, !dbg !4433

if.end6:                                          ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4434
  %10 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4435
  %call7 = call %struct.usb_phy* @devm_usb_get_phy_by_node(%struct.device* %9, %struct.device_node* %10, %struct.notifier_block* null) #7, !dbg !4436
  store %struct.usb_phy* %call7, %struct.usb_phy** %phy, align 8, !dbg !4437
  %11 = load %struct.device_node*, %struct.device_node** %node, align 8, !dbg !4438
  call void @of_node_put(%struct.device_node* %11) #7, !dbg !4439
  %12 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4440
  store %struct.usb_phy* %12, %struct.usb_phy** %retval, align 8, !dbg !4441
  br label %return, !dbg !4441

return:                                           ; preds = %if.end6, %if.then4, %if.then
  %13 = load %struct.usb_phy*, %struct.usb_phy** %retval, align 8, !dbg !4442
  ret %struct.usb_phy* %13, !dbg !4442
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !4443 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4446, metadata !DIExpression()), !dbg !4447
  ret void, !dbg !4448
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_usb_put_phy(%struct.device* %dev, %struct.usb_phy* %phy) #0 !dbg !3753 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %phy.addr = alloca %struct.usb_phy*, align 8
  %r = alloca i32, align 4
  %__ret_warn_once = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp40 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4449, metadata !DIExpression()), !dbg !4450
  store %struct.usb_phy* %phy, %struct.usb_phy** %phy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %phy.addr, metadata !4451, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.declare(metadata i32* %r, metadata !4453, metadata !DIExpression()), !dbg !4454
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4455
  %1 = load %struct.usb_phy*, %struct.usb_phy** %phy.addr, align 8, !dbg !4456
  %2 = bitcast %struct.usb_phy* %1 to i8*, !dbg !4456
  %call = call i32 @devres_destroy(%struct.device* %0, void (%struct.device*, i8*)* @devm_usb_phy_release, i32 (%struct.device*, i8*, i8*)* @devm_usb_phy_match, i8* %2) #7, !dbg !4457
  store i32 %call, i32* %r, align 4, !dbg !4458
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_once, metadata !4459, metadata !DIExpression()), !dbg !4461
  %3 = load i32, i32* %r, align 4, !dbg !4461
  %tobool = icmp ne i32 %3, 0, !dbg !4461
  %lnot = xor i1 %tobool, true, !dbg !4461
  %lnot1 = xor i1 %lnot, true, !dbg !4461
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4461
  store i32 %lnot.ext, i32* %__ret_warn_once, align 4, !dbg !4461
  %4 = load i32, i32* %__ret_warn_once, align 4, !dbg !4462
  %tobool2 = icmp ne i32 %4, 0, !dbg !4462
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !4462

land.rhs:                                         ; preds = %entry
  %5 = load i8, i8* @devm_usb_put_phy.__warned, align 1, !dbg !4462
  %tobool3 = trunc i8 %5 to i1, !dbg !4462
  %lnot4 = xor i1 %tobool3, true, !dbg !4462
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %lnot4, %land.rhs ], !dbg !4464
  %lnot6 = xor i1 %6, true, !dbg !4462
  %lnot8 = xor i1 %lnot6, true, !dbg !4462
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4462
  %conv = sext i32 %lnot.ext9 to i64, !dbg !4462
  %tobool10 = icmp ne i64 %conv, 0, !dbg !4462
  br i1 %tobool10, label %if.then, label %if.end39, !dbg !4461

if.then:                                          ; preds = %land.end
  store i8 1, i8* @devm_usb_put_phy.__warned, align 1, !dbg !4465
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4467, metadata !DIExpression()), !dbg !4469
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !4469
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !4470
  %tobool11 = icmp ne i32 %7, 0, !dbg !4470
  %lnot12 = xor i1 %tobool11, true, !dbg !4470
  %lnot14 = xor i1 %lnot12, true, !dbg !4470
  %lnot.ext15 = zext i1 %lnot14 to i32, !dbg !4470
  %conv16 = sext i32 %lnot.ext15 to i64, !dbg !4470
  %tobool17 = icmp ne i64 %conv16, 0, !dbg !4470
  br i1 %tobool17, label %if.then18, label %if.end, !dbg !4469

if.then18:                                        ; preds = %if.then
  br label %do.body, !dbg !4470

do.body:                                          ; preds = %if.then18
  br label %do.body19, !dbg !4472

do.body19:                                        ; preds = %do.body
  br label %do.end, !dbg !4474

do.end:                                           ; preds = %do.body19
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4472
  %call20 = call i8* @dev_driver_string(%struct.device* %8) #7, !dbg !4472
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4472
  %call21 = call i8* @dev_name(%struct.device* %9) #7, !dbg !4472
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %call20, i8* %call21) #7, !dbg !4472
  br label %do.body22, !dbg !4472

do.body22:                                        ; preds = %do.end
  br label %do.body23, !dbg !4476

do.body23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !4478

do.end24:                                         ; preds = %do.body23
  br label %do.body25, !dbg !4476

do.body25:                                        ; preds = %do.end24
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 594, i32 2313, i64 12) #6, !dbg !4480, !srcloc !4482
  br label %do.end26, !dbg !4480

do.end26:                                         ; preds = %do.body25
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 217) #6, !dbg !4483, !srcloc !4485
  br label %do.body27, !dbg !4476

do.body27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !4486

do.end28:                                         ; preds = %do.body27
  br label %do.end29, !dbg !4476

do.end29:                                         ; preds = %do.end28
  br label %do.body30, !dbg !4472

do.body30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !4488

do.end31:                                         ; preds = %do.body30
  br label %do.end32, !dbg !4472

do.end32:                                         ; preds = %do.end31
  br label %if.end, !dbg !4472

if.end:                                           ; preds = %do.end32, %if.then
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !4469
  %tobool33 = icmp ne i32 %10, 0, !dbg !4469
  %lnot34 = xor i1 %tobool33, true, !dbg !4469
  %lnot36 = xor i1 %lnot34, true, !dbg !4469
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !4469
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !4469
  store i64 %conv38, i64* %tmp, align 8, !dbg !4470
  %11 = load i64, i64* %tmp, align 8, !dbg !4469
  br label %if.end39, !dbg !4465

if.end39:                                         ; preds = %if.end, %land.end
  %12 = load i32, i32* %__ret_warn_once, align 4, !dbg !4461
  %tobool41 = icmp ne i32 %12, 0, !dbg !4461
  %lnot42 = xor i1 %tobool41, true, !dbg !4461
  %lnot44 = xor i1 %lnot42, true, !dbg !4461
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !4461
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !4461
  store i64 %conv46, i64* %tmp40, align 8, !dbg !4462
  %13 = load i64, i64* %tmp40, align 8, !dbg !4461
  ret void, !dbg !4490
}

; Function Attrs: noredzone
declare dso_local i32 @devres_destroy(%struct.device*, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_usb_phy_match(%struct.device* %dev, i8* %res, i8* %match_data) #0 !dbg !4491 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %match_data.addr = alloca i8*, align 8
  %phy = alloca %struct.usb_phy**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4494, metadata !DIExpression()), !dbg !4495
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  store i8* %match_data, i8** %match_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %match_data.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.declare(metadata %struct.usb_phy*** %phy, metadata !4500, metadata !DIExpression()), !dbg !4501
  %0 = load i8*, i8** %res.addr, align 8, !dbg !4502
  %1 = bitcast i8* %0 to %struct.usb_phy**, !dbg !4502
  store %struct.usb_phy** %1, %struct.usb_phy*** %phy, align 8, !dbg !4501
  %2 = load %struct.usb_phy**, %struct.usb_phy*** %phy, align 8, !dbg !4503
  %3 = load %struct.usb_phy*, %struct.usb_phy** %2, align 8, !dbg !4504
  %4 = load i8*, i8** %match_data.addr, align 8, !dbg !4505
  %5 = bitcast i8* %4 to %struct.usb_phy*, !dbg !4505
  %cmp = icmp eq %struct.usb_phy* %3, %5, !dbg !4506
  %conv = zext i1 %cmp to i32, !dbg !4506
  ret i32 %conv, !dbg !4507
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i8* @dev_driver_string(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !4508 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4511, metadata !DIExpression()), !dbg !4512
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4513
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !4515
  %1 = load i8*, i8** %init_name, align 8, !dbg !4515
  %tobool = icmp ne i8* %1, null, !dbg !4513
  br i1 %tobool, label %if.then, label %if.end, !dbg !4516

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4517
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !4518
  %3 = load i8*, i8** %init_name1, align 8, !dbg !4518
  store i8* %3, i8** %retval, align 8, !dbg !4519
  br label %return, !dbg !4519

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4520
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !4521
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !4522
  store i8* %call, i8** %retval, align 8, !dbg !4523
  br label %return, !dbg !4523

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !4524
  ret i8* %5, !dbg !4524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_put_phy(%struct.usb_phy* %x) #0 !dbg !4525 {
entry:
  %x.addr = alloca %struct.usb_phy*, align 8
  %owner = alloca %struct.module*, align 8
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !4526, metadata !DIExpression()), !dbg !4527
  %0 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4528
  %tobool = icmp ne %struct.usb_phy* %0, null, !dbg !4528
  br i1 %tobool, label %if.then, label %if.end, !dbg !4530

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.module** %owner, metadata !4531, metadata !DIExpression()), !dbg !4533
  %1 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4534
  %dev = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %1, i32 0, i32 0, !dbg !4535
  %2 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4535
  %driver = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 6, !dbg !4536
  %3 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !4536
  %owner1 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 2, !dbg !4537
  %4 = load %struct.module*, %struct.module** %owner1, align 8, !dbg !4537
  store %struct.module* %4, %struct.module** %owner, align 8, !dbg !4533
  %5 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4538
  %dev2 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %5, i32 0, i32 0, !dbg !4539
  %6 = load %struct.device*, %struct.device** %dev2, align 8, !dbg !4539
  call void @put_device(%struct.device* %6) #7, !dbg !4540
  %7 = load %struct.module*, %struct.module** %owner, align 8, !dbg !4541
  call void @module_put(%struct.module* %7) #7, !dbg !4542
  br label %if.end, !dbg !4543

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4544
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !4545 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4548, metadata !DIExpression()), !dbg !4549
  ret void, !dbg !4550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_add_phy(%struct.usb_phy* %x, i32 %type) #0 !dbg !4551 {
entry:
  %lock.addr.i55 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i55, metadata !4056, metadata !DIExpression()), !dbg !4554
  %lock.addr.i53 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i53, metadata !4046, metadata !DIExpression()), !dbg !4561
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4054, metadata !DIExpression()), !dbg !4563
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4056, metadata !DIExpression()), !dbg !4564
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.usb_phy*, align 8
  %type.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %flags = alloca i64, align 8
  %phy = alloca %struct.usb_phy*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy16 = alloca i64, align 8
  %__dummy217 = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp34 = alloca %struct.usb_phy*, align 8
  %__mptr45 = alloca i8*, align 8
  %tmp49 = alloca %struct.usb_phy*, align 8
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !4568, metadata !DIExpression()), !dbg !4569
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4570, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4572, metadata !DIExpression()), !dbg !4573
  store i32 0, i32* %ret, align 4, !dbg !4573
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4574, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %phy, metadata !4576, metadata !DIExpression()), !dbg !4577
  %0 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4578
  %type1 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 3, !dbg !4580
  %1 = load i32, i32* %type1, align 4, !dbg !4580
  %cmp = icmp ne i32 %1, 0, !dbg !4581
  br i1 %cmp, label %if.then, label %if.end, !dbg !4582

if.then:                                          ; preds = %entry
  %2 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4583
  %dev = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %2, i32 0, i32 0, !dbg !4583
  %3 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4583
  %4 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4583
  %label = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %4, i32 0, i32 1, !dbg !4583
  %5 = load i8*, i8** %label, align 8, !dbg !4583
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %5) #9, !dbg !4583
  store i32 -22, i32* %retval, align 4, !dbg !4585
  br label %return, !dbg !4585

if.end:                                           ; preds = %entry
  %6 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4586
  call void @usb_charger_init(%struct.usb_phy* %6) #7, !dbg !4587
  %7 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4588
  %call = call i32 @usb_add_extcon(%struct.usb_phy* %7) #7, !dbg !4589
  store i32 %call, i32* %ret, align 4, !dbg !4590
  %8 = load i32, i32* %ret, align 4, !dbg !4591
  %tobool = icmp ne i32 %8, 0, !dbg !4591
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !4593

if.then2:                                         ; preds = %if.end
  %9 = load i32, i32* %ret, align 4, !dbg !4594
  store i32 %9, i32* %retval, align 4, !dbg !4595
  br label %return, !dbg !4595

if.end3:                                          ; preds = %if.end
  br label %do.body, !dbg !4596

do.body:                                          ; preds = %if.end3
  br label %do.body4, !dbg !4597

do.body4:                                         ; preds = %do.body
  %10 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4598
  %notifier = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %10, i32 0, i32 18, !dbg !4598
  %lock = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %notifier, i32 0, i32 0, !dbg !4598
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4599
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !4600
  %rlock.i = bitcast %union.anon.3* %12 to %struct.raw_spinlock*, !dbg !4600
  %13 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4598
  %notifier6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %13, i32 0, i32 18, !dbg !4598
  %lock7 = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %notifier6, i32 0, i32 0, !dbg !4598
  %14 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4598
  %rlock = bitcast %union.anon.3* %14 to %struct.raw_spinlock*, !dbg !4598
  %15 = bitcast %struct.spinlock* %lock7 to i8*, !dbg !4598
  %16 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4598
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 1 %16, i64 0, i1 false), !dbg !4598
  br label %do.end, !dbg !4598

do.end:                                           ; preds = %do.body4
  %17 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4597
  %notifier8 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %17, i32 0, i32 18, !dbg !4597
  %head = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %notifier8, i32 0, i32 1, !dbg !4597
  store %struct.notifier_block* null, %struct.notifier_block** %head, align 8, !dbg !4597
  br label %do.end9, !dbg !4597

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !4601

do.body10:                                        ; preds = %do.end9
  br label %do.body11, !dbg !4602

do.body11:                                        ; preds = %do.body10
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4603, metadata !DIExpression()), !dbg !4605
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4606, metadata !DIExpression()), !dbg !4605
  %cmp12 = icmp eq i64* %__dummy, %__dummy2, !dbg !4605
  %conv = zext i1 %cmp12 to i32, !dbg !4605
  store i32 1, i32* %tmp, align 4, !dbg !4605
  %18 = load i32, i32* %tmp, align 4, !dbg !4605
  br label %do.body13, !dbg !4607

do.body13:                                        ; preds = %do.body11
  br label %do.body14, !dbg !4608

do.body14:                                        ; preds = %do.body13
  br label %do.body15, !dbg !4609

do.body15:                                        ; preds = %do.body14
  call void @llvm.dbg.declare(metadata i64* %__dummy16, metadata !4611, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.declare(metadata i64* %__dummy217, metadata !4615, metadata !DIExpression()), !dbg !4614
  %cmp18 = icmp eq i64* %__dummy16, %__dummy217, !dbg !4614
  %conv19 = zext i1 %cmp18 to i32, !dbg !4614
  store i32 1, i32* %tmp20, align 4, !dbg !4614
  %19 = load i32, i32* %tmp20, align 4, !dbg !4614
  %call21 = call i64 @arch_local_irq_save() #7, !dbg !4616
  store i64 %call21, i64* %flags, align 8, !dbg !4616
  br label %do.end22, !dbg !4616

do.end22:                                         ; preds = %do.body15
  br label %do.end23, !dbg !4609

do.end23:                                         ; preds = %do.end22
  br label %do.body24, !dbg !4608

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4617, !srcloc !4618
  br label %do.body25, !dbg !4617

do.body25:                                        ; preds = %do.body24
  store %struct.spinlock* @phy_lock, %struct.spinlock** %lock.addr.i55, align 8
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i55, align 8, !dbg !4619
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !4620
  %rlock.i56 = bitcast %union.anon.3* %21 to %struct.raw_spinlock*, !dbg !4620
  br label %do.end27, !dbg !4621

do.end27:                                         ; preds = %do.body25
  br label %do.end28, !dbg !4617

do.end28:                                         ; preds = %do.end27
  br label %do.end29, !dbg !4608

do.end29:                                         ; preds = %do.end28
  br label %do.end30, !dbg !4607

do.end30:                                         ; preds = %do.end29
  br label %do.end31, !dbg !4602

do.end31:                                         ; preds = %do.end30
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4622, metadata !DIExpression()), !dbg !4625
  %22 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @phy_list, i32 0, i32 0), align 8, !dbg !4625
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !4625
  store i8* %23, i8** %__mptr, align 8, !dbg !4625
  br label %do.body32, !dbg !4625

do.body32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !4626

do.end33:                                         ; preds = %do.body32
  %24 = load i8*, i8** %__mptr, align 8, !dbg !4625
  %add.ptr = getelementptr i8, i8* %24, i64 -240, !dbg !4625
  %25 = bitcast i8* %add.ptr to %struct.usb_phy*, !dbg !4625
  store %struct.usb_phy* %25, %struct.usb_phy** %tmp34, align 8, !dbg !4626
  %26 = load %struct.usb_phy*, %struct.usb_phy** %tmp34, align 8, !dbg !4625
  store %struct.usb_phy* %26, %struct.usb_phy** %phy, align 8, !dbg !4628
  br label %for.cond, !dbg !4628

for.cond:                                         ; preds = %do.end48, %do.end33
  %27 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4629
  %head35 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %27, i32 0, i32 21, !dbg !4629
  %cmp36 = icmp eq %struct.list_head* %head35, @phy_list, !dbg !4629
  %lnot = xor i1 %cmp36, true, !dbg !4629
  br i1 %lnot, label %for.body, label %for.end, !dbg !4628

for.body:                                         ; preds = %for.cond
  %28 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4631
  %type38 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %28, i32 0, i32 3, !dbg !4634
  %29 = load i32, i32* %type38, align 4, !dbg !4634
  %30 = load i32, i32* %type.addr, align 4, !dbg !4635
  %cmp39 = icmp eq i32 %29, %30, !dbg !4636
  br i1 %cmp39, label %if.then41, label %if.end44, !dbg !4637

if.then41:                                        ; preds = %for.body
  store i32 -16, i32* %ret, align 4, !dbg !4638
  %31 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4640
  %dev42 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %31, i32 0, i32 0, !dbg !4640
  %32 = load %struct.device*, %struct.device** %dev42, align 8, !dbg !4640
  %33 = load i32, i32* %type.addr, align 4, !dbg !4640
  %call43 = call i8* @usb_phy_type_string(i32 %33) #7, !dbg !4640
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %call43) #9, !dbg !4640
  br label %out, !dbg !4641

if.end44:                                         ; preds = %for.body
  br label %for.inc, !dbg !4642

for.inc:                                          ; preds = %if.end44
  call void @llvm.dbg.declare(metadata i8** %__mptr45, metadata !4643, metadata !DIExpression()), !dbg !4645
  %34 = load %struct.usb_phy*, %struct.usb_phy** %phy, align 8, !dbg !4645
  %head46 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %34, i32 0, i32 21, !dbg !4645
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %head46, i32 0, i32 0, !dbg !4645
  %35 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4645
  %36 = bitcast %struct.list_head* %35 to i8*, !dbg !4645
  store i8* %36, i8** %__mptr45, align 8, !dbg !4645
  br label %do.body47, !dbg !4645

do.body47:                                        ; preds = %for.inc
  br label %do.end48, !dbg !4646

do.end48:                                         ; preds = %do.body47
  %37 = load i8*, i8** %__mptr45, align 8, !dbg !4645
  %add.ptr50 = getelementptr i8, i8* %37, i64 -240, !dbg !4645
  %38 = bitcast i8* %add.ptr50 to %struct.usb_phy*, !dbg !4645
  store %struct.usb_phy* %38, %struct.usb_phy** %tmp49, align 8, !dbg !4646
  %39 = load %struct.usb_phy*, %struct.usb_phy** %tmp49, align 8, !dbg !4645
  store %struct.usb_phy* %39, %struct.usb_phy** %phy, align 8, !dbg !4629
  br label %for.cond, !dbg !4629, !llvm.loop !4648

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %type.addr, align 4, !dbg !4650
  %41 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4651
  %type51 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %41, i32 0, i32 3, !dbg !4652
  store i32 %40, i32* %type51, align 4, !dbg !4653
  %42 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4654
  %head52 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %42, i32 0, i32 21, !dbg !4655
  call void @list_add_tail(%struct.list_head* %head52, %struct.list_head* @phy_list) #7, !dbg !4656
  br label %out, !dbg !4656

out:                                              ; preds = %for.end, %if.then41
  call void @llvm.dbg.label(metadata !4657), !dbg !4658
  %43 = load i64, i64* %flags, align 8, !dbg !4659
  store %struct.spinlock* @phy_lock, %struct.spinlock** %lock.addr.i53, align 8
  store i64 %43, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !211, metadata !4127, metadata !DIExpression()) #6, !dbg !4660
  call void @llvm.dbg.declare(metadata !211, metadata !4131, metadata !DIExpression()) #6, !dbg !4660
  store i32 1, i32* %tmp.i, align 4, !dbg !4660
  %44 = load i32, i32* %tmp.i, align 4, !dbg !4660
  call void @llvm.dbg.declare(metadata !211, metadata !4132, metadata !DIExpression()) #6, !dbg !4661
  call void @llvm.dbg.declare(metadata !211, metadata !4138, metadata !DIExpression()) #6, !dbg !4661
  store i32 1, i32* %tmp8.i, align 4, !dbg !4661
  %45 = load i32, i32* %tmp8.i, align 4, !dbg !4661
  %46 = load i64, i64* %flags.addr.i, align 8, !dbg !4662
  call void @arch_local_irq_restore(i64 %46) #8, !dbg !4662
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4663, !srcloc !4142
  %47 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i53, align 8, !dbg !4664
  %48 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %47, i32 0, i32 0, !dbg !4664
  %rlock.i54 = bitcast %union.anon.3* %48 to %struct.raw_spinlock*, !dbg !4664
  %49 = load i32, i32* %ret, align 4, !dbg !4665
  store i32 %49, i32* %retval, align 4, !dbg !4666
  br label %return, !dbg !4666

return:                                           ; preds = %out, %if.then2, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !4667
  ret i32 %50, !dbg !4667
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_charger_init(%struct.usb_phy* %usb_phy) #0 !dbg !4668 {
entry:
  %usb_phy.addr = alloca %struct.usb_phy*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.usb_phy* %usb_phy, %struct.usb_phy** %usb_phy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %usb_phy.addr, metadata !4669, metadata !DIExpression()), !dbg !4670
  %0 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !4671
  %chg_type = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 14, !dbg !4672
  store i32 0, i32* %chg_type, align 8, !dbg !4673
  %1 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !4674
  %chg_state = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %1, i32 0, i32 15, !dbg !4675
  store i32 0, i32* %chg_state, align 4, !dbg !4676
  %2 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !4677
  call void @usb_phy_set_default_current(%struct.usb_phy* %2) #7, !dbg !4678
  br label %do.body, !dbg !4679

do.body:                                          ; preds = %entry
  %3 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !4680
  %chg_work = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %3, i32 0, i32 17, !dbg !4680
  call void @__init_work(%struct.work_struct* %chg_work, i32 0) #7, !dbg !4680
  %4 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !4680
  %chg_work1 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %4, i32 0, i32 17, !dbg !4680
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %chg_work1, i32 0, i32 0, !dbg !4680
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4680
  store i64 68719476704, i64* %counter, align 8, !dbg !4680
  %5 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4680
  %6 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 8, i1 false), !dbg !4680
  %7 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !4680
  %chg_work2 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 17, !dbg !4680
  %entry3 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %chg_work2, i32 0, i32 1, !dbg !4680
  call void @INIT_LIST_HEAD(%struct.list_head* %entry3) #7, !dbg !4680
  %8 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !4680
  %chg_work4 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %8, i32 0, i32 17, !dbg !4680
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %chg_work4, i32 0, i32 2, !dbg !4680
  store void (%struct.work_struct*)* @usb_phy_notify_charger_work, void (%struct.work_struct*)** %func, align 8, !dbg !4680
  br label %do.end, !dbg !4680

do.end:                                           ; preds = %do.body
  ret void, !dbg !4682
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_add_extcon(%struct.usb_phy* %x) #0 !dbg !4683 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.usb_phy*, align 8
  %ret = alloca i32, align 4
  %id_ext = alloca %struct.extcon_dev*, align 8
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !4684, metadata !DIExpression()), !dbg !4685
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4686, metadata !DIExpression()), !dbg !4687
  %0 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4688
  %dev = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 0, !dbg !4690
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4690
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !4691
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4691
  %call = call zeroext i1 @of_property_read_bool(%struct.device_node* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !4692
  br i1 %call, label %if.then, label %if.end78, !dbg !4693

if.then:                                          ; preds = %entry
  %3 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4694
  %dev1 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %3, i32 0, i32 0, !dbg !4696
  %4 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !4696
  %call2 = call %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.device* %4, i32 0) #7, !dbg !4697
  %5 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4698
  %edev = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %5, i32 0, i32 9, !dbg !4699
  store %struct.extcon_dev* %call2, %struct.extcon_dev** %edev, align 8, !dbg !4700
  %6 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4701
  %edev3 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %6, i32 0, i32 9, !dbg !4703
  %7 = load %struct.extcon_dev*, %struct.extcon_dev** %edev3, align 8, !dbg !4703
  %8 = bitcast %struct.extcon_dev* %7 to i8*, !dbg !4701
  %call4 = call zeroext i1 @IS_ERR(i8* %8) #7, !dbg !4704
  br i1 %call4, label %if.then5, label %if.end, !dbg !4705

if.then5:                                         ; preds = %if.then
  %9 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4706
  %edev6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %9, i32 0, i32 9, !dbg !4707
  %10 = load %struct.extcon_dev*, %struct.extcon_dev** %edev6, align 8, !dbg !4707
  %11 = bitcast %struct.extcon_dev* %10 to i8*, !dbg !4706
  %call7 = call i64 @PTR_ERR(i8* %11) #7, !dbg !4708
  %conv = trunc i64 %call7 to i32, !dbg !4708
  store i32 %conv, i32* %retval, align 4, !dbg !4709
  br label %return, !dbg !4709

if.end:                                           ; preds = %if.then
  %12 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4710
  %dev8 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %12, i32 0, i32 0, !dbg !4711
  %13 = load %struct.device*, %struct.device** %dev8, align 8, !dbg !4711
  %call9 = call %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.device* %13, i32 1) #7, !dbg !4712
  %14 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4713
  %id_edev = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %14, i32 0, i32 10, !dbg !4714
  store %struct.extcon_dev* %call9, %struct.extcon_dev** %id_edev, align 8, !dbg !4715
  %15 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4716
  %id_edev10 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %15, i32 0, i32 10, !dbg !4718
  %16 = load %struct.extcon_dev*, %struct.extcon_dev** %id_edev10, align 8, !dbg !4718
  %17 = bitcast %struct.extcon_dev* %16 to i8*, !dbg !4716
  %call11 = call zeroext i1 @IS_ERR(i8* %17) #7, !dbg !4719
  br i1 %call11, label %if.then12, label %if.end15, !dbg !4720

if.then12:                                        ; preds = %if.end
  %18 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4721
  %id_edev13 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %18, i32 0, i32 10, !dbg !4723
  store %struct.extcon_dev* null, %struct.extcon_dev** %id_edev13, align 8, !dbg !4724
  %19 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4725
  %dev14 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %19, i32 0, i32 0, !dbg !4725
  %20 = load %struct.device*, %struct.device** %dev14, align 8, !dbg !4725
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !4725
  br label %if.end15, !dbg !4726

if.end15:                                         ; preds = %if.then12, %if.end
  %21 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4727
  %vbus_nb = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %21, i32 0, i32 11, !dbg !4729
  %notifier_call = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %vbus_nb, i32 0, i32 0, !dbg !4730
  %22 = load i32 (%struct.notifier_block*, i64, i8*)*, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call, align 8, !dbg !4730
  %tobool = icmp ne i32 (%struct.notifier_block*, i64, i8*)* %22, null, !dbg !4727
  br i1 %tobool, label %if.then16, label %if.else, !dbg !4731

if.then16:                                        ; preds = %if.end15
  %23 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4732
  %dev17 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %23, i32 0, i32 0, !dbg !4734
  %24 = load %struct.device*, %struct.device** %dev17, align 8, !dbg !4734
  %25 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4735
  %edev18 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %25, i32 0, i32 9, !dbg !4736
  %26 = load %struct.extcon_dev*, %struct.extcon_dev** %edev18, align 8, !dbg !4736
  %27 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4737
  %vbus_nb19 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %27, i32 0, i32 11, !dbg !4738
  %call20 = call i32 @devm_extcon_register_notifier(%struct.device* %24, %struct.extcon_dev* %26, i32 1, %struct.notifier_block* %vbus_nb19) #7, !dbg !4739
  store i32 %call20, i32* %ret, align 4, !dbg !4740
  %28 = load i32, i32* %ret, align 4, !dbg !4741
  %cmp = icmp slt i32 %28, 0, !dbg !4743
  br i1 %cmp, label %if.then22, label %if.end24, !dbg !4744

if.then22:                                        ; preds = %if.then16
  %29 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4745
  %dev23 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %29, i32 0, i32 0, !dbg !4745
  %30 = load %struct.device*, %struct.device** %dev23, align 8, !dbg !4745
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !4745
  %31 = load i32, i32* %ret, align 4, !dbg !4747
  store i32 %31, i32* %retval, align 4, !dbg !4748
  br label %return, !dbg !4748

if.end24:                                         ; preds = %if.then16
  br label %if.end58, !dbg !4749

if.else:                                          ; preds = %if.end15
  %32 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4750
  %type_nb = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %32, i32 0, i32 13, !dbg !4752
  %notifier_call25 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %type_nb, i32 0, i32 0, !dbg !4753
  store i32 (%struct.notifier_block*, i64, i8*)* @usb_phy_get_charger_type, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call25, align 8, !dbg !4754
  %33 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4755
  %dev26 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %33, i32 0, i32 0, !dbg !4756
  %34 = load %struct.device*, %struct.device** %dev26, align 8, !dbg !4756
  %35 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4757
  %edev27 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %35, i32 0, i32 9, !dbg !4758
  %36 = load %struct.extcon_dev*, %struct.extcon_dev** %edev27, align 8, !dbg !4758
  %37 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4759
  %type_nb28 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %37, i32 0, i32 13, !dbg !4760
  %call29 = call i32 @devm_extcon_register_notifier(%struct.device* %34, %struct.extcon_dev* %36, i32 5, %struct.notifier_block* %type_nb28) #7, !dbg !4761
  store i32 %call29, i32* %ret, align 4, !dbg !4762
  %38 = load i32, i32* %ret, align 4, !dbg !4763
  %tobool30 = icmp ne i32 %38, 0, !dbg !4763
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !4765

if.then31:                                        ; preds = %if.else
  %39 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4766
  %dev32 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %39, i32 0, i32 0, !dbg !4766
  %40 = load %struct.device*, %struct.device** %dev32, align 8, !dbg !4766
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !4766
  %41 = load i32, i32* %ret, align 4, !dbg !4768
  store i32 %41, i32* %retval, align 4, !dbg !4769
  br label %return, !dbg !4769

if.end33:                                         ; preds = %if.else
  %42 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4770
  %dev34 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %42, i32 0, i32 0, !dbg !4771
  %43 = load %struct.device*, %struct.device** %dev34, align 8, !dbg !4771
  %44 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4772
  %edev35 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %44, i32 0, i32 9, !dbg !4773
  %45 = load %struct.extcon_dev*, %struct.extcon_dev** %edev35, align 8, !dbg !4773
  %46 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4774
  %type_nb36 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %46, i32 0, i32 13, !dbg !4775
  %call37 = call i32 @devm_extcon_register_notifier(%struct.device* %43, %struct.extcon_dev* %45, i32 7, %struct.notifier_block* %type_nb36) #7, !dbg !4776
  store i32 %call37, i32* %ret, align 4, !dbg !4777
  %47 = load i32, i32* %ret, align 4, !dbg !4778
  %tobool38 = icmp ne i32 %47, 0, !dbg !4778
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !4780

if.then39:                                        ; preds = %if.end33
  %48 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4781
  %dev40 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %48, i32 0, i32 0, !dbg !4781
  %49 = load %struct.device*, %struct.device** %dev40, align 8, !dbg !4781
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !4781
  %50 = load i32, i32* %ret, align 4, !dbg !4783
  store i32 %50, i32* %retval, align 4, !dbg !4784
  br label %return, !dbg !4784

if.end41:                                         ; preds = %if.end33
  %51 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4785
  %dev42 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %51, i32 0, i32 0, !dbg !4786
  %52 = load %struct.device*, %struct.device** %dev42, align 8, !dbg !4786
  %53 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4787
  %edev43 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %53, i32 0, i32 9, !dbg !4788
  %54 = load %struct.extcon_dev*, %struct.extcon_dev** %edev43, align 8, !dbg !4788
  %55 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4789
  %type_nb44 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %55, i32 0, i32 13, !dbg !4790
  %call45 = call i32 @devm_extcon_register_notifier(%struct.device* %52, %struct.extcon_dev* %54, i32 6, %struct.notifier_block* %type_nb44) #7, !dbg !4791
  store i32 %call45, i32* %ret, align 4, !dbg !4792
  %56 = load i32, i32* %ret, align 4, !dbg !4793
  %tobool46 = icmp ne i32 %56, 0, !dbg !4793
  br i1 %tobool46, label %if.then47, label %if.end49, !dbg !4795

if.then47:                                        ; preds = %if.end41
  %57 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4796
  %dev48 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %57, i32 0, i32 0, !dbg !4796
  %58 = load %struct.device*, %struct.device** %dev48, align 8, !dbg !4796
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !4796
  %59 = load i32, i32* %ret, align 4, !dbg !4798
  store i32 %59, i32* %retval, align 4, !dbg !4799
  br label %return, !dbg !4799

if.end49:                                         ; preds = %if.end41
  %60 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4800
  %dev50 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %60, i32 0, i32 0, !dbg !4801
  %61 = load %struct.device*, %struct.device** %dev50, align 8, !dbg !4801
  %62 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4802
  %edev51 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %62, i32 0, i32 9, !dbg !4803
  %63 = load %struct.extcon_dev*, %struct.extcon_dev** %edev51, align 8, !dbg !4803
  %64 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4804
  %type_nb52 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %64, i32 0, i32 13, !dbg !4805
  %call53 = call i32 @devm_extcon_register_notifier(%struct.device* %61, %struct.extcon_dev* %63, i32 8, %struct.notifier_block* %type_nb52) #7, !dbg !4806
  store i32 %call53, i32* %ret, align 4, !dbg !4807
  %65 = load i32, i32* %ret, align 4, !dbg !4808
  %tobool54 = icmp ne i32 %65, 0, !dbg !4808
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !4810

if.then55:                                        ; preds = %if.end49
  %66 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4811
  %dev56 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %66, i32 0, i32 0, !dbg !4811
  %67 = load %struct.device*, %struct.device** %dev56, align 8, !dbg !4811
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !4811
  %68 = load i32, i32* %ret, align 4, !dbg !4813
  store i32 %68, i32* %retval, align 4, !dbg !4814
  br label %return, !dbg !4814

if.end57:                                         ; preds = %if.end49
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end24
  %69 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4815
  %id_nb = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %69, i32 0, i32 12, !dbg !4817
  %notifier_call59 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %id_nb, i32 0, i32 0, !dbg !4818
  %70 = load i32 (%struct.notifier_block*, i64, i8*)*, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call59, align 8, !dbg !4818
  %tobool60 = icmp ne i32 (%struct.notifier_block*, i64, i8*)* %70, null, !dbg !4815
  br i1 %tobool60, label %if.then61, label %if.end77, !dbg !4819

if.then61:                                        ; preds = %if.end58
  call void @llvm.dbg.declare(metadata %struct.extcon_dev** %id_ext, metadata !4820, metadata !DIExpression()), !dbg !4822
  %71 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4823
  %id_edev62 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %71, i32 0, i32 10, !dbg !4825
  %72 = load %struct.extcon_dev*, %struct.extcon_dev** %id_edev62, align 8, !dbg !4825
  %tobool63 = icmp ne %struct.extcon_dev* %72, null, !dbg !4823
  br i1 %tobool63, label %if.then64, label %if.else66, !dbg !4826

if.then64:                                        ; preds = %if.then61
  %73 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4827
  %id_edev65 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %73, i32 0, i32 10, !dbg !4828
  %74 = load %struct.extcon_dev*, %struct.extcon_dev** %id_edev65, align 8, !dbg !4828
  store %struct.extcon_dev* %74, %struct.extcon_dev** %id_ext, align 8, !dbg !4829
  br label %if.end68, !dbg !4830

if.else66:                                        ; preds = %if.then61
  %75 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4831
  %edev67 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %75, i32 0, i32 9, !dbg !4832
  %76 = load %struct.extcon_dev*, %struct.extcon_dev** %edev67, align 8, !dbg !4832
  store %struct.extcon_dev* %76, %struct.extcon_dev** %id_ext, align 8, !dbg !4833
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then64
  %77 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4834
  %dev69 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %77, i32 0, i32 0, !dbg !4835
  %78 = load %struct.device*, %struct.device** %dev69, align 8, !dbg !4835
  %79 = load %struct.extcon_dev*, %struct.extcon_dev** %id_ext, align 8, !dbg !4836
  %80 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4837
  %id_nb70 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %80, i32 0, i32 12, !dbg !4838
  %call71 = call i32 @devm_extcon_register_notifier(%struct.device* %78, %struct.extcon_dev* %79, i32 2, %struct.notifier_block* %id_nb70) #7, !dbg !4839
  store i32 %call71, i32* %ret, align 4, !dbg !4840
  %81 = load i32, i32* %ret, align 4, !dbg !4841
  %cmp72 = icmp slt i32 %81, 0, !dbg !4843
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !4844

if.then74:                                        ; preds = %if.end68
  %82 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4845
  %dev75 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %82, i32 0, i32 0, !dbg !4845
  %83 = load %struct.device*, %struct.device** %dev75, align 8, !dbg !4845
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !4845
  %84 = load i32, i32* %ret, align 4, !dbg !4847
  store i32 %84, i32* %retval, align 4, !dbg !4848
  br label %return, !dbg !4848

if.end76:                                         ; preds = %if.end68
  br label %if.end77, !dbg !4849

if.end77:                                         ; preds = %if.end76, %if.end58
  br label %if.end78, !dbg !4850

if.end78:                                         ; preds = %if.end77, %entry
  %85 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4851
  %type_nb79 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %85, i32 0, i32 13, !dbg !4853
  %notifier_call80 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %type_nb79, i32 0, i32 0, !dbg !4854
  %86 = load i32 (%struct.notifier_block*, i64, i8*)*, i32 (%struct.notifier_block*, i64, i8*)** %notifier_call80, align 8, !dbg !4854
  %tobool81 = icmp ne i32 (%struct.notifier_block*, i64, i8*)* %86, null, !dbg !4851
  br i1 %tobool81, label %if.then82, label %if.end83, !dbg !4855

if.then82:                                        ; preds = %if.end78
  %87 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4856
  call void @__usb_phy_get_charger_type(%struct.usb_phy* %87) #7, !dbg !4857
  br label %if.end83, !dbg !4857

if.end83:                                         ; preds = %if.then82, %if.end78
  store i32 0, i32* %retval, align 4, !dbg !4858
  br label %return, !dbg !4858

return:                                           ; preds = %if.end83, %if.then74, %if.then55, %if.then47, %if.then39, %if.then31, %if.then22, %if.then5
  %88 = load i32, i32* %retval, align 4, !dbg !4859
  ret i32 %88, !dbg !4859
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_phy_type_string(i32 %type) #0 !dbg !4860 {
entry:
  %retval = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4863, metadata !DIExpression()), !dbg !4864
  %0 = load i32, i32* %type.addr, align 4, !dbg !4865
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ], !dbg !4866

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8** %retval, align 8, !dbg !4867
  br label %return, !dbg !4867

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8** %retval, align 8, !dbg !4869
  br label %return, !dbg !4869

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i8** %retval, align 8, !dbg !4870
  br label %return, !dbg !4870

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load i8*, i8** %retval, align 8, !dbg !4871
  ret i8* %1, !dbg !4871
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !4872 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4876, metadata !DIExpression()), !dbg !4877
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4880
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4881
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4882
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4882
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4883
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !4884
  ret void, !dbg !4885
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @usb_add_phy_dev(%struct.usb_phy* %x) #0 !dbg !4886 {
entry:
  %lock.addr.i35 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i35, metadata !4056, metadata !DIExpression()), !dbg !4887
  %lock.addr.i33 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i33, metadata !4046, metadata !DIExpression()), !dbg !4894
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4054, metadata !DIExpression()), !dbg !4896
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4056, metadata !DIExpression()), !dbg !4897
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.usb_phy*, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy16 = alloca i64, align 8
  %__dummy217 = alloca i64, align 8
  %tmp20 = alloca i32, align 4
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !4901, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4903, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4905, metadata !DIExpression()), !dbg !4906
  %0 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4907
  %dev = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 0, !dbg !4909
  %1 = load %struct.device*, %struct.device** %dev, align 8, !dbg !4909
  %tobool = icmp ne %struct.device* %1, null, !dbg !4907
  br i1 %tobool, label %if.end, label %if.then, !dbg !4910

if.then:                                          ; preds = %entry
  %2 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4911
  %dev1 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %2, i32 0, i32 0, !dbg !4911
  %3 = load %struct.device*, %struct.device** %dev1, align 8, !dbg !4911
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !4911
  store i32 -22, i32* %retval, align 4, !dbg !4913
  br label %return, !dbg !4913

if.end:                                           ; preds = %entry
  %4 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4914
  call void @usb_charger_init(%struct.usb_phy* %4) #7, !dbg !4915
  %5 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4916
  %call = call i32 @usb_add_extcon(%struct.usb_phy* %5) #7, !dbg !4917
  store i32 %call, i32* %ret, align 4, !dbg !4918
  %6 = load i32, i32* %ret, align 4, !dbg !4919
  %tobool2 = icmp ne i32 %6, 0, !dbg !4919
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4921

if.then3:                                         ; preds = %if.end
  %7 = load i32, i32* %ret, align 4, !dbg !4922
  store i32 %7, i32* %retval, align 4, !dbg !4923
  br label %return, !dbg !4923

if.end4:                                          ; preds = %if.end
  br label %do.body, !dbg !4924

do.body:                                          ; preds = %if.end4
  br label %do.body5, !dbg !4925

do.body5:                                         ; preds = %do.body
  %8 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4926
  %notifier = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %8, i32 0, i32 18, !dbg !4926
  %lock = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %notifier, i32 0, i32 0, !dbg !4926
  store %struct.spinlock* %lock, %struct.spinlock** %lock.addr.i, align 8
  %9 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4927
  %10 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %9, i32 0, i32 0, !dbg !4928
  %rlock.i = bitcast %union.anon.3* %10 to %struct.raw_spinlock*, !dbg !4928
  %11 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4926
  %notifier7 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %11, i32 0, i32 18, !dbg !4926
  %lock8 = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %notifier7, i32 0, i32 0, !dbg !4926
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !4926
  %rlock = bitcast %union.anon.3* %12 to %struct.raw_spinlock*, !dbg !4926
  %13 = bitcast %struct.spinlock* %lock8 to i8*, !dbg !4926
  %14 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !4926
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 1 %14, i64 0, i1 false), !dbg !4926
  br label %do.end, !dbg !4926

do.end:                                           ; preds = %do.body5
  %15 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4925
  %notifier9 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %15, i32 0, i32 18, !dbg !4925
  %head = getelementptr inbounds %struct.atomic_notifier_head, %struct.atomic_notifier_head* %notifier9, i32 0, i32 1, !dbg !4925
  store %struct.notifier_block* null, %struct.notifier_block** %head, align 8, !dbg !4925
  br label %do.end10, !dbg !4925

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4929

do.body11:                                        ; preds = %do.end10
  br label %do.body12, !dbg !4930

do.body12:                                        ; preds = %do.body11
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4931, metadata !DIExpression()), !dbg !4933
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4934, metadata !DIExpression()), !dbg !4933
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4933
  %conv = zext i1 %cmp to i32, !dbg !4933
  store i32 1, i32* %tmp, align 4, !dbg !4933
  %16 = load i32, i32* %tmp, align 4, !dbg !4933
  br label %do.body13, !dbg !4935

do.body13:                                        ; preds = %do.body12
  br label %do.body14, !dbg !4936

do.body14:                                        ; preds = %do.body13
  br label %do.body15, !dbg !4937

do.body15:                                        ; preds = %do.body14
  call void @llvm.dbg.declare(metadata i64* %__dummy16, metadata !4939, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.declare(metadata i64* %__dummy217, metadata !4943, metadata !DIExpression()), !dbg !4942
  %cmp18 = icmp eq i64* %__dummy16, %__dummy217, !dbg !4942
  %conv19 = zext i1 %cmp18 to i32, !dbg !4942
  store i32 1, i32* %tmp20, align 4, !dbg !4942
  %17 = load i32, i32* %tmp20, align 4, !dbg !4942
  %call21 = call i64 @arch_local_irq_save() #7, !dbg !4944
  store i64 %call21, i64* %flags, align 8, !dbg !4944
  br label %do.end22, !dbg !4944

do.end22:                                         ; preds = %do.body15
  br label %do.end23, !dbg !4937

do.end23:                                         ; preds = %do.end22
  br label %do.body24, !dbg !4936

do.body24:                                        ; preds = %do.end23
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4945, !srcloc !4946
  br label %do.body25, !dbg !4945

do.body25:                                        ; preds = %do.body24
  store %struct.spinlock* @phy_lock, %struct.spinlock** %lock.addr.i35, align 8
  %18 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i35, align 8, !dbg !4947
  %19 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %18, i32 0, i32 0, !dbg !4948
  %rlock.i36 = bitcast %union.anon.3* %19 to %struct.raw_spinlock*, !dbg !4948
  br label %do.end27, !dbg !4949

do.end27:                                         ; preds = %do.body25
  br label %do.end28, !dbg !4945

do.end28:                                         ; preds = %do.end27
  br label %do.end29, !dbg !4936

do.end29:                                         ; preds = %do.end28
  br label %do.end30, !dbg !4935

do.end30:                                         ; preds = %do.end29
  br label %do.end31, !dbg !4930

do.end31:                                         ; preds = %do.end30
  %20 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4950
  %head32 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %20, i32 0, i32 21, !dbg !4951
  call void @list_add_tail(%struct.list_head* %head32, %struct.list_head* @phy_list) #7, !dbg !4952
  %21 = load i64, i64* %flags, align 8, !dbg !4953
  store %struct.spinlock* @phy_lock, %struct.spinlock** %lock.addr.i33, align 8
  store i64 %21, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !211, metadata !4127, metadata !DIExpression()) #6, !dbg !4954
  call void @llvm.dbg.declare(metadata !211, metadata !4131, metadata !DIExpression()) #6, !dbg !4954
  store i32 1, i32* %tmp.i, align 4, !dbg !4954
  %22 = load i32, i32* %tmp.i, align 4, !dbg !4954
  call void @llvm.dbg.declare(metadata !211, metadata !4132, metadata !DIExpression()) #6, !dbg !4955
  call void @llvm.dbg.declare(metadata !211, metadata !4138, metadata !DIExpression()) #6, !dbg !4955
  store i32 1, i32* %tmp8.i, align 4, !dbg !4955
  %23 = load i32, i32* %tmp8.i, align 4, !dbg !4955
  %24 = load i64, i64* %flags.addr.i, align 8, !dbg !4956
  call void @arch_local_irq_restore(i64 %24) #8, !dbg !4956
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4957, !srcloc !4142
  %25 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i33, align 8, !dbg !4958
  %26 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %25, i32 0, i32 0, !dbg !4958
  %rlock.i34 = bitcast %union.anon.3* %26 to %struct.raw_spinlock*, !dbg !4958
  store i32 0, i32* %retval, align 4, !dbg !4959
  br label %return, !dbg !4959

return:                                           ; preds = %do.end31, %if.then3, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !4960
  ret i32 %27, !dbg !4960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_remove_phy(%struct.usb_phy* %x) #0 !dbg !4961 {
entry:
  %lock.addr.i19 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i19, metadata !4046, metadata !DIExpression()), !dbg !4962
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !4054, metadata !DIExpression()), !dbg !4964
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4056, metadata !DIExpression()), !dbg !4965
  %x.addr = alloca %struct.usb_phy*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4974, metadata !DIExpression()), !dbg !4975
  br label %do.body, !dbg !4976

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4977

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4978, metadata !DIExpression()), !dbg !4980
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4981, metadata !DIExpression()), !dbg !4980
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4980
  %conv = zext i1 %cmp to i32, !dbg !4980
  store i32 1, i32* %tmp, align 4, !dbg !4980
  %0 = load i32, i32* %tmp, align 4, !dbg !4980
  br label %do.body2, !dbg !4982

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4983

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4984

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4986, metadata !DIExpression()), !dbg !4989
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4990, metadata !DIExpression()), !dbg !4989
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4989
  %conv8 = zext i1 %cmp7 to i32, !dbg !4989
  store i32 1, i32* %tmp9, align 4, !dbg !4989
  %1 = load i32, i32* %tmp9, align 4, !dbg !4989
  %call = call i64 @arch_local_irq_save() #7, !dbg !4991
  store i64 %call, i64* %flags, align 8, !dbg !4991
  br label %do.end, !dbg !4991

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4984

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4983

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !4992, !srcloc !4993
  br label %do.body12, !dbg !4992

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @phy_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4994
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4995
  %rlock.i = bitcast %union.anon.3* %3 to %struct.raw_spinlock*, !dbg !4995
  br label %do.end14, !dbg !4996

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4992

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4983

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4982

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4977

do.end18:                                         ; preds = %do.end17
  %4 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !4997
  %tobool = icmp ne %struct.usb_phy* %4, null, !dbg !4997
  br i1 %tobool, label %if.then, label %if.end, !dbg !4999

if.then:                                          ; preds = %do.end18
  %5 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5000
  %head = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %5, i32 0, i32 21, !dbg !5001
  call void @list_del(%struct.list_head* %head) #7, !dbg !5002
  br label %if.end, !dbg !5002

if.end:                                           ; preds = %if.then, %do.end18
  %6 = load i64, i64* %flags, align 8, !dbg !5003
  store %struct.spinlock* @phy_lock, %struct.spinlock** %lock.addr.i19, align 8
  store i64 %6, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !211, metadata !4127, metadata !DIExpression()) #6, !dbg !5004
  call void @llvm.dbg.declare(metadata !211, metadata !4131, metadata !DIExpression()) #6, !dbg !5004
  store i32 1, i32* %tmp.i, align 4, !dbg !5004
  %7 = load i32, i32* %tmp.i, align 4, !dbg !5004
  call void @llvm.dbg.declare(metadata !211, metadata !4132, metadata !DIExpression()) #6, !dbg !5005
  call void @llvm.dbg.declare(metadata !211, metadata !4138, metadata !DIExpression()) #6, !dbg !5005
  store i32 1, i32* %tmp8.i, align 4, !dbg !5005
  %8 = load i32, i32* %tmp8.i, align 4, !dbg !5005
  %9 = load i64, i64* %flags.addr.i, align 8, !dbg !5006
  call void @arch_local_irq_restore(i64 %9) #8, !dbg !5006
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5007, !srcloc !4142
  %10 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i19, align 8, !dbg !5008
  %11 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %10, i32 0, i32 0, !dbg !5008
  %rlock.i20 = bitcast %union.anon.3* %11 to %struct.raw_spinlock*, !dbg !5008
  ret void, !dbg !5009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5010 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5015
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !5016
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5017
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5018
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5019
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5020
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5021
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5022
  ret void, !dbg !5023
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @usb_phy_set_event(%struct.usb_phy* %x, i64 %event) #0 !dbg !5024 {
entry:
  %x.addr = alloca %struct.usb_phy*, align 8
  %event.addr = alloca i64, align 8
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !5027, metadata !DIExpression()), !dbg !5028
  store i64 %event, i64* %event.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %event.addr, metadata !5029, metadata !DIExpression()), !dbg !5030
  %0 = load i64, i64* %event.addr, align 8, !dbg !5031
  %conv = trunc i64 %0 to i32, !dbg !5031
  %1 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5032
  %last_event = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %1, i32 0, i32 4, !dbg !5033
  store i32 %conv, i32* %last_event, align 8, !dbg !5034
  ret void, !dbg !5035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !5036 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !5039, metadata !DIExpression()), !dbg !5040
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !5043
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5044
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #7, !dbg !5045
  ret i1 %call, !dbg !5046
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5047 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5048, metadata !DIExpression()), !dbg !5050
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5051, metadata !DIExpression()), !dbg !5050
  %0 = load i64, i64* %__edi, align 8, !dbg !5050
  store i64 %0, i64* %__edi, align 8, !dbg !5050
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5052, metadata !DIExpression()), !dbg !5050
  %1 = load i64, i64* %__esi, align 8, !dbg !5050
  store i64 %1, i64* %__esi, align 8, !dbg !5050
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5053, metadata !DIExpression()), !dbg !5050
  %2 = load i64, i64* %__edx, align 8, !dbg !5050
  store i64 %2, i64* %__edx, align 8, !dbg !5050
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5054, metadata !DIExpression()), !dbg !5050
  %3 = load i64, i64* %__ecx, align 8, !dbg !5050
  store i64 %3, i64* %__ecx, align 8, !dbg !5050
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5055, metadata !DIExpression()), !dbg !5050
  %4 = load i64, i64* %__eax, align 8, !dbg !5050
  store i64 %4, i64* %__eax, align 8, !dbg !5050
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5050
  %6 = call i64 @llvm.read_register.i64(metadata !3764), !dbg !5056
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !5056, !srcloc !5059
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5056
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5056
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5056
  call void @llvm.write_register.i64(metadata !3764, i64 %asmresult1), !dbg !5056
  %8 = load i64, i64* %__eax, align 8, !dbg !5056
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5060, metadata !DIExpression()), !dbg !5062
  store i64 -1, i64* %__mask, align 8, !dbg !5062
  %9 = load i64, i64* %__mask, align 8, !dbg !5062
  store i64 %9, i64* %tmp, align 8, !dbg !5062
  %10 = load i64, i64* %tmp, align 8, !dbg !5062
  %and = and i64 %8, %10, !dbg !5056
  store i64 %and, i64* %__ret, align 8, !dbg !5056
  %11 = load i64, i64* %__ret, align 8, !dbg !5050
  store i64 %11, i64* %tmp2, align 8, !dbg !5063
  %12 = load i64, i64* %tmp2, align 8, !dbg !5050
  ret i64 %12, !dbg !5064
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5065 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5066, metadata !DIExpression()), !dbg !5068
  %0 = load i64, i64* %__edi, align 8, !dbg !5068
  store i64 %0, i64* %__edi, align 8, !dbg !5068
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5069, metadata !DIExpression()), !dbg !5068
  %1 = load i64, i64* %__esi, align 8, !dbg !5068
  store i64 %1, i64* %__esi, align 8, !dbg !5068
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5070, metadata !DIExpression()), !dbg !5068
  %2 = load i64, i64* %__edx, align 8, !dbg !5068
  store i64 %2, i64* %__edx, align 8, !dbg !5068
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5071, metadata !DIExpression()), !dbg !5068
  %3 = load i64, i64* %__ecx, align 8, !dbg !5068
  store i64 %3, i64* %__ecx, align 8, !dbg !5068
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5072, metadata !DIExpression()), !dbg !5068
  %4 = load i64, i64* %__eax, align 8, !dbg !5068
  store i64 %4, i64* %__eax, align 8, !dbg !5068
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5068
  %6 = call i64 @llvm.read_register.i64(metadata !3764), !dbg !5068
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !5068, !srcloc !5073
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5068
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5068
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5068
  call void @llvm.write_register.i64(metadata !3764, i64 %asmresult1), !dbg !5068
  ret void, !dbg !5074
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5075 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5078, metadata !DIExpression()), !dbg !5079
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5080, metadata !DIExpression()), !dbg !5082
  %0 = load i64, i64* %__edi, align 8, !dbg !5082
  store i64 %0, i64* %__edi, align 8, !dbg !5082
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5083, metadata !DIExpression()), !dbg !5082
  %1 = load i64, i64* %__esi, align 8, !dbg !5082
  store i64 %1, i64* %__esi, align 8, !dbg !5082
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5084, metadata !DIExpression()), !dbg !5082
  %2 = load i64, i64* %__edx, align 8, !dbg !5082
  store i64 %2, i64* %__edx, align 8, !dbg !5082
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5085, metadata !DIExpression()), !dbg !5082
  %3 = load i64, i64* %__ecx, align 8, !dbg !5082
  store i64 %3, i64* %__ecx, align 8, !dbg !5082
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5086, metadata !DIExpression()), !dbg !5082
  %4 = load i64, i64* %__eax, align 8, !dbg !5082
  store i64 %4, i64* %__eax, align 8, !dbg !5082
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5082
  %6 = call i64 @llvm.read_register.i64(metadata !3764), !dbg !5082
  %7 = load i64, i64* %f.addr, align 8, !dbg !5082
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !5082, !srcloc !5087
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5082
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5082
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5082
  call void @llvm.write_register.i64(metadata !3764, i64 %asmresult1), !dbg !5082
  ret void, !dbg !5088
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_unregister_notifier(%struct.usb_phy* %x, %struct.notifier_block* %nb) #0 !dbg !5089 {
entry:
  %x.addr = alloca %struct.usb_phy*, align 8
  %nb.addr = alloca %struct.notifier_block*, align 8
  store %struct.usb_phy* %x, %struct.usb_phy** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %x.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !5094, metadata !DIExpression()), !dbg !5095
  %0 = load %struct.usb_phy*, %struct.usb_phy** %x.addr, align 8, !dbg !5096
  %notifier = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 18, !dbg !5097
  %1 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !5098
  %call = call i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head* %notifier, %struct.notifier_block* %1) #7, !dbg !5099
  ret void, !dbg !5100
}

; Function Attrs: noredzone
declare dso_local i32 @atomic_notifier_chain_unregister(%struct.atomic_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @of_device_is_available(%struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local i32 @atomic_notifier_chain_register(%struct.atomic_notifier_head*, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !5101 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !5106, metadata !DIExpression()), !dbg !5107
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !5108
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !5109
  %1 = load i8*, i8** %name, align 8, !dbg !5109
  ret i8* %1, !dbg !5110
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_phy_set_default_current(%struct.usb_phy* %usb_phy) #0 !dbg !5111 {
entry:
  %usb_phy.addr = alloca %struct.usb_phy*, align 8
  store %struct.usb_phy* %usb_phy, %struct.usb_phy** %usb_phy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %usb_phy.addr, metadata !5112, metadata !DIExpression()), !dbg !5113
  %0 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5114
  %chg_cur = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 16, !dbg !5115
  %sdp_min = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur, i32 0, i32 0, !dbg !5116
  store i32 2, i32* %sdp_min, align 8, !dbg !5117
  %1 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5118
  %chg_cur1 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %1, i32 0, i32 16, !dbg !5119
  %sdp_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur1, i32 0, i32 1, !dbg !5120
  store i32 500, i32* %sdp_max, align 4, !dbg !5121
  %2 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5122
  %chg_cur2 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %2, i32 0, i32 16, !dbg !5123
  %dcp_min = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur2, i32 0, i32 2, !dbg !5124
  store i32 500, i32* %dcp_min, align 8, !dbg !5125
  %3 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5126
  %chg_cur3 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %3, i32 0, i32 16, !dbg !5127
  %dcp_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur3, i32 0, i32 3, !dbg !5128
  store i32 5000, i32* %dcp_max, align 4, !dbg !5129
  %4 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5130
  %chg_cur4 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %4, i32 0, i32 16, !dbg !5131
  %cdp_min = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur4, i32 0, i32 4, !dbg !5132
  store i32 1500, i32* %cdp_min, align 8, !dbg !5133
  %5 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5134
  %chg_cur5 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %5, i32 0, i32 16, !dbg !5135
  %cdp_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur5, i32 0, i32 5, !dbg !5136
  store i32 5000, i32* %cdp_max, align 4, !dbg !5137
  %6 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5138
  %chg_cur6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %6, i32 0, i32 16, !dbg !5139
  %aca_min = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur6, i32 0, i32 6, !dbg !5140
  store i32 1500, i32* %aca_min, align 8, !dbg !5141
  %7 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5142
  %chg_cur7 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 16, !dbg !5143
  %aca_max = getelementptr inbounds %struct.usb_charger_current, %struct.usb_charger_current* %chg_cur7, i32 0, i32 7, !dbg !5144
  store i32 5000, i32* %aca_max, align 4, !dbg !5145
  ret void, !dbg !5146
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !5147 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  ret void, !dbg !5154
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5155 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  br label %do.body, !dbg !5158

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5159

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5161

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5159

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5163
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5163
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5163
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5163
  br label %do.end3, !dbg !5163

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5159

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5165
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5166
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5167
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5168
  ret void, !dbg !5169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @usb_phy_notify_charger_work(%struct.work_struct* %work) #0 !dbg !5170 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %usb_phy = alloca %struct.usb_phy*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_phy*, align 8
  %uchger_state = alloca [50 x i8], align 16
  %uchger_type = alloca [50 x i8], align 16
  %envp = alloca [3 x i8*], align 16
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %usb_phy, metadata !5173, metadata !DIExpression()), !dbg !5174
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5175, metadata !DIExpression()), !dbg !5177
  %0 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5177
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !5177
  store i8* %1, i8** %__mptr, align 8, !dbg !5177
  br label %do.body, !dbg !5177

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5178

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5177
  %add.ptr = getelementptr i8, i8* %2, i64 -192, !dbg !5177
  %3 = bitcast i8* %add.ptr to %struct.usb_phy*, !dbg !5177
  store %struct.usb_phy* %3, %struct.usb_phy** %tmp, align 8, !dbg !5178
  %4 = load %struct.usb_phy*, %struct.usb_phy** %tmp, align 8, !dbg !5177
  store %struct.usb_phy* %4, %struct.usb_phy** %usb_phy, align 8, !dbg !5174
  call void @llvm.dbg.declare(metadata [50 x i8]* %uchger_state, metadata !5180, metadata !DIExpression()), !dbg !5184
  %5 = bitcast [50 x i8]* %uchger_state to i8*, !dbg !5184
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 50, i1 false), !dbg !5184
  call void @llvm.dbg.declare(metadata [50 x i8]* %uchger_type, metadata !5185, metadata !DIExpression()), !dbg !5186
  %6 = bitcast [50 x i8]* %uchger_type to i8*, !dbg !5186
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 50, i1 false), !dbg !5186
  call void @llvm.dbg.declare(metadata [3 x i8*]* %envp, metadata !5187, metadata !DIExpression()), !dbg !5188
  %arrayinit.begin = getelementptr inbounds [3 x i8*], [3 x i8*]* %envp, i64 0, i64 0, !dbg !5189
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %uchger_state, i64 0, i64 0, !dbg !5190
  store i8* %arraydecay, i8** %arrayinit.begin, align 8, !dbg !5189
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1, !dbg !5189
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %uchger_type, i64 0, i64 0, !dbg !5191
  store i8* %arraydecay1, i8** %arrayinit.element, align 8, !dbg !5189
  %arrayinit.element2 = getelementptr inbounds i8*, i8** %arrayinit.element, i64 1, !dbg !5189
  store i8* null, i8** %arrayinit.element2, align 8, !dbg !5189
  call void @llvm.dbg.declare(metadata i32* %min, metadata !5192, metadata !DIExpression()), !dbg !5193
  call void @llvm.dbg.declare(metadata i32* %max, metadata !5194, metadata !DIExpression()), !dbg !5195
  %7 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5196
  %chg_state = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 15, !dbg !5197
  %8 = load i32, i32* %chg_state, align 4, !dbg !5197
  switch i32 %8, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ], !dbg !5198

sw.bb:                                            ; preds = %do.end
  %9 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5199
  call void @usb_phy_get_charger_current(%struct.usb_phy* %9, i32* %min, i32* %max) #7, !dbg !5201
  %10 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5202
  %notifier = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %10, i32 0, i32 18, !dbg !5203
  %11 = load i32, i32* %max, align 4, !dbg !5204
  %conv = zext i32 %11 to i64, !dbg !5204
  %12 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5205
  %13 = bitcast %struct.usb_phy* %12 to i8*, !dbg !5205
  %call = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* %notifier, i64 %conv, i8* %13) #7, !dbg !5206
  %arraydecay3 = getelementptr inbounds [50 x i8], [50 x i8]* %uchger_state, i64 0, i64 0, !dbg !5207
  %call4 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay3, i64 50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !5208
  br label %sw.epilog, !dbg !5209

sw.bb5:                                           ; preds = %do.end
  %14 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5210
  call void @usb_phy_set_default_current(%struct.usb_phy* %14) #7, !dbg !5211
  %15 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5212
  %notifier6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %15, i32 0, i32 18, !dbg !5213
  %16 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5214
  %17 = bitcast %struct.usb_phy* %16 to i8*, !dbg !5214
  %call7 = call i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head* %notifier6, i64 0, i8* %17) #7, !dbg !5215
  %arraydecay8 = getelementptr inbounds [50 x i8], [50 x i8]* %uchger_state, i64 0, i64 0, !dbg !5216
  %call9 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay8, i64 50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0)) #7, !dbg !5217
  br label %sw.epilog, !dbg !5218

sw.default:                                       ; preds = %do.end
  %18 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5219
  %dev = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %18, i32 0, i32 0, !dbg !5219
  %19 = load %struct.device*, %struct.device** %dev, align 8, !dbg !5219
  %20 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5219
  %chg_state10 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %20, i32 0, i32 15, !dbg !5219
  %21 = load i32, i32* %chg_state10, align 4, !dbg !5219
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %21) #9, !dbg !5219
  br label %return, !dbg !5220

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %arraydecay11 = getelementptr inbounds [50 x i8], [50 x i8]* %uchger_type, i64 0, i64 0, !dbg !5221
  %22 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5222
  %chg_type = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %22, i32 0, i32 14, !dbg !5223
  %23 = load i32, i32* %chg_type, align 8, !dbg !5223
  %idxprom = zext i32 %23 to i64, !dbg !5224
  %arrayidx = getelementptr [5 x i8*], [5 x i8*]* @usb_chger_type, i64 0, i64 %idxprom, !dbg !5224
  %24 = load i8*, i8** %arrayidx, align 8, !dbg !5224
  %call12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay11, i64 50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %24) #7, !dbg !5225
  %25 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5226
  %dev13 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %25, i32 0, i32 0, !dbg !5227
  %26 = load %struct.device*, %struct.device** %dev13, align 8, !dbg !5227
  %kobj = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0, !dbg !5228
  %arraydecay14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %envp, i64 0, i64 0, !dbg !5229
  %call15 = call i32 @kobject_uevent_env(%struct.kobject* %kobj, i32 2, i8** %arraydecay14) #7, !dbg !5230
  br label %return, !dbg !5231

return:                                           ; preds = %sw.epilog, %sw.default
  ret void, !dbg !5231
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local i32 @atomic_notifier_call_chain(%struct.atomic_notifier_head*, i64, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @kobject_uevent_env(%struct.kobject*, i32, i8**) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !5232 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !5237, metadata !DIExpression()), !dbg !5238
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !5239, metadata !DIExpression()), !dbg !5240
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !5241, metadata !DIExpression()), !dbg !5242
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !5243
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !5244
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #7, !dbg !5245
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !5242
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !5246
  %tobool = icmp ne %struct.property* %2, null, !dbg !5246
  %3 = zext i1 %tobool to i64, !dbg !5246
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5246
  %tobool1 = icmp ne i32 %cond, 0, !dbg !5246
  ret i1 %tobool1, !dbg !5247
}

; Function Attrs: noredzone
declare dso_local %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5248 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5253
  %1 = ptrtoint i8* %0 to i64, !dbg !5254
  ret i64 %1, !dbg !5255
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @devm_extcon_register_notifier(%struct.device*, %struct.extcon_dev*, i32, %struct.notifier_block*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_phy_get_charger_type(%struct.notifier_block* %nb, i64 %state, i8* %data) #0 !dbg !5256 {
entry:
  %nb.addr = alloca %struct.notifier_block*, align 8
  %state.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %usb_phy = alloca %struct.usb_phy*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_phy*, align 8
  store %struct.notifier_block* %nb, %struct.notifier_block** %nb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.notifier_block** %nb.addr, metadata !5257, metadata !DIExpression()), !dbg !5258
  store i64 %state, i64* %state.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %state.addr, metadata !5259, metadata !DIExpression()), !dbg !5260
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5261, metadata !DIExpression()), !dbg !5262
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %usb_phy, metadata !5263, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5265, metadata !DIExpression()), !dbg !5267
  %0 = load %struct.notifier_block*, %struct.notifier_block** %nb.addr, align 8, !dbg !5267
  %1 = bitcast %struct.notifier_block* %0 to i8*, !dbg !5267
  store i8* %1, i8** %__mptr, align 8, !dbg !5267
  br label %do.body, !dbg !5267

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5268

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5267
  %add.ptr = getelementptr i8, i8* %2, i64 -128, !dbg !5267
  %3 = bitcast i8* %add.ptr to %struct.usb_phy*, !dbg !5267
  store %struct.usb_phy* %3, %struct.usb_phy** %tmp, align 8, !dbg !5268
  %4 = load %struct.usb_phy*, %struct.usb_phy** %tmp, align 8, !dbg !5267
  store %struct.usb_phy* %4, %struct.usb_phy** %usb_phy, align 8, !dbg !5264
  %5 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy, align 8, !dbg !5270
  call void @__usb_phy_get_charger_type(%struct.usb_phy* %5) #7, !dbg !5271
  ret i32 1, !dbg !5272
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__usb_phy_get_charger_type(%struct.usb_phy* %usb_phy) #0 !dbg !5273 {
entry:
  %usb_phy.addr = alloca %struct.usb_phy*, align 8
  store %struct.usb_phy* %usb_phy, %struct.usb_phy** %usb_phy.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_phy** %usb_phy.addr, metadata !5274, metadata !DIExpression()), !dbg !5275
  %0 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5276
  %edev = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %0, i32 0, i32 9, !dbg !5278
  %1 = load %struct.extcon_dev*, %struct.extcon_dev** %edev, align 8, !dbg !5278
  %call = call i32 @extcon_get_state(%struct.extcon_dev* %1, i32 5) #7, !dbg !5279
  %cmp = icmp sgt i32 %call, 0, !dbg !5280
  br i1 %cmp, label %if.then, label %if.else, !dbg !5281

if.then:                                          ; preds = %entry
  %2 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5282
  %chg_type = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %2, i32 0, i32 14, !dbg !5284
  store i32 1, i32* %chg_type, align 8, !dbg !5285
  %3 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5286
  %chg_state = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %3, i32 0, i32 15, !dbg !5287
  store i32 1, i32* %chg_state, align 4, !dbg !5288
  br label %if.end26, !dbg !5289

if.else:                                          ; preds = %entry
  %4 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5290
  %edev1 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %4, i32 0, i32 9, !dbg !5292
  %5 = load %struct.extcon_dev*, %struct.extcon_dev** %edev1, align 8, !dbg !5292
  %call2 = call i32 @extcon_get_state(%struct.extcon_dev* %5, i32 7) #7, !dbg !5293
  %cmp3 = icmp sgt i32 %call2, 0, !dbg !5294
  br i1 %cmp3, label %if.then4, label %if.else7, !dbg !5295

if.then4:                                         ; preds = %if.else
  %6 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5296
  %chg_type5 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %6, i32 0, i32 14, !dbg !5298
  store i32 3, i32* %chg_type5, align 8, !dbg !5299
  %7 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5300
  %chg_state6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 15, !dbg !5301
  store i32 1, i32* %chg_state6, align 4, !dbg !5302
  br label %if.end25, !dbg !5303

if.else7:                                         ; preds = %if.else
  %8 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5304
  %edev8 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %8, i32 0, i32 9, !dbg !5306
  %9 = load %struct.extcon_dev*, %struct.extcon_dev** %edev8, align 8, !dbg !5306
  %call9 = call i32 @extcon_get_state(%struct.extcon_dev* %9, i32 6) #7, !dbg !5307
  %cmp10 = icmp sgt i32 %call9, 0, !dbg !5308
  br i1 %cmp10, label %if.then11, label %if.else14, !dbg !5309

if.then11:                                        ; preds = %if.else7
  %10 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5310
  %chg_type12 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %10, i32 0, i32 14, !dbg !5312
  store i32 2, i32* %chg_type12, align 8, !dbg !5313
  %11 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5314
  %chg_state13 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %11, i32 0, i32 15, !dbg !5315
  store i32 1, i32* %chg_state13, align 4, !dbg !5316
  br label %if.end24, !dbg !5317

if.else14:                                        ; preds = %if.else7
  %12 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5318
  %edev15 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %12, i32 0, i32 9, !dbg !5320
  %13 = load %struct.extcon_dev*, %struct.extcon_dev** %edev15, align 8, !dbg !5320
  %call16 = call i32 @extcon_get_state(%struct.extcon_dev* %13, i32 8) #7, !dbg !5321
  %cmp17 = icmp sgt i32 %call16, 0, !dbg !5322
  br i1 %cmp17, label %if.then18, label %if.else21, !dbg !5323

if.then18:                                        ; preds = %if.else14
  %14 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5324
  %chg_type19 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %14, i32 0, i32 14, !dbg !5326
  store i32 4, i32* %chg_type19, align 8, !dbg !5327
  %15 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5328
  %chg_state20 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %15, i32 0, i32 15, !dbg !5329
  store i32 1, i32* %chg_state20, align 4, !dbg !5330
  br label %if.end, !dbg !5331

if.else21:                                        ; preds = %if.else14
  %16 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5332
  %chg_type22 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %16, i32 0, i32 14, !dbg !5334
  store i32 0, i32* %chg_type22, align 8, !dbg !5335
  %17 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5336
  %chg_state23 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %17, i32 0, i32 15, !dbg !5337
  store i32 2, i32* %chg_state23, align 4, !dbg !5338
  br label %if.end

if.end:                                           ; preds = %if.else21, %if.then18
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then11
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then4
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then
  %18 = load %struct.usb_phy*, %struct.usb_phy** %usb_phy.addr, align 8, !dbg !5339
  %chg_work = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %18, i32 0, i32 17, !dbg !5340
  %call27 = call zeroext i1 @schedule_work(%struct.work_struct* %chg_work) #7, !dbg !5341
  ret void, !dbg !5342
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: noredzone
declare dso_local i32 @extcon_get_state(%struct.extcon_dev*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5343 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5346, metadata !DIExpression()), !dbg !5347
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5348, metadata !DIExpression()), !dbg !5349
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5352
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5354
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5355
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !5356
  br i1 %call, label %if.end, label %if.then, !dbg !5357

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5358

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5359
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5360
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5361
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5362
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5363
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5364
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5365
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5366
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5367
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5368
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5369
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5370
  br label %do.body, !dbg !5371

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5372

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5374

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5372

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5376
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5376
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5376
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5376
  br label %do.end7, !dbg !5376

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5372

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5379 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5382, metadata !DIExpression()), !dbg !5383
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5384, metadata !DIExpression()), !dbg !5385
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5386, metadata !DIExpression()), !dbg !5387
  ret i1 true, !dbg !5388
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5389 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5390, metadata !DIExpression()), !dbg !5391
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5392
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !5394
  br i1 %call, label %if.end, label %if.then, !dbg !5395

if.then:                                          ; preds = %entry
  br label %return, !dbg !5396

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5397
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5398
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5398
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5399
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5400
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5400
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !5401
  br label %return, !dbg !5402

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5402
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5403 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  ret i1 true, !dbg !5408
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5409 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5412, metadata !DIExpression()), !dbg !5413
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5414
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5415
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5416
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5417
  br label %do.body, !dbg !5418

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5419

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5421

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5419

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5423
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5423
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5423
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5423
  br label %do.end5, !dbg !5423

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5419

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5425
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3764}
!llvm.module.flags = !{!3765, !3766, !3767, !3768}
!llvm.ident = !{!3769}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "phy_lock", scope: !2, file: !3, line: 30, type: !197, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !165, globals: !3750, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/phy/phy.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !86, !93, !101, !106, !116, !121, !154}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_type", file: !81, line: 36, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/usb/phy.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "USB_PHY_TYPE_UNDEFINED", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "USB_PHY_TYPE_USB2", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "USB_PHY_TYPE_USB3", value: 2, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_phy_events", file: !81, line: 27, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "USB_EVENT_NONE", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "USB_EVENT_VBUS", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "USB_EVENT_ID", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "USB_EVENT_CHARGER", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "USB_EVENT_ENUMERATED", value: 4, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_charger_type", file: !94, line: 16, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/uapi/linux/usb/charger.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99, !100}
!96 = !DIEnumerator(name: "UNKNOWN_TYPE", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "SDP_TYPE", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "DCP_TYPE", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "CDP_TYPE", value: 3, isUnsigned: true)
!100 = !DIEnumerator(name: "ACA_TYPE", value: 4, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_charger_state", file: !94, line: 25, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "USB_CHARGER_DEFAULT", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "USB_CHARGER_PRESENT", value: 1, isUnsigned: true)
!105 = !DIEnumerator(name: "USB_CHARGER_ABSENT", value: 2, isUnsigned: true)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !107, line: 1146, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!108 = !{!109, !110, !111, !112, !113, !114, !115}
!109 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!110 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!111 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!112 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!113 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!114 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!115 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 10, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!118 = !{!119, !120}
!119 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!120 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !122, line: 30, baseType: !123, size: 64, elements: !124)
!122 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!123 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153}
!125 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!126 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!127 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!128 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!129 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!130 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!131 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!132 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!133 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!134 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!135 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!136 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!137 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!138 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!139 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!140 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!141 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!142 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!143 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!144 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!145 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!146 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!147 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!148 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!149 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!150 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!151 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!152 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!153 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !155, line: 53, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164}
!157 = !DIEnumerator(name: "KOBJ_ADD", value: 0, isUnsigned: true)
!158 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1, isUnsigned: true)
!159 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2, isUnsigned: true)
!160 = !DIEnumerator(name: "KOBJ_MOVE", value: 3, isUnsigned: true)
!161 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4, isUnsigned: true)
!162 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5, isUnsigned: true)
!163 = !DIEnumerator(name: "KOBJ_BIND", value: 6, isUnsigned: true)
!164 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7, isUnsigned: true)
!165 = !{!166, !168, !169, !3747, !288, !3748, !223, !123}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !167, line: 148, baseType: !7)
!167 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !81, line: 88, size: 2624, elements: !171)
!171 = !{!172, !3655, !3656, !3657, !3658, !3659, !3662, !3663, !3675, !3676, !3680, !3681, !3693, !3694, !3695, !3696, !3697, !3708, !3709, !3714, !3715, !3716, !3717, !3721, !3725, !3729, !3733, !3734, !3738, !3742, !3743}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !170, file: !81, line: 89, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !175)
!175 = !{!176, !3187, !3188, !3191, !3192, !3243, !3334, !3335, !3336, !3337, !3338, !3347, !3452, !3465, !3468, !3469, !3473, !3475, !3476, !3477, !3481, !3487, !3488, !3491, !3606, !3607, !3608, !3609, !3610, !3611, !3643, !3644, !3645, !3648, !3651, !3652, !3653, !3654}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !174, file: !60, line: 462, baseType: !177, size: 512)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !155, line: 64, size: 512, elements: !178)
!178 = !{!179, !183, !189, !191, !252, !3038, !3177, !3182, !3183, !3184, !3185, !3186}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !155, line: 65, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !177, file: !155, line: 66, baseType: !184, size: 128, offset: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !167, line: 178, size: 128, elements: !185)
!185 = !{!186, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !167, line: 179, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !184, file: !167, line: 179, baseType: !187, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !155, line: 67, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !177, file: !155, line: 68, baseType: !192, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !155, line: 192, size: 704, elements: !194)
!194 = !{!195, !196, !212, !213}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !193, file: !155, line: 193, baseType: !184, size: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !193, file: !155, line: 194, baseType: !197, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !198, line: 83, baseType: !199)
!198 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !198, line: 71, elements: !200)
!200 = !{!201}
!201 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !198, line: 72, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !199, file: !198, line: 72, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !202, file: !198, line: 73, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !198, line: 20, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !205, file: !198, line: 21, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !209, line: 25, baseType: !210)
!209 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !209, line: 25, elements: !211)
!211 = !{}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !193, file: !155, line: 195, baseType: !177, size: 512, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !193, file: !155, line: 196, baseType: !214, size: 64, offset: 640)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !155, line: 156, size: 192, elements: !217)
!217 = !{!218, !224, !229}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !216, file: !155, line: 157, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !192, !190}
!223 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !155, line: 158, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!180, !192, !190}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !216, file: !155, line: 159, baseType: !230, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!223, !192, !190, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !155, line: 148, size: 20736, elements: !236)
!236 = !{!237, !242, !246, !247, !251}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !235, file: !155, line: 149, baseType: !238, size: 192)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 192, elements: !240)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!240 = !{!241}
!241 = !DISubrange(count: 3)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !235, file: !155, line: 150, baseType: !243, size: 4096, offset: 192)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 4096, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !235, file: !155, line: 151, baseType: !223, size: 32, offset: 4288)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !235, file: !155, line: 152, baseType: !248, size: 16384, offset: 4320)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 16384, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 2048)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !235, file: !155, line: 153, baseType: !223, size: 32, offset: 20704)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !177, file: !155, line: 69, baseType: !253, size: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !155, line: 138, size: 448, elements: !255)
!255 = !{!256, !260, !289, !291, !2998, !3028, !3032}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !254, file: !155, line: 139, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !190}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !254, file: !155, line: 140, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !264, line: 230, size: 128, elements: !265)
!264 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!265 = !{!266, !281}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !263, file: !264, line: 231, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !190, !274, !239}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !167, line: 60, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !272, line: 73, baseType: !273)
!272 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !272, line: 15, baseType: !123)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !264, line: 30, size: 128, elements: !276)
!276 = !{!277, !278}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !264, line: 31, baseType: !180, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !275, file: !264, line: 32, baseType: !279, size: 16, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !167, line: 19, baseType: !280)
!280 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !263, file: !264, line: 232, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!270, !190, !274, !180, !285}
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !167, line: 55, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !272, line: 72, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !272, line: 16, baseType: !288)
!288 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !254, file: !155, line: 141, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !254, file: !155, line: 142, baseType: !292, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !264, line: 84, size: 320, elements: !296)
!296 = !{!297, !298, !302, !2995, !2996}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !264, line: 85, baseType: !180, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !295, file: !264, line: 86, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!279, !190, !274, !223}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !295, file: !264, line: 88, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!279, !190, !306, !223}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !264, line: 168, size: 448, elements: !308)
!308 = !{!309, !310, !311, !312, !2990, !2991}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !307, file: !264, line: 169, baseType: !275, size: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !307, file: !264, line: 170, baseType: !285, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !307, file: !264, line: 171, baseType: !168, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !307, file: !264, line: 172, baseType: !313, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!270, !316, !190, !306, !239, !495, !285}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !318)
!318 = !{!319, !337, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2973, !2974, !2983, !2984, !2985, !2986, !2987, !2988, !2989}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !317, file: !31, line: 920, baseType: !320, size: 128)
!320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !31, line: 917, size: 128, elements: !321)
!321 = !{!322, !328}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !320, file: !31, line: 918, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !324, line: 58, size: 64, elements: !325)
!324 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !324, line: 59, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !320, file: !31, line: 919, baseType: !329, size: 128, align: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !167, line: 216, size: 128, align: 64, elements: !330)
!330 = !{!331, !333}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !329, file: !167, line: 217, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !329, file: !167, line: 218, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !332}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !317, file: !31, line: 921, baseType: !338, size: 128, offset: 128)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !339, line: 8, size: 128, elements: !340)
!339 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!340 = !{!341, !345}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !338, file: !339, line: 9, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !344, line: 18, flags: DIFlagFwdDecl)
!344 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !338, file: !339, line: 10, baseType: !346, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !344, line: 89, size: 1536, elements: !348)
!348 = !{!349, !350, !360, !368, !369, !392, !2923, !2925, !2937, !2938, !2939, !2940, !2941, !2947, !2948, !2949}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !347, file: !344, line: 91, baseType: !7, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !347, file: !344, line: 92, baseType: !351, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !352, line: 277, baseType: !353)
!352 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !352, line: 277, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !353, file: !352, line: 277, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !352, line: 70, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !352, line: 65, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !357, file: !352, line: 66, baseType: !7, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !347, file: !344, line: 93, baseType: !361, size: 128, offset: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !362, line: 38, size: 128, elements: !363)
!362 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!363 = !{!364, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !362, line: 39, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !361, file: !362, line: 39, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !347, file: !344, line: 94, baseType: !346, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !347, file: !344, line: 95, baseType: !370, size: 128, offset: 256)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !344, line: 47, size: 128, elements: !371)
!371 = !{!372, !388}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !344, line: 48, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !344, line: 48, size: 64, elements: !374)
!374 = !{!375, !384}
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !344, line: 49, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !344, line: 49, size: 64, elements: !377)
!377 = !{!378, !383}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !376, file: !344, line: 50, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !380, line: 21, baseType: !381)
!380 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !382, line: 27, baseType: !7)
!382 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !376, file: !344, line: 50, baseType: !379, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !373, file: !344, line: 52, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !380, line: 23, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !382, line: 31, baseType: !387)
!387 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !344, line: 54, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!391 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !347, file: !344, line: 96, baseType: !393, size: 64, offset: 384)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !395)
!395 = !{!396, !397, !398, !406, !413, !414, !562, !2634, !2635, !2636, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2899, !2907, !2908, !2909, !2919, !2920, !2921, !2922}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !394, file: !31, line: 611, baseType: !279, size: 16)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !394, file: !31, line: 612, baseType: !280, size: 16, offset: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !394, file: !31, line: 613, baseType: !399, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !400, line: 23, baseType: !401)
!400 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 21, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !401, file: !400, line: 22, baseType: !404, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !167, line: 32, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !272, line: 49, baseType: !7)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !394, file: !31, line: 614, baseType: !407, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !400, line: 28, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !400, line: 26, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !408, file: !400, line: 27, baseType: !411, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !167, line: 33, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !272, line: 50, baseType: !7)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !394, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !394, file: !31, line: 622, baseType: !415, size: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !418)
!418 = !{!419, !423, !436, !440, !446, !450, !456, !460, !464, !468, !472, !473, !479, !483, !509, !538, !542, !548, !553, !557, !558}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !417, file: !31, line: 1865, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!346, !393, !346, !7}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !417, file: !31, line: 1866, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!180, !346, !393, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !429, line: 10, size: 128, elements: !430)
!429 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!430 = !{!431, !435}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !428, file: !429, line: 11, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !168}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !428, file: !429, line: 12, baseType: !168, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !417, file: !31, line: 1867, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!223, !393, !223}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !417, file: !31, line: 1868, baseType: !441, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!444, !393, !223}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !417, file: !31, line: 1870, baseType: !447, size: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!223, !346, !239, !223}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !417, file: !31, line: 1872, baseType: !451, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!223, !393, !346, !279, !454}
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !167, line: 30, baseType: !455)
!455 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !417, file: !31, line: 1873, baseType: !457, size: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!223, !346, !393, !346}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !417, file: !31, line: 1874, baseType: !461, size: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!223, !393, !346}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !417, file: !31, line: 1875, baseType: !465, size: 64, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!223, !393, !346, !180}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !417, file: !31, line: 1876, baseType: !469, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!223, !393, !346, !279}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !417, file: !31, line: 1877, baseType: !461, size: 64, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !417, file: !31, line: 1878, baseType: !474, size: 64, offset: 704)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!223, !393, !346, !279, !477}
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !167, line: 16, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !167, line: 13, baseType: !379)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !417, file: !31, line: 1879, baseType: !480, size: 64, offset: 768)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!223, !393, !346, !393, !346, !7}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !417, file: !31, line: 1881, baseType: !484, size: 64, offset: 832)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!223, !346, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !489)
!489 = !{!490, !491, !492, !493, !494, !498, !506, !507, !508}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !488, file: !31, line: 220, baseType: !7, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !488, file: !31, line: 221, baseType: !279, size: 16, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !488, file: !31, line: 222, baseType: !399, size: 32, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !488, file: !31, line: 223, baseType: !407, size: 32, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !488, file: !31, line: 224, baseType: !495, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !167, line: 46, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !272, line: 88, baseType: !497)
!497 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !488, file: !31, line: 225, baseType: !499, size: 128, offset: 192)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !500, line: 13, size: 128, elements: !501)
!500 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!501 = !{!502, !505}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !499, file: !500, line: 14, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !500, line: 8, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !382, line: 30, baseType: !497)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !499, file: !500, line: 15, baseType: !123, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !488, file: !31, line: 226, baseType: !499, size: 128, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !488, file: !31, line: 227, baseType: !499, size: 128, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !488, file: !31, line: 234, baseType: !316, size: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !417, file: !31, line: 1882, baseType: !510, size: 64, offset: 896)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!223, !513, !515, !379, !7}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !517, line: 22, size: 1152, elements: !518)
!517 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!518 = !{!519, !520, !521, !522, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !516, file: !517, line: 23, baseType: !379, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !516, file: !517, line: 24, baseType: !279, size: 16, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !516, file: !517, line: 25, baseType: !7, size: 32, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !516, file: !517, line: 26, baseType: !523, size: 32, offset: 96)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !167, line: 104, baseType: !379)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !516, file: !517, line: 27, baseType: !385, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !516, file: !517, line: 28, baseType: !385, size: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !516, file: !517, line: 37, baseType: !385, size: 64, offset: 256)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !516, file: !517, line: 38, baseType: !477, size: 32, offset: 320)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !516, file: !517, line: 39, baseType: !477, size: 32, offset: 352)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !516, file: !517, line: 40, baseType: !399, size: 32, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !516, file: !517, line: 41, baseType: !407, size: 32, offset: 416)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !516, file: !517, line: 42, baseType: !495, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !516, file: !517, line: 43, baseType: !499, size: 128, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !516, file: !517, line: 44, baseType: !499, size: 128, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !516, file: !517, line: 45, baseType: !499, size: 128, offset: 768)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !516, file: !517, line: 46, baseType: !499, size: 128, offset: 896)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !516, file: !517, line: 47, baseType: !385, size: 64, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !516, file: !517, line: 48, baseType: !385, size: 64, offset: 1088)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !417, file: !31, line: 1883, baseType: !539, size: 64, offset: 960)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{!270, !346, !239, !285}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !417, file: !31, line: 1884, baseType: !543, size: 64, offset: 1024)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!223, !393, !546, !385, !385}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !417, file: !31, line: 1886, baseType: !549, size: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!223, !393, !552, !223}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !417, file: !31, line: 1887, baseType: !554, size: 64, offset: 1152)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!223, !393, !346, !316, !7, !279}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !417, file: !31, line: 1890, baseType: !469, size: 64, offset: 1216)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !417, file: !31, line: 1891, baseType: !559, size: 64, offset: 1280)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!223, !393, !444, !223}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !394, file: !31, line: 623, baseType: !563, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !565)
!565 = !{!566, !567, !568, !569, !570, !571, !621, !2241, !2323, !2406, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2422, !2426, !2427, !2430, !2431, !2434, !2435, !2436, !2477, !2504, !2505, !2506, !2507, !2508, !2509, !2512, !2514, !2521, !2522, !2524, !2525, !2526, !2585, !2586, !2601, !2602, !2603, !2604, !2605, !2608, !2609, !2610, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !564, file: !31, line: 1417, baseType: !184, size: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !564, file: !31, line: 1418, baseType: !477, size: 32, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !564, file: !31, line: 1419, baseType: !391, size: 8, offset: 160)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !564, file: !31, line: 1420, baseType: !288, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !564, file: !31, line: 1421, baseType: !495, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !564, file: !31, line: 1422, baseType: !572, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !574)
!574 = !{!575, !576, !577, !584, !588, !592, !596, !600, !601, !611, !614, !615, !616, !618, !619, !620}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !573, file: !31, line: 2229, baseType: !180, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !573, file: !31, line: 2230, baseType: !223, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !573, file: !31, line: 2238, baseType: !578, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!223, !581}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !583, line: 28, flags: DIFlagFwdDecl)
!583 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!584 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !573, file: !31, line: 2239, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !573, file: !31, line: 2240, baseType: !589, size: 64, offset: 256)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!346, !572, !223, !180, !168}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !573, file: !31, line: 2242, baseType: !593, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !563}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !573, file: !31, line: 2243, baseType: !597, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !599, line: 76, flags: DIFlagFwdDecl)
!599 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !573, file: !31, line: 2244, baseType: !572, size: 64, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !573, file: !31, line: 2245, baseType: !602, size: 64, offset: 512)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !167, line: 182, size: 64, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !602, file: !167, line: 183, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !167, line: 186, size: 128, elements: !607)
!607 = !{!608, !609}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !606, file: !167, line: 187, baseType: !605, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !606, file: !167, line: 187, baseType: !610, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !573, file: !31, line: 2247, baseType: !612, offset: 576)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !613, line: 187, elements: !211)
!613 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !573, file: !31, line: 2248, baseType: !612, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !573, file: !31, line: 2249, baseType: !612, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !573, file: !31, line: 2250, baseType: !617, offset: 576)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, elements: !240)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !573, file: !31, line: 2252, baseType: !612, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !573, file: !31, line: 2253, baseType: !612, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !573, file: !31, line: 2254, baseType: !612, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !564, file: !31, line: 1423, baseType: !622, size: 64, offset: 384)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !625)
!625 = !{!626, !630, !634, !635, !639, !645, !649, !650, !651, !655, !659, !660, !661, !662, !668, !673, !674, !681, !682, !683, !684, !2225, !2240}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !624, file: !31, line: 1936, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!393, !563}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !624, file: !31, line: 1937, baseType: !631, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !393}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !624, file: !31, line: 1938, baseType: !631, size: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !624, file: !31, line: 1940, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !393, !223}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !624, file: !31, line: 1941, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!223, !393, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !624, file: !31, line: 1942, baseType: !646, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!223, !393}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !624, file: !31, line: 1943, baseType: !631, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !624, file: !31, line: 1944, baseType: !593, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !624, file: !31, line: 1945, baseType: !652, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!223, !563, !223}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !624, file: !31, line: 1946, baseType: !656, size: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!223, !563}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !624, file: !31, line: 1947, baseType: !656, size: 64, offset: 640)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !624, file: !31, line: 1948, baseType: !656, size: 64, offset: 704)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !624, file: !31, line: 1949, baseType: !656, size: 64, offset: 768)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !624, file: !31, line: 1950, baseType: !663, size: 64, offset: 832)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!223, !346, !666}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !624, file: !31, line: 1951, baseType: !669, size: 64, offset: 896)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!223, !563, !672, !239}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !624, file: !31, line: 1952, baseType: !593, size: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !624, file: !31, line: 1954, baseType: !675, size: 64, offset: 1024)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!223, !678, !346}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !680, line: 539, flags: DIFlagFwdDecl)
!680 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!681 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !624, file: !31, line: 1955, baseType: !675, size: 64, offset: 1088)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !624, file: !31, line: 1956, baseType: !675, size: 64, offset: 1152)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !624, file: !31, line: 1957, baseType: !675, size: 64, offset: 1216)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !624, file: !31, line: 1963, baseType: !685, size: 64, offset: 1280)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!223, !563, !688, !166}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !690, line: 68, size: 512, align: 128, elements: !691)
!690 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!691 = !{!692, !693, !2217, !2224}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !690, line: 69, baseType: !288, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !690, line: 77, baseType: !694, size: 320, offset: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !690, line: 77, size: 320, elements: !695)
!695 = !{!696, !883, !888, !916, !924, !930, !2209, !2216}
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 78, baseType: !697, size: 320)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 78, size: 320, elements: !698)
!698 = !{!699, !700, !881, !882}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !697, file: !690, line: 84, baseType: !184, size: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !697, file: !690, line: 86, baseType: !701, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !703)
!703 = !{!704, !705, !712, !713, !718, !733, !749, !750, !751, !752, !874, !875, !878, !879, !880}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !702, file: !31, line: 452, baseType: !393, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !702, file: !31, line: 453, baseType: !706, size: 128, offset: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !707, line: 292, size: 128, elements: !708)
!707 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!708 = !{!709, !710, !711}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !706, file: !707, line: 293, baseType: !197)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !706, file: !707, line: 295, baseType: !166, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !706, file: !707, line: 296, baseType: !168, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !702, file: !31, line: 454, baseType: !166, size: 32, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !702, file: !31, line: 455, baseType: !714, size: 32, offset: 224)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !167, line: 168, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 166, size: 32, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !715, file: !167, line: 167, baseType: !223, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !702, file: !31, line: 460, baseType: !719, size: 128, offset: 256)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !720, line: 125, size: 128, elements: !721)
!720 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !732}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !719, file: !720, line: 126, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !720, line: 31, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !723, file: !720, line: 32, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !720, line: 24, size: 192, align: 64, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !727, file: !720, line: 25, baseType: !288, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !727, file: !720, line: 26, baseType: !726, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !727, file: !720, line: 27, baseType: !726, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !719, file: !720, line: 127, baseType: !726, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !702, file: !31, line: 461, baseType: !734, size: 256, offset: 384)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !735, line: 35, size: 256, elements: !736)
!735 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !745, !746, !748}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !734, file: !735, line: 36, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !739, line: 13, baseType: !740)
!739 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !167, line: 175, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 173, size: 64, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !741, file: !167, line: 174, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !380, line: 22, baseType: !504)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !734, file: !735, line: 42, baseType: !738, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !734, file: !735, line: 46, baseType: !747, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !198, line: 29, baseType: !205)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !734, file: !735, line: 47, baseType: !184, size: 128, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !702, file: !31, line: 462, baseType: !288, size: 64, offset: 640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !702, file: !31, line: 463, baseType: !288, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !702, file: !31, line: 464, baseType: !288, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !702, file: !31, line: 465, baseType: !753, size: 64, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !756)
!756 = !{!757, !761, !765, !769, !773, !777, !783, !789, !793, !798, !802, !806, !810, !838, !842, !848, !849, !850, !854, !859, !863, !870}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !755, file: !31, line: 368, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!223, !688, !643}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !755, file: !31, line: 369, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!223, !316, !688}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !755, file: !31, line: 372, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!223, !701, !643}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !755, file: !31, line: 375, baseType: !770, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!223, !688}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !755, file: !31, line: 381, baseType: !774, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!223, !316, !701, !187, !7}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !755, file: !31, line: 383, baseType: !778, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !755, file: !31, line: 385, baseType: !784, size: 64, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!223, !316, !701, !495, !7, !7, !787, !788}
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !755, file: !31, line: 388, baseType: !790, size: 64, offset: 448)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!223, !316, !701, !495, !7, !7, !688, !168}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !755, file: !31, line: 393, baseType: !794, size: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!797, !701, !797}
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !167, line: 125, baseType: !385)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !755, file: !31, line: 394, baseType: !799, size: 64, offset: 576)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !688, !7, !7}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !755, file: !31, line: 395, baseType: !803, size: 64, offset: 640)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!223, !688, !166}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !755, file: !31, line: 396, baseType: !807, size: 64, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !688}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !755, file: !31, line: 397, baseType: !811, size: 64, offset: 768)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!270, !814, !836}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !816)
!816 = !{!817, !818, !819, !823, !824, !825, !828, !829}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !815, file: !31, line: 321, baseType: !316, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !815, file: !31, line: 326, baseType: !495, size: 64, offset: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !815, file: !31, line: 327, baseType: !820, size: 64, offset: 128)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !814, !123, !123}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !815, file: !31, line: 328, baseType: !168, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !815, file: !31, line: 329, baseType: !223, size: 32, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !815, file: !31, line: 330, baseType: !826, size: 16, offset: 288)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !380, line: 19, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !382, line: 24, baseType: !280)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !815, file: !31, line: 331, baseType: !826, size: 16, offset: 304)
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !31, line: 332, baseType: !830, size: 64, offset: 320)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !31, line: 332, size: 64, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !830, file: !31, line: 333, baseType: !7, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !830, file: !31, line: 334, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !755, file: !31, line: 402, baseType: !839, size: 64, offset: 832)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!223, !701, !688, !688, !5}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !755, file: !31, line: 404, baseType: !843, size: 64, offset: 896)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!454, !688, !846}
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !847, line: 305, baseType: !7)
!847 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!848 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !755, file: !31, line: 405, baseType: !807, size: 64, offset: 960)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !755, file: !31, line: 406, baseType: !770, size: 64, offset: 1024)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !755, file: !31, line: 407, baseType: !851, size: 64, offset: 1088)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!223, !688, !288, !288}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !755, file: !31, line: 409, baseType: !855, size: 64, offset: 1152)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !688, !858, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !755, file: !31, line: 410, baseType: !860, size: 64, offset: 1216)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!223, !701, !688}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !755, file: !31, line: 413, baseType: !864, size: 64, offset: 1280)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!223, !867, !316, !869}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !755, file: !31, line: 415, baseType: !871, size: 64, offset: 1344)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !316}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !31, line: 466, baseType: !288, size: 64, offset: 896)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !702, file: !31, line: 467, baseType: !876, size: 32, offset: 960)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !877, line: 8, baseType: !379)
!877 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!878 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !702, file: !31, line: 468, baseType: !197, offset: 992)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !702, file: !31, line: 469, baseType: !184, size: 128, offset: 1024)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !702, file: !31, line: 470, baseType: !168, size: 64, offset: 1152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !697, file: !690, line: 87, baseType: !288, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !697, file: !690, line: 94, baseType: !288, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 96, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 96, size: 64, elements: !885)
!885 = !{!886}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !884, file: !690, line: 101, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !167, line: 143, baseType: !385)
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 103, baseType: !889, size: 320)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 103, size: 320, elements: !890)
!890 = !{!891, !901, !904, !905}
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !690, line: 104, baseType: !892, size: 128)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !889, file: !690, line: 104, size: 128, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !892, file: !690, line: 105, baseType: !184, size: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, scope: !892, file: !690, line: 106, baseType: !896, size: 128)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !892, file: !690, line: 106, size: 128, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !896, file: !690, line: 107, baseType: !688, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !896, file: !690, line: 109, baseType: !223, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !896, file: !690, line: 110, baseType: !223, size: 32, offset: 96)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !889, file: !690, line: 117, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !690, line: 117, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !889, file: !690, line: 119, baseType: !168, size: 64, offset: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !889, file: !690, line: 120, baseType: !906, size: 64, offset: 256)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !889, file: !690, line: 120, size: 64, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !906, file: !690, line: 121, baseType: !168, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !906, file: !690, line: 122, baseType: !288, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !906, file: !690, line: 123, baseType: !911, size: 32)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !906, file: !690, line: 123, size: 32, elements: !912)
!912 = !{!913, !914, !915}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !911, file: !690, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !911, file: !690, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !911, file: !690, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 130, baseType: !917, size: 192)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 130, size: 192, elements: !918)
!918 = !{!919, !920, !921, !922, !923}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !917, file: !690, line: 131, baseType: !288, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !917, file: !690, line: 134, baseType: !391, size: 8, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !917, file: !690, line: 135, baseType: !391, size: 8, offset: 72)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !917, file: !690, line: 136, baseType: !714, size: 32, offset: 96)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !917, file: !690, line: 137, baseType: !7, size: 32, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 139, baseType: !925, size: 256)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 139, size: 256, elements: !926)
!926 = !{!927, !928, !929}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !925, file: !690, line: 140, baseType: !288, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !925, file: !690, line: 141, baseType: !714, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !925, file: !690, line: 143, baseType: !184, size: 128, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 145, baseType: !931, size: 256)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 145, size: 256, elements: !932)
!932 = !{!933, !934, !936, !937, !2208}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !931, file: !690, line: 146, baseType: !288, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !931, file: !690, line: 147, baseType: !935, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !680, line: 509, baseType: !688)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !931, file: !690, line: 148, baseType: !288, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !690, line: 149, baseType: !938, size: 64, offset: 192)
!938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !931, file: !690, line: 149, size: 64, elements: !939)
!939 = !{!940, !2207}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !938, file: !690, line: 150, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !690, line: 388, size: 7296, elements: !943)
!943 = !{!944, !2203}
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !942, file: !690, line: 389, baseType: !945, size: 7296)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !942, file: !690, line: 389, size: 7296, elements: !946)
!946 = !{!947, !985, !986, !987, !991, !992, !993, !994, !995, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1036, !1044, !1047, !1093, !1094, !2187, !2188, !2191, !2192, !2193, !2196, !2197, !2198, !2201, !2202}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !945, file: !690, line: 390, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !690, line: 305, size: 1472, elements: !950)
!950 = !{!951, !952, !953, !954, !955, !956, !957, !958, !965, !966, !971, !972, !975, !979, !980, !981, !982, !983}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !949, file: !690, line: 308, baseType: !288, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !949, file: !690, line: 309, baseType: !288, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !949, file: !690, line: 313, baseType: !948, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !949, file: !690, line: 313, baseType: !948, size: 64, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !949, file: !690, line: 315, baseType: !727, size: 192, align: 64, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !949, file: !690, line: 323, baseType: !288, size: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !949, file: !690, line: 327, baseType: !941, size: 64, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !949, file: !690, line: 333, baseType: !959, size: 64, offset: 576)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !680, line: 284, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !680, line: 284, size: 64, elements: !961)
!961 = !{!962}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !960, file: !680, line: 284, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !964, line: 19, baseType: !288)
!964 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!965 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !949, file: !690, line: 334, baseType: !288, size: 64, offset: 640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !949, file: !690, line: 343, baseType: !967, size: 256, offset: 704)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !690, line: 340, size: 256, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !967, file: !690, line: 341, baseType: !727, size: 192, align: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !967, file: !690, line: 342, baseType: !288, size: 64, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !949, file: !690, line: 351, baseType: !184, size: 128, offset: 960)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !949, file: !690, line: 353, baseType: !973, size: 64, offset: 1088)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !690, line: 353, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !949, file: !690, line: 356, baseType: !976, size: 64, offset: 1152)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !690, line: 356, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !949, file: !690, line: 359, baseType: !288, size: 64, offset: 1216)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !949, file: !690, line: 361, baseType: !316, size: 64, offset: 1280)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !949, file: !690, line: 362, baseType: !168, size: 64, offset: 1344)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !949, file: !690, line: 365, baseType: !738, size: 64, offset: 1408)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !949, file: !690, line: 373, baseType: !984, offset: 1472)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !690, line: 296, elements: !211)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !945, file: !690, line: 391, baseType: !723, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !945, file: !690, line: 392, baseType: !385, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !945, file: !690, line: 394, baseType: !988, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!288, !316, !288, !288, !288, !288}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !945, file: !690, line: 398, baseType: !288, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !945, file: !690, line: 399, baseType: !288, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !945, file: !690, line: 405, baseType: !288, size: 64, offset: 384)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !945, file: !690, line: 406, baseType: !288, size: 64, offset: 448)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !945, file: !690, line: 407, baseType: !996, size: 64, offset: 512)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !680, line: 286, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 286, size: 64, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !998, file: !680, line: 286, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !964, line: 18, baseType: !288)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !945, file: !690, line: 416, baseType: !714, size: 32, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !945, file: !690, line: 428, baseType: !714, size: 32, offset: 608)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !945, file: !690, line: 437, baseType: !714, size: 32, offset: 640)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !945, file: !690, line: 447, baseType: !714, size: 32, offset: 672)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !945, file: !690, line: 450, baseType: !738, size: 64, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !945, file: !690, line: 452, baseType: !223, size: 32, offset: 768)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !945, file: !690, line: 454, baseType: !197, offset: 800)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !945, file: !690, line: 457, baseType: !734, size: 256, offset: 832)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !945, file: !690, line: 459, baseType: !184, size: 128, offset: 1088)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !945, file: !690, line: 466, baseType: !288, size: 64, offset: 1216)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !945, file: !690, line: 467, baseType: !288, size: 64, offset: 1280)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !945, file: !690, line: 469, baseType: !288, size: 64, offset: 1344)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !945, file: !690, line: 470, baseType: !288, size: 64, offset: 1408)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !945, file: !690, line: 471, baseType: !740, size: 64, offset: 1472)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !945, file: !690, line: 472, baseType: !288, size: 64, offset: 1536)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !945, file: !690, line: 473, baseType: !288, size: 64, offset: 1600)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !945, file: !690, line: 474, baseType: !288, size: 64, offset: 1664)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !945, file: !690, line: 475, baseType: !288, size: 64, offset: 1728)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !945, file: !690, line: 477, baseType: !197, offset: 1792)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !945, file: !690, line: 478, baseType: !288, size: 64, offset: 1792)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !945, file: !690, line: 478, baseType: !288, size: 64, offset: 1856)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !945, file: !690, line: 478, baseType: !288, size: 64, offset: 1920)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !945, file: !690, line: 478, baseType: !288, size: 64, offset: 1984)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !945, file: !690, line: 479, baseType: !288, size: 64, offset: 2048)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !945, file: !690, line: 479, baseType: !288, size: 64, offset: 2112)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !945, file: !690, line: 479, baseType: !288, size: 64, offset: 2176)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !945, file: !690, line: 480, baseType: !288, size: 64, offset: 2240)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !945, file: !690, line: 480, baseType: !288, size: 64, offset: 2304)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !945, file: !690, line: 480, baseType: !288, size: 64, offset: 2368)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !945, file: !690, line: 480, baseType: !288, size: 64, offset: 2432)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !945, file: !690, line: 482, baseType: !1033, size: 2816, offset: 2496)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 2816, elements: !1034)
!1034 = !{!1035}
!1035 = !DISubrange(count: 44)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !945, file: !690, line: 488, baseType: !1037, size: 256, offset: 5312)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1038, line: 60, size: 256, elements: !1039)
!1038 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1037, file: !1038, line: 61, baseType: !1041, size: 256)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 256, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 4)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !945, file: !690, line: 490, baseType: !1045, size: 64, offset: 5568)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !690, line: 490, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !945, file: !690, line: 493, baseType: !1048, size: 896, offset: 5632)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1049, line: 53, baseType: !1050)
!1049 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1049, line: 13, size: 896, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1058, !1059, !1066, !1067, !1087, !1088, !1089}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1050, file: !1049, line: 18, baseType: !385, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1050, file: !1049, line: 28, baseType: !740, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1050, file: !1049, line: 31, baseType: !734, size: 256, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1050, file: !1049, line: 32, baseType: !1056, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1049, line: 32, flags: DIFlagFwdDecl)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1050, file: !1049, line: 37, baseType: !280, size: 16, offset: 448)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1050, file: !1049, line: 40, baseType: !1060, size: 192, offset: 512)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1061, line: 53, size: 192, elements: !1062)
!1061 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1060, file: !1061, line: 54, baseType: !738, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1060, file: !1061, line: 55, baseType: !197, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1060, file: !1061, line: 59, baseType: !184, size: 128, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1050, file: !1049, line: 41, baseType: !168, size: 64, offset: 704)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1050, file: !1049, line: 42, baseType: !1068, size: 64, offset: 768)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1070)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1071, line: 13, size: 896, elements: !1072)
!1071 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1072 = !{!1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1070, file: !1071, line: 14, baseType: !168, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1070, file: !1071, line: 15, baseType: !288, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1070, file: !1071, line: 17, baseType: !288, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1070, file: !1071, line: 17, baseType: !288, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1070, file: !1071, line: 19, baseType: !123, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1070, file: !1071, line: 21, baseType: !123, size: 64, offset: 320)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1070, file: !1071, line: 22, baseType: !123, size: 64, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1070, file: !1071, line: 23, baseType: !123, size: 64, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1070, file: !1071, line: 24, baseType: !123, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1070, file: !1071, line: 25, baseType: !123, size: 64, offset: 576)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1070, file: !1071, line: 26, baseType: !123, size: 64, offset: 640)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1070, file: !1071, line: 27, baseType: !123, size: 64, offset: 704)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1070, file: !1071, line: 28, baseType: !123, size: 64, offset: 768)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1070, file: !1071, line: 29, baseType: !123, size: 64, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1050, file: !1049, line: 44, baseType: !714, size: 32, offset: 832)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1050, file: !1049, line: 50, baseType: !826, size: 16, offset: 864)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1050, file: !1049, line: 51, baseType: !1090, size: 16, offset: 880)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !380, line: 18, baseType: !1091)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !382, line: 23, baseType: !1092)
!1092 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !945, file: !690, line: 495, baseType: !288, size: 64, offset: 6528)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !945, file: !690, line: 497, baseType: !1095, size: 64, offset: 6592)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !690, line: 381, size: 384, elements: !1097)
!1097 = !{!1098, !1099, !2186}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1096, file: !690, line: 382, baseType: !714, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1096, file: !690, line: 383, baseType: !1100, size: 128, offset: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !690, line: 376, size: 128, elements: !1101)
!1101 = !{!1102, !2184}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1100, file: !690, line: 377, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1105, line: 640, size: 48640, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1106 = !{!1107, !1113, !1115, !1116, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1133, !1151, !1162, !1247, !1248, !1249, !1260, !1261, !1263, !1264, !1265, !1266, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1345, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1383, !1385, !1386, !1387, !1399, !1400, !1401, !1402, !1403, !1404, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1428, !1433, !1617, !1618, !1619, !1620, !1624, !1627, !1630, !1633, !1636, !1639, !1740, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1786, !1787, !1788, !1789, !1790, !1795, !1796, !1797, !1800, !1801, !1804, !1807, !1810, !1813, !1855, !1858, !1859, !1938, !1939, !1942, !1943, !1946, !1947, !1948, !1952, !1953, !1954, !1967, !1968, !1969, !1979, !1984, !1987, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1104, file: !1105, line: 646, baseType: !1108, size: 128)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1109, line: 56, size: 128, elements: !1110)
!1109 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1108, file: !1109, line: 57, baseType: !288, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1108, file: !1109, line: 58, baseType: !379, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1104, file: !1105, line: 649, baseType: !1114, size: 64, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !123)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1104, file: !1105, line: 657, baseType: !168, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1104, file: !1105, line: 658, baseType: !1117, size: 32, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1118, line: 113, baseType: !1119)
!1118 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1118, line: 111, size: 32, elements: !1120)
!1120 = !{!1121}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1119, file: !1118, line: 112, baseType: !714, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1104, file: !1105, line: 660, baseType: !7, size: 32, offset: 288)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1104, file: !1105, line: 661, baseType: !7, size: 32, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1104, file: !1105, line: 684, baseType: !223, size: 32, offset: 352)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1104, file: !1105, line: 686, baseType: !223, size: 32, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1104, file: !1105, line: 687, baseType: !223, size: 32, offset: 416)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1104, file: !1105, line: 688, baseType: !223, size: 32, offset: 448)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1104, file: !1105, line: 689, baseType: !7, size: 32, offset: 480)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1104, file: !1105, line: 691, baseType: !1130, size: 64, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1105, line: 691, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1104, file: !1105, line: 692, baseType: !1134, size: 832, offset: 576)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1105, line: 451, size: 832, elements: !1135)
!1135 = !{!1136, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1134, file: !1105, line: 453, baseType: !1137, size: 128)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1105, line: 325, size: 128, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1137, file: !1105, line: 326, baseType: !288, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1137, file: !1105, line: 327, baseType: !379, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1134, file: !1105, line: 454, baseType: !727, size: 192, align: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1134, file: !1105, line: 455, baseType: !184, size: 128, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1134, file: !1105, line: 456, baseType: !7, size: 32, offset: 448)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1134, file: !1105, line: 458, baseType: !385, size: 64, offset: 512)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1134, file: !1105, line: 459, baseType: !385, size: 64, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1134, file: !1105, line: 460, baseType: !385, size: 64, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1134, file: !1105, line: 461, baseType: !385, size: 64, offset: 704)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1134, file: !1105, line: 463, baseType: !385, size: 64, offset: 768)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1134, file: !1105, line: 465, baseType: !1150, offset: 832)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1105, line: 415, elements: !211)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1104, file: !1105, line: 693, baseType: !1152, size: 384, offset: 1408)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1105, line: 489, size: 384, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1152, file: !1105, line: 490, baseType: !184, size: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1152, file: !1105, line: 491, baseType: !288, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1152, file: !1105, line: 492, baseType: !288, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1152, file: !1105, line: 493, baseType: !7, size: 32, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1152, file: !1105, line: 494, baseType: !280, size: 16, offset: 288)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1152, file: !1105, line: 495, baseType: !280, size: 16, offset: 304)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1152, file: !1105, line: 497, baseType: !1161, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1104, file: !1105, line: 697, baseType: !1163, size: 1792, offset: 1792)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1105, line: 507, size: 1792, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1244, !1245}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1163, file: !1105, line: 508, baseType: !727, size: 192, align: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1163, file: !1105, line: 515, baseType: !385, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1163, file: !1105, line: 516, baseType: !385, size: 64, offset: 256)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1163, file: !1105, line: 517, baseType: !385, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1163, file: !1105, line: 518, baseType: !385, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1163, file: !1105, line: 519, baseType: !385, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1163, file: !1105, line: 526, baseType: !744, size: 64, offset: 512)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1163, file: !1105, line: 527, baseType: !385, size: 64, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1163, file: !1105, line: 528, baseType: !7, size: 32, offset: 640)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1163, file: !1105, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1163, file: !1105, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1163, file: !1105, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1163, file: !1105, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1163, file: !1105, line: 563, baseType: !1179, size: 512, offset: 704)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1180)
!1180 = !{!1181, !1189, !1190, !1195, !1238, !1241, !1242, !1243}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1179, file: !14, line: 119, baseType: !1182, size: 256)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1183, line: 9, size: 256, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1182, file: !1183, line: 10, baseType: !727, size: 192, align: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1182, file: !1183, line: 11, baseType: !1187, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1188, line: 29, baseType: !744)
!1188 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1179, file: !14, line: 120, baseType: !1187, size: 64, offset: 256)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1179, file: !14, line: 121, baseType: !1191, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!13, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1179, file: !14, line: 122, baseType: !1196, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1198)
!1198 = !{!1199, !1219, !1220, !1223, !1228, !1229, !1233, !1237}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1197, file: !14, line: 160, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1201, file: !14, line: 215, baseType: !747)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1201, file: !14, line: 216, baseType: !7, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1201, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1201, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1201, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1201, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1201, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1201, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1201, file: !14, line: 233, baseType: !1187, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1201, file: !14, line: 234, baseType: !1194, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1201, file: !14, line: 235, baseType: !1187, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1201, file: !14, line: 236, baseType: !1194, size: 64, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1201, file: !14, line: 237, baseType: !1216, size: 4096, offset: 512)
!1216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1197, size: 4096, elements: !1217)
!1217 = !{!1218}
!1218 = !DISubrange(count: 8)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1197, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1197, file: !14, line: 162, baseType: !1221, size: 32, offset: 96)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !167, line: 27, baseType: !1222)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !272, line: 96, baseType: !223)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1197, file: !14, line: 163, baseType: !1224, size: 32, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !352, line: 276, baseType: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !352, line: 276, size: 32, elements: !1226)
!1226 = !{!1227}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1225, file: !352, line: 276, baseType: !356, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1197, file: !14, line: 164, baseType: !1194, size: 64, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1197, file: !14, line: 165, baseType: !1230, size: 128, offset: 256)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1183, line: 14, size: 128, elements: !1231)
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1230, file: !1183, line: 15, baseType: !719, size: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1197, file: !14, line: 166, baseType: !1234, size: 64, offset: 384)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!1187}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1197, file: !14, line: 167, baseType: !1187, size: 64, offset: 448)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1179, file: !14, line: 123, baseType: !1239, size: 8, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !380, line: 17, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !382, line: 21, baseType: !391)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1179, file: !14, line: 124, baseType: !1239, size: 8, offset: 456)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1179, file: !14, line: 125, baseType: !1239, size: 8, offset: 464)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1179, file: !14, line: 126, baseType: !1239, size: 8, offset: 472)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1163, file: !1105, line: 572, baseType: !1179, size: 512, offset: 1216)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1163, file: !1105, line: 580, baseType: !1246, size: 64, offset: 1728)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1104, file: !1105, line: 721, baseType: !7, size: 32, offset: 3584)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1104, file: !1105, line: 722, baseType: !223, size: 32, offset: 3616)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1104, file: !1105, line: 723, baseType: !1250, size: 64, offset: 3648)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1253, line: 17, baseType: !1254)
!1253 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1253, line: 17, size: 64, elements: !1255)
!1255 = !{!1256}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1254, file: !1253, line: 17, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 64, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 1)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1104, file: !1105, line: 724, baseType: !1252, size: 64, offset: 3712)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1104, file: !1105, line: 749, baseType: !1262, offset: 3776)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1105, line: 290, elements: !211)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1104, file: !1105, line: 751, baseType: !184, size: 128, offset: 3776)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1104, file: !1105, line: 757, baseType: !941, size: 64, offset: 3904)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1104, file: !1105, line: 758, baseType: !941, size: 64, offset: 3968)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1104, file: !1105, line: 761, baseType: !1267, size: 320, offset: 4032)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1038, line: 34, size: 320, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1267, file: !1038, line: 35, baseType: !385, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1267, file: !1038, line: 36, baseType: !1271, size: 256, offset: 64)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 256, elements: !1042)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1104, file: !1105, line: 766, baseType: !223, size: 32, offset: 4352)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1104, file: !1105, line: 767, baseType: !223, size: 32, offset: 4384)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1104, file: !1105, line: 768, baseType: !223, size: 32, offset: 4416)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1104, file: !1105, line: 770, baseType: !223, size: 32, offset: 4448)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1104, file: !1105, line: 772, baseType: !288, size: 64, offset: 4480)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1104, file: !1105, line: 775, baseType: !7, size: 32, offset: 4544)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1104, file: !1105, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1104, file: !1105, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1104, file: !1105, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1104, file: !1105, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1104, file: !1105, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1104, file: !1105, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1104, file: !1105, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1104, file: !1105, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1104, file: !1105, line: 831, baseType: !288, size: 64, offset: 4672)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1104, file: !1105, line: 833, baseType: !1288, size: 384, offset: 4736)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1289)
!1289 = !{!1290, !1295}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1288, file: !19, line: 26, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!123, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1288, file: !19, line: 27, baseType: !1296, size: 320, offset: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1288, file: !19, line: 27, size: 320, elements: !1297)
!1297 = !{!1298, !1308, !1335}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1296, file: !19, line: 36, baseType: !1299, size: 320)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1296, file: !19, line: 29, size: 320, elements: !1300)
!1300 = !{!1301, !1303, !1304, !1305, !1306, !1307}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1299, file: !19, line: 30, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1299, file: !19, line: 31, baseType: !379, size: 32, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1299, file: !19, line: 32, baseType: !379, size: 32, offset: 96)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1299, file: !19, line: 33, baseType: !379, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1299, file: !19, line: 34, baseType: !385, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1299, file: !19, line: 35, baseType: !1302, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1296, file: !19, line: 46, baseType: !1309, size: 192)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1296, file: !19, line: 38, size: 192, elements: !1310)
!1310 = !{!1311, !1312, !1313, !1334}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1309, file: !19, line: 39, baseType: !1221, size: 32)
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
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !272, line: 93, baseType: !497)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1318, file: !1319, line: 9, baseType: !497, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1314, file: !19, line: 43, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1327, line: 7, size: 64, elements: !1328)
!1327 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1328 = !{!1329, !1333}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1326, file: !1327, line: 8, baseType: !1330, size: 32)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1327, line: 5, baseType: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !380, line: 20, baseType: !1332)
!1332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !382, line: 26, baseType: !223)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1326, file: !1327, line: 9, baseType: !1331, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1309, file: !19, line: 45, baseType: !385, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1296, file: !19, line: 54, baseType: !1336, size: 256)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1296, file: !19, line: 48, size: 256, elements: !1337)
!1337 = !{!1338, !1341, !1342, !1343, !1344}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1336, file: !19, line: 49, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1336, file: !19, line: 50, baseType: !223, size: 32, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1336, file: !19, line: 51, baseType: !223, size: 32, offset: 96)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1336, file: !19, line: 52, baseType: !288, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1336, file: !19, line: 53, baseType: !288, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1104, file: !1105, line: 835, baseType: !1346, size: 32, offset: 5120)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !167, line: 22, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !272, line: 28, baseType: !223)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1104, file: !1105, line: 836, baseType: !1346, size: 32, offset: 5152)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1104, file: !1105, line: 840, baseType: !288, size: 64, offset: 5184)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1104, file: !1105, line: 849, baseType: !1103, size: 64, offset: 5248)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1104, file: !1105, line: 852, baseType: !1103, size: 64, offset: 5312)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1104, file: !1105, line: 857, baseType: !184, size: 128, offset: 5376)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1104, file: !1105, line: 858, baseType: !184, size: 128, offset: 5504)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1104, file: !1105, line: 859, baseType: !1103, size: 64, offset: 5632)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1104, file: !1105, line: 867, baseType: !184, size: 128, offset: 5696)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1104, file: !1105, line: 868, baseType: !184, size: 128, offset: 5824)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1104, file: !1105, line: 871, baseType: !1358, size: 64, offset: 5952)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1366, !1367, !1374, !1375}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1359, file: !40, line: 61, baseType: !1117, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1359, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1359, file: !40, line: 63, baseType: !197, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1359, file: !40, line: 65, baseType: !1365, size: 256, offset: 64)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 256, elements: !1042)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1359, file: !40, line: 66, baseType: !602, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1359, file: !40, line: 68, baseType: !1368, size: 128, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1369, line: 40, baseType: !1370)
!1369 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1369, line: 36, size: 128, elements: !1371)
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1370, file: !1369, line: 37, baseType: !197)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1370, file: !1369, line: 38, baseType: !184, size: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1359, file: !40, line: 69, baseType: !329, size: 128, align: 64, offset: 512)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1359, file: !40, line: 70, baseType: !1376, size: 128, offset: 640)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1377, size: 128, elements: !1258)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1377, file: !40, line: 55, baseType: !223, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1377, file: !40, line: 56, baseType: !1381, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1104, file: !1105, line: 872, baseType: !1384, size: 512, offset: 6016)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 512, elements: !1042)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1104, file: !1105, line: 873, baseType: !184, size: 128, offset: 6528)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1104, file: !1105, line: 874, baseType: !184, size: 128, offset: 6656)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1104, file: !1105, line: 876, baseType: !1388, size: 64, offset: 6784)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1390, line: 26, size: 192, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1389, file: !1390, line: 27, baseType: !7, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1389, file: !1390, line: 28, baseType: !1394, size: 128, offset: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1395, line: 43, size: 128, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1394, file: !1395, line: 44, baseType: !747)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1394, file: !1395, line: 45, baseType: !184, size: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1104, file: !1105, line: 879, baseType: !672, size: 64, offset: 6848)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1104, file: !1105, line: 882, baseType: !672, size: 64, offset: 6912)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1104, file: !1105, line: 884, baseType: !385, size: 64, offset: 6976)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1104, file: !1105, line: 885, baseType: !385, size: 64, offset: 7040)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1104, file: !1105, line: 890, baseType: !385, size: 64, offset: 7104)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1104, file: !1105, line: 891, baseType: !1405, size: 128, offset: 7168)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1105, line: 242, size: 128, elements: !1406)
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1405, file: !1105, line: 244, baseType: !385, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1405, file: !1105, line: 245, baseType: !385, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1405, file: !1105, line: 246, baseType: !747, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1104, file: !1105, line: 900, baseType: !288, size: 64, offset: 7296)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1104, file: !1105, line: 901, baseType: !288, size: 64, offset: 7360)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1104, file: !1105, line: 904, baseType: !385, size: 64, offset: 7424)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1104, file: !1105, line: 907, baseType: !385, size: 64, offset: 7488)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1104, file: !1105, line: 910, baseType: !288, size: 64, offset: 7552)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1104, file: !1105, line: 911, baseType: !288, size: 64, offset: 7616)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1104, file: !1105, line: 914, baseType: !1417, size: 640, offset: 7680)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1418, line: 123, size: 640, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1419 = !{!1420, !1426, !1427}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1417, file: !1418, line: 124, baseType: !1421, size: 576)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 576, elements: !240)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1418, line: 108, size: 192, elements: !1423)
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1422, file: !1418, line: 109, baseType: !385, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1422, file: !1418, line: 110, baseType: !1230, size: 128, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1417, file: !1418, line: 125, baseType: !7, size: 32, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1417, file: !1418, line: 126, baseType: !7, size: 32, offset: 608)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1104, file: !1105, line: 917, baseType: !1429, size: 192, offset: 8320)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1418, line: 134, size: 192, elements: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1429, file: !1418, line: 135, baseType: !329, size: 128, align: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1429, file: !1418, line: 136, baseType: !7, size: 32, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1104, file: !1105, line: 923, baseType: !1434, size: 64, offset: 8512)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1437, line: 111, size: 1280, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1458, !1459, !1460, !1461, !1462, !1463, !1570, !1571, !1572, !1573, !1599, !1602, !1612}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1436, file: !1437, line: 112, baseType: !714, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1436, file: !1437, line: 120, baseType: !399, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1436, file: !1437, line: 121, baseType: !407, size: 32, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1436, file: !1437, line: 122, baseType: !399, size: 32, offset: 96)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1436, file: !1437, line: 123, baseType: !407, size: 32, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1436, file: !1437, line: 124, baseType: !399, size: 32, offset: 160)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1436, file: !1437, line: 125, baseType: !407, size: 32, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1436, file: !1437, line: 126, baseType: !399, size: 32, offset: 224)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1436, file: !1437, line: 127, baseType: !407, size: 32, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1436, file: !1437, line: 128, baseType: !7, size: 32, offset: 288)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1436, file: !1437, line: 129, baseType: !1450, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1451, line: 26, baseType: !1452)
!1451 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1451, line: 24, size: 64, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1452, file: !1451, line: 25, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 64, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 2)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1436, file: !1437, line: 130, baseType: !1450, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1436, file: !1437, line: 131, baseType: !1450, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1436, file: !1437, line: 132, baseType: !1450, size: 64, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1436, file: !1437, line: 133, baseType: !1450, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1436, file: !1437, line: 135, baseType: !391, size: 8, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1436, file: !1437, line: 137, baseType: !1464, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1466, line: 189, size: 1664, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1469, !1472, !1477, !1478, !1481, !1482, !1487, !1488, !1489, !1490, !1492, !1493, !1494, !1495, !1496, !1534, !1555}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1465, file: !1466, line: 190, baseType: !1117, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1465, file: !1466, line: 191, baseType: !1470, size: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1466, line: 28, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !167, line: 98, baseType: !1331)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1466, line: 192, baseType: !1473, size: 192, offset: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1466, line: 192, size: 192, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1473, file: !1466, line: 193, baseType: !184, size: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1473, file: !1466, line: 194, baseType: !727, size: 192, align: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1465, file: !1466, line: 199, baseType: !734, size: 256, offset: 256)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1465, file: !1466, line: 200, baseType: !1479, size: 64, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1466, line: 200, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1465, file: !1466, line: 201, baseType: !168, size: 64, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1466, line: 202, baseType: !1483, size: 64, offset: 640)
!1483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1466, line: 202, size: 64, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1483, file: !1466, line: 203, baseType: !503, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1483, file: !1466, line: 204, baseType: !503, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1465, file: !1466, line: 206, baseType: !503, size: 64, offset: 704)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1465, file: !1466, line: 207, baseType: !399, size: 32, offset: 768)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1465, file: !1466, line: 208, baseType: !407, size: 32, offset: 800)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1465, file: !1466, line: 209, baseType: !1491, size: 32, offset: 832)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1466, line: 31, baseType: !523)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1465, file: !1466, line: 210, baseType: !280, size: 16, offset: 864)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1465, file: !1466, line: 211, baseType: !280, size: 16, offset: 880)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1465, file: !1466, line: 215, baseType: !1092, size: 16, offset: 896)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1465, file: !1466, line: 222, baseType: !288, size: 64, offset: 960)
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1466, line: 239, baseType: !1497, size: 320, offset: 1024)
!1497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1466, line: 239, size: 320, elements: !1498)
!1498 = !{!1499, !1526}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1497, file: !1466, line: 240, baseType: !1500, size: 320)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1466, line: 108, size: 320, elements: !1501)
!1501 = !{!1502, !1503, !1515, !1518, !1525}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1500, file: !1466, line: 110, baseType: !288, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !1466, line: 111, baseType: !1504, size: 64, offset: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1500, file: !1466, line: 111, size: 64, elements: !1505)
!1505 = !{!1506, !1514}
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1466, line: 112, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !1466, line: 112, size: 64, elements: !1508)
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1507, file: !1466, line: 114, baseType: !826, size: 16)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1507, file: !1466, line: 115, baseType: !1511, size: 48, offset: 16)
!1511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !1512)
!1512 = !{!1513}
!1513 = !DISubrange(count: 6)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1504, file: !1466, line: 121, baseType: !288, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1500, file: !1466, line: 123, baseType: !1516, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1466, line: 96, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1500, file: !1466, line: 124, baseType: !1519, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1466, line: 102, size: 192, elements: !1521)
!1521 = !{!1522, !1523, !1524}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1520, file: !1466, line: 103, baseType: !329, size: 128, align: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1520, file: !1466, line: 104, baseType: !1117, size: 32, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1520, file: !1466, line: 105, baseType: !454, size: 8, offset: 160)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1500, file: !1466, line: 125, baseType: !180, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, scope: !1497, file: !1466, line: 241, baseType: !1527, size: 320)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1497, file: !1466, line: 241, size: 320, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1533}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1527, file: !1466, line: 242, baseType: !288, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1527, file: !1466, line: 243, baseType: !288, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1527, file: !1466, line: 244, baseType: !1516, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1527, file: !1466, line: 245, baseType: !1519, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1527, file: !1466, line: 246, baseType: !239, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1466, line: 254, baseType: !1535, size: 256, offset: 1344)
!1535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1466, line: 254, size: 256, elements: !1536)
!1536 = !{!1537, !1543}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1535, file: !1466, line: 255, baseType: !1538, size: 256)
!1538 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1466, line: 128, size: 256, elements: !1539)
!1539 = !{!1540, !1541}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1538, file: !1466, line: 129, baseType: !168, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1538, file: !1466, line: 130, baseType: !1542, size: 256)
!1542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !1042)
!1543 = !DIDerivedType(tag: DW_TAG_member, scope: !1535, file: !1466, line: 256, baseType: !1544, size: 256)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1535, file: !1466, line: 256, size: 256, elements: !1545)
!1545 = !{!1546, !1547}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1544, file: !1466, line: 258, baseType: !184, size: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1544, file: !1466, line: 259, baseType: !1548, size: 128, offset: 128)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1549, line: 22, size: 128, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1554}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1548, file: !1549, line: 23, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1549, line: 23, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1548, file: !1549, line: 24, baseType: !288, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1465, file: !1466, line: 274, baseType: !1556, size: 64, offset: 1600)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1466, line: 170, size: 192, elements: !1558)
!1558 = !{!1559, !1568, !1569}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1557, file: !1466, line: 171, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1466, line: 165, baseType: !1561)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!223, !1464, !1564, !1566, !1464}
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1517)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1538)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1557, file: !1466, line: 172, baseType: !1464, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1557, file: !1466, line: 173, baseType: !1516, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1436, file: !1437, line: 138, baseType: !1464, size: 64, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1436, file: !1437, line: 139, baseType: !1464, size: 64, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1436, file: !1437, line: 140, baseType: !1464, size: 64, offset: 896)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1436, file: !1437, line: 145, baseType: !1574, size: 64, offset: 960)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1576, line: 13, size: 896, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1577 = !{!1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1575, file: !1576, line: 14, baseType: !1117, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1575, file: !1576, line: 15, baseType: !714, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1575, file: !1576, line: 16, baseType: !714, size: 32, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1575, file: !1576, line: 21, baseType: !738, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1575, file: !1576, line: 27, baseType: !288, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1575, file: !1576, line: 28, baseType: !288, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1575, file: !1576, line: 29, baseType: !738, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1575, file: !1576, line: 32, baseType: !606, size: 128, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1575, file: !1576, line: 33, baseType: !399, size: 32, offset: 512)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1575, file: !1576, line: 37, baseType: !738, size: 64, offset: 576)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1575, file: !1576, line: 44, baseType: !1589, size: 256, offset: 640)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1590, line: 15, size: 256, elements: !1591)
!1590 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1589, file: !1590, line: 16, baseType: !747)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1589, file: !1590, line: 18, baseType: !223, size: 32)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1589, file: !1590, line: 19, baseType: !223, size: 32, offset: 32)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1589, file: !1590, line: 20, baseType: !223, size: 32, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1589, file: !1590, line: 21, baseType: !223, size: 32, offset: 96)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1589, file: !1590, line: 22, baseType: !288, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1589, file: !1590, line: 23, baseType: !288, size: 64, offset: 192)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1436, file: !1437, line: 146, baseType: !1600, size: 64, offset: 1024)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !400, line: 18, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1436, file: !1437, line: 147, baseType: !1603, size: 64, offset: 1088)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1437, line: 25, size: 64, elements: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1604, file: !1437, line: 26, baseType: !714, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1604, file: !1437, line: 27, baseType: !223, size: 32, offset: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1604, file: !1437, line: 28, baseType: !1609, offset: 64)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, elements: !1610)
!1610 = !{!1611}
!1611 = !DISubrange(count: 0)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1436, file: !1437, line: 149, baseType: !1613, size: 128, offset: 1152)
!1613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1436, file: !1437, line: 149, size: 128, elements: !1614)
!1614 = !{!1615, !1616}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1613, file: !1437, line: 150, baseType: !223, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1613, file: !1437, line: 151, baseType: !329, size: 128, align: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1104, file: !1105, line: 926, baseType: !1434, size: 64, offset: 8576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1104, file: !1105, line: 929, baseType: !1434, size: 64, offset: 8640)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1104, file: !1105, line: 933, baseType: !1464, size: 64, offset: 8704)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1104, file: !1105, line: 943, baseType: !1621, size: 128, offset: 8768)
!1621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !1622)
!1622 = !{!1623}
!1623 = !DISubrange(count: 16)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1104, file: !1105, line: 945, baseType: !1625, size: 64, offset: 8896)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1105, line: 49, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1104, file: !1105, line: 956, baseType: !1628, size: 64, offset: 8960)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1105, line: 45, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1104, file: !1105, line: 959, baseType: !1631, size: 64, offset: 9024)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1105, line: 959, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1104, file: !1105, line: 962, baseType: !1634, size: 64, offset: 9088)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1105, line: 66, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1104, file: !1105, line: 966, baseType: !1637, size: 64, offset: 9152)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1105, line: 50, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1104, file: !1105, line: 969, baseType: !1640, size: 64, offset: 9216)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1642, line: 82, size: 7296, elements: !1643)
!1642 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649, !1650, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1679, !1688, !1689, !1691, !1692, !1693, !1696, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1726, !1727, !1734, !1735, !1736, !1737, !1738, !1739}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1641, file: !1642, line: 83, baseType: !1117, size: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1641, file: !1642, line: 84, baseType: !714, size: 32, offset: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1641, file: !1642, line: 85, baseType: !223, size: 32, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1641, file: !1642, line: 86, baseType: !184, size: 128, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1641, file: !1642, line: 88, baseType: !1368, size: 128, offset: 256)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1641, file: !1642, line: 91, baseType: !1103, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1641, file: !1642, line: 94, baseType: !1651, size: 192, offset: 448)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1652, line: 30, size: 192, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1651, file: !1652, line: 31, baseType: !184, size: 128)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1651, file: !1652, line: 32, baseType: !1656, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1657, line: 25, baseType: !1658)
!1657 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1657, line: 23, size: 64, elements: !1659)
!1659 = !{!1660}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1658, file: !1657, line: 24, baseType: !1257, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1641, file: !1642, line: 97, baseType: !602, size: 64, offset: 640)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1641, file: !1642, line: 100, baseType: !223, size: 32, offset: 704)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1641, file: !1642, line: 106, baseType: !223, size: 32, offset: 736)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1641, file: !1642, line: 107, baseType: !1103, size: 64, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1641, file: !1642, line: 110, baseType: !223, size: 32, offset: 832)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1641, file: !1642, line: 111, baseType: !7, size: 32, offset: 864)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1641, file: !1642, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1641, file: !1642, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1641, file: !1642, line: 128, baseType: !223, size: 32, offset: 928)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1641, file: !1642, line: 129, baseType: !184, size: 128, offset: 960)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1641, file: !1642, line: 132, baseType: !1179, size: 512, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1641, file: !1642, line: 133, baseType: !1187, size: 64, offset: 1600)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1641, file: !1642, line: 140, baseType: !1674, size: 256, offset: 1664)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1675, size: 256, elements: !1456)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1642, line: 38, size: 128, elements: !1676)
!1676 = !{!1677, !1678}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1675, file: !1642, line: 39, baseType: !385, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1675, file: !1642, line: 40, baseType: !385, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1641, file: !1642, line: 146, baseType: !1680, size: 192, offset: 1920)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1642, line: 66, size: 192, elements: !1681)
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1680, file: !1642, line: 67, baseType: !1683, size: 192)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1642, line: 47, size: 192, elements: !1684)
!1684 = !{!1685, !1686, !1687}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1683, file: !1642, line: 48, baseType: !740, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1683, file: !1642, line: 49, baseType: !740, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1683, file: !1642, line: 50, baseType: !740, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1641, file: !1642, line: 150, baseType: !1417, size: 640, offset: 2112)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1641, file: !1642, line: 153, baseType: !1690, size: 256, offset: 2752)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1358, size: 256, elements: !1042)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1641, file: !1642, line: 159, baseType: !1358, size: 64, offset: 3008)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1641, file: !1642, line: 162, baseType: !223, size: 32, offset: 3072)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1641, file: !1642, line: 164, baseType: !1694, size: 64, offset: 3136)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1642, line: 164, flags: DIFlagFwdDecl)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1641, file: !1642, line: 175, baseType: !1697, size: 32, offset: 3200)
!1697 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !352, line: 805, baseType: !1698)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 798, size: 32, elements: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1698, file: !352, line: 803, baseType: !351, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1698, file: !352, line: 804, baseType: !197, offset: 32)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1641, file: !1642, line: 176, baseType: !385, size: 64, offset: 3264)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1641, file: !1642, line: 176, baseType: !385, size: 64, offset: 3328)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1641, file: !1642, line: 176, baseType: !385, size: 64, offset: 3392)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1641, file: !1642, line: 176, baseType: !385, size: 64, offset: 3456)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1641, file: !1642, line: 177, baseType: !385, size: 64, offset: 3520)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1641, file: !1642, line: 178, baseType: !385, size: 64, offset: 3584)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1641, file: !1642, line: 179, baseType: !1405, size: 128, offset: 3648)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1641, file: !1642, line: 180, baseType: !288, size: 64, offset: 3776)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1641, file: !1642, line: 180, baseType: !288, size: 64, offset: 3840)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1641, file: !1642, line: 180, baseType: !288, size: 64, offset: 3904)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1641, file: !1642, line: 180, baseType: !288, size: 64, offset: 3968)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1641, file: !1642, line: 181, baseType: !288, size: 64, offset: 4032)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1641, file: !1642, line: 181, baseType: !288, size: 64, offset: 4096)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1641, file: !1642, line: 181, baseType: !288, size: 64, offset: 4160)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1641, file: !1642, line: 181, baseType: !288, size: 64, offset: 4224)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1641, file: !1642, line: 182, baseType: !288, size: 64, offset: 4288)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1641, file: !1642, line: 182, baseType: !288, size: 64, offset: 4352)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1641, file: !1642, line: 182, baseType: !288, size: 64, offset: 4416)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1641, file: !1642, line: 182, baseType: !288, size: 64, offset: 4480)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1641, file: !1642, line: 183, baseType: !288, size: 64, offset: 4544)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1641, file: !1642, line: 183, baseType: !288, size: 64, offset: 4608)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1641, file: !1642, line: 184, baseType: !1724, offset: 4672)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1725, line: 12, elements: !211)
!1725 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1641, file: !1642, line: 192, baseType: !387, size: 64, offset: 4672)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1641, file: !1642, line: 203, baseType: !1728, size: 2048, offset: 4736)
!1728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1729, size: 2048, elements: !1622)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1730, line: 43, size: 128, elements: !1731)
!1730 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1729, file: !1730, line: 44, baseType: !287, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1729, file: !1730, line: 45, baseType: !287, size: 64, offset: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1641, file: !1642, line: 220, baseType: !454, size: 8, offset: 6784)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1641, file: !1642, line: 221, baseType: !1092, size: 16, offset: 6800)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1641, file: !1642, line: 222, baseType: !1092, size: 16, offset: 6816)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1641, file: !1642, line: 224, baseType: !941, size: 64, offset: 6848)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1641, file: !1642, line: 227, baseType: !1060, size: 192, offset: 6912)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1641, file: !1642, line: 233, baseType: !1060, size: 192, offset: 7104)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1104, file: !1105, line: 970, baseType: !1741, size: 64, offset: 9280)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1642, line: 20, size: 16576, elements: !1743)
!1743 = !{!1744, !1745, !1746, !1747}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1742, file: !1642, line: 21, baseType: !197)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1742, file: !1642, line: 22, baseType: !1117, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1742, file: !1642, line: 23, baseType: !1368, size: 128, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1742, file: !1642, line: 24, baseType: !1748, size: 16384, offset: 192)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1749, size: 16384, elements: !244)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1652, line: 49, size: 256, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1749, file: !1652, line: 50, baseType: !1752, size: 256)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1652, line: 35, size: 256, elements: !1753)
!1753 = !{!1754, !1761, !1762, !1768}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1752, file: !1652, line: 37, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1756, line: 19, baseType: !1757)
!1756 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1756, line: 18, baseType: !1759)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !223}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1752, file: !1652, line: 38, baseType: !288, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1752, file: !1652, line: 44, baseType: !1763, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1756, line: 22, baseType: !1764)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1756, line: 21, baseType: !1766)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1752, file: !1652, line: 46, baseType: !1656, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1104, file: !1105, line: 971, baseType: !1656, size: 64, offset: 9344)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1104, file: !1105, line: 972, baseType: !1656, size: 64, offset: 9408)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1104, file: !1105, line: 974, baseType: !1656, size: 64, offset: 9472)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1104, file: !1105, line: 975, baseType: !1651, size: 192, offset: 9536)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1104, file: !1105, line: 976, baseType: !288, size: 64, offset: 9728)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1104, file: !1105, line: 977, baseType: !285, size: 64, offset: 9792)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1104, file: !1105, line: 978, baseType: !7, size: 32, offset: 9856)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1104, file: !1105, line: 980, baseType: !332, size: 64, offset: 9920)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1104, file: !1105, line: 989, baseType: !1778, size: 128, offset: 9984)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1779, line: 35, size: 128, elements: !1780)
!1779 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1780 = !{!1781, !1782, !1783}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1778, file: !1779, line: 36, baseType: !223, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1778, file: !1779, line: 37, baseType: !714, size: 32, offset: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1778, file: !1779, line: 38, baseType: !1784, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1779, line: 23, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1104, file: !1105, line: 992, baseType: !385, size: 64, offset: 10112)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1104, file: !1105, line: 993, baseType: !385, size: 64, offset: 10176)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1104, file: !1105, line: 996, baseType: !197, offset: 10240)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1104, file: !1105, line: 999, baseType: !747, offset: 10240)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1104, file: !1105, line: 1001, baseType: !1791, size: 64, offset: 10240)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1105, line: 636, size: 64, elements: !1792)
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1791, file: !1105, line: 637, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1104, file: !1105, line: 1005, baseType: !719, size: 128, offset: 10304)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1104, file: !1105, line: 1007, baseType: !1103, size: 64, offset: 10432)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1104, file: !1105, line: 1009, baseType: !1798, size: 64, offset: 10496)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1105, line: 1009, flags: DIFlagFwdDecl)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1104, file: !1105, line: 1043, baseType: !168, size: 64, offset: 10560)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1104, file: !1105, line: 1046, baseType: !1802, size: 64, offset: 10624)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1105, line: 41, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1104, file: !1105, line: 1050, baseType: !1805, size: 64, offset: 10688)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1105, line: 42, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1104, file: !1105, line: 1054, baseType: !1808, size: 64, offset: 10752)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1105, line: 55, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1104, file: !1105, line: 1056, baseType: !1811, size: 64, offset: 10816)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1105, line: 40, flags: DIFlagFwdDecl)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1104, file: !1105, line: 1058, baseType: !1814, size: 64, offset: 10880)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1816, line: 99, size: 704, elements: !1817)
!1816 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1843, !1844}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1815, file: !1816, line: 100, baseType: !738, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1815, file: !1816, line: 101, baseType: !714, size: 32, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1815, file: !1816, line: 102, baseType: !714, size: 32, offset: 96)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1815, file: !1816, line: 105, baseType: !197, offset: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1815, file: !1816, line: 107, baseType: !280, size: 16, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1815, file: !1816, line: 109, baseType: !706, size: 128, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1815, file: !1816, line: 110, baseType: !1825, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1816, line: 73, size: 448, elements: !1827)
!1827 = !{!1828, !1831, !1832, !1837, !1842}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1826, file: !1816, line: 74, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1816, line: 74, flags: DIFlagFwdDecl)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1826, file: !1816, line: 75, baseType: !1814, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1816, line: 83, baseType: !1833, size: 128, offset: 128)
!1833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !1816, line: 83, size: 128, elements: !1834)
!1834 = !{!1835, !1836}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1833, file: !1816, line: 84, baseType: !184, size: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1833, file: !1816, line: 85, baseType: !902, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1816, line: 87, baseType: !1838, size: 128, offset: 256)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !1816, line: 87, size: 128, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1838, file: !1816, line: 88, baseType: !606, size: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1838, file: !1816, line: 89, baseType: !329, size: 128, align: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1826, file: !1816, line: 92, baseType: !7, size: 32, offset: 384)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1815, file: !1816, line: 111, baseType: !602, size: 64, offset: 384)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1815, file: !1816, line: 113, baseType: !1845, size: 256, offset: 448)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !122, line: 102, size: 256, elements: !1846)
!1846 = !{!1847, !1848, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1845, file: !122, line: 103, baseType: !738, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1845, file: !122, line: 104, baseType: !184, size: 128, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1845, file: !122, line: 105, baseType: !1850, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !122, line: 21, baseType: !1851)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1104, file: !1105, line: 1061, baseType: !1856, size: 64, offset: 10944)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1105, line: 43, flags: DIFlagFwdDecl)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1104, file: !1105, line: 1064, baseType: !288, size: 64, offset: 11008)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1104, file: !1105, line: 1065, baseType: !1860, size: 64, offset: 11072)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1652, line: 14, baseType: !1862)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1652, line: 12, size: 384, elements: !1863)
!1863 = !{!1864}
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !1652, line: 13, baseType: !1865, size: 384)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1862, file: !1652, line: 13, size: 384, elements: !1866)
!1866 = !{!1867, !1868, !1869, !1870}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1865, file: !1652, line: 13, baseType: !223, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1865, file: !1652, line: 13, baseType: !223, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1865, file: !1652, line: 13, baseType: !223, size: 32, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1865, file: !1652, line: 13, baseType: !1871, size: 256, offset: 128)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1872, line: 32, size: 256, elements: !1873)
!1872 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1873 = !{!1874, !1879, !1892, !1898, !1907, !1927, !1932}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1871, file: !1872, line: 37, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1872, line: 34, size: 64, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1875, file: !1872, line: 35, baseType: !1347, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1875, file: !1872, line: 36, baseType: !405, size: 32, offset: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1871, file: !1872, line: 45, baseType: !1880, size: 192)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1872, line: 40, size: 192, elements: !1881)
!1881 = !{!1882, !1884, !1885, !1891}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1880, file: !1872, line: 41, baseType: !1883, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !272, line: 95, baseType: !223)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1880, file: !1872, line: 42, baseType: !223, size: 32, offset: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1880, file: !1872, line: 43, baseType: !1886, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1872, line: 11, baseType: !1887)
!1887 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1872, line: 8, size: 64, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1887, file: !1872, line: 9, baseType: !223, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1887, file: !1872, line: 10, baseType: !168, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1880, file: !1872, line: 44, baseType: !223, size: 32, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1871, file: !1872, line: 52, baseType: !1893, size: 128)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1872, line: 48, size: 128, elements: !1894)
!1894 = !{!1895, !1896, !1897}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1893, file: !1872, line: 49, baseType: !1347, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1893, file: !1872, line: 50, baseType: !405, size: 32, offset: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1893, file: !1872, line: 51, baseType: !1886, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1871, file: !1872, line: 61, baseType: !1899, size: 256)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1872, line: 55, size: 256, elements: !1900)
!1900 = !{!1901, !1902, !1903, !1904, !1906}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1899, file: !1872, line: 56, baseType: !1347, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1899, file: !1872, line: 57, baseType: !405, size: 32, offset: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1899, file: !1872, line: 58, baseType: !223, size: 32, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1899, file: !1872, line: 59, baseType: !1905, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !272, line: 94, baseType: !273)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1899, file: !1872, line: 60, baseType: !1905, size: 64, offset: 192)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1871, file: !1872, line: 95, baseType: !1908, size: 256)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1872, line: 64, size: 256, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1908, file: !1872, line: 65, baseType: !168, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1872, line: 77, baseType: !1912, size: 192, offset: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1872, line: 77, size: 192, elements: !1913)
!1913 = !{!1914, !1915, !1922}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1912, file: !1872, line: 82, baseType: !1092, size: 16)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1912, file: !1872, line: 88, baseType: !1916, size: 192)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1872, line: 84, size: 192, elements: !1917)
!1917 = !{!1918, !1920, !1921}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1916, file: !1872, line: 85, baseType: !1919, size: 64)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 64, elements: !1217)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1916, file: !1872, line: 86, baseType: !168, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1916, file: !1872, line: 87, baseType: !168, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1912, file: !1872, line: 93, baseType: !1923, size: 96)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !1872, line: 90, size: 96, elements: !1924)
!1924 = !{!1925, !1926}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1923, file: !1872, line: 91, baseType: !1919, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1923, file: !1872, line: 92, baseType: !381, size: 32, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1871, file: !1872, line: 101, baseType: !1928, size: 128)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1872, line: 98, size: 128, elements: !1929)
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1928, file: !1872, line: 99, baseType: !123, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1928, file: !1872, line: 100, baseType: !223, size: 32, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1871, file: !1872, line: 108, baseType: !1933, size: 128)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1871, file: !1872, line: 104, size: 128, elements: !1934)
!1934 = !{!1935, !1936, !1937}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1933, file: !1872, line: 105, baseType: !168, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1933, file: !1872, line: 106, baseType: !223, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1933, file: !1872, line: 107, baseType: !7, size: 32, offset: 96)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1104, file: !1105, line: 1067, baseType: !1724, offset: 11136)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1104, file: !1105, line: 1099, baseType: !1940, size: 64, offset: 11136)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1105, line: 56, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1104, file: !1105, line: 1103, baseType: !184, size: 128, offset: 11200)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1104, file: !1105, line: 1104, baseType: !1944, size: 64, offset: 11328)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1105, line: 46, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1104, file: !1105, line: 1105, baseType: !1060, size: 192, offset: 11392)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1104, file: !1105, line: 1106, baseType: !7, size: 32, offset: 11584)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1104, file: !1105, line: 1109, baseType: !1949, size: 128, offset: 11648)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1950, size: 128, elements: !1456)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1105, line: 51, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1104, file: !1105, line: 1110, baseType: !1060, size: 192, offset: 11776)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1104, file: !1105, line: 1111, baseType: !184, size: 128, offset: 11968)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1104, file: !1105, line: 1173, baseType: !1955, size: 64, offset: 12096)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1957, line: 62, size: 256, align: 256, elements: !1958)
!1957 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1958 = !{!1959, !1960, !1961, !1966}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1956, file: !1957, line: 75, baseType: !381, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1956, file: !1957, line: 90, baseType: !381, size: 32, offset: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1956, file: !1957, line: 124, baseType: !1962, size: 64, offset: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !1957, line: 109, size: 64, elements: !1963)
!1963 = !{!1964, !1965}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1962, file: !1957, line: 110, baseType: !386, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1962, file: !1957, line: 112, baseType: !386, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1956, file: !1957, line: 144, baseType: !381, size: 32, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1104, file: !1105, line: 1174, baseType: !379, size: 32, offset: 12160)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1104, file: !1105, line: 1179, baseType: !288, size: 64, offset: 12224)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1104, file: !1105, line: 1182, baseType: !1970, size: 128, offset: 12288)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1038, line: 76, size: 128, elements: !1971)
!1971 = !{!1972, !1977, !1978}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1970, file: !1038, line: 85, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1974, line: 7, size: 64, elements: !1975)
!1974 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1975 = !{!1976}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1973, file: !1974, line: 12, baseType: !1254, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1970, file: !1038, line: 88, baseType: !454, size: 8, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1970, file: !1038, line: 95, baseType: !454, size: 8, offset: 72)
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !1105, line: 1184, baseType: !1980, size: 128, offset: 12416)
!1980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1104, file: !1105, line: 1184, size: 128, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1980, file: !1105, line: 1185, baseType: !1117, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1980, file: !1105, line: 1186, baseType: !329, size: 128, align: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1104, file: !1105, line: 1190, baseType: !1985, size: 64, offset: 12544)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1105, line: 53, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1104, file: !1105, line: 1192, baseType: !1988, size: 128, offset: 12608)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1038, line: 64, size: 128, elements: !1989)
!1989 = !{!1990, !1991, !1992}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1988, file: !1038, line: 65, baseType: !688, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1988, file: !1038, line: 67, baseType: !381, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1988, file: !1038, line: 68, baseType: !381, size: 32, offset: 96)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1104, file: !1105, line: 1206, baseType: !223, size: 32, offset: 12736)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1104, file: !1105, line: 1207, baseType: !223, size: 32, offset: 12768)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1104, file: !1105, line: 1209, baseType: !288, size: 64, offset: 12800)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1104, file: !1105, line: 1219, baseType: !385, size: 64, offset: 12864)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1104, file: !1105, line: 1220, baseType: !385, size: 64, offset: 12928)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1104, file: !1105, line: 1317, baseType: !223, size: 32, offset: 12992)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1104, file: !1105, line: 1319, baseType: !1103, size: 64, offset: 13056)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1104, file: !1105, line: 1322, baseType: !2001, size: 64, offset: 13120)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1105, line: 1322, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1104, file: !1105, line: 1326, baseType: !1117, size: 32, offset: 13184)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1104, file: !1105, line: 1342, baseType: !168, size: 64, offset: 13248)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1104, file: !1105, line: 1343, baseType: !386, size: 64, offset: 13312)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1104, file: !1105, line: 1344, baseType: !385, size: 64, offset: 13376)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1104, file: !1105, line: 1345, baseType: !386, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1104, file: !1105, line: 1346, baseType: !386, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1104, file: !1105, line: 1347, baseType: !386, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1104, file: !1105, line: 1348, baseType: !329, size: 128, align: 64, offset: 13504)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1104, file: !1105, line: 1358, baseType: !2012, size: 34816, offset: 13824)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2013, line: 485, size: 34816, elements: !2014)
!2013 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2014 = !{!2015, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2044, !2045, !2046, !2047, !2048, !2049, !2052, !2053, !2054}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2012, file: !2013, line: 487, baseType: !2016, size: 192)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2017, size: 192, elements: !240)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2018, line: 16, size: 64, elements: !2019)
!2018 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2017, file: !2018, line: 17, baseType: !826, size: 16)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2017, file: !2018, line: 18, baseType: !826, size: 16, offset: 16)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2017, file: !2018, line: 19, baseType: !826, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2017, file: !2018, line: 19, baseType: !826, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2017, file: !2018, line: 19, baseType: !826, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2017, file: !2018, line: 19, baseType: !826, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2017, file: !2018, line: 19, baseType: !826, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2017, file: !2018, line: 20, baseType: !826, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2017, file: !2018, line: 20, baseType: !826, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2017, file: !2018, line: 20, baseType: !826, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2017, file: !2018, line: 20, baseType: !826, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2017, file: !2018, line: 20, baseType: !826, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2017, file: !2018, line: 20, baseType: !826, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2012, file: !2013, line: 491, baseType: !288, size: 64, offset: 192)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2012, file: !2013, line: 495, baseType: !280, size: 16, offset: 256)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2012, file: !2013, line: 496, baseType: !280, size: 16, offset: 272)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2012, file: !2013, line: 497, baseType: !280, size: 16, offset: 288)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2012, file: !2013, line: 498, baseType: !280, size: 16, offset: 304)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2012, file: !2013, line: 502, baseType: !288, size: 64, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2012, file: !2013, line: 503, baseType: !288, size: 64, offset: 384)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2012, file: !2013, line: 514, baseType: !2041, size: 256, offset: 448)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2042, size: 256, elements: !1042)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2013, line: 483, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2012, file: !2013, line: 516, baseType: !288, size: 64, offset: 704)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2012, file: !2013, line: 518, baseType: !288, size: 64, offset: 768)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2012, file: !2013, line: 520, baseType: !288, size: 64, offset: 832)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2012, file: !2013, line: 521, baseType: !288, size: 64, offset: 896)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2012, file: !2013, line: 522, baseType: !288, size: 64, offset: 960)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2012, file: !2013, line: 528, baseType: !2050, size: 64, offset: 1024)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2013, line: 10, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2012, file: !2013, line: 535, baseType: !288, size: 64, offset: 1088)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2012, file: !2013, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2012, file: !2013, line: 540, baseType: !2055, size: 33280, offset: 1536)
!2055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2056, line: 317, size: 33280, elements: !2057)
!2056 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2057 = !{!2058, !2059, !2060}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2055, file: !2056, line: 330, baseType: !7, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2055, file: !2056, line: 337, baseType: !288, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2055, file: !2056, line: 348, baseType: !2061, size: 32768, offset: 512)
!2061 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2056, line: 304, size: 32768, elements: !2062)
!2062 = !{!2063, !2078, !2117, !2167, !2180}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2061, file: !2056, line: 305, baseType: !2064, size: 896)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2056, line: 12, size: 896, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2077}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2064, file: !2056, line: 13, baseType: !379, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2064, file: !2056, line: 14, baseType: !379, size: 32, offset: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2064, file: !2056, line: 15, baseType: !379, size: 32, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2064, file: !2056, line: 16, baseType: !379, size: 32, offset: 96)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2064, file: !2056, line: 17, baseType: !379, size: 32, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2064, file: !2056, line: 18, baseType: !379, size: 32, offset: 160)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2064, file: !2056, line: 19, baseType: !379, size: 32, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2064, file: !2056, line: 22, baseType: !2074, size: 640, offset: 224)
!2074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 640, elements: !2075)
!2075 = !{!2076}
!2076 = !DISubrange(count: 20)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2064, file: !2056, line: 25, baseType: !379, size: 32, offset: 864)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2061, file: !2056, line: 306, baseType: !2079, size: 4096, align: 128)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2056, line: 34, size: 4096, align: 128, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2084, !2085, !2100, !2101, !2102, !2106, !2108, !2112}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2079, file: !2056, line: 35, baseType: !826, size: 16)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2079, file: !2056, line: 36, baseType: !826, size: 16, offset: 16)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2079, file: !2056, line: 37, baseType: !826, size: 16, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2079, file: !2056, line: 38, baseType: !826, size: 16, offset: 48)
!2085 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !2056, line: 39, baseType: !2086, size: 128, offset: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !2056, line: 39, size: 128, elements: !2087)
!2087 = !{!2088, !2093}
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !2086, file: !2056, line: 40, baseType: !2089, size: 128)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !2056, line: 40, size: 128, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2089, file: !2056, line: 41, baseType: !385, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2089, file: !2056, line: 42, baseType: !385, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, scope: !2086, file: !2056, line: 44, baseType: !2094, size: 128)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2086, file: !2056, line: 44, size: 128, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2099}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2094, file: !2056, line: 45, baseType: !379, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2094, file: !2056, line: 46, baseType: !379, size: 32, offset: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2094, file: !2056, line: 47, baseType: !379, size: 32, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2094, file: !2056, line: 48, baseType: !379, size: 32, offset: 96)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2079, file: !2056, line: 51, baseType: !379, size: 32, offset: 192)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2079, file: !2056, line: 52, baseType: !379, size: 32, offset: 224)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2079, file: !2056, line: 55, baseType: !2103, size: 1024, offset: 256)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 1024, elements: !2104)
!2104 = !{!2105}
!2105 = !DISubrange(count: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2079, file: !2056, line: 58, baseType: !2107, size: 2048, offset: 1280)
!2107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 2048, elements: !244)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2079, file: !2056, line: 60, baseType: !2109, size: 384, offset: 3328)
!2109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 384, elements: !2110)
!2110 = !{!2111}
!2111 = !DISubrange(count: 12)
!2112 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !2056, line: 62, baseType: !2113, size: 384, offset: 3712)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2079, file: !2056, line: 62, size: 384, elements: !2114)
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2113, file: !2056, line: 63, baseType: !2109, size: 384)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2113, file: !2056, line: 64, baseType: !2109, size: 384)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2061, file: !2056, line: 307, baseType: !2118, size: 1088)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2056, line: 79, size: 1088, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2166}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2118, file: !2056, line: 80, baseType: !379, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2118, file: !2056, line: 81, baseType: !379, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2118, file: !2056, line: 82, baseType: !379, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2118, file: !2056, line: 83, baseType: !379, size: 32, offset: 96)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2118, file: !2056, line: 84, baseType: !379, size: 32, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2118, file: !2056, line: 85, baseType: !379, size: 32, offset: 160)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2118, file: !2056, line: 86, baseType: !379, size: 32, offset: 192)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2118, file: !2056, line: 88, baseType: !2074, size: 640, offset: 224)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2118, file: !2056, line: 89, baseType: !1239, size: 8, offset: 864)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2118, file: !2056, line: 90, baseType: !1239, size: 8, offset: 872)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2118, file: !2056, line: 91, baseType: !1239, size: 8, offset: 880)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2118, file: !2056, line: 92, baseType: !1239, size: 8, offset: 888)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2118, file: !2056, line: 93, baseType: !1239, size: 8, offset: 896)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2118, file: !2056, line: 94, baseType: !1239, size: 8, offset: 904)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2118, file: !2056, line: 95, baseType: !2135, size: 64, offset: 960)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2137, line: 11, size: 128, elements: !2138)
!2137 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2136, file: !2137, line: 12, baseType: !123, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2136, file: !2137, line: 13, baseType: !2141, size: 64, offset: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2143, line: 56, size: 1344, elements: !2144)
!2143 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2144 = !{!2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2142, file: !2143, line: 61, baseType: !288, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2142, file: !2143, line: 62, baseType: !288, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2142, file: !2143, line: 63, baseType: !288, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2142, file: !2143, line: 64, baseType: !288, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2142, file: !2143, line: 65, baseType: !288, size: 64, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2142, file: !2143, line: 66, baseType: !288, size: 64, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2142, file: !2143, line: 68, baseType: !288, size: 64, offset: 384)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2142, file: !2143, line: 69, baseType: !288, size: 64, offset: 448)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2142, file: !2143, line: 70, baseType: !288, size: 64, offset: 512)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2142, file: !2143, line: 71, baseType: !288, size: 64, offset: 576)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2142, file: !2143, line: 72, baseType: !288, size: 64, offset: 640)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2142, file: !2143, line: 73, baseType: !288, size: 64, offset: 704)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2142, file: !2143, line: 74, baseType: !288, size: 64, offset: 768)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2142, file: !2143, line: 75, baseType: !288, size: 64, offset: 832)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2142, file: !2143, line: 76, baseType: !288, size: 64, offset: 896)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2142, file: !2143, line: 81, baseType: !288, size: 64, offset: 960)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2142, file: !2143, line: 83, baseType: !288, size: 64, offset: 1024)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2142, file: !2143, line: 84, baseType: !288, size: 64, offset: 1088)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2142, file: !2143, line: 85, baseType: !288, size: 64, offset: 1152)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2142, file: !2143, line: 86, baseType: !288, size: 64, offset: 1216)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2142, file: !2143, line: 87, baseType: !288, size: 64, offset: 1280)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2118, file: !2056, line: 96, baseType: !379, size: 32, offset: 1024)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2061, file: !2056, line: 308, baseType: !2168, size: 4608, align: 512)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2056, line: 289, size: 4608, align: 512, elements: !2169)
!2169 = !{!2170, !2171, !2178}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2168, file: !2056, line: 290, baseType: !2079, size: 4096, align: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2168, file: !2056, line: 291, baseType: !2172, size: 512, offset: 4096)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2056, line: 268, size: 512, elements: !2173)
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2172, file: !2056, line: 269, baseType: !385, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2172, file: !2056, line: 270, baseType: !385, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2172, file: !2056, line: 271, baseType: !2177, size: 384, offset: 128)
!2177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 384, elements: !1512)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2168, file: !2056, line: 292, baseType: !2179, offset: 4608)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1239, elements: !1610)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2061, file: !2056, line: 309, baseType: !2181, size: 32768)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1239, size: 32768, elements: !2182)
!2182 = !{!2183}
!2183 = !DISubrange(count: 4096)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1100, file: !690, line: 378, baseType: !2185, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1096, file: !690, line: 384, baseType: !1389, size: 192, offset: 192)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !945, file: !690, line: 500, baseType: !197, offset: 6656)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !945, file: !690, line: 501, baseType: !2189, size: 64, offset: 6656)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !690, line: 387, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !945, file: !690, line: 516, baseType: !1600, size: 64, offset: 6720)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !945, file: !690, line: 519, baseType: !316, size: 64, offset: 6784)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !945, file: !690, line: 521, baseType: !2194, size: 64, offset: 6848)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !690, line: 521, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !945, file: !690, line: 545, baseType: !714, size: 32, offset: 6912)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !945, file: !690, line: 548, baseType: !454, size: 8, offset: 6944)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !945, file: !690, line: 550, baseType: !2199, offset: 6952)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2200, line: 142, elements: !211)
!2200 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !945, file: !690, line: 554, baseType: !1845, size: 256, offset: 6976)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !945, file: !690, line: 557, baseType: !379, size: 32, offset: 7232)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !942, file: !690, line: 565, baseType: !2204, offset: 7296)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, elements: !2205)
!2205 = !{!2206}
!2206 = !DISubrange(count: -1)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !938, file: !690, line: 151, baseType: !714, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !931, file: !690, line: 156, baseType: !197, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !690, line: 159, baseType: !2210, size: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !690, line: 159, size: 128, elements: !2211)
!2211 = !{!2212, !2215}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2210, file: !690, line: 161, baseType: !2213, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !690, line: 161, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2210, file: !690, line: 162, baseType: !168, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !694, file: !690, line: 176, baseType: !329, size: 128, align: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !690, line: 179, baseType: !2218, size: 32, offset: 384)
!2218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !690, line: 179, size: 32, elements: !2219)
!2219 = !{!2220, !2221, !2222, !2223}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2218, file: !690, line: 184, baseType: !714, size: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2218, file: !690, line: 192, baseType: !7, size: 32)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2218, file: !690, line: 194, baseType: !7, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2218, file: !690, line: 195, baseType: !223, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !689, file: !690, line: 199, baseType: !714, size: 32, offset: 416)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !624, file: !31, line: 1964, baseType: !2226, size: 64, offset: 1344)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!123, !563, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2231, line: 12, size: 256, elements: !2232)
!2231 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2232 = !{!2233, !2234, !2235, !2236, !2237}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2230, file: !2231, line: 13, baseType: !166, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2230, file: !2231, line: 16, baseType: !223, size: 32, offset: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2230, file: !2231, line: 23, baseType: !288, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2230, file: !2231, line: 30, baseType: !288, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2230, file: !2231, line: 33, baseType: !2238, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !690, line: 27, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !624, file: !31, line: 1966, baseType: !2226, size: 64, offset: 1408)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !564, file: !31, line: 1424, baseType: !2242, size: 64, offset: 448)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2244)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2245)
!2245 = !{!2246, !2292, !2296, !2300, !2301, !2302, !2303, !2304, !2309, !2314, !2318}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2244, file: !25, line: 323, baseType: !2247, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!223, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2277, !2278, !2279}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2251, file: !25, line: 295, baseType: !606, size: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2251, file: !25, line: 296, baseType: !184, size: 128, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2251, file: !25, line: 297, baseType: !184, size: 128, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2251, file: !25, line: 298, baseType: !184, size: 128, offset: 384)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2251, file: !25, line: 299, baseType: !1060, size: 192, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2251, file: !25, line: 300, baseType: !197, offset: 704)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2251, file: !25, line: 301, baseType: !714, size: 32, offset: 704)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2251, file: !25, line: 302, baseType: !563, size: 64, offset: 768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2251, file: !25, line: 303, baseType: !2262, size: 64, offset: 832)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2263)
!2263 = !{!2264, !2276}
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2262, file: !25, line: 69, baseType: !2265, size: 32)
!2265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2262, file: !25, line: 69, size: 32, elements: !2266)
!2266 = !{!2267, !2268, !2269}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2265, file: !25, line: 70, baseType: !399, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2265, file: !25, line: 71, baseType: !407, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2265, file: !25, line: 72, baseType: !2270, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2271, line: 24, baseType: !2272)
!2271 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2271, line: 22, size: 32, elements: !2273)
!2273 = !{!2274}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2272, file: !2271, line: 23, baseType: !2275, size: 32)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2271, line: 20, baseType: !405)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2262, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2251, file: !25, line: 304, baseType: !495, size: 64, offset: 896)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2251, file: !25, line: 305, baseType: !288, size: 64, offset: 960)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2251, file: !25, line: 306, baseType: !2280, size: 576, offset: 1024)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2281)
!2281 = !{!2282, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2280, file: !25, line: 206, baseType: !2283, size: 64)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !497)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2280, file: !25, line: 207, baseType: !2283, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2280, file: !25, line: 208, baseType: !2283, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2280, file: !25, line: 209, baseType: !2283, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2280, file: !25, line: 210, baseType: !2283, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2280, file: !25, line: 211, baseType: !2283, size: 64, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2280, file: !25, line: 212, baseType: !2283, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2280, file: !25, line: 213, baseType: !503, size: 64, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2280, file: !25, line: 214, baseType: !503, size: 64, offset: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2244, file: !25, line: 324, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!2250, !563, !223}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2244, file: !25, line: 325, baseType: !2297, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{null, !2250}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2244, file: !25, line: 326, baseType: !2247, size: 64, offset: 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2244, file: !25, line: 327, baseType: !2247, size: 64, offset: 256)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2244, file: !25, line: 328, baseType: !2247, size: 64, offset: 320)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2244, file: !25, line: 329, baseType: !652, size: 64, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2244, file: !25, line: 332, baseType: !2305, size: 64, offset: 448)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!2308, !393}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2244, file: !25, line: 333, baseType: !2310, size: 64, offset: 512)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!223, !393, !2313}
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2244, file: !25, line: 335, baseType: !2315, size: 64, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!223, !393, !2308}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2244, file: !25, line: 337, baseType: !2319, size: 64, offset: 640)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!223, !563, !2322}
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !564, file: !31, line: 1425, baseType: !2324, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2326)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2327)
!2327 = !{!2328, !2332, !2333, !2337, !2338, !2339, !2354, !2377, !2381, !2382, !2405}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2326, file: !25, line: 429, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!223, !563, !223, !223, !513}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2326, file: !25, line: 430, baseType: !652, size: 64, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2326, file: !25, line: 431, baseType: !2334, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!223, !563, !7}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2326, file: !25, line: 432, baseType: !2334, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2326, file: !25, line: 433, baseType: !652, size: 64, offset: 256)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2326, file: !25, line: 434, baseType: !2340, size: 64, offset: 320)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!223, !563, !223, !2343}
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2345)
!2345 = !{!2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2344, file: !25, line: 416, baseType: !223, size: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2344, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2344, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2344, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2344, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2344, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2344, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2344, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2326, file: !25, line: 435, baseType: !2355, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!223, !563, !2262, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2359, file: !25, line: 344, baseType: !223, size: 32)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2359, file: !25, line: 345, baseType: !385, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2359, file: !25, line: 346, baseType: !385, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2359, file: !25, line: 347, baseType: !385, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2359, file: !25, line: 348, baseType: !385, size: 64, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2359, file: !25, line: 349, baseType: !385, size: 64, offset: 320)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2359, file: !25, line: 350, baseType: !385, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2359, file: !25, line: 351, baseType: !744, size: 64, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2359, file: !25, line: 353, baseType: !744, size: 64, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2359, file: !25, line: 354, baseType: !223, size: 32, offset: 576)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2359, file: !25, line: 355, baseType: !223, size: 32, offset: 608)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2359, file: !25, line: 356, baseType: !385, size: 64, offset: 640)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2359, file: !25, line: 357, baseType: !385, size: 64, offset: 704)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2359, file: !25, line: 358, baseType: !385, size: 64, offset: 768)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2359, file: !25, line: 359, baseType: !744, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2359, file: !25, line: 360, baseType: !223, size: 32, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2326, file: !25, line: 436, baseType: !2378, size: 64, offset: 448)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!223, !563, !2322, !2358}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2326, file: !25, line: 438, baseType: !2355, size: 64, offset: 512)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2326, file: !25, line: 439, baseType: !2383, size: 64, offset: 576)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!223, !563, !2386}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2387, file: !25, line: 410, baseType: !7, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2387, file: !25, line: 411, baseType: !2391, size: 1344, offset: 64)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2392, size: 1344, elements: !240)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2393)
!2393 = !{!2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2404}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2392, file: !25, line: 396, baseType: !7, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2392, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2392, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2392, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2392, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2392, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2392, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2392, file: !25, line: 404, baseType: !387, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2392, file: !25, line: 405, baseType: !2403, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !167, line: 126, baseType: !385)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2392, file: !25, line: 406, baseType: !2403, size: 64, offset: 384)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2326, file: !25, line: 440, baseType: !2334, size: 64, offset: 640)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !564, file: !31, line: 1426, baseType: !2407, size: 64, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2409)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !564, file: !31, line: 1427, baseType: !288, size: 64, offset: 640)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !564, file: !31, line: 1428, baseType: !288, size: 64, offset: 704)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !564, file: !31, line: 1429, baseType: !288, size: 64, offset: 768)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !564, file: !31, line: 1430, baseType: !346, size: 64, offset: 832)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !564, file: !31, line: 1431, baseType: !734, size: 256, offset: 896)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !564, file: !31, line: 1432, baseType: !223, size: 32, offset: 1152)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !564, file: !31, line: 1433, baseType: !714, size: 32, offset: 1184)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !564, file: !31, line: 1437, baseType: !2418, size: 64, offset: 1216)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2421)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !564, file: !31, line: 1449, baseType: !2423, size: 64, offset: 1280)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !362, line: 34, size: 64, elements: !2424)
!2424 = !{!2425}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2423, file: !362, line: 35, baseType: !365, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !564, file: !31, line: 1450, baseType: !184, size: 128, offset: 1344)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !564, file: !31, line: 1451, baseType: !2428, size: 64, offset: 1472)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !564, file: !31, line: 1452, baseType: !1811, size: 64, offset: 1536)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !564, file: !31, line: 1453, baseType: !2432, size: 64, offset: 1600)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !564, file: !31, line: 1454, baseType: !606, size: 128, offset: 1664)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !564, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !564, file: !31, line: 1456, baseType: !2437, size: 2432, offset: 1856)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2443, !2475}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2437, file: !25, line: 519, baseType: !7, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2437, file: !25, line: 520, baseType: !734, size: 256, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2437, file: !25, line: 521, baseType: !2442, size: 192, offset: 320)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 192, elements: !240)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2437, file: !25, line: 522, baseType: !2444, size: 1728, offset: 512)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2445, size: 1728, elements: !240)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2446)
!2446 = !{!2447, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2445, file: !25, line: 223, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2450)
!2450 = !{!2451, !2452, !2465, !2466}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2449, file: !25, line: 444, baseType: !223, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2449, file: !25, line: 445, baseType: !2453, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2455)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2455, file: !25, line: 311, baseType: !652, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2455, file: !25, line: 312, baseType: !652, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2455, file: !25, line: 313, baseType: !652, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2455, file: !25, line: 314, baseType: !652, size: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2455, file: !25, line: 315, baseType: !2247, size: 64, offset: 256)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2455, file: !25, line: 316, baseType: !2247, size: 64, offset: 320)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2455, file: !25, line: 317, baseType: !2247, size: 64, offset: 384)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2455, file: !25, line: 318, baseType: !2319, size: 64, offset: 448)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2449, file: !25, line: 446, baseType: !597, size: 64, offset: 128)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2449, file: !25, line: 447, baseType: !2448, size: 64, offset: 192)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2445, file: !25, line: 224, baseType: !223, size: 32, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2445, file: !25, line: 226, baseType: !184, size: 128, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2445, file: !25, line: 227, baseType: !288, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2445, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2445, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2445, file: !25, line: 230, baseType: !2283, size: 64, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2445, file: !25, line: 231, baseType: !2283, size: 64, offset: 448)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2445, file: !25, line: 232, baseType: !168, size: 64, offset: 512)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2437, file: !25, line: 523, baseType: !2476, size: 192, offset: 2240)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2453, size: 192, elements: !240)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !564, file: !31, line: 1458, baseType: !2478, size: 2112, offset: 4288)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2479)
!2479 = !{!2480, !2481, !2482}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2478, file: !31, line: 1411, baseType: !223, size: 32)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2478, file: !31, line: 1412, baseType: !1368, size: 128, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2478, file: !31, line: 1413, baseType: !2483, size: 1920, offset: 192)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2484, size: 1920, elements: !240)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2485, line: 12, size: 640, elements: !2486)
!2485 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2486 = !{!2487, !2495, !2497, !2502, !2503}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2484, file: !2485, line: 13, baseType: !2488, size: 320)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2489, line: 17, size: 320, elements: !2490)
!2489 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2490 = !{!2491, !2492, !2493, !2494}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2488, file: !2489, line: 18, baseType: !223, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2488, file: !2489, line: 19, baseType: !223, size: 32, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2488, file: !2489, line: 20, baseType: !1368, size: 128, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2488, file: !2489, line: 22, baseType: !329, size: 128, align: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2484, file: !2485, line: 14, baseType: !2496, size: 64, offset: 320)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2484, file: !2485, line: 15, baseType: !2498, size: 64, offset: 384)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2499, line: 16, size: 64, elements: !2500)
!2499 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2500 = !{!2501}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2498, file: !2499, line: 17, baseType: !1103, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2484, file: !2485, line: 16, baseType: !1368, size: 128, offset: 448)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2484, file: !2485, line: 17, baseType: !714, size: 32, offset: 576)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !564, file: !31, line: 1465, baseType: !168, size: 64, offset: 6400)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !564, file: !31, line: 1468, baseType: !379, size: 32, offset: 6464)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !564, file: !31, line: 1470, baseType: !503, size: 64, offset: 6528)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !564, file: !31, line: 1471, baseType: !503, size: 64, offset: 6592)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !564, file: !31, line: 1473, baseType: !381, size: 32, offset: 6656)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !564, file: !31, line: 1474, baseType: !2510, size: 64, offset: 6720)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !564, file: !31, line: 1477, baseType: !2513, size: 256, offset: 6784)
!2513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !2104)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !564, file: !31, line: 1478, baseType: !2515, size: 128, offset: 7040)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2516, line: 18, baseType: !2517)
!2516 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2516, line: 16, size: 128, elements: !2518)
!2518 = !{!2519}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2517, file: !2516, line: 17, baseType: !2520, size: 128)
!2520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1240, size: 128, elements: !1622)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !564, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !564, file: !31, line: 1481, baseType: !2523, size: 32, offset: 7200)
!2523 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !167, line: 150, baseType: !7)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !564, file: !31, line: 1487, baseType: !1060, size: 192, offset: 7232)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !564, file: !31, line: 1493, baseType: !180, size: 64, offset: 7424)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !564, file: !31, line: 1495, baseType: !2527, size: 64, offset: 7488)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !344, line: 135, size: 1024, align: 512, elements: !2530)
!2530 = !{!2531, !2535, !2536, !2543, !2549, !2553, !2557, !2561, !2562, !2566, !2570, !2575, !2579}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2529, file: !344, line: 136, baseType: !2532, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!223, !346, !7}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2529, file: !344, line: 137, baseType: !2532, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2529, file: !344, line: 138, baseType: !2537, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!223, !2540, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2529, file: !344, line: 139, baseType: !2544, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!223, !2540, !7, !180, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2529, file: !344, line: 141, baseType: !2550, size: 64, offset: 256)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!223, !2540}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2529, file: !344, line: 142, baseType: !2554, size: 64, offset: 320)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!223, !346}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2529, file: !344, line: 143, baseType: !2558, size: 64, offset: 384)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !346}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2529, file: !344, line: 144, baseType: !2558, size: 64, offset: 448)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2529, file: !344, line: 145, baseType: !2563, size: 64, offset: 512)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{null, !346, !393}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2529, file: !344, line: 146, baseType: !2567, size: 64, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!239, !346, !239, !223}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2529, file: !344, line: 147, baseType: !2571, size: 64, offset: 640)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!342, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2529, file: !344, line: 148, baseType: !2576, size: 64, offset: 704)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!223, !513, !454}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2529, file: !344, line: 149, baseType: !2580, size: 64, offset: 768)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!346, !346, !2583}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !564, file: !31, line: 1500, baseType: !223, size: 32, offset: 7552)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !564, file: !31, line: 1502, baseType: !2587, size: 448, offset: 7616)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2231, line: 60, size: 448, elements: !2588)
!2588 = !{!2589, !2594, !2595, !2596, !2597, !2598, !2599}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2587, file: !2231, line: 61, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!288, !2593, !2229}
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2587, file: !2231, line: 63, baseType: !2590, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2587, file: !2231, line: 66, baseType: !123, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2587, file: !2231, line: 67, baseType: !223, size: 32, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2587, file: !2231, line: 68, baseType: !7, size: 32, offset: 224)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2587, file: !2231, line: 71, baseType: !184, size: 128, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2587, file: !2231, line: 77, baseType: !2600, size: 64, offset: 384)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !564, file: !31, line: 1505, baseType: !738, size: 64, offset: 8064)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !564, file: !31, line: 1508, baseType: !738, size: 64, offset: 8128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !564, file: !31, line: 1511, baseType: !223, size: 32, offset: 8192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !564, file: !31, line: 1514, baseType: !876, size: 32, offset: 8224)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !564, file: !31, line: 1517, baseType: !2606, size: 64, offset: 8256)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !122, line: 18, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !564, file: !31, line: 1518, baseType: !602, size: 64, offset: 8320)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !564, file: !31, line: 1525, baseType: !1600, size: 64, offset: 8384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !564, file: !31, line: 1532, baseType: !2611, size: 64, offset: 8448)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2612, line: 52, size: 64, elements: !2613)
!2612 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2613 = !{!2614}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2611, file: !2612, line: 53, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2612, line: 40, size: 256, elements: !2617)
!2617 = !{!2618, !2619, !2624}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2616, file: !2612, line: 42, baseType: !197)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2616, file: !2612, line: 44, baseType: !2620, size: 192)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2612, line: 28, size: 192, elements: !2621)
!2621 = !{!2622, !2623}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2620, file: !2612, line: 29, baseType: !184, size: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2620, file: !2612, line: 31, baseType: !123, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2616, file: !2612, line: 49, baseType: !123, size: 64, offset: 192)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !564, file: !31, line: 1533, baseType: !2611, size: 64, offset: 8512)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !564, file: !31, line: 1534, baseType: !329, size: 128, align: 64, offset: 8576)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !564, file: !31, line: 1535, baseType: !1845, size: 256, offset: 8704)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !564, file: !31, line: 1537, baseType: !1060, size: 192, offset: 8960)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !564, file: !31, line: 1542, baseType: !223, size: 32, offset: 9152)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !564, file: !31, line: 1545, baseType: !197, offset: 9184)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !564, file: !31, line: 1546, baseType: !184, size: 128, offset: 9216)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !564, file: !31, line: 1548, baseType: !197, offset: 9344)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !564, file: !31, line: 1549, baseType: !184, size: 128, offset: 9344)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !394, file: !31, line: 624, baseType: !701, size: 64, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !394, file: !31, line: 631, baseType: !288, size: 64, offset: 320)
!2636 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !31, line: 639, baseType: !2637, size: 32, offset: 384)
!2637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !31, line: 639, size: 32, elements: !2638)
!2638 = !{!2639, !2641}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2637, file: !31, line: 640, baseType: !2640, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2637, file: !31, line: 641, baseType: !7, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !394, file: !31, line: 643, baseType: !477, size: 32, offset: 416)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !394, file: !31, line: 644, baseType: !495, size: 64, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !394, file: !31, line: 645, baseType: !499, size: 128, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !394, file: !31, line: 646, baseType: !499, size: 128, offset: 640)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !394, file: !31, line: 647, baseType: !499, size: 128, offset: 768)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !394, file: !31, line: 648, baseType: !197, offset: 896)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !394, file: !31, line: 649, baseType: !280, size: 16, offset: 896)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !394, file: !31, line: 650, baseType: !1239, size: 8, offset: 912)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !394, file: !31, line: 651, baseType: !1239, size: 8, offset: 920)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !394, file: !31, line: 652, baseType: !2403, size: 64, offset: 960)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !394, file: !31, line: 659, baseType: !288, size: 64, offset: 1024)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !394, file: !31, line: 660, baseType: !734, size: 256, offset: 1088)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !394, file: !31, line: 662, baseType: !288, size: 64, offset: 1344)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !394, file: !31, line: 663, baseType: !288, size: 64, offset: 1408)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !394, file: !31, line: 665, baseType: !606, size: 128, offset: 1472)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !394, file: !31, line: 666, baseType: !184, size: 128, offset: 1600)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !394, file: !31, line: 675, baseType: !184, size: 128, offset: 1728)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !394, file: !31, line: 676, baseType: !184, size: 128, offset: 1856)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !394, file: !31, line: 677, baseType: !184, size: 128, offset: 1984)
!2661 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !31, line: 678, baseType: !2662, size: 128, offset: 2112)
!2662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !31, line: 678, size: 128, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2662, file: !31, line: 679, baseType: !602, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2662, file: !31, line: 680, baseType: !329, size: 128, align: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !394, file: !31, line: 682, baseType: !740, size: 64, offset: 2240)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !394, file: !31, line: 683, baseType: !740, size: 64, offset: 2304)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !394, file: !31, line: 684, baseType: !714, size: 32, offset: 2368)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !394, file: !31, line: 685, baseType: !714, size: 32, offset: 2400)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !394, file: !31, line: 686, baseType: !714, size: 32, offset: 2432)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !394, file: !31, line: 688, baseType: !714, size: 32, offset: 2464)
!2672 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !31, line: 690, baseType: !2673, size: 64, offset: 2496)
!2673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !31, line: 690, size: 64, elements: !2674)
!2674 = !{!2675, !2898}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2673, file: !31, line: 691, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2678)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !2679)
!2679 = !{!2680, !2681, !2685, !2690, !2694, !2695, !2696, !2700, !2713, !2714, !2722, !2726, !2727, !2731, !2732, !2736, !2741, !2742, !2746, !2750, !2858, !2862, !2863, !2867, !2868, !2872, !2876, !2881, !2885, !2889, !2893, !2897}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2678, file: !31, line: 1823, baseType: !597, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2678, file: !31, line: 1824, baseType: !2682, size: 64, offset: 64)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!495, !316, !495, !223}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2678, file: !31, line: 1825, baseType: !2686, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!270, !316, !239, !285, !2689}
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2678, file: !31, line: 1826, baseType: !2691, size: 64, offset: 192)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!270, !316, !180, !285, !2689}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2678, file: !31, line: 1827, baseType: !811, size: 64, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2678, file: !31, line: 1828, baseType: !811, size: 64, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2678, file: !31, line: 1829, baseType: !2697, size: 64, offset: 384)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!223, !814, !454}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2678, file: !31, line: 1830, baseType: !2701, size: 64, offset: 448)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!223, !316, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2706)
!2706 = !{!2707, !2712}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2705, file: !31, line: 1777, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2709)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!223, !2704, !180, !223, !495, !385, !7}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2705, file: !31, line: 1778, baseType: !495, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2678, file: !31, line: 1831, baseType: !2701, size: 64, offset: 512)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2678, file: !31, line: 1832, baseType: !2715, size: 64, offset: 576)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!2718, !316, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2719, line: 52, baseType: !7)
!2719 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !583, line: 27, flags: DIFlagFwdDecl)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2678, file: !31, line: 1833, baseType: !2723, size: 64, offset: 640)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!123, !316, !7, !288}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2678, file: !31, line: 1834, baseType: !2723, size: 64, offset: 704)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2678, file: !31, line: 1835, baseType: !2728, size: 64, offset: 768)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!223, !316, !948}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2678, file: !31, line: 1836, baseType: !288, size: 64, offset: 832)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2678, file: !31, line: 1837, baseType: !2733, size: 64, offset: 896)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!223, !393, !316}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2678, file: !31, line: 1838, baseType: !2737, size: 64, offset: 960)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!223, !316, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !168)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2678, file: !31, line: 1839, baseType: !2733, size: 64, offset: 1024)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2678, file: !31, line: 1840, baseType: !2743, size: 64, offset: 1088)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!223, !316, !495, !495, !223}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2678, file: !31, line: 1841, baseType: !2747, size: 64, offset: 1152)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!223, !223, !316, !223}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2678, file: !31, line: 1842, baseType: !2751, size: 64, offset: 1216)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!223, !316, !223, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2788, !2789, !2790, !2803, !2834}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2755, file: !31, line: 1063, baseType: !2754, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2755, file: !31, line: 1064, baseType: !184, size: 128, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2755, file: !31, line: 1065, baseType: !606, size: 128, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2755, file: !31, line: 1066, baseType: !184, size: 128, offset: 320)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2755, file: !31, line: 1069, baseType: !184, size: 128, offset: 448)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2755, file: !31, line: 1072, baseType: !2740, size: 64, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2755, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2755, file: !31, line: 1074, baseType: !391, size: 8, offset: 672)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2755, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2755, file: !31, line: 1076, baseType: !223, size: 32, offset: 736)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2755, file: !31, line: 1077, baseType: !1368, size: 128, offset: 768)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2755, file: !31, line: 1078, baseType: !316, size: 64, offset: 896)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2755, file: !31, line: 1079, baseType: !495, size: 64, offset: 960)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2755, file: !31, line: 1080, baseType: !495, size: 64, offset: 1024)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2755, file: !31, line: 1082, baseType: !2772, size: 64, offset: 1088)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2774)
!2774 = !{!2775, !2783, !2784, !2785, !2786, !2787}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2773, file: !31, line: 1315, baseType: !2776)
!2776 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2777, line: 20, baseType: !2778)
!2777 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2777, line: 11, elements: !2779)
!2779 = !{!2780}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2778, file: !2777, line: 12, baseType: !2781)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !209, line: 33, baseType: !2782)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !209, line: 31, elements: !211)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2773, file: !31, line: 1316, baseType: !223, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2773, file: !31, line: 1317, baseType: !223, size: 32, offset: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2773, file: !31, line: 1318, baseType: !2772, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2773, file: !31, line: 1319, baseType: !316, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2773, file: !31, line: 1320, baseType: !329, size: 128, align: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2755, file: !31, line: 1084, baseType: !288, size: 64, offset: 1152)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2755, file: !31, line: 1085, baseType: !288, size: 64, offset: 1216)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2755, file: !31, line: 1087, baseType: !2791, size: 64, offset: 1280)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2793)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2794)
!2794 = !{!2795, !2799}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2793, file: !31, line: 1012, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !2754, !2754}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2793, file: !31, line: 1013, baseType: !2800, size: 64, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{null, !2754}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2755, file: !31, line: 1088, baseType: !2804, size: 64, offset: 1344)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2806)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2807)
!2807 = !{!2808, !2812, !2816, !2817, !2821, !2825, !2829, !2833}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2806, file: !31, line: 1017, baseType: !2809, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!2740, !2740}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2806, file: !31, line: 1018, baseType: !2813, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !2740}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2806, file: !31, line: 1019, baseType: !2800, size: 64, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2806, file: !31, line: 1020, baseType: !2818, size: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!223, !2754, !223}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2806, file: !31, line: 1021, baseType: !2822, size: 64, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!454, !2754}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2806, file: !31, line: 1022, baseType: !2826, size: 64, offset: 320)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!223, !2754, !223, !187}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2806, file: !31, line: 1023, baseType: !2830, size: 64, offset: 384)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null, !2754, !788}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2806, file: !31, line: 1024, baseType: !2822, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2755, file: !31, line: 1097, baseType: !2835, size: 256, offset: 1408)
!2835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2755, file: !31, line: 1089, size: 256, elements: !2836)
!2836 = !{!2837, !2846, !2852}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2835, file: !31, line: 1090, baseType: !2838, size: 256)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2839, line: 10, size: 256, elements: !2840)
!2839 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2840 = !{!2841, !2842, !2845}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2838, file: !2839, line: 11, baseType: !379, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2838, file: !2839, line: 12, baseType: !2843, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2839, line: 5, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2838, file: !2839, line: 13, baseType: !184, size: 128, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2835, file: !31, line: 1091, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2839, line: 17, size: 64, elements: !2848)
!2848 = !{!2849}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2847, file: !2839, line: 18, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2839, line: 16, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2835, file: !31, line: 1096, baseType: !2853, size: 192)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2835, file: !31, line: 1092, size: 192, elements: !2854)
!2854 = !{!2855, !2856, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2853, file: !31, line: 1093, baseType: !184, size: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2853, file: !31, line: 1094, baseType: !223, size: 32, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2853, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2678, file: !31, line: 1843, baseType: !2859, size: 64, offset: 1280)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!270, !316, !688, !223, !285, !2689, !223}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2678, file: !31, line: 1844, baseType: !988, size: 64, offset: 1344)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2678, file: !31, line: 1845, baseType: !2864, size: 64, offset: 1408)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!223, !223}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2678, file: !31, line: 1846, baseType: !2751, size: 64, offset: 1472)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2678, file: !31, line: 1847, baseType: !2869, size: 64, offset: 1536)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!270, !1985, !316, !2689, !285, !7}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2678, file: !31, line: 1848, baseType: !2873, size: 64, offset: 1600)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!270, !316, !2689, !1985, !285, !7}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2678, file: !31, line: 1849, baseType: !2877, size: 64, offset: 1664)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!223, !316, !123, !2880, !788}
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2678, file: !31, line: 1850, baseType: !2882, size: 64, offset: 1728)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!123, !316, !223, !495, !495}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2678, file: !31, line: 1852, baseType: !2886, size: 64, offset: 1792)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !678, !316}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2678, file: !31, line: 1856, baseType: !2890, size: 64, offset: 1856)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!270, !316, !495, !316, !495, !285, !7}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2678, file: !31, line: 1858, baseType: !2894, size: 64, offset: 1920)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!495, !316, !495, !316, !495, !495, !7}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2678, file: !31, line: 1861, baseType: !2743, size: 64, offset: 1984)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2673, file: !31, line: 692, baseType: !631, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !394, file: !31, line: 694, baseType: !2900, size: 64, offset: 2560)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2902)
!2902 = !{!2903, !2904, !2905, !2906}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2901, file: !31, line: 1101, baseType: !197)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2901, file: !31, line: 1102, baseType: !184, size: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2901, file: !31, line: 1103, baseType: !184, size: 128, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2901, file: !31, line: 1104, baseType: !184, size: 128, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !394, file: !31, line: 695, baseType: !702, size: 1216, align: 64, offset: 2624)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !394, file: !31, line: 696, baseType: !184, size: 128, offset: 3840)
!2909 = !DIDerivedType(tag: DW_TAG_member, scope: !394, file: !31, line: 697, baseType: !2910, size: 64, offset: 3968)
!2910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !394, file: !31, line: 697, size: 64, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2917, !2918}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2910, file: !31, line: 698, baseType: !1985, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2910, file: !31, line: 699, baseType: !2428, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2910, file: !31, line: 700, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2910, file: !31, line: 701, baseType: !239, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2910, file: !31, line: 702, baseType: !7, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !394, file: !31, line: 705, baseType: !381, size: 32, offset: 4032)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !394, file: !31, line: 708, baseType: !381, size: 32, offset: 4064)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !394, file: !31, line: 709, baseType: !2510, size: 64, offset: 4096)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !394, file: !31, line: 720, baseType: !168, size: 64, offset: 4160)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !347, file: !344, line: 98, baseType: !2924, size: 256, offset: 448)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 256, elements: !2104)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !347, file: !344, line: 101, baseType: !2926, size: 32, offset: 704)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2927, line: 25, size: 32, elements: !2928)
!2927 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2928 = !{!2929}
!2929 = !DIDerivedType(tag: DW_TAG_member, scope: !2926, file: !2927, line: 26, baseType: !2930, size: 32)
!2930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2926, file: !2927, line: 26, size: 32, elements: !2931)
!2931 = !{!2932}
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !2930, file: !2927, line: 30, baseType: !2933, size: 32)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2930, file: !2927, line: 30, size: 32, elements: !2934)
!2934 = !{!2935, !2936}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2933, file: !2927, line: 31, baseType: !197)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2933, file: !2927, line: 32, baseType: !223, size: 32)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !347, file: !344, line: 102, baseType: !2527, size: 64, offset: 768)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !347, file: !344, line: 103, baseType: !563, size: 64, offset: 832)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !347, file: !344, line: 104, baseType: !288, size: 64, offset: 896)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !347, file: !344, line: 105, baseType: !168, size: 64, offset: 960)
!2941 = !DIDerivedType(tag: DW_TAG_member, scope: !347, file: !344, line: 107, baseType: !2942, size: 128, offset: 1024)
!2942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !344, line: 107, size: 128, elements: !2943)
!2943 = !{!2944, !2945}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2942, file: !344, line: 108, baseType: !184, size: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2942, file: !344, line: 109, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !347, file: !344, line: 111, baseType: !184, size: 128, offset: 1152)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !347, file: !344, line: 112, baseType: !184, size: 128, offset: 1280)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !347, file: !344, line: 120, baseType: !2950, size: 128, offset: 1408)
!2950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !347, file: !344, line: 116, size: 128, elements: !2951)
!2951 = !{!2952, !2953, !2954}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2950, file: !344, line: 117, baseType: !606, size: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2950, file: !344, line: 118, baseType: !361, size: 128)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2950, file: !344, line: 119, baseType: !329, size: 128, align: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !317, file: !31, line: 922, baseType: !393, size: 64, offset: 256)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !317, file: !31, line: 923, baseType: !2676, size: 64, offset: 320)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !317, file: !31, line: 929, baseType: !197, offset: 384)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !317, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !317, file: !31, line: 931, baseType: !738, size: 64, offset: 448)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !317, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !317, file: !31, line: 933, baseType: !2523, size: 32, offset: 544)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !317, file: !31, line: 934, baseType: !1060, size: 192, offset: 576)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !317, file: !31, line: 935, baseType: !495, size: 64, offset: 768)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !317, file: !31, line: 936, baseType: !2965, size: 192, offset: 832)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2965, file: !31, line: 886, baseType: !2776)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2965, file: !31, line: 887, baseType: !1358, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2965, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2965, file: !31, line: 889, baseType: !399, size: 32, offset: 96)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2965, file: !31, line: 889, baseType: !399, size: 32, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2965, file: !31, line: 890, baseType: !223, size: 32, offset: 160)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !317, file: !31, line: 937, baseType: !1434, size: 64, offset: 1024)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !317, file: !31, line: 938, baseType: !2975, size: 256, offset: 1088)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2976)
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2982}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2975, file: !31, line: 897, baseType: !288, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2975, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2975, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2975, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2975, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2975, file: !31, line: 904, baseType: !495, size: 64, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !317, file: !31, line: 940, baseType: !385, size: 64, offset: 1344)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !317, file: !31, line: 945, baseType: !168, size: 64, offset: 1408)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !317, file: !31, line: 949, baseType: !184, size: 128, offset: 1472)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !317, file: !31, line: 950, baseType: !184, size: 128, offset: 1600)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !317, file: !31, line: 952, baseType: !701, size: 64, offset: 1728)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !317, file: !31, line: 953, baseType: !876, size: 32, offset: 1792)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !317, file: !31, line: 954, baseType: !876, size: 32, offset: 1824)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !307, file: !264, line: 174, baseType: !313, size: 64, offset: 320)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !307, file: !264, line: 176, baseType: !2992, size: 64, offset: 384)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!223, !316, !190, !306, !948}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !295, file: !264, line: 90, baseType: !290, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !295, file: !264, line: 91, baseType: !2997, size: 64, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !254, file: !155, line: 143, baseType: !2999, size: 64, offset: 256)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!3002, !190}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3004)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !3005)
!3005 = !{!3006, !3007, !3011, !3015, !3023, !3027}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3004, file: !48, line: 40, baseType: !47, size: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3004, file: !48, line: 41, baseType: !3008, size: 64, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!454}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3004, file: !48, line: 42, baseType: !3012, size: 64, offset: 128)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!168}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3004, file: !48, line: 43, baseType: !3016, size: 64, offset: 192)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!3019, !3021}
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3004, file: !48, line: 44, baseType: !3024, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!3019}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3004, file: !48, line: 45, baseType: !432, size: 64, offset: 320)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !254, file: !155, line: 144, baseType: !3029, size: 64, offset: 320)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{!3019, !190}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !254, file: !155, line: 145, baseType: !3033, size: 64, offset: 384)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null, !190, !3036, !3037}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !177, file: !155, line: 70, baseType: !3039, size: 64, offset: 384)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !583, line: 123, size: 1024, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3170, !3171, !3172, !3173, !3174}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3040, file: !583, line: 124, baseType: !714, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3040, file: !583, line: 125, baseType: !714, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3040, file: !583, line: 135, baseType: !3039, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3040, file: !583, line: 136, baseType: !180, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3040, file: !583, line: 138, baseType: !727, size: 192, align: 64, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3040, file: !583, line: 140, baseType: !3019, size: 64, offset: 384)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3040, file: !583, line: 141, baseType: !7, size: 32, offset: 448)
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !3040, file: !583, line: 142, baseType: !3050, size: 256, offset: 512)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3040, file: !583, line: 142, size: 256, elements: !3051)
!3051 = !{!3052, !3098, !3102}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3050, file: !583, line: 143, baseType: !3053, size: 192)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !583, line: 91, size: 192, elements: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3053, file: !583, line: 92, baseType: !288, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3053, file: !583, line: 94, baseType: !723, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3053, file: !583, line: 100, baseType: !3058, size: 64, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !583, line: 180, size: 704, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3070, !3071, !3072, !3096, !3097}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3059, file: !583, line: 182, baseType: !3039, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3059, file: !583, line: 183, baseType: !7, size: 32, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3059, file: !583, line: 186, baseType: !3064, size: 192, offset: 128)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3065, line: 19, size: 192, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3066 = !{!3067, !3068, !3069}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3064, file: !3065, line: 20, baseType: !706, size: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3064, file: !3065, line: 21, baseType: !7, size: 32, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3064, file: !3065, line: 22, baseType: !7, size: 32, offset: 160)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3059, file: !583, line: 187, baseType: !379, size: 32, offset: 320)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3059, file: !583, line: 188, baseType: !379, size: 32, offset: 352)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3059, file: !583, line: 189, baseType: !3073, size: 64, offset: 384)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !583, line: 168, size: 320, elements: !3075)
!3075 = !{!3076, !3080, !3084, !3088, !3092}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3074, file: !583, line: 169, baseType: !3077, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!223, !678, !3058}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3074, file: !583, line: 171, baseType: !3081, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!223, !3039, !180, !279}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3074, file: !583, line: 173, baseType: !3085, size: 64, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!223, !3039}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3074, file: !583, line: 174, baseType: !3089, size: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!223, !3039, !3039, !180}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3074, file: !583, line: 176, baseType: !3093, size: 64, offset: 256)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!223, !678, !3039, !3058}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3059, file: !583, line: 192, baseType: !184, size: 128, offset: 448)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3059, file: !583, line: 194, baseType: !1368, size: 128, offset: 576)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3050, file: !583, line: 144, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !583, line: 103, size: 64, elements: !3100)
!3100 = !{!3101}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3099, file: !583, line: 104, baseType: !3039, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3050, file: !583, line: 145, baseType: !3103, size: 256)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !583, line: 107, size: 256, elements: !3104)
!3104 = !{!3105, !3165, !3168, !3169}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3103, file: !583, line: 108, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3108)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !583, line: 217, size: 768, elements: !3109)
!3109 = !{!3110, !3130, !3134, !3138, !3142, !3146, !3150, !3154, !3155, !3156, !3157, !3161}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3108, file: !583, line: 222, baseType: !3111, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!223, !3114}
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !583, line: 197, size: 1088, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3115, file: !583, line: 199, baseType: !3039, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3115, file: !583, line: 200, baseType: !316, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3115, file: !583, line: 201, baseType: !678, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3115, file: !583, line: 202, baseType: !168, size: 64, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3115, file: !583, line: 205, baseType: !1060, size: 192, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3115, file: !583, line: 206, baseType: !1060, size: 192, offset: 448)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3115, file: !583, line: 207, baseType: !223, size: 32, offset: 640)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3115, file: !583, line: 208, baseType: !184, size: 128, offset: 704)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3115, file: !583, line: 209, baseType: !239, size: 64, offset: 832)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3115, file: !583, line: 211, baseType: !285, size: 64, offset: 896)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3115, file: !583, line: 212, baseType: !454, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3115, file: !583, line: 213, baseType: !454, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3115, file: !583, line: 214, baseType: !976, size: 64, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3108, file: !583, line: 223, baseType: !3131, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !3114}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3108, file: !583, line: 236, baseType: !3135, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!223, !678, !168}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3108, file: !583, line: 238, baseType: !3139, size: 64, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!168, !678, !2689}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3108, file: !583, line: 239, baseType: !3143, size: 64, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!168, !678, !168, !2689}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3108, file: !583, line: 240, baseType: !3147, size: 64, offset: 320)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{null, !678, !168}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3108, file: !583, line: 242, baseType: !3151, size: 64, offset: 384)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!270, !3114, !239, !285, !495}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3108, file: !583, line: 252, baseType: !285, size: 64, offset: 448)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3108, file: !583, line: 259, baseType: !454, size: 8, offset: 512)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3108, file: !583, line: 260, baseType: !3151, size: 64, offset: 576)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3108, file: !583, line: 263, baseType: !3158, size: 64, offset: 640)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!2718, !3114, !2720}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3108, file: !583, line: 266, baseType: !3162, size: 64, offset: 704)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!223, !3114, !948}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3103, file: !583, line: 109, baseType: !3166, size: 64, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !583, line: 31, flags: DIFlagFwdDecl)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3103, file: !583, line: 110, baseType: !495, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3103, file: !583, line: 111, baseType: !3039, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3040, file: !583, line: 148, baseType: !168, size: 64, offset: 768)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3040, file: !583, line: 154, baseType: !385, size: 64, offset: 832)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3040, file: !583, line: 156, baseType: !280, size: 16, offset: 896)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3040, file: !583, line: 157, baseType: !279, size: 16, offset: 912)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3040, file: !583, line: 158, baseType: !3175, size: 64, offset: 960)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !583, line: 32, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !177, file: !155, line: 71, baseType: !3178, size: 32, offset: 448)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3179, line: 19, size: 32, elements: !3180)
!3179 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3180 = !{!3181}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3178, file: !3179, line: 20, baseType: !1117, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !177, file: !155, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !177, file: !155, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !177, file: !155, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !177, file: !155, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !177, file: !155, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !174, file: !60, line: 463, baseType: !173, size: 64, offset: 512)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !174, file: !60, line: 465, baseType: !3189, size: 64, offset: 576)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !174, file: !60, line: 467, baseType: !180, size: 64, offset: 640)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !174, file: !60, line: 468, baseType: !3193, size: 64, offset: 704)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3195)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3196)
!3196 = !{!3197, !3198, !3199, !3203, !3208, !3212}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3195, file: !60, line: 88, baseType: !180, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3195, file: !60, line: 89, baseType: !292, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3195, file: !60, line: 90, baseType: !3200, size: 64, offset: 128)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!223, !173, !234}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3195, file: !60, line: 91, baseType: !3204, size: 64, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!239, !173, !3207, !3036, !3037}
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3195, file: !60, line: 93, baseType: !3209, size: 64, offset: 256)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !173}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3195, file: !60, line: 95, baseType: !3213, size: 64, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3215)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3216)
!3216 = !{!3217, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3215, file: !67, line: 279, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!223, !173}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3215, file: !67, line: 280, baseType: !3209, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3215, file: !67, line: 281, baseType: !3218, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3215, file: !67, line: 282, baseType: !3218, size: 64, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3215, file: !67, line: 283, baseType: !3218, size: 64, offset: 256)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3215, file: !67, line: 284, baseType: !3218, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3215, file: !67, line: 285, baseType: !3218, size: 64, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3215, file: !67, line: 286, baseType: !3218, size: 64, offset: 448)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3215, file: !67, line: 287, baseType: !3218, size: 64, offset: 512)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3215, file: !67, line: 288, baseType: !3218, size: 64, offset: 576)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3215, file: !67, line: 289, baseType: !3218, size: 64, offset: 640)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3215, file: !67, line: 290, baseType: !3218, size: 64, offset: 704)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3215, file: !67, line: 291, baseType: !3218, size: 64, offset: 768)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3215, file: !67, line: 292, baseType: !3218, size: 64, offset: 832)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3215, file: !67, line: 293, baseType: !3218, size: 64, offset: 896)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3215, file: !67, line: 294, baseType: !3218, size: 64, offset: 960)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3215, file: !67, line: 295, baseType: !3218, size: 64, offset: 1024)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3215, file: !67, line: 296, baseType: !3218, size: 64, offset: 1088)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3215, file: !67, line: 297, baseType: !3218, size: 64, offset: 1152)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3215, file: !67, line: 298, baseType: !3218, size: 64, offset: 1216)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3215, file: !67, line: 299, baseType: !3218, size: 64, offset: 1280)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3215, file: !67, line: 300, baseType: !3218, size: 64, offset: 1344)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3215, file: !67, line: 301, baseType: !3218, size: 64, offset: 1408)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !174, file: !60, line: 470, baseType: !3244, size: 64, offset: 768)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3246, line: 82, size: 1408, elements: !3247)
!3246 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3329, !3332, !3333}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3245, file: !3246, line: 83, baseType: !180, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3245, file: !3246, line: 84, baseType: !180, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3245, file: !3246, line: 85, baseType: !173, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3245, file: !3246, line: 86, baseType: !292, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3245, file: !3246, line: 87, baseType: !292, size: 64, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3245, file: !3246, line: 88, baseType: !292, size: 64, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3245, file: !3246, line: 90, baseType: !3255, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!223, !173, !3258}
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264, !3265, !3266, !3267, !3280, !3293, !3294, !3295, !3296, !3297, !3305, !3306, !3307, !3308, !3309, !3310}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3259, file: !54, line: 96, baseType: !180, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3259, file: !54, line: 97, baseType: !3244, size: 64, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3259, file: !54, line: 99, baseType: !597, size: 64, offset: 128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3259, file: !54, line: 100, baseType: !180, size: 64, offset: 192)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3259, file: !54, line: 102, baseType: !454, size: 8, offset: 256)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3259, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3259, file: !54, line: 105, baseType: !3268, size: 64, offset: 320)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3270)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3271, line: 262, size: 1600, elements: !3272)
!3271 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3272 = !{!3273, !3274, !3275, !3279}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3270, file: !3271, line: 263, baseType: !2513, size: 256)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3270, file: !3271, line: 264, baseType: !2513, size: 256, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3270, file: !3271, line: 265, baseType: !3276, size: 1024, offset: 512)
!3276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1024, elements: !3277)
!3277 = !{!3278}
!3278 = !DISubrange(count: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3270, file: !3271, line: 266, baseType: !3019, size: 64, offset: 1536)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3259, file: !54, line: 106, baseType: !3281, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3283)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3271, line: 210, size: 256, elements: !3284)
!3284 = !{!3285, !3289, !3291, !3292}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3283, file: !3271, line: 211, baseType: !3286, size: 72)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1240, size: 72, elements: !3287)
!3287 = !{!3288}
!3288 = !DISubrange(count: 9)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3283, file: !3271, line: 212, baseType: !3290, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3271, line: 14, baseType: !288)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3283, file: !3271, line: 213, baseType: !381, size: 32, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3283, file: !3271, line: 214, baseType: !381, size: 32, offset: 224)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3259, file: !54, line: 108, baseType: !3218, size: 64, offset: 448)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3259, file: !54, line: 109, baseType: !3209, size: 64, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3259, file: !54, line: 110, baseType: !3218, size: 64, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3259, file: !54, line: 111, baseType: !3209, size: 64, offset: 640)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3259, file: !54, line: 112, baseType: !3298, size: 64, offset: 704)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!223, !173, !3301}
!3301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3302)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3303)
!3303 = !{!3304}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3302, file: !67, line: 51, baseType: !223, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3259, file: !54, line: 113, baseType: !3218, size: 64, offset: 768)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3259, file: !54, line: 114, baseType: !292, size: 64, offset: 832)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3259, file: !54, line: 115, baseType: !292, size: 64, offset: 896)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3259, file: !54, line: 117, baseType: !3213, size: 64, offset: 960)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3259, file: !54, line: 118, baseType: !3209, size: 64, offset: 1024)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3259, file: !54, line: 120, baseType: !3311, size: 64, offset: 1088)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3245, file: !3246, line: 91, baseType: !3200, size: 64, offset: 448)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3245, file: !3246, line: 92, baseType: !3218, size: 64, offset: 512)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3245, file: !3246, line: 93, baseType: !3209, size: 64, offset: 576)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3245, file: !3246, line: 94, baseType: !3218, size: 64, offset: 640)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3245, file: !3246, line: 95, baseType: !3209, size: 64, offset: 704)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3245, file: !3246, line: 97, baseType: !3218, size: 64, offset: 768)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3245, file: !3246, line: 98, baseType: !3218, size: 64, offset: 832)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3245, file: !3246, line: 100, baseType: !3298, size: 64, offset: 896)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3245, file: !3246, line: 101, baseType: !3218, size: 64, offset: 960)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3245, file: !3246, line: 103, baseType: !3218, size: 64, offset: 1024)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3245, file: !3246, line: 105, baseType: !3218, size: 64, offset: 1088)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3245, file: !3246, line: 107, baseType: !3213, size: 64, offset: 1152)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3245, file: !3246, line: 109, baseType: !3326, size: 64, offset: 1216)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3328)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3246, line: 109, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3245, file: !3246, line: 111, baseType: !3330, size: 64, offset: 1280)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3246, line: 111, flags: DIFlagFwdDecl)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3245, file: !3246, line: 112, baseType: !612, offset: 1344)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3245, file: !3246, line: 114, baseType: !454, size: 8, offset: 1344)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !174, file: !60, line: 471, baseType: !3258, size: 64, offset: 832)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !174, file: !60, line: 473, baseType: !168, size: 64, offset: 896)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !174, file: !60, line: 475, baseType: !168, size: 64, offset: 960)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !174, file: !60, line: 480, baseType: !1060, size: 192, offset: 1024)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !174, file: !60, line: 484, baseType: !3339, size: 576, offset: 1216)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3340)
!3340 = !{!3341, !3342, !3343, !3344, !3345, !3346}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3339, file: !60, line: 362, baseType: !184, size: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3339, file: !60, line: 363, baseType: !184, size: 128, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3339, file: !60, line: 364, baseType: !184, size: 128, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3339, file: !60, line: 365, baseType: !184, size: 128, offset: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3339, file: !60, line: 366, baseType: !454, size: 8, offset: 512)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3339, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !174, file: !60, line: 485, baseType: !3348, size: 2304, offset: 1792)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3445, !3449}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3348, file: !67, line: 566, baseType: !3301, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3348, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3348, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3348, file: !67, line: 569, baseType: !454, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3348, file: !67, line: 570, baseType: !454, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3348, file: !67, line: 571, baseType: !454, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3348, file: !67, line: 572, baseType: !454, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3348, file: !67, line: 573, baseType: !454, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3348, file: !67, line: 574, baseType: !454, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3348, file: !67, line: 575, baseType: !454, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3348, file: !67, line: 576, baseType: !454, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3348, file: !67, line: 577, baseType: !379, size: 32, offset: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3348, file: !67, line: 578, baseType: !197, offset: 96)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3348, file: !67, line: 580, baseType: !184, size: 128, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3348, file: !67, line: 581, baseType: !1389, size: 192, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3348, file: !67, line: 582, baseType: !3366, size: 64, offset: 448)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3368, line: 43, size: 1472, elements: !3369)
!3368 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3377, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3367, file: !3368, line: 44, baseType: !180, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3367, file: !3368, line: 45, baseType: !223, size: 32, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3367, file: !3368, line: 46, baseType: !184, size: 128, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3367, file: !3368, line: 47, baseType: !197, offset: 256)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3367, file: !3368, line: 48, baseType: !3375, size: 64, offset: 256)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3367, file: !3368, line: 49, baseType: !3378, size: 320, offset: 320)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3379, line: 11, size: 320, elements: !3380)
!3379 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3380 = !{!3381, !3382, !3383, !3388}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3378, file: !3379, line: 16, baseType: !606, size: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3378, file: !3379, line: 17, baseType: !288, size: 64, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3378, file: !3379, line: 18, baseType: !3384, size: 64, offset: 192)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{null, !3387}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3378, file: !3379, line: 19, baseType: !379, size: 32, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3367, file: !3368, line: 50, baseType: !288, size: 64, offset: 640)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3367, file: !3368, line: 51, baseType: !1187, size: 64, offset: 704)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3367, file: !3368, line: 52, baseType: !1187, size: 64, offset: 768)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3367, file: !3368, line: 53, baseType: !1187, size: 64, offset: 832)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3367, file: !3368, line: 54, baseType: !1187, size: 64, offset: 896)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3367, file: !3368, line: 55, baseType: !1187, size: 64, offset: 960)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3367, file: !3368, line: 56, baseType: !288, size: 64, offset: 1024)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3367, file: !3368, line: 57, baseType: !288, size: 64, offset: 1088)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3367, file: !3368, line: 58, baseType: !288, size: 64, offset: 1152)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3367, file: !3368, line: 59, baseType: !288, size: 64, offset: 1216)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3367, file: !3368, line: 60, baseType: !288, size: 64, offset: 1280)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3367, file: !3368, line: 61, baseType: !173, size: 64, offset: 1344)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3367, file: !3368, line: 62, baseType: !454, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3367, file: !3368, line: 63, baseType: !454, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3348, file: !67, line: 583, baseType: !454, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3348, file: !67, line: 584, baseType: !454, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3348, file: !67, line: 585, baseType: !454, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3348, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3348, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3348, file: !67, line: 592, baseType: !1179, size: 512, offset: 576)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3348, file: !67, line: 593, baseType: !385, size: 64, offset: 1088)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3348, file: !67, line: 594, baseType: !1845, size: 256, offset: 1152)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3348, file: !67, line: 595, baseType: !1368, size: 128, offset: 1408)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3348, file: !67, line: 596, baseType: !3375, size: 64, offset: 1536)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3348, file: !67, line: 597, baseType: !714, size: 32, offset: 1600)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3348, file: !67, line: 598, baseType: !714, size: 32, offset: 1632)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3348, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3348, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3348, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3348, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3348, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3348, file: !67, line: 604, baseType: !454, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3348, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3348, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3348, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3348, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3348, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3348, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3348, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3348, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3348, file: !67, line: 613, baseType: !223, size: 32, offset: 1792)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3348, file: !67, line: 614, baseType: !223, size: 32, offset: 1824)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3348, file: !67, line: 615, baseType: !385, size: 64, offset: 1856)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3348, file: !67, line: 616, baseType: !385, size: 64, offset: 1920)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3348, file: !67, line: 617, baseType: !385, size: 64, offset: 1984)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3348, file: !67, line: 618, baseType: !385, size: 64, offset: 2048)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3348, file: !67, line: 620, baseType: !3436, size: 64, offset: 2112)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3438)
!3438 = !{!3439, !3440, !3441, !3442}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3437, file: !67, line: 537, baseType: !197)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3437, file: !67, line: 538, baseType: !7, size: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3437, file: !67, line: 540, baseType: !184, size: 128, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3437, file: !67, line: 543, baseType: !3443, size: 64, offset: 192)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3348, file: !67, line: 621, baseType: !3446, size: 64, offset: 2176)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{null, !173, !1331}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3348, file: !67, line: 622, baseType: !3450, size: 64, offset: 2240)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !174, file: !60, line: 486, baseType: !3453, size: 64, offset: 4096)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3462, !3463, !3464}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3454, file: !67, line: 643, baseType: !3215, size: 1472)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3454, file: !67, line: 644, baseType: !3218, size: 64, offset: 1472)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3454, file: !67, line: 645, baseType: !3459, size: 64, offset: 1536)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{null, !173, !454}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3454, file: !67, line: 646, baseType: !3218, size: 64, offset: 1600)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3454, file: !67, line: 647, baseType: !3209, size: 64, offset: 1664)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3454, file: !67, line: 648, baseType: !3209, size: 64, offset: 1728)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !174, file: !60, line: 493, baseType: !3466, size: 64, offset: 4160)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !60, line: 493, flags: DIFlagFwdDecl)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !174, file: !60, line: 499, baseType: !184, size: 128, offset: 4224)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !174, file: !60, line: 502, baseType: !3470, size: 64, offset: 4352)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3472)
!3472 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !174, file: !60, line: 504, baseType: !3474, size: 64, offset: 4416)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !174, file: !60, line: 505, baseType: !385, size: 64, offset: 4480)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !174, file: !60, line: 510, baseType: !385, size: 64, offset: 4544)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !174, file: !60, line: 511, baseType: !3478, size: 64, offset: 4608)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3480)
!3480 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !174, file: !60, line: 513, baseType: !3482, size: 64, offset: 4672)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3484)
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3483, file: !60, line: 293, baseType: !7, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3483, file: !60, line: 294, baseType: !288, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !174, file: !60, line: 515, baseType: !184, size: 128, offset: 4736)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !174, file: !60, line: 526, baseType: !3489, offset: 4864)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3490, line: 5, elements: !211)
!3490 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !174, file: !60, line: 528, baseType: !3492, size: 64, offset: 4864)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3494, line: 51, size: 1344, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3495 = !{!3496, !3497, !3499, !3500, !3590, !3599, !3600, !3601, !3602, !3603, !3604, !3605}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !3494, line: 52, baseType: !180, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3493, file: !3494, line: 53, baseType: !3498, size: 32, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3494, line: 28, baseType: !379)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3493, file: !3494, line: 54, baseType: !180, size: 64, offset: 128)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3493, file: !3494, line: 55, baseType: !3501, size: 192, offset: 192)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3502, line: 17, size: 192, elements: !3503)
!3502 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3503 = !{!3504, !3506, !3589}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3501, file: !3502, line: 18, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3501, file: !3502, line: 19, baseType: !3507, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3509)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3502, line: 110, size: 1152, elements: !3510)
!3510 = !{!3511, !3515, !3519, !3525, !3531, !3535, !3539, !3544, !3548, !3549, !3553, !3557, !3561, !3572, !3573, !3574, !3575, !3585}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3509, file: !3502, line: 111, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!3505, !3505}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3509, file: !3502, line: 112, baseType: !3516, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{null, !3505}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3509, file: !3502, line: 113, baseType: !3520, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!454, !3523}
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3501)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3509, file: !3502, line: 114, baseType: !3526, size: 64, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!3019, !3523, !3529}
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3509, file: !3502, line: 116, baseType: !3532, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!454, !3523, !180}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3509, file: !3502, line: 118, baseType: !3536, size: 64, offset: 320)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!223, !3523, !180, !7, !168, !285}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3509, file: !3502, line: 123, baseType: !3540, size: 64, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!223, !3523, !180, !3543, !285}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3509, file: !3502, line: 126, baseType: !3545, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!180, !3523}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3509, file: !3502, line: 127, baseType: !3545, size: 64, offset: 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3509, file: !3502, line: 128, baseType: !3550, size: 64, offset: 576)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!3505, !3523}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3509, file: !3502, line: 130, baseType: !3554, size: 64, offset: 640)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!3505, !3523, !3505}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3509, file: !3502, line: 133, baseType: !3558, size: 64, offset: 704)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!3505, !3523, !180}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3509, file: !3502, line: 135, baseType: !3562, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!223, !3523, !180, !180, !7, !7, !3565}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3502, line: 43, size: 640, elements: !3567)
!3567 = !{!3568, !3569, !3570}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3566, file: !3502, line: 44, baseType: !3505, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3566, file: !3502, line: 45, baseType: !7, size: 32, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3566, file: !3502, line: 46, baseType: !3571, size: 512, offset: 128)
!3571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 512, elements: !1217)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3509, file: !3502, line: 140, baseType: !3554, size: 64, offset: 832)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3509, file: !3502, line: 143, baseType: !3550, size: 64, offset: 896)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3509, file: !3502, line: 145, baseType: !3512, size: 64, offset: 960)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3509, file: !3502, line: 146, baseType: !3576, size: 64, offset: 1024)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!223, !3523, !3579}
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3502, line: 29, size: 128, elements: !3581)
!3581 = !{!3582, !3583, !3584}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3580, file: !3502, line: 30, baseType: !7, size: 32)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3580, file: !3502, line: 31, baseType: !7, size: 32, offset: 32)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3580, file: !3502, line: 32, baseType: !3523, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3509, file: !3502, line: 148, baseType: !3586, size: 64, offset: 1088)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!223, !3523, !173}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3501, file: !3502, line: 20, baseType: !173, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3493, file: !3494, line: 57, baseType: !3591, size: 64, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3494, line: 31, size: 704, elements: !3593)
!3593 = !{!3594, !3595, !3596, !3597, !3598}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3592, file: !3494, line: 32, baseType: !239, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3592, file: !3494, line: 33, baseType: !223, size: 32, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3592, file: !3494, line: 34, baseType: !168, size: 64, offset: 128)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3592, file: !3494, line: 35, baseType: !3591, size: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3592, file: !3494, line: 43, baseType: !307, size: 448, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3493, file: !3494, line: 58, baseType: !3591, size: 64, offset: 448)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3493, file: !3494, line: 59, baseType: !3492, size: 64, offset: 512)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3493, file: !3494, line: 60, baseType: !3492, size: 64, offset: 576)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3493, file: !3494, line: 61, baseType: !3492, size: 64, offset: 640)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3493, file: !3494, line: 63, baseType: !177, size: 512, offset: 704)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3493, file: !3494, line: 65, baseType: !288, size: 64, offset: 1216)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3493, file: !3494, line: 66, baseType: !168, size: 64, offset: 1280)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !174, file: !60, line: 529, baseType: !3505, size: 64, offset: 4928)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !174, file: !60, line: 534, baseType: !477, size: 32, offset: 4992)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !174, file: !60, line: 535, baseType: !379, size: 32, offset: 5024)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !174, file: !60, line: 537, baseType: !197, offset: 5056)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !174, file: !60, line: 538, baseType: !184, size: 128, offset: 5056)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !174, file: !60, line: 540, baseType: !3612, size: 64, offset: 5184)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3614, line: 54, size: 960, elements: !3615)
!3614 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621, !3622, !3626, !3630, !3631, !3632, !3633, !3637, !3641, !3642}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3613, file: !3614, line: 55, baseType: !180, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3613, file: !3614, line: 56, baseType: !597, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3613, file: !3614, line: 58, baseType: !292, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3613, file: !3614, line: 59, baseType: !292, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3613, file: !3614, line: 60, baseType: !190, size: 64, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3613, file: !3614, line: 62, baseType: !3200, size: 64, offset: 320)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3613, file: !3614, line: 63, baseType: !3623, size: 64, offset: 384)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!239, !173, !3207}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3613, file: !3614, line: 65, baseType: !3627, size: 64, offset: 448)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !3612}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3613, file: !3614, line: 66, baseType: !3209, size: 64, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3613, file: !3614, line: 68, baseType: !3218, size: 64, offset: 576)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3613, file: !3614, line: 70, baseType: !3002, size: 64, offset: 640)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3613, file: !3614, line: 71, baseType: !3634, size: 64, offset: 704)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!3019, !173}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3613, file: !3614, line: 73, baseType: !3638, size: 64, offset: 768)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !173, !3036, !3037}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3613, file: !3614, line: 75, baseType: !3213, size: 64, offset: 832)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3613, file: !3614, line: 77, baseType: !3330, size: 64, offset: 896)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !174, file: !60, line: 541, baseType: !292, size: 64, offset: 5248)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !174, file: !60, line: 543, baseType: !3209, size: 64, offset: 5312)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !174, file: !60, line: 544, baseType: !3646, size: 64, offset: 5376)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !174, file: !60, line: 545, baseType: !3649, size: 64, offset: 5440)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !174, file: !60, line: 547, baseType: !454, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !174, file: !60, line: 548, baseType: !454, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !174, file: !60, line: 549, baseType: !454, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !174, file: !60, line: 550, baseType: !454, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !170, file: !81, line: 90, baseType: !180, size: 64, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !170, file: !81, line: 91, baseType: !7, size: 32, offset: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !81, line: 93, baseType: !80, size: 32, offset: 160)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "last_event", scope: !170, file: !81, line: 94, baseType: !86, size: 32, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "otg", scope: !170, file: !81, line: 96, baseType: !3660, size: 64, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_otg", file: !81, line: 67, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "io_dev", scope: !170, file: !81, line: 98, baseType: !173, size: 64, offset: 320)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "io_ops", scope: !170, file: !81, line: 99, baseType: !3664, size: 64, offset: 384)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_io_ops", file: !81, line: 72, size: 128, elements: !3666)
!3666 = !{!3667, !3671}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3665, file: !81, line: 73, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!223, !169, !379}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3665, file: !81, line: 74, baseType: !3672, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!223, !169, !379, !379}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "io_priv", scope: !170, file: !81, line: 100, baseType: !168, size: 64, offset: 448)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "edev", scope: !170, file: !81, line: 103, baseType: !3677, size: 64, offset: 512)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "extcon_dev", file: !3679, line: 166, flags: DIFlagFwdDecl)
!3679 = !DIFile(filename: "./include/linux/extcon.h", directory: "/home/lizy2001/genbc/linux")
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "id_edev", scope: !170, file: !81, line: 104, baseType: !3677, size: 64, offset: 576)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "vbus_nb", scope: !170, file: !81, line: 105, baseType: !3682, size: 192, offset: 640)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !3683, line: 54, size: 192, elements: !3684)
!3683 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!3684 = !{!3685, !3691, !3692}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !3682, file: !3683, line: 55, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !3683, line: 51, baseType: !3687)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!223, !3690, !288, !168}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3682, file: !3683, line: 56, baseType: !3690, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3682, file: !3683, line: 57, baseType: !223, size: 32, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "id_nb", scope: !170, file: !81, line: 106, baseType: !3682, size: 192, offset: 832)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "type_nb", scope: !170, file: !81, line: 107, baseType: !3682, size: 192, offset: 1024)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "chg_type", scope: !170, file: !81, line: 110, baseType: !93, size: 32, offset: 1216)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "chg_state", scope: !170, file: !81, line: 111, baseType: !101, size: 32, offset: 1248)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "chg_cur", scope: !170, file: !81, line: 112, baseType: !3698, size: 256, offset: 1280)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_charger_current", file: !81, line: 77, size: 256, elements: !3699)
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_min", scope: !3698, file: !81, line: 78, baseType: !7, size: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "sdp_max", scope: !3698, file: !81, line: 79, baseType: !7, size: 32, offset: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dcp_min", scope: !3698, file: !81, line: 80, baseType: !7, size: 32, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dcp_max", scope: !3698, file: !81, line: 81, baseType: !7, size: 32, offset: 96)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "cdp_min", scope: !3698, file: !81, line: 82, baseType: !7, size: 32, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "cdp_max", scope: !3698, file: !81, line: 83, baseType: !7, size: 32, offset: 160)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "aca_min", scope: !3698, file: !81, line: 84, baseType: !7, size: 32, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "aca_max", scope: !3698, file: !81, line: 85, baseType: !7, size: 32, offset: 224)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "chg_work", scope: !170, file: !81, line: 113, baseType: !1845, size: 256, offset: 1536)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "notifier", scope: !170, file: !81, line: 116, baseType: !3710, size: 64, offset: 1792)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_notifier_head", file: !3683, line: 60, size: 64, elements: !3711)
!3711 = !{!3712, !3713}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3710, file: !3683, line: 61, baseType: !197)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3710, file: !3683, line: 62, baseType: !3690, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "port_status", scope: !170, file: !81, line: 119, baseType: !826, size: 16, offset: 1856)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "port_change", scope: !170, file: !81, line: 120, baseType: !826, size: 16, offset: 1872)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !170, file: !81, line: 123, baseType: !184, size: 128, offset: 1920)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !170, file: !81, line: 126, baseType: !3718, size: 64, offset: 2048)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!223, !169}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !170, file: !81, line: 127, baseType: !3722, size: 64, offset: 2112)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{null, !169}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "set_vbus", scope: !170, file: !81, line: 130, baseType: !3726, size: 64, offset: 2176)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!223, !169, !223}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "set_power", scope: !170, file: !81, line: 133, baseType: !3730, size: 64, offset: 2240)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!223, !169, !7}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "set_suspend", scope: !170, file: !81, line: 137, baseType: !3726, size: 64, offset: 2304)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "set_wakeup", scope: !170, file: !81, line: 145, baseType: !3735, size: 64, offset: 2368)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!223, !169, !454}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "notify_connect", scope: !170, file: !81, line: 148, baseType: !3739, size: 64, offset: 2432)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!223, !169, !106}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "notify_disconnect", scope: !170, file: !81, line: 150, baseType: !3739, size: 64, offset: 2496)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "charger_detect", scope: !170, file: !81, line: 157, baseType: !3744, size: 64, offset: 2560)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!93, !169}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !187)
!3750 = !{!3751, !0, !3756, !3758}
!3751 = !DIGlobalVariableExpression(var: !3752, expr: !DIExpression())
!3752 = distinct !DIGlobalVariable(name: "__warned", scope: !3753, file: !3, line: 594, type: !454, isLocal: true, isDefinition: true)
!3753 = distinct !DISubprogram(name: "devm_usb_put_phy", scope: !3, file: !3, line: 589, type: !3754, scopeLine: 590, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !173, !169}
!3756 = !DIGlobalVariableExpression(var: !3757, expr: !DIExpression())
!3757 = distinct !DIGlobalVariable(name: "phy_list", scope: !2, file: !3, line: 29, type: !184, isLocal: true, isDefinition: true)
!3758 = !DIGlobalVariableExpression(var: !3759, expr: !DIExpression())
!3759 = distinct !DIGlobalVariable(name: "usb_chger_type", scope: !2, file: !3, line: 37, type: !3760, isLocal: true, isDefinition: true)
!3760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3761, size: 320, elements: !3762)
!3761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!3762 = !{!3763}
!3763 = !DISubrange(count: 5)
!3764 = !{!"rsp"}
!3765 = !{i32 7, !"Dwarf Version", i32 4}
!3766 = !{i32 2, !"Debug Info Version", i32 3}
!3767 = !{i32 1, !"wchar_size", i32 2}
!3768 = !{i32 1, !"Code Model", i32 2}
!3769 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3770 = distinct !DISubprogram(name: "usb_phy_set_charger_current", scope: !3, file: !3, line: 193, type: !3771, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !169, !7}
!3773 = !DILocalVariable(name: "usb_phy", arg: 1, scope: !3770, file: !3, line: 193, type: !169)
!3774 = !DILocation(line: 193, column: 50, scope: !3770)
!3775 = !DILocalVariable(name: "mA", arg: 2, scope: !3770, file: !3, line: 193, type: !7)
!3776 = !DILocation(line: 193, column: 72, scope: !3770)
!3777 = !DILocation(line: 195, column: 10, scope: !3770)
!3778 = !DILocation(line: 195, column: 19, scope: !3770)
!3779 = !DILocation(line: 195, column: 2, scope: !3770)
!3780 = !DILocation(line: 197, column: 7, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 197, column: 7)
!3782 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 195, column: 29)
!3783 = !DILocation(line: 197, column: 16, scope: !3781)
!3784 = !DILocation(line: 197, column: 24, scope: !3781)
!3785 = !DILocation(line: 197, column: 35, scope: !3781)
!3786 = !DILocation(line: 197, column: 32, scope: !3781)
!3787 = !DILocation(line: 197, column: 7, scope: !3782)
!3788 = !DILocation(line: 198, column: 4, scope: !3781)
!3789 = !DILocation(line: 200, column: 31, scope: !3782)
!3790 = !DILocation(line: 200, column: 34, scope: !3782)
!3791 = !DILocation(line: 200, column: 30, scope: !3782)
!3792 = !DILocation(line: 201, column: 29, scope: !3782)
!3793 = !DILocation(line: 200, column: 3, scope: !3782)
!3794 = !DILocation(line: 200, column: 12, scope: !3782)
!3795 = !DILocation(line: 200, column: 20, scope: !3782)
!3796 = !DILocation(line: 200, column: 28, scope: !3782)
!3797 = !DILocation(line: 202, column: 3, scope: !3782)
!3798 = !DILocation(line: 204, column: 7, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 204, column: 7)
!3800 = !DILocation(line: 204, column: 16, scope: !3799)
!3801 = !DILocation(line: 204, column: 24, scope: !3799)
!3802 = !DILocation(line: 204, column: 35, scope: !3799)
!3803 = !DILocation(line: 204, column: 32, scope: !3799)
!3804 = !DILocation(line: 204, column: 7, scope: !3782)
!3805 = !DILocation(line: 205, column: 4, scope: !3799)
!3806 = !DILocation(line: 207, column: 31, scope: !3782)
!3807 = !DILocation(line: 207, column: 34, scope: !3782)
!3808 = !DILocation(line: 207, column: 30, scope: !3782)
!3809 = !DILocation(line: 208, column: 26, scope: !3782)
!3810 = !DILocation(line: 207, column: 3, scope: !3782)
!3811 = !DILocation(line: 207, column: 12, scope: !3782)
!3812 = !DILocation(line: 207, column: 20, scope: !3782)
!3813 = !DILocation(line: 207, column: 28, scope: !3782)
!3814 = !DILocation(line: 209, column: 3, scope: !3782)
!3815 = !DILocation(line: 211, column: 7, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 211, column: 7)
!3817 = !DILocation(line: 211, column: 16, scope: !3816)
!3818 = !DILocation(line: 211, column: 24, scope: !3816)
!3819 = !DILocation(line: 211, column: 35, scope: !3816)
!3820 = !DILocation(line: 211, column: 32, scope: !3816)
!3821 = !DILocation(line: 211, column: 7, scope: !3782)
!3822 = !DILocation(line: 212, column: 4, scope: !3816)
!3823 = !DILocation(line: 214, column: 31, scope: !3782)
!3824 = !DILocation(line: 214, column: 34, scope: !3782)
!3825 = !DILocation(line: 214, column: 30, scope: !3782)
!3826 = !DILocation(line: 215, column: 26, scope: !3782)
!3827 = !DILocation(line: 214, column: 3, scope: !3782)
!3828 = !DILocation(line: 214, column: 12, scope: !3782)
!3829 = !DILocation(line: 214, column: 20, scope: !3782)
!3830 = !DILocation(line: 214, column: 28, scope: !3782)
!3831 = !DILocation(line: 216, column: 3, scope: !3782)
!3832 = !DILocation(line: 218, column: 7, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 218, column: 7)
!3834 = !DILocation(line: 218, column: 16, scope: !3833)
!3835 = !DILocation(line: 218, column: 24, scope: !3833)
!3836 = !DILocation(line: 218, column: 35, scope: !3833)
!3837 = !DILocation(line: 218, column: 32, scope: !3833)
!3838 = !DILocation(line: 218, column: 7, scope: !3782)
!3839 = !DILocation(line: 219, column: 4, scope: !3833)
!3840 = !DILocation(line: 221, column: 31, scope: !3782)
!3841 = !DILocation(line: 221, column: 34, scope: !3782)
!3842 = !DILocation(line: 221, column: 30, scope: !3782)
!3843 = !DILocation(line: 222, column: 26, scope: !3782)
!3844 = !DILocation(line: 221, column: 3, scope: !3782)
!3845 = !DILocation(line: 221, column: 12, scope: !3782)
!3846 = !DILocation(line: 221, column: 20, scope: !3782)
!3847 = !DILocation(line: 221, column: 28, scope: !3782)
!3848 = !DILocation(line: 223, column: 3, scope: !3782)
!3849 = !DILocation(line: 225, column: 3, scope: !3782)
!3850 = !DILocation(line: 228, column: 17, scope: !3770)
!3851 = !DILocation(line: 228, column: 26, scope: !3770)
!3852 = !DILocation(line: 228, column: 2, scope: !3770)
!3853 = !DILocation(line: 229, column: 1, scope: !3770)
!3854 = distinct !DISubprogram(name: "schedule_work", scope: !122, file: !122, line: 566, type: !3855, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!454, !1854}
!3857 = !DILocalVariable(name: "work", arg: 1, scope: !3854, file: !122, line: 566, type: !1854)
!3858 = !DILocation(line: 566, column: 54, scope: !3854)
!3859 = !DILocation(line: 568, column: 20, scope: !3854)
!3860 = !DILocation(line: 568, column: 31, scope: !3854)
!3861 = !DILocation(line: 568, column: 9, scope: !3854)
!3862 = !DILocation(line: 568, column: 2, scope: !3854)
!3863 = distinct !DISubprogram(name: "usb_phy_get_charger_current", scope: !3, file: !3, line: 242, type: !3864, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{null, !169, !2496, !2496}
!3866 = !DILocalVariable(name: "usb_phy", arg: 1, scope: !3863, file: !3, line: 242, type: !169)
!3867 = !DILocation(line: 242, column: 50, scope: !3863)
!3868 = !DILocalVariable(name: "min", arg: 2, scope: !3863, file: !3, line: 243, type: !2496)
!3869 = !DILocation(line: 243, column: 20, scope: !3863)
!3870 = !DILocalVariable(name: "max", arg: 3, scope: !3863, file: !3, line: 243, type: !2496)
!3871 = !DILocation(line: 243, column: 39, scope: !3863)
!3872 = !DILocation(line: 245, column: 10, scope: !3863)
!3873 = !DILocation(line: 245, column: 19, scope: !3863)
!3874 = !DILocation(line: 245, column: 2, scope: !3863)
!3875 = !DILocation(line: 247, column: 10, scope: !3876)
!3876 = distinct !DILexicalBlock(scope: !3863, file: !3, line: 245, column: 29)
!3877 = !DILocation(line: 247, column: 19, scope: !3876)
!3878 = !DILocation(line: 247, column: 27, scope: !3876)
!3879 = !DILocation(line: 247, column: 4, scope: !3876)
!3880 = !DILocation(line: 247, column: 8, scope: !3876)
!3881 = !DILocation(line: 248, column: 10, scope: !3876)
!3882 = !DILocation(line: 248, column: 19, scope: !3876)
!3883 = !DILocation(line: 248, column: 27, scope: !3876)
!3884 = !DILocation(line: 248, column: 4, scope: !3876)
!3885 = !DILocation(line: 248, column: 8, scope: !3876)
!3886 = !DILocation(line: 249, column: 3, scope: !3876)
!3887 = !DILocation(line: 251, column: 10, scope: !3876)
!3888 = !DILocation(line: 251, column: 19, scope: !3876)
!3889 = !DILocation(line: 251, column: 27, scope: !3876)
!3890 = !DILocation(line: 251, column: 4, scope: !3876)
!3891 = !DILocation(line: 251, column: 8, scope: !3876)
!3892 = !DILocation(line: 252, column: 10, scope: !3876)
!3893 = !DILocation(line: 252, column: 19, scope: !3876)
!3894 = !DILocation(line: 252, column: 27, scope: !3876)
!3895 = !DILocation(line: 252, column: 4, scope: !3876)
!3896 = !DILocation(line: 252, column: 8, scope: !3876)
!3897 = !DILocation(line: 253, column: 3, scope: !3876)
!3898 = !DILocation(line: 255, column: 10, scope: !3876)
!3899 = !DILocation(line: 255, column: 19, scope: !3876)
!3900 = !DILocation(line: 255, column: 27, scope: !3876)
!3901 = !DILocation(line: 255, column: 4, scope: !3876)
!3902 = !DILocation(line: 255, column: 8, scope: !3876)
!3903 = !DILocation(line: 256, column: 10, scope: !3876)
!3904 = !DILocation(line: 256, column: 19, scope: !3876)
!3905 = !DILocation(line: 256, column: 27, scope: !3876)
!3906 = !DILocation(line: 256, column: 4, scope: !3876)
!3907 = !DILocation(line: 256, column: 8, scope: !3876)
!3908 = !DILocation(line: 257, column: 3, scope: !3876)
!3909 = !DILocation(line: 259, column: 10, scope: !3876)
!3910 = !DILocation(line: 259, column: 19, scope: !3876)
!3911 = !DILocation(line: 259, column: 27, scope: !3876)
!3912 = !DILocation(line: 259, column: 4, scope: !3876)
!3913 = !DILocation(line: 259, column: 8, scope: !3876)
!3914 = !DILocation(line: 260, column: 10, scope: !3876)
!3915 = !DILocation(line: 260, column: 19, scope: !3876)
!3916 = !DILocation(line: 260, column: 27, scope: !3876)
!3917 = !DILocation(line: 260, column: 4, scope: !3876)
!3918 = !DILocation(line: 260, column: 8, scope: !3876)
!3919 = !DILocation(line: 261, column: 3, scope: !3876)
!3920 = !DILocation(line: 263, column: 4, scope: !3876)
!3921 = !DILocation(line: 263, column: 8, scope: !3876)
!3922 = !DILocation(line: 264, column: 4, scope: !3876)
!3923 = !DILocation(line: 264, column: 8, scope: !3876)
!3924 = !DILocation(line: 265, column: 3, scope: !3876)
!3925 = !DILocation(line: 267, column: 1, scope: !3863)
!3926 = distinct !DISubprogram(name: "usb_phy_set_charger_state", scope: !3, file: !3, line: 279, type: !3927, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !169, !101}
!3929 = !DILocalVariable(name: "usb_phy", arg: 1, scope: !3926, file: !3, line: 279, type: !169)
!3930 = !DILocation(line: 279, column: 48, scope: !3926)
!3931 = !DILocalVariable(name: "state", arg: 2, scope: !3926, file: !3, line: 280, type: !101)
!3932 = !DILocation(line: 280, column: 34, scope: !3926)
!3933 = !DILocation(line: 282, column: 6, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 282, column: 6)
!3935 = !DILocation(line: 282, column: 15, scope: !3934)
!3936 = !DILocation(line: 282, column: 28, scope: !3934)
!3937 = !DILocation(line: 282, column: 25, scope: !3934)
!3938 = !DILocation(line: 282, column: 34, scope: !3934)
!3939 = !DILocation(line: 282, column: 38, scope: !3934)
!3940 = !DILocation(line: 282, column: 47, scope: !3934)
!3941 = !DILocation(line: 282, column: 6, scope: !3926)
!3942 = !DILocation(line: 283, column: 3, scope: !3934)
!3943 = !DILocation(line: 285, column: 23, scope: !3926)
!3944 = !DILocation(line: 285, column: 2, scope: !3926)
!3945 = !DILocation(line: 285, column: 11, scope: !3926)
!3946 = !DILocation(line: 285, column: 21, scope: !3926)
!3947 = !DILocation(line: 286, column: 6, scope: !3948)
!3948 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 286, column: 6)
!3949 = !DILocation(line: 286, column: 15, scope: !3948)
!3950 = !DILocation(line: 286, column: 25, scope: !3948)
!3951 = !DILocation(line: 286, column: 6, scope: !3926)
!3952 = !DILocation(line: 287, column: 23, scope: !3948)
!3953 = !DILocation(line: 287, column: 32, scope: !3948)
!3954 = !DILocation(line: 287, column: 47, scope: !3948)
!3955 = !DILocation(line: 287, column: 3, scope: !3948)
!3956 = !DILocation(line: 287, column: 12, scope: !3948)
!3957 = !DILocation(line: 287, column: 21, scope: !3948)
!3958 = !DILocation(line: 289, column: 3, scope: !3948)
!3959 = !DILocation(line: 289, column: 12, scope: !3948)
!3960 = !DILocation(line: 289, column: 21, scope: !3948)
!3961 = !DILocation(line: 291, column: 17, scope: !3926)
!3962 = !DILocation(line: 291, column: 26, scope: !3926)
!3963 = !DILocation(line: 291, column: 2, scope: !3926)
!3964 = !DILocation(line: 292, column: 1, scope: !3926)
!3965 = distinct !DISubprogram(name: "devm_usb_get_phy", scope: !3, file: !3, line: 426, type: !3966, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!169, !173, !80}
!3968 = !DILocalVariable(name: "dev", arg: 1, scope: !3965, file: !3, line: 426, type: !173)
!3969 = !DILocation(line: 426, column: 49, scope: !3965)
!3970 = !DILocalVariable(name: "type", arg: 2, scope: !3965, file: !3, line: 426, type: !80)
!3971 = !DILocation(line: 426, column: 72, scope: !3965)
!3972 = !DILocalVariable(name: "ptr", scope: !3965, file: !3, line: 428, type: !3747)
!3973 = !DILocation(line: 428, column: 19, scope: !3965)
!3974 = !DILocalVariable(name: "phy", scope: !3965, file: !3, line: 428, type: !169)
!3975 = !DILocation(line: 428, column: 25, scope: !3965)
!3976 = !DILocation(line: 430, column: 8, scope: !3965)
!3977 = !DILocation(line: 430, column: 6, scope: !3965)
!3978 = !DILocation(line: 431, column: 7, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 431, column: 6)
!3980 = !DILocation(line: 431, column: 6, scope: !3965)
!3981 = !DILocation(line: 432, column: 10, scope: !3979)
!3982 = !DILocation(line: 432, column: 3, scope: !3979)
!3983 = !DILocation(line: 434, column: 20, scope: !3965)
!3984 = !DILocation(line: 434, column: 8, scope: !3965)
!3985 = !DILocation(line: 434, column: 6, scope: !3965)
!3986 = !DILocation(line: 435, column: 14, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 435, column: 6)
!3988 = !DILocation(line: 435, column: 7, scope: !3987)
!3989 = !DILocation(line: 435, column: 6, scope: !3965)
!3990 = !DILocation(line: 436, column: 10, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 435, column: 20)
!3992 = !DILocation(line: 436, column: 4, scope: !3991)
!3993 = !DILocation(line: 436, column: 8, scope: !3991)
!3994 = !DILocation(line: 437, column: 14, scope: !3991)
!3995 = !DILocation(line: 437, column: 19, scope: !3991)
!3996 = !DILocation(line: 437, column: 3, scope: !3991)
!3997 = !DILocation(line: 438, column: 2, scope: !3991)
!3998 = !DILocation(line: 439, column: 15, scope: !3987)
!3999 = !DILocation(line: 439, column: 3, scope: !3987)
!4000 = !DILocation(line: 441, column: 9, scope: !3965)
!4001 = !DILocation(line: 441, column: 2, scope: !3965)
!4002 = !DILocation(line: 442, column: 1, scope: !3965)
!4003 = distinct !DISubprogram(name: "devres_alloc", scope: !60, file: !60, line: 178, type: !4004, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!168, !4006, !285, !166}
!4006 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !60, line: 165, baseType: !4007)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{null, !173, !168}
!4010 = !DILocalVariable(name: "release", arg: 1, scope: !4003, file: !60, line: 178, type: !4006)
!4011 = !DILocation(line: 178, column: 47, scope: !4003)
!4012 = !DILocalVariable(name: "size", arg: 2, scope: !4003, file: !60, line: 178, type: !285)
!4013 = !DILocation(line: 178, column: 63, scope: !4003)
!4014 = !DILocalVariable(name: "gfp", arg: 3, scope: !4003, file: !60, line: 178, type: !166)
!4015 = !DILocation(line: 178, column: 75, scope: !4003)
!4016 = !DILocation(line: 180, column: 27, scope: !4003)
!4017 = !DILocation(line: 180, column: 36, scope: !4003)
!4018 = !DILocation(line: 180, column: 42, scope: !4003)
!4019 = !DILocation(line: 180, column: 9, scope: !4003)
!4020 = !DILocation(line: 180, column: 2, scope: !4003)
!4021 = distinct !DISubprogram(name: "devm_usb_phy_release", scope: !3, file: !3, line: 295, type: !4008, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4022 = !DILocalVariable(name: "dev", arg: 1, scope: !4021, file: !3, line: 295, type: !173)
!4023 = !DILocation(line: 295, column: 49, scope: !4021)
!4024 = !DILocalVariable(name: "res", arg: 2, scope: !4021, file: !3, line: 295, type: !168)
!4025 = !DILocation(line: 295, column: 60, scope: !4021)
!4026 = !DILocalVariable(name: "phy", scope: !4021, file: !3, line: 297, type: !169)
!4027 = !DILocation(line: 297, column: 18, scope: !4021)
!4028 = !DILocation(line: 297, column: 44, scope: !4021)
!4029 = !DILocation(line: 297, column: 25, scope: !4021)
!4030 = !DILocation(line: 297, column: 24, scope: !4021)
!4031 = !DILocation(line: 299, column: 14, scope: !4021)
!4032 = !DILocation(line: 299, column: 2, scope: !4021)
!4033 = !DILocation(line: 300, column: 1, scope: !4021)
!4034 = distinct !DISubprogram(name: "ERR_PTR", scope: !4035, file: !4035, line: 24, type: !4036, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4035 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!168, !123}
!4038 = !DILocalVariable(name: "error", arg: 1, scope: !4034, file: !4035, line: 24, type: !123)
!4039 = !DILocation(line: 24, column: 48, scope: !4034)
!4040 = !DILocation(line: 26, column: 18, scope: !4034)
!4041 = !DILocation(line: 26, column: 9, scope: !4034)
!4042 = !DILocation(line: 26, column: 2, scope: !4034)
!4043 = distinct !DISubprogram(name: "usb_get_phy", scope: !3, file: !3, line: 455, type: !4044, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!169, !80}
!4046 = !DILocalVariable(name: "lock", arg: 1, scope: !4047, file: !4048, line: 407, type: !4051)
!4047 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4048, file: !4048, line: 407, type: !4049, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4048 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !4051, !288}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!4052 = !DILocation(line: 407, column: 64, scope: !4047, inlinedAt: !4053)
!4053 = distinct !DILocation(line: 475, column: 2, scope: !4043)
!4054 = !DILocalVariable(name: "flags", arg: 2, scope: !4047, file: !4048, line: 407, type: !288)
!4055 = !DILocation(line: 407, column: 84, scope: !4047, inlinedAt: !4053)
!4056 = !DILocalVariable(name: "lock", arg: 1, scope: !4057, file: !4048, line: 327, type: !4051)
!4057 = distinct !DISubprogram(name: "spinlock_check", scope: !4048, file: !4048, line: 327, type: !4058, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!4060, !4051}
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!4061 = !DILocation(line: 327, column: 67, scope: !4057, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 460, column: 2, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4064, file: !3, line: 460, column: 2)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 460, column: 2)
!4065 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 460, column: 2)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 460, column: 2)
!4067 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 460, column: 2)
!4068 = !DILocalVariable(name: "type", arg: 1, scope: !4043, file: !3, line: 455, type: !80)
!4069 = !DILocation(line: 455, column: 47, scope: !4043)
!4070 = !DILocalVariable(name: "phy", scope: !4043, file: !3, line: 457, type: !169)
!4071 = !DILocation(line: 457, column: 18, scope: !4043)
!4072 = !DILocalVariable(name: "flags", scope: !4043, file: !3, line: 458, type: !288)
!4073 = !DILocation(line: 458, column: 16, scope: !4043)
!4074 = !DILocation(line: 460, column: 2, scope: !4043)
!4075 = !DILocation(line: 460, column: 2, scope: !4067)
!4076 = !DILocalVariable(name: "__dummy", scope: !4077, file: !3, line: 460, type: !288)
!4077 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 460, column: 2)
!4078 = !DILocation(line: 460, column: 2, scope: !4077)
!4079 = !DILocalVariable(name: "__dummy2", scope: !4077, file: !3, line: 460, type: !288)
!4080 = !DILocation(line: 460, column: 2, scope: !4066)
!4081 = !DILocation(line: 460, column: 2, scope: !4065)
!4082 = !DILocation(line: 460, column: 2, scope: !4083)
!4083 = distinct !DILexicalBlock(scope: !4065, file: !3, line: 460, column: 2)
!4084 = !DILocalVariable(name: "__dummy", scope: !4085, file: !3, line: 460, type: !288)
!4085 = distinct !DILexicalBlock(scope: !4086, file: !3, line: 460, column: 2)
!4086 = distinct !DILexicalBlock(scope: !4083, file: !3, line: 460, column: 2)
!4087 = !DILocation(line: 460, column: 2, scope: !4085)
!4088 = !DILocalVariable(name: "__dummy2", scope: !4085, file: !3, line: 460, type: !288)
!4089 = !DILocation(line: 460, column: 2, scope: !4086)
!4090 = !DILocation(line: 460, column: 2, scope: !4064)
!4091 = !{i32 -2142497183}
!4092 = !DILocation(line: 329, column: 10, scope: !4057, inlinedAt: !4062)
!4093 = !DILocation(line: 329, column: 16, scope: !4057, inlinedAt: !4062)
!4094 = !DILocation(line: 460, column: 2, scope: !4063)
!4095 = !DILocation(line: 462, column: 34, scope: !4043)
!4096 = !DILocation(line: 462, column: 8, scope: !4043)
!4097 = !DILocation(line: 462, column: 6, scope: !4043)
!4098 = !DILocation(line: 463, column: 13, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 463, column: 6)
!4100 = !DILocation(line: 463, column: 6, scope: !4099)
!4101 = !DILocation(line: 463, column: 18, scope: !4099)
!4102 = !DILocation(line: 463, column: 37, scope: !4099)
!4103 = !DILocation(line: 463, column: 42, scope: !4099)
!4104 = !DILocation(line: 463, column: 47, scope: !4099)
!4105 = !DILocation(line: 463, column: 55, scope: !4099)
!4106 = !DILocation(line: 463, column: 22, scope: !4099)
!4107 = !DILocation(line: 463, column: 6, scope: !4043)
!4108 = !DILocation(line: 464, column: 3, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 464, column: 3)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 464, column: 3)
!4111 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 463, column: 63)
!4112 = !DILocation(line: 464, column: 3, scope: !4110)
!4113 = !DILocation(line: 466, column: 15, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 466, column: 7)
!4115 = !DILocation(line: 466, column: 8, scope: !4114)
!4116 = !DILocation(line: 466, column: 7, scope: !4111)
!4117 = !DILocation(line: 467, column: 10, scope: !4114)
!4118 = !DILocation(line: 467, column: 8, scope: !4114)
!4119 = !DILocation(line: 467, column: 4, scope: !4114)
!4120 = !DILocation(line: 469, column: 3, scope: !4111)
!4121 = !DILocation(line: 472, column: 13, scope: !4043)
!4122 = !DILocation(line: 472, column: 18, scope: !4043)
!4123 = !DILocation(line: 472, column: 2, scope: !4043)
!4124 = !DILabel(scope: !4043, name: "err0", file: !3, line: 474)
!4125 = !DILocation(line: 474, column: 1, scope: !4043)
!4126 = !DILocation(line: 475, column: 36, scope: !4043)
!4127 = !DILocalVariable(name: "__dummy", scope: !4128, file: !4048, line: 409, type: !288)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !4048, line: 409, column: 2)
!4129 = distinct !DILexicalBlock(scope: !4047, file: !4048, line: 409, column: 2)
!4130 = !DILocation(line: 409, column: 2, scope: !4128, inlinedAt: !4053)
!4131 = !DILocalVariable(name: "__dummy2", scope: !4128, file: !4048, line: 409, type: !288)
!4132 = !DILocalVariable(name: "__dummy", scope: !4133, file: !4048, line: 409, type: !288)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !4048, line: 409, column: 2)
!4134 = distinct !DILexicalBlock(scope: !4135, file: !4048, line: 409, column: 2)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !4048, line: 409, column: 2)
!4136 = distinct !DILexicalBlock(scope: !4129, file: !4048, line: 409, column: 2)
!4137 = !DILocation(line: 409, column: 2, scope: !4133, inlinedAt: !4053)
!4138 = !DILocalVariable(name: "__dummy2", scope: !4133, file: !4048, line: 409, type: !288)
!4139 = !DILocation(line: 409, column: 2, scope: !4134, inlinedAt: !4053)
!4140 = !DILocation(line: 409, column: 2, scope: !4141, inlinedAt: !4053)
!4141 = distinct !DILexicalBlock(scope: !4136, file: !4048, line: 409, column: 2)
!4142 = !{i32 -2145279456}
!4143 = !DILocation(line: 409, column: 2, scope: !4144, inlinedAt: !4053)
!4144 = distinct !DILexicalBlock(scope: !4141, file: !4048, line: 409, column: 2)
!4145 = !DILocation(line: 477, column: 9, scope: !4043)
!4146 = !DILocation(line: 477, column: 2, scope: !4043)
!4147 = distinct !DISubprogram(name: "IS_ERR", scope: !4035, file: !4035, line: 34, type: !4148, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!454, !3019}
!4150 = !DILocalVariable(name: "ptr", arg: 1, scope: !4147, file: !4035, line: 34, type: !3019)
!4151 = !DILocation(line: 34, column: 60, scope: !4147)
!4152 = !DILocation(line: 36, column: 9, scope: !4147)
!4153 = !DILocation(line: 36, column: 2, scope: !4147)
!4154 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4155, file: !4155, line: 666, type: !4156, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4155 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!288}
!4158 = !DILocalVariable(name: "f", scope: !4154, file: !4155, line: 668, type: !288)
!4159 = !DILocation(line: 668, column: 16, scope: !4154)
!4160 = !DILocation(line: 670, column: 6, scope: !4154)
!4161 = !DILocation(line: 670, column: 4, scope: !4154)
!4162 = !DILocation(line: 671, column: 2, scope: !4154)
!4163 = !DILocation(line: 672, column: 9, scope: !4154)
!4164 = !DILocation(line: 672, column: 2, scope: !4154)
!4165 = distinct !DISubprogram(name: "__usb_find_phy", scope: !3, file: !3, line: 45, type: !4166, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!169, !187, !80}
!4168 = !DILocalVariable(name: "list", arg: 1, scope: !4165, file: !3, line: 45, type: !187)
!4169 = !DILocation(line: 45, column: 57, scope: !4165)
!4170 = !DILocalVariable(name: "type", arg: 2, scope: !4165, file: !3, line: 46, type: !80)
!4171 = !DILocation(line: 46, column: 20, scope: !4165)
!4172 = !DILocalVariable(name: "phy", scope: !4165, file: !3, line: 48, type: !169)
!4173 = !DILocation(line: 48, column: 19, scope: !4165)
!4174 = !DILocalVariable(name: "__mptr", scope: !4175, file: !3, line: 50, type: !168)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 50, column: 2)
!4176 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 50, column: 2)
!4177 = !DILocation(line: 50, column: 2, scope: !4175)
!4178 = !DILocation(line: 50, column: 2, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 50, column: 2)
!4180 = !DILocation(line: 50, column: 2, scope: !4176)
!4181 = !DILocation(line: 50, column: 2, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4176, file: !3, line: 50, column: 2)
!4183 = !DILocation(line: 51, column: 7, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 51, column: 7)
!4185 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 50, column: 39)
!4186 = !DILocation(line: 51, column: 12, scope: !4184)
!4187 = !DILocation(line: 51, column: 20, scope: !4184)
!4188 = !DILocation(line: 51, column: 17, scope: !4184)
!4189 = !DILocation(line: 51, column: 7, scope: !4185)
!4190 = !DILocation(line: 52, column: 4, scope: !4184)
!4191 = !DILocation(line: 54, column: 10, scope: !4185)
!4192 = !DILocation(line: 54, column: 3, scope: !4185)
!4193 = !DILocalVariable(name: "__mptr", scope: !4194, file: !3, line: 50, type: !168)
!4194 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 50, column: 2)
!4195 = !DILocation(line: 50, column: 2, scope: !4194)
!4196 = !DILocation(line: 50, column: 2, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 50, column: 2)
!4198 = distinct !{!4198, !4180, !4199}
!4199 = !DILocation(line: 55, column: 2, scope: !4176)
!4200 = !DILocation(line: 57, column: 9, scope: !4165)
!4201 = !DILocation(line: 57, column: 2, scope: !4165)
!4202 = !DILocation(line: 58, column: 1, scope: !4165)
!4203 = distinct !DISubprogram(name: "try_module_get", scope: !4204, file: !4204, line: 751, type: !4205, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4204 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!454, !597}
!4207 = !DILocalVariable(name: "module", arg: 1, scope: !4203, file: !4204, line: 751, type: !597)
!4208 = !DILocation(line: 751, column: 50, scope: !4203)
!4209 = !DILocation(line: 753, column: 2, scope: !4203)
!4210 = distinct !DISubprogram(name: "devm_usb_get_phy_by_node", scope: !3, file: !3, line: 497, type: !4211, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{!169, !173, !3492, !3690}
!4213 = !DILocation(line: 407, column: 64, scope: !4047, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 533, column: 2, scope: !4210)
!4215 = !DILocation(line: 407, column: 84, scope: !4047, inlinedAt: !4214)
!4216 = !DILocation(line: 327, column: 67, scope: !4057, inlinedAt: !4217)
!4217 = distinct !DILocation(line: 511, column: 2, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 511, column: 2)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 511, column: 2)
!4220 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 511, column: 2)
!4221 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 511, column: 2)
!4222 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 511, column: 2)
!4223 = !DILocalVariable(name: "dev", arg: 1, scope: !4210, file: !3, line: 497, type: !173)
!4224 = !DILocation(line: 497, column: 58, scope: !4210)
!4225 = !DILocalVariable(name: "node", arg: 2, scope: !4210, file: !3, line: 498, type: !3492)
!4226 = !DILocation(line: 498, column: 28, scope: !4210)
!4227 = !DILocalVariable(name: "nb", arg: 3, scope: !4210, file: !3, line: 499, type: !3690)
!4228 = !DILocation(line: 499, column: 31, scope: !4210)
!4229 = !DILocalVariable(name: "phy", scope: !4210, file: !3, line: 501, type: !169)
!4230 = !DILocation(line: 501, column: 18, scope: !4210)
!4231 = !DILocation(line: 501, column: 24, scope: !4210)
!4232 = !DILocalVariable(name: "ptr", scope: !4210, file: !3, line: 502, type: !4233)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phy_devm", file: !3, line: 32, size: 128, elements: !4235)
!4235 = !{!4236, !4237}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "phy", scope: !4234, file: !3, line: 33, baseType: !169, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "nb", scope: !4234, file: !3, line: 34, baseType: !3690, size: 64, offset: 64)
!4238 = !DILocation(line: 502, column: 19, scope: !4210)
!4239 = !DILocalVariable(name: "flags", scope: !4210, file: !3, line: 503, type: !288)
!4240 = !DILocation(line: 503, column: 16, scope: !4210)
!4241 = !DILocation(line: 505, column: 8, scope: !4210)
!4242 = !DILocation(line: 505, column: 6, scope: !4210)
!4243 = !DILocation(line: 506, column: 7, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 506, column: 6)
!4245 = !DILocation(line: 506, column: 6, scope: !4210)
!4246 = !DILocation(line: 508, column: 3, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4244, file: !3, line: 506, column: 12)
!4248 = !DILocation(line: 511, column: 2, scope: !4210)
!4249 = !DILocation(line: 511, column: 2, scope: !4222)
!4250 = !DILocalVariable(name: "__dummy", scope: !4251, file: !3, line: 511, type: !288)
!4251 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 511, column: 2)
!4252 = !DILocation(line: 511, column: 2, scope: !4251)
!4253 = !DILocalVariable(name: "__dummy2", scope: !4251, file: !3, line: 511, type: !288)
!4254 = !DILocation(line: 511, column: 2, scope: !4221)
!4255 = !DILocation(line: 511, column: 2, scope: !4220)
!4256 = !DILocation(line: 511, column: 2, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 511, column: 2)
!4258 = !DILocalVariable(name: "__dummy", scope: !4259, file: !3, line: 511, type: !288)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 511, column: 2)
!4260 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 511, column: 2)
!4261 = !DILocation(line: 511, column: 2, scope: !4259)
!4262 = !DILocalVariable(name: "__dummy2", scope: !4259, file: !3, line: 511, type: !288)
!4263 = !DILocation(line: 511, column: 2, scope: !4260)
!4264 = !DILocation(line: 511, column: 2, scope: !4219)
!4265 = !{i32 -2142495343}
!4266 = !DILocation(line: 329, column: 10, scope: !4057, inlinedAt: !4217)
!4267 = !DILocation(line: 329, column: 16, scope: !4057, inlinedAt: !4217)
!4268 = !DILocation(line: 511, column: 2, scope: !4218)
!4269 = !DILocation(line: 513, column: 26, scope: !4210)
!4270 = !DILocation(line: 513, column: 8, scope: !4210)
!4271 = !DILocation(line: 513, column: 6, scope: !4210)
!4272 = !DILocation(line: 514, column: 13, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 514, column: 6)
!4274 = !DILocation(line: 514, column: 6, scope: !4273)
!4275 = !DILocation(line: 514, column: 6, scope: !4210)
!4276 = !DILocation(line: 515, column: 15, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 514, column: 19)
!4278 = !DILocation(line: 515, column: 3, scope: !4277)
!4279 = !DILocation(line: 516, column: 3, scope: !4277)
!4280 = !DILocation(line: 519, column: 22, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 519, column: 6)
!4282 = !DILocation(line: 519, column: 27, scope: !4281)
!4283 = !DILocation(line: 519, column: 32, scope: !4281)
!4284 = !DILocation(line: 519, column: 40, scope: !4281)
!4285 = !DILocation(line: 519, column: 7, scope: !4281)
!4286 = !DILocation(line: 519, column: 6, scope: !4210)
!4287 = !DILocation(line: 520, column: 9, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4281, file: !3, line: 519, column: 48)
!4289 = !DILocation(line: 520, column: 7, scope: !4288)
!4290 = !DILocation(line: 521, column: 15, scope: !4288)
!4291 = !DILocation(line: 521, column: 3, scope: !4288)
!4292 = !DILocation(line: 522, column: 3, scope: !4288)
!4293 = !DILocation(line: 524, column: 6, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4210, file: !3, line: 524, column: 6)
!4295 = !DILocation(line: 524, column: 6, scope: !4210)
!4296 = !DILocation(line: 525, column: 25, scope: !4294)
!4297 = !DILocation(line: 525, column: 30, scope: !4294)
!4298 = !DILocation(line: 525, column: 3, scope: !4294)
!4299 = !DILocation(line: 526, column: 13, scope: !4210)
!4300 = !DILocation(line: 526, column: 2, scope: !4210)
!4301 = !DILocation(line: 526, column: 7, scope: !4210)
!4302 = !DILocation(line: 526, column: 11, scope: !4210)
!4303 = !DILocation(line: 527, column: 12, scope: !4210)
!4304 = !DILocation(line: 527, column: 2, scope: !4210)
!4305 = !DILocation(line: 527, column: 7, scope: !4210)
!4306 = !DILocation(line: 527, column: 10, scope: !4210)
!4307 = !DILocation(line: 528, column: 13, scope: !4210)
!4308 = !DILocation(line: 528, column: 18, scope: !4210)
!4309 = !DILocation(line: 528, column: 2, scope: !4210)
!4310 = !DILocation(line: 530, column: 13, scope: !4210)
!4311 = !DILocation(line: 530, column: 18, scope: !4210)
!4312 = !DILocation(line: 530, column: 2, scope: !4210)
!4313 = !DILabel(scope: !4210, name: "err1", file: !3, line: 532)
!4314 = !DILocation(line: 532, column: 1, scope: !4210)
!4315 = !DILocation(line: 533, column: 36, scope: !4210)
!4316 = !DILocation(line: 409, column: 2, scope: !4128, inlinedAt: !4214)
!4317 = !DILocation(line: 409, column: 2, scope: !4133, inlinedAt: !4214)
!4318 = !DILocation(line: 409, column: 2, scope: !4134, inlinedAt: !4214)
!4319 = !DILocation(line: 409, column: 2, scope: !4141, inlinedAt: !4214)
!4320 = !DILocation(line: 409, column: 2, scope: !4144, inlinedAt: !4214)
!4321 = !DILocation(line: 533, column: 2, scope: !4210)
!4322 = !DILabel(scope: !4210, name: "err0", file: !3, line: 535)
!4323 = !DILocation(line: 535, column: 1, scope: !4210)
!4324 = !DILocation(line: 537, column: 9, scope: !4210)
!4325 = !DILocation(line: 537, column: 2, scope: !4210)
!4326 = distinct !DISubprogram(name: "devm_usb_phy_release2", scope: !3, file: !3, line: 302, type: !4008, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4327 = !DILocalVariable(name: "dev", arg: 1, scope: !4326, file: !3, line: 302, type: !173)
!4328 = !DILocation(line: 302, column: 50, scope: !4326)
!4329 = !DILocalVariable(name: "_res", arg: 2, scope: !4326, file: !3, line: 302, type: !168)
!4330 = !DILocation(line: 302, column: 61, scope: !4326)
!4331 = !DILocalVariable(name: "res", scope: !4326, file: !3, line: 304, type: !4233)
!4332 = !DILocation(line: 304, column: 19, scope: !4326)
!4333 = !DILocation(line: 304, column: 25, scope: !4326)
!4334 = !DILocation(line: 306, column: 6, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 306, column: 6)
!4336 = !DILocation(line: 306, column: 11, scope: !4335)
!4337 = !DILocation(line: 306, column: 6, scope: !4326)
!4338 = !DILocation(line: 307, column: 27, scope: !4335)
!4339 = !DILocation(line: 307, column: 32, scope: !4335)
!4340 = !DILocation(line: 307, column: 37, scope: !4335)
!4341 = !DILocation(line: 307, column: 42, scope: !4335)
!4342 = !DILocation(line: 307, column: 3, scope: !4335)
!4343 = !DILocation(line: 308, column: 14, scope: !4326)
!4344 = !DILocation(line: 308, column: 19, scope: !4326)
!4345 = !DILocation(line: 308, column: 2, scope: !4326)
!4346 = !DILocation(line: 309, column: 1, scope: !4326)
!4347 = distinct !DISubprogram(name: "__of_usb_find_phy", scope: !3, file: !3, line: 60, type: !4348, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!169, !3492}
!4350 = !DILocalVariable(name: "node", arg: 1, scope: !4347, file: !3, line: 60, type: !3492)
!4351 = !DILocation(line: 60, column: 62, scope: !4347)
!4352 = !DILocalVariable(name: "phy", scope: !4347, file: !3, line: 62, type: !169)
!4353 = !DILocation(line: 62, column: 19, scope: !4347)
!4354 = !DILocation(line: 64, column: 30, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 64, column: 6)
!4356 = !DILocation(line: 64, column: 7, scope: !4355)
!4357 = !DILocation(line: 64, column: 6, scope: !4347)
!4358 = !DILocation(line: 65, column: 10, scope: !4355)
!4359 = !DILocation(line: 65, column: 3, scope: !4355)
!4360 = !DILocalVariable(name: "__mptr", scope: !4361, file: !3, line: 67, type: !168)
!4361 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 67, column: 2)
!4362 = distinct !DILexicalBlock(scope: !4347, file: !3, line: 67, column: 2)
!4363 = !DILocation(line: 67, column: 2, scope: !4361)
!4364 = !DILocation(line: 67, column: 2, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 67, column: 2)
!4366 = !DILocation(line: 67, column: 2, scope: !4362)
!4367 = !DILocation(line: 67, column: 2, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4362, file: !3, line: 67, column: 2)
!4369 = !DILocation(line: 68, column: 7, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 68, column: 7)
!4371 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 67, column: 44)
!4372 = !DILocation(line: 68, column: 15, scope: !4370)
!4373 = !DILocation(line: 68, column: 20, scope: !4370)
!4374 = !DILocation(line: 68, column: 25, scope: !4370)
!4375 = !DILocation(line: 68, column: 12, scope: !4370)
!4376 = !DILocation(line: 68, column: 7, scope: !4371)
!4377 = !DILocation(line: 69, column: 4, scope: !4370)
!4378 = !DILocation(line: 71, column: 10, scope: !4371)
!4379 = !DILocation(line: 71, column: 3, scope: !4371)
!4380 = !DILocalVariable(name: "__mptr", scope: !4381, file: !3, line: 67, type: !168)
!4381 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 67, column: 2)
!4382 = !DILocation(line: 67, column: 2, scope: !4381)
!4383 = !DILocation(line: 67, column: 2, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 67, column: 2)
!4385 = distinct !{!4385, !4366, !4386}
!4386 = !DILocation(line: 72, column: 2, scope: !4362)
!4387 = !DILocation(line: 74, column: 9, scope: !4347)
!4388 = !DILocation(line: 74, column: 2, scope: !4347)
!4389 = !DILocation(line: 75, column: 1, scope: !4347)
!4390 = distinct !DISubprogram(name: "usb_register_notifier", scope: !81, file: !81, line: 339, type: !4391, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{!223, !169, !3690}
!4393 = !DILocalVariable(name: "x", arg: 1, scope: !4390, file: !81, line: 339, type: !169)
!4394 = !DILocation(line: 339, column: 39, scope: !4390)
!4395 = !DILocalVariable(name: "nb", arg: 2, scope: !4390, file: !81, line: 339, type: !3690)
!4396 = !DILocation(line: 339, column: 65, scope: !4390)
!4397 = !DILocation(line: 341, column: 41, scope: !4390)
!4398 = !DILocation(line: 341, column: 44, scope: !4390)
!4399 = !DILocation(line: 341, column: 54, scope: !4390)
!4400 = !DILocation(line: 341, column: 9, scope: !4390)
!4401 = !DILocation(line: 341, column: 2, scope: !4390)
!4402 = distinct !DISubprogram(name: "devm_usb_get_phy_by_phandle", scope: !3, file: !3, line: 556, type: !4403, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{!169, !173, !180, !1239}
!4405 = !DILocalVariable(name: "dev", arg: 1, scope: !4402, file: !3, line: 556, type: !173)
!4406 = !DILocation(line: 556, column: 60, scope: !4402)
!4407 = !DILocalVariable(name: "phandle", arg: 2, scope: !4402, file: !3, line: 557, type: !180)
!4408 = !DILocation(line: 557, column: 14, scope: !4402)
!4409 = !DILocalVariable(name: "index", arg: 3, scope: !4402, file: !3, line: 557, type: !1239)
!4410 = !DILocation(line: 557, column: 26, scope: !4402)
!4411 = !DILocalVariable(name: "node", scope: !4402, file: !3, line: 559, type: !3492)
!4412 = !DILocation(line: 559, column: 22, scope: !4402)
!4413 = !DILocalVariable(name: "phy", scope: !4402, file: !3, line: 560, type: !169)
!4414 = !DILocation(line: 560, column: 18, scope: !4402)
!4415 = !DILocation(line: 562, column: 7, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 562, column: 6)
!4417 = !DILocation(line: 562, column: 12, scope: !4416)
!4418 = !DILocation(line: 562, column: 6, scope: !4402)
!4419 = !DILocation(line: 564, column: 10, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 562, column: 21)
!4421 = !DILocation(line: 564, column: 3, scope: !4420)
!4422 = !DILocation(line: 567, column: 26, scope: !4402)
!4423 = !DILocation(line: 567, column: 31, scope: !4402)
!4424 = !DILocation(line: 567, column: 40, scope: !4402)
!4425 = !DILocation(line: 567, column: 49, scope: !4402)
!4426 = !DILocation(line: 567, column: 9, scope: !4402)
!4427 = !DILocation(line: 567, column: 7, scope: !4402)
!4428 = !DILocation(line: 568, column: 7, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4402, file: !3, line: 568, column: 6)
!4430 = !DILocation(line: 568, column: 6, scope: !4402)
!4431 = !DILocation(line: 571, column: 10, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4429, file: !3, line: 568, column: 13)
!4433 = !DILocation(line: 571, column: 3, scope: !4432)
!4434 = !DILocation(line: 573, column: 33, scope: !4402)
!4435 = !DILocation(line: 573, column: 38, scope: !4402)
!4436 = !DILocation(line: 573, column: 8, scope: !4402)
!4437 = !DILocation(line: 573, column: 6, scope: !4402)
!4438 = !DILocation(line: 574, column: 14, scope: !4402)
!4439 = !DILocation(line: 574, column: 2, scope: !4402)
!4440 = !DILocation(line: 575, column: 9, scope: !4402)
!4441 = !DILocation(line: 575, column: 2, scope: !4402)
!4442 = !DILocation(line: 576, column: 1, scope: !4402)
!4443 = distinct !DISubprogram(name: "of_node_put", scope: !3494, file: !3494, line: 129, type: !4444, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{null, !3492}
!4446 = !DILocalVariable(name: "node", arg: 1, scope: !4443, file: !3494, line: 129, type: !3492)
!4447 = !DILocation(line: 129, column: 52, scope: !4443)
!4448 = !DILocation(line: 129, column: 60, scope: !4443)
!4449 = !DILocalVariable(name: "dev", arg: 1, scope: !3753, file: !3, line: 589, type: !173)
!4450 = !DILocation(line: 589, column: 38, scope: !3753)
!4451 = !DILocalVariable(name: "phy", arg: 2, scope: !3753, file: !3, line: 589, type: !169)
!4452 = !DILocation(line: 589, column: 59, scope: !3753)
!4453 = !DILocalVariable(name: "r", scope: !3753, file: !3, line: 591, type: !223)
!4454 = !DILocation(line: 591, column: 6, scope: !3753)
!4455 = !DILocation(line: 593, column: 21, scope: !3753)
!4456 = !DILocation(line: 593, column: 68, scope: !3753)
!4457 = !DILocation(line: 593, column: 6, scope: !3753)
!4458 = !DILocation(line: 593, column: 4, scope: !3753)
!4459 = !DILocalVariable(name: "__ret_warn_once", scope: !4460, file: !3, line: 594, type: !223)
!4460 = distinct !DILexicalBlock(scope: !3753, file: !3, line: 594, column: 2)
!4461 = !DILocation(line: 594, column: 2, scope: !4460)
!4462 = !DILocation(line: 594, column: 2, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 594, column: 2)
!4464 = !DILocation(line: 0, scope: !4463)
!4465 = !DILocation(line: 594, column: 2, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 594, column: 2)
!4467 = !DILocalVariable(name: "__ret_warn_on", scope: !4468, file: !3, line: 594, type: !223)
!4468 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 594, column: 2)
!4469 = !DILocation(line: 594, column: 2, scope: !4468)
!4470 = !DILocation(line: 594, column: 2, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4468, file: !3, line: 594, column: 2)
!4472 = !DILocation(line: 594, column: 2, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4471, file: !3, line: 594, column: 2)
!4474 = !DILocation(line: 594, column: 2, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 594, column: 2)
!4476 = !DILocation(line: 594, column: 2, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 594, column: 2)
!4478 = !DILocation(line: 594, column: 2, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 594, column: 2)
!4480 = !DILocation(line: 594, column: 2, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 594, column: 2)
!4482 = !{i32 -2142493071, i32 -2142493042, i32 -2142492996, i32 -2142492938, i32 -2142492884, i32 -2142492830, i32 -2142492775, i32 -2142492744}
!4483 = !DILocation(line: 594, column: 2, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 594, column: 2)
!4485 = !{i32 -2142492330, i32 -2142492323, i32 -2142492271, i32 -2142492240, i32 -2142492210}
!4486 = !DILocation(line: 594, column: 2, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4477, file: !3, line: 594, column: 2)
!4488 = !DILocation(line: 594, column: 2, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 594, column: 2)
!4490 = !DILocation(line: 595, column: 1, scope: !3753)
!4491 = distinct !DISubprogram(name: "devm_usb_phy_match", scope: !3, file: !3, line: 311, type: !4492, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!223, !173, !168, !168}
!4494 = !DILocalVariable(name: "dev", arg: 1, scope: !4491, file: !3, line: 311, type: !173)
!4495 = !DILocation(line: 311, column: 46, scope: !4491)
!4496 = !DILocalVariable(name: "res", arg: 2, scope: !4491, file: !3, line: 311, type: !168)
!4497 = !DILocation(line: 311, column: 57, scope: !4491)
!4498 = !DILocalVariable(name: "match_data", arg: 3, scope: !4491, file: !3, line: 311, type: !168)
!4499 = !DILocation(line: 311, column: 68, scope: !4491)
!4500 = !DILocalVariable(name: "phy", scope: !4491, file: !3, line: 313, type: !3747)
!4501 = !DILocation(line: 313, column: 19, scope: !4491)
!4502 = !DILocation(line: 313, column: 25, scope: !4491)
!4503 = !DILocation(line: 315, column: 10, scope: !4491)
!4504 = !DILocation(line: 315, column: 9, scope: !4491)
!4505 = !DILocation(line: 315, column: 17, scope: !4491)
!4506 = !DILocation(line: 315, column: 14, scope: !4491)
!4507 = !DILocation(line: 315, column: 2, scope: !4491)
!4508 = distinct !DISubprogram(name: "dev_name", scope: !60, file: !60, line: 609, type: !4509, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!180, !3529}
!4511 = !DILocalVariable(name: "dev", arg: 1, scope: !4508, file: !60, line: 609, type: !3529)
!4512 = !DILocation(line: 609, column: 57, scope: !4508)
!4513 = !DILocation(line: 612, column: 6, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !4508, file: !60, line: 612, column: 6)
!4515 = !DILocation(line: 612, column: 11, scope: !4514)
!4516 = !DILocation(line: 612, column: 6, scope: !4508)
!4517 = !DILocation(line: 613, column: 10, scope: !4514)
!4518 = !DILocation(line: 613, column: 15, scope: !4514)
!4519 = !DILocation(line: 613, column: 3, scope: !4514)
!4520 = !DILocation(line: 615, column: 23, scope: !4508)
!4521 = !DILocation(line: 615, column: 28, scope: !4508)
!4522 = !DILocation(line: 615, column: 9, scope: !4508)
!4523 = !DILocation(line: 615, column: 2, scope: !4508)
!4524 = !DILocation(line: 616, column: 1, scope: !4508)
!4525 = distinct !DISubprogram(name: "usb_put_phy", scope: !3, file: !3, line: 606, type: !3723, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4526 = !DILocalVariable(name: "x", arg: 1, scope: !4525, file: !3, line: 606, type: !169)
!4527 = !DILocation(line: 606, column: 34, scope: !4525)
!4528 = !DILocation(line: 608, column: 6, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4525, file: !3, line: 608, column: 6)
!4530 = !DILocation(line: 608, column: 6, scope: !4525)
!4531 = !DILocalVariable(name: "owner", scope: !4532, file: !3, line: 609, type: !597)
!4532 = distinct !DILexicalBlock(scope: !4529, file: !3, line: 608, column: 9)
!4533 = !DILocation(line: 609, column: 18, scope: !4532)
!4534 = !DILocation(line: 609, column: 26, scope: !4532)
!4535 = !DILocation(line: 609, column: 29, scope: !4532)
!4536 = !DILocation(line: 609, column: 34, scope: !4532)
!4537 = !DILocation(line: 609, column: 42, scope: !4532)
!4538 = !DILocation(line: 611, column: 14, scope: !4532)
!4539 = !DILocation(line: 611, column: 17, scope: !4532)
!4540 = !DILocation(line: 611, column: 3, scope: !4532)
!4541 = !DILocation(line: 612, column: 14, scope: !4532)
!4542 = !DILocation(line: 612, column: 3, scope: !4532)
!4543 = !DILocation(line: 613, column: 2, scope: !4532)
!4544 = !DILocation(line: 614, column: 1, scope: !4525)
!4545 = distinct !DISubprogram(name: "module_put", scope: !4204, file: !4204, line: 756, type: !4546, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !597}
!4548 = !DILocalVariable(name: "module", arg: 1, scope: !4545, file: !4204, line: 756, type: !597)
!4549 = !DILocation(line: 756, column: 46, scope: !4545)
!4550 = !DILocation(line: 758, column: 1, scope: !4545)
!4551 = distinct !DISubprogram(name: "usb_add_phy", scope: !3, file: !3, line: 626, type: !4552, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!223, !169, !80}
!4554 = !DILocation(line: 327, column: 67, scope: !4057, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 644, column: 2, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 644, column: 2)
!4557 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 644, column: 2)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 644, column: 2)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 644, column: 2)
!4560 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 644, column: 2)
!4561 = !DILocation(line: 407, column: 64, scope: !4047, inlinedAt: !4562)
!4562 = distinct !DILocation(line: 659, column: 2, scope: !4551)
!4563 = !DILocation(line: 407, column: 84, scope: !4047, inlinedAt: !4562)
!4564 = !DILocation(line: 327, column: 67, scope: !4057, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 642, column: 2, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 642, column: 2)
!4567 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 642, column: 2)
!4568 = !DILocalVariable(name: "x", arg: 1, scope: !4551, file: !3, line: 626, type: !169)
!4569 = !DILocation(line: 626, column: 33, scope: !4551)
!4570 = !DILocalVariable(name: "type", arg: 2, scope: !4551, file: !3, line: 626, type: !80)
!4571 = !DILocation(line: 626, column: 54, scope: !4551)
!4572 = !DILocalVariable(name: "ret", scope: !4551, file: !3, line: 628, type: !223)
!4573 = !DILocation(line: 628, column: 7, scope: !4551)
!4574 = !DILocalVariable(name: "flags", scope: !4551, file: !3, line: 629, type: !288)
!4575 = !DILocation(line: 629, column: 16, scope: !4551)
!4576 = !DILocalVariable(name: "phy", scope: !4551, file: !3, line: 630, type: !169)
!4577 = !DILocation(line: 630, column: 18, scope: !4551)
!4578 = !DILocation(line: 632, column: 6, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 632, column: 6)
!4580 = !DILocation(line: 632, column: 9, scope: !4579)
!4581 = !DILocation(line: 632, column: 14, scope: !4579)
!4582 = !DILocation(line: 632, column: 6, scope: !4551)
!4583 = !DILocation(line: 633, column: 3, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 632, column: 41)
!4585 = !DILocation(line: 634, column: 3, scope: !4584)
!4586 = !DILocation(line: 637, column: 19, scope: !4551)
!4587 = !DILocation(line: 637, column: 2, scope: !4551)
!4588 = !DILocation(line: 638, column: 23, scope: !4551)
!4589 = !DILocation(line: 638, column: 8, scope: !4551)
!4590 = !DILocation(line: 638, column: 6, scope: !4551)
!4591 = !DILocation(line: 639, column: 6, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 639, column: 6)
!4593 = !DILocation(line: 639, column: 6, scope: !4551)
!4594 = !DILocation(line: 640, column: 10, scope: !4592)
!4595 = !DILocation(line: 640, column: 3, scope: !4592)
!4596 = !DILocation(line: 642, column: 2, scope: !4551)
!4597 = !DILocation(line: 642, column: 2, scope: !4567)
!4598 = !DILocation(line: 642, column: 2, scope: !4566)
!4599 = !DILocation(line: 329, column: 10, scope: !4057, inlinedAt: !4565)
!4600 = !DILocation(line: 329, column: 16, scope: !4057, inlinedAt: !4565)
!4601 = !DILocation(line: 644, column: 2, scope: !4551)
!4602 = !DILocation(line: 644, column: 2, scope: !4560)
!4603 = !DILocalVariable(name: "__dummy", scope: !4604, file: !3, line: 644, type: !288)
!4604 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 644, column: 2)
!4605 = !DILocation(line: 644, column: 2, scope: !4604)
!4606 = !DILocalVariable(name: "__dummy2", scope: !4604, file: !3, line: 644, type: !288)
!4607 = !DILocation(line: 644, column: 2, scope: !4559)
!4608 = !DILocation(line: 644, column: 2, scope: !4558)
!4609 = !DILocation(line: 644, column: 2, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 644, column: 2)
!4611 = !DILocalVariable(name: "__dummy", scope: !4612, file: !3, line: 644, type: !288)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 644, column: 2)
!4613 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 644, column: 2)
!4614 = !DILocation(line: 644, column: 2, scope: !4612)
!4615 = !DILocalVariable(name: "__dummy2", scope: !4612, file: !3, line: 644, type: !288)
!4616 = !DILocation(line: 644, column: 2, scope: !4613)
!4617 = !DILocation(line: 644, column: 2, scope: !4557)
!4618 = !{i32 -2142490254}
!4619 = !DILocation(line: 329, column: 10, scope: !4057, inlinedAt: !4555)
!4620 = !DILocation(line: 329, column: 16, scope: !4057, inlinedAt: !4555)
!4621 = !DILocation(line: 644, column: 2, scope: !4556)
!4622 = !DILocalVariable(name: "__mptr", scope: !4623, file: !3, line: 646, type: !168)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 646, column: 2)
!4624 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 646, column: 2)
!4625 = !DILocation(line: 646, column: 2, scope: !4623)
!4626 = !DILocation(line: 646, column: 2, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 646, column: 2)
!4628 = !DILocation(line: 646, column: 2, scope: !4624)
!4629 = !DILocation(line: 646, column: 2, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 646, column: 2)
!4631 = !DILocation(line: 647, column: 7, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 647, column: 7)
!4633 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 646, column: 44)
!4634 = !DILocation(line: 647, column: 12, scope: !4632)
!4635 = !DILocation(line: 647, column: 20, scope: !4632)
!4636 = !DILocation(line: 647, column: 17, scope: !4632)
!4637 = !DILocation(line: 647, column: 7, scope: !4633)
!4638 = !DILocation(line: 648, column: 8, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 647, column: 26)
!4640 = !DILocation(line: 649, column: 4, scope: !4639)
!4641 = !DILocation(line: 651, column: 4, scope: !4639)
!4642 = !DILocation(line: 653, column: 2, scope: !4633)
!4643 = !DILocalVariable(name: "__mptr", scope: !4644, file: !3, line: 646, type: !168)
!4644 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 646, column: 2)
!4645 = !DILocation(line: 646, column: 2, scope: !4644)
!4646 = !DILocation(line: 646, column: 2, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 646, column: 2)
!4648 = distinct !{!4648, !4628, !4649}
!4649 = !DILocation(line: 653, column: 2, scope: !4624)
!4650 = !DILocation(line: 655, column: 12, scope: !4551)
!4651 = !DILocation(line: 655, column: 2, scope: !4551)
!4652 = !DILocation(line: 655, column: 5, scope: !4551)
!4653 = !DILocation(line: 655, column: 10, scope: !4551)
!4654 = !DILocation(line: 656, column: 17, scope: !4551)
!4655 = !DILocation(line: 656, column: 20, scope: !4551)
!4656 = !DILocation(line: 656, column: 2, scope: !4551)
!4657 = !DILabel(scope: !4551, name: "out", file: !3, line: 658)
!4658 = !DILocation(line: 658, column: 1, scope: !4551)
!4659 = !DILocation(line: 659, column: 36, scope: !4551)
!4660 = !DILocation(line: 409, column: 2, scope: !4128, inlinedAt: !4562)
!4661 = !DILocation(line: 409, column: 2, scope: !4133, inlinedAt: !4562)
!4662 = !DILocation(line: 409, column: 2, scope: !4134, inlinedAt: !4562)
!4663 = !DILocation(line: 409, column: 2, scope: !4141, inlinedAt: !4562)
!4664 = !DILocation(line: 409, column: 2, scope: !4144, inlinedAt: !4562)
!4665 = !DILocation(line: 660, column: 9, scope: !4551)
!4666 = !DILocation(line: 660, column: 2, scope: !4551)
!4667 = !DILocation(line: 661, column: 1, scope: !4551)
!4668 = distinct !DISubprogram(name: "usb_charger_init", scope: !3, file: !3, line: 318, type: !3723, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4669 = !DILocalVariable(name: "usb_phy", arg: 1, scope: !4668, file: !3, line: 318, type: !169)
!4670 = !DILocation(line: 318, column: 46, scope: !4668)
!4671 = !DILocation(line: 320, column: 2, scope: !4668)
!4672 = !DILocation(line: 320, column: 11, scope: !4668)
!4673 = !DILocation(line: 320, column: 20, scope: !4668)
!4674 = !DILocation(line: 321, column: 2, scope: !4668)
!4675 = !DILocation(line: 321, column: 11, scope: !4668)
!4676 = !DILocation(line: 321, column: 21, scope: !4668)
!4677 = !DILocation(line: 322, column: 30, scope: !4668)
!4678 = !DILocation(line: 322, column: 2, scope: !4668)
!4679 = !DILocation(line: 323, column: 2, scope: !4668)
!4680 = !DILocation(line: 323, column: 2, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 323, column: 2)
!4682 = !DILocation(line: 324, column: 1, scope: !4668)
!4683 = distinct !DISubprogram(name: "usb_add_extcon", scope: !3, file: !3, line: 326, type: !3719, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4684 = !DILocalVariable(name: "x", arg: 1, scope: !4683, file: !3, line: 326, type: !169)
!4685 = !DILocation(line: 326, column: 43, scope: !4683)
!4686 = !DILocalVariable(name: "ret", scope: !4683, file: !3, line: 328, type: !223)
!4687 = !DILocation(line: 328, column: 6, scope: !4683)
!4688 = !DILocation(line: 330, column: 28, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 330, column: 6)
!4690 = !DILocation(line: 330, column: 31, scope: !4689)
!4691 = !DILocation(line: 330, column: 36, scope: !4689)
!4692 = !DILocation(line: 330, column: 6, scope: !4689)
!4693 = !DILocation(line: 330, column: 6, scope: !4683)
!4694 = !DILocation(line: 331, column: 40, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 330, column: 56)
!4696 = !DILocation(line: 331, column: 43, scope: !4695)
!4697 = !DILocation(line: 331, column: 13, scope: !4695)
!4698 = !DILocation(line: 331, column: 3, scope: !4695)
!4699 = !DILocation(line: 331, column: 6, scope: !4695)
!4700 = !DILocation(line: 331, column: 11, scope: !4695)
!4701 = !DILocation(line: 332, column: 14, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 332, column: 7)
!4703 = !DILocation(line: 332, column: 17, scope: !4702)
!4704 = !DILocation(line: 332, column: 7, scope: !4702)
!4705 = !DILocation(line: 332, column: 7, scope: !4695)
!4706 = !DILocation(line: 333, column: 19, scope: !4702)
!4707 = !DILocation(line: 333, column: 22, scope: !4702)
!4708 = !DILocation(line: 333, column: 11, scope: !4702)
!4709 = !DILocation(line: 333, column: 4, scope: !4702)
!4710 = !DILocation(line: 335, column: 43, scope: !4695)
!4711 = !DILocation(line: 335, column: 46, scope: !4695)
!4712 = !DILocation(line: 335, column: 16, scope: !4695)
!4713 = !DILocation(line: 335, column: 3, scope: !4695)
!4714 = !DILocation(line: 335, column: 6, scope: !4695)
!4715 = !DILocation(line: 335, column: 14, scope: !4695)
!4716 = !DILocation(line: 336, column: 14, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 336, column: 7)
!4718 = !DILocation(line: 336, column: 17, scope: !4717)
!4719 = !DILocation(line: 336, column: 7, scope: !4717)
!4720 = !DILocation(line: 336, column: 7, scope: !4695)
!4721 = !DILocation(line: 337, column: 4, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 336, column: 27)
!4723 = !DILocation(line: 337, column: 7, scope: !4722)
!4724 = !DILocation(line: 337, column: 15, scope: !4722)
!4725 = !DILocation(line: 338, column: 4, scope: !4722)
!4726 = !DILocation(line: 339, column: 3, scope: !4722)
!4727 = !DILocation(line: 341, column: 7, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 341, column: 7)
!4729 = !DILocation(line: 341, column: 10, scope: !4728)
!4730 = !DILocation(line: 341, column: 18, scope: !4728)
!4731 = !DILocation(line: 341, column: 7, scope: !4695)
!4732 = !DILocation(line: 342, column: 40, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 341, column: 33)
!4734 = !DILocation(line: 342, column: 43, scope: !4733)
!4735 = !DILocation(line: 342, column: 48, scope: !4733)
!4736 = !DILocation(line: 342, column: 51, scope: !4733)
!4737 = !DILocation(line: 344, column: 13, scope: !4733)
!4738 = !DILocation(line: 344, column: 16, scope: !4733)
!4739 = !DILocation(line: 342, column: 10, scope: !4733)
!4740 = !DILocation(line: 342, column: 8, scope: !4733)
!4741 = !DILocation(line: 345, column: 8, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4733, file: !3, line: 345, column: 8)
!4743 = !DILocation(line: 345, column: 12, scope: !4742)
!4744 = !DILocation(line: 345, column: 8, scope: !4733)
!4745 = !DILocation(line: 346, column: 5, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 345, column: 17)
!4747 = !DILocation(line: 348, column: 12, scope: !4746)
!4748 = !DILocation(line: 348, column: 5, scope: !4746)
!4749 = !DILocation(line: 350, column: 3, scope: !4733)
!4750 = !DILocation(line: 351, column: 4, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 350, column: 10)
!4752 = !DILocation(line: 351, column: 7, scope: !4751)
!4753 = !DILocation(line: 351, column: 15, scope: !4751)
!4754 = !DILocation(line: 351, column: 29, scope: !4751)
!4755 = !DILocation(line: 353, column: 40, scope: !4751)
!4756 = !DILocation(line: 353, column: 43, scope: !4751)
!4757 = !DILocation(line: 353, column: 48, scope: !4751)
!4758 = !DILocation(line: 353, column: 51, scope: !4751)
!4759 = !DILocation(line: 355, column: 13, scope: !4751)
!4760 = !DILocation(line: 355, column: 16, scope: !4751)
!4761 = !DILocation(line: 353, column: 10, scope: !4751)
!4762 = !DILocation(line: 353, column: 8, scope: !4751)
!4763 = !DILocation(line: 356, column: 8, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 356, column: 8)
!4765 = !DILocation(line: 356, column: 8, scope: !4751)
!4766 = !DILocation(line: 357, column: 5, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4764, file: !3, line: 356, column: 13)
!4768 = !DILocation(line: 359, column: 12, scope: !4767)
!4769 = !DILocation(line: 359, column: 5, scope: !4767)
!4770 = !DILocation(line: 362, column: 40, scope: !4751)
!4771 = !DILocation(line: 362, column: 43, scope: !4751)
!4772 = !DILocation(line: 362, column: 48, scope: !4751)
!4773 = !DILocation(line: 362, column: 51, scope: !4751)
!4774 = !DILocation(line: 364, column: 13, scope: !4751)
!4775 = !DILocation(line: 364, column: 16, scope: !4751)
!4776 = !DILocation(line: 362, column: 10, scope: !4751)
!4777 = !DILocation(line: 362, column: 8, scope: !4751)
!4778 = !DILocation(line: 365, column: 8, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 365, column: 8)
!4780 = !DILocation(line: 365, column: 8, scope: !4751)
!4781 = !DILocation(line: 366, column: 5, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 365, column: 13)
!4783 = !DILocation(line: 368, column: 12, scope: !4782)
!4784 = !DILocation(line: 368, column: 5, scope: !4782)
!4785 = !DILocation(line: 371, column: 40, scope: !4751)
!4786 = !DILocation(line: 371, column: 43, scope: !4751)
!4787 = !DILocation(line: 371, column: 48, scope: !4751)
!4788 = !DILocation(line: 371, column: 51, scope: !4751)
!4789 = !DILocation(line: 373, column: 13, scope: !4751)
!4790 = !DILocation(line: 373, column: 16, scope: !4751)
!4791 = !DILocation(line: 371, column: 10, scope: !4751)
!4792 = !DILocation(line: 371, column: 8, scope: !4751)
!4793 = !DILocation(line: 374, column: 8, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 374, column: 8)
!4795 = !DILocation(line: 374, column: 8, scope: !4751)
!4796 = !DILocation(line: 375, column: 5, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 374, column: 13)
!4798 = !DILocation(line: 377, column: 12, scope: !4797)
!4799 = !DILocation(line: 377, column: 5, scope: !4797)
!4800 = !DILocation(line: 380, column: 40, scope: !4751)
!4801 = !DILocation(line: 380, column: 43, scope: !4751)
!4802 = !DILocation(line: 380, column: 48, scope: !4751)
!4803 = !DILocation(line: 380, column: 51, scope: !4751)
!4804 = !DILocation(line: 382, column: 13, scope: !4751)
!4805 = !DILocation(line: 382, column: 16, scope: !4751)
!4806 = !DILocation(line: 380, column: 10, scope: !4751)
!4807 = !DILocation(line: 380, column: 8, scope: !4751)
!4808 = !DILocation(line: 383, column: 8, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 383, column: 8)
!4810 = !DILocation(line: 383, column: 8, scope: !4751)
!4811 = !DILocation(line: 384, column: 5, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 383, column: 13)
!4813 = !DILocation(line: 386, column: 12, scope: !4812)
!4814 = !DILocation(line: 386, column: 5, scope: !4812)
!4815 = !DILocation(line: 390, column: 7, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 390, column: 7)
!4817 = !DILocation(line: 390, column: 10, scope: !4816)
!4818 = !DILocation(line: 390, column: 16, scope: !4816)
!4819 = !DILocation(line: 390, column: 7, scope: !4695)
!4820 = !DILocalVariable(name: "id_ext", scope: !4821, file: !3, line: 391, type: !3677)
!4821 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 390, column: 31)
!4822 = !DILocation(line: 391, column: 23, scope: !4821)
!4823 = !DILocation(line: 393, column: 8, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 393, column: 8)
!4825 = !DILocation(line: 393, column: 11, scope: !4824)
!4826 = !DILocation(line: 393, column: 8, scope: !4821)
!4827 = !DILocation(line: 394, column: 14, scope: !4824)
!4828 = !DILocation(line: 394, column: 17, scope: !4824)
!4829 = !DILocation(line: 394, column: 12, scope: !4824)
!4830 = !DILocation(line: 394, column: 5, scope: !4824)
!4831 = !DILocation(line: 396, column: 14, scope: !4824)
!4832 = !DILocation(line: 396, column: 17, scope: !4824)
!4833 = !DILocation(line: 396, column: 12, scope: !4824)
!4834 = !DILocation(line: 398, column: 40, scope: !4821)
!4835 = !DILocation(line: 398, column: 43, scope: !4821)
!4836 = !DILocation(line: 398, column: 48, scope: !4821)
!4837 = !DILocation(line: 400, column: 13, scope: !4821)
!4838 = !DILocation(line: 400, column: 16, scope: !4821)
!4839 = !DILocation(line: 398, column: 10, scope: !4821)
!4840 = !DILocation(line: 398, column: 8, scope: !4821)
!4841 = !DILocation(line: 401, column: 8, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 401, column: 8)
!4843 = !DILocation(line: 401, column: 12, scope: !4842)
!4844 = !DILocation(line: 401, column: 8, scope: !4821)
!4845 = !DILocation(line: 402, column: 5, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 401, column: 17)
!4847 = !DILocation(line: 404, column: 12, scope: !4846)
!4848 = !DILocation(line: 404, column: 5, scope: !4846)
!4849 = !DILocation(line: 406, column: 3, scope: !4821)
!4850 = !DILocation(line: 407, column: 2, scope: !4695)
!4851 = !DILocation(line: 409, column: 6, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 409, column: 6)
!4853 = !DILocation(line: 409, column: 9, scope: !4852)
!4854 = !DILocation(line: 409, column: 17, scope: !4852)
!4855 = !DILocation(line: 409, column: 6, scope: !4683)
!4856 = !DILocation(line: 410, column: 30, scope: !4852)
!4857 = !DILocation(line: 410, column: 3, scope: !4852)
!4858 = !DILocation(line: 412, column: 2, scope: !4683)
!4859 = !DILocation(line: 413, column: 1, scope: !4683)
!4860 = distinct !DISubprogram(name: "usb_phy_type_string", scope: !81, file: !81, line: 350, type: !4861, scopeLine: 351, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4861 = !DISubroutineType(types: !4862)
!4862 = !{!180, !80}
!4863 = !DILocalVariable(name: "type", arg: 1, scope: !4860, file: !81, line: 350, type: !80)
!4864 = !DILocation(line: 350, column: 65, scope: !4860)
!4865 = !DILocation(line: 352, column: 10, scope: !4860)
!4866 = !DILocation(line: 352, column: 2, scope: !4860)
!4867 = !DILocation(line: 354, column: 3, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4860, file: !81, line: 352, column: 16)
!4869 = !DILocation(line: 356, column: 3, scope: !4868)
!4870 = !DILocation(line: 358, column: 3, scope: !4868)
!4871 = !DILocation(line: 360, column: 1, scope: !4860)
!4872 = distinct !DISubprogram(name: "list_add_tail", scope: !4873, file: !4873, line: 98, type: !4874, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4873 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4874 = !DISubroutineType(types: !4875)
!4875 = !{null, !187, !187}
!4876 = !DILocalVariable(name: "new", arg: 1, scope: !4872, file: !4873, line: 98, type: !187)
!4877 = !DILocation(line: 98, column: 52, scope: !4872)
!4878 = !DILocalVariable(name: "head", arg: 2, scope: !4872, file: !4873, line: 98, type: !187)
!4879 = !DILocation(line: 98, column: 75, scope: !4872)
!4880 = !DILocation(line: 100, column: 13, scope: !4872)
!4881 = !DILocation(line: 100, column: 18, scope: !4872)
!4882 = !DILocation(line: 100, column: 24, scope: !4872)
!4883 = !DILocation(line: 100, column: 30, scope: !4872)
!4884 = !DILocation(line: 100, column: 2, scope: !4872)
!4885 = !DILocation(line: 101, column: 1, scope: !4872)
!4886 = distinct !DISubprogram(name: "usb_add_phy_dev", scope: !3, file: !3, line: 672, type: !3719, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4887 = !DILocation(line: 327, column: 67, scope: !4057, inlinedAt: !4888)
!4888 = distinct !DILocation(line: 689, column: 2, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 689, column: 2)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 689, column: 2)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 689, column: 2)
!4892 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 689, column: 2)
!4893 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 689, column: 2)
!4894 = !DILocation(line: 407, column: 64, scope: !4047, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 691, column: 2, scope: !4886)
!4896 = !DILocation(line: 407, column: 84, scope: !4047, inlinedAt: !4895)
!4897 = !DILocation(line: 327, column: 67, scope: !4057, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 687, column: 2, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 687, column: 2)
!4900 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 687, column: 2)
!4901 = !DILocalVariable(name: "x", arg: 1, scope: !4886, file: !3, line: 672, type: !169)
!4902 = !DILocation(line: 672, column: 37, scope: !4886)
!4903 = !DILocalVariable(name: "flags", scope: !4886, file: !3, line: 674, type: !288)
!4904 = !DILocation(line: 674, column: 16, scope: !4886)
!4905 = !DILocalVariable(name: "ret", scope: !4886, file: !3, line: 675, type: !223)
!4906 = !DILocation(line: 675, column: 6, scope: !4886)
!4907 = !DILocation(line: 677, column: 7, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 677, column: 6)
!4909 = !DILocation(line: 677, column: 10, scope: !4908)
!4910 = !DILocation(line: 677, column: 6, scope: !4886)
!4911 = !DILocation(line: 678, column: 3, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 677, column: 15)
!4913 = !DILocation(line: 679, column: 3, scope: !4912)
!4914 = !DILocation(line: 682, column: 19, scope: !4886)
!4915 = !DILocation(line: 682, column: 2, scope: !4886)
!4916 = !DILocation(line: 683, column: 23, scope: !4886)
!4917 = !DILocation(line: 683, column: 8, scope: !4886)
!4918 = !DILocation(line: 683, column: 6, scope: !4886)
!4919 = !DILocation(line: 684, column: 6, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 684, column: 6)
!4921 = !DILocation(line: 684, column: 6, scope: !4886)
!4922 = !DILocation(line: 685, column: 10, scope: !4920)
!4923 = !DILocation(line: 685, column: 3, scope: !4920)
!4924 = !DILocation(line: 687, column: 2, scope: !4886)
!4925 = !DILocation(line: 687, column: 2, scope: !4900)
!4926 = !DILocation(line: 687, column: 2, scope: !4899)
!4927 = !DILocation(line: 329, column: 10, scope: !4057, inlinedAt: !4898)
!4928 = !DILocation(line: 329, column: 16, scope: !4057, inlinedAt: !4898)
!4929 = !DILocation(line: 689, column: 2, scope: !4886)
!4930 = !DILocation(line: 689, column: 2, scope: !4893)
!4931 = !DILocalVariable(name: "__dummy", scope: !4932, file: !3, line: 689, type: !288)
!4932 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 689, column: 2)
!4933 = !DILocation(line: 689, column: 2, scope: !4932)
!4934 = !DILocalVariable(name: "__dummy2", scope: !4932, file: !3, line: 689, type: !288)
!4935 = !DILocation(line: 689, column: 2, scope: !4892)
!4936 = !DILocation(line: 689, column: 2, scope: !4891)
!4937 = !DILocation(line: 689, column: 2, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 689, column: 2)
!4939 = !DILocalVariable(name: "__dummy", scope: !4940, file: !3, line: 689, type: !288)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 689, column: 2)
!4941 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 689, column: 2)
!4942 = !DILocation(line: 689, column: 2, scope: !4940)
!4943 = !DILocalVariable(name: "__dummy2", scope: !4940, file: !3, line: 689, type: !288)
!4944 = !DILocation(line: 689, column: 2, scope: !4941)
!4945 = !DILocation(line: 689, column: 2, scope: !4890)
!4946 = !{i32 -2142484541}
!4947 = !DILocation(line: 329, column: 10, scope: !4057, inlinedAt: !4888)
!4948 = !DILocation(line: 329, column: 16, scope: !4057, inlinedAt: !4888)
!4949 = !DILocation(line: 689, column: 2, scope: !4889)
!4950 = !DILocation(line: 690, column: 17, scope: !4886)
!4951 = !DILocation(line: 690, column: 20, scope: !4886)
!4952 = !DILocation(line: 690, column: 2, scope: !4886)
!4953 = !DILocation(line: 691, column: 36, scope: !4886)
!4954 = !DILocation(line: 409, column: 2, scope: !4128, inlinedAt: !4895)
!4955 = !DILocation(line: 409, column: 2, scope: !4133, inlinedAt: !4895)
!4956 = !DILocation(line: 409, column: 2, scope: !4134, inlinedAt: !4895)
!4957 = !DILocation(line: 409, column: 2, scope: !4141, inlinedAt: !4895)
!4958 = !DILocation(line: 409, column: 2, scope: !4144, inlinedAt: !4895)
!4959 = !DILocation(line: 693, column: 2, scope: !4886)
!4960 = !DILocation(line: 694, column: 1, scope: !4886)
!4961 = distinct !DISubprogram(name: "usb_remove_phy", scope: !3, file: !3, line: 703, type: !3723, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!4962 = !DILocation(line: 407, column: 64, scope: !4047, inlinedAt: !4963)
!4963 = distinct !DILocation(line: 710, column: 2, scope: !4961)
!4964 = !DILocation(line: 407, column: 84, scope: !4047, inlinedAt: !4963)
!4965 = !DILocation(line: 327, column: 67, scope: !4057, inlinedAt: !4966)
!4966 = distinct !DILocation(line: 707, column: 2, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 707, column: 2)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 707, column: 2)
!4969 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 707, column: 2)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 707, column: 2)
!4971 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 707, column: 2)
!4972 = !DILocalVariable(name: "x", arg: 1, scope: !4961, file: !3, line: 703, type: !169)
!4973 = !DILocation(line: 703, column: 37, scope: !4961)
!4974 = !DILocalVariable(name: "flags", scope: !4961, file: !3, line: 705, type: !288)
!4975 = !DILocation(line: 705, column: 16, scope: !4961)
!4976 = !DILocation(line: 707, column: 2, scope: !4961)
!4977 = !DILocation(line: 707, column: 2, scope: !4971)
!4978 = !DILocalVariable(name: "__dummy", scope: !4979, file: !3, line: 707, type: !288)
!4979 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 707, column: 2)
!4980 = !DILocation(line: 707, column: 2, scope: !4979)
!4981 = !DILocalVariable(name: "__dummy2", scope: !4979, file: !3, line: 707, type: !288)
!4982 = !DILocation(line: 707, column: 2, scope: !4970)
!4983 = !DILocation(line: 707, column: 2, scope: !4969)
!4984 = !DILocation(line: 707, column: 2, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 707, column: 2)
!4986 = !DILocalVariable(name: "__dummy", scope: !4987, file: !3, line: 707, type: !288)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 707, column: 2)
!4988 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 707, column: 2)
!4989 = !DILocation(line: 707, column: 2, scope: !4987)
!4990 = !DILocalVariable(name: "__dummy2", scope: !4987, file: !3, line: 707, type: !288)
!4991 = !DILocation(line: 707, column: 2, scope: !4988)
!4992 = !DILocation(line: 707, column: 2, scope: !4968)
!4993 = !{i32 -2142483439}
!4994 = !DILocation(line: 329, column: 10, scope: !4057, inlinedAt: !4966)
!4995 = !DILocation(line: 329, column: 16, scope: !4057, inlinedAt: !4966)
!4996 = !DILocation(line: 707, column: 2, scope: !4967)
!4997 = !DILocation(line: 708, column: 6, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 708, column: 6)
!4999 = !DILocation(line: 708, column: 6, scope: !4961)
!5000 = !DILocation(line: 709, column: 13, scope: !4998)
!5001 = !DILocation(line: 709, column: 16, scope: !4998)
!5002 = !DILocation(line: 709, column: 3, scope: !4998)
!5003 = !DILocation(line: 710, column: 36, scope: !4961)
!5004 = !DILocation(line: 409, column: 2, scope: !4128, inlinedAt: !4963)
!5005 = !DILocation(line: 409, column: 2, scope: !4133, inlinedAt: !4963)
!5006 = !DILocation(line: 409, column: 2, scope: !4134, inlinedAt: !4963)
!5007 = !DILocation(line: 409, column: 2, scope: !4141, inlinedAt: !4963)
!5008 = !DILocation(line: 409, column: 2, scope: !4144, inlinedAt: !4963)
!5009 = !DILocation(line: 711, column: 1, scope: !4961)
!5010 = distinct !DISubprogram(name: "list_del", scope: !4873, file: !4873, line: 144, type: !5011, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{null, !187}
!5013 = !DILocalVariable(name: "entry", arg: 1, scope: !5010, file: !4873, line: 144, type: !187)
!5014 = !DILocation(line: 144, column: 47, scope: !5010)
!5015 = !DILocation(line: 146, column: 19, scope: !5010)
!5016 = !DILocation(line: 146, column: 2, scope: !5010)
!5017 = !DILocation(line: 147, column: 2, scope: !5010)
!5018 = !DILocation(line: 147, column: 9, scope: !5010)
!5019 = !DILocation(line: 147, column: 14, scope: !5010)
!5020 = !DILocation(line: 148, column: 2, scope: !5010)
!5021 = !DILocation(line: 148, column: 9, scope: !5010)
!5022 = !DILocation(line: 148, column: 14, scope: !5010)
!5023 = !DILocation(line: 149, column: 1, scope: !5010)
!5024 = distinct !DISubprogram(name: "usb_phy_set_event", scope: !3, file: !3, line: 721, type: !5025, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{null, !169, !288}
!5027 = !DILocalVariable(name: "x", arg: 1, scope: !5024, file: !3, line: 721, type: !169)
!5028 = !DILocation(line: 721, column: 40, scope: !5024)
!5029 = !DILocalVariable(name: "event", arg: 2, scope: !5024, file: !3, line: 721, type: !288)
!5030 = !DILocation(line: 721, column: 57, scope: !5024)
!5031 = !DILocation(line: 723, column: 18, scope: !5024)
!5032 = !DILocation(line: 723, column: 2, scope: !5024)
!5033 = !DILocation(line: 723, column: 5, scope: !5024)
!5034 = !DILocation(line: 723, column: 16, scope: !5024)
!5035 = !DILocation(line: 724, column: 1, scope: !5024)
!5036 = distinct !DISubprogram(name: "queue_work", scope: !122, file: !122, line: 504, type: !5037, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{!454, !2606, !1854}
!5039 = !DILocalVariable(name: "wq", arg: 1, scope: !5036, file: !122, line: 504, type: !2606)
!5040 = !DILocation(line: 504, column: 56, scope: !5036)
!5041 = !DILocalVariable(name: "work", arg: 2, scope: !5036, file: !122, line: 505, type: !1854)
!5042 = !DILocation(line: 505, column: 30, scope: !5036)
!5043 = !DILocation(line: 507, column: 41, scope: !5036)
!5044 = !DILocation(line: 507, column: 45, scope: !5036)
!5045 = !DILocation(line: 507, column: 9, scope: !5036)
!5046 = !DILocation(line: 507, column: 2, scope: !5036)
!5047 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4155, file: !4155, line: 646, type: !4156, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5048 = !DILocalVariable(name: "__ret", scope: !5049, file: !4155, line: 648, type: !288)
!5049 = distinct !DILexicalBlock(scope: !5047, file: !4155, line: 648, column: 9)
!5050 = !DILocation(line: 648, column: 9, scope: !5049)
!5051 = !DILocalVariable(name: "__edi", scope: !5049, file: !4155, line: 648, type: !288)
!5052 = !DILocalVariable(name: "__esi", scope: !5049, file: !4155, line: 648, type: !288)
!5053 = !DILocalVariable(name: "__edx", scope: !5049, file: !4155, line: 648, type: !288)
!5054 = !DILocalVariable(name: "__ecx", scope: !5049, file: !4155, line: 648, type: !288)
!5055 = !DILocalVariable(name: "__eax", scope: !5049, file: !4155, line: 648, type: !288)
!5056 = !DILocation(line: 648, column: 9, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !4155, line: 648, column: 9)
!5058 = distinct !DILexicalBlock(scope: !5049, file: !4155, line: 648, column: 9)
!5059 = !{i32 -2145745839, i32 -2145743524, i32 -2145743290, i32 -2145743239, i32 -2145743211, i32 -2145743186, i32 -2145743502, i32 -2145743489, i32 -2145743051, i32 -2145742932, i32 -2145743397, i32 -2145743370, i32 -2145743342, i32 -2145743312}
!5060 = !DILocalVariable(name: "__mask", scope: !5061, file: !4155, line: 648, type: !288)
!5061 = distinct !DILexicalBlock(scope: !5057, file: !4155, line: 648, column: 9)
!5062 = !DILocation(line: 648, column: 9, scope: !5061)
!5063 = !DILocation(line: 648, column: 9, scope: !5058)
!5064 = !DILocation(line: 648, column: 2, scope: !5047)
!5065 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4155, file: !4155, line: 656, type: !1766, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5066 = !DILocalVariable(name: "__edi", scope: !5067, file: !4155, line: 658, type: !288)
!5067 = distinct !DILexicalBlock(scope: !5065, file: !4155, line: 658, column: 2)
!5068 = !DILocation(line: 658, column: 2, scope: !5067)
!5069 = !DILocalVariable(name: "__esi", scope: !5067, file: !4155, line: 658, type: !288)
!5070 = !DILocalVariable(name: "__edx", scope: !5067, file: !4155, line: 658, type: !288)
!5071 = !DILocalVariable(name: "__ecx", scope: !5067, file: !4155, line: 658, type: !288)
!5072 = !DILocalVariable(name: "__eax", scope: !5067, file: !4155, line: 658, type: !288)
!5073 = !{i32 -2145738745, i32 -2145738013, i32 -2145737779, i32 -2145737728, i32 -2145737700, i32 -2145737675, i32 -2145737991, i32 -2145737978, i32 -2145737540, i32 -2145737421, i32 -2145737886, i32 -2145737859, i32 -2145737831, i32 -2145737801}
!5074 = !DILocation(line: 659, column: 1, scope: !5065)
!5075 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4155, file: !4155, line: 651, type: !5076, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{null, !288}
!5078 = !DILocalVariable(name: "f", arg: 1, scope: !5075, file: !4155, line: 651, type: !288)
!5079 = !DILocation(line: 651, column: 65, scope: !5075)
!5080 = !DILocalVariable(name: "__edi", scope: !5081, file: !4155, line: 653, type: !288)
!5081 = distinct !DILexicalBlock(scope: !5075, file: !4155, line: 653, column: 2)
!5082 = !DILocation(line: 653, column: 2, scope: !5081)
!5083 = !DILocalVariable(name: "__esi", scope: !5081, file: !4155, line: 653, type: !288)
!5084 = !DILocalVariable(name: "__edx", scope: !5081, file: !4155, line: 653, type: !288)
!5085 = !DILocalVariable(name: "__ecx", scope: !5081, file: !4155, line: 653, type: !288)
!5086 = !DILocalVariable(name: "__eax", scope: !5081, file: !4155, line: 653, type: !288)
!5087 = !{i32 -2145741372, i32 -2145740622, i32 -2145740388, i32 -2145740337, i32 -2145740309, i32 -2145740284, i32 -2145740600, i32 -2145740587, i32 -2145740149, i32 -2145740030, i32 -2145740495, i32 -2145740468, i32 -2145740440, i32 -2145740410}
!5088 = !DILocation(line: 654, column: 1, scope: !5075)
!5089 = distinct !DISubprogram(name: "usb_unregister_notifier", scope: !81, file: !81, line: 345, type: !5090, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !169, !3690}
!5092 = !DILocalVariable(name: "x", arg: 1, scope: !5089, file: !81, line: 345, type: !169)
!5093 = !DILocation(line: 345, column: 41, scope: !5089)
!5094 = !DILocalVariable(name: "nb", arg: 2, scope: !5089, file: !81, line: 345, type: !3690)
!5095 = !DILocation(line: 345, column: 67, scope: !5089)
!5096 = !DILocation(line: 347, column: 36, scope: !5089)
!5097 = !DILocation(line: 347, column: 39, scope: !5089)
!5098 = !DILocation(line: 347, column: 49, scope: !5089)
!5099 = !DILocation(line: 347, column: 2, scope: !5089)
!5100 = !DILocation(line: 348, column: 1, scope: !5089)
!5101 = distinct !DISubprogram(name: "kobject_name", scope: !155, file: !155, line: 88, type: !5102, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!180, !5104}
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!5106 = !DILocalVariable(name: "kobj", arg: 1, scope: !5101, file: !155, line: 88, type: !5104)
!5107 = !DILocation(line: 88, column: 62, scope: !5101)
!5108 = !DILocation(line: 90, column: 9, scope: !5101)
!5109 = !DILocation(line: 90, column: 15, scope: !5101)
!5110 = !DILocation(line: 90, column: 2, scope: !5101)
!5111 = distinct !DISubprogram(name: "usb_phy_set_default_current", scope: !3, file: !3, line: 77, type: !3723, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5112 = !DILocalVariable(name: "usb_phy", arg: 1, scope: !5111, file: !3, line: 77, type: !169)
!5113 = !DILocation(line: 77, column: 57, scope: !5111)
!5114 = !DILocation(line: 79, column: 2, scope: !5111)
!5115 = !DILocation(line: 79, column: 11, scope: !5111)
!5116 = !DILocation(line: 79, column: 19, scope: !5111)
!5117 = !DILocation(line: 79, column: 27, scope: !5111)
!5118 = !DILocation(line: 80, column: 2, scope: !5111)
!5119 = !DILocation(line: 80, column: 11, scope: !5111)
!5120 = !DILocation(line: 80, column: 19, scope: !5111)
!5121 = !DILocation(line: 80, column: 27, scope: !5111)
!5122 = !DILocation(line: 81, column: 2, scope: !5111)
!5123 = !DILocation(line: 81, column: 11, scope: !5111)
!5124 = !DILocation(line: 81, column: 19, scope: !5111)
!5125 = !DILocation(line: 81, column: 27, scope: !5111)
!5126 = !DILocation(line: 82, column: 2, scope: !5111)
!5127 = !DILocation(line: 82, column: 11, scope: !5111)
!5128 = !DILocation(line: 82, column: 19, scope: !5111)
!5129 = !DILocation(line: 82, column: 27, scope: !5111)
!5130 = !DILocation(line: 83, column: 2, scope: !5111)
!5131 = !DILocation(line: 83, column: 11, scope: !5111)
!5132 = !DILocation(line: 83, column: 19, scope: !5111)
!5133 = !DILocation(line: 83, column: 27, scope: !5111)
!5134 = !DILocation(line: 84, column: 2, scope: !5111)
!5135 = !DILocation(line: 84, column: 11, scope: !5111)
!5136 = !DILocation(line: 84, column: 19, scope: !5111)
!5137 = !DILocation(line: 84, column: 27, scope: !5111)
!5138 = !DILocation(line: 85, column: 2, scope: !5111)
!5139 = !DILocation(line: 85, column: 11, scope: !5111)
!5140 = !DILocation(line: 85, column: 19, scope: !5111)
!5141 = !DILocation(line: 85, column: 27, scope: !5111)
!5142 = !DILocation(line: 86, column: 2, scope: !5111)
!5143 = !DILocation(line: 86, column: 11, scope: !5111)
!5144 = !DILocation(line: 86, column: 19, scope: !5111)
!5145 = !DILocation(line: 86, column: 27, scope: !5111)
!5146 = !DILocation(line: 87, column: 1, scope: !5111)
!5147 = distinct !DISubprogram(name: "__init_work", scope: !122, file: !122, line: 215, type: !5148, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{null, !1854, !223}
!5150 = !DILocalVariable(name: "work", arg: 1, scope: !5147, file: !122, line: 215, type: !1854)
!5151 = !DILocation(line: 215, column: 52, scope: !5147)
!5152 = !DILocalVariable(name: "onstack", arg: 2, scope: !5147, file: !122, line: 215, type: !223)
!5153 = !DILocation(line: 215, column: 62, scope: !5147)
!5154 = !DILocation(line: 215, column: 73, scope: !5147)
!5155 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4873, file: !4873, line: 33, type: !5011, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5156 = !DILocalVariable(name: "list", arg: 1, scope: !5155, file: !4873, line: 33, type: !187)
!5157 = !DILocation(line: 33, column: 53, scope: !5155)
!5158 = !DILocation(line: 35, column: 2, scope: !5155)
!5159 = !DILocation(line: 35, column: 2, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5155, file: !4873, line: 35, column: 2)
!5161 = !DILocation(line: 35, column: 2, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5160, file: !4873, line: 35, column: 2)
!5163 = !DILocation(line: 35, column: 2, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5160, file: !4873, line: 35, column: 2)
!5165 = !DILocation(line: 36, column: 15, scope: !5155)
!5166 = !DILocation(line: 36, column: 2, scope: !5155)
!5167 = !DILocation(line: 36, column: 8, scope: !5155)
!5168 = !DILocation(line: 36, column: 13, scope: !5155)
!5169 = !DILocation(line: 37, column: 1, scope: !5155)
!5170 = distinct !DISubprogram(name: "usb_phy_notify_charger_work", scope: !3, file: !3, line: 105, type: !1852, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5171 = !DILocalVariable(name: "work", arg: 1, scope: !5170, file: !3, line: 105, type: !1854)
!5172 = !DILocation(line: 105, column: 61, scope: !5170)
!5173 = !DILocalVariable(name: "usb_phy", scope: !5170, file: !3, line: 107, type: !169)
!5174 = !DILocation(line: 107, column: 18, scope: !5170)
!5175 = !DILocalVariable(name: "__mptr", scope: !5176, file: !3, line: 107, type: !168)
!5176 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 107, column: 28)
!5177 = !DILocation(line: 107, column: 28, scope: !5176)
!5178 = !DILocation(line: 107, column: 28, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 107, column: 28)
!5180 = !DILocalVariable(name: "uchger_state", scope: !5170, file: !3, line: 108, type: !5181)
!5181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 400, elements: !5182)
!5182 = !{!5183}
!5183 = !DISubrange(count: 50)
!5184 = !DILocation(line: 108, column: 7, scope: !5170)
!5185 = !DILocalVariable(name: "uchger_type", scope: !5170, file: !3, line: 109, type: !5181)
!5186 = !DILocation(line: 109, column: 7, scope: !5170)
!5187 = !DILocalVariable(name: "envp", scope: !5170, file: !3, line: 110, type: !238)
!5188 = !DILocation(line: 110, column: 8, scope: !5170)
!5189 = !DILocation(line: 110, column: 17, scope: !5170)
!5190 = !DILocation(line: 110, column: 19, scope: !5170)
!5191 = !DILocation(line: 110, column: 33, scope: !5170)
!5192 = !DILocalVariable(name: "min", scope: !5170, file: !3, line: 111, type: !7)
!5193 = !DILocation(line: 111, column: 15, scope: !5170)
!5194 = !DILocalVariable(name: "max", scope: !5170, file: !3, line: 111, type: !7)
!5195 = !DILocation(line: 111, column: 20, scope: !5170)
!5196 = !DILocation(line: 113, column: 10, scope: !5170)
!5197 = !DILocation(line: 113, column: 19, scope: !5170)
!5198 = !DILocation(line: 113, column: 2, scope: !5170)
!5199 = !DILocation(line: 115, column: 31, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 113, column: 30)
!5201 = !DILocation(line: 115, column: 3, scope: !5200)
!5202 = !DILocation(line: 117, column: 31, scope: !5200)
!5203 = !DILocation(line: 117, column: 40, scope: !5200)
!5204 = !DILocation(line: 117, column: 50, scope: !5200)
!5205 = !DILocation(line: 117, column: 55, scope: !5200)
!5206 = !DILocation(line: 117, column: 3, scope: !5200)
!5207 = !DILocation(line: 118, column: 12, scope: !5200)
!5208 = !DILocation(line: 118, column: 3, scope: !5200)
!5209 = !DILocation(line: 120, column: 3, scope: !5200)
!5210 = !DILocation(line: 122, column: 31, scope: !5200)
!5211 = !DILocation(line: 122, column: 3, scope: !5200)
!5212 = !DILocation(line: 124, column: 31, scope: !5200)
!5213 = !DILocation(line: 124, column: 40, scope: !5200)
!5214 = !DILocation(line: 124, column: 53, scope: !5200)
!5215 = !DILocation(line: 124, column: 3, scope: !5200)
!5216 = !DILocation(line: 125, column: 12, scope: !5200)
!5217 = !DILocation(line: 125, column: 3, scope: !5200)
!5218 = !DILocation(line: 127, column: 3, scope: !5200)
!5219 = !DILocation(line: 129, column: 3, scope: !5200)
!5220 = !DILocation(line: 131, column: 3, scope: !5200)
!5221 = !DILocation(line: 134, column: 11, scope: !5170)
!5222 = !DILocation(line: 135, column: 42, scope: !5170)
!5223 = !DILocation(line: 135, column: 51, scope: !5170)
!5224 = !DILocation(line: 135, column: 27, scope: !5170)
!5225 = !DILocation(line: 134, column: 2, scope: !5170)
!5226 = !DILocation(line: 136, column: 22, scope: !5170)
!5227 = !DILocation(line: 136, column: 31, scope: !5170)
!5228 = !DILocation(line: 136, column: 36, scope: !5170)
!5229 = !DILocation(line: 136, column: 55, scope: !5170)
!5230 = !DILocation(line: 136, column: 2, scope: !5170)
!5231 = !DILocation(line: 137, column: 1, scope: !5170)
!5232 = distinct !DISubprogram(name: "of_property_read_bool", scope: !3494, file: !3494, line: 1192, type: !5233, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!454, !5235, !180}
!5235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5236, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!5237 = !DILocalVariable(name: "np", arg: 1, scope: !5232, file: !3494, line: 1192, type: !5235)
!5238 = !DILocation(line: 1192, column: 68, scope: !5232)
!5239 = !DILocalVariable(name: "propname", arg: 2, scope: !5232, file: !3494, line: 1193, type: !180)
!5240 = !DILocation(line: 1193, column: 19, scope: !5232)
!5241 = !DILocalVariable(name: "prop", scope: !5232, file: !3494, line: 1195, type: !3591)
!5242 = !DILocation(line: 1195, column: 19, scope: !5232)
!5243 = !DILocation(line: 1195, column: 43, scope: !5232)
!5244 = !DILocation(line: 1195, column: 47, scope: !5232)
!5245 = !DILocation(line: 1195, column: 26, scope: !5232)
!5246 = !DILocation(line: 1197, column: 9, scope: !5232)
!5247 = !DILocation(line: 1197, column: 2, scope: !5232)
!5248 = distinct !DISubprogram(name: "PTR_ERR", scope: !4035, file: !4035, line: 29, type: !5249, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!123, !3019}
!5251 = !DILocalVariable(name: "ptr", arg: 1, scope: !5248, file: !4035, line: 29, type: !3019)
!5252 = !DILocation(line: 29, column: 61, scope: !5248)
!5253 = !DILocation(line: 31, column: 16, scope: !5248)
!5254 = !DILocation(line: 31, column: 9, scope: !5248)
!5255 = !DILocation(line: 31, column: 2, scope: !5248)
!5256 = distinct !DISubprogram(name: "usb_phy_get_charger_type", scope: !3, file: !3, line: 170, type: !3688, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5257 = !DILocalVariable(name: "nb", arg: 1, scope: !5256, file: !3, line: 170, type: !3690)
!5258 = !DILocation(line: 170, column: 60, scope: !5256)
!5259 = !DILocalVariable(name: "state", arg: 2, scope: !5256, file: !3, line: 171, type: !288)
!5260 = !DILocation(line: 171, column: 23, scope: !5256)
!5261 = !DILocalVariable(name: "data", arg: 3, scope: !5256, file: !3, line: 171, type: !168)
!5262 = !DILocation(line: 171, column: 36, scope: !5256)
!5263 = !DILocalVariable(name: "usb_phy", scope: !5256, file: !3, line: 173, type: !169)
!5264 = !DILocation(line: 173, column: 18, scope: !5256)
!5265 = !DILocalVariable(name: "__mptr", scope: !5266, file: !3, line: 173, type: !168)
!5266 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 173, column: 28)
!5267 = !DILocation(line: 173, column: 28, scope: !5266)
!5268 = !DILocation(line: 173, column: 28, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 173, column: 28)
!5270 = !DILocation(line: 175, column: 29, scope: !5256)
!5271 = !DILocation(line: 175, column: 2, scope: !5256)
!5272 = !DILocation(line: 176, column: 2, scope: !5256)
!5273 = distinct !DISubprogram(name: "__usb_phy_get_charger_type", scope: !3, file: !3, line: 139, type: !3723, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5274 = !DILocalVariable(name: "usb_phy", arg: 1, scope: !5273, file: !3, line: 139, type: !169)
!5275 = !DILocation(line: 139, column: 56, scope: !5273)
!5276 = !DILocation(line: 141, column: 23, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 141, column: 6)
!5278 = !DILocation(line: 141, column: 32, scope: !5277)
!5279 = !DILocation(line: 141, column: 6, scope: !5277)
!5280 = !DILocation(line: 141, column: 58, scope: !5277)
!5281 = !DILocation(line: 141, column: 6, scope: !5273)
!5282 = !DILocation(line: 142, column: 3, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 141, column: 63)
!5284 = !DILocation(line: 142, column: 12, scope: !5283)
!5285 = !DILocation(line: 142, column: 21, scope: !5283)
!5286 = !DILocation(line: 143, column: 3, scope: !5283)
!5287 = !DILocation(line: 143, column: 12, scope: !5283)
!5288 = !DILocation(line: 143, column: 22, scope: !5283)
!5289 = !DILocation(line: 144, column: 2, scope: !5283)
!5290 = !DILocation(line: 144, column: 30, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 144, column: 13)
!5292 = !DILocation(line: 144, column: 39, scope: !5291)
!5293 = !DILocation(line: 144, column: 13, scope: !5291)
!5294 = !DILocation(line: 144, column: 65, scope: !5291)
!5295 = !DILocation(line: 144, column: 13, scope: !5277)
!5296 = !DILocation(line: 145, column: 3, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 144, column: 70)
!5298 = !DILocation(line: 145, column: 12, scope: !5297)
!5299 = !DILocation(line: 145, column: 21, scope: !5297)
!5300 = !DILocation(line: 146, column: 3, scope: !5297)
!5301 = !DILocation(line: 146, column: 12, scope: !5297)
!5302 = !DILocation(line: 146, column: 22, scope: !5297)
!5303 = !DILocation(line: 147, column: 2, scope: !5297)
!5304 = !DILocation(line: 147, column: 30, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 147, column: 13)
!5306 = !DILocation(line: 147, column: 39, scope: !5305)
!5307 = !DILocation(line: 147, column: 13, scope: !5305)
!5308 = !DILocation(line: 147, column: 65, scope: !5305)
!5309 = !DILocation(line: 147, column: 13, scope: !5291)
!5310 = !DILocation(line: 148, column: 3, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 147, column: 70)
!5312 = !DILocation(line: 148, column: 12, scope: !5311)
!5313 = !DILocation(line: 148, column: 21, scope: !5311)
!5314 = !DILocation(line: 149, column: 3, scope: !5311)
!5315 = !DILocation(line: 149, column: 12, scope: !5311)
!5316 = !DILocation(line: 149, column: 22, scope: !5311)
!5317 = !DILocation(line: 150, column: 2, scope: !5311)
!5318 = !DILocation(line: 150, column: 30, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 150, column: 13)
!5320 = !DILocation(line: 150, column: 39, scope: !5319)
!5321 = !DILocation(line: 150, column: 13, scope: !5319)
!5322 = !DILocation(line: 150, column: 65, scope: !5319)
!5323 = !DILocation(line: 150, column: 13, scope: !5305)
!5324 = !DILocation(line: 151, column: 3, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 150, column: 70)
!5326 = !DILocation(line: 151, column: 12, scope: !5325)
!5327 = !DILocation(line: 151, column: 21, scope: !5325)
!5328 = !DILocation(line: 152, column: 3, scope: !5325)
!5329 = !DILocation(line: 152, column: 12, scope: !5325)
!5330 = !DILocation(line: 152, column: 22, scope: !5325)
!5331 = !DILocation(line: 153, column: 2, scope: !5325)
!5332 = !DILocation(line: 154, column: 3, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 153, column: 9)
!5334 = !DILocation(line: 154, column: 12, scope: !5333)
!5335 = !DILocation(line: 154, column: 21, scope: !5333)
!5336 = !DILocation(line: 155, column: 3, scope: !5333)
!5337 = !DILocation(line: 155, column: 12, scope: !5333)
!5338 = !DILocation(line: 155, column: 22, scope: !5333)
!5339 = !DILocation(line: 158, column: 17, scope: !5273)
!5340 = !DILocation(line: 158, column: 26, scope: !5273)
!5341 = !DILocation(line: 158, column: 2, scope: !5273)
!5342 = !DILocation(line: 159, column: 1, scope: !5273)
!5343 = distinct !DISubprogram(name: "__list_add", scope: !4873, file: !4873, line: 63, type: !5344, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5344 = !DISubroutineType(types: !5345)
!5345 = !{null, !187, !187, !187}
!5346 = !DILocalVariable(name: "new", arg: 1, scope: !5343, file: !4873, line: 63, type: !187)
!5347 = !DILocation(line: 63, column: 49, scope: !5343)
!5348 = !DILocalVariable(name: "prev", arg: 2, scope: !5343, file: !4873, line: 64, type: !187)
!5349 = !DILocation(line: 64, column: 28, scope: !5343)
!5350 = !DILocalVariable(name: "next", arg: 3, scope: !5343, file: !4873, line: 65, type: !187)
!5351 = !DILocation(line: 65, column: 28, scope: !5343)
!5352 = !DILocation(line: 67, column: 24, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5343, file: !4873, line: 67, column: 6)
!5354 = !DILocation(line: 67, column: 29, scope: !5353)
!5355 = !DILocation(line: 67, column: 35, scope: !5353)
!5356 = !DILocation(line: 67, column: 7, scope: !5353)
!5357 = !DILocation(line: 67, column: 6, scope: !5343)
!5358 = !DILocation(line: 68, column: 3, scope: !5353)
!5359 = !DILocation(line: 70, column: 15, scope: !5343)
!5360 = !DILocation(line: 70, column: 2, scope: !5343)
!5361 = !DILocation(line: 70, column: 8, scope: !5343)
!5362 = !DILocation(line: 70, column: 13, scope: !5343)
!5363 = !DILocation(line: 71, column: 14, scope: !5343)
!5364 = !DILocation(line: 71, column: 2, scope: !5343)
!5365 = !DILocation(line: 71, column: 7, scope: !5343)
!5366 = !DILocation(line: 71, column: 12, scope: !5343)
!5367 = !DILocation(line: 72, column: 14, scope: !5343)
!5368 = !DILocation(line: 72, column: 2, scope: !5343)
!5369 = !DILocation(line: 72, column: 7, scope: !5343)
!5370 = !DILocation(line: 72, column: 12, scope: !5343)
!5371 = !DILocation(line: 73, column: 2, scope: !5343)
!5372 = !DILocation(line: 73, column: 2, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5343, file: !4873, line: 73, column: 2)
!5374 = !DILocation(line: 73, column: 2, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5373, file: !4873, line: 73, column: 2)
!5376 = !DILocation(line: 73, column: 2, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5373, file: !4873, line: 73, column: 2)
!5378 = !DILocation(line: 74, column: 1, scope: !5343)
!5379 = distinct !DISubprogram(name: "__list_add_valid", scope: !4873, file: !4873, line: 45, type: !5380, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5380 = !DISubroutineType(types: !5381)
!5381 = !{!454, !187, !187, !187}
!5382 = !DILocalVariable(name: "new", arg: 1, scope: !5379, file: !4873, line: 45, type: !187)
!5383 = !DILocation(line: 45, column: 55, scope: !5379)
!5384 = !DILocalVariable(name: "prev", arg: 2, scope: !5379, file: !4873, line: 46, type: !187)
!5385 = !DILocation(line: 46, column: 23, scope: !5379)
!5386 = !DILocalVariable(name: "next", arg: 3, scope: !5379, file: !4873, line: 47, type: !187)
!5387 = !DILocation(line: 47, column: 23, scope: !5379)
!5388 = !DILocation(line: 49, column: 2, scope: !5379)
!5389 = distinct !DISubprogram(name: "__list_del_entry", scope: !4873, file: !4873, line: 130, type: !5011, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5390 = !DILocalVariable(name: "entry", arg: 1, scope: !5389, file: !4873, line: 130, type: !187)
!5391 = !DILocation(line: 130, column: 55, scope: !5389)
!5392 = !DILocation(line: 132, column: 30, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5389, file: !4873, line: 132, column: 6)
!5394 = !DILocation(line: 132, column: 7, scope: !5393)
!5395 = !DILocation(line: 132, column: 6, scope: !5389)
!5396 = !DILocation(line: 133, column: 3, scope: !5393)
!5397 = !DILocation(line: 135, column: 13, scope: !5389)
!5398 = !DILocation(line: 135, column: 20, scope: !5389)
!5399 = !DILocation(line: 135, column: 26, scope: !5389)
!5400 = !DILocation(line: 135, column: 33, scope: !5389)
!5401 = !DILocation(line: 135, column: 2, scope: !5389)
!5402 = !DILocation(line: 136, column: 1, scope: !5389)
!5403 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4873, file: !4873, line: 51, type: !5404, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!454, !187}
!5406 = !DILocalVariable(name: "entry", arg: 1, scope: !5403, file: !4873, line: 51, type: !187)
!5407 = !DILocation(line: 51, column: 61, scope: !5403)
!5408 = !DILocation(line: 53, column: 2, scope: !5403)
!5409 = distinct !DISubprogram(name: "__list_del", scope: !4873, file: !4873, line: 110, type: !4874, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !211)
!5410 = !DILocalVariable(name: "prev", arg: 1, scope: !5409, file: !4873, line: 110, type: !187)
!5411 = !DILocation(line: 110, column: 50, scope: !5409)
!5412 = !DILocalVariable(name: "next", arg: 2, scope: !5409, file: !4873, line: 110, type: !187)
!5413 = !DILocation(line: 110, column: 75, scope: !5409)
!5414 = !DILocation(line: 112, column: 15, scope: !5409)
!5415 = !DILocation(line: 112, column: 2, scope: !5409)
!5416 = !DILocation(line: 112, column: 8, scope: !5409)
!5417 = !DILocation(line: 112, column: 13, scope: !5409)
!5418 = !DILocation(line: 113, column: 2, scope: !5409)
!5419 = !DILocation(line: 113, column: 2, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5409, file: !4873, line: 113, column: 2)
!5421 = !DILocation(line: 113, column: 2, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5420, file: !4873, line: 113, column: 2)
!5423 = !DILocation(line: 113, column: 2, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5420, file: !4873, line: 113, column: 2)
!5425 = !DILocation(line: 114, column: 1, scope: !5409)
